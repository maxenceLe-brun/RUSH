#!/bin/bash
apt-get install sudo
sudo apt-get update
sudo apt-get install ssh -y
sudo apt-get install apache2 -y
sudo apt-get install ufw -y

sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw status

sudo mkdir -p /var/www/testdomain.info/html
sudo chown -R $USER:$USER /var/www/testdomain.info/html
sudo chmod -R /var/www/testdomain.info

#coding part

sudo mkdir -p /var/www/testdomain.info/html/css
sudo chown -R $USER:$USER /var/www/testdomain.info/html/css
sudo mkdir -p /var/www/testdomain.info/html/img
sudo chown -R $USER:$USER /var/www/testdomain.info/html/img

echo '<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Groupe 22 | Accueil</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!--DEBUT HEADER-->
    <header>
    
      <div>
        <nav id="navbar">
            <ul>
                <li><a href="index.html"><img id="logo" src="img/logo.png" alt=""></a></li>
                <li class="active"><a href="index.html">Accueil</a></li>
                <li><a href="groupe.html">Notre Groupe</a></li>
                <li><a href="objectifs.html">Nos Objectifs</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="https://fr-fr.facebook.com/laplateforme.co/" target="_blank"><img class="socmedia" src="img/fb.png" alt=""></a></li>
                <li><a href="https://twitter.com/LaPlateformeIO?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><img class="socmedia" src="img/twt.png" alt=""></a></li>
            </ul>
        </nav>
       </div>
    </header>
    <!--FIN HEADER-->


    <main>
        <section class="presentation">
            <h1>Le Groupe 22</h1>
            <p>Le groupe 22 est un groupe de cinq apprenants, crée par Thomas Fornerone, composé de Thomas Rugani, Maxence Le Brun, Djibril Zeroual et Jean-Emmanuel Gallo. <br>
            Le groupe travaille sur le projet Rush de La Plateforme.</p>
           <a class="btn" href="groupe.html">Voir notre groupe</a>
        </section>

        <div id="bckg-img"></div>

        <section class="presentation">
            <h1>Nos objectifs</h1>
            <p>Nos objectifs consistent à réaliser le projet du Rush donné par La Plateforme. 
            Nous avons plusieurs projets à réaliser, divisés en cinq tâches, chacune étant assignées à un membre du groupe.</p>
            <a class="btn" href="objectifs">Nos Objectifs</a>
        </section>
    </main>

    <!--DEBUT FOOTER-->
    <footer>
    <div class="navfooter">
        <ul id="navfoot">
            <li><a class="navfoot" href="index.html">Accueil</a></li>
            <li><a class="navfoot" href="groupe.html">Notre Groupe</a></li>
            <li><a class="navfoot" href="objectifs.html">Nos Objectifs</a></li>
            <li><a class="navfoot" href="contact.html">Contact</a></li>
        </ul>
    </div>    
    <div id="navsm">
        <a href="https://fr-fr.facebook.com/laplateforme.co/" target="_blank"><img class="socmedia" src="img/fb.png" alt=""></a>
        <a href="https://twitter.com/LaPlateformeIO?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><img class="socmedia" src="img/twt.png" alt=""></a>
        <img class="val" src="http://jigsaw.w3.org/css-validator/images/vcss" alt="CSS Valide !">
    </div>
    </footer>
    <!--FIN FOOTER-->
