<html>
<head>
<link rel="stylesheet" type="text/css" href="filmy.css">
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
	<div id="miejsce_na_nawigacje">
	</div>
	<div id="strona_glowna">
	<div id="czesc_gurna">
	<?php
			error_reporting(0);
			$h = $_POST['film'];


			$Baza = mysqli_connect("localhost","root","","repertuar1");
			$Baza ->set_charset("utf8");
				mysqli_select_db($Baza,"repertuar1");
				
			$Zapytanie = mysqli_query($Baza,"SELECT * FROM filmy WHERE ID=".$h."");
			$film = mysqli_fetch_array($Zapytanie);
	
		?>
		<div id="baner">
		<?php
		echo $film['Nazwa'];
		?>
		</div>
		
		
		<div id="zdjęcie_div">
			<?php
				echo "<img src='".$film['Plakat']."' width='300px' height='400px' id='zdjecie'>"; 
			?>
		</div>
		<div id="opis">
			<div id="tytul">
			<?php
			$reżyser=$film['Reżyser'];
			$Zapytanie1 = mysqli_query($Baza,"SELECT * FROM rezyser WHERE ID=".$reżyser."");
			$film1 = mysqli_fetch_array($Zapytanie1);
			echo "<div id='div_zdjecie'><img src='".$film1['Zdjecie']."' id='zdjecie_rezuser'></div><br>";
			
			?>
			
			
			Reżyser :
			<?php
			$reżyser=$film['Reżyser'];
			$Zapytanie1 = mysqli_query($Baza,"SELECT * FROM rezyser WHERE ID=".$reżyser."");
			$film1 = mysqli_fetch_array($Zapytanie1);
			echo $film1['Imie']." ".$film1['Nazwisko'];
			
			?>
			<br><br>
			
			Gatunek :
			<?php
			echo $film['Gatunek'];
			?>
			</div>
		</div>
		<div id="rezerwuj_bilet">
		<form method="POST" action='rezerwuj.php'>
		<select name="Data" id="rezerwacja_wybierz">
		<?php
		$Zapytanie5 = mysqli_query($Baza,"SELECT * FROM seans WHERE ID_Filmu=".$h."");
			$ilosc_r=mysqli_num_rows($Zapytanie5);
			for($i=0;$ilosc_r>$i;$i++){
			$film5 = mysqli_fetch_array($Zapytanie5);
			echo "<option value=".$film5['Data'].";".$film5['Godzina'].">".$film5['Data']."  ".$film5['Godzina']."</option>";
			}
			
		echo "<input type='hidden'  value=".$h." name='id_film'>";
		?>
		
		</select>
		
		<p id="text_rezerwacja">Podaj ilość:</p><input type="text" name="ilosc" id="ilosc" placeholder="0">
		<br>
		<input type="submit" id="rezerwacja_przyciks" value="REZERWUJ"   >
		</form>
		
		</div>
	</div>	
	<div id="baner1" >
		Zwiastun 
		</div>
	<div id="film">
	
	
		<?php echo $film['Url_do_zwiastuny'];
		?>
	</div>
	</div>
		<div id="baner3" >
		Obsada 
	</div>
	<div id="obsada_osoby">
		<?php 
		$ciąg=$film['Obsada'];
		$obsada = explode(",", $ciąg);
		$ilosc=count($obsada);
		for($o=0;$ilosc>$o;$o++){
		$Zapytanie2 = mysqli_query($Baza,"SELECT * FROM aktor WHERE ID=".$obsada[$o]."");
		$film2 = mysqli_fetch_array($Zapytanie2);	
		echo "<div id='okno_obsada'>
		<img src=".$film2['Zdjecie']." id='zdjecie_obsada'>
		<div id='imie_nazwisko'><br>".$film2['Imie']."<br>".$film2['Nazwisko']."</div>
		</div>";	
			
			
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










