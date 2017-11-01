<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ebavamseprosto.aspx.cs" Inherits="MyFirstBigSmalProject.ebavamseprosto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Statiis]"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" ItemType="MyFirstBigSmallProject.Data.Statii"
        SelectMethod="ListView1_GetData" InsertMethod="ListView1_InsertItem"
        DeleteMethod="ListView1_DeleteItem" UpdateMethod="ListView1_UpdateItem" 
        InsertItemPosition="LastItem"
        DataKeyNames="Id">
        <LayoutTemplate>
            <table class="gridview" cellspacing="0" rules="all" border="1"
                 id="MainContent_GridViewCategories" style="border-collapse: collapse;">
                <tbody>
                    <tr>
                        <th scope="col">
                            <asp:LinkButton Text="Caterory Name" runat="server" ID="LinkButtonSortByCategory" CommandName="Sort" CommandArgument="Name" />
                        </th>
                        <th scope="col">Action</th>
                    </tr>
                    <asp:PlaceHolder runat="server" ID="itemPlaceHolder"></asp:PlaceHolder>
                    <tr>
                        <td colspan="2">
                            <asp:DataPager runat="server" ID="DataPagerCategories" PageSize="5">
                                <Fields>
                                    <asp:NumericPagerField />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </tbody>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%#: Item.Title %></td>
                <td><%#: Item.Description %></td>
                <td><%#: Item.Image %></td>
                <td><%#: Item.Date %></td>
                <td>
                    <asp:LinkButton runat="server" ID="LinkButtonEdit" Text="Edit" CommandName="Edit" />
                    <asp:LinkButton runat="server" ID="LinkButtonDelete" Text="Delete" CommandName="Delete" />
                </td>
            </tr>
        </ItemTemplate>
        <EditItemTemplate>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="TextBoxName" Text="<%#: BindItem.Title %>" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox1" Text="<%#: BindItem.Description %>" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox2" Text="<%#: BindItem.Image %>" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox3" Text="<%#: BindItem.Date %>" />
                </td>
                <td>
                    <asp:LinkButton runat="server" ID="LinkButtonEdit" Text="Save" CommandName="Update" />
                    <asp:LinkButton runat="server" ID="LinkButtonDelete" Text="Cancel" CommandName="Cancel" />
                </td>
            </tr>
        </EditItemTemplate>
        <InsertItemTemplate>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="TextBoxName" Text="<%#: BindItem.Title %>" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox4" TextMode="MultiLine" Text="<%# BindItem.Description %>" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox5" Text="<%#: BindItem.Image %>" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox6" Text="<%#: BindItem.Date %>" />
                </td>
                <td>
                    <asp:LinkButton runat="server" ID="LinkButtonEdit" Text="Insert" CommandName="Insert" />
                    <asp:LinkButton runat="server" ID="LinkButtonDelete" Text="Cancel" CommandName="Cancel" />
                </td>
            </tr>
        </InsertItemTemplate>
    </asp:ListView>
    </div>
    </form>
</body>
</html>
