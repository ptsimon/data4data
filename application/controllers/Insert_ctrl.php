<?php

class Insert_ctrl extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('insert_model');
	}
	function index() {
		//Including validation library
		$this->load->library('form_validation');

		$this->form_validation->set_error_delimiters('<div class="error">', '</div>');

		//Validating Student Number Field
		$this->form_validation->set_rules('dsnum', 'Student Number', 'required|min_length[9]|max_length[10]');

		//Validating Username Field
		$this->form_validation->set_rules('dsnum', 'Username', 'required|min_length[5]|max_length[15]');

		//Validating Password Field
		$this->form_validation->set_rules('dpass', 'Password', 'required|');

		if ($this->form_validation->run() == FALSE) {
		$this->load->view('insert_view');
		} else {
			//Setting values for tabel columns
			$data = array(
			'Student_Number' => $this->input->post('dsnum'),
			'Username' => $this->input->post('duname'),
			'Password' => $this->input->post('dpass'),
			);
			//Transfering data to Model
			$this->insert_model->form_insert($data);
			$data['message'] = 'Data Inserted Successfully';
			//Loading View
			$this->load->view('insert_view', $data);
		}
	}

}

?>