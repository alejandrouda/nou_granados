const scrollUp = () => {
    const navItem = document.querySelector(".navbar-meals")
    navItem.addEventListener('click', () => {
        document.documentElement.scrollTop = 0;
    });
};


export { scrollUp }