const buildHTML = (XHR) => {
    const comment = XHR.response.comment;
    const user = XHR.response.user;
    const html = `
          <p>
            <strong><a href="/users/${comment.user_id}">${user.name}</a>：</strong>
            ${comment.text}
          </p>`;
    return html;
};

function post(){
    const submit = document.getElementById("submit");
    submit.addEventListener("click", (e) =>{
        e.preventDefault();
        const form = document.getElementById("form");
        const tweet = document.getElementById("tweet");
        const tweetId = tweet.getAttribute("value");
        const formData = new FormData(form);
        const XHR = new XMLHttpRequest();
        XHR.open("POST", `/tweets/${tweetId}/comments`, true);
        XHR.responseType = "json";
        XHR.send(formData);
        XHR.onload = () => {
            if (XHR.status != 200) {
                alert(`Error ${XHR.status}: ${XHR.statusText}`);
                return null;
              };
              const list = document.getElementById("list");
              const formText = document.getElementById("content");
          list.insertAdjacentHTML("afterend", buildHTML(XHR));
          formText.value = "";
        };
    });
};

window.addEventListener('load', post);