<?php
class Programmer
{
    private $input;
    public function setInput(string $input)
    {
        $this->input = $input;
    }
    public function getInput()
    {
        $hasil = explode(" ", $this->input);
        $tampil = "[";
        for($i = 0; $i < count($hasil); $i++)
        {
            $tampil .= $hasil[$i] . ", ";
        }

        $tampil .= "]";
        return $tampil;
    }
}

$obj = new Programmer;
$obj->setInput("Programmer IT itu adalah lulusan teknik informatika");
echo $obj->getInput();