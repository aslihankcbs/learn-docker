# learn-docker

ASP.NEt Core 2.1 üzerinde basit bir docker uygulaması.

Windows üzerinde build etmek için;
1.Powershell de Dockerfile'in bulunduğu klasöre gelip: 
 docker build -t learndocker . 
 komutunu giriniz. 

2.docker images komutu ile learndocker isminde bir image oluşturuluğunda görüntüleyebilirsiniz.
3.Oluşturulan image dan bir container yaratmak için
 docker run -d -p 15001:80 --name dc1 learndocker komutunu giriniz.
4.docker ps komutuyla yada Kitematic üzerinden container'ı görebilirsiniz.
5.localhost:15001/api/values derseniz uygulamayı tarayıcınızdan görüntüleyebilirsiniz.
 
