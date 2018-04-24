<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Insert_model extends CI_Model{

	// public function __construct() {
	// 	parent::__construct();
	// }
	// function form_insert($data){
	// 	// Inserting in Table(students) of Database(college)
	// 	// $this->load->database();
	// 	$query = $this->db->insert('reg2', $data);
	// 	if($query)
	// 	  {
	// 	    return true;  
	// 	  }
	// 	  else
	// 	  {
	// 	    return false; 
	// 	  }
	// }

	function __construct()
    {
        parent::__construct();
    }

	    public function insert_user()
    {    
        $data = array(
            // 'student_num' => $this->input->post('dsnum'),
            // 'username' => $this->input->post('duname'),
            // 'password' => $this->input->post('dpass')
            'student_num' => 'yes',
            'username' => 'yes',
            'password' => 'yes'
        );
        echo $data

        $this->load->database();
        // users is the name of the db table you are inserting in
        return $this->db->insert('reg2', $data);
    }   
}

?>