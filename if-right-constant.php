<?php

$timestamp = microtime(true);

$variable = 1;

for ($i = 0; $i < 1_000_000_000; $i++) {
    if ($variable > 0) {}
}

var_dump(microtime(true) - $timestamp);
