#/bin/bash
touch index.html
mkdir -p public/{css,pages,assets/{img,fonts},js,src/scss/modules}
touch public/css/style.css && touch public/js/main.js && touch public/pages/about.html && touch public/src/scss/app.scss && touch public/src/scss/_variables.scss && touch public/src/scss/_fonts.scss
touch public/src/scss/modules/_style.scss && touch public/src/scss/modules/_header.scss && touch public/src/scss/modules/_nav.scss && touch public/src/scss/modules/_main.scss && touch public/src/scss/modules/_footer.scss && touch public/src/scss/modules/_colors.scss && touch public/src/scss/modules/_dimensions.scss && touch public/src/scss/modules/_buttons.scss && touch public/src/scss/modules/_body.scss && touch public/src/scss/modules/_nav.scss
echo "<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <script src="./node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>" > index.html
echo  "@import "../../node_modules/bootstrap/dist/css/bootstrap.min.css"; 
@import "./_variables"; 
@import "./_fonts"; 
@import "./modules_style";" > public/src/scss/app.scss
echo  "@import "./modules_body"; 
@import "./modules_header";
@import "./modules_nav"; 
@import "./modules_main"; 
@import "./modules_footer";" > public/src/scss/modules/_style.scss
touch .gitignore
echo "node_modules" > .gitignore
npm install bootstrap@5.3.2
sass --watch public/src/scss/app.scss:public/css/style.css

