<?php
/*
* Member 会员登录/注册/找密码/设置密码
* @package	Member
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class Member extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->load->database();
		$this->load->helper('func_helper');
		$this->table = $this->db->dbprefix('member');

		$this->header = array(
			'cname' => __CLASS__,
			'fname' => __FUNCTION__
		);	
	}

	//图片验证码
	public function imgverifycode(){

		CreateVerifyImage(154,39); 

	}

	//发送手机验证码
	public function sendverifycode(){

		$this->load->helper('cookie');

		$code = randcode();

		set_cookie("randcode",$code,180);

		//https://help.aliyun.com/document_detail/55451.html?spm=5176.8195934.507901.11.7bcea26d4xaXV9

	}

	//注册
	public function register(){

		//帐号不为空跳到会员中心
		if(!empty($this->session->member->user)){
			redirect(site_url('/user'));
		}


		$this->header['nav'] = '注册';

		$this->load->view('templates/header.html',$this->header);
		$this->load->view('register.html');
		$this->load->view('templates/footer.html');

	}

	//验证注册
	public function checkregister(){

		if(strtolower($this->input->post('verifcode')) != $this->session->authImg){
			echo '-1';//验证码错误
			exit();
		}
		
		$phone = $this->input->post('phone');

		$email = $this->input->post('email');

		$pwd = md5($this->input->post('pwd'));

		$recommcode = $this->input->post('recommcode');

		$phonecode = $this->input->post('phonecode');

		//手机验证码
		// if($phonecode != get_cookie("randcode")){
		// 	echo -3;
		// 	exit();
		// }

		$query = $this->db->query("SELECT * FROM {$this->table} WHERE mobile='{$phone}'");

		$res = $query->row();

		if($res){
			echo -2;//用户已存在
			exit();
		}

		if(!empty($recommcode)){

			$que = $this->db->query("SELECT * FROM {$this->db->dbprefix('salesman')} WHERE mobile='{$recommcode}'");

			$row = $que->row();

			if(!$row){
				echo -4;//业务员不存在
				exit();
			}

			$salesmanid = $row->id;

		}else{
			$salesmanid = 0;
		}

		$data = array(
		    'mobile' => $phone,
		    'email' => $email,
		    'pwd' => $pwd,
		    'sid' => $salesmanid,
		    'createTime' => date('Y-m-d H:i:s')
		);
		$bool = $this->db->insert($this->table, $data);
		if(!$bool){
			echo -4;//注册失败
		}else{
			$this->session->member = new stdClass();
			$this->session->member->user = $phone;

			//登录日志
	    	$this->db->insert($this->db->dbprefix('member_login'), array('mobile'=>$phone,'logTime'=>date('Y-m-d H:i:s')));

			echo '恭喜您已注册成功.';
		}	

	}

	//登录
	public function login(){

		//帐号不为空跳到会员中心
		// if(!empty($this->session->member->user)){
		// 	redirect(site_url('/user'));
		// }

		$this->header['nav'] = '登陆';

		$this->load->view('templates/header.html',$this->header);
		$this->load->view('login.html');
		$this->load->view('templates/footer.html');

	}

	//验证登录
	public function checklogin(){

		if(strtolower($this->input->post('verifcode')) != $this->session->authImg){
			echo '-1';//验证码错误
			exit();
		}
		
		$phone = $this->input->post('phone');

		$pwd = md5($this->input->post('pwd'));

		$sql = "SELECT * FROM {$this->table} ";

		$query = $this->db->query($sql."WHERE mobile='{$phone}'");

		$res = $query->row();

		if(!$res){
			echo -2;//用户不存在
			exit();
		}

		$que = $this->db->query($sql."WHERE mobile='{$phone}' AND pwd='{$pwd}'");

		$row = $que->row();

		if(!$row){
			echo -3;//密码错误
			exit();
		}

		$this->session->member = new stdClass();
		$this->session->member->user = $phone;	

		//登录日志
		$q = $this->db->query("SELECT * FROM {$this->db->dbprefix('member_login')} WHERE mobile='{$phone}'");
    	$res = $q->row();

    	if($res){//已存在用户
    		$this->db->query("UPDATE {$this->db->dbprefix('member_login')} SET logTime='".date('Y-m-d H:i:s')."' WHERE mobile='{$phone}'");
    	}else{
    		$this->db->insert($this->db->dbprefix('member_login'), array('mobile'=>$phone,'logTime'=>date('Y-m-d H:i:s')));
    	}

		echo '登录已成功.';
		
	}

	//找回密码
	public function findpwd(){

		$this->header['nav'] = '找回登录密码';

		$this->load->view('templates/header.html',$this->header);
		$this->load->view('findpwd.html');
		$this->load->view('templates/footer.html');

	}

	//找回密码验证
	public function checkfindpwd(){

		if(strtolower($this->input->post('verifcode')) != $this->session->authImg){
			echo '-1';//验证码错误
			exit();
		}
		
		$phone = $this->input->post('phone');

		$phonecode = $this->input->post('phonecode');

		$query = $this->db->query("SELECT * FROM {$this->table} WHERE mobile='{$phone}'");

		$res = $query->row();

		if(!$res){
			echo -2;//用户不存在
			exit();
		}

		/*
		//手机验证码
		if($phonecode != get_cookie("randcode")){
			echo -3;
			exit();
		}
		*/

		$this->session->member = new stdClass();
		$this->session->member->user = $phone;

		$message = "【百姓金】验证码为912104，请在3分钟内使用，您正在请求找回登录密码。如非本人操作请致电0411-66896333";

		//echo '短信已发送注意查收.';

	}

	//设置密码
	public function setpwd(){

		$this->header['nav'] = '设置登录密码';

		$this->load->view('templates/header.html',$this->header);
		$this->load->view('setpwd.html');
		$this->load->view('templates/footer.html');

	}

	//设置密码验证
	public function checksetpwd(){

		if(strtolower($this->input->post('verifcode')) != $this->session->authImg){
			echo '-1';//验证码错误
			exit();
		}
		
		$pwd = md5($this->input->post('pwd'));

		$data = array(
		    'pwd' => $pwd
		);

		$this->db->where('mobile', $this->session->member->user);
		$bool = $this->db->update($this->table, $data);

		echo '密码设置成功,请重新登陆.';
		
	}

}
?>