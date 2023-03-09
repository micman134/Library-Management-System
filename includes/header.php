
<?php session_start(); 
if(isset($_SESSION['login']))
{
?>    
<section class="menu-section">
        <div class="container">
            <div class="row ">

          <div class="col-md-6">
        <div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" > <h3>OLMS</h3></a>

            </div>

        </div>
    </div>
            	</div>

                <div class="col-md-6">



                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">

                            <li><a href="dashboard.php" class="menu-top-active">Home</a></li>
                               <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Lecture Materials <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                             <li role="presentation"><a role="menuitem" tabindex="-1" href="listed-books.php">Documents</a></li>
                             <li role="presentation"><a role="menuitem" tabindex="-1" href="listed-videos.php">Videos</a></li>

                                </ul>
                            </li>
                             <li>
                                <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Account <i class="fa fa-angle-down"></i></a>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="my-profile.php">My Profile</a></li>
                                     <li role="presentation"><a role="menuitem" tabindex="-1" href="change-password.php">Change Password</a></li>
                                </ul>
                            </li>
                            <li><a href="logout.php">Logout</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <?php } else { ?>
        <section class="menu-section">
        <div class="container">
            <div class="row ">

            	<div class="col-md-6">
        <div class="navbar navbar-inverse set-radius-zero" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" > <h3>OLMS</h3></a>

            </div>

        </div>
    </div>
            	</div>

                <div class="col-md-6">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">                        
                          
      <li><a href="index.php">Home</a></li>
      <li><a href="login.php">Login</a></li>
                            <li><a href="signup.php">Register</a></li>
                            <li><a href="adminlogin.php">Admin Login</a></li>

                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <?php } ?>