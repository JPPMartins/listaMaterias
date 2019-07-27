<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Materias_Excluir.aspx.cs" Inherits="SchoolSystem.Materias_Excluir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlExcluir" Visible="true">
        <h1>Cadastro de Matérias</h1>
        <ul>
            <li>
                <asp:Label Text="Cód Matéria" ID="label3" runat="server"></asp:Label>
                <asp:TextBox ID="tbCodigo" Enabled="false" Text="" CssClass=" disable radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbNome" Enabled="false" Text="" CssClass=" disable radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="tbDescriao" Enabled="false" CssClass="disable radiusInput" runat="server"></asp:TextBox>
            </li>

            <li>
                <asp:Button ID="btnExcluir" OnClick="BtnExcluir_Click" CssClass="btnAdd btn" runat="server" Text="Excluir" />
            </li>
        </ul>
       </asp:Panel>
</asp:Content>
