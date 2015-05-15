<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class home extends CI_Controller {	
	function __construct()
	{
		parent::__construct();
		$this->load->model('Adminuser');
		if(!$this->Adminuser->is_login())
		{
			redirect('admin/login');
		}
	}
	public function index()
	{
		$this->load->view('admin/header/header');
		$this->load->view('admin/home');
		$this->load->view('admin/header/footer');
	}
}