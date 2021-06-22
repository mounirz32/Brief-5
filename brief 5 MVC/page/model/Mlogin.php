<?php
include_once __DIR__.'/../database/DB.php';

    class Mlogin{

        function seConnect($email){

            
            
                $sql = "select * from user where email = '$email'";
                $query = DB::connect()->query($sql);
                
                return $query;
                
            }

            function register($nom,$prenom,$email,$pwd,$matiere){

                $pwHash =  password_hash("$pwd", PASSWORD_DEFAULT);
                
                $sql="INSERT INTO `user`(`nom`, `prenom`, `email`, `pwd`, `role`) VALUES ('$nom','$prenom','$email','$pwHash','enseignant')";
                
                $query=DB::connect()->query($sql);

                

                $sqllastId="SELECT id FROM user ORDER BY id DESC LIMIT 1";

                $queryLastId=DB::connect()->query($sqllastId);

                $rowId=$queryLastId->fetch();
                $lastId = $rowId[0];


                $sqlEns="INSERT INTO `enseignant`(`idUser`, `idMatiere`) VALUES ($lastId,$matiere)";
                
                
                $queryEns=DB::connect()->query($sqlEns);

                

                
            }
            

        }
    

?>