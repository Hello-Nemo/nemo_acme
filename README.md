## 安装 acme.sh

`wget https://get.acme.sh  -O acme.sh`

`base acme.sh` 
> 提示 base 命令不存在,可以使用 `sh acme.sh `

这样就已经安装好了acme.sh脚本，具体动作：

安装文件和配置文件都在home目录下，也就是 ~/.acme.sh/
创建一个 bash alias ， alias acme.sh='~/.acme.sh/acme.sh' ，重新打开终端后直接输入 acme.sh 就可以快速方便地使用这个脚本
整个安装过程对环境无污染，所有新文件仅限 ~/.acme.sh/ 目录内。
## [DNSPOD](https://www.dnspod.cn) 申请

申请:API TOKEN

设置环境变量
```
export DP_Id="id"  
export DP_Key="token"
```
## acme.sh 生成证书
> 提前修改 `nginx` 配置 
> Let’s Encrypt 证书的有效期是90天，官方推荐的方式是脚本自动化续签。acme.sh的实现方式是，对，你不用进行任何设置，acme.sh 会自动在80天后续签，一个键都不用敲！

```
acme.sh  --installcert  -d  wzili.com  \
--key-file /etc/pki/nginx/wzili.com.key  \
--fullchain-file /etc/pki/nginx/private/wzili.com.crt  \
--reloadcmd "service nginx force-reload"
```

## acme.sh 自动更新自身

> Let’s Encrypt 一直处于高速发展的状态，每隔一段时间都会添加新的特性，而acme.sh也会随着官方不断更新，所以保持acme.sh更新是很有必要的，而acme.sh也提供了自动升级的功能：

手动升级：acme.sh --upgrade

自动升级：acme.sh --upgrade --auto-upgrade

关闭自动升级：acme.sh --upgrade --auto-upgrade 0
