/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


var mins;
const count = 0;
var secs;

function cd() {
    mins = 1 * m("20"); // change minutes here
    secs = 0 + s(":01"); // change seconds here (always add an additional second to your total)
    redo();
}

function m(obj) {
    for(var i = 0; i < obj.length; i++) {
        if(obj.substring(i, i + 1) == ":")
            break;
    }
    return(obj.substring(0, i));
}

function s(obj) {
    for(var i = 0; i < obj.length; i++) {
        if(obj.substring(i, i + 1) == ":")
            break;
    }
    return(obj.substring(i + 1, obj.length));
}

function dis(mins,secs) {
    var disp;
    if(mins <= 9) {
        disp = " 0";
    } else {
        disp = " ";
    }
    disp += mins + ":";
    if(secs <= 9) {
        disp += "0" + secs;
    } else {
        disp += secs;
    }
    return(disp);
}

function redo() {
    secs--;
    if(secs == -1) {
        secs = 59;
        mins--;
    }
    document.cd.disp.value = dis(mins,secs); // setup additional displays here.
    if((mins == 0) && (secs == 0)) {
        window.alert("Time is up. Press OK to continue."); // change timeout message as required
     window.location = "result.jsp" // redirects to specified page once timer ends and ok button is pressed
    } else {
        cd = setTimeout("redo()",1000);
    }
}

function inittime()
{
    if (count == 0)
       {

        count = count + 1;
        init();
       }
else
      count = count + 1;
}
function init() {
    cd();
}
window.onload = inittime;

