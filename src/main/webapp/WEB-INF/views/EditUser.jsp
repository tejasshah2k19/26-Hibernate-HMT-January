<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #667eea, #764ba2);
        min-height: 100vh;
    }

    .user-card {
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
    <div class="col-md-6 col-lg-5">

        <div class="card user-card">
            <div class="card-header text-white text-center py-3">
                <h4 class="mb-0">
                    <i class="bi bi-person-plus-fill"></i> Edit User
                </h4>
            </div>

            <div class="card-body p-4">

                <form action="updateUser" method="post">

	<input type="hidden" name="userId" value="${user.userId}"/>
                    <!-- First Name -->
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="firstName"
                               name="firstName" value="${user.firstName }" placeholder="First Name" required>
                        <label for="firstName">
                            <i class="bi bi-person"></i> First Name
                        </label>
                    </div>

                    <!-- Last Name -->
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="lastName"
                               name="lastName" value="${user.lastName }" placeholder="Last Name" required>
                        <label for="lastName">
                            <i class="bi bi-person"></i> Last Name
                        </label>
                    </div>
 
                    <!-- Address -->
                    <div class="form-floating mb-4">
                        <textarea class="form-control" placeholder="Address"
                                  id="address" name="address"
                                  style="height: 100px" required>${user.address }</textarea>
                        <label for="address">
                            <i class="bi bi-geo-alt"></i> Address
                        </label>
                    </div>

                    <!-- Buttons -->
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-custom text-white">
                            <i class="bi bi-save"></i> Update User
                        </button>
                        <button type="reset" class="btn btn-outline-secondary">
                            <i class="bi bi-x-circle"></i> Clear
                        </button>
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
