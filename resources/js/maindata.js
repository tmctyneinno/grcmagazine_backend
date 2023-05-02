

let firstmain = document.querySelector('.firstmain');
let firstartcle = document.querySelector('.firstartcle');
let secondartcle = document.querySelector('.secondartcle');
let thridartcle = document.querySelector('.thridartcle');
let foutharcle = document.querySelector('.foutharcle');
let fivtharcle = document.querySelector('.fivtharcle');
let artclecoutmark = document.querySelector('.artclecoutmark');
let rowpagone = document.querySelector('.rowpagone');
let previous = document.querySelector('.Previous');
let next = document.querySelector('.Next');
let numberpag = document.querySelector('.numberpag');
var  token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
let message = document.querySelector('.message');
let name = document.querySelector('.name');
let email = document.querySelector('.email');
let singlebtn = document.querySelector('.singlebtn');
let listnone = document.querySelector('.listnone');
let amountcomment = document.querySelector('.amountcomment');
let namecontact = document.getElementById("namecontact");
let emailcontact = document.getElementById("emailcontact")
let messagecontact  = document.getElementById("messagecontact")
let singlebutton = document.getElementById("singlebutton");
let messagex = document.querySelector(".messagex");
let currentnumber  = 1;
let url = window.location.origin;
let alldata = categoriesdata != undefined? categoriesdata.map((item)=>{
if(item.categories != 'Introduction')
firstmain.innerHTML += ` <li><a href="#">${item.categories}</a><span class="badge">${item.number}</span></li>`;
}):[]



if(findno){

    // firstartcle.innerHTML = findno.articlebodyone
findno.articlebodyone != null || findno.articlebodyone != ''? firstartcle.innerHTML = findno.articlebodyone: firstartcle.innerHTML = "";

findno.articlebodytwo != null || findno.articlebodytwo != ''? secondartcle.innerHTML = findno.articlebodytwo : secondartcle.innerHTML = "";

findno.articlebodythree != null || findno.articlebodythree != ''? thridartcle.innerHTML = findno.articlebodythree : thridartcle.innerHTML = "";

findno.articlebodyfour != null || findno.articlebodyfour != ''? foutharcle.innerHTML = findno.articlebodyfour : foutharcle.innerHTML = "";

findno.articlebodyfive != null || findno.articlebodyfive != ''? fivtharcle.innerHTML = findno.articlebodyfive : fivtharcle.innerHTML = "";

findno.articlecoatbody != null || findno.articlecoatbody != ''? artclecoutmark.innerHTML = findno.articlecoatbody : artclecoutmark.innerHTML = "";
findno.articlecoatbody != null || findno.articlecoatbody != ''? artclecoutmark.style.display = "block":artclecoutmark.style.display = "none";



singlebtn.addEventListener('click', function(e){

    e.preventDefault();
    // message name email
    console.log('jkrghrehjrh')
    let articleid =  e.target.dataset.id;
    let formData = new FormData();
    formData.append('message', message.value)
    formData.append('name', name.value)
    formData.append('email', email.value)
    formData.append('articles_id', articleid)
    formData.append('_token', token)

    axios.post(`http://127.0.0.1:8000/artclesinsert`, formData).then(res=>{
      if(res){
        amountcomment.innerHTML = `${res.data.length} Comments`
          res.data.map((item)=>{
            let bool = new Date(item.created_at)
            var dd = String(bool.getDate()).padStart(2, '0');
            var mm = String(bool.getMonth() + 1).padStart(2, '0');
            var yyyy = bool.getFullYear();
            let createddate = dd+ '/' + mm + '/' + yyyy
                    listnone.innerHTML +=`<li class="comment">
        <div class="comment-body">
            <div class="">
                <div class="comment-author"> </div>
                <div class="comment-info">
                    <div class="comment-header">
                        <h4 class="user-title">${item.name}</h4>
                        <div class="comment-meta"><span class="comment-meta-date">${createddate}</span></div>
                    </div>
                    <div class="comment-content">
                        <p>${item.message}</p>
                        <div class="reply"><a  class="btn-link" ></a></div>
                    </div>
                </div>
            </div>
        </div>
    </li>`;
          })
      }
    }).catch(err=>{
        let error = err.response.data.errors
        if(error.name){
            error.name[0]
          }else if(error.email){
            error.email[0]
          }else if(error.message){
            error.message[0]
          }

    })


})

}


