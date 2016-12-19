<?php
namespace App\Tests;

use Silex\WebTestCase;

class SilexTests extends WebTestCase {

    public function setUp() {
        parent::setUp();
    }

    public function createApplication() {
        $app = require __DIR__ . '/../index.php';
        return $app;
    }

    /**
     * Teste simples que verifica se a API está online
     * @return [type] [description]
     */
    public function testVerificaSeAApiEstaFuncionando() {
        $client = $this->createClient();
        $client->request('GET', '/');
        $response = json_decode($client->getResponse()->getContent());
        $this->assertTrue($client->getResponse()->isOk());
        $this->assertEquals('ok', $response->status);
    }
}
