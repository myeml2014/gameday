<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class main_menu_list extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Adminuser');
		$this->load->model('main_menu');
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
		$modulePathUrl = base_url().APPPATH.'views/admin/main_menu/';
		$this->xajax->register(XAJAX_FUNCTION, array('load',&$this,'load'));
		$this->xajax->register(XAJAX_FUNCTION, array('setForm',&$this,'setForm'));
		$this->xajax->register(XAJAX_FUNCTION, array('save',&$this,'save'));
		$this->xajax->register(XAJAX_FUNCTION, array('edit',&$this,'edit'));
		$this->xajax->register(XAJAX_FUNCTION, array('delete',&$this,'delete'));
		$this->xajax->processRequest();
		$this->xajax->configure('javascript URI',base_url());
		$headerData['xajax_js'] = $this->xajax->getJavascript(base_url());

      $headerData['onload'] = true; 
		$headerData['addTinymce'] = true;
		$headerData['module_js'] = $modulePathUrl.'main_menu.js';
		$this->load->view('admin/header/header',$headerData);
		$this->load->view('admin/main_menu/main_menu',$data);
		$footerData['module_path'] = ADMIN_VIEW_PATH."main_menu/";
		$this->load->view('admin/header/footer',$footerData);	
	}
	function load($start=0,$param='')
	{
		$data = array();
		$objResponse=new xajaxResponse();
		$whArr = array();
		if($param != '')
		$whArr = explode(",",$param);
		$data = $this->main_menu->get_all($start,$whArr);
		$objResponse->script('renderJson('.json_encode($data).','.$this->main_menu->get_all_count($whArr).')');
		return $objResponse;
	}
	function setForm($id)
	{
		$objResponse=new xajaxResponse();
		$data = $this->main_menu->get_record($id);
		$objResponse->assign("txtOrder","value",$data->id);
		$objResponse->assign("txtMenuTitle","value",$data->menu_title);
		$objResponse->assign("txtMenuLink","value",$data->menu_link);
		$objResponse->assign("selStaticOrDynamic","value",$data->is_static);
		$objResponse->assign("selStatus","value",$data->status);
		$objResponse->assign("selLang","value",$data->lang_flag);
		$objResponse->assign("txtContent","value",$data->content);
		$objResponse->script("setTinyMceVal(".json_encode($data->content).")");
		return $objResponse;
	}
	function save($arg)
	{
		$objResponse=new xajaxResponse();
		
     	$arrVal = array();
      $arrVal['id'] = $arg['txtOrder'];
		$arrVal['menu_title'] = $arg['txtMenuTitle'];
		$arrVal['menu_link'] = $arg['txtMenuLink'];
		$arrVal['is_static'] = $arg['selStaticOrDynamic'];
		$arrVal['status'] = $arg['selStatus'];
		$arrVal['lang_flag'] = $arg['selLang'];
		$arrVal['content'] = $arg['txtContent'];
      $sucess = $this->db->insert('tbl_main_menu',$arrVal);
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
		$arrVal = array();
		$arrVal['id'] = $arg['txtOrder'];
		$arrVal['menu_title'] = $arg['txtMenuTitle'];
		$arrVal['menu_link'] = $arg['txtMenuLink'];
		$arrVal['is_static'] = $arg['selStaticOrDynamic'];
		$arrVal['status'] = $arg['selStatus'];
		$arrVal['lang_flag'] = $arg['selLang'];
		$arrVal['content'] = $arg['txtContent'];
		
        $sucess = $this->db->update('tbl_main_menu',$arrVal,array('id'=>$id));
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
		$sucess = $this->db->delete('tbl_main_menu',array('id'=>$id));
		if($sucess)
      {
          $objResponse->alert($this->lang->line('msg_delete'));
          $objResponse->script("fnreset()");
		    $objResponse->script("xajax_load()");
      }
		return $objResponse;
	}
}