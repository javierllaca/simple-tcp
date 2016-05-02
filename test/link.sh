#!/bin/sh

SOURCE_IP='209.2.219.180'
SOURCE_PORT='*'

RECEIVING_PORT=41192
SENDING_PORT=41193

DESTINATION_IP='209.2.219.180'
DESTINATION_PORT=41194

test_safe_network() {
    newudpl-1.4/newudpl -vv -i $SOURCE_IP:$SOURCE_PORT -p $RECEIVING_PORT:$SENDING_PORT -o $DESTINATION_IP:$DESTINATION_PORT
}

test_unsafe_network() {
    newudpl-1.4/newudpl -vv -i $SOURCE_IP:$SOURCE_PORT -p $RECEIVING_PORT:$SENDING_PORT -o $DESTINATION_IP:$DESTINATION_PORT -B 1 -L 1 -O 1
}

test_unsafe_network