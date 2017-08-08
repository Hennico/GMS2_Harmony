/// scr_move(velocityX, velocityY)
var velocityX = round(argument[0]);
var velocityY = round(argument[1]);

if (!scr_availablePosition(x+velocityX,y)) {
    var delta = sign(velocityX);
    while (scr_availablePosition(x+delta,y)) {
        x += delta;
    }
} else {
    x += velocityX;
}
    
if (!scr_availablePosition(x, y+velocityY)) {
    var delta = sign(velocityY);
    while (scr_availablePosition(x,y+delta)) {
        y += delta;
    }
} else {
    y += velocityY;
}



