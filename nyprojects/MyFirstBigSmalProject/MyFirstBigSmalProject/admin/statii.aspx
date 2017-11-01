<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="statii.aspx.cs" Inherits="MyFirstBigSmalProject.admin.statii" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Statiis]"></asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server"></asp:ListView>
</asp:Content>
