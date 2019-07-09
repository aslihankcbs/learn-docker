# learn-docker

ASP.NET Core 2.1 üzerinde basit bir docker uygulaması.

Windows üzerinde build etmek için;
* Powershell de Dockerfile'in bulunduğu klasöre gelip: 
<code> docker build -t learndocker . </code>
 komutunu giriniz. 
* docker images komutu ile learndocker isminde bir image oluşturulduğunu görüntüleyebilirsiniz.
* Oluşturulan image dan bir container yaratmak için
<code> docker run -d -p 15001:80 --name dc1 learndocker </code> komutunu giriniz.
* <code> docker ps </code> komutuyla yada Kitematic üzerinden container'ı görebilirsiniz.
* localhost:15001/api/values derseniz uygulamayı tarayıcınızdan görüntüleyebilirsiniz.
 
