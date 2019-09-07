<?php
function count_vowels($p_string){
preg_match_all("/[aiueo]/", $p_string, $matches);
$string=null;
	foreach($matches[0] as $value) {
	  $string=$string.$value;
	}
	echo strlen($string);
}

count_vowels('programmer');

?>