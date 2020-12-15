<h2>Bejelentkezés</h2>
<form name="belepes" action="<?= SITE_ROOT ?>beleptet" method="post">
    <label for="login">Felhasználó:</label><input type="text" name="login" id="login" required pattern="[a-zA-Z][\-\.a-zA-Z0-9_]{3}[\-\.a-zA-Z0-9_]+"><br>
    <label for="password">Jelszó:</label><input type="password" name="password" id="password" required pattern="[\-\.a-zA-Z0-9_]{4}[\-\.a-zA-Z0-9_]+"><br>
    <input type="submit" name="belepes" value="Belépés">
</form>
<hr><br>
<h2>Regisztráció</h2>
<p>Még nem regisztráltál? Itt a lehetőség!</p>
<form name="regisztracio" action="belepes_main.php" method="post">
	  <label for="csaladi_nev">Családi név:</label><input type = "text" name="csaladi_nev" id = "csaladi_nev"><br>
      <label for="utonev">Utónév:</label><input type = "text" name="utonev" id = "utonev"><br>
      <label for="login">Felhasználó:</label><input type = "text" name="login" id = "login"><br>
      <label for="password">Jelszó:</label><input type = "password" name="jelszo" id = "jelszo"><br> 
      <input type="submit" name="regisztracio" value="Regisztráció"><br>
      </form>
<h2><br><?= (isset($viewData['uzenet']) ? $viewData['uzenet'] : "") ?><br></h2>
