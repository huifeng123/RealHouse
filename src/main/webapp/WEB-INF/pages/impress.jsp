<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ include file="/WEB-INF/base.jsp"%>--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>印象搜房</title>
    <meta name="Author" content="Gerard Ferrandez at http://www.mobanwang.com">
    <meta http-equiv="imagetoolbar" content="no">
    <%--印象搜房--%>
    <%--<link href="${ctx}/staticfile/css/impress.css" rel="stylesheet">--%>
    <script src="${ctx}/staticfile/js/impress.js"></script>
    <%--印象搜房--%>
    <style type="text/css">
        body {
            background-color: #326696;
            margin: 0px;
            overflow: hidden;
            font-family:Monospace;
            font-size:13px;
            text-align:center;
            font-weight: bold;
            text-align:center;
        }
        a {
            color:#0078ff;
        }
    </style>
</head>

<body>

<script type="text/javascript" src="/staticfile/js/yuncai/ThreeWebGL.js"></script>
<script type="text/javascript" src="/staticfile/js/yuncai/ThreeExtras.js"></script>
<script type="text/javascript" src="/staticfile/js/yuncai/lanrenzhijia.js"></script>
<script type="text/javascript" src="/staticfile/js/yuncai/RequestAnimationFrame.js"></script>
<script id="vs" type="x-shader/x-vertex">

			varying vec2 vUv;

			void main() {

				vUv = uv;
				gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
			}

</script>
<script id="fs" type="x-shader/x-fragment">

			uniform sampler2D map;

			uniform vec3 fogColor;
			uniform float fogNear;
			uniform float fogFar;

			varying vec2 vUv;

			void main() {

				float depth = gl_FragCoord.z / gl_FragCoord.w;
				float fogFactor = smoothstep( fogNear, fogFar, depth );

				gl_FragColor = texture2D( map, vUv );
				gl_FragColor.w *= pow( gl_FragCoord.z, 20.0 );
				gl_FragColor = mix( gl_FragColor, vec4( fogColor, gl_FragColor.w ), fogFactor );

			}

</script>
<script type="text/javascript">

    if ( ! Detector.webgl ) Detector.addGetWebGLMessage();

    // Bg gradient

    var canvas = document.createElement( 'canvas' );
    canvas.width = 32;
    canvas.height = window.innerHeight;

    var context = canvas.getContext( '2d' );

    var gradient = context.createLinearGradient( 0, 0, 0, canvas.height );
    gradient.addColorStop(0, "#1e4877");
    gradient.addColorStop(0.5, "#4584b4");

    context.fillStyle = gradient;
    context.fillRect(0, 0, canvas.width, canvas.height);

    document.body.style.background = 'url(' + canvas.toDataURL('image/png') + ')';

    // Clouds

    var container;
    var camera, scene, renderer, sky, mesh, geometry, material,
            i, h, color, colors = [], sprite, size, x, y, z;

    var mouseX = 0, mouseY = 0;
    var start_time = new Date().getTime();

    var windowHalfX = window.innerWidth / 2;
    var windowHalfY = window.innerHeight / 2;

    init();
    animate();

    function init() {

        container = document.createElement( 'div' );
        document.body.appendChild( container );

        camera = new THREE.Camera( 30, window.innerWidth / window.innerHeight, 1, 3000 );
        camera.position.z = 6000;

        scene = new THREE.Scene();

        geometry = new THREE.Geometry();

        var texture = THREE.ImageUtils.loadTexture( 'staticfile/images/yuncai/cloud10.png' );
        texture.magFilter = THREE.LinearMipMapLinearFilter;
        texture.minFilter = THREE.LinearMipMapLinearFilter;

        var fog = new THREE.Fog( 0x4584b4, - 100, 3000 );

        material = new THREE.MeshShaderMaterial( {

            uniforms: {

                "map": { type: "t", value:2, texture: texture },
                "fogColor" : { type: "c", value: fog.color },
                "fogNear" : { type: "f", value: fog.near },
                "fogFar" : { type: "f", value: fog.far },

            },
            vertexShader: document.getElementById( 'vs' ).textContent,
            fragmentShader: document.getElementById( 'fs' ).textContent,
            depthTest: false

        } );

        var plane = new THREE.Mesh( new THREE.Plane( 64, 64 ) );

        for ( i = 0; i < 8000; i++ ) {

            plane.position.x = Math.random() * 1000 - 500;
            plane.position.y = - Math.random() * Math.random() * 200 - 15;
            plane.position.z = i;
            plane.rotation.z = Math.random() * Math.PI;
            plane.scale.x = plane.scale.y = Math.random() * Math.random() * 1.5 + 0.5;

            GeometryUtils.merge( geometry, plane );

        }

        mesh = new THREE.Mesh( geometry, material );
        scene.addObject( mesh );

        mesh = new THREE.Mesh( geometry, material );
        mesh.position.z = - 8000;
        scene.addObject( mesh );

        renderer = new THREE.WebGLRenderer( { antialias: false } );
        renderer.setSize( window.innerWidth, window.innerHeight );
        container.appendChild( renderer.domElement );

        document.addEventListener( 'mousemove', onDocumentMouseMove, false );
        window.addEventListener( 'resize', onWindowResize, false );

    }

    function onDocumentMouseMove( event ) {

        mouseX = ( event.clientX - windowHalfX ) * 0.25;
        mouseY = ( event.clientY - windowHalfY ) * 0.15;

    }

    function onWindowResize( event ) {

        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();

        renderer.setSize( window.innerWidth, window.innerHeight );

    }

    function animate() {

        requestAnimationFrame( animate );
        render();

    }

    function render() {

        position = ( ( new Date().getTime() - start_time ) * 0.03 ) % 8000;

        camera.position.x += ( mouseX - camera.target.position.x ) * 0.01;
        camera.position.y += ( - mouseY - camera.target.position.y ) * 0.01;
        camera.position.z = - position + 8000;

        camera.target.position.x = camera.position.x;
        camera.target.position.y = camera.position.y;
        camera.target.position.z = camera.position.z - 1000;

        renderer.render( scene, camera );

    }
