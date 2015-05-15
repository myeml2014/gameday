<div class="adminTitle" align="left">
<?php echo $this->lang->line('home_sankul'); ?>
</div>
<?php
include_once(ADMIN_HEADER."btnControl.php");
?>
<div style="margin-top: 5px;">
<table width="100%" border="0" >
    <thead>
        <tr>
            <td colspan="2">
				<div align="right" id="divTopPagging" style="float:right;" valign="middle"></div>
			</td>
        </tr>
        <tr class="searchLinkD">
            <td align="left" width="5%"><?php echo $this->lang->line('sr'); ?>.</td>
	        <td align="center"><?php echo $this->lang->line('sankul_name'); ?></td>
        </tr>
	<tr class="searchTr">
            <td align="center"></td>
            <td align="left"><input type="text" name="txtSearch_sankul_name" id="txtSearch_sankul_name"  onkeypress="fnfilter(event)" ></td>
        </tr>
    </thead>
    <tbody id="tblGrid">
    </tbody>
    
</table>
<div align="right" id="divBottomPagging" style="float:right"></div>
</div>