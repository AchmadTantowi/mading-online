<?php

namespace App\Services;
use App\SocialTwitterAccount;
use App\User;
use Laravel\Socialite\Contracts\User as ProviderUser;

class SocialTwitterAccountService
{
    public function createOrGetUser(ProviderUser $providerUser)
    {
        // dd($providerUser);
        $account = SocialTwitterAccount::whereProvider('twitter')
            ->whereProviderUserId($providerUser->getId())
            ->first();
        // dd($account->getId());
        if (!is_null($account)) {
            return $account->user;
        } else {

            $account = new SocialTwitterAccount([
                'provider_user_id' => $providerUser->getId(),
                'provider' => 'twitter'
            ]);

            // $user = User::whereEmail($providerUser->getEmail())->first();

            // if (!$user) {

                $user = User::create([
                    'email' => $providerUser->getEmail(),
                    'name' => $providerUser->getName(),
                    'avatar' => $providerUser->getAvatar(),
                    'password' => md5(rand(1,10000)),
                ]);
            // }

            $account->user()->associate($user);
            $account->save();

            return $user;
        }
    }
}
