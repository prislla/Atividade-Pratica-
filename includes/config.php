<?php


$c = array(
    'sitename' => 'Costura Criativa',
    'siteslogan' => 'Costura e amor',
    'sitelogo' => '</img/logo.jpg',
    'sitefavicon' => '/img/favicon.jpg',
    'titlesep' => '&middot;&middot;&middot;',
    'siteemail' => 'contato@costuracriativa.com',
    'ucookie' => 'ccuser',
    'ucookiedays' => 365
);

/**
 * Coleção com a lista de redes sociais:
 * OBS: o item 'icon' faz referência ao nome do ícone na biblioteca 
 * Font Awesome.
 **/
$s = array(
    array(
        'name' => 'Facebook',
        'link' => 'https://facebook.com/CosturaCriativa',
        'icon' => 'fa-square-facebook'
    ),
    array(
        'name' => 'Youtube',
        'link' => 'https://youtube.com/CosturaCriativa',
        'icon' => 'fa-square-youtube'
    ),
    array(
        'name' => 'Instagram',
        'link' => 'https://github.com/CosturaCriativa',
        'icon' => 'fa-square-instagram'
    )
);

/**
 * Inicializa variáveis de uso geral:
 * Todas as variáveis com valor "vazio".
 **/
$page_title = $page_content = $page_css = $page_js = '';

// Inicializa arrays de uso geral:
$user = array();

// Dados de conexão com MySQL no XAMPP:
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'costuracriativa';

/**
 * Define a Regex de validação de senha:
 * 
 * IMPORTANTE!
 * Conforme nossas "políticas de segurança", a senha do usuário deve seguir as
 * seguintes regras:
 *
 *     • Entre 7 e 25 caracteres;
 *     • Pelo menos uma letra minúscula;
 *     • Pelo menos uma letra maiúscula;
 *     • Pelo menos um número.
 *
 * A REGEX abaixo especifica essas regras:
 *
 *     • HTML5 → pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{7,25}$"
 *     • JavaScript → \^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{7,25}$\
 *     • PHP → "/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{7,25}$/"
 **/
$rgpass = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{7,25}$";

/**
 * Configura PHP para UTF-8:
 * Referências:
 *  • https://www.w3schools.com/php/func_network_header.asp
 **/
header('Content-Type: text/html; charset=utf-8');

/**
 * Define o fuso horário para "horário de Brasília":
 * Referências:
 *  • https://www.w3schools.com/php/func_date_default_timezone_set.asp
 **/
date_default_timezone_set('America/Sao_Paulo');

/**
 * Conexão com o MySQL e banco de dados:
 * Referências:
 *  • https://www.w3schools.com/php/php_mysql_intro.asp
 *    OBS: O link acima é a página inicial sibre a bilbioteca MySQLi.
 **/
$conn = new mysqli($hostname, $username, $password, $database);

// Seta transações com MySQL/MariaDB para UTF-8:
$conn->query("SET NAMES 'utf8'");
$conn->query('SET character_set_connection=utf8');
$conn->query('SET character_set_client=utf8');
$conn->query('SET character_set_results=utf8');

// Seta dias da semana e meses do MySQL/MariaDB para "português do Brasil":
$conn->query('SET GLOBAL lc_time_names = pt_BR');
$conn->query('SET lc_time_names = pt_BR');

// Insere as funções do aplicativo:
require('functions.php');