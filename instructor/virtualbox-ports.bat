@echo off
echo Open Registry Server port
VBoxManage controlvm "instructor-machine" natpf1 "tcp-port5000,tcp,,5000,,5000";
echo Open Nexus Server port
VBoxManage controlvm "instructor-machine" natpf1 "tcp-port8081,tcp,,8081,,8081";
echo Open HTTP Server port
VBoxManage controlvm "instructor-machine" natpf1 "tcp-port8082,tcp,,8082,,8082";
echo Open gitlab ports
VBoxManage controlvm "instructor-machine" natpf1 "tcp-port10022,tcp,,10022,,10022";
VBoxManage controlvm "instructor-machine" natpf1 "tcp-port10080,tcp,,10080,,10080";

