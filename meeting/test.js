
console.log("work 1")
//အချိန်ယူတယ်
fetch('https://fakestoreapi.com/products/1')
    .then(res=>res.json())
    .then(json=>console.log("work 2"))
//အချိန်ယူတယ်
fetch('https://fakestoreapi.com/products/2')
    .then(res=>res.json())
    .then(json=>console.log("work 2"))
//အချိန်ယူတယ်
fetch('https://fakestoreapi.com/products/3')
    .then(res=>res.json())
    .then(json=>console.log("work 2"))
console.log("work 3")
