<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
<xsl:template match="/">
  <html>
	<head>
	<title>Состав</title>
		<link rel="stylesheet" type="text/css" href="../css/site.css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <meta charset="utf-8"/>
    <script type="text/javascript">
/* knopka na verh
-----------------------------------------------------------*/
$(document).ready(function() {
	$("#back-top").hide();
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 400) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});

		$('#back-top a').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});
});
</script>
	</head>
<body>
<div class="container">
	<div class="header">
		<div id="header">
			<span id="title">Сайт русскоязычных поклонников футбольного клуба Ливерпуля</span>
			<img src="liverpool.png" alt="Фото клуба"/>
		</div>
	</div>		
	<div class="menu">
		<div class="block1">
			<ul class="spisok">
				<li>
					<a href="../main.html">Главная</a>
				</li>
				<li>
					<a href="../titles/titles.html">Достижения</a>
				</li>
				<li>
					<a href="">История</a>
					<ul class="sub-menu">
						<li>
							<a href="../history/club/club.html">Клуба</a>
						</li>
						<li>
							<a href="../history/tragedy1989/tragedy1989.html">Трагедия 1989 года</a>
						</li>
						<li>
							<a href="../history/clubMUEVE/clubMUEVE.html">Соперничество с принципиальными командами</a>
						</li>
						<li>
							<a href="../history/Emblem/emblem.html">Эмблема клуба</a>
						</li>
						<li>
							<a href="../history/Evolution-form/evolution-form.html">Эволюция формы</a>
						</li>
						<li>
							<a href="../history/academy/academy.html">Академии</a>
						</li>
						<li>
							<a href="../history/melvud/melvud.html">Мелвуда</a>
						</li>
						<li>
							<a href="../history/stadion/stadion.html">Стадиона</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="">Cостав команды</a>
				</li>
				<li>
					<a href="../carol/carol.html">Гимн</a>
				</li>
				<li>
					<a href="../registration/first.html">Регистрация</a>
				</li>
			</ul>
		</div>
		<p class="color">Краткая информация о клубе:</p>
		<div class="block2">
			<ul class="short-left">
				<li>Полное название:Футбольный клуб Ливерпуль</li>
				<li>Основан: 15 марта 1892 (122 года)</li>
				<li>Стадион: Энфилд</li>	
				<li>Вместимость: 45 276</li>	
				<li>Владелец:  Fenway Sports Group</li>
				<li>Президент: Том Вернер</li>	
				<li>Тренер: Брендан Роджерс</li>
				<li>Капитан: Стивен Джеррард</li>	
				<li>Рейтинг: 32-ое место в рейтинге УЕФА</li>
				<li>Официальный сайт:<a href="www.liverpoolfc.com"></a>www.liverpoolfc.com</li>
			</ul>
		</div>
	</div>
	<div class="content">
		<table border="5">
			<tr>
				<th style="text-align:сenter">Number</th>
				<th style="text-align:сenter">Name</th>
				<th style="text-align:сenter">Position</th>
			</tr>
			<xsl:for-each select="club/player"> 
				<xsl:sort data-type="number" select="number"/> 
				<tr>
					<td><xsl:value-of select="number"/></td>
					<td><xsl:value-of select="name"/></td>
					<td><xsl:value-of select="position"/></td>
				</tr>	
          </xsl:for-each>    
		</table>
	</div>
		</div>
<div class="footer">
	<div class="contacts">
		<p>Контакты:<br/>Keane95@yandex.ru<br/>www.vk.com/id0</p>
	</div>
	<div class="material">
		<p>Материал предоставлен:<br/> www.wikipedia.org.</p>
	</div>
</div>
<p id="back-top">
	<a href="#top"><span><![CDATA[  Наверх]]></span></a>
</p>
</body>
</html>	
	</xsl:template>
	</xsl:stylesheet>