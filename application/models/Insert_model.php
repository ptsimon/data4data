<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Insert_model extends CI_Model{

	function __construct()
    {
        parent::__construct();
    }

	    public function insert_user()
    {    
        $data = array(
            'student_num' => $this->input->post('dsnum'),
            'username' => $this->input->post('duname'),
            'password' => $this->input->post('dpass')
        );
        
        $this->load->database();
        // users is the name of the db table you are inserting in
        $query = return $this->db->insert('reg2', $data);
		if($query) {
		    return true;  
		} else {
		    return false; 
		}
	}    
}   


?>