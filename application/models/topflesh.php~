<?php
class Topflesh extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	function get_all($start = 0,$whArr)
	{
	    $whStr = '';
	    if($whArr[0] != ''){
	        $whStr .= " AND title like '%".$whArr[0]."%' ";
	    }
		$data = array();
	    $q = $this->db->query("select * from tbl_top_flesh where 1=1 $whStr order by title limit $start,10");
		if($q->num_rows()>0)
		{
			foreach($q->result() as $row){
				$data[] = $row;
			}
			
		}
		return $data;		
	}
	function get_all_count($whArr)
	{
	    $whStr = '';
	    if($whArr[0] != ''){
	        $whStr .= " AND title like '%".$whArr[0]."%' ";
	    }
        $q = $this->db->query("select count(*) as cnt from tbl_top_flesh where 1=1 $whStr ");
	    return $q->result()[0]->cnt;
	}
	function get_record($id)
	{
		$query = $this->db->get_where('tbl_top_flesh', array('id' => $id), 1);
		return $query->result()[0];
	}
}