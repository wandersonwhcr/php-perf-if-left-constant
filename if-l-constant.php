<?php

$timestamp = microtime(true);

$variable = 1;

for ($i = 0; $i < 1_000_000_000; $i++) {
    if (0 < $variable) {}
}

echo sprintf('%.10f', microtime(true) - $timestamp);
