Aeonic is a command line date/time wrapper for Chronic, which allows natural language parsing of times and dates.

### Installation ###

`gem install aeonic`

This will install globally, and insert the aeonic executable into your path.

### Usage ###

Give *aeonic* a time or date, and the date, time and unix timestamp are returned.

    Time.now   #=> 2012-09-30 20:52:33 +0100

    $ aeonic
    2012-09-30 20:52:33 +0100 : 1349034753

    $ aeonic "now"
    2012-09-30 20:52:33 +0100 : 1349034753

    $ aeonic "2012-09-30 20:52:33"
    2012-09-30 20:52:33 +0100 : 1349034753

    $ aeonic 1349034753
    2012-09-30 20:52:33 +0100 : 1349034753

    $ aeonic "tuesday 5pm"
    2012-10-02 17:00:00 +0100 : 1349193600
