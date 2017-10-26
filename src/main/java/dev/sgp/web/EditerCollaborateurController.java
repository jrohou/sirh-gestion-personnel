package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		String matricule = req.getParameter("matricule");
		
		resp.setContentType("text/html");
		if(matricule == null) {
			resp.setStatus(400);
			resp.getWriter().write("Le Matricule n'est pas renseigné");
		}
		else {
			resp.setStatus(200);
					resp.getWriter().write("<h1>Edition de collaborateur</h1>");
	}
		}


}
