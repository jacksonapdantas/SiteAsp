<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.Master" AutoEventWireup="true" CodeBehind="VerificarOperadora.aspx.cs" Inherits="Jackson_Dantas.View.VerificarOperadora" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Jumbotron-->
    <div class="jumbotron align_text">
        <div class="container">
            <h2>Verificar Operadora</h2>
        </div>
        <div id="push"></div>
    </div>
    <!-- Fim do Jumbotron-->

    <!--Sessão para Verifica Operadora-->
    <section>
        <div class="container align_text">
            <form>

                <div class="row">
                    <div class="col-lg-4">
                    </div>
                    <div class="col-lg-4 centro">
                        <div class="input-group">

                            <input id="telefone" type="text" class="form-control" placeholder="Digite o número do celular!">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button" onclick="teste()">Pesquisar</button>
                            </span>
                        </div>
                        <!-- /input-group -->
                    </div>
                    <!-- /.col-lg-6 -->

                </div>

                <div class="row">
                    <div class="col-lg-4">
                    </div>
                    <div class="col-lg-4 centro">
                        <br />
                        <br />
                        <br />
                        <p id="pResposta"></p>
                    </div>
                </div>
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
