package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class ListerCollaborateursController extends HttpServlet {

	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
		req.setAttribute("listeCollabs", collaborateurs);
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);;
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		String email = prenom+"."+nom+"@societe.com";
		LocalDate anniv = null;
		if(!request.getParameter("datenaiss").equals("")){
		 anniv = LocalDate.parse(request.getParameter("datenaiss"));
		}
		String adresse = request.getParameter("adresse");
		String codepostal = request.getParameter("codepostal");
		String ville = request.getParameter("ville");
		String numsecu = "" + request.getParameter("numsecu");
		boolean actif = true;
		
		if(prenom.equals("") || nom.equals("")){
			response.sendError(400,"Quelque chose n'est pas renseigné");
		}
		else {
			Collaborateur collaborateur = new Collaborateur(nom,prenom,email,adresse,codepostal,ville,numsecu,anniv,actif);
			collabService.sauvegarderCollaborateur(collaborateur);
			
			request.setAttribute("listeCollabs", collabService.listerCollaborateurs());
			request.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(request, response);
			
		}

	}
}
