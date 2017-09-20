<?php
/*
* JoinUs 联系我们
* @package	JoinUs
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class JoinUs extends CI_Controller{

	public function __construct(){

		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->head_data['cname'] = __CLASS__;
		$this->load->database();

		$this->table = $this->db->dbprefix('article');
	}

	public function Index($id = null){

		$query = $this->db->query("SELECT articleTitle,articleContent FROM {$this->table} WHERE articleType=4 ORDER BY articleOrd DESC,articleId DESC");
    	$data['joinus'] = $query->result();

		$header = array(
			'nav' => '联系我们',
			'cname' => $this->head_data['cname']
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('joinus.html',$data);
		$this->load->view('templates/footer.html');
		
	}

}
?>