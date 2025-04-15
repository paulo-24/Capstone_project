<?php
session_start();
include('processes/conn.php');

$stmt = $pdo->prepare("
    UPDATE classes_meetings
    SET status = 'Finished'
    WHERE STR_TO_DATE(CONCAT(CURDATE(), ' ', end_time), '%Y-%m-%d %h:%i %p') < NOW()
");
$stmt->execute();
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>WMSU - CCS | Student Management System</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <link href="external/css/login.css" rel="stylesheet">

    <link rel="icon" type="image/png" sizes="32x32" href="external/img/favicon-32x32.png">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap"
        rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid d-flex">
            <a class="navbar-brand" href="../index.php">
                <img src="external/img/ccs_logo-removebg-preview.png" class="img-fluid logo">
            </a>
            <div class="mx-auto">
                Student Management System
            </div>
        </div>
    </nav>
</header>

<body>

    <div class="container-fluid login-container">

        <div class="actual-login-container">
            <small><a href="../index.php" class="gb"><i class="bi bi-arrow-left-circle-fill"></i> Go back</a></small>
            <div class="d-flex">
                <img src="external/img/wmsu_Logo-removebg-preview.png" class="img-fluid big-logo">
                <img src="external/img/ccs_logo-removebg-preview.png" class="img-fluid big-logo">
            </div>

            <h5 class="bold">LOGIN</h5>

            <div class="container login-container-with-input">
                <form action="processes/login.php" method="POST">
                    <label style="text-align: left !important;" class="bold">EMAIL</label>
                    <input class="form-control" name="email" type="email" placeholder="Email" required>
                    <br>
                
                    <div class="mb-3">
                    <label style="text-align: left !important;" class="bold">PASSWORD</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="password" name="password"
                                placeholder="Create a password" required>
                            <button type="button" class="btn btn-outline-secondary"
                                onclick="togglePassword('password', this)">
                                <i class="bi bi-eye" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
            </div>

            <div class="button-linkers d-flex justify-content-between">
                <a href="create_account.php" class="gb-link me-auto" class="gb">Create an Account</a>
                <a data-bs-toggle="modal" data-bs-target="#resetPasswordModal" class="gb-link">Forgot your password?</a>

            </div>
            <div class="container login-container-with-input">
                <input type="submit" value="Login" class="login-btn">
            </div>
        </div>

        </form>
    </div>
    <style>
        @media screen and (max-width: 500px) {
            .login-container-with-input {
                width: 100% !important;
            }

            .button-linkers {
                justify-content: center !important;
                text-align: center !important;
                font-size: 12px !important;
                gap: 2rem;
            }

            .d-flex .big-logo {
                width: 100px;
                height: 100px;
            }

            .modal-dialog {
                max-width: 95%;
                margin: 0 auto;
            }

            .modal-content {
                padding: 10px;
            }

            .modal-title {
                font-size: 1.2rem;
            }

            .modal-footer button {
                padding: 5px 10px;
                font-size: 0.9rem;
            }

            .modal-body label {
                font-size: 0.9rem;
            }

            .modal-body input {
                font-size: 0.9rem;
                padding: 5px;
            }
        }
    </style>

    <div class="modal fade" id="resetPasswordModal" tabindex="-1" aria-labelledby="resetPasswordModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="resetPasswordModalLabel">Reset Password</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="resetPasswordForm" action="processes/reset.php" method="POST">
                        <div class="mb-3">
                            <label for="emailInput" class="form-label">Email Address</label>
                            <input type="email" class="form-control" id="emailInput" name="email"
                                placeholder="Enter your email address" required>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" form="resetPasswordForm" id="submitReset">Send Reset
                        Link</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>

    <script>
        document.getElementById('submitReset').addEventListener('click', function () {
            // Show SweetAlert2 modal
            Swal.fire({
                title: 'Processing...',
                text: 'Please wait while we process your request.',
                icon: 'info',
                allowOutsideClick: false,
                showConfirmButton: false,
                didOpen: () => {
                    Swal.showLoading(); // Show loading indicator
                    // Submit the form after showing the alert
                    document.getElementById('resetPasswordForm').submit();
                }
            });
        });

    </script>
</body>

<script>
    function togglePassword(fieldId, toggleButton) {
        const field = document.getElementById(fieldId);
        const icon = toggleButton.querySelector("i");

        if (field.type === "password") {
            field.type = "text";
            icon.classList.remove("bi-eye");
            icon.classList.add("bi-eye-slash");
        } else {
            field.type = "password";
            icon.classList.remove("bi-eye-slash");
            icon.classList.add("bi-eye");
        }
    }
</script>

<?php
include('processes/alerts.php');
?>
</html>

