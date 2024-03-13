<?php

// for printing a pattern
function pattern($count){
  if(!is_int($count) || $count < 0) {
    echo "Please enter a valid number";
    exit;
  }
  for ($i=1; $i <= $count; $i++) { 
    for ($j=1; $j <= $i; $j++) { 
      echo $i." ";
    }
    echo "<br>";
  }
}

pattern(5);