</body>
</html>' >> /var/www/testdomain.info/html/index.html
echo '<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Groupe 22 | Accueil</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!--DEBUT HEADER-->
    <header>
    
      <div>
        <nav id="navbar">
            <ul>
                <li><a href="index.html"><img id="logo" src="img/logo.png" alt=""></a></li>
                <li><a href="index.html">Accueil</a></li>
                <li class="active"><a href="groupe.html">Notre Groupe</a></li>
                <li><a href="objectifs.html">Nos Objectifs</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="https://fr-fr.facebook.com/laplateforme.co/" target="_blank"><img class="socmedia" src="img/fb.png" alt=""></a></li>
                <li><a href="https://twitter.com/LaPlateformeIO?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><img class="socmedia" src="img/twt.png" alt=""></a></li>
            </ul>
        </nav>
       </div>
    </header>
    <!--FIN HEADER-->

    <main>
        <div class="title">Notre Groupe</div>
        <div id="group">
        <div id="bckg-img2"></div>
            <section class="profil">
                <img src="img/member.png" alt="">
                <h1>Thomas Fornerone</h1>
                <p>Le fondateur de notre groupe de travail, ainsi que le chef de projet.</p>
            </section>

            <section class="profil">
                <img src="img/member.png" alt="">
                <h1>Thomas Rugani</h1>
                <p>Un des membres les plus compétants dans la catégorie système.</p>
            </section>

            <section class="profil">
                <img src="img/member.png" alt="">
                <h1>Maxence Le Brun</h1>
                <p>Le coordinateur de notre équipe, il intervient sur toutes les parties du projet.</p>
            </section>

            <section class="profil">
                <img src="img/member.png" alt="">
                <h1>Djibril Zeroual</h1>
                <p>Il gère la partie client.</p>
            </section>

            <section class="profil">
                <img src="img/member.png" alt="">
                <h1>Jean-Emmanuel Gallo</h1>
                <p>Créateur du site web du groupe. Ce site représente l identité de notre projet.</p>
            </section>
        </div>
    </main>


      <!--DEBUT FOOTER-->
    <footer>
        <div class="navfooter">
            <ul id="navfoot">
                <li><a class="navfoot" href="index.html">Accueil</a></li>
                <li><a class="navfoot" href="groupe.html">Notre Groupe</a></li>
                <li><a class="navfoot" href="objectifs.html">Nos Objectifs</a></li>
                <li><a class="navfoot" href="contact.html">Contact</a></li>
            </ul>
        </div>    
        <div id="navsm">
            <a href="https://fr-fr.facebook.com/laplateforme.co/" target="_blank"><img class="socmedia" src="img/fb.png" alt=""></a>
        <a href="https://twitter.com/LaPlateformeIO?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><img class="socmedia" src="img/twt.png" alt=""></a>
            <img class="val" src="http://jigsaw.w3.org/css-validator/images/vcss" alt="CSS Valide !">
        </div>
        </footer>
        <!--FIN FOOTER-->
    </body>
    </html>' >> /var/www/testdomain.info/html/groupe.html
echo '<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Groupe 22 | Accueil</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!--DEBUT HEADER-->
    <header>
    
      <div>
        <nav id="navbar">
            <ul>
                <li><a href="index.html"><img id="logo" src="img/logo.png" alt=""></a></li>
                <li class="active"><a href="index.html">Accueil</a></li>
                <li><a href="groupe.html">Notre Groupe</a></li>
                <li><a href="objectifs.html">Nos Objectifs</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="https://fr-fr.facebook.com/laplateforme.co/" target="_blank"><img class="socmedia" src="img/fb.png" alt=""></a></li>
                <li><a href="https://twitter.com/LaPlateformeIO?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><img class="socmedia" src="img/twt.png" alt=""></a></li>
            </ul>
        </nav>
       </div>
    </header>
    <!--FIN HEADER-->

    <main>
        <div class="container">
            <form action="action_page.php">
          
              <label for="nom">Nom</label>
              <input type="text" id="nom" name="Nom" placeholder="Nom">
          
              <label for="prénom">Prénom</label>
              <input type="text" id="prénom" name="prénom" placeholder="Prénom">
          
          
              <label for="sujet">Sujet</label>
              <textarea id="sujet" name="subject" placeholder="Nous écrire" style="height:200px"></textarea>
          
              <input type="submit" value="soumettre">
          
            </form>
          </div>
    </main>

    <!--DEBUT FOOTER-->
    <footer>
        <div class="navfooter">
            <ul id="navfoot">
                <li><a class="navfoot" href="index.html">Accueil</a></li>
                <li><a class="navfoot" href="groupe.html">Notre Groupe</a></li>
                <li><a class="navfoot" href="objectifs.html">Nos Objectifs</a></li>
                <li><a class="navfoot" href="contact.html">Contact</a></li>
            </ul>
        </div>    
        <div id="navsm">
            <a href="https://fr-fr.facebook.com/laplateforme.co/" target="_blank"><img class="socmedia" src="img/fb.png" alt=""></a>
            <a href="https://twitter.com/LaPlateformeIO?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><img class="socmedia" src="img/twt.png" alt=""></a>
            <img class="val" src="http://jigsaw.w3.org/css-validator/images/vcss" alt="CSS Valide !">
        </div>
        </footer>
        <!--FIN FOOTER-->
    </body>
    </html>' >> /var/www/testdomain.info/html/contact.html
