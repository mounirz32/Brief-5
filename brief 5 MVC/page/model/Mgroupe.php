<?php
include_once __DIR__.'/../database/DB.php';

    class Mgroupe{
        function getSelect(){

            $sql="select * from groupe";
            $query=DB::connect()->query($sql);
            return $query->fetchAll();
        }

        function delete($id){

            $sql="delete from groupe where id=$id";
            $query=DB::connect()->query($sql);

            
        }

        function save($Libelle,$effectif){

            $sql="INSERT INTO `groupe`(`libelle`, `effectif`) VALUES ('$Libelle','$effectif')";
            $query=DB::connect()->query($sql);
        }

        function edit($id){
   
            $sql="select * from groupe where id=$id";

            $query=DB::connect()->query($sql);
            return $query->fetchAll();
        }

        function update($Libelle,$effectif,$id){
           
            $sql="UPDATE groupe SET libelle='$Libelle',effectif='$effectif' WHERE id = $id";
            // die($sql);
            $query=DB::connect()->query($sql);
        }
    }



?>