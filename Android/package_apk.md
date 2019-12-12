[应用打包](https://zhuanlan.zhihu.com/p/51583507)

# faq
- JKS 密钥库使用专用格式。建议使用 "keytool -importkeystore -srckeystore /home/gog/app/hello.jks -destkeystore /home/gog/app/hello.jks -deststoretype pkcs12" 迁移到行业标准格式 PKCS12

```
$ keytool -importkeystore -srckeystore /home/gog/app/hello.jks -destkeystore /home/gog/app/hello.jks -deststoretype pkcs12
```
