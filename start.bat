@echo off
mode con cols=100 lines=30
color 3f
title DBDocTool���ݿ��ĵ��Զ����ɹ���
rem ��������
set dbtype=
set dbhost=
set dbport=
set dbname=
set dbuser=
set dbpasswd=
set dbschema=
set docpath=
echo DBDocTool���ݿ��ĵ��Զ����ɹ���
echo -------------------------------
echo ����ο���http://git.oschina.net/xirb/Dbdoctool
echo ����Ŀ���������£��ƻ��ṩ����ģ�棬ʵ���Զ���ģ�棬֧�ֵ����������ɣ��������Ա��д���ݿ��ĵ�
echo �����ݿ��ṹ��Ϣת��Ϊ���ݿ��ĵ�
echo ====================================================================================================
echo ���ݿ����ͣ�A��Mysql B��SQL Server C��Oracle D��DB2 E��PostgreSQL
set /p dbtype=��ѡ�����ݿ����ͣ�
rem ����õ���������Ϣ
echo ��ѡ������ݿ������ǣ�%dbtype%
echo ====================================================================================================
set /p dbhost=���ݿ�IP��
set /p dbport=���ݿ�˿ڣ�
set /p dbname=���ݿ����ƣ�
set /p dbuser=���ݿ��û�����
set /p dbpasswd=���ݿ����룺
if "%dbtype%"=="C" set /p dbschema=���ݿ�ģʽ��
if "%dbtype%"=="D" set /p dbschema=���ݿ�ģʽ��
if "%dbtype%"=="E" set /p dbschema=���ݿ�ģʽ��
set /p docpath=�ĵ�����·����
echo ��������......
if "%dbschema%"=="" (db_doc -h %dbhost% -d %dbname% -u %dbuser% -p %dbpasswd% -P %dbport% --path %docpath%) else (db_doc -h %dbhost% -d %dbname% -u %dbuser% -p %dbpasswd% -P %dbport% -s %dbschema% --path %docpath%)
pause
