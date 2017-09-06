<?php
/*
* Company 信息披露
* @package	Company
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class Company extends CI_Controller{

	public function __construct(){

		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->load->database();

		$this->table = $this->db->dbprefix('article');
	}

	public function Index($id = null){

		if(empty($id)){
			show_error('页面参数有误', null, '错误提示');
		}

		$query = $this->db->query("SELECT * FROM {$this->table} WHERE articleId={$id}");
    	$data = $query->row();

		//$this->load->view('commpany.html',$data);
		
	}

}
?>