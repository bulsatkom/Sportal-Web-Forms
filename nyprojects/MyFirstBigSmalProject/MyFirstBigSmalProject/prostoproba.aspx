<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prostoproba.aspx.cs" Inherits="MyFirstBigSmalProject.prostoproba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Machoves]"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Eval("HomeTeam") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Eval("AwayTeam") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Eval("Timeofmatch") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="HomeTeamTextBox" runat="server" Text='<%# Bind("HomeTeam") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AwayTeamTextBox" runat="server" Text='<%# Bind("AwayTeam") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TimeofmatchTextBox" runat="server" Text='<%# Bind("Timeofmatch") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="HomeTeamTextBox" runat="server" Text='<%# Bind("HomeTeam") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AwayTeamTextBox" runat="server" Text='<%# Bind("AwayTeam") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TimeofmatchTextBox" runat="server" Text='<%# Bind("Timeofmatch") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Eval("HomeTeam") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Eval("AwayTeam") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Eval("Timeofmatch") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Id</th>
                                    <th runat="server">HomeTeam</th>
                                    <th runat="server">AwayTeam</th>
                                    <th runat="server">Date</th>
                                    <th runat="server">Timeofmatch</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="HomeTeamLabel" runat="server" Text='<%# Eval("HomeTeam") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AwayTeamLabel" runat="server" Text='<%# Eval("AwayTeam") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TimeofmatchLabel" runat="server" Text='<%# Eval("Timeofmatch") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>--%>
            <div class="container">
                <div class="featured-block">
                    <!-- Example row of columns -->
                    <div class="row">
                        <div class="col-md-3">
                            <div class="block">
                                <div class="thumbnail">
                                    <img src="http://www.winner.bg/statics/uploads/articles/2017-09//big/128773.jpg" alt="" class="img-responsive" />
                                    <div class="caption">
                                        <h1>Lorem ipsum</h1>
                                        <p>Cuibstui ipsum dolor sit amet, consectetuer adipiscing eli onec odio cuisque volutpat mattis</p>
                                        <a class="btn" href="#">more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="block">
                                <div class="thumbnail">
                                    <img src="http://www.winner.bg/statics/uploads/articles/2017-09//big/128851.jpg" alt="" class="img-responsive" />
                                    <div class="caption">
                                        <h1>Fusce lacinia arcu</h1>
                                        <p>Pellentesque fermentum dolor. Aliquam quam lectus, facilisis ctor, ultrices ut, element</p>
                                        <a class="btn" href="#">more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="block">
                                <div class="thumbnail">
                                    <img src="http://www.winner.bg/statics/uploads/articles/2017-10//big/128948.jpg" alt="" class="img-responsive" />
                                    <div class="caption">
                                        <h1>Morbiin semquis</h1>
                                        <p>Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean</p>
                                        <a class="btn" href="#">more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="block">
                                <div class="thumbnail">
                                    <img src="http://www.winner.bg/statics/uploads/articles/2017-10//big/128943.jpg" alt="" class="img-responsive" />
                                    <div class="caption">
                                        <h1>Aliquam lectus</h1>
                                        <p>Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, mod in, pharetra ultrici</p>
                                        <a class="btn" href="#">more</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ruler"></div>
            </div>
        </div>
    </form>
</body>
</html>
