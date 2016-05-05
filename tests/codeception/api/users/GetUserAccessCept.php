<?php

//GET http://localhost//web/index.php/users
//GET http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('get a user via API');
$I->amHttpAuthenticated('test@mail.com', 'test');
$I->sendGET('/users/37');
$I->seeResponseCodeIs(403);
$I->amHttpAuthenticated('test@mail.com', 'test');
$I->sendGET('/users');
$I->seeResponseCodeIs(403);
