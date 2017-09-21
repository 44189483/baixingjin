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
		$this->head_data['cname'] = __CLASS__;		
	}

	//验证码
	public function verifycode(){

		$this->load->helper('func');
		CreateVerifyImage(154,39); 

	}

	//注册
	public function register(){

		$header = array(
			'nav' => '注册',
			'cname' => $this->head_data['cname']
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('register.html');
		$this->load->view('templates/footer.html');

	}

	//验证注册
	public function checkregister(){

		if(strtolower($this->input->post('verifcode')) != $this->session->authImg){
			echo '-1';//验证码错误
			exit();
		}
		
		$user = $this->input->post('user');

		$pwd = md5($this->input->post('pwd'));

		$recommcode = $this->input->post('recommcode');

		//手机验证码

		$query = $this->db->query("SELECT * FROM {$this->db->dbprefix('member')} WHERE mobile='{$user}'");

		$res = $query->row();

		if($res){
			echo -2;//用户已存在
			exit();
		}

		$que = $this->db->query("SELECT * FROM {$this->db->dbprefix('salesman')} WHERE mobile='{$recommcode}'");

		$row = $que->row();

		if(!$row){
			echo -3;//业务员不存在
			exit();
		}

		$data = array(
		    'mobile' => $user,
		    'pwd' => $pwd,
		    'sid' => $row->id,
		    'createTime' => date('Y-m-d H:i:s')
		);
		$bool = $this->db->insert($this->db->dbprefix('salesman'), $data);
		if(!$bool){
			echo -4;//注册失败
		}else{
			echo 0;//注册成功
		}	

	}

	//登录
	public function login(){

		$header = array(
			'nav' => '登陆',
			'cname' => $this->head_data['cname']
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('login.html');
		$this->load->view('templates/footer.html');

	}

	//验证登录
	public function checklogin(){

		if(strtolower($this->input->post('verifcode')) != $this->session->authImg){
			echo '-1';//验证码错误
			exit();
		}
		
		$user = $this->input->post('user');

		$pwd = md5($this->input->post('pwd'));

		$table = $this->db->dbprefix('member');

		$sql = "SELECT * FROM {$table} ";

		$query = $this->db->query($sql."WHERE mobile='{$user}'");

		$res = $query->row();

		if(!$res){
			echo -2;//用户不存在
			exit();
		}

		$que = $this->db->query($sql."WHERE mobile='{$user}' AND pwd='{$pwd}'");

		$row = $que->row();

		if(!$row){
			echo -3;//密码错误
			exit();
		}

		echo 0;	
		
	}

}
?>