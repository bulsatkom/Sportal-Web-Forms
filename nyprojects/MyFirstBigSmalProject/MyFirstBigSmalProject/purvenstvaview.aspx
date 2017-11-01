<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="purvenstvaview.aspx.cs" Inherits="MyFirstBigSmalProject.purvenstvaview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="conteiner">
        <div class="row">
            <div class="col-md-4 text-center">
            </div>
            <div class="col-md-4 text-center">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DropDownList1" AutoPostBack="true"
                            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server">
                            <asp:ListItem Text="Класиране">
                            </asp:ListItem>
                            <asp:ListItem Text="Голмайстори">
                            </asp:ListItem>
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Always" runat="server">
                    <ContentTemplate>
                        <asp:ListView ID="ListView1" ItemType="MyFirstBigSmallProject.Data.Purvenstva"
                            SelectMethod="ListView1_GetData" runat="server">
                            <AlternatingItemTemplate>
                                <tr style="background-color: #FFF8DC;">
                                    <td>
                                        <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Item.Name %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Item.Matches %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Item.Wins %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Item.Draws %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Item.Losses %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Item.ScoredGoals %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Item.DefeatGoals %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Item.Points %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                                    <th runat="server">Име</th>
                                                    <th runat="server">Мачове</th>
                                                    <th runat="server">Победи</th>
                                                    <th runat="server">Равенства</th>
                                                    <th runat="server">Загуби</th>
                                                    <th runat="server">Вкарани Голове</th>
                                                    <th runat="server">Допуснати Голове</th>
                                                    <th runat="server">Точки</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <ItemTemplate>
                                <tr style="background-color: #DCDCDC; color: #000000;">
                                    <td>
                                        <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Item.Name %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Item.Matches %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Item.Wins %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Item.Draws %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Item.Losses %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Item.ScoredGoals %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Item.DefeatGoals %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Item.Points %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                                    <tr>
                                        <td>No data was returned.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                        </asp:ListView>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel runat="server" ID="asqde" UpdateMode="Always">
                    <ContentTemplate>
                        <asp:Panel runat="server" Visible="false" ID="golmaistori">Comming Soon</asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
