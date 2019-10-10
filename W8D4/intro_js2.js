function titleize(arr, cb){
    let title = arr.map(el => `Mx. ${el} Jingleheimer Schmidt`);
    cb(title)
}
// function cb(el){
//     console.log(el);
// }
titleize(['Mary', 'Joe'], (arr) => {
    arr.forEach(el => console.log(el));
});

function Elephant(name, height, tricks){
    this.name = name;
    this.height = height; 
    this.tricks = tricks; 
};

Elephant.prototype.trumpet = function(){
    console.log(`${name} goes phrRRRRRRRRRRR!!!!!!!`);
};

Elephant.prototype.grow = function(){
    this.height += 12; 
};

Elephant.prototype.addTrick(trick) = function(){
    return this.tricks.push(trick);
};

Elephant.prototype.play = function(){
    let index = [Math.floor(Math.random() * items.length)]
    return `${this.name} is ${this.tricks[index]}`;
};

Elephant.prototype.paradeHelper = function(elephant){
    console.log(`${elephant.name} is trotting by!`);
};

function dinerBreakfast(){
    let order = "I'd like cheesy scrambled eggs please";
    
    return function (food) {
        order = `${order.slice(0,order.length-7)} and ${food} please.`
        console.log(order)
    }
}

