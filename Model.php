<?php 

class Database{

    private $dsn;
    private $username;
    private $password;

    private $stmt;
    private $pdo;
    public function __construct($config, $username, $password) {
        $this->dsn  = "mysql:". http_build_query($config, "", ";");
        $this->username = $username;
        $this->password = $password;

        $this->pdo = new PDO($this->dsn, $this->username, $this->password);

    }

    // query the statement
    function query($query, $foo = []){
        $this->stmt = $this->pdo->prepare($query);
        $this->stmt->execute($foo);
        
        // return the instance of the object
        return $this;
    }

    function fetch(){
        $arrPost = [];
        if($this->stmt->rowCount() === 1 ){
            $arrPost = $this->stmt->fetch();
        }
        elseif($this->stmt->rowCount() > 1){
            foreach ($this->stmt->fetchAll() as $row) {
                $arrPost[] = $row;
            }
        }
        return $arrPost;
    }

}