<?php

//PUT http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('update a user via API');
$I->amHttpAuthenticated('test@mail.com', 'test');
$I->haveHttpHeader('Content-Type', 'application/x-www-form-urlencoded');
$I->sendPUT('/users/37', ['phone' => '111']);
$I->seeResponseCodeIs(403);

