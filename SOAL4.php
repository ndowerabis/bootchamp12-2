<?php
function groupNumber($p_string){
	preg_match_all("/[0-9]/", $p_string, $matches);
	$string=null;
	$print=null;
	foreach($matches[0] as $value) {
	  $string=$string.$value;
	}
	echo $string."<br>";
	$a=strlen($string);
	$b=0;
	$c=1;
	$d=3;
	while ($b<=$a){
		echo $print.substr($string,$b,1);
		if ($c==$d){
			$c=0;
			if ($b<($a-1)) {
				echo "-";
			}

			if (($a-$b)<6){
				$d=2;
			}
		}
		$c++;
		$b++;
	}
	echo $print;
}
groupNumber('993141 -1 1323 14-232');
?>