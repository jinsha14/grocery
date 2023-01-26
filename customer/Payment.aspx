<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 947px;
        }
        .style2
        {
            height: 894px;
            width: 628px;
            margin-left: 190px;
        }
        .style3
        {
            width: 99%;
            height: 897px;
        }
        .style5
        {
            height: 786px;
            width: 570px;
            margin-left: 18px;
            background-color: #FFFFFF;
            margin-bottom: 0px;
        }
        .style6
        {
            color: #0066CC;
            height: 526px;
            background-color: #0066CC;
            width: 559px;
        }
        .style7
        {
            width: 101%;
            height: 777px;
        }
        .style8
        {
            color: #FFFFFF;
            text-align: center;
            background-color: #0099FF;
        }
        .style9
        {
            color: #000000;
        }
        .style10
        {
            background-color: #666666;
            height: 33px;
        }
        .style11
        {
            color: #000000;
            height: 18px;
        }
        .style12
        {
            height: 17px;
        }
        .style15
        {
            color: #000000;
            height: 21px;
        }
        .style16
        {
            height: 58px;
            color: #000000;
            width: 361px;
        }
        .style17
        {
            color: #000000;
            width: 248px;
        }
        .style18
        {
            height: 58px;
            color: #000000;
            width: 248px;
        }
        .style19
        {
            width: 248px;
        }
        .style20
        {
            width: 248px;
            height: 60px;
            color: #000000;
        }
        .style21
        {
            height: 60px;
            width: 361px;
        }
        .style22
        {
            width: 248px;
            height: 48px;
        }
        .style23
        {
            height: 48px;
            width: 361px;
        }
        .style24
        {
            width: 100%;
            height: 905px;
        }
        .style28
        {
            color: #000000;
            height: 35px;
            text-align: center;
            width: 361px;
        }
        .style29
        {
            width: 248px;
            height: 35px;
        }
        .style30
        {
            width: 361px;
        }
        .style31
        {
            color: #000000;
            width: 361px;
        }
        .style34
        {
            color: #000000;
            width: 248px;
            height: 26px;
        }
        .style35
        {
            width: 361px;
            height: 26px;
        }
        </style>

        <script language="Javascript" type="text/javascript">

            function onlyAlphabets(e, t) {
                try {
                    if (window.event) {
                        var charCode = window.event.keyCode;
                    }
                    else if (e) {
                        var charCode = e.which;
                    }
                    else { return true; }
                    if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                        return true;
                    else
                        return false;
                }
                catch (err) {
                    alert(err.Description);
                }
            }

    </script>

    <script type="text/javascript" language=Javascript>
      <!--
    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
    //-->
    </script>



</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <table class="style24">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton 
                        ID="LinkButton1" runat="server" 
                        PostBackUrl="~/customer/customerhome.aspx" ForeColor="Maroon" 
                        style="font-weight: 700; font-size: large">Home</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <div class="style2">
                        <table class="style3">
                            <tr>
                                <td class="style6" style="background-color: #008000">
                                    <div class="style5">
                                        <table class="style7">
                                            <tr>
                                                <td class="style8" colspan="2" style="background-color: #84C639">
                                                    <em><strong>PAYMENT</strong></em></td>
                                            </tr>
                                            <tr>
                                                <td class="style12" colspan="2">
                                                    <span class="style9"><strong>Payment Summary</strong></span>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style11" colspan="2">
                                                    Please review the following details for this transaction.</td>
                                            </tr>
                                            <tr>
                                                <td class="style10" colspan="2">
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style17">
                                                    CustomerName<br />
                                                </td>
                                                <td class="style30">
                                                    <asp:Label ID="lblcname" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style17">
                                                    ProductName<br />
                                                </td>
                                                <td class="style30">
                                                    <asp:Label ID="lblitem" runat="server" Text="Groceries" ForeColor="Black"></asp:Label>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style34">
                                                    Quantity</td>
                                                <td class="style35">
                                                    <asp:Label ID="lblqunty" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style17">
                                                    TotalAmount<br />
                                                </td>
                                                <td class="style30">
                                                    <asp:Label ID="lblamt" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                                                   </td>
                                            </tr>
                                            <tr>
                                                <td class="style15" colspan="2">
                                                    <strong>Booking Information<br />
                                                    </strong></td>
                                            </tr>
                                            <tr>
                                                <td class="style11" colspan="2">
                                                    Enter your payment details below</td>
                                            </tr>
                                            <tr>
                                                <td class="style18">
                                                    Payment Options&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;
                                                    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                <td class="style16">
                                                    &nbsp;&nbsp;&nbsp;
                                                    <asp:Image ID="Image1" runat="server" Height="41px" 
                                                        ImageUrl="~/Template/images/paypal.jpg" 
                                                        Width="52px" />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Image ID="Image3" runat="server" Height="38px" 
                                                        
                                                        ImageUrl="~/Template/images/visa.png" 
                                                        Width="47px" />
                                                &nbsp;&nbsp;
                                                    <asp:Image ID="Image4" runat="server" Height="42px" 
                                                        ImageUrl="~/Template/images/gpay.png" 
                                                        Width="43px" />
