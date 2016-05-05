<?php

//OPTIONS http://localhost//web/index.php/users/id_пользователя
//OPTIONS http://localhost//web/index.php/users

$I = new ApiGuy($scenario);
$I->wantTo('get options user via API');
$I->amHttpAuthenticated('nata', 'nata');
$I->sendOPTIONS('/users/37');
$I->seeResponseCodeIs(200);
$I->seeHttpHeader('Allow', 'GET, PUT, PATCH, DELETE, HEAD, OPTIONS');
$I->amHttpAuthenticated('nata', 'nata');
$I->sendOPTIONS('/users');
$I->seeResponseCodeIs(200);
$I->seeHttpHeader('Allow', 'GET, PUT, PATCH, DELETE, HEAD, OPTIONS');
