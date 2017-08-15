<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tablolar.aspx.cs" Inherits="StudentDatabase.Tablolar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}
li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
li a:hover {
    background-color: #111;
}
  </style>
  </head>
<body style="height: 225px">
    <h2>Menu</h2>
    <ul>
        <li><a href="NotVerme.aspx">Not Verme</a></li>
        <li><a href="OgrenciEkleme.aspx">Öğrenci Ekleme</a></li>
        <li><a href="DersEkleme.aspx">Ders Ekleme</a></li>
        <li><a href="Atama.aspx">Ders Atama</a></li>
      </ul>
</body>
</html>
