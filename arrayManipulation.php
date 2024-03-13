<?php

function prod($test){

  $sum = 0;
  $product = 1;

  // for iterating through all array elements 
  foreach($test as $val){
    ($val >= 0) ? $sum += $val : $product *= $val;
  }

  return array('sum' => $sum, 'product' => $product);
}

// Test array of positive and negative integers
$prod = prod([1, 2, 4, 5, 6, -2, 5, -1, -9, 5]);

echo "Sum of the array elemets is ".$prod['sum']."<br>";
echo "Product of the array elemets is ".$prod['product'];