<?php

//POST http://localhost//web/index.php/users

$I = new ApiGuy($scenario);
$I->wantTo('create a user via API');
$I->amHttpAuthenticated('nata', 'nata');
$I->haveHttpHeader('Content-Type', 'application/x-www-form-urlencoded');
$I->sendPOST('/users', ['role' => 'client', 'name' => 'test', 'username' => 'test5@mail.com', 'password' => 'test']);
$I->seeResponseCodeIs(201);
$I->seeResponseIsJson();
$I->seeResponseContainsJson(['role' => 'client', 'name' => 'test', 'username' => 'test5@mail.com', 'password' => 'test']);