echo '<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Groupe 22 | Accueil</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!--DEBUT HEADER-->
    <header>
    
      <div>
        <nav id="navbar">
            <ul>
                <li><a href="index.html"><img id="logo" src="img/logo.png" alt=""></a></li>
                <li><a href="index.html">Accueil</a></li>
                <li><a href="groupe.html">Notre Groupe</a></li>
                <li class="active"><a href="objectifs.html">Nos Objectifs</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="https://fr-fr.facebook.com/laplateforme.co/" target="_blank"><img class="socmedia" src="img/fb.png" alt=""></a></li>
                <li><a href="https://twitter.com/LaPlateformeIO?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><img class="socmedia" src="img/twt.png" alt=""></a></li>
            </ul>
        </nav>
       </div>
    </header>
    <!--FIN HEADER-->
    <main>
        <div class="title">Nos Objectifs</div>
        <p class="comment">nous avons pour mission de réaliser les taches suivantes :</p>
        <div id="group">
            <section class="profil">
                <h2> <strong>1)</strong> Créer un serveur Getaway</h2>
                <p>Il nous faut créer un serveur Getaway pouvant distribuer internet dans notre réseau</p>
            </section>

            <section class="profil">
                <h2> <strong>2)</strong> Créer un serveur DNS et DHCP</h2>
                <p>Ils contiendra le nom de domaine et un service d adressage automatique des IPs</p>
            </section>

            <section class="profil">
                <h2> <strong>3)</strong> Un serveur Web</h2>
                <p>Un serveur Web nommé "Webserveur" qui contiendra notre site vitrine</p>
            </section>

            <section class="profil">
                <h2> <strong>4)</strong> Un serveur FTP</h2>
                <p>Un serveur FTP qui permettra de traiter des fichiers depuis la machine cliente</p>
            </section>

            <section class="profil">
                <h2> <strong>5)</strong> Une machine cliente</h2>
                <p>Qui possèdera son propre environnement graphique et qui sera capable d utiliser les autres services</p>
            </section>
        </div>
    </main>

     <!--DEBUT FOOTER-->
     <footer>
        <div class="navfooter">
            <ul id="navfoot">
                <li><a class="navfoot" href="index.html">Accueil</a></li>
                <li><a class="navfoot" href="groupe.html">Notre Groupe</a></li>
                <li><a class="navfoot" href="objectifs.html">Nos Objectifs</a></li>
                <li><a class="navfoot" href="contact.html">Contact</a></li>
            </ul>
        </div>    
        <div id="navsm">
            <a href="https://fr-fr.facebook.com/laplateforme.co/" target="_blank"><img class="socmedia" src="img/fb.png" alt=""></a>
        <a href="https://twitter.com/LaPlateformeIO?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" target="_blank"><img class="socmedia" src="img/twt.png" alt=""></a>
            <img class="val" src="http://jigsaw.w3.org/css-validator/images/vcss" alt="CSS Valide !">
        </div>
        </footer>
        <!--FIN FOOTER-->
    </body>
    </html>' >> /var/www/testdomain.info/html/objectifs
