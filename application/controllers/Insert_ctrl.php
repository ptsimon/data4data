<?php

class Insert_ctrl extends CI_Controller {

	// function __construct() {
		// parent::__construct();
		// $this->load->model('Insert_model');
	// }
	// function index() {
	// 	//Including validation library
	// 	$this->load->library('form_validation');
	// 	$this->load->helper(array('form', 'url'));

	// 	$this->form_validation->set_error_delimiters('<div class="error">', '</div>');

	// 	//Validating Student Number Field
	// 	$this->form_validation->set_rules('dsnum', 'Student No', 'required|min_length[9]|max_length[10]');

	// 	//Validating Username Field
	// 	$this->form_validation->set_rules('duname', 'Username', 'required|min_length[5]|max_length[25]');

	// 	//Validating Password Field
	// 	$this->form_validation->set_rules('dpass', 'Password', 'required|min_length[8]|max_length[25]');

	// 	if ($this->form_validation->run() == FALSE) {
	// 		$this->load->view('insert_view');

	// 	} else {
	// 		//Setting values for tabel columns
	// 		// $this->load->library('database');
	// 		// echo "hello";
	// 		$data = array(
	// 			// 'id' => NULL,
	// 			// 'ts' => NULL,
	// 			'student_num' => $this->input->post('dsnum'),
	// 			'username' => $this->input->post('duname'),
	// 			'password' => $this->input->post('dpass'),
	// 		);
	// 		//Transfering data to Model
	// 		$success = $this->Insert_model->form_insert($data);
	// 		if($success == true) {
	// 			$data['message'] = 'Data Inserted Successfully';
	// 		} else {
	// 			$data['message'] = 'Data not inserted successfully';
	// 		}
	// 		//Loading View
	// 		$this->load->view('insert_view', $data);
	// 	}
	// }

	public function index()
            {
        $this->load->helper(array('form', 'url'));

        $this->load->library('form_validation');
        $this->form_validation->set_rules('dsnum', 'Student No', 'required|min_length[9]|max_length[10]');
        $this->form_validation->set_rules('duname', 'Username', 'required|min_length[5]|max_length[25]');
        $this->form_validation->set_rules('dpass', 'Password', 'required|min_length[8]|max_length[25]');

        if ($this->form_validation->run() === FALSE)
        {
            $this->load->view('insert_view');
        }
        else
        {
            $this->load->model('Insert_model');
            $this->Insert_model->insert_user();
            $data['message'] = 'Data Inserted Successfully';
            $this->load->view('insert_view', $data);
        }
    }

}

?>