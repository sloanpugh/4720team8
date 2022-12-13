<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Team8.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        width: 342px;
        margin-left: 0;
    }
    .auto-style6 {
        width: 98px;
    }
    .auto-style7 {
        width: 271px;
    }
    .auto-style8 {
        width: 299px;
    }
    .auto-style9 {
        color: #CC3300;
    }
    .auto-style10 {
        text-align: center;
        height: 30px;
    }
        .auto-style11 {
            width: 98px;
            height: 21px;
        }
        .auto-style12 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td align="center" class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">
            <table class="auto-style5">
                <tr>
                    <td align="center" class="auto-style10" colspan="2" style="font-size: large; background-color: #040434; color: #FFFFFF;">Please Enter Credentials</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">Username</td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" TextMode="Email" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Password</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblError" runat="server" CssClass="auto-style9"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnSubmit" runat="server" BackColor="#040434" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="25px" Text="Sign In" Width="125px" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style11"></td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:F22Team8ConnectionString %>" SelectCommand="SELECT * FROM [Customers] WHERE ([Email] = @Email)">
                            <SelectParameters>
                                <asp:Parameter Name="Email" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style3" colspan="2">
                        <asp:HyperLink ID="hplRegister" runat="server" NavigateUrl="~/Registration.aspx">Become a Member</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
