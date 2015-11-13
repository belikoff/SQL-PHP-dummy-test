<?php

function reverseAndRemove($string)
{
    $vowels = ['a','e','i','o','u'];
    $result = '';
    if(!is_string($string) or !$string ) return $result;
    
    $result = strrev($string);
    $result = str_ireplace($vowels, '', $result);
    
    return $result;
    
}

