<?php
    class User {
        private $db;

        public function __construct() {
            $this->db = new Database;
        }

        // Hashing password replacement of password_hash()
        function hash_pw($plain_pw) {
            // (optional) change logic here for different hash algorithm
            //return password_hash($plain_pw, PASSWORD_DEFAULT);
            return md5($plain_pw);
        }

        // Verify password replacement of password_verify
        function verify_pw($plain_pw, $hashed_pw) {
            // (optional) change logic here for different hash algorithm
            //return password_verify($plain_pw, $hashed_pw);
            return (md5($plain_pw)==$hashed_pw);
        }

        // Register User
        public function register($data) {
            $this->db->query('INSERT INTO users (name, email, password) VALUES(:name, :email, :password)');
            // Bind values
            $this->db->bind(':name', $data['name']);
            $this->db->bind(':email', $data['email']);
            $this->db->bind(':password', $data['password']);

            // Execute
            if ($this->db->execute()) {
                return true;
            }
            else {
                return false;
            }
        }

        // Login User
        public function login($email, $password) {
            $this->db->query('SELECT * FROM users WHERE email = :email');
            $this->db->bind(':email', $email);

            $row = $this->db->single();

            $hashed_password = $row->password;
            // password_verify is only working after PHP 5.5 used custom function verify_pw instead
            if ($this->verify_pw($password, $hashed_password)) {
                return $row;
            }
            else {
                return false;
            }
        }

        // Find user by email
        public function findUserByEmail($email) {
            $this->db->query('SELECT * from users WHERE email = :email');
            // Bind value
            $this->db->bind(':email', $email);

            $row = $this->db->single();

            // Check rows
            if ($this->db->rowCount() > 0) {
                return true;
            }
            else {
                return false;
            }
        }

        // Get User by ID
        public function getUserById($id) {
            $this->db->query('SELECT * from users WHERE id = :id');
            // Bind value
            $this->db->bind(':id', $id);

            $row = $this->db->single();

            return $row;
        }
    }