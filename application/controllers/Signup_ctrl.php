<?php

class Signup_ctrl extends CI_Controller {

	public function index()
    {
        $this->load->helper(array('form', 'url'));

    	//Including validation library
        // $this->load->library('form_validation');
        
        // $this->form_validation->set_rules('snum', 'Student No', 'required|min_length[9]|max_length[10]');
        
        // $this->form_validation->set_rules('uname', 'Username', 'required|min_length[5]|max_length[25]');
        
        // $this->form_validation->set_rules('pass', 'Password', 'required|min_length[8]|max_length[25]');

        // $this->form_validation->set_rules('pass2', 'Re-type Password', 'required|min_length[8]|max_length[25]');

        echo "belpbelp";

        // if ($this->form_validation->run() === FALSE) {
        //     echo "falseeeeee";
        //     $this->load->view('signup_view');
        // } else {
            if ($this->input->post('btnsubmit') == "Submit") {
                echo "submitttttt";
            	//Transfering data to Model
                $this->load->model('Signup_model');
                $success = $this->Signup_model->insert_user();
    			if($success == true) {
    				$data['message'] = 'Success!';
    			} 
                else {
    				$data['message'] = 'Failed!';
    			}            
    			//Loading View
    			$this->load->view('signup_view', $data);
            } else {
                echo "pwettt";
                $this->load->view('signup_view', $data);
            }
        // }
    }

}

?>