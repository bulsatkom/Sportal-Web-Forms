<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="novini.aspx.cs" Inherits="MyFirstBigSmalProject.novini" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="statiq">
        <asp:ListView ID="ListView1" runat="server" ItemType="MyFirstBigSmallProject.Data.Statii"
            SelectMethod="ListView1_GetData">
            <ItemSeparatorTemplate>
                <br />
                <hr />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <div class="container">
                    <div class="bg-primary">
                        <table>
                            <tr>
                                <td>
                                    <img src="<%# Item.Image %>" width="300" height="200" />
                                </td>
                                <td>
                                    <a href="noviniview?id=<%#: Item.Id %>"><%# Item.Title %></a>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>
