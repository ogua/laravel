<?php

echo "work 1 <br>";
for($i=1;$i<20;$i++){
    echo file_get_contents("https://fakestoreapi.com/products/$i")."<br><br><br>";
}

echo "work 3 <br>";


