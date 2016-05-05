<?php

//GET http://localhost//web/index.php/users
//GET http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('get a user via API');
$I->amHttpAuthenticated('nata', 'nata');
$I->sendPATCH('/users', ['param' => 'test']);
$I->seeResponseCodeIs(405);

