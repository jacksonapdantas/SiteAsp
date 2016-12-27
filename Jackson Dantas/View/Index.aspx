<%@ Page Title="Home" Language="C#" MasterPageFile="~/View/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Jackson_Dantas.View.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Jumbotron-->
    <div class="jumbotron">
        <div class="container HomePadding">
            <h1>Olá</h1>
            <p>
                Esse site foi desenvolvido no intuito de testar novos conhecimentos adquiridos pelo desenvolvedor do mesmo, sejam eles em back-end ou front-end. Na aba Utilitários ficará disponiveis algumas opções que podem ser útil
            </p>
        </div>
        <div id="push"></div>
    </div>
    <!-- Fim do Jumbotron-->

    <!--Thumbnails redes sociais-->
    <div class="row thumbnailPadding">
        <div class="col-xs-6 col-md-3 sociaisSize">
            <a href="https://www.facebook.com/jackson.dantas.90" class="thumbnail" target="_blank">
                <img src="../img/facebook_icon.png" alt="Facebook">
            </a>
        </div>
        <div class="col-xs-6 col-md-3 sociaisSize">
            <a href="https://br.linkedin.com/in/jackson-dantas-a3380584" class="thumbnail" target="_blank">
                <img src="../img/linkedin-icon.png" alt="linkedin">
            </a>
        </div>
        <div class="col-xs-6 col-md-3 sociaisSize">
            <a href="https://github.com/jacksonapdantas" class="thumbnail" target="_blank">
                <img src="../img/git_icon.png" alt="Git">
            </a>
        </div>
        <div class="col-xs-6 col-md-3 sociaisSize">
            <a href="http://compilerpas.blogspot.com.br/" class="thumbnail" target="_blank">
                <img src="../img/blogger_icon.png" alt="Blogger">
            </a>
        </div>
    </div>
    <!--Fim ThumbNails-->

    <!-- Rodapé-->
    <footer class="footer ">
        <div class="container ">
            <p class="text-muted ">By:<a href="http://jacksondantas.somee.com/" target="_blank">Jackson Dantas</a></p>
        </div>
        <div id="push"></div>
    </footer>

    </div>
    </form>
</asp:Content>
