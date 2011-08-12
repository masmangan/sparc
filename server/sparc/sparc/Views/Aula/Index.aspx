﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<sparc.Models.sparc_Aulas>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                horario
            </th>
            <th>
                atividade
            </th>
            <th>
                turma
            </th>
            <th>
                disciplina
            </th>
            <th>
                categoria
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.horario }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.horario })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.horario })%>
            </td>
            <td>
                <%: item.horario %>
            </td>
            <td>
                <%: item.atividade %>
            </td>
            <td>
                <%: item.turma %>
            </td>
            <td>
                <%: item.disciplina %>
            </td>
            <td>
                <%: item.categoria %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

