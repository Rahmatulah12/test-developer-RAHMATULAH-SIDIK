<?php

class HotDog
{
    private $dictionary = ["hot", 'dog', "lot", "log"];
    private $input;

    public function setInput(array $dictionary)
    {
        $this->dictionary = $dictionary;
    }

    public function specifyDictionary()
    {
        $jmlhDictionary  = count($this->dictionary);
        $hasilKata = implode(",", $this->dictionary);
        $hasilKata = preg_replace("/[^a-zA-Z]/", "", $hasilKata);
        // konversi input
        $konversiInput = implode(",", $this->setInput(["hot", "dog"]));
        echo $konversiInput;
        // if(preg_match("/$hasilKata/", $hasilKata))
        // {
        //     echo $hasilKata;
        // }
    }
}

$obj = new HotDog;
$obj->setInput(["hot", "dog"]);
$obj->specifyDictionary();