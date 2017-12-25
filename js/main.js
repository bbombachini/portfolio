(function() {
  'use strict';
  const MIN = 320;
  const MEDIUM = 640;
  const LARGE = 1024;
  var screenSize;
  var request;
  var hexagon;
  var menu = document.querySelector("#button");


  function init() {
    // var photo = document.querySelector('#photo');
    getScreenSize();
    openProjects();
    openHex();
    }

  function menuOpen() {
    if(menu.classList.contains('open')){
      document.body.style.overflow = "scroll";
    } else {
      window.scrollTo(0,0);
      document.body.style.overflow = "hidden";
    }
  }

  function getScreenSize() {
    if(window.innerWidth < MEDIUM) {
      screenSize = 'small';
    }
    else if(window.innerWidth < LARGE) {
      screenSize = 'medium';
    }
    else {
      screenSize = 'large';
    }
    console.log(screenSize);
  }

  function openProjects() {
    request = createRequest();
    if(request===null) {
			alert("Please update your browser to a more modern one!");
			return;
		}
		var url = 'admin/controller.php';
		request.onreadystatechange = statusResponse;
		request.open("GET", url, true);
		request.send();
	}
	function statusResponse() {
		if(request.readyState ===4 || request.status === 'complete') {
          // console.log(request.responseText);
          var jsondoc = JSON.parse(request.responseText);
          var projects = document.querySelector('#projects');

          jsondoc.forEach(({project_id, project_name, project_cover}) =>{
            let newDiv = document.createElement("div");
            let newImg = document.createElement("img");
            newImg.src = 'img/'+project_cover;
            newImg.dataset.id = project_id;
      			let newResult = document.createElement("p");
      			newResult.innerHTML = project_name;
      			newDiv.append(newResult, newImg);
      			projects.appendChild(newDiv);
          });
          projects.querySelectorAll("div").forEach((dataset) => {
            dataset.addEventListener('click', loadProj, false);
          });
          function loadProj(index){
            console.log(index.target.dataset);
          }
		}
  }

  function openHex(){
    hexagon = createRequest();
    if(hexagon===null) {
			alert("Please update your browser to a more modern one!");
			return;
		}
		var url = 'admin/controller2.php';
		hexagon.onreadystatechange = hexResponse;
		hexagon.open("GET", url, true);
		hexagon.send();
  }
  function hexResponse(){
    if(hexagon.readyState ===4 || hexagon.status === 'complete') {
          console.log(hexagon.responseText);
          var jsonlang = JSON.parse(hexagon.responseText);
          var honey = document.querySelector('.honeycomb');

          jsonlang.forEach(({lang_id, lang_name, lang_thumb}) => {
            let newDiv = document.createElement("div");
            newDiv.classList.add('hex');
            newDiv.style.backgroundImage = "url('img/"+lang_thumb+"')";
            newDiv.dataset.id = lang_id;
      			// let newResult = document.createElement("p");
      			// newResult.innerHTML = project_name;
      			// newDiv.append(newResult, newImg);
      			honey.appendChild(newDiv);
          });
          // projects.querySelectorAll("div").forEach((dataset) => {
          //   dataset.addEventListener('click', loadProj, false);
          // });
          // function loadProj(index){
          //   console.log(index.target.dataset);
          // }
		}
  }



  // function styleChange() {
  //
  // }


  // function shrink(){
  //     var bar = document.querySelector('#nav-bar');
  //     var content = document.querySelector('#content');
  //     var nav = document.querySelector('#nav');
  //     var land = document.querySelector('#landing');
  //     var xheight = window.innerHeight;
  //     var tl = new TimelineLite();
  //
  //     tl.to(nav,1,{display:"none", ease:Expo});
  //     tl.to(land,1,{display: "none"});
  //     tl.to(bar,2,{width:"15%", ease:Circ});
  //     tl.to(bar,2,{height:xheight, float: "left", ease:Circ});
  //     tl.to(content,2,{display:"block"});
  //   }
  window.addEventListener('load', init,false);
  // window.addEventListener('load', slideInit,false);
  // photo.addEventListener('click', shrink,false);
  // photo.addEventListener('click', styleChange,false);
  window.addEventListener('resize', getScreenSize, false);
  menu.addEventListener('click', menuOpen, false);
})();
