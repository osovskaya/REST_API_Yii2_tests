<?php

//GET http://localhost//web/index.php/users
//GET http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('get a user via API');
$I->amHttpAuthenticated('nata', 'nata');
$I->sendGET('/users/37');
$I->seeResponseCodeIs(200);
$I->seeResponseIsJson();
$I->seeResponseContainsJson(['id' => '37']);
$I->amHttpAuthenticated('nata', 'nata');
$I->sendGET('/users');
$I->seeResponseCodeIs(200);
$I->seeResponseIsJson();
$I->seeResponseContainsJson(['id' => '37']);

