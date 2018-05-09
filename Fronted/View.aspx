<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="slAvanzaPruebaSantiagoMartinez.view" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
        <title>Empleados existentes</title>
</asp:Content>
<asp:Content ContentPlaceHolderID="contenido" runat="server">
    <table class="table table-bordered">
    <thead>
        <tr>
            <th>Id empleado</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Documento</th>
            <th>Centro Costo</th>
            <th>Estado</th>
            <th>Acciones</th>

        </tr>
    </thead>
    <tbody>
        <%
            while (getRegistro().Read())
            {
                %>
                <tr>
                    <td><%=getRegistro()["IdEmpleado"] %></td>
                    <td><%=getRegistro()["NombreEmpleado"] %></td>
                    <td><%=getRegistro()["ApellidoEmpleado"] %></td>
                    <td><%=getRegistro()["Documento"] %></td>
                    <td><%=getRegistro()["NombreCentroCosto"] %></td>
                    <td><%=getRegistro()["Estado"] %></td>
                    <td>
                        <a href="Edit.aspx?id=<%=getRegistro()["IdEmpleado"] %>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                        <a href="javascript:void(0);" onclick="eliminar('Delete.aspx?id=<%=getRegistro()["IdEmpleado"] %>','<%=getRegistro()["NombreEmpleado"] %>','<%=getRegistro()["ApellidoEmpleado"] %>');"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                    </td>
                </tr>
                <%
            }
        %>
    </tbody>
</table>
</asp:Content>
