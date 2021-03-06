rm -rf /opt/ANDRAX/bin/chisel
rm -rf /opt/ANDRAX/chisel
go build
cp -Rf chisel /opt/ANDRAX/bin/chisel
GOOS=linux GOARCH=amd64 go build -o chisel_linuxamd64
cp -Rf chisel_linuxamd64 /opt/ANDRAX/chisel
GOOS=darwin GOARCH=amd64 go build -o chisel_darwinamd64
cp -Rf chisel_darwinamd64 /opt/ANDRAX/chisel
GOOS=linux GOARCH=arm go build -o chisel_linuxarm
cp -Rf chisel_linuxarm /opt/ANDRAX/chisel
GOOS=windows GOARCH=386 go build -o chisel_win386.exe
cp -Rf chisel_win386.exe /opt/ANDRAX/chisel

