<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SpaceViewQuotas.ascx.cs" Inherits="WebsitePanel.Portal.SpaceViewQuotas" %>
<%@ Import Namespace="WebsitePanel.Portal" %>
<%@ Register Src="SpaceDetailsHeaderControl.ascx" TagName="SpaceDetailsHeaderControl" TagPrefix="wsp" %>
<%@ Register Src="SpaceQuotasControl.ascx" TagName="SpaceQuotasControl" TagPrefix="wsp" %>
<%@ Register TagPrefix="wsp" TagName="CollapsiblePanel" Src="UserControls/CollapsiblePanel.ascx" %>

<div class="FormBody">
    <wsp:SpaceDetailsHeaderControl id="spaceDetailsHeaderControl" runat="server">
    </wsp:SpaceDetailsHeaderControl>

    <wsp:CollapsiblePanel id="secAddons" runat="server"
        TargetControlID="AddonsPanel" meta:resourcekey="secAddons" Text="Space Add-Ons">
    </wsp:CollapsiblePanel>
    <asp:Panel ID="AddonsPanel" runat="server" Height="0" style="overflow:hidden;">
        <asp:GridView ID="gvAddons" runat="server" AutoGenerateColumns="False"
                CssSelectorClass="NormalGridView"
                EmptyDataText="gvAddons">
            <Columns>
                <asp:TemplateField SortExpression="PlanName" HeaderText="gvAddonsName">
	                <ItemStyle Width="100%"></ItemStyle>
	                <ItemTemplate>
		                <b><%# Eval("PlanName") %></b><br />
		                <%# Eval("PlanDescription") %>
	                </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Quantity" HeaderText="gvAddonsQuantity" />
                <asp:BoundField SortExpression="PurchaseDate" DataField="PurchaseDate" HeaderText="gvAddonsCreationDate" DataFormatString="{0:d}" >
                    <ItemStyle Wrap="False" />
                    <HeaderStyle Wrap="False" />
                </asp:BoundField>
				<asp:TemplateField SortExpression="StatusID" HeaderText="gvAddonsStatus">
					<ItemTemplate>
						 <%# PanelFormatter.GetPackageStatusName((int)Eval("StatusID"))%>
					</ItemTemplate>
				</asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
    </asp:Panel>

    <wsp:CollapsiblePanel id="secQuotas" runat="server"
        TargetControlID="QuotasPanel" meta:resourcekey="secQuotas" Text="Space Quotas">
    </wsp:CollapsiblePanel>
    <asp:Panel ID="QuotasPanel" runat="server" Height="0" style="overflow:hidden;">
        <wsp:SpaceQuotasControl id="packagesQuotas" runat="server">
        </wsp:SpaceQuotasControl>
    </asp:Panel>
</div>

<div class="FormFooter">
    <asp:Button ID="btnCancel" runat="server" meta:resourcekey="btnCancel" Text="Cancel" CausesValidation="false" CssClass="Button1" OnClick="btnCancel_Click"/>
</div>