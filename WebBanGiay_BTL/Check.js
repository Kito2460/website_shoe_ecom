function checkdulieu() {
    a = document.getElementById("username").value;
    b = document.getElementById("username_error");
    checkloi = true;
    if (a == "") {
        b.innerHTML = "koh";
        checkloi = false;
    }
    return checkloi;
}