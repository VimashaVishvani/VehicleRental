<!DOCTYPE html>
<html>
<head>
  <!-- Bootstrap CSS -->
  <%@ include file="common_header.jsp"%>

  <style>
    body {
      background: linear-gradient(to right, #c9d6ff, #e2e2e2);
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .login-form {
      background-color: #ffffff;
      border-radius: 10px;
      padding: 30px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 390px;
    }
    .login-form h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    .form-group label {
      font-weight: bold;
    }
    .form-control {
      border-radius: 5px;
    }
    .btn-primary {
      border-radius: 5px;
    }
  </style>
</head>
<body>
  <%@ include file="common_nav.jsp"%>
  
  <div class="container d-flex justify-content-center align-items-center">
    <div class="login-form">
      <h2>Login</h2>
      <form action="log" method="post">
        <div class="form-group mb-3">
          <label for="email">Email address</label>
          <input type="email" class="form-control" id="email" placeholder="Enter email" name="username" required>
        </div>
        <div class="form-group mb-3">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" placeholder="Password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Login</button>
      </form>
    </div>
  </div>

  <!-- Bootstrap JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
