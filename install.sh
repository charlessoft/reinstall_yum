#Centos-6.repo
#python-urlgrabber-3.9.1-11.el6.noarch.rpm
#restall_yum.sh
#rhel-source.repo
#yum-3.2.29-73.el6.centos.noarch.rpm
#yum-metadata-parser-1.1.2-16.el6.x86_64.rpm
#yum-plugin-fastestmirror-1.1.30-37.el6.noarch.rpm
#yum-updateonboot-1.1.30-37.el6.noarch.rpm

function install_yum_source()
{
    rpm -aq|grep yum|xargs rpm -e --nodeps
    rpm -e  python-urlgrabber
    cd ./bin/yum;
    rpm -ivh python*
    rpm -ivh yum-*
    cp rhel-source.repo /etc/yum.repos.d

}

install_yum_source


