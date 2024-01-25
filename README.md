# Projekti-4 => "EVENT MENAGMENT"

Ky eshte projekti per menaxhimin e eventeve.Projekti eshte i ndare ne folderin backend ku eshte perdorur prisma, express.js, fileupload si dhe nodemailer si dhe ne frontend me angular.

## Ekzekutimi

### Backend 

**1. Instalo Node js**
- npm install -g npm // kjo komande ben download verzionin me te fundit

Kontrollo verzionet :
- node -v
- npm -v
  
- npm init (krijon skedarin => package.json)

**2. Instalo Express**
- npm install express

**3. Instalo FileUpload dhe Nodemailer**
- npm install express-fileupload
- npm install nodemailer

**4. Instalo Prisma**
- npm install @prisma/cli
- npm install @prisma/client sqlite

Krijo nje databaze me emrin eventet ne serverin e sql dhe me pas vazhdo =>

generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "mysql"
  url = "mysql://username:pass@localhost:port/eventet"
}

**5. Gjenero dhe migro prisman**
- npx prisma generate
- npx prisma migrate dev

**6. Per startimin e serverit kalo ne folderin qe permban app.js dhe ekzekuto komanden**
- node app.js
  
### Frontend
**1. Instalo Angular CLI**
- npm install -g @angular/cli

**2. Ekzekutimi**
- npx ng serve --open

## DETAJET E PROJEKTIT

- Per ngarkimin e fotove eshte perdorur middleware "FileUpload" ne momentin qe perodruesi i ruan fotot ne databaze ruhet si url me shtimin e "emri i fotos + _photo.jpg".
- Per cdo foto qe eshte bere upload ne folderin foto, duhet transferuar edhe ne folderin assets te aplikacionit ne angular.
- Folderi data ne backend permban te dhenat e bera export nga databaza dhe schema.prisma permban kodin se ne cilen menyre eshte krijuar databaza.
- Testimi i endpointave eshte kryer me Postman dhe skedari i cili permban rezultatet gjindet ne Documentation-and-Postman ne backend.
