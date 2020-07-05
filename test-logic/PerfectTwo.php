<?php

class PerfectTwo
{
    private $nilaiArray = array();
    private $input;
    private $hasil;

    public function setNilaiInput(int $input)
    {
       $this->input = $input;
    }
    
    public function getHasil()
    {

        $i = rand(1, 10);
        if($i <= $this->input)
        {
            if($this->input % $i == 0)
            {
                $this->hasil = $this->input / $i;
                $this->nilaiArray = [$this->hasil, $i];
                echo 'nilai input = ' . $this->input . "<br>";
                echo "[" . $this->nilaiArray[0] . "," . $this->nilaiArray[1] . "]";
            } else {
                echo "&ltno way&gt";
            }
        } else {
            echo "&ltno way&gt";
        }

    }
}

$hitung = new PerfectTwo;
$hitung->setNilaiInput(10);
$hitung->getHasil();



