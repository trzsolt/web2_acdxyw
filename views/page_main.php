<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Társasjátékok Ünnepe 2021</title>
		
		
		<?php echo '<link rel="shortcut icon" type="image/png" href="' . SITE_ROOT . 'logo.png"/>' ?>
        <link rel="stylesheet" type="text/css" href="<?php echo SITE_ROOT?>css/main_style.css">
        <?php if($viewData['style']) echo '<link rel="stylesheet" type="text/css" href="'.$viewData['style'].'">'; ?>
    </head>
    <body>
		<table width="50%" align="center">
		<tr><td>
			<header>
				<div id="user"><em><?= $_SESSION['userlastname']." ".$_SESSION['userfirstname'] ?></em></div>
				<table>
					<tr>
						<td width="60">
							<?php echo '<img src="' . SITE_ROOT . 'logo.png" height="50">'; ?>
						</td>
						<td>
							<h1>Társasjátékok Ünnepe</h1>
						</td>
					</tr>
				</table>
			</header>
			<nav>
				<?php echo Menu::getMenu($viewData['selectedItems']); ?>
			</nav>
			<section>
				<?php if($viewData['render']) include($viewData['render']); ?>
			</section>
			<footer>&copy; Társasjátékok Ünnepe <?= date("Y") ?></footer>
		</td></tr>
		</table>
    </body>
</html>
