<%-- 
    Document   : contact
    Created on : Dec 1, 2014, 9:40:38 PM
    Author     : vidiaanindhita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<?xml version="1.0" encoding="UTF-8"?>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<f:view>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://java.sun.com/jsf/html"
      xmlns:f="http://java.sun.com/jsf/core"
      xmlns:composite="http://java.sun.com/jsf/composite">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="assets/style.css"></link>
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"></link>
        <link href='http://fonts.googleapis.com/css?family=Dawning+of+a+New+Day' rel='stylesheet' type='text/css'></link>
        <link href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700' rel='stylesheet' type='text/css'></link>
        <title>The Simplest Blog | Contact</title>
    </head>
    <body styleClass="default">
        <div class="wrapper">
            <nav class="nav">
                <div id="login">
                    <h:form rendered="#{!Login.isLogin()}">
                        Username: <h:inputText value="#{Login.username}" style="outline: none; border: none; border-style: none; background-color: #97cdb6; font-family: 'Quicksand', sans-serif; height: 16px;"></h:inputText>
                        Password: <h:inputSecret value="#{Login.password}" style="outline: none; border: none; border-style: none; background-color: #97cdb6; font-family: 'Quicksand', sans-serif; height: 16px;"></h:inputSecret> 
                    <h:commandButton action="#{Login.Login()}" value="submit" style="margin-left: 6px; border: none; border-style: none; outline: none; background-color: #acaba9; font-family: 'Quicksand', sans-serif; height: 16px; font-weight: 700; font-color: #fff; cursor: pointer; color:#fff;"></h:commandButton>
                    </h:form>

                    <h:outputLabel rendered="#{Login.isLoginFailed()}">Invalid username or password</h:outputLabel>
                </div>
                
                <div id="loginsc">
                    <h:form rendered="#{Login.isLogin()}">
                        <h:outputLabel value="Halo #{Login.username}"></h:outputLabel>
                        <h:commandButton action="#{Login.logout()}" value="logout" style="margin-left: 6px; border: none; border-style: none; outline: none; background-color: #acaba9; font-family: 'Quicksand', sans-serif; height: 16px; font-weight: 700; font-color: #fff; cursor: pointer; color:#ffffff;"></h:commandButton>
                    </h:form>
                </div>
                
                <div id="nav-logo">
                    <a id="logo" href="index.jsp"><h1>The Simplest Blog</h1></a>
                </div>
                
                <div id="menu">
                    <ul class="nav-primary">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                    <f:subview id="manajemen-user" rendered="#{Login.isAdmin()}"><li><a href="page2.xhtml">User-Management</a></li></f:subview>
                    <f:subview id="draft" rendered="#{Login.isEditor() or Login.isAdmin()}"><li><a href="unpublished.jsp">Draft</a></li></f:subview>
                    <f:subview id="tambah-post" rendered="#{Login.isOwner() or Login.isAdmin()}"><li><a href="new.jsp">Create Post</a></li></f:subview>
                    </ul>
                </div>
            </nav>
            
            <div class="art-list">
		<div class="art-list-body" id="art-list-body">
                    <div class="postcontainer1">
			<div class="art-list-item">
                            <div class="postcontainer1">
				<img src="img/mail.png"></img>
                            </div>

                            <div class="postcontainer1" id="contact-right">
				<p>Want to ask?</p>
				<p>E-mail us</p>
				<p>simplestblog@mail.com</p>
                            </div>
			</div>

			<div class="art-list-item">
                            <div class="postcontainer1">
				<img src="img/fb.png"></img>
                            </div>

                            <div class="postcontainer1" id="contact-right">
				<p>Get in touch</p>
				<p>Facebook</p>
				<p>/thesimplestblog</p>
                            </div>
			</div>

			<div class="art-list-item">
                            <div class="postcontainer1">
                                <img src="img/twitter.png"></img>
                            </div>

                            <div class="postcontainer1" id="contact-right">
				<p>Follow us</p>
				<p>On Twitter</p>
				<p>@thesimplestblog</p>
                            </div>
			</div>
                    </div>

                    <div class="postcontainer1">
			<div class="art-list-item">
                            <div class="postcontainer1">
                                <img src="img/youtube.png"></img>
                            </div>

                            <div class="postcontainer1" id="contact-right">
				<p>Watching our projects</p>
				<p>On Youtube</p>
				<p>youtube.com/simplestblog</p>
                            </div>
			</div>

			<div class="art-list-item">
                            <div class="postcontainer1">
                                <img src="img/pinterest.png"></img>
                            </div>

                            <div class="postcontainer1" id="contact-right">
				<p>Follow our projects</p>
				<p>On Pinterest</p>
				<p>thesimplestblog</p>
                            </div>
			</div>

			<div class="art-list-item">
                            <div class="postcontainer1">
				<img src="img/instagram.png"></img>
                            </div>

                            <div class="postcontainer1" id="contact-right">
				<p>Follow our projects</p>
				<p>On Instagram</p>
				<p>@thesimplestblog</p>
                            </div>
			</div>
                    </div>
		</div>
            </div>
        </div>
        <footer id="footerSlideContainer">
            <div id="footerSlideLink">
                <div id="footerSlideContent">
                    <div id="footerSlideText"><a href="">Back to top</a></div>
                </div>
                </div>
            </div>   
        </footer>
    </body>
</html>
</f:view>

