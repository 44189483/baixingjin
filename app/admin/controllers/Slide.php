<?php
/*
* Slide 幻灯片
* @package	Slide
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class Slide extends CI_Controller{

	public function __construct(){

		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->load->database();

		if(empty($this->session->admin)){
			//show_error('<a href="'.base_url().'index/login">请登录!</a>',null,'错误提示');
			jump('',site_url('index/login'));
		}

		$this->head_data['cname'] = __CLASS__;
		$this->table = $this->db->dbprefix('img');
		$this->load->view('templates/header.html',$this->head_data);
		$this->load->view('templates/menu.html',$this->head_data);

	}

	public function index($id = null){

		$row = array();

		if(!empty($id)){
			$query = $this->db->query("SELECT * FROM {$this->table} WHERE id={$id}");
	    	$row = $query->row();
		}

	    $query = $this->db->query("SELECT * FROM {$this->table} WHERE type='banner'");
	    $rows = $query->result();

	    $data = array(
	    	'id' => $id,
	    	'row' => $row,
	        'rows' => $rows
	    );
		$this->load->view('slide.html',$data);
	}

	public function save(){

		$id = $this->input->post('id');

		$ord = $this->input->post('ord') == null ? 0 : 1;

		//文件存在判断
		if(!empty($_FILES["attchment"]["name"]) && is_uploaded_file($_FILES["attchment"]["tmp_name"])){

			//重命名
			$attchname = $_FILES["attchment"]["name"];
			$ext = substr($attchname,strripos($attchname,'.') + 1);
			$name = date('Ymd').rand(0,999).'.'.$ext;
			$config['file_name'] = $name;

			$config['upload_path'] = 'upload/banner/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$config['max_size'] = '1000';
			$config['max_width'] = '1920';
			$config['max_height'] = '768';
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
			$this->upload->do_upload('attchment');
			$info = $this->upload->data();

		    if($info && !empty($id)){//删除旧图
				$query = $this->db->query("SELECT url FROM {$this->table} WHERE id={$id}");
	    		$row = $query->row(); 
				@unlink($row->url);
		    }

		    $pic = $config['upload_path'].$name;

		}else{
			$pic = '';
		}
		
		$data = array(
		    'url' => $pic,
		    'type' => 'banner',
		    'ord' => $ord
		);
		
		if(empty($id)){
			$bool = $this->db->insert($this->table, $data);
		}else{
			$this->db->where('id', $id);
			$bool = $this->db->update($this->table, $data);
		}
		
        redirect(site_url('Slide/index'));

	}

	public function del($id = null){

		$pid = $this->input->post('id');

		$gid = $id;

		$bool = false;

		if($pid){//多删

			$query = $this->db->query("SELECT * FROM {$this->table} WHERE id IN(".implode(',', $pid).")");
	    	$rows = $query->result();

			foreach ($rows as $k => $v) {
				@unlink($v->url);
			}

			$bool = $this->db->query("DELETE FROM {$this->table} WHERE id IN(".implode(',', $pid).")"); 

		}else if (!empty($gid)) {//单删

			$query = $this->db->query("SELECT * FROM {$this->table} WHERE id={$gid}");
	    	$row = $query->row();
			//删除图片
			@unlink($row->url);

			$bool = $this->db->delete($this->table, array('id' => $gid));

		}
		
		if($bool) {
            jump('操作成功',site_url('Slide/index'));
        }else{
            jump('操作失败');
        }

	}

}
?>