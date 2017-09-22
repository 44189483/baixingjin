<?php
/*
* ContactUs 联系我们
* @package	ContactUs
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class ContactUs extends CI_Controller{

	public function __construct(){

		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->head_data['cname'] = __CLASS__;
		$this->load->database();

		$this->table = $this->db->dbprefix('article');
	}

	public function Index($id = null){

		$query = $this->db->query("SELECT * FROM {$this->table} WHERE articleId=1");
    	$data = $query->row();

		$header = array(
			'nav' => '联系我们',
			'cname' => $this->head_data['cname'],
			'member' => $this->session->member
		);

		$this->load->view('templates/header.html',$header);
		$this->load->view('contactus.html',$data);
		$this->load->view('templates/footer.html');
		
	}

}
?>