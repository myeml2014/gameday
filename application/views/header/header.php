<!DOCTYPE html>
<html>
<head>
<title>Umang Glass</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="<?php echo base_url();?>css/layout.css" rel="stylesheet" type="text/css" media="all">
<script src="<?php echo base_url();?>js/jquery.min.js"></script> 
<script src="<?php echo base_url();?>js/jquery.fitvids.min.js"></script> 
<script src="<?php echo base_url();?>js/jquery.mobilemenu.js"></script> 
<script src="<?php echo base_url();?>js/jquery.tabslet.min.js"></script>
</head>
<body id="top">

<div class="wrapper row0">
	
  <div id="topbar" class="clear"> 
    <img src="<?php echo base_url();?>images/companylogo.png">
  </div>
</div>
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <div id="logo" class="fl_left">
      <h1><a href="index.html">Umang Glass</a></h1>
      <p>All type of Glass Work</p>
    </div>
  </header>
</div>

<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <ul class="clear">
	  	<?php
		$i=0;
		foreach($title as $nm)
		{
		?>
		<li <?php if($activeLink == $link[$i]){echo 'class="active"';};?>><a href="<?php echo base_url().$link[$i]; ?>"><?php echo $nm; ?></a></li>
		<?php
			$i++;
		}
		?>
      </ul>
    </nav>
  </div>
</div>