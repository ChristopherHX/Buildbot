apt-get update
              apt-get install -y lsb-release sudo curl cmake make clang
              sudo cp ldd /usr/bin/ldd
              sudo chmod +x /usr/bin/ldd
              sudo dpkg --add-architecture armhf
              sudo dpkg --add-architecture arm64
              sudo dpkg --add-architecture i386
              # sudo bash -c "echo 'deb [arch=amd64,i386] http://archive.ubuntu.com/ubuntu/ '$(lsb_release -c -s)' main universe multiverse restricted' > /etc/apt/sources.list"
              # sudo bash -c "echo 'deb [arch=amd64,i386] http://archive.ubuntu.com/ubuntu/ '$(lsb_release -c -s)-updates' main universe multiverse restricted' >> /etc/apt/sources.list"
              # sudo bash -c "echo 'deb [arch=amd64,i386] http://archive.ubuntu.com/ubuntu/ '$(lsb_release -c -s)-backports' main universe multiverse restricted' >> /etc/apt/sources.list"
              # sudo bash -c "echo 'deb [arch=amd64,i386] http://archive.ubuntu.com/ubuntu/ '$(lsb_release -c -s)-security' main universe multiverse restricted' >> /etc/apt/sources.list"
              # sudo bash -c "echo 'deb [arch=arm64,armhf] http://ports.ubuntu.com/ubuntu-ports/ '$(lsb_release -c -s)' main universe multiverse restricted' >> /etc/apt/sources.list"
              # sudo bash -c "echo 'deb [arch=arm64,armhf] http://ports.ubuntu.com/ubuntu-ports/ '$(lsb_release -c -s)-updates' main universe multiverse restricted' >> /etc/apt/sources.list"
              # sudo bash -c "echo 'deb [arch=arm64,armhf] http://ports.ubuntu.com/ubuntu-ports/ '$(lsb_release -c -s)-backports' main universe multiverse restricted' >> /etc/apt/sources.list"
              # sudo bash -c "echo 'deb [arch=arm64,armhf] http://ports.ubuntu.com/ubuntu-ports/ '$(lsb_release -c -s)-security' main universe multiverse restricted' >> /etc/apt/sources.list"
              sudo apt-get update -y
              # sudo apt remove '*-dev'
              sudo apt-get install -y libc6:arm64 libc6:armhf
              ldd -v /lib/aarch64-linux-gnu/libdl.so.2
              ldd -v /lib/arm-linux-gnueabihf/libc.so.6
              # sudo apt-get install -y qttools5-dev g++-aarch64-linux-gnu libstdc++-8-dev:arm64 libssl-dev:arm64 libcurl4-openssl-dev:arm64 libuv1-dev:arm64 libzip-dev:arm64 libprotobuf-dev:arm64 protobuf-compiler qtbase5-dev:arm64 qtwebengine5-dev:arm64 qtdeclarative5-dev:arm64 libqt5svg5-dev:arm64 qml-module-qtquick2:arm64 qml-module-qtquick-layouts:arm64 qml-module-qtquick-controls:arm64 qml-module-qtquick-controls2:arm64 qml-module-qtquick-window2:arm64 qml-module-qtquick-dialogs:arm64 qml-module-qt-labs-settings:arm64 qml-module-qt-labs-folderlistmodel:arm64
              curl -L https://github.com/ChristopherHX/Buildbot/releases/download/v0.0.0/mcpelauncher-ui-qt --output mcpelauncher-ui-qt
              chmod +x mcpelauncher-ui-qt
              ldd -v mcpelauncher-ui-qt || echo $?
              ./mcpelauncher-ui-qt || echo $?
