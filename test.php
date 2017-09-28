<?php 
//phpinfo();
echo password_hash("123456", PASSWORD_BCRYPT)."\n";


$hash = '$2y$10$fD0NeJTXfn6VFKp/WsEd3eVDwbNvy4oN/1GepigR.xFmeELzXaUG2';

if (password_verify('123456', $hash)) {
    echo 'Password is valid!';
} else {
    echo 'Invalid password.';
}
?>