<?php

require 'reverseAndRemove.php';
require 'vendor/autoload.php';

class reverseAndRemoveTest extends PHPUnit_Framework_TestCase{
    
    public function testReverseAndRemoveTest(){
        
        
        $this->assertEquals('', reverseAndRemove(''));
        $this->assertEquals('', reverseAndRemove(false));
        $this->assertEquals('', reverseAndRemove(null));
        $this->assertEquals('', reverseAndRemove(15));
        $this->assertEquals('', reverseAndRemove(['Hello world!']));
        $this->assertEquals('', reverseAndRemove('OeA'));
        $this->assertEquals('!dlrw llH', reverseAndRemove('Hello world!'));
        $this->assertEquals('gnrts s lbrv  f pyt ht rhthw dnF', reverseAndRemove('Find whether the type of a variable is string'));
        
    }
}
