<?php

//DELETE http://localhost//web/index.php/users/id_пользователя

$I = new ApiGuy($scenario);
$I->wantTo('delete a user via API');
$I->sendDELETE('/users/65');
$I->seeResponseCodeIs(401);
