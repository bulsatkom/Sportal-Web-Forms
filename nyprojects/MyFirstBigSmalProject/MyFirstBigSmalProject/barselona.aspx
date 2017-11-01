<%@ Page Title="" Language="C#" MasterPageFile="~/otbori.master" AutoEventWireup="true" CodeBehind="barselona.aspx.cs" Inherits="MyFirstBigSmalProject.barselona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="zaglavie" runat="server">
    <div class="backgroundzaglaviechelsea"><div class="text-center zaglaviepaddingchelsea">Барселона</div></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageholder" runat="server">
    <img src="http://2.bp.blogspot.com/-AjfAudNVzaY/U_aAa1P_7-I/AAAAAAAADtY/dp4aPJOSTBA/s1600/Logo%2BBarcelona%2BFC.png" width="200" height="200"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="prozvi6te" runat="server">
    <ul>
        <li>Барселона ФК<hr /></li>
        <li>Каталунците<hr /></li>
        <li>1899<hr /></li>
        <li>Испания<hr /></li>
        <li>Барселона<hr /></li>
        <li>Хосеп Мария Бартомеу<hr /></li>
        <li>Ернесто Валверде<hr /></li>
        <li>Камп Ноу<hr /></li>
        <li>99 787<hr /></li>
        <li>Реал Мадрид, Еспаньол<hr /></li>
        <li>www.fcbarcelona.com<hr /></li>
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
