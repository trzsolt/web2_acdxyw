<?php

class Elerhetoseg_elektronikus_Controller
{
	public $baseName = 'elerhetoseg_elektronikus';  //meghat�rozni, hogy melyik oldalon vagyunk
	public function main(array $vars) // a router �ltal tov�bb�tott param�tereket kapja
	{
		//bet�ltj�k a n�zetet
		$view = new View_Loader($this->baseName."_main");
	}
}

?>