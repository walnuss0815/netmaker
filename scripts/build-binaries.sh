#!/bin/bash
cd netclient
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o build/netclient main.go
env CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go build -o build/netclient-arm5 main.go
env CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=6 go build -o build/netclient-arm6 main.go
env CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=7 go build -o build/netclient-arm7 main.go
env CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o build/netclient-arm64 main.go
env CGO_ENABLED=0 GOOS=linux GOARCH=mipsle go build -ldflags "-s -w" -o build/netclient-mipsle main.go && upx build/netclient-mipsle
env CGO_ENABLED=0 GOOS=linux GOARCH=mips go build -ldflags "-s -w" -o build/netclient-mips main.go && upx build/netclient-mips
env CGO_ENABLED=0 GOOS=freebsd GOARCH=amd64 go build -o build/netclient-freebsd main.go
env CGO_ENABLED=0 GOOS=freebsd GOARCH=arm GOARM=5 go build -o build/netclient-freebsd-arm5 main.go
env CGO_ENABLED=0 GOOS=freebsd GOARCH=arm GOARM=6 go build -o build/netclient-freebsd-arm6 main.go
env CGO_ENABLED=0 GOOS=freebsd GOARCH=arm GOARM=7 go build -o build/netclient-freebsd-arm7 main.go
env CGO_ENABLED=0 GOOS=freebsd GOARCH=arm64 go build -o build/netclient-freebsd-arm64 main.go
env CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o build/netclient-darwmin main.go
