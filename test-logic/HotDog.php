<?php

class HotDog
{
    private $dictionary = ["hot", 'dog', "lot", "log"];
    private $input;

    public function setInput(array $input)
    {
        $this->input = $input;
    }

    public function specifyDictionary()
    {
        $jmlhInput  = count($this->input);
        // $hasilKata = implode(",", $this->dictionary);
        // $hasilKata = preg_replace("/[^a-zA-Z]/", "", $hasilKata);
        // konversi input
        // $konversiInput = implode(",", (array)$this->input);
        // $konversiInput = preg_replace("/[^a-zA-Z]/", "", $konversiInput);
        for($i = 0; $i < $jmlhInput; $i++)
        {
            for($j = 0; $j < count($this->dictionary); $j++){
                if($this->dictionary[$j] === $this->input[$i])
                {
                    echo $this->input[$i] . " ";
                }

                if($this->dictionary[$j] !== $this->input[$i])
                {
                    echo $this->input[$i];
                }
                
            }
        }
    }
}

$obj = new HotDog;
$obj->setInput(["hit", "dog"]);
$obj->specifyDictionary();