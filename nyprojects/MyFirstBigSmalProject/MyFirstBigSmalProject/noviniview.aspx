<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="noviniview.aspx.cs" Inherits="MyFirstBigSmalProject.noviniview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel runat="server" BackColor="#cccccc">
        <asp:FormView ID="FormView1" runat="server" ItemType="MyFirstBigSmallProject.Data.Statii"
            SelectMethod="FormView1_GetItem">
            <ItemTemplate>
                <div class="text-center">
                    <div class="text-center">
                        <h1><%#: Item.Title %></h1>
                    </div>
                    <hr />
                    <small class="text-center"><%#: Item.Date %> </small>
                    <div class="text-center">
                        <img src="<%#: Item.Image%>" width="650" height="450" />
                    </div>
                    <br />
                    <br />
                    <%--<asp:Panel runat="server" BackColor="white" HorizontalAlign="Left">--%>
                    <div class="container">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <%# Item.Description %>
                        </div>
                    </div>
                    <%--</asp:Panel>--%>
                </div>
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <asp:LoginView runat="server" ID="Login1">
            <AnonymousTemplate>
                <asp:Panel runat="server">
                    <div class="container">
                        <div class="col-md-3"></div>
                        <div class="col-md-6 text-center">
                            За да напишете вашият коментар трябва първо да се логнете!
                            <br />
                            <asp:Button runat="server" CssClass="text-center button" Text="Логни се" OnClick="Unnamed_Click" />
                        </div>
                    </div>
                </asp:Panel>
            </AnonymousTemplate>
            <LoggedInTemplate>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <asp:UpdatePanel runat="server" ID="updatepanel1">
                                <ContentTemplate>
                                    <asp:TextBox runat="server" ID="UserName" Rows="10" Height="50" TextMode="MultiLine" PlaceHolder="Напишете Вашето Мнение..." MaxLength="500"></asp:TextBox>
                                    <br />
                                    <asp:Button runat="server" ID="public" CssClass="btn btn-success" Text="Публикувай" OnClick="public_Click" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:UpdatePanel runat="server" ID="updatepanel2" UpdateMode="Always">
                                <ContentTemplate>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </LoggedInTemplate>
        </asp:LoginView>
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <br />
                    <div class="text-center">Коментари</div>
                    <asp:ListView ID="ListView1" runat="server" ItemType="MyFirstBigSmallProject.Data.Komentari" SelectMethod="ListView1_GetData">
                        <ItemSeparatorTemplate>
                            <hr />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <div class="komentar">
                                <b>
                                    <%# Item.User %>
                                </b>
                                <br />
                                <small class="small"><%# Item.Date %></small>
                                <br />
                                <br />
                                <%#: Item.Message %>
                            </div>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            Все Още Няма Коментари по Темата.Напишете Първият ...
                        </EmptyDataTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>


















