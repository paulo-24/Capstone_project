<?php
include('processes/server/alert_system.php');
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

    <link href="external/css/index.css" rel="stylesheet">

    <link rel="icon" type="image/png" sizes="32x32" href="external/img/favicon-32x32.png">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<?php 
    include './header.php'
?>

<body>

    <div class="container-fluid main-container">
        <p class="paragraph-text">Western Mindanao State University</p>
        <p class="paragraph-text">College of Computing Studies</p>
        <h3 class="header-text">DEPARTMENT OF INFORMATION TECHNOLOGY</h3>
        <p class="paragraph-text">Zamboanga City</p>
        <label><small><b>Please select a particular profile to proceed
                    below:</b>
            </small></label>
        <br>
        <div class="container link-container">
            <a href="login/index.php" class="navigation-link">
                <img src="external/img/wmsu_Logo-removebg-preview.png" class="img-fluid big-logo">
                <h5 class="bold">PROCEED </h5>
            </a>

        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>


</html>
<?php
if (isset($_SESSION['STATUS']) && $_SESSION['STATUS'] == 'SEMESTER_NEAR_ENDING_NOTICE') {
    echo "
    <script>
        Swal.fire({
            title: 'Semester is almost ending!',
            text: 'The current semester is nearing its end. Teachers, please finalize all lessons and submit your grades. Students, be sure to submit all your assignments or requirements promptly.',
            icon: 'info'
        });
    </script>
    ";
    unset($_SESSION['STATUS']);
} elseif (isset($_SESSION['STATUS']) && $_SESSION['STATUS'] == 'SEMESTER_ENDED_NOTICE') {
    echo "
    <script>
        Swal.fire({
            title: 'Semester has ended!',
            text: 'The semester has officially concluded. Teachers, ensure all grades are finalized. Students, make sure all your submissions are complete and any queries are resolved.',
            icon: 'warning'
        });
    </script>
    ";
    unset($_SESSION['STATUS']);
}
?>

<style>
        body {
            font-family: 'Poppins', sans-serif;
        }
        .main-container {
            text-align: center;
            padding: 20px;
        }
        .header-text {
            font-size: 1.5rem;
            font-weight: 700;
        }
        .paragraph-text {
            font-size: 1rem;
        }
        .link-container {
            margin-top: 20px;
        }
        .navigation-link {
            display: inline-block;
            text-decoration: none;
            text-align: center;
            transition: all 0.3s ease-in-out;
        }
        .navigation-link:hover {
            transform: scale(1.05);
        }
      
        @media (max-width: 768px) {
            .header-text {
                font-size: 1.2rem;
            }
            .paragraph-text {
                font-size: 0.9rem;
            }
        
        }
    </style>