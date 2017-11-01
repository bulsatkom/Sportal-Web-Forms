<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="purvenstva.aspx.cs" Inherits="MyFirstBigSmalProject.purvenstva" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="background">
        <div class="purvenstvaLayOut">
            <div class="cherveno">
                <div class="purvenstvoIme">
                    Първенства
                </div>
            </div>
            <div class="Europe">Европа</div>
            <hr class="liniqta" />
            <div class="flex">
                <div class="Angliq"><a href="purvenstvaview?id=angliq" class="AngliqVruzka">Англия</a></div>
                <div class="Bulgaria"><a href="purvenstvaview?id=bulgaria" class="AngliqVruzka">България</a></div>
                <div class="Germaniq"><a href="purvenstvaview?id=germany" class="AngliqVruzka">Германия</a></div>
                <br />
                <div class="Ispaniq"><a href="purvenstvaview?id=spain" class="AngliqVruzka">Испания</a></div>
                <div class="Italy"><a href="purvenstvaview?id=italy" class="AngliqVruzka">Италия</a></div>
                <div class="Portugal"><a href="purvenstvaview?id=portugal" class="AngliqVruzka">Португалия</a></div>
                <br />
                <div class="Russia"><a href="purvenstvaview?id=russia" class="AngliqVruzka">Русия</a></div>
                <div class="Franciq"><a href="purvenstvaview?id=france" class="AngliqVruzka">Франция</a></div>
                <div class="Holland"><a href="purvenstvaview?id=holland" class="AngliqVruzka">Холандия</a></div>
            </div>
            <hr class="liniqta" />
            <div class="EuropeTournaments">Европейски Клубни Турнири</div>
            <hr class="liniqta" />
            <div class="ShampLiga"><a href="purvenstvaview?id=shampliga" class="AngliqVruzka">Шамп Лига</a></div>
            <div class="LigaEvropa"><a href="purvenstvaview?id=ligaevropa" class="AngliqVruzka">Лига Европа</a></div>
            <div class="SuperCup"><a href="purvenstvaview?id=supercup" class="AngliqVruzka">Супер Купа</a></div>
             <hr class="liniqta" />
            <div class="SouthAmerika">Южна Америка</div>
            <hr class="liniqta" />
            <div class="Argentina"><a href="purvenstvaview?id=argentina" class="AngliqVruzka">Аржентина</a></div>
            <div class="Brazil"><a href="purvenstvaview?id=brazil" class="AngliqVruzka">Бразилия</a></div>
            <div class="Uruguay"><a href="purvenstvaview?id=uruguay" class="AngliqVruzka">Уругвай</a></div>
            <hr class="liniqta" />
            <div class="NorthAmerika">Северна Америка</div>
            <hr class="liniqta" />
            <div class="Canada"><a href="purvenstvaview?id=canada" class="AngliqVruzka">Канада</a></div>
            <div class="Mexico"><a href="purvenstvaview?id=mexico" class="AngliqVruzka">Мексико</a></div>
            <div class="USA"><a href="purvenstvaview?id=usa" class="AngliqVruzka">САЩ</a></div>
            <hr class="liniqta" />
        </div>
    </div>
</asp:Content>
