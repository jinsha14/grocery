<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addtomonthlypack.aspx.cs" Inherits="addtomonthlypack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>D-Mart</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="Template/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="Template/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="Template/css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="Template/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="Template/js/move-top.js"></script>
<script type="text/javascript" src="Template/js/easing.js"></script>
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
        .style1
        {
            width: 181px;
        }
        .style3
        {
            width: 186px;
        }
        .style4
        {
            height: 27px;
        }
        .style5
        {
            width: 181px;
            height: 27px;
        }
        .style6
        {
            width: 151px;
        }
    </style>
</head>
	
<body>
<form id="Form1" runat ="server" >
<!-- header -->
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
			<a href="products.html">New User Click to Start !</a>
		</div>
		
		
		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
								<li><a href="login.aspx">Login</a></li> 
								<li><a href="login.aspx">Sign Up</a></li>
							</ul>
						</div>                  
					</div>	
				</li>
			</ul>
		</div>
		<div class="w3l_header_right1">
			<h2><a href="mail.html">Contact Us</a></h2>
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
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="customer/customerhome.aspx">Home</a><span>|</span></li>
				<li></li>
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
                        <li><a href="customer/userprofile.aspx">Profile</a></li>
                        <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<span class="caret"></span></a>				
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
                               
							           <ul>	
										<li><a href="viewproduct.aspx">View Product</a></li>
										
									</ul>
								</div>                  
							</div>				
						</li>
					
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Rewards<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="customer/rewards.aspx">View Rewards</a></li>
										
									</ul>
								</div>                  
							</div>	
						</li>


                        <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Cart<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="customer/CustomerViewCartDetails.aspx">Today's CartDetails</a></li>
										
									</ul>
								</div>                  
							</div>	
						</li>
                         <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Monthly Pack<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="customer/viewmonthlypack.aspx">View MonthlyPack</a></li>
										
									</ul>
								</div>                  
							</div>	
						</li>
						
						
						<li><a href="customer/userchangepswrd.aspx">Change Password</a></li>
                        <li><a href="customer/feedback.aspx">Feedback</a></li>
					</ul>
                  
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="w3l_banner_nav_right">
<!-- mail -->
		<div class="mail">
			<h3>Add To Cart</h3>
            <div>
                <table style="border: thin solid #FFFFFF; width: 92%; height: 396px; font-family: 'Times New Roman', Times, serif; font-size: medium;">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style1" style="border: thin solid #C0C0C0">
                    <asp:Label ID="lblcid" runat="server" Text="Label" Visible="False"></asp:Label>
					    </td>
                        <td style="border: thin solid #C0C0C0" class="style6">
                            ProductId&nbsp;
                        </td>
                        <td class="style3" style="border: thin solid #C0C0C0">
                            <asp:Label ID="lblpid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="style1" rowspan="6">
                            &nbsp;</td>
                        <td class="style1" rowspan="6" style="border: thin solid #C0C0C0">
                            <asp:Image ID="Image1" runat="server" Height="133px" Width="168px" 
                                ImageUrl="~/Template/images/8.jpg" />
                            </td>
                        <td style="border: thin solid #C0C0C0" class="style6">
                            Product Name</td>
                        <td class="style3" style="border: thin solid #C0C0C0">
                            <asp:Label ID="Lblpname" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="border: thin solid #C0C0C0" class="style6">
                            Weight</td>
                        <td class="style3" style="border: thin solid #C0C0C0">
                            <asp:Label ID="lblpweight" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="border: thin solid #C0C0C0" class="style6">
                            MRP</td>
                        <td class="style3" style="border: thin solid #C0C0C0">
                            <asp:Label ID="lblmrp" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="border: thin solid #C0C0C0" class="style6">
                            Select Quantity</td>
                        <td class="style3" style="border: thin solid #C0C0C0">
                            <asp:DropDownList ID="drpcat" runat="server" Height="37px" Width="140px" 
                                AutoPostBack="True" onselectedindexchanged="drpcat_SelectedIndexChanged">
                                <asp:ListItem>--Select Quantity--</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="border: thin solid #C0C0C0" class="style6">
                            Total Amount</td>
                        <td class="style3" style="border: thin solid #C0C0C0">
                            <asp:Label ID="lbltot" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="border: thin solid #C0C0C0" class="style6">
                            &nbsp;</td>
                        <td class="style3" style="border: thin solid #C0C0C0">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            </td>
                        <td class="style5">
                            </td>
                        <td class="style5" style="border: thin solid #C0C0C0">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" 
                                Text="Back " Height="34px" 
                                Width="130px" BackColor="#84C639" onclick="Button2_Click" 
                                PostBackUrl="~/viewproduct.aspx" />
                            &nbsp;</td>
                        <td class="style4" colspan="2" style="border: thin solid #C0C0C0">
                            <asp:Button ID="Button2" runat="server" 
                                Text="Add to Monthly Pack" Height="34px" 
                                Width="216px" BackColor="#84C639" onclick="Button2_Click" />
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
					</div>
						<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!-- //mail -->
		</div>
		<div class="clearfix">
            <asp:Label ID="lbluid" runat="server" Text="Label" Visible="False"></asp:Label>
</div>
	</form>
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
						<img src="Template/images/card.png" alt=" " class="img-responsive" />
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
<script src="js/minicart.min.js"></script>
<script>
    // Mini Cart
    paypal.minicart.render({
        action: '#'
    });

    if (~window.location.search.indexOf('reset=true')) {
        paypal.minicart.reset();
    }
</script>
</form>
</body>
</html>
