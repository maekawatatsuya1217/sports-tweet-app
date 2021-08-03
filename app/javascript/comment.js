function post(){
    const submit = document.getElementById("submit");
    submit.addEventListener("click", (e) =>{
        e.preventDefault();
        const form = document.getElementById("form");
        const tweet = document.getElementById("tweet");
        const tweetId = tweet.getAttribute("value");
        const formDate = new formDate(form);
        const XHR = new XMLHttpRequest();
        XHR.open("POST", `/tweets/${tweetId}/comments`, true);
        XHR.responseType = "json";
        XHR.send(formData);
    });
};

window.addEventListener('load', post);