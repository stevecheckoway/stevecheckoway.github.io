<?php
$translate = array(
	"" => "",
	"/cse/htdocs/users/scheckow" => "",
	"TeX.css" => "css/TeX.css",
	"images" => "images",
	"images/bullet.gif" => "images/bullet.gif",
	"images/closed.gif" => "images/closed.gif",
	"images/dvi.gif" => "images/dvi.gif",
	"images/mugshot.jpg" => "images/mugshot.jpg",
	"images/open.gif" => "images/open.gif",
	"images/pdf.gif" => "images/pdf.gif",
	"images/ps.gif" => "images/ps.gif",
	"images/mugshot2.png" => "images/mugshot2.png",
	"index.html" => "index.html",
	"musings" => "musings",
	"musings/musings.css" => "musings/musings.css",
	"musings/disassembling/" => "musings/disassembling/",
	"musings/LaTeX/" => "musings/LaTeX/",
	"musings/the-tsa-grope/" => "musings/the-tsa-grope/",
	"musings/news/" => "musings/news/",
	"musings/email/" => "musings/email/",
	"musings/rp/" => "musings/rp/",
	"musings/bootup/" => "musings/bootup/",
	"musings/100-percent-less-likely/" => "musings/100-percent-less-likely/",
	"musings/rop/" => "musings/rop/",
	"papers" => "papers",
	"papers/audits2010" => "papers/audits2010",
	"papers/audits2010/audits2010-slides.pdf" => "papers/audits2010/audits2010-slides.pdf",
	"papers/audits2010/audits2010.dvi" => "papers/audits2010/audits2010.dvi",
	"papers/audits2010/audits2010.pdf" => "papers/audits2010/audits2010.pdf",
	"papers/audits2010/audits2010.ps" => "papers/audits2010/audits2010.ps",
	"papers/evt2009" => "papers/evt2009",
	"papers/evt2009/evt2009-slides.pdf" => "papers/evt2009/evt2009-slides.pdf",
	"papers/evt2009/evt2009.pdf" => "papers/evt2009/evt2009.pdf",
	"papers/iccd2006" => "papers/iccd2006",
	"papers/iccd2006/iccd2006.pdf" => "papers/iccd2006/iccd2006.pdf",
	"papers/mturkppi2011" => "papers/mturkppi2011",
	"papers/mturkppi2011/mturkppi2011.pdf" => "papers/mturkppi2011/mturkppi2011.pdf",
	"papers/nonplurality2011" => "papers/nonplurality2011",
	"papers/nonplurality2011/nonplurality2011.pdf" => "papers/nonplurality2011/nonplurality2011.pdf",
	"papers/nonplurality2011/nonplurality2011.ps" => "papers/nonplurality2011/nonplurality2011.ps",
	"papers/noret2010" => "papers/noret2010",
	"papers/noret2010/noret2010.pdf" => "papers/noret2010/noret2010.pdf",
	"papers/noret2010/noret2010.ps" => "papers/noret2010/noret2010.ps",
	"papers/noret_ccs2010" => "papers/noret_ccs2010",
	"papers/noret_ccs2010/noret_ccs2010-slides.pdf" => "papers/noret_ccs2010/noret_ccs2010-slides.pdf",
	"papers/noret_ccs2010/noret_ccs2010.dvi" => "papers/noret_ccs2010/noret_ccs2010.dvi",
	"papers/noret_ccs2010/noret_ccs2010.pdf" => "papers/noret_ccs2010/noret_ccs2010.pdf",
	"papers/noret_ccs2010/noret_ccs2010.ps" => "papers/noret_ccs2010/noret_ccs2010.ps",
	"papers/re" => "papers/re",
	"papers/re/re.dvi" => "papers/re/re.dvi",
	"papers/re/re.pdf" => "papers/re/re.pdf",
	"papers/re/re.ps" => "papers/re/re.ps",
	"papers/tex2010" => "papers/tex2010",
	"papers/tex2010/tex2010-slides.pdf" => "papers/tex2010/tex2010-slides.pdf",
	"papers/tex2010/tex2010.dvi" => "papers/tex2010/tex2010.dvi",
	"papers/tex2010/tex2010.pdf" => "papers/tex2010/tex2010.pdf",
	"papers/tex2010/tex2010.ps" => "papers/tex2010/tex2010.ps",
	"papers/tex2010/tex2010.tex" => "papers/tex2010/tex2010.tex",
	"papers/tex_login2010" => "papers/tex_login2010",
	"papers/tex_login2010/tex_login2010.pdf" => "papers/tex_login2010/tex_login2010.pdf",
	"papers/tolls2011" => "papers/tolls2011",
	"papers/tolls2011/tolls2011.pdf" => "papers/tolls2011/tolls2011.pdf",
	"papers/paper.css" => "papers/paper.css",
	"papers/audits2010.html" => "papers/audits2010.html",
	"papers/car2010.html" => "papers/car2010.html",
	"papers/evt2009.html" => "papers/evt2009.html",
	"papers/iccd2006.html" => "papers/iccd2006.html",
	"papers/mturkppi2011.html" => "papers/mturkppi2011.html",
	"papers/nonplurality2011.html" => "papers/nonplurality2011.html",
	"papers/noret2010.html" => "papers/noret2010.html",
	"papers/noret_ccs2010.html" => "papers/noret_ccs2010/",
	"papers/re.html" => "papers/re/",
	"papers/tex2010.html" => "papers/tex2010/",
	"papers/tex_login2010.html" => "papers/tex_login2010.html",
	"papers/tolls2011.html" => "papers/tolls2011/",
	"papers/iago2012" => "papers/iago2012",
	"papers/iago2012/iago2012.pdf" => "papers/iago2012/iago2012.pdf",
	"papers/iago2012/iago2012.ps" => "papers/iago2012/iago2012.ps",
	"papers/iago2012.html" => "papers/iago2012/",
	"software" => "software",
	"teaching" => "teaching",
	"teaching/security.pdf" => "teaching/security.pdf",
	"citations.html" => "citations.html",
	"travel.html" => "travel.html",
);
$page = $_GET['f'];
if (array_key_exists($page, $translate))
{
	header('Location: https://stevecheckoway.github.io/' . $translate[$page]);
	exit;
}
header('HTTP/1.0 404 Not Found');
header('Content-Type: application/xhtml+xml;charset=utf-8');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:dc="http://purl.org/dc/elements/1.1" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="application/xhtml+xml;charset=utf-8" />
	<title>Stephen Checkoway :: UIC CS</title>
</head>
<body>
<h1>Unknown page!</h1>
<p>Unfortunately, I do not know how to redirect &lsquo;<?php echo htmlentities('https://cseweb.ucsd.edu/~s/' . $page); ?>&rsquo;.</p>
<p>Maybe you'd like my <a href="https://stevecheckoway.github.io">home page</a>.</p>
</body>
</html>
