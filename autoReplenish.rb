#!/usr/bin/ruby

# Goal: replenish parking meter by a given amount of time, at a given time

# Command line arguments:
# 0: what parking meter to replenish
# 1: how many minutes to replenish for

#require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC7e13cf3807d51eb5eed7a28ee2eb450c'
auth_token = '07a35bf73fee891d8af303fc7ac17102'

@client = Twilio::REST::Client.new account_sid, auth_token
@account = @client.account

=begin
#working way to send a text message
@client.account.sms.messages.create(
                                    :from => '+14155992671', # trial #
                                    :to => '+14152382438',
                                    :body => 'test text!'
)
=end

#note: need a call handler URL as requirement of making the call
@account.calls.create({
  :from => '+15106936860',#'+15109240329', #trial sandbox #
  :to => '+14154415792',
  :url => 'http://floating-wind-2082.herokuapp.com/twilio', #this needs to have the logic of dialing more numbers
  :SendDigits => "*ww5106936860ww12345ww12345ww20ww123wwwwwwwwwwwwwwwww"
})
