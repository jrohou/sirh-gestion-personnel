package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;

public class Collaborateur {

	public Collaborateur(String nom, String prenom, String emailPro, String adresse, String codePostal, String ville, String numeroSecu,
			LocalDate dateNaissance, boolean actif) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.matricule = "AAA"+nom+compteur;
		this.emailPro = emailPro;
		this.adresse = adresse;
		this.codePostal = codePostal;
		this.ville = ville;
		this.numeroSecu = numeroSecu;
		this.dateNaissance = dateNaissance;
		this.actif = actif;
		compteur++;
	}
	String matricule;
	String nom;
	String prenom;
	String adresse;
	String codePostal;
	String ville;
	String numeroSecu;
	String emailPro;
	String photo;
	LocalDate dateNaissance;
	ZonedDateTime dateHeureCreation;
	boolean actif;
	static int compteur;
	
	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getNumeroSecu() {
		return numeroSecu;
	}
	public void setNumeroSecu(String numeroSecu) {
		this.numeroSecu = numeroSecu;
	}
	public String getEmailPro() {
		return emailPro;
	}
	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public LocalDate getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(LocalDate dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public ZonedDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}
	public void setDateHeureCreation(ZonedDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}
	public boolean isActif() {
		return actif;
	}
	public void setActif(boolean actif) {
		this.actif = actif;
	}
	
}