&nbsp;&nbsp;
                                                   <asp:Image ID="Image2" runat="server" Height="44px" 
                                                        ImageUrl="~/Template/images/paytm.png" 
                                                        Width="62px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style20">
                                                    <strong>Credit Card*</strong></td>
                                                <td class="style21">
                                                    <asp:TextBox ID="pfname" runat="server" Height="27px" Width="130px" MaxLength="20" ></asp:TextBox>
&nbsp;&nbsp;
                                                    <asp:TextBox ID="plname" runat="server" Height="25px" Width="144px" MaxLength="20" ></asp:TextBox>
                                                    <br />
                                                    <span class="style9">FirstName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                    LastName</span></td>
                                            </tr>
                                            <tr>
                                                <td class="style22">
                                                    </td>
                                                <td class="style23">
                                                    <asp:TextBox ID="pcardno" runat="server" Width="295px" Height="22px" MaxLength="15"></asp:TextBox>
                                                    <br />
                                                    <span class="style9">CreditCard Number<br />
                                                    </span></td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td class="style30">
                                                    <asp:DropDownList ID="dmonth" runat="server" AutoPostBack="True" 
                                                        Height="16px" Width="103px">
                                                        <asp:ListItem>Select Month</asp:ListItem>
                                                        <asp:ListItem>January</asp:ListItem>
                                                        <asp:ListItem>February</asp:ListItem>
                                                        <asp:ListItem>March</asp:ListItem>
                                                        <asp:ListItem>April</asp:ListItem>
                                                        <asp:ListItem>May</asp:ListItem>
                                                        <asp:ListItem>June</asp:ListItem>
                                                        <asp:ListItem>July</asp:ListItem>
                                                        <asp:ListItem>August</asp:ListItem>
                                                        <asp:ListItem>September</asp:ListItem>
                                                        <asp:ListItem>October</asp:ListItem>
                                                        <asp:ListItem>November</asp:ListItem>
                                                        <asp:ListItem>December</asp:ListItem>
                                                        <asp:ListItem></asp:ListItem>
                                                    </asp:DropDownList>
&nbsp;
                                                    <asp:DropDownList ID="dyear" runat="server" AutoPostBack="True" 
                                                        Width="88px">
                                                        <asp:ListItem>Select Year</asp:ListItem>
                                                        <asp:ListItem>2017</asp:ListItem>
                                                        <asp:ListItem>2018</asp:ListItem>
                                                        <asp:ListItem>2019</asp:ListItem>
                                                        <asp:ListItem>2020</asp:ListItem>
                                                         <asp:ListItem>2021</asp:ListItem>
                                                         <asp:ListItem>2022</asp:ListItem>
                                                    </asp:DropDownList>
&nbsp;
                                                    <asp:TextBox ID="pcode" runat="server" Height="23px" Width="78px" MaxLength="4"></asp:TextBox>
                                                    <br />
                                                    <span class="style9">Expiration Month&nbsp;&nbsp; Year&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                    Code</span></td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td class="style30">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style17">
                                                    <strong>Billing Address*</strong></td>
                                                <td class="style30">
                                                    <asp:TextBox ID="paddress" runat="server" Width="294px" Height="28px" 
                                                        TextMode="MultiLine"></asp:TextBox>
                                                    <br />
                                                    <span class="style9">City Street Address</span></td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td class="style30">
                                                    <span class="style9">&nbsp;&nbsp;&nbsp;&nbsp; Pincode</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:TextBox ID="ppincode" runat="server" Height="23px"  MaxLength="6"
                                                        Width="194px" ></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style19">
                                                    &nbsp;</td>
                                                <td class="style31">
                                                    MobileNumber&nbsp;
                                                    <asp:TextBox ID="pphn" runat="server" Height="23px"  MaxLength="12" 
                                                        Width="192px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style29">
                                                   </td>
                                                <td class="style28">
                                                    EmailID&nbsp; 
                                                    <asp:TextBox ID="pmail" runat="server" Height="23px" MaxLength="30"
                                                        Width="194px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" 
                                                        Height="30px" Text="Proceed" Width="148px" OnClick="Button1_Click"></asp:Button>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
&nbsp;
                    &nbsp;
                    <asp:Label ID="lblrmail" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;
                    <asp:Label ID="lbluid" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbldate" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
