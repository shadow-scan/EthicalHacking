!#/bin/bash

for($i = 1; $i <=65000; ++$i) { 
$hash = md5($hash . $salt);
} 
