(function() {
  'use strict';
  const MIN = 320;
  const MEDIUM = 640;
  const LARGE = 1024;
  var screenSize;
  var request;
  var hexagon;
  var menu = document.querySelector("#button");
  const mediumQuery = window.matchMedia("(min-width:640px)");
  const largeQuery = window.matchMedia("(min-width:1024px)");

  function checkScreenSize(largeQuery){
    if (largeQuery.matches) {
      openProjects();
      openHex();
      howIWork();
    } else if(mediumQuery.matches) {
      openProjects();
      openHex();
      howIWork();
    }
  }

  function init() {
    getScreenSize();
    openProjects();
    openHex();
    howIWork();
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
  		let newPromise ='admin/controller.php?steps';
      fetch(newPromise)
        .then((resp) => resp.json())
          .then((steps) => { createSteps(steps); })
            .catch(function(error){
              console.log(error);
            });
      }
  }

  function createSteps(steps){
      var newjson = steps;
      var result = document.querySelector('#result');
      var step = document.querySelectorAll('.steps');

      step.forEach((p , index) => {
        p.addEventListener('click', readMe, false);
      });

      function readMe(evt){
          // console.log(evt);
          var parag = document.querySelectorAll('.steps p');
          // console.log(parag);
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
    // console.log(screenSize);
  }

  function openProjects() {
    if(document.querySelector('#projects') !== null){
    let promise = "admin/controller.php?projects";

    fetch(promise)
      .then((resp) => resp.json())
        .then((proj) => { createThumbs(proj); })
          .catch(function(error){
            console.log(error);
          });

		setFilter();
    }
	}

  function createThumbs(proj){
    var projects = document.querySelector('#projects');
    while(projects.firstChild){
     projects.removeChild(projects.firstChild);
    }

    proj.forEach(({project_id, project_name, project_thumb}) =>{
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
    projects.querySelectorAll("div").forEach((data) => {
      data.addEventListener('click', loadProj, false);
    });


  function loadProj(index){
    // console.log(index.target.dataset.id);
    let openNew = 'admin/controller.php?proj='+index.target.dataset.id;

    fetch(openNew)
      .then((resp) => resp.json())//convert result to json
        .then((info) => {
          // console.log(info);
          openLightBox(info); })
          .catch(function(error){
            console.log(error);
          });


  function openLightBox(project){
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
      }
    }
  }

    function setFilter(){
      var cat = document.querySelectorAll('.categories');
      cat.forEach((a, dataset)=> {
        a.addEventListener('click', filter, false);
      });
    }
    function filter(evt, dataset){
      evt.preventDefault();
      // console.log(evt.currentTarget.dataset.id);
      let target = evt.currentTarget.dataset.id;
      let ajaxFilter ='admin/controller.php?filter='+target;

      fetch(ajaxFilter)
        .then((resp) => resp.json())
          .then((proj) =>{ createThumbs(proj);})
            .catch(function(error){
              console.log(error);
            });
    }

  function openHex(){
    let url = 'admin/controller.php?language';

    fetch(url)
    .then((resp) => resp.json())
      .then((data) => { hexResponse(data); })
        .catch(function(error){
          console.log(error);
        });
  }

  function hexResponse(data){
          var honey = document.querySelector('.honeycomb');
          var desc = document.querySelector('.lang-desc');
          while(honey.firstChild){
           honey.removeChild(honey.firstChild);
          }

          data.forEach(({lang_id, lang_name, lang_thumb, lang_desc}) => {
            let newDiv = `<div class="hex" data-id="${lang_id}" style="background-image:url(img/${lang_thumb})">
                    </div>`;
            let div = `<div class="hoverDiv" data-id="${lang_id}">
                        <h3>${lang_name}</h3>
                        <p>${lang_desc}</p>
                    </div>`;
            // let newDiv = document.createElement("div");
            // newDiv.classList.add('hex');
            // newDiv.style.backgroundImage = "url('img/"+lang_thumb+"')";
            // newDiv.dataset.id = lang_id;
            // let div = document.createElement("div");
            // div.classList.add('hoverDiv');
            // div.dataset.id = lang_id;
      			// let newResult = document.createElement("h3");
      			// newResult.innerHTML = lang_name;
            // div.appendChild(newResult);
            // desc.appendChild(div);
      			// honey.appendChild(newDiv);
            // thumbHolder.innerHTML += docFrag;
            desc.innerHTML += div;
            honey.innerHTML += newDiv;
          });

          honey.querySelectorAll('.hex').forEach((dataset) => {
            dataset.addEventListener('click', loadDesc, false);

          function loadDesc(evt){
              // console.log(evt.currentTarget.dataset);
              let honey = document.querySelectorAll('.hoverDiv');
              for(let i=0; i < honey.length; i++){
                honey[i].classList.remove('select');
              }
              let targetId = evt.currentTarget.dataset.id;
              let name = document.querySelector(".lang-desc [data-id='" + targetId + "']");
              name.classList.add('select');
            }
          });
  }


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
  // window.addEventListener('resize', checkScreenSize,false);
  // window.addEventListener('load', slideInit,false);
  window.addEventListener('resize', getScreenSize, false);
  menu.addEventListener('click', menuOpen, false);
  largeQuery.addListener(checkScreenSize);
})();
