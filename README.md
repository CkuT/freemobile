# Freemobile gem API

Freemobile gem allows you to easily use Freemobile API. 
You can get an API key on your account manager : https://mobile.free.fr/moncompte

## Installation

    $ gem install freemobile

## Usage

    require 'freemobile'
    account_id = "123456789"
    password   = "s3cr37"
    myfreemobileobject = Freemobile::API.new(account_id, password)
    myfreemobileobject.send("Hello world !")

## Contributing

This is a minimal version, do not hesitate to contribute !
