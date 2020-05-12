<%@include file="../../header.jsp" %>

<h2 class="text-center">Listar usuários</h2>
<div class="row">
    <div class="col-md-6 offset-md-3">
        <table class="table table-dark  table-striped">
            <thead>
                <tr>
                    <th>Usuario</th>
                    <th>Editar/Deletar</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Thiago Xavier</td>
                    <td><a class="btn btn-outline-warning">Editar</a> |
                        <a class="btn btn-outline-danger">Excluir</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Modal Heading</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <%@include file="editausuario.jsp" %>
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<%@include file="../../footer.jsp" %>


