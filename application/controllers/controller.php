<?php

	class controller extends CI_Controller {
		function delete($id) {
			$this->model->delete('user_articel',$id);
			redirect(base_url().'user/articel');
		}
		function tambah() {
			$title = $this->input->post('title');
			$content = $this->input->post('content');
			$kategori = $this->input->post('kategori');
			$upload_image = $_FILES['image']['name'];
			$date_created = time();
			$name = $this->input->post('name');
			$data = ['id'=>'','title'=>$title,'content'=>$content,'kategori'=>$kategori,'date_created'=>$date_created,'image'=>$upload_image,'name'=>$name];
			$this->model->add('user_articel',$data);
//upload file ke folder
				$config['allowed_types'] = 'gif|jpg|png';
                $config['max_size']      = '2048';
                $config['upload_path'] = './assets/img/articel/';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('image')) {
                    $old_image = $data['user']['image'];
                    if ($old_image != 'default.jpg') {
                        unlink(FCPATH . 'assets/img/articel/' . $old_image);
                    }
                    $new_image = $this->upload->data('file_name');
                    $this->db->set('image', $new_image);
                    $this->db->where('id', $id);
            		$this->db->update('user_articel');
                } else {
                    echo $this->upload->dispay_errors();
                }
			redirect(base_url().'user/articel');
		}
		function index_edit($id) {
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			$data['data'] = $this->model->getId('user_articel',$id)[0];

		
       $this->load->view('temp/header');
        $this->load->view('admin/editarticel', $data);
        $this->load->view('temp/footer');
		}
		function edit($id) {
			$title = htmlspecialchars($this->input->post('title'));
			$content = htmlspecialchars($this->input->post('content'));
			$kategori = $this->input->post('kategori');
			$date_created = time();
			$name = $this->input->post('name');
			$data = ['id'=>$id,'title'=>$title,'content'=>$content,'kategori'=>$kategori,'date_created'=>$date_created,'name'=>$name];
			$this->model->update('user_articel',$data);
			redirect(base_url().'user/articel');
		}
		function ubaha($id) {
			$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
			$data['data'] = $this->model->getId('user_articel',$id)[0];

		
       	$this->load->view('temp/header');
        $this->load->view('admin/ubahimg', $data);
        $this->load->view('temp/footer');
		}
		function editimg($id) {
			$name = $this->input->post('name');
			$date_created = time();
			$upload_image = $_FILES['image']['name'];
			$data = ['id'=>$id,'name'=>$name,'date_created'=>$date_created];
			$this->model->update('user_articel',$data);
			//upload file ke folder
				$config['allowed_types'] = 'gif|jpg|png';
                $config['max_size']      = '2048';
                $config['upload_path'] = './assets/img/articel/';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('image')) {
                    $old_image = $data['user']['image'];
                    if ($old_image != 'default.jpg') {
                        unlink(FCPATH . 'assets/img/articel/' . $old_image);
                    }
                    $new_image = $this->upload->data('file_name');
                    $this->db->set('image', $new_image);
                    $this->db->where('id', $id);
            		$this->db->update('user_articel');
                } else {
                    echo $this->upload->dispay_errors();
                }
			redirect(base_url().'user/articel');
		}
		function like(){
			$suka = $this->input->post('suka');
			$usersuka = $this->input->post('usersuka');
			$usersuka = $usersuka+0;
			$email = $this->input->post('email');
			$id = $this->input->post('id');
			$sukas = $suka+0;
			$cek = $this->input->post('cek');
			if($cek < $usersuka ){
				$sukas = $suka+1;
			$arr =['id'=>$id,'suka'=>$sukas];
			$this->model->update('user_articel',$arr);
			$usersuka = $usersuka-1;
			$data =['email'=>$email,'usersuka'=>$usersuka];
			$this->model->updateuse('user',$data);
			}
			redirect(base_url().'user/articel');
		}
		function myarticel(){
		$data['title'] = 'My articel';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $email = $this->session->userdata('email');
        $data['articel'] = $this->db->get_where('user_articel', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/myarticel', $data);
        $this->load->view('templates/footer');
		}
	}
?>