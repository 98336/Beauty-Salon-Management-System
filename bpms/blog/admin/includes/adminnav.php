
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color: PaleTurquoise;margin-bottom:30px;height:80px;font-size:20px;">
            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php" style="color:black;" >BEAUTY BLOGS ADMIN PANEL</a>
            </div>
            
            <ul class="nav navbar-right top-nav">
                <li><a href="../index.php" style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'">VISIT SITE</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'"><i class="fa fa-user"></i> <?php echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname']; ?> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="./profile.php?section=<?php echo $_SESSION['username']; ?>"><i class="fa fa-fw fa-user" ></i> Profile</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="../logout.php"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>

<div class="collapse navbar-collapse " >
                <ul class="nav navbar-nav side-nav" style="background-color: PaleTurquoise;" >
                    <li>
                    <a href="index.php" class="active" style="color: black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'"><i class="fa fa-fw fa-dashboard" ></i> Dashboard</a>

                    </li>

                   <li>
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="collapse" data-target="#posts" style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'"><i class="fa fa-fw fa-file-text" ></i> Posts <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="posts" class="collapse">
                            <li>
                                <a href="./posts.php" style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'">View All Posts</a>
                            </li>
                            <li>
                                <a href="./publishnews.php" style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'">Add New Post</a>
                            </li>
                        </ul>
                        <li>
                         <a href="javascript:;" data-toggle="collapse" data-target="#user" style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'"><i class="fa fa-fw fa-users"></i> Users <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="user" class="collapse">
                            <li>
                                <a href="./users.php" style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'">View All Users</a>
                            </li>
                            <li>
                                <a href="adduser.php" style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'">Add New User</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a style="color:black;" onmouseover="this.style.color='white'" onmouseout="this.style.color='black'" href="./profile.php?section=<?php echo $_SESSION['username']; ?>"><i class="fa fa-fw fa-user"></i> Profile</a>
                    </li>
                </ul>
            </div>
        </nav>
        