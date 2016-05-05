<?php

//HEAD http://localhost//web/index.php/users/id_пользователя
////HEAD http://localhost//web/index.php/users

$I = new ApiGuy($scenario);
$I->wantTo('get user metadata via API');
$I->amHttpAuthenticated('nata', 'nata');
$I->sendHEAD('/users/37');
$I->seeResponseCodeIs(200);
$I->amHttpAuthenticated('nata', 'nata');
$I->sendHEAD('/users');
$I->seeResponseCodeIs(200);

