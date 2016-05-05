<?php

//GET http://localhost//web/index.php/users
//GET http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('get a user via API');
$I->amHttpAuthenticated('nata', 'nata');
$I->sendGET('/users/1');
$I->seeResponseCodeIs(404);
