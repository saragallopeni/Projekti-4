# Projekti-4
Ky eshte projekti per menaxhimin e eventeve.Projekti eshte i ndare ne folderin backend ku eshte perdorur prisma dhe express.js dhe ne frontend me angular.
Per ekzekutimin e projektit ne front end => npx ng serve --open.
Per ekzekutimin e projektit ne backend => node app.js
Per ngarkimin e fotove eshte perdorur middleware "FileUpload" ne momentin qe perodruesi i ruan fotot ne databaze ruhet si url me shtimin e 
"emri i fotos + _photo.jpg".
Per cdo foto qe eshte bere upload ne folderin foto, duhet transferuar edhe ne folderin assets te aplikacionit ne angular.
Folderi data ne backend permban te dhenat e bera export nga databaza dhe schema.prisma permban kodin se ne cilen menyre eshte krijuar databaza.
Testimi i endpointave eshte kryer me Postman dhe file i cili permban rezultatet gjindet ne Documentation-and-Postman ne backend.
