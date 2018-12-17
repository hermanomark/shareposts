<?php
    class Pages extends Controller {
        public function __construct() {
           
        }

        public function index() {
            $data = array(
                'title' => 'SharePosts',
                'description' => 'Simple social network built on the TraversyMVC PHP framework'
            );
            
            $this->view('pages/index', $data);
        }

        public function about() {
            $data = array(
                'title' => 'About Us',
                'description' => 'App to sharepost with other users'
            );

            $this->view('pages/about', $data);
        }
    }
?>