<?php
/*
* Setpwd 密码
* @package	Setpwd
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class Setpwd extends CI_Controller{

	public function __construct(){
		
		parent::__construct();

		$this->load->library('session');
		$this->load->helper('url_helper');
		if(empty($this->session->admin)){
			//show_error('<a href="'.base_url().'index/login">请登录!</a>',null,'错误提示');
			jump('',site_url('index/login'));
		}
		$this->load->database();
		$this->head_data['cname'] = __CLASS__;

	}

    public function index(){

		$table = $this->db->dbprefix('option');

		$query = $this->db->query("SELECT * FROM {$table} WHERE optionType='AdminCtrol'");
		$data = $query->row();

		if($this->input->post()){

			$pwd = md5($this->input->post('pwd'));

			$this->db->where('optionType', 'AdminCtrol');
			$bool = $this->db->update($table, array('optionValue' => $pwd));

			if($bool) {
	            jump('操作成功',site_url('setpwd'));
	        }else{
	            jump('操作失败');
	        }
			
		}

		$this->load->view('templates/header.html',$this->head_data);
		$this->load->view('templates/menu.html',$this->head_data);
		$this->load->view('setpwd.html',$data);

	}

}
?>