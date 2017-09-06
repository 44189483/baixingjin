<?php
class Login_model extends CI_Model{
	public function __construct(){
		$this->load->database();
	}
	public function get_login(){
		$username = $this->input->post('username');
		$userpwd = md5($this->input->post('password'));
		$table = $this->db->dbprefix('option');
		$query = $this->db->query("SELECT * FROM {$table} WHERE optionType='AdminContrl' AND optionKey='{$username}' AND optionValue='{$userpwd}'");
        return $query->result();
	}
}
?>