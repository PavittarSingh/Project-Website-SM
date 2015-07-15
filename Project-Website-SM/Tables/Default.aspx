<%@ Page Title="TableList" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Default.aspx.cs" Inherits="Project_Website_SM.Tables.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="Menu1">
    <h2></h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="Project_Website_SM.Table"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Tables
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="First_Name" CommandName="Sort" CommandArgument="First_Name" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Last_Name" CommandName="Sort" CommandArgument="Last_Name" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="User_Name" CommandName="Sort" CommandArgument="User_Name" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Email_Address" CommandName="Sort" CommandArgument="Email_Address" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Password" CommandName="Sort" CommandArgument="Password" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="State_Provience" CommandName="Sort" CommandArgument="State_Provience" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Country" CommandName="Sort" CommandArgument="Country" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="First_Name" ID="First_Name" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Last_Name" ID="Last_Name" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="User_Name" ID="User_Name" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Email_Address" ID="Email_Address" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Password" ID="Password" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="State_Provience" ID="State_Provience" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Country" ID="Country" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Tables/Details", Item.Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Tables/Edit", Item.Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Tables/Delete", Item.Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
    </div>
</asp:Content>

