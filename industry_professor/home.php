<?php include('db_connect.php');
function ordinal_suffix1($num){
    $num = $num % 100; // protect against large numbers
    if($num < 11 || $num > 13){
         switch($num % 10){
            case 1: return $num.'st';
            case 2: return $num.'nd';
            case 3: return $num.'rd';
        }
    }
    return $num.'th';
}
$astat = array("Not Yet Started","Started","Closed");

$notifications = $conn->query("SELECT * FROM notification WHERE target_user_id=".$_SESSION['login_class_id']." order by id desc limit 10");
 ?>

<div class="col-12">
    <div class="card">
      <div class="card-body">
        Welcome <?php echo $_SESSION['login_name'] ?>!
        <br>
        <div class="col-md-5">
          <div class="callout callout-info">
            <h5><b>Academic Year: <?php echo $_SESSION['academic']['year'].' '.(ordinal_suffix1($_SESSION['academic']['semester'])) ?> Trimester</b></h5>
            <h6><b>Evaluation Status: <?php echo $astat[$_SESSION['academic']['status']] ?></b></h6>
          </div>
        </div>
      </div>
    </div>
</div>

<div class="col-12">
    <div class="card">
      <div class="card-body">
        Notifications
        <br>
        <div class="col-md-12">
          <?php
            while($row = $notifications->fetch_assoc()){
              $is_new = "";

              if (!$row['is_read']) {
                $is_new = "<span style='color:red;'>*new</span>";
                echo '
                  <a onclick="notif_click('.$row['id'].', \''.$row['url'].'\')" href="#">
                    <div class="callout callout-info">
                      <h6><b>'.$row['created_at'].'</b>: '.$row['message'].' '.$is_new.'</h6>
                    </div>
                  </a>
                ';
              } else {
                echo '
                  <div class="callout callout-info">
                    <h6><b>'.$row['created_at'].'</b>: '.$row['message'].' '.$is_new.'</h6>
                  </div>
                ';
              }
            }
          ?>
        </div>
      </div>
    </div>
</div>

<script>
  function notif_click(id, url) {
    $.ajax({
      url:'ajax.php?action=notif_read',
      method:'POST',
      data: {
        'notif_id': id
      },
      error:err=>{
        //
      },
      success:function(resp){
        location.href = url;
      }
    })
  }
</script>
