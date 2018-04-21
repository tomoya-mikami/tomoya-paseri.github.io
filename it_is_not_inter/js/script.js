var Shop = function(id, answer_text) {
    this.id = id;
    this.text = answer_text;
}


function set_near_shop(id, name, adress, time) {
    var node = document.getElementById("content_field");
    var child_node = document.createElement("div");
    child_node.className = "block_main_list_node";
    child_node.innerHTML = `<img src="./img/img_sample.jpg" alt="">` +
                            `<table class="block_table">` +
                            `<tr><td class="block_list_shop_name">${name}</td></tr>` +
                            `<tr><td class="block_list_shop_info">${adress}</td></tr>` +
                            `<tr><td class="block_list_shop_info">${time}</td></tr>`;
    node.appendChild(child_node);
}

function create_window_near_shop() {
    for(var i=0; i<20; i++) {
        set_near_shop(i+1, 'ショップ', '六本木', '8:00~21:00');
    }
}