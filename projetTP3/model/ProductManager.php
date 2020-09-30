<?php
require_once("C://wamp64/www/projetTP3/model/Manager.php");

class ProductManager extends Manager
{
    public function getProduct($sku)
    {
        $db = $this->dbConnect();
        $stmt = $db->prepare("SELECT * FROM produits WHERE id=:id");
        $stmt->execute(array('id' => $sku));
        return $stmt;
    }
    public function getProducts($limit)
    {
        $db = $this->dbConnect();
        $stmt = $db->prepare("SELECT * FROM produits ORDER BY nom LIMIT $limit");
        $stmt->execute();
        return $stmt;
    }
}