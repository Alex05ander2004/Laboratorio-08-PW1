#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = new CGI;
my $num1 = $q->param('numero1');
my $num2 = $q->param('numeros2');
my $op= $q->param('operadores');
my $res;

if($op eq("suma")){
    $res = $num1 + $num2;
}
elsif($op eq("resta")){
    $res = $num1 - $num2;   
}
elsif($op eq("multiplicacion")){
    $res = $num1 * $num2;
}
elsif($op eq("division")){
    if($num2==0){
        $res="indeterminado, porque el segundo n&#250mero es cero."
    }
    else{
        $res = $num1 / $num2;
    }
}
elsif($op eq("potencia")){
    if($num2==0){
        $res=1;
    }
    elsif($num==1){
        $res=$num1;
    }
    else{
        $res = 1;
        for(my $i=0;$i<$num2;$i++){
            $res *= $num1;
        }
    }
}
my $head = $q->header(-type => "text/html");
print $head;
print<<BLOCK;
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="https://e1.pngegg.com/pngimages/785/690/png-clipart-android-lollipop-icons-calculator-calculator-icon-thumbnail.png">
<link href="https://fonts.cdnfonts.com/css/product-sans" rel="stylesheet">
<link rel="stylesheet" href="../css/operacioncss.css">
<meta https-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Calculator</title>
</head>
<body>
<h1 class="tit">CALCULADORA UNSA</h1>
<h2 class="resp">El resultado es $res</h2>
<div class="ref"><a href='../Calculadora.html'>REALIZAR OTRA OPERACI&#211N</a></div>
<div class="content"><img class="imagen" src="https://i.pinimg.com/originals/11/2d/ee/112deeacbdd873ea3737eab7b4b90038.png"></div>
</body></html>
BLOCK
    






 