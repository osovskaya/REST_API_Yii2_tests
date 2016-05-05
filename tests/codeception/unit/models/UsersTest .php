<?php

namespace tests\codeception\unit\models;

use yii\codeception\TestCase;

class UsersTest extends TestCase
{
    protected function setUp()
    {
        parent::setUp();
        // uncomment the following to load fixtures for user table
        //$this->loadFixtures(['user']);
    }

    public function testSaveUser()
{
    $user = new User();
	$user->setRole('client');
    $user->setName('test');
    $user->setUsername('test@test.com');
	$user->setpassword('test');
    $user->save();
    $this->assertEquals('test@test.com', $user->getUsername());
    $this->tester->seeInDatabase('users', array('name' => 'test', 'Username' => 'test@test.com'));
}
}
