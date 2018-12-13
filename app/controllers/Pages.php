<?php
    class Pages extends Controller {
        public function __construct() {
           
        }

        public function index() {
            $data = array(
                'title' => 'SharePosts'
            );
            
            $this->view('pages/index', $data);
        }

        public function about() {
            $data = array(
                'title' => 'About Us'
            );

            $this->view('pages/about', $data);
        }
    }
?>