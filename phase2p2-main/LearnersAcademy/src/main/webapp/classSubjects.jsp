<!DOCTYPE html>
<html lang="en">
<%@ page import="java.util.List" %>
<%@ page import="model.ClassSubject" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.concurrent.ThreadLocalRandom" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>


<body>



<div class="container">
    <h3 class='header'>Subjects Per Class</h3>
    <%
        List<ClassSubject> classSubjectsList = (List<ClassSubject>) request.getAttribute("classSubjectsList");
        // Paint the rows of the subject table
        String classNameOriginal = "";
        int counter = 0;
        String[] imageArray = {"tech","nature","animals"};

        for (ClassSubject classSubject : classSubjectsList) {
            int randomCategory = ThreadLocalRandom.current().nextInt(0, 3);
            String className = classSubject.getClassName();

            if (!classNameOriginal.equals(className)) {
                if (counter != 0) {
                    out.println("                </div>");
                    out.println("            </div>");
                    out.println("        </div>");
                    out.println("    </div>");
                    out.println("</div>");
                }
                out.println("<div class=\"container\">");
                out.println("    <div class=\"col s12 m7\">");
                out.println("        <h5 class=\"header\">" + classSubject.getClassName() + "</h5>");
          
                out.println("</div>");
                out.println("<div class=\"card-stacked\">");
                out.println("<div class=\"card-content\">");

                classNameOriginal = className;
                //Encabezado
            }
            out.println(classSubject.getSubjectName() + "<br />");
            //Lista

            //Footer
            counter++;
        }
    %>


</div>
</div>
</div>
</div>
</div>
</div>

</body>
</html>

