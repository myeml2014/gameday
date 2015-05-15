<?php
class sankul extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	function get_all($start = 0,$whArr)
	{
	    $whStr = '';
	    if($whArr[0] != ''){
	        $whStr .= " AND sankul_name like '%".$whArr[0]."%' ";
	    }
		$data = array();
	    $q = $this->db->query("select id,sankul_name from tbl_sankul where 1=1 $whStr order by sankul_name limit $start,10");
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
	        $whStr .= " AND sankul_name like '%".$whArr[0]."%' ";
	    }
        $q = $this->db->query("select count(*) as cnt from tbl_sankul where 1=1 $whStr ");
	    return $q->result()[0]->cnt;
	}
	function get_record($id)
	{
		$query = $this->db->get_where('tbl_sankul', array('id' => $id), 1);
		return $query->result()[0];
	}
	function checkisExists($sankulName,$id=0)
	{
		$query = $this->db->query('select * from tbl_sankul where sankul_name = ? and id != ?', array($sankulName,$id));
		if ($query->num_rows() > 0)
		{
			return true;
		}
		return false;
	}
}
?>