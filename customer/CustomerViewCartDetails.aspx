<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerViewCartDetails.aspx.cs" Inherits="customer_CustomerViewCartDetails" %>

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
        .style4
        {
            width: 125px;
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
        .style7
        {
            width: 125px;
            height: 90px;
        }
        .style8
        {
            width: 301px;
            height: 90px;
        }
        .style9
        {
            height: 22px;
        }
        .style12
        {
            height: 45px;
        }
        .style13
        {
            width: 125px;
            height: 45px;
        }
        .style14
        {
            width: 301px;
            height: 45px;
        }
        .style15
        {
            height: 42px;
            }
        .style16
        {
            height: 45px;
            width: 141px;
        }
        .style17
        {
            height: 22px;
            }
        .style18
        {
            height: 90px;
            width: 141px;
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
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="customerhome.aspx">Home</a><span>|</span></li>
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
                        <li><a href="userprofile.aspx">Profile</a></li>
                        <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<span class="caret"></span></a>				
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
                               
							           <ul>	
										<li><a href="../viewproduct.aspx">View Product</a></li>
										
									</ul>
								</div>                  
							</div>				
						</li>
					
						
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Rewards<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="rewards.aspx">View Rewards</a></li>
										
									</ul>
								</div>                  
							</div>	
						</li>


                        <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Cart<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="CustomerViewCartDetails.aspx">Today's CartDetails</a></li>
										
									</ul>
								</div>                  
							</div>	
						</li>
                         <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Monthly Pack<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="viewmonthlypack.aspx">View MonthlyPack</a></li>
										
									</ul>
								</div>                  
							</div>	
						</li>
						
						
						<li><a href="userchangepswrd.aspx">Change Password</a></li>
                        <li><a href="feedback.aspx">Feedback</a></li>
					</ul>
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="w3l_banner_nav_right">
<!-- mail -->
		<div class="mail">
			<h3>Cart Details</h3>
            <div>
                <table style="width: 109%; height: 211px; font-family: 'Times New Roman', Times, serif; font-size: medium;">
                    <tr>
                        <td colspan="5">
                            <asp:Label ID="lblcid" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;
                        </td>
                        <td class="style4">
                            </td>
                        <td class="style5">
                            &nbsp;
                        </td>
                        <td class="style3">
                            </td>
                        <td class="style3">
                        </td>
                    </tr>
                    <tr>
                        <td class="style15" colspan="3" 
                            style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #FF0000">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            Today Cart Details<br />
                        </td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style15">
                            &nbsp;
                        </td>
                        <td class="style4">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" OnPageIndexChanging="OnPageIndexChanging"
                                GridLines="None" Width="704px" Height="146px" >
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#84C639" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#84C639" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                            </td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style3">
                            </td>
                        <td class="style3">
                            </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            </td>
                        <td class="style13">
                            </td>
                        <td class="style14">
                            &nbsp;</td>
                        <td class="style12">
                            </td>
                        <td class="style12">
                            </td>
                    </tr>
                    <tr>
                        <td class="style17" colspan="4" 
                            style="font-family: 'Times New Roman', Times, serif; font-weight: bold; color: #FF0000">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            Previous Cart Details<br />
                        </td>
                        <td class="style9">
                            </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            </td>
                        <td class="style7">
                            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" OnPageIndexChanging="OnPageIndexChanging"
                                GridLines="None" Width="704px" Height="147px" >
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#84C639" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#84C639" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
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