<?php

require_once ("Calculator.php");

use PHPUnit\Framework\TestCase;

class CalculatorTest extends TestCase{

    public function testAddition(){
        $calculator = new Calculator();
        $result = $calculator->addition(2,3);
        $this->assertEquals(5, $result);
    }
}