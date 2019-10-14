document.addEventListener("DOMContentLoaded", function(){
   const canvas = document.getElementById('mycanvas');
   canvas.height = 500;
   canvas.width = 500;

   const ctx = canvas.getContext('2d');
   ctx.fillStyle = "red";
   ctx.fillRect(20, 10, 150, 100);

   ctx.beginPath();
   ctx.arc(100, 75, 50, 0, 2 * Math.PI);
   ctx.stroke();
   ctx.strokeStyle = 'purple';
   ctx.lineWidth = 4;
   ctx.fillStyle = 'purple';
   ctx.fill();



});


