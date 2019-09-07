

<?php
     function printTriangle($P) {
		 if (preg_match('/^[a-z]{5,9}$/i',$username)){
			 return "Valid";
		 }else{
			return "Invalid";	 
		 }
													 
     }
   	 /*echo is_username_valid('siska');*/


     function is_username_valid($username) {
		 if (preg_match('/[a-zA-Z0-9]$/i',$username)){
			 return "Valid";
		 }else{
			return "Invalid";	 
		 }
													 
     }
   	 echo is_username_valid('codeYourFuture123!');
?>