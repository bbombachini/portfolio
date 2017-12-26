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

  function howIWork(){
    var newReq = createRequest();
    if(newReq===null) {
			alert("Please update your browser to a more modern one!");
			return;
		}
		let url = 'admin/controller.php?steps';
		newReq.onreadystatechange = newResp;
		newReq.open("GET", url, true);
		newReq.send();

     function newResp() {
   		if(newReq.readyState ===4 || newReq.status === 'complete') {
             // console.log(newReq.responseText);
             var newjson = JSON.parse(newReq.responseText);
             var result = document.querySelector('#result');
             var steps = document.querySelectorAll('.steps');

             steps.forEach((p , index) => {
               p.addEventListener('click', readMe, false);
             });

             function readMe(evt){
                 // console.log(evt);
                 while(result.firstChild){
                  result.removeChild(result.firstChild);
                 }
                 let i = evt.target.id;
                 if(screenSize == 'medium' || screenSize == 'large'){
                   let icon = document.createElement('img');
                   icon.classList.add('icon');
                   icon.src = "img/"+ newjson[i].steps_img;
                   result.appendChild(icon);
                 }
                 let newDiv = document.createElement('div');
                 let title = document.createElement('h3');
                 title.innerHTML = newjson[i].steps_title;
                 let txt = document.createElement('p');
                 txt.innerHTML = newjson[i].steps_desc;
                 newDiv.append(title, txt);
                 result.appendChild(newDiv);
                 result.scrollIntoView({behavior: "smooth", block: "center", inline: "nearest"});
               }
            }
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
		var url = 'admin/controller.php?projects';
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
		var url = 'admin/controller.php?language';
		hexagon.onreadystatechange = hexResponse;
		hexagon.open("GET", url, true);
		hexagon.send();
  }
  function hexResponse(){
    if(hexagon.readyState ===4 || hexagon.status === 'complete') {
          // console.log(hexagon.responseText);
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
  howIWork.call(document.querySelector('#work'));

})();
