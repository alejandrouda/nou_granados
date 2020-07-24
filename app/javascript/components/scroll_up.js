const navItem = document.querySelector(".navbar-meals")

const scrollUp = () => {
    navItem.addEventListener('click', () => {
        console.log("esaa!")
        document.documentElement.scrollTop = 0;
    });
};


export { scrollUp }