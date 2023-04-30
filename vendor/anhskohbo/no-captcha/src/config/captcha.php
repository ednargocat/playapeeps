<?php

$settings = App\Models\Settings::getAll();
$general = $settings->where('type', 'google')->pluck('value', 'name')->toArray();

return [
    'secret' =>  $general['recaptcha_secret_key'],
    'sitekey' => $general['recaptcha_site_key'],
    'options' => [
        'timeout' => 300,
    ],
];
