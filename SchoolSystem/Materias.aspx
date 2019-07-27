<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Materias.aspx.cs" Inherits="SchoolSystem.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="server">


    <asp:Panel runat="server" ID="pnlShowData" Visible="true">
        <h1>Todas as Matérias Cadastradas</h1>
        <asp:GridView ID="gwDados" CssClass="table" runat="server" EmptyDataText="Não Existem Matérias Cadastradas..." AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="idMateria" HeaderText="Código" />
                <asp:BoundField DataField="nome" HeaderText="Nome" />
                <asp:BoundField DataField="descricao" HeaderText="Descrição" />
                <asp:BoundField DataField="dataCadastro" HeaderText="Data de Cadastro" />
                <asp:HyperLinkField DataNavigateUrlFormatString="Materia_Edit.aspx?id={0}" Text="Editar" DataNavigateUrlFields="idMateria" HeaderText="Editar" />
                <asp:HyperLinkField DataNavigateUrlFormatString="Materias_Excluir.aspx?id={0}" Text="Excluir" DataNavigateUrlFields="idMateria" HeaderText="Excluir" />
            </Columns>
        </asp:GridView>
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlSearch" Visible="true">
        <h1>Pesquisa de Matérias</h1>

        <fieldset>
            <legend>Opções de Pesquisa</legend>
            <asp:RadioButtonList ID="rlbTypeSearch" CssClass="rlbTypeSearch" runat="server" RepeatLayout="UnorderedList">
                <asp:ListItem Value="ID" Selected="True">Código</asp:ListItem>
                <asp:ListItem>Nome</asp:ListItem>
                <asp:ListItem Value="Descricao">Descrição</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>
        <ul>
            <li>
                <asp:Label Text="ID" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqId" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label9" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqNome" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label10" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="tbPesqDescricao" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
               <asp:Button ID="btnSearch" CssClass="btn btnSearch" runat="server" Text="Pesquisar" OnClick="BtnSearch_Click" />
               </li>
                <li> 
                <asp:Button ID="btnSearchErase" CssClass="btn btnSearch" runat="server" Text="Limpar" OnClick="BtnSearchErase_Click" />
            </li>
        </ul>
    </asp:Panel>


</asp:Content>
