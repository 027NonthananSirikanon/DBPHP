<?php 
  if(isset($_GET['error'])){
    $check_error = true;
  }else{
    $check_error = false;
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Login System</title>
    <style>
        .error {
            color: red;
        }
        @media (max-width: 768px) {
          .featurepic{
            display: none;
          }
         }
    </style>
</head>
<body>
  <section class="py-3 py-md-5">
    <div class="container">
        <div class="card border border-light-subtle rounded-3 shadow-sm">
        <div class="row justify-content-center">
        <div class="row pt-3">
            <div class="col-lg-6 d-flex align-items-center">
                <img src="../img/login.png" alt="" class="img-fluid featurepic">
            </div>
            <div class="col-lg-6">
                    <div class="card-body p-3 p-md-4 p-xl-5">
                        <h1 class="text-center">Login</h1>
                      <h2 class="fs-6 fw-normal text-center text-secondary mb-4">Sign in to your account</h2>
                      <form id="loginForm" action="checkLogin.php" method="post">
                        <div class="row gy-2 overflow-hidden">
                          <div class="col-12">
                            <div class="form-floating mb-3">
                              <input type="username" class="form-control" name="username" id="username" placeholder="Username" >
                              <label for="username" class="form-label">Username</label>
                            </div>
                            <p id="errorUsername" class="error"></p>
                          </div>
                          <div class="col-12">
                            <div class="form-floating mb-3">
                              <input type="password" class="form-control" name="password" id="password" value="" placeholder="Password" >
                              <label for="password" class="form-label">Password</label>
                            </div>
                            <!-- <p id="errorPassword" class="error"></p> -->
                            <div class="check_error">
                              <?php 
                                if($check_error){
                                  echo"<p class ='error'>Please check Username and Password</p>";
                                }
                              ?>

                            </div>
                          </div>
                        
                            <div class=" col-6 flex-sb-m w-full p-t-3 p-b-24">
                              <div class="contact100-form-checkbox">
                              <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                              <label class="label-checkbox100" for="ckb1">Remember me</label>
                              </div>
                              </div>
                              <div class="col-6 d-flex justify-content-end">
                                <a href="#" class="txt1"> Forgot Password </a>
                                </div>
                          <div class="col-12">
                            <div class="d-grid my-3">
                              <button class="btn btn-primary btn-lg" type="submit">Log in</button>
                            </div>
                          </div>
                        
                      </form>
                    </div>
                  </div>
              </div>
            </div>
        </div>
    </div>

      
    </div>
  </section>

     <!-- <section class="bg-light py-3 py-md-5">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5 col-xxl-4">
              <div class="card border border-light-subtle rounded-3 shadow-sm">
                <div class="card-body p-3 p-md-4 p-xl-5">
                    <h1 class="text-center">Login</h1>
                  <h2 class="fs-6 fw-normal text-center text-secondary mb-4">Sign in to your account</h2>
                  <form id="loginForm" action="#!">
                    <div class="row gy-2 overflow-hidden">
                      <div class="col-12">
                        <div class="form-floating mb-3">
                          <input type="text" class="form-control" name="text" id="username" placeholder="Username" >
                          <label for="username" class="form-label">Username</label>
                        </div>
                        <p id="errorUsername" class="error"></p>
                      </div>
                      <div class="col-12">
                        <div class="form-floating mb-3">
                          <input type="password" class="form-control" name="password" id="password" value="" placeholder="Password" >
                          <label for="password" class="form-label">Password</label>
                        </div>
                        <p id="errorPassword" class="error"></p>
                      </div>
                      <div class="col-12 ms-3 form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Remember me
                        </label>
                        <span class="ml-auto "><a href="#" class="forgot-pass">Forgot Password</a></span>
                      </div>
                      
                      <div class="col-12">
                        <div class="d-grid my-3">
                          <button class="btn btn-primary btn-lg" type="submit">Log in</button>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>  -->
    
    <!-- <form id="loginForm" action="#">
        <p>Username:</p>
        <input type="text" id="username">
        <p id="errorUsername" class="error"></p>
        <p>Password:</p>
        <input type="password" id="password">
        <p id="errorPassword" class="error"></p>
        <input type="submit" value="Submit">
    </form> -->

    <!-- <script>
        document.addEventListener("DOMContentLoaded", function () {
            document.querySelector("#loginForm").onsubmit = function (event) {
                event.preventDefault();

                let username = document.querySelector("#username").value;
                let password = document.querySelector("#password").value;

                let checkUsername = true;
                if (username.length < 8) {
                    document.querySelector("#errorUsername").innerHTML = "Username must be more than 8 characters";
                    checkUsername = false;
                } else {
                    document.querySelector("#errorUsername").innerHTML = "";
                }

                let checkPassword = true;
                if (password.length < 8) {
                    document.querySelector("#errorPassword").innerHTML = "Password must be more than 8 characters";
                    checkPassword = false;
                } else {
                    document.querySelector("#errorPassword").innerHTML = "";
                }

                if (checkUsername && checkPassword) {
                    alert("Login successful!");
                }
            }
        });
    </script> -->
</body>
</html>