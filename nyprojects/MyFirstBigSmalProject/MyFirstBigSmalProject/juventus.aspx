﻿<%@ Page Title="" Language="C#" MasterPageFile="~/otbori.master" AutoEventWireup="true" CodeBehind="juventus.aspx.cs" Inherits="MyFirstBigSmalProject.juventus" %>
<asp:Content runat="server" ContentPlaceHolderID="imageholder">
    <img src="http://mach.bg/uploads/media/team/0001/01/thumb_56_team_gallery_small.png" width="200" height="200"/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="zaglavie"><div class="backgroundzaglaviejuventus">
    <div class="text-center zaglaviepaddingjuventus">Ювентус</div></div></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="prozvi6te">
    <ul>
        <li>ФК Ювентус<hr /></li>
        <li>Старата Госпожа<hr /></li>
        <li>1897<hr /></li>
        <li>Италия<hr /></li>
        <li>Торино<hr /></li>
        <li>Андреа Аниели<hr /></li>
        <li>Максимо Алегри<hr /></li>
        <li>Ювентус Стейдиъм<hr /></li>
        <li>41 507<hr /></li>
        <li>Торино, Интер, Милан<hr /></li>
        <li>www.juventus.com/it/<hr /></li>
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
