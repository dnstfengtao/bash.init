#!/bin/bash
#---------------------------------------------------------------------------
# Author : Finley Feng
# Description : Bash Environment startup configuration
# Date : 2015-04-11
#---------------------------------------------------------------------------
MAC=Darwin
Linux=Linux
currentSystem=$(uname -s)

#---------------------------------------------------------------------------
# Set Java Relatied Environment
#---------------------------------------------------------------------------
JAVA_HOME=$(/usr/libexec/java_home)
PATH=$PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin
export JAVA_HOME
export CLASSPATH=.:$JAVA_HOME
export CLASSPATH=$JAVA_HOME/lib:$CLASSPATH
export PATH
#---------------------------------------------------------------------------
# Set Maven Relatied Environment
#---------------------------------------------------------------------------
MAVEN_HOME=/opt/apache/apache-maven-3.3.3
PATH=$PATH:$MAVEN_HOME/bin
export MAVEN_HOME
export PATH
#---------------------------------------------------------------------------
# Set Ant Relatied Environment
#---------------------------------------------------------------------------
ANT_HOME=/usr/share/apache-ant-1.9.4
PATH=$PATH:$ANT_HOME/bin
export ANT_HOME
export PATH
#---------------------------------------------------------------------------
# Set MySql Relatied Environment
#---------------------------------------------------------------------------
MYSQL_HOME=/usr/local/mysql
PATH=$PATH:$MYSQL_HOME/bin
export MYSQL_HOME
export PATH
#---------------------------------------------------------------------------
# Set Gradle Related Environment
#---------------------------------------------------------------------------
GRADLE_HOME=/usr/share/gradle-2.3
PATH=$PATH:$GRADLE_HOME/bin
export GRADLE_HOME
export PATH
#---------------------------------------------------------------------------
# Set Groovy Related Environment
#---------------------------------------------------------------------------
GROOVY_HOME=/usr/share/groovy-2.4.3
PATH=$PATH:$GROOVY_HOME/bin
export GROOVY_HOME
export PATH
#---------------------------------------------------------------------------
# Set Tomcat Home Environment
#---------------------------------------------------------------------------
TOMCAT_HOME=/opt/apache/apache-tomcat-8.0.27
PATH=$PATH:$TOMCAT_HOME/bin
export TOMCAT_HOME
export PATH
#---------------------------------------------------------------------------
# Solr Home
#---------------------------------------------------------------------------
SOLR_HOME=/usr/share/solr-5.2.1
PATH=$PATH:$SOLR_HOME/bin
export SOLR_HOME
export PATH
#----------------------------------------------------------------------------
# Cobertura Home
#----------------------------------------------------------------------------
COBERTURA_HOME=/opt/cobertura-2.1.1
PATH=$PATH:$COBERTURA_HOME
export COBERTURA_HOME
export PATH
#---------------------------------------------------------------------------
# Define Customized alias configuration
#---------------------------------------------------------------------------
if [ $currentSystem = $MAC ]; then
    alias ls="ls -G"
    alias ll="ls -la"
elif [ $currentSystem = $Linux ]; then
    alias ls="ls --color=auto"
    alias ll="ls -la"
fi
alias grep="grep --color"
alias rm="rm -i"
alias mv="mv -i"
#---------------------------------------------------------------------------
# Define Customized man page
#---------------------------------------------------------------------------
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}

#----------------------------------------------------------------------------
# Define git enhancement configuration
#----------------------------------------------------------------------------
source ~/.git-source/contrib/completion/git-completion.bash

#----------------------------------------------------------------------------
# Define python about configuration
#----------------------------------------------------------------------------


# ///: end
