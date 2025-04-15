<?php
session_start();

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

    <link href="external/css/login_student.css" rel="stylesheet">

    <link rel="icon" type="image/png" sizes="32x32" href="external/img/favicon-32x32.png">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<header>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid d-flex">
            <a class="navbar-brand" href="../index.php">
                <img src="external/img/ccs_logo-removebg-preview.png" class="img-fluid logo">
            </a>
            <div class="mx-auto"> Student Management System
            </div>

        </div>
    </nav>
</header>

<body>

    <div class="container-fluid login-container">
        <div class="actual-login-container">
            <!-- Back Button -->
            <small><a href="index.php" class="gb"><i class="bi bi-arrow-left-circle-fill"></i> Go back</a></small>

            <!-- Welcome Message -->
            <div class="d-flex justify-content-center mt-3">
                <img src="external/img/wmsu_Logo-removebg-preview.png" class="img-fluid small-logo me-2">
                <img src="external/img/ccs_logo-removebg-preview.png" class="img-fluid small-logo">
            </div>
            <h3 class="text-center bold">Welcome to WMSU CCS</h3>
            <p class="text-center text-muted">Create your account by filling out the form below</p>

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
        }
            </style>
            <!-- Registration Form -->
            <div class="container-fluid mt-4 login-container-with-input">
                <form action="processes/register.php" method="POST" id="registrationForm">
                    <!-- Name -->
                    <div class="mb-3">
                        <label for="firstName" class="form-label bold">First Name</label>
                        <input type="text" class="form-control" id="firstName" name="firstName"
                            placeholder="Enter your first name" required>
                    </div>

                    <div class="mb-3">
                        <label for="middleName" class="form-label bold">Middle Name</label>
                        <input type="text" class="form-control" id="middleName" name="middleName"
                            placeholder="Enter your middle name" required>
                    </div>

                    <div class="mb-3">
                        <label for="lastName" class="form-label bold">Last Name</label>
                        <input type="text" class="form-control" id="lastName" name="lastName"
                            placeholder="Enter your last name" required>
                    </div>

                    <!-- Email -->
                    <div class="mb-3">
                        <label for="email" class="form-label bold">Email Address</label>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email"
                            required>
                    </div>

                    <!-- Password -->
                    <div class="mb-3">
                        <label for="password" class="form-label bold">Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="password" name="password"
                                placeholder="Create a password" required>
                            <button type="button" class="btn btn-outline-secondary"
                                onclick="togglePassword('password', this)">
                                <i class="bi bi-eye" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>

                    <!-- Confirm Password -->
                    <div class="mb-3">
                        <label for="confirm_password" class="form-label bold">Confirm Password</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="confirm_password" name="confirm_password"
                                placeholder="Re-enter your password" required>
                            <button type="button" class="btn btn-outline-secondary"
                                onclick="togglePassword('confirm_password', this)">
                                <i class="bi bi-eye" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>



                    <!-- Gender Selection -->
                    <div class="mb-3">
                        <label for="role" class="form-label bold">Gender</label>
                        <select class="form-select" id="gender" name="gender" required>
                            <option value="" disabled selected>Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Others">Others</option>
                        </select>
                    </div>

                    <!-- Role Selection -->
                    <div class="mb-3">
                        <label for="role" class="form-label bold">Role</label>
                        <select class="form-select" id="role" name="role" required onchange="updateFormFields()">
                            <option value="" disabled selected>Select Role</option>
                            <option value="admin">Administrator</option>
                            <option value="staff">Staff</option>
                            <option value="student">Student</option>
                        </select>
                    </div>

                    <!-- Role-Specific Fields -->
                    <div id="additional-fields"></div>

                    <!-- Submit -->
                    <div class="d-grid mt-4">
                        <button type="submit" class="btn btn-primary">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    

    <script>

function validateInputs() {
    const email = document.getElementById('email').value;
    const studentId = document.getElementById('student_id').value;

    // Regular Expression to extract the number from email
    const numberMatch = email.match(/\d+/);

    if (numberMatch && numberMatch[0] === studentId) {
        return true; // Validation passes; proceed to submit
    } else {
        alert("The Student ID does not match the number in the email.");
        return false; // Block form submission
    }
}


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

        function updateFormFields() {
            const role = document.getElementById('role').value;
            const additionalFields = document.getElementById('additional-fields');

            additionalFields.innerHTML = ''; // Clear previous inputs

            if (role === 'staff') {
                additionalFields.innerHTML = `
                <div class="mb-3">
                    <label for="department" class="form-label bold">Department</label>
                    <select class="form-select" id="department" name="department" required>
                        <option value="" disabled selected>Select Department</option>
                        <option value="Department of Information Technology ">Department of Information Technology</option>
                        <option value="Department of Computer Science">Department of Computer Science</option>
                    </select>
                </div>
                  <div class="mb-3">
    <label for="phoneNumber" class="form-label bold">Phone Number</label>
    <input type="tel" class="form-control" id="phoneNumber" name="phone_number" placeholder="Enter phone number" required>
</div>

            `;
            } else if (role === 'student') {
                additionalFields.innerHTML = `
                        <div class="mb-3">
                                <label style="text-align: left !important;" class="bold">Student ID</label>
                                <input type="number" class="form-control" name="student_id" id="student_id" placeholder="Student ID" oninput="checkInputs()" required>
                </div>
                <div class="mb-3">
                  <label for="course" class="form-label bold">Course</label>
                    <select class="form-select" id="course" name="course" required>
                        <option value="" disabled selected>Select Course</option>
                        <option value="BSIT">Bachelor of Science in Information Technology</option>
                        <option value="BSCS">Bachelor of Science in Computer Science</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="year_level" class="form-label bold">Year Level</label>
                    <select class="form-select" id="year_level" name="year_level" required>
                        <option value="" disabled selected>Select Year Level</option>
                        <option value="1st Year">1st Year</option>
                        <option value="2nd Year">2nd Year</option>
                        <option value="3rd Year">3rd Year</option>
                        <option value="4th Year">4th Year</option>
                    </select>
                </div>
            `;
            }
        }
    </script>

<script>
    // Attach the submit event to the form
    document.getElementById('registrationForm').addEventListener('submit', function (e) {
        e.preventDefault(); // Prevent default submission to show the popup

        // Show SweetAlert2 Loading Dialog
        Swal.fire({
            title: 'Submitting...',
            text: 'Please wait while we process your registration.',
            icon: 'info',
            allowOutsideClick: false,
            showConfirmButton: false,
            didOpen: () => {
                Swal.showLoading(); // Show loading spinner

                // Simulate form submission by manually submitting it after showing the alert
                setTimeout(() => {
                    e.target.submit();
                }, 2000); // Simulate a 2-second delay (for demo purposes)
            }
        });
    });
</script>


    <script>
        function goBack() {
            window.location.href = "student_login_page.php";
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">

        </script>
</body>

<?php
include('processes/alerts.php');
?>

</html>