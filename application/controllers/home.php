<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends CI_Controller {	
	function __construct()
	{
		parent::__construct();
		$this->load->model('main_menu');
	}
	public function index($page)
	{
		$data = $this->main_menu->loadMenu();
		$urlArr = explode("/",$_SERVER['REQUEST_URI']);
		$activeLink = end($urlArr);
		if($activeLink == MAIN_FOLDER)
		$activeLink = MAIN_FOLDER;
		$data['activeLink'] = $activeLink;
		$this->load->view('header/header',$data);
		$content = $this->main_menu->getContent($activeLink);
		$this->load->view('home',array('content'=>$content));
		$this->load->view('header/footer');
	}
}