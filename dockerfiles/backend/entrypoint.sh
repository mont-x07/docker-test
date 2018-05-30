#!/bin/sh
govendor sync
govendor add +external
fresh
