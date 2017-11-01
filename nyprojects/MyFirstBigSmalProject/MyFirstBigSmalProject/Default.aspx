<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyFirstBigSmalProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>
    <br />

    <asp:ListView ID="ListView1" runat="server" ItemType="MyFirstBigSmallProject.Data.Statii" SelectMethod="ListView1_GetData">
        <LayoutTemplate>
            <div class="conteiner" id="itemPlaceholder" runat="server">
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="row">
                <div class="col-md-6 border">
                    <div class="adavidime">
                        <a href="noviniview?id=<%#: Item.Id %>">
                            <image width="550" height="300" src="<%# Item.Image %>" href="noviniview?id=<%#: Item.Id %>"><br /><a href="noviniview?id=<%#: Item.Id %>"><%#: Item.Title %></a></image>
                        </a>
                    </div>
                </div>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <div class="col-md-6">
                <div class="adavidime">
                    <a href="noviniview?id=<%#: Item.Id %>">
                        <image width="550" height="300" src="<%# Item.Image %>" href="noviniview?id=<%#: Item.Id %>"><br /><a href="noviniview?id=<%#: Item.Id %>"><%#: Item.Title %></a></image>
                    </a>
                </div>
                <br />
                <br />
            </div>
            </div>
        </AlternatingItemTemplate>
    </asp:ListView>
    <div class="conteiner">
        <div class="row">
            <div class="text-center">Последните Резултати</div>
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <asp:ListView ID="ListView2" runat="server"
                    ItemType="MyFirstBigSmallProject.Data.Machove"
                    SelectMethod="ListView2_GetData">
                    <ItemTemplate>
                        <div class="row otboriborder">
                            <div class="col-md-5"><%# Item.HomeTeam %></div>
                            <div class="col-md-2"><%# Item.Result %></div>
                            <div class="col-md-5"><%# Item.AwayTeam %></div>
                        </div>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <div class="row otboriborder1">
                            <div class="col-md-5"><%# Item.HomeTeam %></div>
                            <div class="col-md-2"><%# Item.Result %></div>
                            <div class="col-md-5"><%# Item.AwayTeam %></div>
                        </div>
                    </AlternatingItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    <br />
    <br />
    <div class="conteiner">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 text-center">
                Още Новини
            </div>
            <br />
        </div>
        <div class="border4eto">
        <div class="row">
            <br />
            <asp:ListView ID="ListView3" runat="server" ItemType="MyFirstBigSmallProject.Data.Statii"
                 SelectMethod="ListView3_GetData">
                <ItemTemplate>
                    <div class="col-md-4">
                        <a href="noviniview?id=<%#: Item.Id %>">
                        <image width="300" height="200" src="<%# Item.Image %>" href="noviniview?id=<%#: Item.Id %>"><br /><a href="noviniview?id=<%#: Item.Id %>"><%#: Item.Title %></a></image>
                    </a>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
            <hr />
        <div class="row">
            <asp:ListView ID="ListView4" runat="server" ItemType="MyFirstBigSmallProject.Data.Statii"
                 SelectMethod="ListView4_GetData">
                <ItemTemplate>
                    <div class="col-md-4 ">
                        <a href="noviniview?id=<%#: Item.Id %>">
                        <image width="300" height="200" src="<%# Item.Image %>" href="noviniview?id=<%#: Item.Id %>"><br /><a href="noviniview?id=<%#: Item.Id %>"><%#: Item.Title %></a></image>
                    </a>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            </div>
        </div>
    </div>
</asp:Content>