mkdir /var/www/testdomain.info/html/css
mkdir /var/www/testdomain.info/html/img
echo '* {
    box-sizing: border-box;
}

body {
    margin: 0;
    background-color: rgb(199, 199, 255);
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
  }

  a {
    text-decoration-line: none;
    text-align: center;
  }

#logo {
    height: 65px;
    margin-top: -26px;
}

li {
    float:left;
    height: 43px;

  }
  
li a {
    display: flex;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    float: left;
    margin-left: 0px;
  }

li a:hover {
    background-color: rgb(255, 255, 255);
    color: blue;
  }

.active {
    background-color: blue;
  }



.social {
    align-items: flex-start;
}

.socmedia {
    height: 40px;
    width: 40px;
    padding: 0;
    float: right;
    margin-top: -13px;
}

footer {
  background-color: #333;
  margin-bottom: 0%;
}

#navfoot {
  width: 100%;
  list-style: none;
  display: grid;
  text-align: center;
  justify-items: center;
}

main {
  background-color:rgb(199, 199, 255);
}

.presentation {
  margin-left: 20px;
  margin-right: 20px;
  margin-bottom: 30px;
  text-align: center;
}

h1 {
  font-size: 35px;
  text-align: initial;
}

p {
  font-size: 30px;
  text-align: justify;
}

.button {
  background-color: white;
  color: blue;
  height: 60px;
  font-size: 35px;
  border-radius: 10% 10% / 10% 10%;
  text-decoration-line: none;
}

#bckg-img {
  background-image: url('https://www.lepoint.fr/images/2022/03/28/22983576lpw-22985384-libre-jpg_8657181.jpg');
  background-position: center center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  height: 500px;
}

.btn {
  background-color: white;
  color: blue;
  height: 60px;
  font-size: 35px;
  border-radius: 10% 10% / 10% 10%;
  text-decoration-line: none;
}

.profil {
  margin-left: 20px;
  margin-right: 20px;
  margin-bottom: 30px;
  justify-content: center;
}


#navsm {
  align-items: center;
}

.title {
  font-size: 40px;
  text-align: center;
  text-decoration-line: underline;
}

#group {
  margin-top: 20px;
}

#bckg-img2 {
  background-image: url('https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHdlYiUyMGRldmVsb3BlcnxlbnwwfHwwfHw%3D&w=1000&q=80');
  background-position: center center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  height: 250px;
}


h2 {
  text-align: center;
  color: white;
  border: 3ch;
  text-shadow: 0 0 6px #000000, 0 0 10px #000000;

}

.comment {
  font-size: 20px;
  text-align: center;
}

input[type=text], select, textarea {
  width: 100%; 
  padding: 12px; 
  border: 1px solid rgb(0, 4, 255); 
  border-radius: 9px; 
  box-sizing: border-box; 
  margin-top: 16px;
  margin-bottom: 16px; 
  resize: vertical 
}

input[type=submit] {
  background-color: #0415aa;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: white;
  color: #0415aa;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

@media screen and (max-width: 842px) {

  header {
    background-color: #333;
    height: 301px;
  }

  #navbar {
    display:table-cell;

  }

  ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 152px;
    background-color: #333;
  }
  
  li {
    float:left;
    height: 43px;
  }

  .active {
    background-color: #333;
  }

  li a {
    display: block;
    color: rgb(255, 255, 255);
    padding: 8px 16px;
    text-decoration: none;
  }
  
  /* Change the link color on hover */
  li a:hover {
    background-color: #555;
    color: white;
  }

  #logo {
    height: 45px;
    margin-top: -8px;
}

.socmedia {
  height: 40px;
  width: 40px;
}

h1 {
  font-size: 25px;
}

p {
  font-size: 20px
}

#bckg-img2 {
  display: none;
}

.comment {
  font-size: 15px;
}

}

' >> /var/www/testdomain.info/html/css/style.css

