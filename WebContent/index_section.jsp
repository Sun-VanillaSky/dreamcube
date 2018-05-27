<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="homepage--banner center">
	<section class="spring-framework-5--banner" style="display: none;">
		<div class="homepage--banner-text container-fluid vcenter">
			<h2>Spring Framework 5.0
				<br>The right stack for the right job.</h2>
			<p>End-to-end support for reactive &amp; servlet based apps on the JVM.
				<a href="https://content.pivotal.io/spring/oct-4-getting-reactive-with-spring-framework-5-0-s-ga-release-webinar"
				 target="_blank">Learn More</a>
			</p>
		</div>
	</section>
	<section class="springone-platform--banner" style="display: none;">
		<div class="homepage--banner-text container-fluid vcenter">
			<img src="/img/homepage/logo-springonetour-white.svg">
			<h2>Cloud-Native Java From the Source</h2>
			<p>The best Cloud-Native Java content from SpringOne Platform in a city near you.
				<a href="https://springonetour.io" target="_blank">Learn More</a>
			</p>
		</div>
	</section>
	<section class="automate-ops--banner" style="display: block;">
		<div class="homepage--banner-text container-fluid vcenter">
			<h2>Automate Ops for Spring
				<br> Cloud on Cloud Foundry</h2>
			<p>Build Spring microservices with Cloud Foundry's new container
				<br> networking stack.
				<a href="https://content.pivotal.io/blog/building-spring-microservices-with-cloud-foundrys-new-container-networking-stack"
				 target="_blank">Learn More</a>
			</p>
		</div>
	</section>
	<section class="pws--banner" style="display: none;">
		<div class="homepage--banner-text container-fluid vcenter">
			<h2>Pivotal Web Services</h2>
			<p>Zero friction Spring Boot deployment to the cloud.
				<a href="https://run.pivotal.io/spring" target="_blank">Learn More</a>
			</p>
		</div>
	</section>
	<section class="dalston--banner active" style="display: none;">
		<div class="homepage--banner-text container-fluid vcenter">
			<h2>Spring Cloud Edgware Released</h2>
			<p>Spring Cloud Edgware debuts a JDBC-backed config server, Contract, Sleuth
				<br> and Vault improvements.
				<a href="/blog/2017/11/27/spring-cloud-edgware-release-available">Learn More</a>
			</p>
		</div>
	</section>
	<div class="slide--dots center">
		<div class="dot"></div>
		<div class="dot"></div>
		<div class="dot active"></div>
		<div class="dot"></div>
		<div class="dot"></div>
	</div>
</section>

<style>
.homepage--banner {
	position: relative;
}

.homepage--banner .center {
    text-align: center;
}
.homepage--banner .automate-ops--banner{
    background: bottom left no-repeat rgb(255, 255, 255);
	background-image: url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1527333682012&di=a70162c0a765f905ff60713d365874b3&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fb64543a98226cffc49721710b5014a90f603ea3c.jpg);
 }

.homepage--banner section {
	display: block;
    height: 430px;
    left: 0;
    right: 0;
    color:rgb(255, 255, 255)
}
.homepage--banner h2 {
    font-size: 50px;
    font-weight: 400;
    margin-bottom: 30px;
}


.homepage--banner .homepage--banner h2, .homepage--banner .homepage--banner p {
    color: #fff;
    line-height: 1.2em;
}

.homepage--banner .slide--dots {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 55px;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
.homepage--banner .container-fluid {
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
    text-align: center;
}

.homepage--banner .slide--dots .dot.active {
    background: #fff;
}
.homepage--banner .slide--dots .dot {
    width: 14px;
    height: 14px;
    border-radius: 50%;
    background: rgba(255,255,255,.1);
    display: inline-block;
    margin: 0 7px;
    cursor: pointer;
}
</style>