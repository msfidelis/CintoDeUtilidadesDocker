#!/bin/bash

varnishd -f /etc/varnish/default.vcl -s malloc,100M -a 0.0.0.0:80
varnishlog
