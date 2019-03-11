# learn-docker

ASP.NEt Core 2.1 üzerinde basit bir docker uygulaması.

Windows üzerinde build etmek için;
*Powershell de Dockerfile'in bulunduğu klasöre gelip: 
 docker build -t learndocker . 
 komutunu giriniz. 

*docker images komutu ile learndocker isminde bir image oluşturuluğunda görüntüleyebilirsiniz.
*Oluşturulan image dan bir container yaratmak için
 docker run -d -p 15001:80 --name dc1 learndocker komutunu giriniz.
 *docker ps komutuyla yada Kitematic üzerinden container'ı görebilirsiniz.
 *localhost:15001/api/values derseniz tarayıcınızdan görüntüleyebilirsiniz.
 
