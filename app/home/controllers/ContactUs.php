<?php
/*
* Contactus 联系我们
* @package	ContactUs
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class Contactus extends CI_Controller{

	public function __construct(){

		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->load->database();

		$this->table = $this->db->dbprefix('article');
	}

	public function Index(){

		$query = $this->db->query("SELECT * FROM {$this->table} WHERE articleId=1");
    	$data = $query->row();

		$header = array(
			'nav' => '联系我们',
			'cname' => __CLASS__,
			'fname' => '',
			'member' => $this->session->member
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('contactus.html',$data);
		$this->load->view('templates/footer.html');
		
	}

}

?>