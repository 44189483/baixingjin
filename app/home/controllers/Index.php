<?php
/*
* Index 首页
* @package	Index
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class Index extends CI_Controller{

	public function __construct(){

		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->load->database();
	}

	public function index(){

		//轮播图
		$b_query = $this->db->query("SELECT * FROM {$this->db->dbprefix('img')} WHERE type='banner' ORDER BY ord DESC");
	    $result['banner'] = $b_query->result();

	    //数据信息
	    $d_query = $this->db->query("SELECT * FROM {$this->db->dbprefix('option')} WHERE optionType='index_amount'");
	    $result['data'] = $d_query->result();

	    //出借服务
	    $s_query = $this->db->query("SELECT * FROM {$this->db->dbprefix('project')} WHERE status='出借中' ORDER BY projectOrd DESC LIMIT 0,5");
	    $result['service'] = $s_query->result();

		$this->load->view('index.html');

	}

}
?>