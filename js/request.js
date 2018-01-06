//utility functions to create AJAX request/XHR object

function createRequest() {
	var request;

	try {
		request = new XMLHttpRequest();
	  } catch(e) {
				try {
				  request = new ActiveXObject("Msxml2.XMLHTTP");
				} catch(e) {
					try {
				 		request = new ActiveXObject("Microsoft.XMLHTTP");
					} 	catch(e) {
					request = null;
				}
			}
		}
	return request;
}


  function get(url){
    return new Promise(function(resolve,reject){
      var http = createRequest();
      http.open("GET", url, true);
      http.send();
      http.onload = function(){
        if (http.status === 200 || http.status === 'complete'){
          resolve(JSON.parse(http.response));
        } else {
          reject(http.statusText);
        }
      }
    });
  }
