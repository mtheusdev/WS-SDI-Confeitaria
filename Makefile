# GNU Makefile
JAR=/usr/local/jdk1.8.0_131/bin/jar
JAVA=/usr/local/jdk1.8.0_131/bin/java
JAVAC=/usr/local/jdk1.8.0_131/bin/javac

JFLAGS = -g
.SUFFIXES: MYC/.java .class
.java.class:
	$(JAVAC) $(JFLAGS) MYC\$*.java

default: Client ServerPublisher WSCoberturasServerImpl WSCoberturasServer WSRecheiosServerImpl WSRecheiosServer WSPandeloServerImpl WSPandeloServer WSCortesServerImpl WSCortesServer WSRecepcaoServerImpl WSRecepcaoServer

Client: MYC/Client.java
	$(JAVAC) $(JFLAGS) MYC/Client.java

WSRecepcaoServerImpl: MYC/WSRecepcaoServerImpl.java
	$(JAVAC) $(JFLAGS) MYC/WSRecepcaoServerImpl.java

WSRecepcaoServer: MYC/WSRecepcaoServer.java
	$(JAVAC) $(JFLAGS) MYC/WSRecepcaoServer.java

WSRecheiosServerImpl: MYC/WSRecheiosServerImpl.java
	$(JAVAC) $(JFLAGS) MYC/WSRecheiosServerImpl.java

WSRecheiosServer: MYC/WSRecheiosServer.java
	$(JAVAC) $(JFLAGS) MYC/WSRecheiosServer.java

WSCoberturasServerImpl: MYC/WSCoberturasServerImpl.java
	$(JAVAC) $(JFLAGS) MYC/WSCoberturasServerImpl.java

WSCoberturasServer: MYC/WSCoberturasServer.java
	$(JAVAC) $(JFLAGS) MYC/WSCoberturasServer.java

WSCortesServerImpl: MYC/WSCortesServerImpl.java
	$(JAVAC) $(JFLAGS) MYC/WSCortesServerImpl.java

WSCortesServer: MYC/WSCortesServer.java
	$(JAVAC) $(JFLAGS) MYC/WSCortesServer.java

WSPandeloServerImpl: MYC/WSPandeloServerImpl.java
	$(JAVAC) $(JFLAGS) MYC/WSPandeloServerImpl.java

WSPandeloServer: MYC/WSPandeloServer.java
	$(JAVAC) $(JFLAGS) MYC/WSPandeloServer.java

ServerPublisher: MYC/ServerPublisher.java
	$(JAVAC) $(JFLAGS) MYC/ServerPublisher.java

clean:
	rm -f MYC/*.class
