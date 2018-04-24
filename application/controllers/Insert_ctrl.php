<?php

class Insert_ctrl extends CI_Controller {

	public function index()
    {
        $this->load->helper(array('form', 'url'));

    	//Including validation library
        $this->load->library('form_validation');
        
        $this->form_validation->set_rules('dsnum', 'Student No', 'required|min_length[9]|max_length[10]');
        
        $this->form_validation->set_rules('duname', 'Username', 'required|min_length[5]|max_length[25]');
        
        $this->form_validation->set_rules('dpass', 'Password', 'required|min_length[8]|max_length[25]');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('insert_view');
        } else {
        	//Transfering data to Model
            $this->load->model('Insert_model');
            $success = $this->Insert_model->insert_user();
			if($success == true) {
				$data['message'] = 'Data Inserted Successfully';
			} else {
				$data['message'] = 'Data not inserted successfully';
			}            
			//Loading View
			$this->load->view('insert_view', $data);
        }
    }

}

?>