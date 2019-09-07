<?php
     function printTriangle($N) {
		IF ($N>=3){
		 if ($N==5){
			 $P=$N-1;
		 }ELSE{
			$P=$N;
		 }
		 $A=$N+2;
		 $B=0;
		 $C=0;
		 
		 while ($B<$P){			
			$B++;
			IF ($B==1){
				WHILE ($C<$A){
					$C++;
					ECHO "*&nbsp&nbsp";
				}
				ECHO "<BR><BR>";
			}ELSE{
				$D=1;
				WHILE ($D<=$A){
					IF ($D==$B OR $D==($A-($B-1))){
						ECHO "&nbsp&nbsp*";
					}ELSE{
						ECHO "&nbsp&nbsp&nbsp";
					}
					$D=$D+1;
				}
				ECHO "<BR><BR>";
			}
		 }
		}ELSE{
			ECHO "Invalid number";
		}
	}

	printTriangle(3);
		
?>