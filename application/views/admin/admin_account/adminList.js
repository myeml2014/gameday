// JavaScript Document
fielterArr = ["txtSearch_name","txtSearch_username","txtSearch_email"];
function renderJson(Obj,count)
{
	jObj = Obj;
    var tbl = "";
    var counter = 0;
    $.each(jObj,function(i, item) {	
		tbl += "<tr class='"+((i%2 == 0)?"trEven":"trOdd")+"' onclick='trEdit("+item.id+",this)'>";
		tbl += "<td>"+(hdnStart+i+1)+"</td>";
		tbl += "<td>"+item.name+"</td>";
		tbl += "<td>"+item.username+"</td>";
		tbl += "<td>"+item.email+"</td>";
		tbl += "<td align='center'>"+item.status+"</td>";
		tbl += "</tr>";
    });
    if(tbl == "")
    	tbl = "<tr><td colspan='5' align='center' class='trOdd'>No Record Found.</td></tr>";
    $("#tblGrid").html(tbl);
    getPagging(hdnStart,limit,count);
}
function validate()
{
	if($("#txtUsername").val() == "")
	{
		alert(msg_user);
		$("#txtUsername").focus();
		return false;
	}
	if($("#txtPassword").val() == "")
	{
		alert(msg_pass);
		$("#txtPassword").focus();
		return false;
	}
	return true;
}