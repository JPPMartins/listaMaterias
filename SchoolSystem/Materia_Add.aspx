﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Materia_Add.aspx.cs" Inherits="SchoolSystem.Materia_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlCadastro" Visible="true">
        <h1>Cadastro de Matérias</h1>
        <ul>
            <li>
                <asp:Label Text="Nome" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbNome" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="tbDescriao" MaxLength="1" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Data de Cadastro"></asp:Label>
                <asp:TextBox ID="tbDataCadastro"  Text="" CssClass="disable radiusInput" Enabled="false" runat="server"></asp:TextBox>
            </li>

            <li>
                <asp:Button ID="btnCadastrar" OnClientClick="return function_()" OnClick="BtnCadastrar_Click" CssClass="btnAdd btn" runat="server"   Text="Cadastrar" />
            </li>
        </ul>
        <script>
            function function_() {
                if (jQuery("#tbNome").val() == '') {
                    alert("Campo Obrigatório");
                    return false;
                } else {
                    return true;
                }
                
    }
        </script>
    </asp:Panel>
</asp:Content>
