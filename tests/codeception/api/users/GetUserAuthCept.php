<?php

//GET http://localhost//web/index.php/users
//GET http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('get a user via API');
$I->amHttpAuthenticated('nata1', 'nata1');
$I->sendGET('/users/37');
$I->seeResponseCodeIs(401);
$I->amBearerAuthenticated('token');
$I->sendGET('/users/37');
$I->seeResponseCodeIs(401);
