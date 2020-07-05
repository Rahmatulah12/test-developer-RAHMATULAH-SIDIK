<?php

class PerfectTwo
{
    protected $nilaiArray = array();
    protected $input;

    public function setNilaiInput(int $input) : int
    {
       $this->input = $input;
    }
    
    public function getHasil(array $nilaiArray)
    {
        if($this->input % 2 == 0)
        {
            echo "bilangan genap";
        } else {
            echo "bilangan ganjil";
        }
    }
}

$hitung = new PerfectTwo;
$hitung->setNilaiInput(10);
$hitung->getHasil();



