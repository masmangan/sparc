<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<sparc.Models.sparc_Aulas>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ViewUserControl1
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>ViewUserControl1</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Data
            </th>
            <th>
                Horário
            </th>
            <th>
                Atividade
            </th>
            <th>
                Turma
            </th>
            <th>
                Disciplina
            </th>
            <th>
                Professor
            </th>
            <th>
                UserId
            </th>
            <th>
                AulaId
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.Data }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.Data })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.Data })%>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Data) %>
            </td>
            <td>
                <%: item.Horário %>
            </td>
            <td>
                <%: item.Atividade %>
            </td>
            <td>
                <%: item.Turma %>
            </td>
            <td>
                <%: item.Disciplina %>
            </td>
            <td>
                <%: item.Professor %>
            </td>
            <td>
                <%: item.UserId %>
            </td>
            <td>
                <%: item.AulaId %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

