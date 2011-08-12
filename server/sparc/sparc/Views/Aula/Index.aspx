<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<sparc.Models.sparc_Aulas>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Hoje</h2>

    <table>
        <tr>
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
                Categoria
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
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

</asp:Content>

