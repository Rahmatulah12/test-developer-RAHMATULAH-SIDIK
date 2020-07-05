<?php 

class AngkaAjaib
{
    private $input;
    private $pecah;
    public function setInput($input)
    {
        $this->input = $input;
    }

    public function getHasil()
    {
        $this->pecah = str_split($this->input);
        $angkaAwal = $this->input;
        (int) $angkaBaru = $this->pecah[3] . $this->pecah[2] . $this->pecah[1] . $this->pecah[0];
        $hasil;
        for($i = 0; $i < count($this->pecah); $i++)
        {
            $hasil = $angkaBaru - $angkaAwal;
            $this->pecah = str_split($hasil);
            (int) $angkaBaru = $this->pecah[3] . $this->pecah[2] . $this->pecah[1] . $this->pecah[0];
            var_dump($hasil);
        }        
    }
}

$obj = new AngkaAjaib;
$obj->setInput(1234);
$obj->getHasil();