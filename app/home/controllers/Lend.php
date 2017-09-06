<?php
/*
* Lend 出借页面
* @package	Lend
* @author	Sun Guo Liang
* @since	Version 1.0.0
* @filesource
*/

class Lend extends CI_Controller{

	public function __construct(){

		parent::__construct();
		$this->load->library('session');
		$this->load->helper('url_helper');
		$this->load->database();

		$this->table = $this->db->dbprefix('project');
	}

	public function Index($cat = null){

		/***** 分类 ******/
		//项目状态
		$result['status'] = $this->get_class(2);
		//年收益率
		$result['yearRate'] = $this->get_class(3);
		//出借期限
		$result['timeLimit'] = $this->get_class(4);
		//还款方式
		$result['repayment'] = $this->get_class(5);

		$where = "WHERE 1=1";

		if(!empty($cat)){

			$seachs = explode('-', $cat);

			$count = count($seachs);

			if($count < 4){
				show_error('页面参数有误', null, '错误提示');
			}

			if($seachs[0] > 0){
				$where .= " AND status='{$this->get_class_name($seachs[0])}'";
			}

			if($seachs[1] > 0){
				$where .= " AND yearRate='{$this->get_class_name($seachs[1])}'";
			}

			if($seachs[2] > 0){
				$where .= " AND timeLimit='{$this->get_class_name($seachs[2])}'";
			}

			if($seachs[3] > 0){
				$where .= " AND repayment='{$this->get_class_name($seachs[3])}'";
			}

		}

	    $config = array();
	    $config['per_page'] = 10; //每页显示的数据数
	    $current_page = intval($this->input->get('per_page')); //获取当前分页页码数
	    //page还原
	    if(0 == $current_page){
	      	$current_page = 1;
	    }
	    $offset = ($current_page - 1 ) * $config['per_page']; //设置偏移量 限定 数据查询 起始位置（从 $offset 条开始）

	    $query = $this->db->query("SELECT * FROM {$this->table} {$where}");
	    $result['total'] = $query->num_rows();

	    //出借服务
	    $lend_query = $this->db->query("SELECT * FROM {$this->table} {$where} ORDER BY projectOrd DESC,projectId DESC");
	    $result['list'] = $lend_query->result();

	    $config['base_url']   = site_url('lend');
	    
		$config['first_link'] = '首页';
		$config['first_tag_open'] = '<span class="first paginate_button paginate_button_disabled">';
		$config['first_tag_close'] = '</span>';

		$config['last_link'] = '尾页';
		//$config['last_tag_open'] = '<div>';
		//$config['last_tag_close'] = '</div>';

		$config['next_link'] = '下一页';
		$config['next_tag_open'] = '<span class="next paginate_button">';
		$config['next_tag_close'] = '</span>';

		$config['prev_link'] = '上一页';
		$config['prev_tag_open'] = '<span class="previous paginate_button paginate_button_disabled">';
		$config['prev_tag_close'] = '</span>';

		$config['cur_tag_open'] = ' <b>';
		$config['cur_tag_close'] = '</b>';

	    $config['total_rows'] = $result['total'];//总条数
	    $config['num_links']  = 2;//页码连接数
	    $config['use_page_titles']  = TRUE;
	    $config['page_query_string'] = TRUE;
	    $this->load->library('pagination');//加载ci pagination类
	    $this->pagination->initialize($config);

	    $data = array(
	    	'cat' => $cat,
	        'rows' => $result['list'],
	        'total'  => $result['total'],
	        'current_page' => $current_page,
	        'per_page' => $config['per_page'],
	        'page'  => $this->pagination->create_links(),
	    );

		//$this->load->view('lend.html');
		
	}

	public function detail($id){

		$data = array();

		$query = $this->db->query("SELECT * FROM {$this->table} WHERE projectId={$id}");
    	$data = $query->row();

		//$this->load->view('lenddetail.html',$data);
		
	}

	//获取大分类
	public function get_class($slug){
		$query = $this->db->query("SELECT * FROM {$this->db->dbprefix}class WHERE classType={$slug}");
	    return $query->result();
	}

	//获取分类名称
	public function get_class_name($cid){
		$query = $this->db->query("SELECT className FROM {$this->db->dbprefix}class WHERE classId={$cid}");
	    $row = $query->row();
	    return $row->className;
	}

}
?>