<%@ Page Title="" Language="C#" MasterPageFile="~/otbori.master" AutoEventWireup="true" CodeBehind="atletiko.aspx.cs" Inherits="MyFirstBigSmalProject.atletiko" %>
<asp:Content ID="Content1" ContentPlaceHolderID="zaglavie" runat="server">
    <div class="backgroundzaglaviechelsea">
        <div class="text-center zaglaviepaddingatletiko">
            Атлетико Мадрид
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="imageholder" runat="server">
    <img src="https://sport.bg/userfiles/categoryimages/image_f90a3f4a594f75e15b3dfbe14e5cc9cf.jpg" width="200" height="200"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="prozvi6te" runat="server">
    <ul>
        <li>Клуб Атлетико де Мадрид<hr /></li>
        <li>Дюшекчиите<hr /></li>
        <li>1903<hr /></li>
        <li>Испания<hr /></li>
        <li>Мадрид<hr /></li>
        <li>Енрике Серезо<hr /></li>
        <li>Диего Симеоне<hr /></li>
        <li>Висенте Калдерон<hr /></li>
        <li>54 960<hr /></li>
        <li>Реал Мадрид<hr /></li>
        <li>www.clubatleticodemadrid.com<hr /></li>
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
