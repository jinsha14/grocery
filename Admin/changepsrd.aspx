<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepsrd.aspx.cs" Inherits="Admin_changepsrd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>D-Mart</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="../Template/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../Template/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="../Template/css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="../Template/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../Template/js/move-top.js"></script>
<script type="text/javascript" src="../Template/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->
    <style type="text/css">
        .style3
        {
            height: 42px;
        }
        .style5
        {
            width: 301px;
            height: 42px;
        }
        .style6
        {
            height: 90px;
        }
        .style8
        {
            width: 301px;
            height: 90px;
        }
        .style12
        {
            height: 48px;
        }
        .style14
        {
            width: 301px;
            height: 48px;
        }
        .style15
        {
            height: 22px;
        }
        .style17
        {
            width: 301px;
            height: 22px;
        }
        .style18
        {
            width: 148px;
            height: 22px;
        }
        .style19
        {
            width: 148px;
            height: 42px;
        }
        .style20
        {
            width: 148px;
            height: 48px;
        }
        .style21
        {
            width: 148px;
            height: 90px;
        }
        .style22
        {
            width: 181px;
            height: 22px;
        }
        .style23
        {
            width: 181px;
            height: 42px;
        }
        .style24
        {
            width: 181px;
            height: 48px;
        }
        .style25
        {
            width: 181px;
            height: 90px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="agileits_header">
		<div class="w3l_offers">
			
		</div>
		
        <div class="w3l_offers">
			
		</div>
        <div class="w3l_offers">
			
		</div>
        <div class="w3l_offers">
			
		</div>
		<div class="w3l_search">
			
		</div>
        <div class="w3l_offers">
			
		</div>
        <div class="w3l_offers" style ="margin-left :200px">
			<a href="#">New User Click to Start !</a>
		</div>
		
		
		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
									<li><a href="../Home.aspx">Logout</a></li> 
							</ul>
						</div>                  
					</div>	
				</li>
			</ul>
		</div>
		<div class="w3l_header_right1">
			<h2><a href="#">Contact Us</a></h2>
		</div>
		<div class="clearfix"> </div>
	</div>
<!-- script-for sticky-nav -->
	<script>
	    $(document).ready(function () {
	        var navoffeset = $(".agileits_header").offset().top;
	        $(window).scroll(function () {
	            var scrollpos = $(window).scrollTop();
	            if (scrollpos >= navoffeset) {
	                $(".agileits_header").addClass("fixed");
	            } else {
	                $(".agileits_header").removeClass("fixed");
	            }
	        });

	    });
	</script>
<!-- //script-for sticky-nav -->
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
				<h1><a href="#"><span></span> ABODE</a></h1>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">
					
					
				</ul>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>(+0123) 234 567</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:store@grocery.com">store@grocery.com</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
					<li><i class="fa fa-home" aria-hidden="true"></i><a href="adminhome.aspx">Home</a><span>|</span></li>
				<li>Change Password</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">
		<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div> 
			   <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						
					
						<li class="dropdown mega-dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<span class="caret"></span></a>				
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>	
										<li><a href="../Addproduct.aspx">Add Product</a></li>
										
                                        <li><a href="../searchproduct.aspx">Search Product</a></li>
									</ul>
								</div>                  
							</div>				
						</li>
					
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Rewards<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="rewards.aspx">Add Rewards</a></li>
										<li><a href="rewardsmaintenance.aspx">Edit Rewards</a></li>
                                        <li><a href="rewardcustomers.aspx">Customer Rewards</a></li>
									</ul>
								</div>                  
							</div>	
						</li>
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Customers<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="viewcustomers.aspx">View Customers</a></li>
										<li><a href="viewcartdetails.aspx">View CartDetails</a></li>
                                        <li><a href="cartupdation.aspx">Cart Updation</a></li>
									</ul>
								</div>                  
							</div>	
						</li>
                        <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Feedback<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="viewfeedback.aspx">View Customer Feedback</a></li>
										
									</ul>
								</div>                  
							</div>	
						</li>
                        <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Monthly Pack<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="viewmonthlypack.aspx">View Customer MonthlyPack</a></li>
										
									</ul>
								</div>                  
							</div>	
						</li>
						<li><a href="changepsrd.aspx">Change Password</a></li>
					</ul>
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="w3l_banner_nav_right">
<!-- mail -->
		<div class="mail">
			<h3>Change Password</h3>
            <div>
                <table style="width: 109%; height: 159px; font-family: 'Times New Roman', Times, serif; font-size: medium;">
                    <tr>
                        <td class="style18">
                            &nbsp;
                        </td>
                        <td class="style22">
                            </td>
                        <td class="style17">
                            &nbsp;
                        </td>
                        <td class="style15">
                            </td>
                        <td class="style15">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            &nbsp;
                        </td>
                        <td class="style23">
                            </td>
                        <td class="style5">
                            <asp:TextBox ID="Txtnwpsswrd" runat="server" Height="34px" Width="278px" 
                                Placeholder="                   New Password" MaxLength = "30" 
                                TextMode="Password" ></asp:TextBox>
                            &nbsp;
                        </td>
                        <td class="style3">
                            </td>
                        <td class="style3">
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            &nbsp;
                        </td>
                        <td class="style23">
                            </td>
                        <td class="style5">
                            <asp:TextBox ID="txtcnfrmpssd" runat="server" Height="34px" Width="278px" 
                                placeholder="                   Confirm Password" MaxLength = "30" 
                                TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="style3">
                            </td>
                        <td class="style3">
                            </td>
                    </tr>
                    <tr>
                        <td class="style20">
                            </td>
                        <td class="style24">
                            </td>
                        <td class="style14">
                            <asp:Button ID="Button2" runat="server" Text="Update" Height="34px" 
                                Width="278px" BackColor="#84C639" onclick="Button2_Click" 
                                Font-Bold="True"/>
                        </td>
                        <td class="style12">
                            </td>
                        <td class="style12">
                            </td>
                    </tr>
                    <tr>
                        <td class="style21">
                            </td>
                        <td class="style25">
                            </td>
                        <td class="style8">
                            &nbsp;</td>
                        <td class="style6">
                            </td>
                        <td class="style6">
                            </td>
                    </tr>
                </table>
            </div>
					<form action="#" method="post">
						<div class="clearfix"> </div>
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!-- //mail -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
<!-- map -->
	
<!-- //map -->

<!-- footer -->
	<div class="footer">
		<div class="container">
			
			
			
			<div class="clearfix"> </div>
			<div class="agile_footer_grids">
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h4>100% secure payments</h4>
						<img src="../Template/images/card.png" alt=" " class="img-responsive" />
					</div>
				</div>
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer" style ="margin-left :550px">
					<div class="w3_footer_grid_bottom" >
						<h5>connect with us</h5>
						<ul class="agileits_social_icons">
							<li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
							<li><a href="#" class="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#" class="dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="wthree_footer_copy">
				<p>© 2016 D-Mart. All rights reserved | Design by <a href="#">Athira</a></p>
			</div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
        function () {
            $('.dropdown-menu', this).stop(true, true).slideDown("fast");
            $(this).toggleClass('open');
        },
        function () {
            $('.dropdown-menu', this).stop(true, true).slideUp("fast");
            $(this).toggleClass('open');
        }
    );
    });
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
<!-- //here ends scrolling icon -->
<script src="../js/minicart.min.js"></script>
<script>
    // Mini Cart
    paypal.minicart.render({
        action: '#'
    });

    if (~window.location.search.indexOf('reset=true')) {
        paypal.minicart.reset();
    }
</script>
    </div>
    </form>
</body>
</html>
