<?php
    class DB{

        static public function connect(){
            
            $db = new PDO("mysql:host=localhost;dbname=breif5","root","");
            return $db;
        }
    }

?>