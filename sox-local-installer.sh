INSTALL_DIR=$1

wget https://nchc.dl.sourceforge.net/project/sox/sox/14.4.2/sox-14.4.2.tar.gz
tar xvfz sox-14.4.2.tar.gz
cd sox-14.4.2
./configure --prefix=$INSTALL_DIR
make && make install

echo "export PATH='$INSTALL_DIR/bin:$PATH'" >> ~/.bashrc
