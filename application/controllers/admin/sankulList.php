<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class sankulList extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Adminuser');
		$this->load->model('sankul');
		if(!$this->Adminuser->is_login())
		{
			redirect('admin/login');
		}
	}
	public function index()
	{
		$headerData = array();
		$footerData = array();
		$Data = array();
		$modulePathUrl = base_url().APPPATH.'views/admin/sankul/';
		$this->xajax->register(XAJAX_FUNCTION, array('load',&$this,'load'));
		$this->xajax->register(XAJAX_FUNCTION, array('setForm',&$this,'setForm'));
		$this->xajax->register(XAJAX_FUNCTION, array('save',&$this,'save'));
		$this->xajax->register(XAJAX_FUNCTION, array('edit',&$this,'edit'));
		$this->xajax->register(XAJAX_FUNCTION, array('delete',&$this,'delete'));
		$this->xajax->processRequest();
		$this->xajax->configure('javascript URI',base_url());
		$headerData['xajax_js'] = $this->xajax->getJavascript(base_url());
                
        $headerData['onload'] = true; 
		$headerData['module_js'] = $modulePathUrl.'sankul.js';
		$this->load->view('admin/header/header',$headerData);
		$this->load->view('admin/sankul/sankulList',$data);
		$footerData['module_path'] = ADMIN_VIEW_PATH."sankul/";
		$this->load->view('admin/header/footer',$footerData);	
	}
	function load($start=0,$param='')
	{
		$data = array();
		$objResponse=new xajaxResponse();
		$whArr = array();
		if($param != '')
		$whArr = explode(",",$param);
		$data = $this->sankul->get_all($start,$whArr);
		$objResponse->script('renderJson('.json_encode($data).','.$this->sankul->get_all_count($whArr).')');
		return $objResponse;
	}
	function setForm($id)
	{
		$objResponse=new xajaxResponse();
		$data = $this->sankul->get_record($id);
		$objResponse->assign("txtSankul","value",$data->sankul_name);
		return $objResponse;
	}
	function save($arg)
	{
		$objResponse=new xajaxResponse();
		if($this->sankul->checkisExists($arg['txtSankul']))
		{
			return $objResponse->alert($this->lang->line('sankul_exists'));
		}
        $arrVal = array();
        $arrVal['sankul_name'] = ucfirst($arg['txtSankul']);
        $sucess = $this->db->insert('tbl_sankul',$arrVal);
        if($sucess)
        {
            $objResponse->alert($this->lang->line('msg_insert'));
            $objResponse->script("fnreset()");
            $objResponse->script("xajax_load()");
        }
        return $objResponse;		
	}
	function edit($id,$arg)
	{
		$objResponse=new xajaxResponse();
		if($this->sankul->checkisExists($arg['txtUsername'],$id))
		{
			return $objResponse->alert($this->lang->line('sankul_exists'));
		}
		$arrVal = array();
		$arrVal['sankul_name'] = $arg['txtSankul'];
		
        $sucess = $this->db->update('tbl_sankul',$arrVal,array('id'=>$id));
        if($sucess)
        {
            $objResponse->alert($this->lang->line('msg_update'));
            $objResponse->script("fnreset()");
		    $objResponse->script("xajax_load()");
        }
        return $objResponse;
	}
	function delete($id)
	{
		$objResponse=new xajaxResponse();
		$sucess = $this->db->delete('tbl_sankul',array('id'=>$id));
		if($sucess)
        {
            $objResponse->alert($this->lang->line('msg_delete'));
            $objResponse->script("fnreset()");
		    $objResponse->script("xajax_load()");
        }
		return $objResponse;
	}
}