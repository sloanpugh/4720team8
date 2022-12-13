<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Team8.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style6 {
            width: 166px;
            text-align: right;
        }
        .auto-style8 {
            width: 338px;
            text-align: right;
        }
        .auto-style9 {
            width: 91px;
        }
        .auto-style10 {
            width: 97%;
        }
        .auto-style11 {
            width: 735px;
        }
        .auto-style12 {
            width: 166px;
            text-align: right;
            height: 22px;
        }
        .auto-style13 {
            width: 338px;
            height: 22px;
            text-align: right;
        }
        .auto-style14 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style3" colspan="3" style="background-color: #040434; color: #FFFFFF; height: 30px">Register New Account</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Email</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtEmail" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td style="color: #FF0000">*<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">First Name</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtFName" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td style="color: #CC3300">*<asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Last Name</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtLName" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td style="color: #CC3300">*<asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Address</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtAddress" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td style="color: #CC3300">*<asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">City</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtCity" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td style="color: #CC3300">*<asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">State</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtState" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td style="color: #CC3300">*<asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Zip</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtZip" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td style="color: #CC3300">*<asp:RequiredFieldValidator ID="rfvZip" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Password</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtPass" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td style="color: #CC3300">*<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Confirm Password</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtPassC" runat="server" Width="300px"></asp:TextBox>
                        </td>
                        <td class="auto-style14" style="color: #CC3300">*<asp:CompareValidator ID="cvPassC" runat="server" ErrorMessage="Password Must Match"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3"><em>
                            <asp:Label ID="lblError" runat="server" ForeColor="#CC3300"></asp:Label>
                            </em></td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <asp:Button ID="btnRegister" runat="server" BackColor="#040434" BorderStyle="None" ForeColor="White" Height="25px" Text="Register" Width="150px" OnClick="btnRegister_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="3">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
