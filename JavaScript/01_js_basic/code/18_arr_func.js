const ROARRRRRRR = {
    firstName: "Dino",
    lastName: "Saurus",
    fullname: () => {
        return `${this.firstName}${this.lastName}`;
    },
    panggilNanti: function (){
        setTimeout(function(){
            console.log(this.firstName);
        }, 3000);
    }
};

console.log(ROARRRRRRR.fullname());
console.log(ROARRRRRRR.panggilNanti());