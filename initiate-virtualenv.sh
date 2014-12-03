#!/bin/bash
#
# by jcda@roo.red
# initialisation of the directory of the python 3.4 and django 1.7 environment
# this script was created to automate the process for the installation on 
# Ubuntu 14.04 LTS 
# Dec 03 2014
#
# variables : PROJECTNAME and mydir
PROJECTNAME=bogusproject
MYPROJ=supersite
PATHTOPROJECT=~/django

/usr/bin/pyvenv-3.4 $PROJECTNAME --without-pip
cd $PROJECTNAME
source $PROJECTNAME/bin/activate
mkdir pypioffline
cd pypioffline
curl -O https://pypi.python.org/packages/source/s/setuptools/setuptools-1.1.6.tar.gz
tar -xzf setuptools-1.1.6.tar.gz
cd setuptools-1.1.6
../../bin/python ez_setup.py
easy_install pip
pip install django 
cd ../..
#
# this is the edge installation not required for the moment
#django-admin.py startproject --template=https://github.com/arocks/edge/archive/master.zip --extension=py,md,html,env $MYPROJ
#cd $MYPROJ
#pip install -r requirements.txt
#cd src
#python manage.py migrate

