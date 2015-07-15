<%@ Page Title="TableInsert" Language="C#" MasterPageFile="~/Main.Master" CodeBehind="Insert.aspx.cs" Inherits="Project_Website_SM.Tables.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="Project_Website_SM.Table" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Table</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Id" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="First_Name" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Last_Name" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="User_Name" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Email_Address" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Password" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="State_Provience" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Country" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
