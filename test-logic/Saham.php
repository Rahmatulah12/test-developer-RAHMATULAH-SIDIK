<?php 

class Saham 
{
    private $input;
    public function __construct(array $input)
    {
        $this->input = $input;
    }

    public function getHasil()
    {
        echo $tampil = implode(",",$this->input) . "<br>";
        echo $max = max($this->input);
    }
}

$obj = new Saham([10, 12, 5, 18, 10]);
$obj->getHasil();