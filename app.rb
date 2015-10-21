#!/usr/bin/env ruby
#encoding=utf-8

require 'json'
require 'grape'

module Git
  module Webhook
    class R10K < Grape::API
      format :json

      resource :push do
        desc "run r10k"
        put do
          if params['repository']['name'] == 'environments'
            `/opt/puppetlabs/puppet/bin/r10k deploy environment -vp`
            "ran r10k"
          else
            "no action taken for params: #{params}"
          end
        end
      end
    end
  end
end
