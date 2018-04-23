<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Insert_model extends CI_Model{

	public function __construct() {
		parent::__construct();
	}
	function form_insert($data){
		// Inserting in Table(students) of Database(college)
		// $this->load->database();
		$query = $this->db->insert('reg2', $data);
		if($query)
		  {
		    return true;  
		  }
		  else
		  {
		    return false; 
		  }
	}
}

?>