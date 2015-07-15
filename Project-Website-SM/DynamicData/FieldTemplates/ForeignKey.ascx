<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="Project_Website_SM.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

