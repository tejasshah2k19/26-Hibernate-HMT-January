<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #667eea, #764ba2);
        min-height: 100vh;
    }

    .login-card {
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.2);
    }

    .card-header {
        background: linear-gradient(90deg, #4e54c8, #8f94fb);
        border-radius: 15px 15px 0 0;
    }

    .form-control:focus {
        box-shadow: none;
        border-color: #6f42c1;
    }

    .btn-custom {
        background: linear-gradient(90deg, #4e54c8, #8f94fb);
        border: none;
    }

    .btn-custom:hover {
        opacity: 0.9;
    }
</style>

</head>
<body>

<div class="container d-flex justify-content-center align-items-center">
    <div class="col-md-5 col-lg-4">

        <div class="card login-card">
            <div class="card-header text-white text-center py-3">
                <h4 class="mb-0">
                    <i class="bi bi-shield-lock-fill"></i> User Login
                </h4>
            </div>

            <div class="card-body p-4">

                <!-- Optional error message -->
                <c:if test="${not empty error}">
                    <div class="alert alert-danger text-center">
                        ${error}
                    </div>
                </c:if>

                <form action="login" method="post">

                    <!-- Email -->
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" id="email"
                               name="email" placeholder="Email" required>
                        <label for="email">
                            <i class="bi bi-envelope"></i> Email Address
                        </label>
                    </div>

                    <!-- Password -->
                    <div class="form-floating mb-4">
                        <input type="password" class="form-control" id="password"
                               name="password" placeholder="Password" required>
                        <label for="password">
                            <i class="bi bi-lock"></i> Password
                        </label>
                    </div>

                    <!-- Login Button -->
                    <div class="d-grid mb-3">
                        <button type="submit" class="btn btn-custom text-white">
                            <i class="bi bi-box-arrow-in-right"></i> Login
                        </button>
                    </div>

                    <!-- Links -->
                    <div class="text-center">
                        <a href="forgotPassword" class="text-decoration-none">
                            Forgot Password?
                        </a>
                        <br>
                        <span class="text-muted">Don’t have an account?</span>
                        <a href="signup" class="text-decoration-none fw-semibold">
                            Sign Up
                        </a>
                    </div>

                </form>

            </div>
        </div>

    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
