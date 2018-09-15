<?php
var_dump(array_filter($_ENV, function($value, $key) {
    if (strpos($key, 'DB_') === 0) {
        return true;
    }

    return false;
}, ARRAY_FILTER_USE_BOTH));