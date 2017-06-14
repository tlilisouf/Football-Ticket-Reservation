<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="form-group col-sm-9" id="billing_team_home_field">
	<label for="billing_team_home" class="col-sm-3 control-label">Equipe
		maison<abbr class="required" title="required">*</abbr>
	</label>
	<div class="col-sm-7">
		<select class="form-control" name="teamHome" id="teamHome">
			<option
				value='<c:out value="${match.teamHome}${matchAlter.teamHome}"/>'>${match.teamHome}${matchAlter.teamHome}</option>
			<option value="Avenir Sportif Kasserine">Avenir Sportif
				Kasserine</option>
			<option value="Avenir Sportif de la Marsa">Avenir Sportif de
				la Marsa</option>
			<option value="Club Africain">Club Africain</option>
			<option value="Club Africain Bizertin">Club Africain
				Bizertin</option>
			<option value="Club Sportif Hammam-Lif">Club Sportif
				Hammam-Lif</option>
			<option value="Club Sportif Sfaxien">Club Sportif Sfaxien</option>
			<option value="El Gawafel sportives Gafsa">El Gawafel
				sportives Gafsa</option>
			<option value="Etoile olympique Sidi Bouzid">Etoile
				olympique Sidi Bouzid</option>
			<option value="Etoile Sportif Metlaoui">Etoile Sportif
				Metlaoui</option>
			<option value="Etoile Sportif Sahel">Etoile Sportif Sahel</option>
			<option value="Esperance Sportive Tunis">Esperance Sportive
				Tunis</option>
			<option value="Esperance Sportive Zarzis">Esperance Sportive
				Zarzis</option>
			<option value="Jeunes Sportives Kairouan">Jeunes Sportives
				Kairouan</option>
			<option value="Stade Gabesien">Stade Gabesien</option>
			<option value="Stade Tunisien ">Stade Tunisien</option>
			<option value="Union Sportive Ben Guerdane">Union Sportive
				Ben Guerdane</option>
		</select>
	</div>
</div>

<div class="form-group col-sm-9" id="billing_team_away_field">
	<label for="billing_team_away" class="col-sm-3 control-label">Equipe
		extérieur<abbr class="required" title="required">*</abbr>
	</label>
	<div class="col-sm-7">
		<select class="form-control" name="teamAway" id="teamAway">
			<option
				value='<c:out value="${match.teamAway}${matchAlter.teamAway}"/>'>${match.teamAway}${matchAlter.teamAway}</option>
			<option value="Avenir Sportif Kasserine">Avenir Sportif
				Kasserine</option>
			<option value="Avenir Sportif de la Marsa">Avenir Sportif de
				la Marsa</option>
			<option value="Club Africain">Club Africain</option>
			<option value="Club Africain Bizertin">Club Africain
				Bizertin</option>
			<option value="Club Sportif Hammam-Lif">Club Sportif
				Hammam-Lif</option>
			<option value="Club Sportif Sfaxien">Club Sportif Sfaxien</option>
			<option value="El Gawafel sportives Gafsa">El Gawafel
				sportives Gafsa</option>
			<option value="Etoile olympique Sidi Bouzid">Etoile
				olympique Sidi Bouzid</option>
			<option value="Etoile Sportif Métlaoui">Etoile Sportif
				Metlaoui</option>
			<option value="Etoile Sportif Sahel">Etoile Sportif Sahel</option>
			<option value="Esperance Sportive Tunis">Esperance Sportive
				Tunis</option>
			<option value="Esperance Sportive Zarzis">Esperance Sportive
				Zarzis</option>
			<option value="Jeunes Sportives Kairouan">Jeunes Sportives
				Kairouan</option>
			<option value="Stade Gabesien">Stade Gabesien</option>
			<option value="Stade Tunisien ">Stade Tunisien</option>
			<option value="Union Sportive Ben Guerdane">Union Sportive
				Ben Guerdane</option>
		</select>
	</div>
</div>