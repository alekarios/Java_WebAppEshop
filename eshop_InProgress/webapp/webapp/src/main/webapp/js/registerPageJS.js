function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("regForm").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "regMessage.txt", true);
  xhttp.send();
}
