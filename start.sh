podname=`hostname`
if [ ! -d /data/docker_upload ];then
mkdir -p /data/docker_upload
fi

if [ -d /app/UnixBench/results ];then
rm /app/UnixBench/results -rf 
ln -sv /data/docker_upload/$podname /app/UnixBench/results
fi

/app/UnixBench/Run -c 1 -c 4
