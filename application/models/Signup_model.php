<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Signup_model extends CI_Model{

	function __construct()
    {
        parent::__construct();
    }

	    public function insert_user()
    {    
        $this->load->database();

    	$student_num = $this->input->post('snum');
    	$username = $this->input->post('uname');
    	$password = $this->input->post('pass');

    	# insert to signup table
        $data = array(
        	'id' => NULL,
        	'ts' => NULL,
            'student_num' => $student_num,
            'username' => $username,
            'password' => $password
        );
        $query = $this->db->insert('signup', $data);
        
        # insert to radcheck table
        $data = array(
        	'id' => NULL,
			'username' => $username,
			'attribute' => 'Cleartext-Password',
			'op' => ':=',
			'value' => $password
        );
        $this->db->insert('radcheck', $data);

        $data = array(
        	'id' => NULL,
			'username' => $username,
			'attribute' => 'Mikrotik-Recv-Limit',
			'op' => ':=',
			'value' => '0'
        );
        $this->db->insert('radcheck', $data);

        # insert to radreply table
        # commented out, now using radgroureply
   //      $data = array(
   //      	'id' => NULL,
			// 'username' => $username,
			// 'attribute' => 'Mikrotik-Rate-Limit',
			// 'op' => '=',
			// 'value' => '0k/1k'
   //      );
   //      $this->db->insert('radreply', $data);

        $data = array(
            'username' => $username,
            'groupname' => 'bnets'
            'priority' => '1'
        );
        $this->db->insert('radusergroup', $data);


		if($query) {
		    return true;  
		} else {
		    return false; 
		}
	}    
}   


?>