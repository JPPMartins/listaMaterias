<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Materia_Edit.aspx.cs" Inherits="SchoolSystem.Materia_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
     <asp:Panel runat="server" ID="pnlUpdate" Visible="true">
        <h1>Atualizar de Matérias</h1>
        <ul>
            <li>
                <asp:Label Text="Cód. Matéria" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbCodMateria" CssClass="radiusInput"  runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
                <asp:TextBox ID="tbNome" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label3" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="tbDescriao"  Text="" CssClass=" radiusInput"  runat="server"></asp:TextBox>
            </li>

            <li>
                <asp:Button ID="BtnAtualizar" OnClientClick=" return function_()" OnClick="BtnAtualizar_Click" CssClass="btnAdd btn" runat="server"  Text="Atualizar" />
            </li>
        </ul>
        <script>
            function function_() {
                jQuery("#Content1").load("Materias_Add.aspx", sucessCallBack);
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
