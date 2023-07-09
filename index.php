<html>
<head>
<link rel="stylesheet" type="text/css" href="index.css">
<meta charset="UTF-8">

</head>
<body>
	<div id="nawigator">
		<div id="logo">
		</div>
		<a href="index.php">
			<div id="Repertuar">
			REPERTUAR
			</div>
		</a>
		<a href="cennik.php">
			<div id="Cennik">
			CENNIK
			</div>
		</a>
	</div>
	
	<div id="baner">
		<a href="#hej">	
			<div id="przycisk">
				NOWOŚĆ
			</div>
		</a>
		<div id="hej">
			
		</div>
	</div>
	<div id="Nowości_przykłady" >
	
		<?php
		error_reporting(0);
		$Baza = mysqli_connect("localhost","root","","repertuar1");
		mysqli_select_db($Baza,"repertuar1");
		$Zapytanie = mysqli_query($Baza,"SELECT * FROM filmy ORDER BY Data DESC");	
		
		for($i=0;$i<3;$i++){
			$film = mysqli_fetch_array($Zapytanie);
			echo "<form action='film.php' method='POST'><div id='okno'><img id='zdj_nowosc' src='".$film['Plakat']."' alt='zdjęcie' >
			<input type='hidden'  value=".$film['ID']." name='film'>
			<input type='submit' id='Przycisk_film' value='REZERWUJ'> 
			</form>
			</div>";
		
		
		}
		
		?>
	</div>
	<div id="Grane_Teraz">
		
		<form method="POST" id="szukaj" >
			<select id="text_szukaj_wybierz" name="wybierz">
			<option value="">Wyszukaj po ...</option>
			<option value="Nazwa">Nazwie</option>
			<option value="DataN">Dacie("Najnowsze")</option>
			<option value="DataS">Dacie("Najstarsze")</option>
			</select>
			
		
		
			<label><input type="text" name="szukaj_filmu" id="text_szukaj" placeholder="   Wpisz Nazwe Filmu">
			<input type="submit" value="WYSZUKAJ" id="przycisk_szukaj"></label>
		</form>
		
	</div>
	<div id="Panel_Główny">
	<?php
		$Nazwa="Where Nazwa LIKE '%".$_POST['szukaj_filmu']."%'";
	
	switch($_POST['wybierz']){
			
		case "Nazwa":
		$kategoria = "ORDER BY Nazwa DESC";		
		break;	
		
		case "DataN":
		$kategoria = "ORDER BY Data DESC";		
		break;	
		
		case "DataS":
		$kategoria = "ORDER BY Data ASC";		
		break;
		
		default:
		$kategoria = "ORDER BY Nazwa DESC";
		break;
		}
	
	
		$Baza = mysqli_connect("localhost","root","","repertuar1");
		$Baza ->set_charset("utf8");
		mysqli_select_db($Baza,"repertuar1");
		$Zapytanie = mysqli_query($Baza,"SELECT * FROM filmy ".$Nazwa."".$kategoria."");	
		$ilosc_wierszy= mysqli_num_rows($Zapytanie);
		
		
		
		
		if($ilosc_wierszy==0){
		echo "<div id='błąd'>Błąd Wyszukiwania</div>";	
		}
		for($i=0;$i<$ilosc_wierszy;$i++){
			$film = mysqli_fetch_array($Zapytanie);
			echo "<form action='film.php' method='POST'>
			<div id='okno_głowne'>
			<img id='zdj_głowne' src='".$film['Plakat']."' alt='zdjęcie' >
			<input type='submit' id='Przycisk_główny' value='REZERWUJ'> 
			<div id='prawy_planel'>
			<h2>".$film['Nazwa']."</h2>
			".$film['Opis']."
			</div>
			<input type='hidden'  value=".$film['ID']." name='film'>
			</div>";
			if($ilosc_wierszy==$i+1){
				
			}
			else{
			echo "<div id='linia_pomiędzy'>";
			}
			echo "</div>
			</form>
			"
			;
		
		
		}
		
		?>
	
	</div>
	<div id="stopka_strona_dol">
		<div id="stopka_strony_gura">
			Kontakt
		</div>
		
			<table id="tabela" >
				<tr ><td><img src="zdjecia/smartphone.png" width="50px" height="50px" ></td><td>: +48 564 743 654</td></tr>
				
				<tr><td><img src="zdjecia/folder.png" width="50px" height="50px"></td><td>: Filmoteka@gmail.com</td></tr>
				<tr><td><img src="zdjecia/settings.png" width="50px" height="50px"></td><td>: Filmoteka_Dział_techniczny@gmail.com</td></tr>
			</table>
		
	</div>
</body>
</html>
