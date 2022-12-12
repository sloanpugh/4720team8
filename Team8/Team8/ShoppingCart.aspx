<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Team8.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="lavaLampWithImage">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbl_Service" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" Text="Service"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_Price" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" Text="Price"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbl_StratDisclaimer" runat="server" Font-Italic="True" Font-Size="XX-Small" ForeColor="#000066" Text="*All Prices based on 48 hour Consultation Time Frame"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cb_BSConsult" runat="server" TextAlign="Left" />
            </td>
            <td>
                <asp:Label ID="lbl_BusinessStrat" runat="server" Font-Size="Medium" Text="Business Strategy Consultation"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_BSPrice" runat="server" Font-Size="Smaller" Text="$ 4000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cb_ITConsult" runat="server" TextAlign="Left" />
            </td>
            <td>
                <asp:Label ID="lbl_ITStrategy" runat="server" Font-Size="Medium" Text="Information Technology Strategy Consultation"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_ITStratPrice" runat="server" Font-Size="Smaller" Text="$ 2000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cb_MSConsult" runat="server" TextAlign="Left" />
            </td>
            <td>
                <asp:Label ID="lbl_MarketingStrat" runat="server" Font-Size="Medium" Text="Marketing Strategy Consultation"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_MSPrice" runat="server" Font-Size="Smaller" Text="$ 2000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="cb_MSServe" runat="server" TextAlign="Left" />
            </td>
            <td>
                <asp:Label ID="lbl_MSServices" runat="server" Font-Size="Medium" Text="Managed Services"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_MSServPrice" runat="server" Font-Size="Smaller" Text="$ 1000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbl_MSDisclaimer" runat="server" Font-Italic="True" Font-Size="XX-Small" ForeColor="#000066" Text="*Managed Services Billed Monthly"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_CartSubmit" runat="server" Text="Submit Request" Width="325px" OnClick="btn_CartSubmit_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>