# codeplayerbox-cert
Certification for CodePlayerBox

## 脚本
1. create-root-ca.sh

用来创建自签名的根证书，生成的根证书 codeplayerbox-root.pem 需要安装到浏览器客户端上。客户端上要信任该证书的加密套接字协议层（SSL）和X.509基本策略。

2. create-server-cert.sh

用来创始服务器端所使用的证书。
