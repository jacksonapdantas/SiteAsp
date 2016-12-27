<%@ Page Title="GerarCpf" Language="C#" MasterPageFile="~/View/MasterPage.Master" AutoEventWireup="true" CodeBehind="GerarCpf.aspx.cs" Inherits="Jackson_Dantas.View.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Jumbotron-->
    <div class="jumbotron align_text">
        <div class="container">
            <h2>Gerador de CPF</h2>
        </div>
        <div id="push"></div>
    </div>
    <!-- Fim do Jumbotron-->

    <!--Sessão para gera CPF-->
    <section>
        <div class="container align_text">
            <form>
                <textarea id="textarea" rows="100" cols="1" class="textarea-size"></textarea>
                <div class="row">
                    <div class="col-lg-4">
                    </div>
                    <div class="col-lg-4 centro">
                        <div class="input-group">
                            <input id="quantidade_cpf" type="text" class="form-control" placeholder="Quantos CPFs?">
                            <span class="input-group-btn">
                                <button id="copiar" class="btn btn-default" type="button" onclick="copiar_texto()">Copiar</button>
                            </span>
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button" onclick="gerarCPF()">Gerar</button>
                            </span>
                        </div>
                        <!-- /input-group -->
                    </div>
                    <div class="col-lg-4">
                    </div>
                    <!-- /.col-lg-6 -->
                </div>
                <!-- /.row -->
            </form>
        </div>


    </section>

    <!-- Rodapé-->
    <footer class="footer ">
        <div class="container ">
            <p class="text-muted ">By:<a href="http://jacksondantas.somee.com" target="_blank">Jackson Dantas</a></p>
        </div>
        <div id="push"></div>
    </footer>
</asp:Content>
