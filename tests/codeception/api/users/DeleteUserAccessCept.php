<?php

//DELETE http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('delete a user via API');
$I->amHttpAuthenticated('client', 'client');
$I->sendDELETE('/users/37');
$I->seeResponseCodeIs(403);

