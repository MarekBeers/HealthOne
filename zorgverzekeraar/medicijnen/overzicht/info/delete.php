<?php
try {
    $db = new PDO("mysql:host=localhost;dbname=healthone","root","");
    $query = $db->prepare("SELECT * FROM medicijn WHERE id = " . $_GET['id']);
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_ASSOC);
    foreach ($result as &$data) {
        $query = $db->prepare("DELETE FROM `medicijn` WHERE id=".$data['id'] );
        $query->execute();
        echo "succes";
    }
}
catch(PDOException $e){
    die("wank".$e->getMessage());

}
header("Location: ../../overzicht.php");
?>