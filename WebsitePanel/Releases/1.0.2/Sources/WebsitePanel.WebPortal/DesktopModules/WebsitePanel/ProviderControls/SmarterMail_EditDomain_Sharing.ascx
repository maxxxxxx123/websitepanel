<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SmarterMail_EditDomain_Sharing.ascx.cs" Inherits="WebsitePanel.Portal.ProviderControls.SmaterMail_EditDomain_Sharing" %>
<table width="100%">
    <tr>
        <td style="width:150px;" align="right"><asp:Label runat="server" meta:resourcekey="cbGlobalAddressList"/></td>
        <td><asp:CheckBox runat="server" ID="cbGlobalAddressList"  /></td>        
    </tr>
    <tr>
        <td align="right"><asp:Label ID="Label1" runat="server" meta:resourcekey="cbSharedCalendars" /></td>
        <td><asp:CheckBox runat="server" ID="cbSharedCalendars" /></td>
    </tr>
    <tr>
        <td align="right"><asp:Label ID="Label2" runat="server" meta:resourcekey="cbSharedContacts" /></td>
        <td><asp:CheckBox runat="server" ID="cbSharedContacts" /></td>        
    </tr>
    <tr>
        <td align="right"><asp:Label ID="Label3" runat="server" meta:resourcekey="cbSharedFolders"/></td>
        <td><asp:CheckBox runat="server" ID="cbSharedFolders" /></td>
    </tr>
    <tr>
        <td align="right"><asp:Label ID="Label4" runat="server" meta:resourcekey="cbSharedNotes" /></td>
        <td><asp:CheckBox runat="server" ID="cbSharedNotes"  /></td>        
    </tr>
    <tr>
        <td align="right"><asp:Label ID="Label5" runat="server" meta:resourcekey="cbSharedTasks" /></td>
        <td><asp:CheckBox runat="server" ID="cbSharedTasks"  /></td>
    </tr>
</table>