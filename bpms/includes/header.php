<section class=" w3l-header-4 header-sticky">
    <header class="absolute-top" style="background-color: PaleTurquoise  ;">
        <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light" style="color: black ">

        <h1 class="navbar-brand"><a href="index.php" style="color: black">BPMS</a></h1>


            <button class="navbar-toggler bg-gradient collapsed" type="button" data-toggle="collapse"
                data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="fa icon-expand fa-bars"></span>
        <span class="fa icon-close fa-times"></span>
            </button>
      
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php" style="color: black;">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.php" style="color: black;">About</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link" href="services.php" style="color: black;">Services</a>
                    </li> 

                    <li class="nav-item">
                        <a class="nav-link" href="contact.php" style="color: black;">Contact</a>
                    </li>
                     
                     <?php if (strlen($_SESSION['bpmsuid']==0)) {?>
                    <li class="nav-item">
                        <a class="nav-link" href="admin/index.php" style="color: black;">Admin</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="signup.php" style="color: black;">Signup</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php" style="color: black;">Login</a>
                    </li><?php }?>
                    <?php if (strlen($_SESSION['bpmsuid']>0)) {?>
                    <li class="nav-item">
                        <a class="nav-link" href="book-appointment.php" style="color: black;">Book Salon</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="booking-history.php" style="color: black;">Booking History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="invoice-history.php" style="color: black;">Invoice History</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="profile.php" style="color: black;">Profile</a>
                    </li>
                                        <li class="nav-item">
                        <a class="nav-link" href="change-password.php" style="color: black;">Setting</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="logout.php" style="color: black;">Logout</a>
                    </li>
                  <?php }?>
                </ul>
                
            </div>
        </div>

        </nav>
    </div>
      </header>
</section>