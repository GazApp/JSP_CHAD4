<!doctype html>
<html lang="es">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <title>Confirmation-Student</title>

        <style>
            h2 { color: #FF0000; }
        </style>
    </head>

    <body>

        <div class="container">
            <h3 align="center">Estudiante Cofirmado con Exito !!!</h3>
            <br>
            <br>
            <h4>Este Estudiante esta en la plataforma:   ${param.FirstName} ${param.LastName}</h4> 
            <br>

            <!-- Display list of lenguajes-->
            <h4> Lenguajes preferidos de Back-End:</h4>
            <ul  class="list-group">
                <%
                    String[] matriz = request.getParameterValues("lenguaje");
                    if (matriz != null) {
                        for (String i : matriz) {
                            out.println("<li class=list-group-item>" + i + "</li>");
                        }
                    } else {
                        out.println(" <h2 align = center> Por favor elije un lenguaje de programación !!!</h2>");
                    }
                %>
            </ul>

        </div>

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
        </script>

    </body>
</html>
