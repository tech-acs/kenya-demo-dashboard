<?php

use Uneca\Chimera\Models\User;

Route::post('login-demo', function () {
    $demoUser = User::where('email', env('GUEST_ACCOUNT', 'guest@example.com'))->firstOrFail();
    Auth::login($demoUser, true);
    return redirect()->intended('/home');
})->name('login.demo');
