<%@ Page Title="" Language="C#" MasterPageFile="~/otbori.master" AutoEventWireup="true" CodeBehind="levski.aspx.cs" Inherits="MyFirstBigSmalProject.levski" %>
<asp:Content runat="server" ContentPlaceHolderID="imageholder">
    <img src="http://bgclubs.eu/images/logos/oldlogos/10103/1.png" width="200" height="200"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="zaglavie"><div class="backgroundzaglavienapoli">
    <div class="text-center zaglaviepaddingchelsea">Левски</div></div>

</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="prozvi6te">
    <ul>
        <li>ПФК Левски София<hr /></li>
        <li>Сините<hr /></li>
        <li>1914<hr /></li>
        <li>България<hr /></li>
        <li>София<hr /></li>
        <li>Спас Русев<hr /></li>
        <li>Делио Роси<hr /></li>
        <li>Георги Аспарухов<hr /></li>
        <li>22 000<hr /></li>
        <li>Ми Той Умрял Ма, Славия<hr /></li>
        <li>www.levski.bg<hr /></li>
    </ul>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
                                <asp:TextBox runat="server" ID="UserName"
                                    Rows="10" Height="50" TextMode="MultiLine"
                                    PlaceHolder="Напишете Вашето Мнение..." MaxLength="500"></asp:TextBox>
                                <br />
                                <asp:Button runat="server" ID="public" CssClass="btn btn-success"
                                    Text="Публикувай" OnClick="public_Click" />
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
                <asp:UpdatePanel runat="server" ID="updatepanel1" UpdateMode="Always">
                    <ContentTemplate>
                        <asp:ListView ID="ListView1" runat="server"
                            ItemType="MyFirstBigSmallProject.Data.KomentariForTeams"
                            SelectMethod="ListView1_GetData1">
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
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
</asp:Content>
