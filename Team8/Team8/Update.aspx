<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Team8.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style46 {
        width: 191px;
        text-align: right;
        height: 75px;
    }
    .auto-style47 {
            text-align: right;
            height: 75px;
            width: 121px;
        }
    
        .auto-style8 {
            width: 152px;
            text-align: center;
            height: 75px;
        }
        .auto-style71 {
            width: 349px;
            text-align: center;
            height: 75px;
        }
        .auto-style50 {
            height: 75px;
            width: 151px;
        }
    .auto-style66 {
        width: 191px;
        text-align: right;
        height: 68px;
    }
    .auto-style67 {
            text-align: right;
            height: 68px;
            width: 121px;
        }
        .auto-style73 {
            height: 68px;
            width: 152px;
        }
        .auto-style69 {
            text-align: center;
            width: 349px;
            height: 68px;
        }
    .auto-style70 {
            height: 68px;
            width: 151px;
        }
        .auto-style61 {
        width: 191px;
        text-align: right;
        height: 76px;
    }
    .auto-style62 {
        text-align: right;
        height: 76px;
        width: 121px;
    }
        .auto-style74 {
            height: 76px;
            width: 152px;
        }
        .auto-style64 {
        text-align: center;
        width: 349px;
        height: 76px;
    }
    .auto-style65 {
        height: 76px;
            width: 151px;
        }
    .auto-style56 {
        width: 191px;
        text-align: right;
        height: 73px;
    }
    .auto-style57 {
        text-align: right;
        height: 73px;
        width: 121px;
    }
        .auto-style75 {
            height: 73px;
            width: 152px;
        }
        .auto-style59 {
        text-align: center;
        width: 349px;
        height: 73px;
    }
    .auto-style60 {
        height: 73px;
            width: 151px;
        }
    .auto-style51 {
        width: 191px;
        text-align: right;
        height: 74px;
    }
    .auto-style52 {
        text-align: right;
        height: 74px;
        width: 121px;
    }
        .auto-style76 {
            height: 74px;
            width: 152px;
        }
        .auto-style54 {
        text-align: center;
        width: 349px;
        height: 74px;
    }
    .auto-style55 {
        height: 74px;
            width: 151px;
        }
        .auto-style11 {
            width: 191px;
            text-align: right;
            height: 25px;
        }
        .auto-style12 {
            text-align: right;
            width: 121px;
            height: 25px;
        }
        .auto-style13 {
            width: 152px;
            text-align: center;
            height: 25px;
        }
        .auto-style72 {
            width: 349px;
            text-align: center;
            height: 25px;
        }
        .auto-style15 {
            height: 25px;
            width: 151px;
        }
        .auto-style77 {
            height: 75px;
            width: 152px;
        }
        .auto-style78 {
            width: 191px;
            text-align: right;
            height: 24px;
        }
        .auto-style79 {
            text-align: right;
            width: 121px;
            height: 24px;
        }
        .auto-style80 {
            width: 152px;
            text-align: center;
            height: 24px;
        }
        .auto-style81 {
            width: 349px;
            text-align: center;
            height: 24px;
        }
        .auto-style82 {
            height: 24px;
            width: 151px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style46"></td>
                <td class="auto-style47">Email:</td>
                <td class="auto-style8">
                    <asp:Label ID="lbl_email" runat="server"></asp:Label>
                </td>
                <td class="auto-style71"></td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style66">
                    <asp:CheckBox ID="cb_fname" runat="server" AutoPostBack="True" OnCheckedChanged="cb_fname_CheckedChanged" TextAlign="Left" />
                </td>
                <td class="auto-style67">First Name:</td>
                <td class="auto-style73">
                    <asp:Label ID="lbl_fname" runat="server"></asp:Label>
                </td>
                <td class="auto-style69">
                    <asp:TextBox ID="txt_fname" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style70"></td>
            </tr>
            <tr>
                <td class="auto-style66">
                    <asp:CheckBox ID="cb_lname" runat="server" AutoPostBack="True" OnCheckedChanged="cb_lname_CheckedChanged" TextAlign="Left" />
                </td>
                <td class="auto-style67">Last Name:</td>
                <td class="auto-style73">
                    <asp:Label ID="lbl_lname" runat="server"></asp:Label>
                </td>
                <td class="auto-style69">
                    <asp:TextBox ID="txt_lname" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style70"></td>
            </tr>
            <tr>
                <td class="auto-style51">
                    <asp:CheckBox ID="cb_Address" runat="server" AutoPostBack="True" OnCheckedChanged="cb_yob_CheckedChanged" TextAlign="Left" />
                </td>
                <td class="auto-style52">Address:</td>
                <td class="auto-style76">
                    <asp:Label ID="lbl_Address" runat="server"></asp:Label>
                </td>
                <td class="auto-style54">
                    <asp:TextBox ID="txt_Address" runat="server" OnTextChanged="txt_yob_TextChanged" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">
                    <asp:CheckBox ID="cb_City" runat="server" AutoPostBack="True" OnCheckedChanged="cb_yob_CheckedChanged" TextAlign="Left" />
                </td>
                <td class="auto-style52">City:</td>
                <td class="auto-style76">
                    <asp:Label ID="lbl_City" runat="server"></asp:Label>
                </td>
                <td class="auto-style54">
                    <asp:TextBox ID="txt_City" runat="server" OnTextChanged="txt_yob_TextChanged" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">
                    <asp:CheckBox ID="cb_State" runat="server" AutoPostBack="True" OnCheckedChanged="cb_yob_CheckedChanged" TextAlign="Left" />
                </td>
                <td class="auto-style52">State:</td>
                <td class="auto-style76">
                    <asp:Label ID="lbl_state" runat="server"></asp:Label>
                </td>
                <td class="auto-style54">
                    <asp:TextBox ID="txt_State" runat="server" OnTextChanged="txt_yob_TextChanged" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">
                    <asp:CheckBox ID="cb_Zip" runat="server" AutoPostBack="True" OnCheckedChanged="cb_yob_CheckedChanged" TextAlign="Left" />
                </td>
                <td class="auto-style52">Zip:</td>
                <td class="auto-style76">
                    <asp:Label ID="lbl_zip" runat="server"></asp:Label>
                </td>
                <td class="auto-style54">
                    <asp:TextBox ID="txt_Zip" runat="server" OnTextChanged="txt_yob_TextChanged" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style61">
                    <asp:CheckBox ID="cb_password" runat="server" AutoPostBack="True" OnCheckedChanged="cb_password_CheckedChanged" TextAlign="Left" />
                </td>
                <td class="auto-style62">Password:</td>
                <td class="auto-style74">
                    <asp:Label ID="lbl_password" runat="server"></asp:Label>
                </td>
                <td class="auto-style64">
                    <asp:TextBox ID="txt_password" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style65"></td>
            </tr>
            <tr>
                <td class="auto-style56"></td>
                <td class="auto-style57"></td>
                <td class="auto-style75"></td>
                <td class="auto-style59">
                    <asp:TextBox ID="txt_confirm_password" runat="server" Width="300px"></asp:TextBox>
                </td>
                <td class="auto-style60">
                    <asp:CompareValidator ID="cv_password" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_confirm_password" ErrorMessage="Password Must Match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style78"></td>
                <td class="auto-style79"></td>
                <td class="auto-style80"></td>
                <td class="auto-style81">*INSERT SQL*</td>
                <td class="auto-style82"></td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style72">*INSERT SQL*</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46"></td>
                <td class="auto-style47"></td>
                <td class="auto-style77">
                    <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update Account" />
                </td>
                <td class="auto-style71"></td>
                <td class="auto-style50"></td>
            </tr>
            </table>
        <br />
    </p>
</asp:Content>