if(pagdata){
pagdata.data.filter((item)=>{
    if(item.articlename != '<strong>Introduction</strong>')
        rowpagone.innerHTML += `
        <div class="realwedding-block">
            <div class="realwedding-img">

                <a href="${url}/single/${item.id}" class="imagehover"><img src="${item.picture}" alt="Real wedding couple"></a>
            </div>
            <div class="realwedding-content">
                <h2><a href="${url}/single/${item.id}" class="title"> ${item.articlename}</a></h2>
                <p class="meta">
                    <span class="meta-category">
                <a href="#" class="meta-link">year</a></span> <span class="meta-date">${item.yearup}</span>
                    <span class="meta-author"><a href="#" class="meta-link">${item.categories}</a></span>
                </p>${item.articlebodyone.substring(0,200)}...</p>
            </div>
        </div>
    `;

})

let lastnum = pagdata.last_page;
// previous next


previous.addEventListener('click', function(e){
    // console.log('hjdjhdjhds djdsjkjsd dskdjkdsj djkdskjdskj')
    e.preventDefault();
    if( currentnumber == pagdata.last_page){

        rowpagone.innerHTML = '';
        let answer = currentnumber - 1;
        console.log(answer)
        currentnumber = answer;
        numberpag.innerHTML = answer;
        // listpag
        let formData = new FormData();
        formData.append('page', answer)
        formData.append('_token', token)
        fetch(`${url}/listpag`, {
            method: "POST",
            body: formData
        }).then(Response => {
            return Response.json()
            //   console.log(Response)

        }).then(res => {
            let jack = res.data

            jack.filter((item)=>{
                if(item.articlename != '<strong>Introduction</strong>'){
                    rowpagone.innerHTML += `
                    <div class="realwedding-block">
                        <div class="realwedding-img">

                            <a href="${url}/single/${item.id}" class="imagehover"><img src="${item.picture}" alt="Real wedding couple"></a>
                        </div>
                        <div class="realwedding-content">
                            <h2><a href="${url}/single/${item.id}" class="title"> ${item.articlename}</a></h2>
                            <p class="meta">
                                <span class="meta-category">
                            <a href="#" class="meta-link">year</a></span> <span class="meta-date">${item.yearup}</span>
                                <span class="meta-author"><a href="#" class="meta-link">${item.categories}</a></span>
                            </p>${item.articlebodyone.substring(0,200)}...</p>
                        </div>
                    </div>
               `;
                }


            })

        })


    }else if(currentnumber == 1){

        rowpagone.innerHTML = '';
        let answer = 1;
        console.log(answer)
        currentnumber = answer;
        numberpag.innerHTML = answer;
        // listpag
        let formData = new FormData();
        formData.append('page', answer)
        formData.append('_token', token)
        fetch(`${url}/listpag`, {
            method: "POST",
            body: formData
        }).then(Response => {
            return Response.json()
            //   console.log(Response)

        }).then(res => {
            let jack = res.data

            jack.filter((item)=>{
                if(item.articlename != '<strong>Introduction</strong>'){
                    rowpagone.innerHTML += `
                    <div class="realwedding-block">
                        <div class="realwedding-img">

                            <a href="${url}/single/${item.id}" class="imagehover"><img src="${item.picture}" alt="Real wedding couple"></a>
                        </div>
                        <div class="realwedding-content">
                            <h2><a href="${url}/single/${item.id}" class="title"> ${item.articlename}</a></h2>
                            <p class="meta">
                                <span class="meta-category">
                            <a href="#" class="meta-link">year</a></span> <span class="meta-date">${item.yearup}</span>
                                <span class="meta-author"><a href="#" class="meta-link">${item.categories}</a></span>
                            </p>${item.articlebodyone.substring(0,200)}...</p>
                        </div>
                    </div>
               `;
                }


            })

        })


    }
    else{
        numberpag.innerHTML = 1;
        currentnumber = 1;

    }
})



next.addEventListener('click', function(e){
    e.preventDefault();

    if(currentnumber == pagdata.last_page){

            rowpagone.innerHTML = '';
        let answer =  currentnumber + 1
        console.log(answer)
        numberpag.innerHTML = answer
        currentnumber = answer;
        let formData = new FormData();
        formData.append('page', answer)
        formData.append('_token', token)
        fetch(`${url}/listpag`, {
            method: "POST",
            body: formData
        }).then(Response => {
            return Response.json()
            //   console.log(Response)

        }).then(res => {
            let jack = res.data
      jack.filter((item)=>{
                if(item.articlename != '<strong>Introduction</strong>'){
                    rowpagone.innerHTML += `
                    <div class="realwedding-block">
                        <div class="realwedding-img">

                            <a href="${url}/single/${item.id}" class="imagehover"><img src="${item.picture}" alt="Real wedding couple"></a>
                        </div>
                        <div class="realwedding-content">
                            <h2><a href="${url}/single/${item.id}" class="title"> ${item.articlename}</a></h2>
                            <p class="meta">
                                <span class="meta-category">
                            <a href="#" class="meta-link">year</a></span> <span class="meta-date">${item.yearup}</span>
                                <span class="meta-author"><a href="${url}/single/${item.id}" class="meta-link">${item.categories}</a></span>
                            </p>${item.articlebodyone.substring(0,200)}...</p>
                        </div>
                    </div>
                </>`;

                }
            })

        })

    }
    else{
    //    let ans = pagdata.last_page - 1

       rowpagone.innerHTML = '';
       let answer =  pagdata.last_page - 1
       console.log(answer)
       numberpag.innerHTML = answer
       currentnumber = answer;
       let formData = new FormData();
       formData.append('page', answer)
       formData.append('_token', token)
       fetch(`${url}/listpag`, {
           method: "POST",
           body: formData
       }).then(Response => {
           return Response.json()
           //   console.log(Response)

       }).then(res => {
           let jack = res.data
     jack.filter((item)=>{
               if(item.articlename != '<strong>Introduction</strong>'){
                   rowpagone.innerHTML += `
                   <div class="realwedding-block">
                       <div class="realwedding-img">

                           <a href="${url}/single/${item.id}" class="imagehover"><img src="${item.picture}" alt="Real wedding couple"></a>
                       </div>
                       <div class="realwedding-content">
                           <h2><a href="${url}/single/${item.id}" class="title"> ${item.articlename}</a></h2>
                           <p class="meta">
                               <span class="meta-category">
                           <a href="#" class="meta-link">year</a></span> <span class="meta-date">${item.yearup}</span>
                               <span class="meta-author"><a href="${url}/single/${item.id}" class="meta-link">${item.categories}</a></span>
                           </p>${item.articlebodyone.substring(0,200)}...</p>
                       </div>
                   </div>
               </>`;

               }
           })

       })



    }



})



}





