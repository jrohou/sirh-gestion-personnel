package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListerCollaborateursController extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		String avecPhotoParam = req.getParameter("avec Photo");
		
		String departementParam = req.getParameter("departement");
		resp.setContentType("text/html");
		
		resp.getWriter().write("<h1>Liste des collaborateurs</h1>"
				+"<ul>"
				+"<li>Avec Photo="+avecPhotoParam+"</li>"
				+"<li>departemen="+departementParam+"</li>"
				+"</ul>");
	}
}
