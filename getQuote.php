
<?php 
require 'dbconn.php';

$user='1';
$where = "";
if ($_POST['symbol']){
 switch ($_POST['action']){
  case "add":
    $where = " where symbol = '".$_POST['symbol']."'";
    $sql = "select * from quotes ".$where;

    $result = mysqli_query($con,$sql);
    $rows = array();
    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }
    if (sizeof($rows)==0){
      require 'dbclose.php';
      print json_encode($rows);
      return;
    }
    $sql= "insert into watchlist (user, symbol) values ('".$user."','".$_POST['symbol']."')";
    $wlupdate=mysqli_query($con,$sql);
    break;
  case "delete":
    $sql = "delete from watchlist where user='".$user."' and symbol='".$_POST["symbol"]."'";
    $wlupdate=mysqli_query($con,$sql);
    break;
 } 
}

$sql="select * from quotes where symbol in (select symbol from watchlist where user='".$user."')";
  $result = mysqli_query($con,$sql);
  $rows = array();
  while($r = mysqli_fetch_assoc($result)) {
      $rows[] = $r;
  }

require 'dbclose.php';
print json_encode($rows);

?>
