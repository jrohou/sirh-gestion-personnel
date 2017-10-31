<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<!--  <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-3.3.7-dist/css/bootstrap.css">-->
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">

<!-- Material Design for Bootstrap CSS -->
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-material-design@4.0.0-beta.3/dist/css/bootstrap-material-design.min.css"
	integrity="sha384-k5bjxeyx3S5yJJNRD1eKUMdgxuvfisWKku5dwHQq9Q/Lz6H8CyL89KF52ICpX4cL"
	crossorigin="anonymous">

<title>SGP- App</title>

<script>
	function valider(){
		document.forms[0].action="<%=request.getContextPath()%>/collaborateurs/lister";
		document.forms[0].method="POST";
		document.forms[0].submit();
	}
	
	function editcollabo(this) {
		
		$(this)
		
	}

	</script>

</head>
<body>
	<br>
	<h1>Mon Collaborateur</h1>
	<br>
	<em><h5>Collaborate different</h5></em>
	<div class="container">
		<div class="col-md-12 mb-6">
			<table class="table table-bordered">
				<thead>
					<th scope="col">Actif</th>
					<th scope="col">Matricule</th>
					<th scope="col">Nom</th>
					<th scope="col">Prénom</th>
					<th scope="col">Date de naissance</th>
					<th scope="col">Adresse</th>
					<th scope="col">Code Postal</th>
					<th scope="col">Ville</th>
					<th scope="col">Email</th>
					<th scope="col">Numéro de Sécu</th>
					<th scope="col">Afficher</th>
					<th scope="col">Modifier</th>
				</thead>
				<tbody>
					<%
						List<Collaborateur> collaborateurs = (List<Collaborateur>) request.getAttribute("listeCollabs");
						for (Collaborateur collab : collaborateurs) {
					%>

					<tr>
						<td>
							<%
								if (collab.isActif() == true) {
							%> Actif <%
								} else {
							%> Non-actif <%
								}
							%>
						</td>
						<td id="matricule"><%=collab.getMatricule()%></td>
						<td id="nom"><%=collab.getNom()%></td>
						<td id="prenom"><%=collab.getPrenom()%></td>
						<td id="date_naiss"><%=collab.getDateNaissance()%>
						<td id="adresse"><%=collab.getAdresse()%></td>
						<td id="code_postal"><%=collab.getCodePostal()%></td>
						<td id="ville"><%=collab.getVille()%></td>
						<td id="email"><%=collab.getEmailPro()%></td>
						<td id="alloc"><%=collab.getNumeroSecu()%></td>

						<td>
							<button type="button" class="btn btn-primary btn-sm"
								data-toggle="modal" data-target="#showcollabo1">Afficher</button>
						</td>
						<td>
							<button type="button" class="btn btn-primary btn-sm"
								data-toggle="modal" data-target="#editwindow" onclick="editcollabo(this)">Modifier</button>
						</td>
					</tr>

					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>

	<br>
	<button type="button" class="btn btn-primary btn-sm"
		data-toggle="modal" data-target="#ajoutwindow">Ajouter un
		nouveau Collaborateur</button>
	<br>
	<div class="container">


		<div class="modal fade" id="ajoutwindow" tabindex="-1" role="dialog"
			aria-labelledby="ajoutwindow" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="ajoutwindow">Ajouter un nouveau
							Collaborateur</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>



					<div class="modal-body">


						<form>
							<div class="row">
								<div class="col-md-12 mb-6">
									<label for="validationServer01">Prénom</label> <input
										type="text" class="form-control is-valid"
										id="validationServer01" name="prenom" placeholder="Prénom"
										required>
								</div>
								<div class="col-md-12 mb-6">
									<label for="validationServer02">Nom</label> <input type="text"
										class="form-control is-valid" id="validationServer02"
										name="nom" placeholder="Nom" required>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="validationServer03">Date de naissance</label> <input
										type="date" class="form-control" id="validationServer03"
										name="datenaiss" placeholder="Date de naissance" required>
									<div class="invalid-feedback">Veuillez saisir une date de
										naissance valide.</div>
								</div>
								<div class="col-md-12 mb-6">
									<label for="validationServer04">Adresse</label> <input
										type="text" class="form-control is-invalid"
										id="validationServer04" name="adresse" placeholder="Adresse"
										required>
									<div class="invalid-feedback">Veuillez saisir une adresse
										valide.</div>
								</div>
								<div class="col-md-3 mb-3">
									<label for="validationServer05">Code Postal</label> <input
										type="text" class="form-control is-invalid"
										id="validationServer05" name="codepostal"
										placeholder="Code Postal" required>
									<div class="invalid-feedback">Veuillez saisir un code
										postal valide.</div>
								</div>
								<div class="col-md-12 mb-6">
									<label for="validationServer06">Ville</label> <input
										type="text" class="form-control is-invalid"
										id="validationServer06" name="ville" placeholder="Ville"
										required>
									<div class="invalid-feedback">Veuillez saisir une ville
										valide.</div>
								</div>
								<div class="col-md-12 mb-6">
									<label for="validationServer07">Numéro de Sécurité
										Sociale</label> <input type="number" class="form-control is-invalid"
										id="validationServer07" name="numsecu"
										placeholder="Numéro de Sécurité Sociale" onkeypress="if(this.value.lenth==15)return false;" required>
									<div class="invalid-feedback">Veuillez saisir un numéro
										de Sécurité Sociale valide.</div>
								</div>
							</div>
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" class="close btn btn-secondary"
							data-dismiss="modal" aria-label="Close">Abandonner</button>
						<button class="btn btn-primary" type="submit" onclick="valider()">Ajouter
							mon nouveau Collaborateur</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	    <div class="container">


      <div class="modal fade" id="editwindow" tabindex="-1" role="dialog" aria-labelledby="editwindow" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="ajoutwindow">Modifier un Collaborateur</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              </button>
            </div>
            <div class="modal-body">


              <form>
                <div class="form-check form-check-inline" id="desactiver">
                <label class="form-check-label">
                  <input class="form-check-input" type="checkbox" id="desactiver" value="desactiver"> Désactiver
                </label>
              </div>
                <div class="row">
                  <label for="prenom">Prénom</label>
                  <div class="col-md-12 mb-6">
                    <input type="text" class="form-control is-valid" id="prenom" placeholder="Prénom" required>
                  </div>
                  <div class="col-md-12 mb-6">
                    <label for="nom">Nom</label>
                    <input type="text" class="form-control is-valid" id="nom" placeholder="Nom" required>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label for="date_naiss">Date de naissance</label>
                    <input type="date" class="form-control is-invalid" id="date_naiss" placeholder="Date de naissance" required>
                    <div class="invalid-feedback">
                      Veuillez saisir une date de naissance valide.
                    </div>
                  </div>
                  <div class="col-md-12 mb-6">
                    <label for="adresse">Adresse</label>
                    <input type="text" class="form-control is-invalid" id="adresse" placeholder="Adresse" required>
                    <div class="invalid-feedback">
                      Veuillez saisir une adresse valide.
                    </div>
                  </div>
                  <div class="col-md-3 mb-3">
                    <label for="code_postal">Code Postal</label>
                    <input type="text" class="form-control is-invalid" id="code_postal" placeholder="Code Postal" required>
                    <div class="invalid-feedback">
                      Veuillez saisir un code postal valide.
                    </div>
                  </div>
                  <div class="col-md-12 mb-6">
                    <label for="ville">Ville</label>
                    <input type="text" class="form-control is-invalid" id="ville" placeholder="Ville" required>
                    <div class="invalid-feedback">
                      Veuillez saisir une ville valide.
                    </div>
                  </div>
                </div>

              </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dimiss="modal">Abandonner</button>
                <button class="btn btn-primary" type="submit">Modifier le Collaborateur</button>
              </form>
            </div>
        </div>
    </div>
    </div>
  </div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.12.5/dist/umd/popper.js"
		integrity="sha384-KlVcf2tswD0JOTQnzU4uwqXcbAy57PvV48YUiLjqpk/MJ2wExQhg9tuozn5A1iVw"
		crossorigin="anonymous"></script>
	<script
		src="https://unpkg.com/bootstrap-material-design@4.0.0-beta.3/dist/js/bootstrap-material-design.js"
		integrity="sha384-hC7RwS0Uz+TOt6rNG8GX0xYCJ2EydZt1HeElNwQqW+3udRol4XwyBfISrNDgQcGA"
		crossorigin="anonymous"></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

</body>
</html>