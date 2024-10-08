<!DOCTYPE html>
<html>
<head>
    <title>Page d'Accueil</title>
    <link rel="stylesheet" href="./styles/Accueil.css">
</head>
<body>
    <header>
        <div class="header-content">
            <img src="./styles/ipssi-logo.png" alt="Logo" class="logo">
        </div>
        <nav>
            <ul>
                <li><a href="/">Page d’Accueil</a></li>
                <li><a href="/register.php">Création de JPO</a></li>
                <li><a href="/about.php">Page visualisation CSV</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id="intro">
            <h2>Bienvenue sur la page d'accueil !</h2>
            <p>L'école Ipssi ouvre ses portes pour des journées portes ouvertes :</p>
        </section>
        <section id="jpo">
            <h3>Journées Portes Ouvertes</h3>
            <ul id="listeJPO">
                <li>
                    Le 5 juin à partir de 17h
                    <button onclick="window.location.href='inscription.html?date=5juin'">Inscription +</button>
                </li>
                <li>
                    Le 6 juin à partir de 18h
                    <button onclick="window.location.href='inscription.html?date=6juin'">Inscription +</button>
                </li>
                <li>
                    Le 7 juin à partir de 15h
                    <button onclick="window.location.href='inscription.html?date=6juin'">Inscription +</button>
                </li>
                <!-- Ajoutez ici d'autres JPO si nécessaire -->
            </ul>
        </section>
        <section id="about">
            <h3>À propos de l'IPSSI</h3>
            <p>L'IPSSI est une école spécialisée dans les domaines de l'informatique et du numérique...</p>
        </section>
    </main>
</body>
</html>
