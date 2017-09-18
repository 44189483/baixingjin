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
		$this->load->helper('func_helper');		
	}

	public function index(){

		//轮播图
		$b_query = $this->db->query("SELECT * FROM {$this->db->dbprefix('img')} WHERE type='banner' ORDER BY ord DESC,id DESC");
	    $result['banner'] = $b_query->result();

	    //数据信息
	    $d_query = $this->db->query("SELECT * FROM {$this->db->dbprefix('option')} WHERE optionType='index_amount'");
	    $datas = $d_query->result();
	    foreach ($datas as $val) {
	    	$result['data'][$val->optionKey] = $val->optionValue;
	    }

	    //公告信息
	    $n_query = $this->db->query("SELECT * FROM {$this->db->dbprefix('article')} WHERE articleType=0 ORDER BY articleId DESC");
	    $result['notice'] = $n_query->result();

	    //出借服务
	    $s_query = $this->db->query("SELECT * FROM {$this->db->dbprefix('project')} ORDER BY projectOrd DESC,projectId DESC LIMIT 0,5");
	    $result['service'] = $s_query->result();


		//$this->load->helper('func');

		//CreateVerifyImage(154,39); 

	    $this->load->view('templates/header.html');
		$this->load->view('index.html',$result);
		$this->load->view('templates/footer.html');

	}

}
?>