<?php


$unsorted = [2867, 86, 2, 8, 211, 52, 89, 827662, 123, 6];

function showArray(array $array)
{
    $arrayInString = '[' . implode(', ', $array) . ']';

    echo $arrayInString . PHP_EOL;
}

function sortUsingBubble(array $array): array
{
    for ($i = count($array) - 1; $i > 0; $i--) {

        $Swapped = false;

        for ($j = 0; $j < $i; $j++) {
            $currentElement = $array[$j];
            $nextElement = $array[$j + 1];

            if ($currentElement > $nextElement) {
                $temp = $currentElement;

                $array[$j] = $nextElement;
                $array[$j + 1] = $temp;

                $Swapped = true;
            }

            showArray($array);
        }

        if (!$Swapped) {
            break;
        }
    }
    return $array;
}

showArray($unsorted);

$sorted = sortUsingBubble($unsorted);

showArray($sorted);
