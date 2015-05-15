<script language="javascript">
var msg_user = '<?php echo $this->lang->line('require_sankul'); ?>';
</script>
<div id="divForm" align="center" style="" >
<div class="adminTitle" style="width: 100%" align="left">
<?php echo $this->lang->line('home_sankul'); ?>
</div>
<div id="divFromContainer" class="formDiv">
<form name="frmForm" id="frmForm" action="">
<table width="100%" border="0">
<tr>
	<td width="10%" align="left"><?php echo $this->lang->line('sankul_name'); ?>:</td>
	<td width="20%" align="left"><input type="text" name="txtSankul" id="txtSankul" disabled="disabled" ></td>
</tr>
</table>
<input type="hidden" id="pkId" name="pkId" >
<input type="hidden" id="act" name="act" >
</form>
</div>
<div id="divFromButton" style="padding: 10px;">
<input type="button" id="btnSave" name="btnSave" class="button" value="<?php echo $this->lang->line('btn_save'); ?>" onClick="fnsave()" >
<input type="button" id="btnClose" name="btnClose" class="button" value="<?php echo $this->lang->line('btn_close'); ?>" onClick="fnreset()" >
</div>
</div>