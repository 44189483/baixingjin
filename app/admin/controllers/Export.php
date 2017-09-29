<?php
/*
* Export 导出EXCEL
* @package	User
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class Export extends CI_Controller{

	public function __construct(){

		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->load->database();

		if(empty($this->session->admin)){
			//show_error('<a href="'.base_url().'index/login">请登录!</a>',null,'错误提示');
			jump('',site_url('index/login'));
		}

		$this->table = $this->db->dbprefix('member');

	}

	public function excel(){

		header('Content-type: text/html; charset=utf-8');
		header("Content-type:application/vnd.ms-excel;charset=UTF-8"); 
		header("Content-Disposition:filename=会员.xls"); //输出的表格名称

		$query = $this->db->query("SELECT * FROM {$this->table}");
	    $rows = $query->result(); 

		$title = "姓名\t 性别\t 手机\t 邮箱\t 身份证\t 银行卡\t 婚姻状况\t 学历\t 工作\t 所在城市\t 所属业务员\t 加入时间\t\n";

		echo iconv("UTF-8","GB2312",$title);

		foreach ($rows as $k => $v) {
			echo iconv("UTF-8","GB2312",$v->realname)."\t";
			echo iconv("UTF-8","GB2312",$v->sex == 1 ? "男" : "女")."\t";
			echo $v->mobile."\t";
			echo $v->email."\t";
			echo $v->identificationNumber."\t";
			echo iconv("UTF-8","GB2312",$v->bankcard)."\t";
			echo iconv("UTF-8","GB2312",$v->marital)."\t";
			echo iconv("UTF-8","GB2312",$v->education)."\t";
			echo iconv("UTF-8","GB2312",$v->job)."\t";
			echo iconv("UTF-8","GB2312",$v->province."-".$v->city)."\t";
			if(!empty($v->sid)){
				$query = $this->db->query("SELECT realname FROM {$this->db->dbprefix('salesman')} WHERE id={$v->sid}");
	    		$row = $query->row();
	    		echo iconv("UTF-8","GB2312",$row->realname)."\t";
			}else{
				echo " \t";
			}
			echo $v->createTime."\t\n";
		}

	}

}
?>