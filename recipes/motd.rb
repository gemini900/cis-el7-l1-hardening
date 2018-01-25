#
# Cookbook Name:: cis-el7-l1-hardening
# Recipe:: motd
#
# Copyright (c) 2017 Chef Software

# 1.7.1.1_Ensure_message_of_the_day_is_configured_properly: Ensure message of the day is configured properly (expected "" to match /(\v|\r|\m|\s|\S)/
file '/etc/motd' do
  content 'This system is managed by Chef and Steve Brodie.
'
  mode '0644'
  only_if { ::File.empty?('/etc/motd') }
end
