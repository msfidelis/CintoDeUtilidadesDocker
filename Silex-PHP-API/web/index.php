<?php
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

require_once __DIR__.'/vendor/autoload.php';

$app = new Application();
$app['debug'] = True;

$app->get('/', function() use($app) {
    return $app->json(['status' => 'ok']);
});

$app->run();
