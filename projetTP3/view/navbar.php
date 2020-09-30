<?php
if (!isset($_SESSION['user_login'])) {
    ?>
    <nav class="menu" id="menu">
        <ul class="nav">
            <li><a href="http://projettp3/view/index.php">Accueil</a></li>
            <li><a href="http://projettp3/view/contact.php">Contact</a></li>
            <li><a id="theme-button">Changer le thème</a>
                <ul id="theme-menu">
                    <li class="theme-color" id="theme-dark">Dark</li>
                    <li class="theme-color" id="theme-light">Light</li>
                </ul>
            </li>
        </ul>
    </nav>
    <?php
} else {
    ?>
    <nav class="menu" id="menu">
        <ul class="nav">
            <li><a href="http://projettp3/view/produits.php">Produits</a></li>
            <li><a href="http://projettp3/view/livredor.php">Livre d'or</a></li>
            <li><a href="http://projettp3/view/contact.php">Contact</a></li>
            <li><a id="theme-button">Changer le thème</a>
                <ul id="theme-menu">
                    <li><a class="theme-color" id="theme-dark">Dark</a></li>
                    <li><a class="theme-color" id="theme-light">Light</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <?php
} ?>