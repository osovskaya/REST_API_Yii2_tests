<?php

//DELETE http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('delete a user via API');
$I->amHttpAuthenticated('nata', 'nata');
$I->sendDELETE('/users/1');
$I->seeResponseCodeIs(404);
