<?php
/*
* User 会员中心相关
* @package	User
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class User extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->load->database();
		$this->load->helper('func_helper');
		$this->head_data['cname'] = __CLASS__;	
		$this->table = $this->db->dbprefix('member');

		if(empty($this->session->member->user)){
			redirect(site_url('/member/login'));
		}

		$query = $this->db->query("SELECT * FROM {$this->table} WHERE mobile='{$this->session->member->user}'");
    	$this->member = $query->row();	
	}

	public function index(){

		$header = array(
			'nav' => '个人中心',
			'cname' => $this->head_data['cname'],
			'fname' => 'myinfo'
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('user/myinfo.html',$this->member);
		$this->load->view('templates/footer.html');

	}

	public function mysafe(){

		$header = array(
			'nav' => '安全设置',
			'cname' => $this->head_data['cname'],
			'fname' => 'mysafe'
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('user/mysafe.html');
		$this->load->view('templates/footer.html');

	}

	public function mylend(){

		$header = array(
			'nav' => '个人出借',
			'cname' => $this->head_data['cname'],
			'fname' => 'mylend'
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('user/mylend.html');
		$this->load->view('templates/footer.html');

	}

	public function myproperty(){

		$header = array(
			'nav' => '个人资产',
			'cname' => $this->head_data['cname'],
			'fname' => 'myproperty'
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('user/myproperty.html');
		$this->load->view('templates/footer.html');

	}

}
?>