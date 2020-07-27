const scrollUp = () => {
    const navItem = document.querySelector(".navbar-meals")
    navItem.addEventListener('click', () => {
        console.log("esaa!")
        document.documentElement.scrollTop = 0;
    });
};


export { scrollUp }