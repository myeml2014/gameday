<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class top_flesh extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Adminuser');
		$this->load->model('Topflesh');
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
		$modulePathUrl = base_url().APPPATH.'views/admin/top_flesh/';
		$this->xajax->register(XAJAX_FUNCTION, array('load',&$this,'load'));
		$this->xajax->register(XAJAX_FUNCTION, array('setForm',&$this,'setForm'));
		$this->xajax->register(XAJAX_FUNCTION, array('save',&$this,'save'));
		$this->xajax->register(XAJAX_FUNCTION, array('edit',&$this,'edit'));
		$this->xajax->register(XAJAX_FUNCTION, array('delete',&$this,'delete'));
		$this->xajax->processRequest();
		$this->xajax->configure('javascript URI',base_url());
		$headerData['xajax_js'] = $this->xajax->getJavascript(base_url());
                
      $headerData['onload'] = true; 
		$headerData['module_js'] = $modulePathUrl.'top_flesh.js';
		$this->load->view('admin/header/header',$headerData);
		$this->load->view('admin/top_flesh/top_flesh',$data);
		$footerData['module_path'] = ADMIN_VIEW_PATH."top_flesh/";
		$this->load->view('admin/header/footer',$footerData);	
	}
	function load($start=0,$param='')
	{
		$data = array();
		$objResponse=new xajaxResponse();
		$whArr = array();
		if($param != '')
		$whArr = explode(",",$param);
		$data = $this->Topflesh->get_all($start,$whArr);
		$objResponse->script('renderJson('.json_encode($data).','.$this->Topflesh->get_all_count($whArr).')');
		return $objResponse;
	}
	function setForm($id)
	{
		$objResponse=new xajaxResponse();
		$data = $this->Topflesh->get_record($id);
		$objResponse->assign("txtTitle","value",$data->title);
		$objResponse->assign("txtTitle","value",$data->title);
		$objResponse->assign("txtOther","value",$data->detail);
		return $objResponse;
	}
	function save($arg)
	{
		$objResponse=new xajaxResponse();
      $arrVal = array();
      $arrVal['title'] = $arg['txtTitle'];
		if($arg['fImg'] !='')      
      $arrVal['link'] = base_url()."images/top_flesh/".$arg['fImg'];
      $arrVal['detail'] = $arg['txtOther'];
      $sucess = $this->db->insert('tbl_top_flesh',$arrVal);
      if($sucess)
      {
          $objResponse->alert($this->lang->line('msg_insert'));
          $objResponse->script("postFrm()");
          $objResponse->script("fnreset()");
          $objResponse->script("xajax_load()");
      }
      return $objResponse;		
	}
	function edit($id,$arg)
	{
		$objResponse=new xajaxResponse();
		$arrVal = array();
		$arrVal['title'] = $arg['txtTitle'];
		if($arg['fImg'] !='')
      $arrVal['link'] = base_url()."images/top_flesh/".$arg['fImg'];
      $arrVal['detail'] = $arg['txtOther'];
      $sucess = $this->db->update('tbl_top_flesh',$arrVal,array('id'=>$id));
      if($sucess)
      {
          $objResponse->alert($this->lang->line('msg_update'));
          $objResponse->script("postFrm()");
          $objResponse->script("fnreset()");
		    $objResponse->script("xajax_load()");
      }
      return $objResponse;
	}
	function delete($id)
	{
		$objResponse=new xajaxResponse();
		$sucess = $this->db->delete('tbl_top_flesh',array('id'=>$id));
		if($sucess)
        {
            $objResponse->alert($this->lang->line('msg_delete'));
            $objResponse->script("fnreset()");
		    $objResponse->script("xajax_load()");
        }
		return $objResponse;
	}
	function postFrm()
	{
		$config['max_size']	= '100';
		$config['max_width']  = '1024';
		$config['max_height']  = '768';
		if() {
			$this->load->library('upload', $config);
			$this->upload->do_upload('fImg');

			$username = $this->input->post("hdnImg");
		}
	}
		
}