// var pusher = new Pusher("f959c4bf7c6b75daca59", {
//     cluster: "eu",
//   });
//   var channel = pusher.subscribe("broadcastdata");
//   channel.bind("App\\Events\\showbroad", (data) => {
//      console.log(data)
//   });



if(comm){
    // comm
    // listnone.innerHTML
    amountcomment.innerHTML = `${comm.length} Comments`
    comm.map((item)=>{
        console.log(item)
        // item.name
        // item.created_at
        // item.message
        let bool = new Date(item.created_at)
        var dd = String(bool.getDate()).padStart(2, '0');
        var mm = String(bool.getMonth() + 1).padStart(2, '0');
        var yyyy = bool.getFullYear();
        let createddate = dd+ '/' + mm + '/' + yyyy
        listnone.innerHTML += `
        <li class="comment">
        <div class="comment-body">
            <div class="">
                <div class="comment-author"> </div>
                <div class="comment-info">
                    <div class="comment-header">
                        <h4 class="user-title">${item.name}</h4>
                        <div class="comment-meta"><span class="comment-meta-date">${createddate}</span></div>
                    </div>
                    <div class="comment-content">
                        <p>${item.message}</p>
                        <div class="reply"><a  class="btn-link" ></a></div>
                    </div>
                </div>
            </div>
        </div>
    </li>
        `;
    })
}

if(contact){
    singlebutton.addEventListener("click", function(e){
        e.preventDefault();
       console.log('jhduhdidih')
        let formData = new FormData();
    formData.append('name', namecontact.value)
    formData.append('email', emailcontact.value)
    formData.append('message', messagecontact.value)
    formData.append('_token', token)
    axios.post(`${url}/contact`,formData).then(res => {
        console.log(res)
        if(res.success){
            messagex.textContent = res.success
            messagex.style.display = 'green'
        }
    }).catch(err=>{
        let error = err.response.data.errors
        if(error.name){
            messagex.textContent =  error.name[0]
            messagex.style.display = 'red'
        }else if(error.email){
            messagex.textContent = error.email[0]
            messagex.style.display = 'red'

        }else if(error.message){
            messagex.textContent =  error.message[0]
            messagex.style.display = 'red'
        }
    })

    })
}