</script>
<%--3D印象--%>
<div id="screen">
    <div id="command">

        <h1>deliberate lies</h1>
        Defiant, stony, deliberate, their lies will not get in my way.
        <div id="bar"></div>
    </div>
    <div id="urlInfo"></div>
</div>
<script type="text/javascript">
    /* ==== start script ==== */
    setTimeout(function() {
        m3D.init(
                [
                    { src: '2.jpg', url: '/toBuy', title: 'jump to random script', color: '#fff' },
                    { src: 'sl.jpg' },
                    { src: 'sl1.jpg' },
                    { src: 'sl2.jpg' },
                    { src: 'sl3.jpg' },
                    { src: 'sl4.jpg' },
                    { src: 'sb.jpg' },
                    { src: 'sb1.jpg' },
                    { src: 'sb2.jpg' },
                    { src: 'sb3.jpg' },
                    { src: 'sb4.jpg' },
                    { src: 'sb5.jpg' },
                    { src: 'sb6.jpg' },
                    { src: 'pi.jpg' },
                    { src: 'pi1.jpg' },
                    { src: 'pi2.jpg' },
                    { src: 'pi3.jpg' },
                    { src: 'pc1.jpg' },
                    { src: 'pc2.jpg' },
                    { src: 'pc3.jpg' },
                    { src: 'pc4.jpg' },
                    { src: 'pc5.jpg' },
                    { src: 'ga.jpg' },
                    { src: 'ga1.jpg' },
                    { src: 'ga2.jpg' },
                    { src: 'ga3.jpg' },
                    { src: 'de.jpg' },
                    { src: 'de1.jpg' },
                    { src: 'de2.jpg' },
                    { src: 'de3.jpg' },
                    { src: 'de4.jpg' },
                    { src: 'de5.jpg' },
                    { src: 'de6.jpg' },
                    { src: 'de7.jpg' },
                    { src: 'de8.jpg' },
                    { src: 'de9.jpg' },
                    { src: 'de10.jpg' },
                    { src: 'de11.jpg', url: '/toBuy', color: '#fff' }
                ]
        );
    }, 500);
</script>
<%--3D印象结束--%>

</body>

</html>
