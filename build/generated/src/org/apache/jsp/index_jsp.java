package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("    \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write(" <meta http-equiv=\"Pragma\" content=\"no-cache\">\n");
      out.write(" <meta http-equiv=\"Cache-Control\" content=\"no-cache\">\n");
      out.write(" <meta http-equiv=\"Expires\" content=\"Sat, 01 Dec 2001 00:00:00 GMT\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>C Athlon</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"screen.css\" media=\"screen\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.7.1.js\"></script>\n");
      out.write("        <script type =\"text/javascript\">\n");
      out.write("        $(function(){\n");
      out.write("            $(\"h1\").click(function(){\n");
      out.write("                $(this).addClass(\"blue\")\n");
      out.write("                \n");
      out.write("            }) \n");
      out.write("            \n");
      out.write("        });\n");
      out.write("        </script>\n");
      out.write("         \n");
      out.write("        <script type=\"text/javascript\" src=\"http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/validation.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 >Welcome to C Athlon 2012</h1>\n");
      out.write("      \n");
      out.write("        \n");
      out.write("        <form id =\"form4\" name=\"Login\" action=\"login\" method=\"POST\" onclick=\"js/jquery.validation.js\">\n");
      out.write("               <h2> Enter your details :</h2>\n");
      out.write("               <p>\n");
      out.write("                <label>Receipt Number</label>\n");
      out.write("                <input type=\"text\" id =\"receipt\" name=\"receipt\" value=\"\" id=\"receipt\" />\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                <label>Participant 1 Name</label>\n");
      out.write("                <input type=\"text\" id=\"pname1\" name=\"pname1\" value=\"\" />\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                <label>Participant 2 Name</label>\n");
      out.write("                <input type=\"text\" id=\"pname2\" name=\"pname2\" value=\"\" />\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                <label>Email</label>\n");
      out.write("                <input type=\"text\" id=\"email\" name=\"email\" value=\"\"  />\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                <label>College</label>\n");
      out.write("                <input type=\"text\" id =\"college\" name=\"college\" value=\"\" />\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                <label>Contact</label>\n");
      out.write("                <input type=\"text\" id=\"contact\" name=\"contact\" value=\"\" />\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                <label>Level</label>\n");
      out.write("                Level 1<input type=\"radio\" id=\"l1\" name=\"level\" value=\"1\" />Level 2<input type=\"radio\" id=\"l2\" name=\"level\" value=\"2\" />\n");
      out.write("                </p>\n");
      out.write("                <p class=\"button\">  <input type=\"submit\" value=\"Submit\" name=\"submit\" onclick=\" \"></p>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("          \n");
      out.write("        \n");
      out.write("      \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
