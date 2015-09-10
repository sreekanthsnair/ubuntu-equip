#!/bin/sh

#
# Ubuntu Equip 
#  Apache Ant Equip
# Licence: MIT
# based on equipe_ant.sh

wget http://downloads.egovernments.org/wildfly-9.0.0.Final.zip

sudo unzip wildfly-9.0.0.Final.zip -d /opt

sudo ln -s /opt/wildfly-9.0.0.Final.zip /opt/wildfly

rm wildfly-9.0.0.Final.zip
