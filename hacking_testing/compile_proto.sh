#!/bin/bash
protoc -I=../proto/ --python_out=proto_python/ ../proto/**/*.proto
