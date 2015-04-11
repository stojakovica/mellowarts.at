<?php
$successlink = seo42::getFullUrl(9);

$error = array();
if($_POST['send']) {
    if(!$_POST['name']) {
        $error['name'] = "Bitte gib deinen Namen an!";
    }
    if(!$_POST['email']) {
        $error['email'] = "Bitte gib deine E-Mail-Adresse an!";
    }
    if(!$_POST['nachricht']) {
        $error['nachricht'] = "Bitte gib eine Nachricht ein!";
    }

    $name = $_POST['name'];
    $email = $_POST['email'];
    $nachricht = $_POST['nachricht'];

    if(empty($error)) {
        $message = "";
        $message.= "*Mellow Arts Anfrage*:\n\n";
        $message.= "Name: ".$name."\n";
        $message.= "E-Mail-Adresse: ".$email."\n";
        $message.= "\nNachricht: ".$nachricht."\n";

        $mail = new rex_mailer();
        $mail->SetFrom($email);
        $mail->Subject = "Anfrage Mellow Arts";
        $mail->Body    = nl2br($message);
        $mail->AltBody = $message;
        $mail->AddAddress("info@mellowarts.at");

        /* Attachments */
        $mail->Send();
        header("Location: ".$successlink);
        exit;
    }
}

if($error) {
    ?>
    <div class="container">
        <div class="alert alert-danger">
            <?php
            foreach($error as $e) {
                echo $e."<br/>";
            }
            ?>
        </div>
    </div>
<?php
}
?>
<form id="bewerbungForm" class="form-horizontal" method="post" role="form">
    <div class="container">
        <div class="row form-group">
            <div class="col-sm-offset-1 col-xs-10">
                <input type="text" class="form-control" name="name" placeholder="Name">
            </div>
        </div>
        <div class="row form-group">
            <div class="col-sm-offset-1 col-xs-10">
                <input type="text" class="form-control" name="email" placeholder="E-Mail">
            </div>
        </div>
        <div class="row form-group">
            <div class="col-sm-offset-1 col-xs-10">
                <textarea class="form-control" name="nachricht" placeholder="Nachricht"></textarea>
            </div>
        </div>
        <div class="row form-group">
            <div class="col-sm-offset-1 col-xs-10">
                <input type="submit" name="send" class="btn btn-default pull-right" value="Absenden" />
            </div>
        </div>
    </div>
</form>