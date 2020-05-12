<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Crud MVC</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <style>
            .fakeimg {
                height: 200px;
                background: #aaa;
            }
            .footer {
                background-color: #f2f2f2;
                padding: 25px;
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                text-align: center;
            }
            .centralizarTexto{
                height: 200px;
            }
        </style>
    </head>
    <body>
        <% String raiz = request.getContextPath();%>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="<%=raiz%>/index.jsp">Crud MVC</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="<%=raiz%>/View/Usuario/listarUsuario.jsp">Usuários</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>    
                </ul>
            </div>  
        </nav>
        <div class="container">

