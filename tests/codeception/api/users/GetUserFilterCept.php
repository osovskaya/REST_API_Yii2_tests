<?php

//GET http://localhost//web/index.php/users?name='имя'&role='роль'

$I = new ApiGuy($scenario);
$I->wantTo('get a user via API');
$I->amHttpAuthenticated('nata', 'nata');
$I->sendGET('/users/?role=client');
$I->seeResponseCodeIs(200);
$I->seeResponseIsJson();
$I->seeResponseContainsJson(array('role' => 'client'));
$I->dontSeeResponseContainsJson(array('role' => 'admin'));
$I->dontSeeResponseContainsJson(array('role' => 'photographer'));
