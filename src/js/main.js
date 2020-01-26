"use strict";
// import 'core-js';
import * as GameSystem from "./modules/system" ;
import * as Player from "./modules/player";
import Item from "./modules/item";
import Location from "./modules/location";
import WildAnimal from "./modules/wildanimal";

window.addEventListener("load", function (){


GameSystem.message("Hello");
Item.listAll();
Item.getItem("Axe of Executioner", "weapon");

});