<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="machove.aspx.cs" Inherits="MyFirstBigSmalProject.machove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server" UpdateMode="Always">
        <ContentTemplate>
            Изберете за кой ден искате да разгледате програмата:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="днес">
                </asp:ListItem>
                <asp:ListItem Text="утре">
                </asp:ListItem>
            </asp:DropDownList>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:UpdatePanel runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label runat="server" ID="dnes" Visible="true">
                <asp:ListView ID="ListView1" runat="server" ItemType="MyFirstBigSmallProject.Data.Machove"
                     SelectMethod="ListView1_GetData">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFF8DC;">
                            <td>
                                <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Item.Timeofmatch %>' />
                            </td>
                            <td>
                                <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Item.HomeTeam %>' />
                            </td>
                            <td>
                                <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Item.AwayTeam %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                            <th runat="server">Час</th>
                                            <th runat="server">Домакин</th>
                                            <th runat="server">Гост</th>
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
                                <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Item.Timeofmatch %>' />
                            </td>
                            <td>
                                <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Item.HomeTeam %>' />
                            </td>
                            <td>
                                <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Item.AwayTeam %>' />
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
            </asp:Label>
            <asp:Label runat="server" ID="utre" Visible="false">
                 <asp:ListView ID="ListView2" runat="server" ItemType="MyFirstBigSmallProject.Data.Machove" SelectMethod="ListView2_GetData">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFF8DC;">
                            <td>
                                <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Item.Timeofmatch %>' />
                            </td>
                            <td>
                                <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Item.HomeTeam %>' />
                            </td>
                            <td>
                                <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Item.AwayTeam %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                            <th runat="server">Час</th>
                                            <th runat="server">Домакин</th>
                                            <th runat="server">Гост</th>
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
                                <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Item.Timeofmatch %>' />
                            </td>
                            <td>
                                <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Item.HomeTeam %>' />
                            </td>
                            <td>
                                <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Item.AwayTeam %>' />
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
            </asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
