<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<script>
/* var overlay = document.getElementById("overlay-signIn");
var close = document.getElementById("close-btn");
var signIn = document.getElementById("signIn-btn");
signIn.onclick = function() {
	  overlay.style.display = "block";
	}
close.onclick = function() {
	  overlay.style.display = "none";
	} */
	const modal = document.querySelector('.modal');
	const overlay = document.querySelector('.overlay');
	const btnCloseModal = document.querySelector('.close-modal');
	const btnsOpenModal = document.querySelector('.show-modal');

	const openModal = function () {
	  modal.classList.remove('hidden');
	  overlay.classList.remove('hidden');
	};

	const closeModal = function () {
	  modal.classList.add('hidden');
	  overlay.classList.add('hidden');
	};
	
	btnsOpenModal.addEventListener('click', openModal);
	btnCloseModal.addEventListener('click', closeModal);
	overlay.addEventListener('click', closeModal);
	document.addEventListener('keydown', function (e) {
	  if (e.key === 'Escape' && !modal.classList.contains('hidden')) {
	    closeModal();
	  }
	});
	
	var adminModal = document.querySelector('.Admin');
	var userModal = document.querySelector('.User');
	var adminInfoModal = document.querySelector('.AdminInfo');
	var userInfoModal = document.querySelector('.UserInfo');
	
	var AdminFunction = function () {
		/*  userInfoModal.remove();
		adminInfoModal.classList.remove('AdminHidden'); */
		adminInfoModal.style.display = "block";
		userInfoModal.style.display = "none"
		
	}; 
	var UserFunction = function () {
		/*  userInfoModal.remove();
		adminInfoModal.classList.remove('AdminHidden'); */
		adminInfoModal.style.display = "none";
		userInfoModal.style.display = "block"
		
	};
	adminModal.addEventListener('click', AdminFunction);
	userModal.addEventListener('click', UserFunction);
</script>
<style type="text/css">
.hidden {
  display: none;
}

.AdminHidden{
  display: none;
}

.UserHidden{
  display: block;
}


.modal {
  /* position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 70%; 

  background-color: white; */
  padding: 6rem;
  border-radius: 5px;
  box-shadow: 0 3rem 5rem rgba(0, 0, 0, 0.3);
  z-index: 10;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.6);
  backdrop-filter: blur(3px);
  z-index: 5;
}
</style>
</head>
<body>
<header id="nav-bar" class="text-gray-600 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
    <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
      <img src="https://cdn.dribbble.com/users/35367/screenshots/1436646/h-book-colors.gif"  class="object-scale-down h-20 w-20 ..." >
      <span class="ml-3 text-xl">easyPaper</span>
    </a>
    <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center">
      <a href="Home.html" class="mr-5 hover:text-gray-900">Home</a>
      <a class="mr-5 hover:text-gray-900">About Us</a>
      <a href="contactUs.html"class="mr-20 hover:text-gray-900">Contact Us</a>
      <button id="signIn-btn" class="mr-5 hover:text-gray-900 show-modal"><u>Sign In</u></button>
    </nav>
    <a href="UserSignUp.jsp"><button class="inline-flex text-white items-center bg-indigo-400 border-0 py-1 px-3 focus:outline-none hover:bg-purple-700 rounded text-base mt-4 md:mt-0">Sign Up
      <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
        <path d="M5 12h14M12 5l7 7-7 7"></path>
      </svg>
    </button></a>
  </div>
</header>

<div  class="flex items-center absolute inset-0 modal hidden"  id="overlay-signIn">
        <div class="bg-black opacity-75 z-10"></div>

        <div class="relative mx-6 md:mx-auto w-full md:w-1/2 lg:w-1/3 z-20 m-8">
            <div class="shadow-lg bg-white rounded-lg p-8">
                <div class="flex justify-end mb-6">
                    <button id="close-btn" class="close-modal">
                       <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="red">
  <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd" />
</svg>
                    </button>
                </div>

                <h1 class="text-center text-2xl text-green-dark">Login</h1>

                <form class="pt-6 pb-2 my-2 UserInfo UserHidden">
                    <div class="mb-4 ">
                        <label class="block text-sm font-bold mb-2" for="email">
                            Email Address
                        </label>
                        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-grey-darker" id="email" type="text" placeholder="Email Address">
                    </div>
                    <div class="mb-6">
                        <label class="block text-sm font-bold mb-2" for="password">
                            Password
                        </label>
                        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-grey-darker mb-3" id="password" type="password" placeholder="Password">
                    </div>
                    <div class="block md:flex items-center justify-between">
                        <div><a href="User.jsp">
                            <button class="bg-black hover:bg-green-dark text-white font-bold py-2 px-4 rounded border-b-4 border-green-darkest" type="button">
                                Sign In
                            </button></a><br>
                            <div class="Admin">
                              <a href="#" class="text-green no-underline ">SignIn As Admin?</a><br>     
                            </div>
                        </div>

                        <div class="mt-4 md:mt-0">
                            <a href="#" class="text-green no-underline">Forget Password?</a><br>
                        </div>
                    </div>
                </form>
                 <form class="pt-6 pb-2 my-2 AdminInfo AdminHidden">
                    <div class="mb-6 ">
                        <label class="block text-sm font-bold mb-2" for="password">
                            AdminID
                        </label>
                        <input class="shadow appearance-none border rounded w-full py-2 px-3 text-grey-darker mb-3" id="password" type="password" placeholder="Password">
                    </div>
                    <div class="block md:flex items-center justify-between">
                        <div><a href="Admin.jsp">
                            <button class="bg-black hover:bg-green-dark text-white font-bold py-2 px-4 rounded border-b-4 border-green-darkest" type="button">
                                Sign In
                            </button></a><br>
                            <div class="User">
                              <a href="#" class="text-green no-underline ">SignIn As User?</a><br>     
                            </div>
                        </div>

                        <div class="mt-4 md:mt-0">
                            <a href="#" class="text-green no-underline">Forget ID?</a><br>
                        </div>
                    </div>
                </form>
            </div>
        </div>
         <div class="overlay hidden"></div>
    </div>
    
</body>
</html>