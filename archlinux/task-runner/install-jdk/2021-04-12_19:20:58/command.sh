#!/usr/bin/env sh
JDK_DIR="$@" &&

if ! [ -d "$JDK_DIR" ]; then
	echo "Diretório do jdk inválido!" >&2
	exit 1
fi &&

sudo rm -f /usr/bin/java /usr/bin/javac 1>/dev/null 2>&1
sudo ln -s "$JDK_DIR/jre/bin/java" /usr/bin/java &&
sudo ln -s "$JDK_DIR/bin/javac" /usr/bin/javac &&

sudo sed -i 's/^JAVA_HOME=/#JAVA_HOME=/g' /etc/environment &&
sudo sed -i 's/^JRE_HOME=/#JRE_HOME=/g' /etc/environment &&
echo "JAVA_HOME=\"$JDK_DIR\"
JRE_HOME=\"$JDK_DIR/jre\"
" | sudo tee -a /etc/environment &&

echo "Done!"

