<!DOCTYPE html>
<html>
<head>
<title><?php echo $Title;?></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $meta_keywords; ?>">
<meta name="description" content="<?php echo $meta_description; ?>">
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/style_admin.css">
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/thickbox.css">
<?php echo $xajax_js;?>
<script language="javascript" type="text/javascript" src="<?php echo base_url();?>js/jquery-1.2.6.min.js"></script>
<?php
if(isset($addTinymce))
{
?>
<script language="javascript" type="text/javascript" src="<?php echo base_url();?>tinymce/tinymce.min.js"></script>
<?php
}
?>
<script language="javascript" type="text/javascript" src="<?php echo base_url();?>js/common.js"></script>
<script language="javascript">
var msg_del_conf = '<?php echo $this->lang->line('confirm_delete'); ?>';
</script>
<?php 
if(isset($module_js))
{
?>
<script language="javascript" type="text/javascript" src="<?php echo $module_js;?>"></script>
<?php
}
if(isset($onload))
{
?>
<script language="javascript" type="text/javascript">
$(document).ready(function() {
	xajax_load();
});
</script>
<?php
}
?>
</head>
<body>
<div id="main" align="center">
	<div class="header">
	<div class="logo"><a href="index.php?view=adm_home"><img src="<?php echo base_url();?>images/companylogo.png" alt="" /></a></div>
	<div class="title"><?php echo $this->lang->line('home_welcome_msg'); ?></div> 
	<div class="logout"><a href="<?php echo base_url();?>admin/login/logout" class="leftMenuNor"><?php echo $this->lang->line('home_logout'); ?></a></div>
	</div>
	
	<hr style="height:1px; width:auto; color:#467caf;"></hr>
	<div class="clearfix"></div>
	
	<div style="float: left" id="my_menu" class="sdmenu">
		<div> 
			<span><?php echo $this->lang->line('home_setup'); ?></span>
			<a  href="<?php echo base_url();?>admin/adminList"><?php echo $this->lang->line('home_admin_account'); ?></a>
			<?php
			if($this->session->userdata('user_id') == '-1')
			{
			?>
			<a  href="<?php echo base_url();?>admin/main_menu_list"><?php echo $this->lang->line('home_main_menu'); ?></a>
			<a  href="<?php echo base_url();?>admin/top_flesh"><?php echo $this->lang->line('home_top_flesh'); ?></a>
			<?php
			}
			?>
			<a  href="<?php echo base_url();?>admin/sankulList"><?php echo $this->lang->line('home_sankul'); ?></a>
		</div>
	</div>
   <div id="right-main" align="center">