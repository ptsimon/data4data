<?php

class Signup_ctrl extends CI_Controller {

	public function index()
    {
        $this->load->helper(array('form', 'url'));

        if ($this->input->post('btnsubmit') == "Submit") {
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
            $this->load->view('signup_view');
        }
    }

}

?>