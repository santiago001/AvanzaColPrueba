<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="slAvanzaPruebaSantiagoMartinez.Default" MasterPageFile="~/Template.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <title>Nuevo Empleado</title>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderId="contenido" >
<form runat="server" method="post"  id="form">
    <p>
        <asp:Label runat="server" >Nombre:</asp:Label>
        <asp:TextBox ID="nombre" runat="server" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="nombre" ErrorMessage="El campo nombre es requerido" CssClass="error"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label runat="server" >Apellido:</asp:Label>
        <asp:TextBox ID="apellido" runat="server" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="apellido" ErrorMessage="El campo apellido es requerido" CssClass="error"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label runat="server" >Documento:</asp:Label>
        <asp:TextBox ID="documento" runat="server" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="documento" ErrorMessage="El campo documento es requerido"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label runat="server">Centro de Costo:</asp:Label>
        <asp:DropDownList ID="costo" runat="server" CssClass="form-control" >
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="costo" InitialValue="0" ErrorMessage="Debe seleccionar una opción en el campo centro de costo" CssClass="error"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label runat="server">Estado:</asp:Label>
        <asp:CheckBox id="estado" runat="server" AutoPostBack="False" Text="True" Checked="false" />
    </p>
    
<hr />
<asp:Button ID="enviar_form" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="ProcesarFormulario"/>
</form>
</asp:Content>