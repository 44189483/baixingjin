<?php
/*
* Member 会员中心相关
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

	public function login(){

		$header = array(
			'nav' => '登陆',
			'cname' => $this->head_data['cname']
		);

		$this->load->helper('func');
		$data[''] = CreateVerifyImage(154,39); 

		$this->load->view('templates/header.html',$header);
		$this->load->view('login.html',$data);
		$this->load->view('templates/footer.html');

		if($this->input->post){

		}

	}

	public function register(){

	}

	//个人信息
	public function info(){

	}

	//安全设置
	public function safe(){
		
	}

	//出借
	public function lend(){
		
	}

	//资产
	public function property(){
		
	}

}
?>