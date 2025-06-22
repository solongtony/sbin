#!/usr/bin/env bash

# Use Ruby to host local static files, binding to localhost for security.
ruby -run -e httpd -- . -b 127.0.0.1 -p 8000
