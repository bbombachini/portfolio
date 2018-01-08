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
    // if (document.querySelector('.download') == true){
    //   var download = document.querySelector('.download');
    //   download.addEventListener('click', openPDF, false);
    // }
    getScreenSize();
    openProjects();
    openHex();
    howIWork();
    }
  function about(){
    if(document.querySelector('.download') !== null){
      var download = document.querySelector('.download');
      download.addEventListener('click', openPDF, false);
    }
  }

  function openPDF(){
    var pdf = "Bombachini_Barbara_resume.pdf";
    window.open(pdf, '_blank', 'fullscreen=yes');
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
    if(document.querySelector('#result') !== null){

    // var newReq = createRequest();
    // if(newReq===null) {
		// 	alert("Please update your browser to a more modern one!");
		// 	return;
		// }
		// let url = 'admin/controller.php?steps';
		// newReq.onreadystatechange = newResp;
		// newReq.open("GET", url, true);
		// newReq.send();
		let promise = get('admin/controller.php?steps');

    promise.then(function(steps){
      var newjson = steps;
      var result = document.querySelector('#result');
      var steps = document.querySelectorAll('.steps');

      steps.forEach((p , index) => {
        p.addEventListener('click', readMe, false);
      });
      function readMe(evt){
          // console.log(evt);
          var parag = document.querySelectorAll('.steps p');
          console.log(parag);
          parag.forEach((p)=>{
            p.style.borderBottom = "7px solid white";
          });
          evt.target.style.borderBottom = "7px solid #3b3a3a";
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
          result.scrollIntoView({block: 'end', inline: 'nearest', behavior: 'smooth'});
        }
    }).catch(function(error){
      console.log(error);
    });

     // function newResp() {
   		// if(newReq.readyState ===4 || newReq.status === 'complete') {
     //         // console.log(newReq.responseText);
     //         var newjson = JSON.parse(newReq.responseText);
     //         var result = document.querySelector('#result');
     //         var steps = document.querySelectorAll('.steps');
     //
     //         steps.forEach((p , index) => {
     //           p.addEventListener('click', readMe, false);
     //         });
     //
             // function readMe(evt){
             //     // console.log(evt);
             //     while(result.firstChild){
             //      result.removeChild(result.firstChild);
             //     }
             //     let i = evt.target.id;
             //     if(screenSize == 'medium' || screenSize == 'large'){
             //       let icon = document.createElement('img');
             //       icon.classList.add('icon');
             //       icon.src = "img/"+ newjson[i].steps_img;
             //       result.appendChild(icon);
             //     }
             //     let newDiv = document.createElement('div');
             //     let title = document.createElement('h3');
             //     title.innerHTML = newjson[i].steps_title;
             //     let txt = document.createElement('p');
             //     txt.innerHTML = newjson[i].steps_desc;
             //     newDiv.append(title, txt);
             //     result.appendChild(newDiv);
             //     result.scrollIntoView({behavior: "smooth", block: "center", inline: "nearest"});
             //   }
     //        }
     //    }
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
    if(document.querySelector('#projects') !== null){
    let promise = get('admin/controller.php?projects');

    promise.then(function(projects){
        var jsondoc = projects;
        var projects = document.querySelector('#projects');

        jsondoc.forEach(({project_id, project_name, project_thumb}) =>{
          let newDiv = document.createElement("div");
          let newImg = document.createElement("img");
          newImg.src = 'img/'+screenSize+project_thumb;
          newImg.dataset.id = project_id;
          let newResult = document.createElement('h3');
          newResult.classList.add('title');
          newResult.innerHTML = project_name;
          newResult.dataset.id = project_id;
          newDiv.classList.add('proj-div');
          newDiv.append(newImg, newResult);
          projects.appendChild(newDiv);
        });
        projects.querySelectorAll("div").forEach((dataset) => {
          dataset.addEventListener('click', loadProj, false);
        });
    }).catch(function(error){
      console.log(error);
    });

    // request = createRequest();
    // if(request===null) {
		// 	alert("Please update your browser to a more modern one!");
		// 	return;
		// }
		// var url = 'admin/controller.php?projects';
		// request.onreadystatechange = statusResponse;
		// request.open("GET", url, true);
		// request.send();
    }
	}

      function loadProj(index){
        console.log(index.target.dataset.id);
        let openNew = get('admin/controller.php?proj='+index.target.dataset.id);

        openNew.then(function(project){
          if(project !== null){
            var body = document.body;
            let box = document.querySelector('.lightbox');
            let boxCover = box.querySelector('.cover-img');
            let boxImg = box.querySelector('.box-img');
            let boxClose = document.querySelector('.close-box');
            let boxHeader = box.querySelector('.header');
            let text = box.querySelector('.proj-text');
            while(text.firstChild) {
               text.removeChild(text.firstChild);
             }
            body.classList.add('noscroll');
            box.style.display = "block";
            boxCover.src = "img/"+ project.project_cover;
            boxImg.src = "img/"+screenSize+ project.project_img;
            boxHeader.style.backgroundColor = project.project_colour;
            let boxTitle = document.createElement('h1');
            boxTitle.innerHTML = project.project_name;
            text.appendChild(boxTitle);
              if(project.project_client !== null){
                var client = document.createElement('p');
                client.innerHTML = project.project_client;
                text.appendChild(client);
              }
            let boxDesc = document.createElement('p');
            boxDesc.innerHTML = project.project_description;
            text.appendChild(boxDesc);
              if(project.project_url !== null){

                let url = document.createElement('a');
                let text = box.querySelector('.proj-text');
                url.href = project.project_url;
                url.innerHTML = project.project_url;
                text.appendChild(url);
              }
            boxClose.addEventListener('click', closeBox, false);

            function closeBox() {
              box.style.display = 'none';
              body.classList.remove('noscroll');
            }
          }
        }).catch(function(error){
          console.log(error);
        });
      }
    function filter(value){
      let ajaxFilter = get('admin/controller.php?filter='+value);

      ajaxFilter.then(function(resp){
        console.log(resp)
      }).catch(function(error){
        console.log(error);
      });
    }
	// function statusResponse() {
	// 	if(request.readyState ===4 || request.status === 'complete') {
  //         // console.log(request.responseText);
  //         var jsondoc = JSON.parse(request.responseText);
  //         var projects = document.querySelector('#projects');
  //
  //         jsondoc.forEach(({project_id, project_name, project_thumb}) =>{
  //           let newDiv = document.createElement("div");
  //           let newImg = document.createElement("img");
  //           newImg.src = 'img/'+screenSize+project_thumb;
  //           newImg.dataset.id = project_id;
  //     			let newResult = document.createElement("p");
  //     			newResult.innerHTML = project_name;
  //     			newDiv.append(newResult, newImg);
  //     			projects.appendChild(newDiv);
  //         });
  //         projects.querySelectorAll("div").forEach((dataset) => {
  //           dataset.addEventListener('click', loadProj, false);
  //         });
  //         function loadProj(index){
  //           console.log(index.target.dataset);
  //           console.log
  //         }
	// 	}
  // }

  function openHex(){
    if(document.querySelector('.honeycomb') !== null){
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
  // window.addEventListener('resize', init,false);
  // window.addEventListener('load', slideInit,false);
  // photo.addEventListener('click', shrink,false);
  // photo.addEventListener('click', styleChange,false);
  window.addEventListener('resize', getScreenSize, false);
  menu.addEventListener('click', menuOpen, false);
  about.call(document.querySelector('.download'));
  // howIWork.call(document.querySelector('#work'));

})();
