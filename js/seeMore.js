const seemore_sort = document.getElementById('seemore_sort');
const seemore_contents = document.getElementById('seemore_contents');
const URL = 'sort_ajax.php';

var tblPage;

const handleOnChange = ({target : {value}}, tbl) => {
                
    const xhr = new XMLHttpRequest();
    const data = new FormData();

    data.append('sort',value );
    xhr.open('POST', URL); //Establish connection
    xhr.onload = () => {
        const response = JSON.parse(xhr.response);
        removeAllChildNodes(seemore_contents);
        console.log(response);
        response.map((data) => {
            const bg_container = document.createElement('div');
            bg_container.classList.add('bg_container');

            const exp_place = document.createElement('div');
            exp_place.classList.add('exp_place');
            exp_place.innerHTML = `
            ${data.place_name}
            <div class="exp_links">
                <a href="${data.fb_link}" target="_blank">
                    <i class="bx bxl-facebook-circle icons_"></i>
                </a>
                <a href="${data.gmail_link1}" target="_blank">
                    <i class="bx bx-globe icons_"></i>
                </a>
                <a href="${data.embedded_map}" target="_blank">
                    <i class="bx bxs-map icons_"></i>
                </a>
            </div>
            `;

            const more_grid = document.createElement('div');
            more_grid.classList.add('more_grid');

            const left_side = document.createElement('div');
            left_side.classList.add('left_side');

            left_side.innerHTML = `
                <div class="left_side">
                    <div class="exp_img_box">
                        <img src="img/tourist/${data.img1}" alt="">
                    </div>
                </div>
            `;

            const right_side = document.createElement('div');
            right_side.classList.add('right_side');
            
            right_side.innerHTML = `
                <p>
                    ${data.details}
                </p>
                </br>
                <div class="details">
                    Rate starts at: <br>
                    <b>PHP ${data.rate}.00</b>
                </div>
                <div class="details">
                    Total views:
                    <p id="display_${tbl}_${data.id}">${data.views} <i class="uil uil-eye icons_"></i></p> 
                </div>
            `
            const anchor_tag = document.createElement('a');
            anchor_tag.setAttribute('href', `wg-quickview.php?pid=${data.id}`);
            anchor_tag.setAttribute('target', '_blank');

            const button = document.createElement('button');
            button.classList.add('visit_btn');
            button.setAttribute('id', data.id);
            button.setAttribute('tbl', tbl);
            button.addEventListener('click', () => addViewCount(data.id, tbl))
            button.innerText = 'Details';

            anchor_tag.appendChild(button);

            right_side.appendChild(anchor_tag);

            more_grid.appendChild(left_side);
            more_grid.appendChild(right_side);
            
            bg_container.appendChild(exp_place);
            bg_container.appendChild(more_grid)

            seemore_contents.appendChild(bg_container);


        })
    }
    xhr.send(data);
}

seemore_sort.addEventListener('change', (e) => handleOnChange(e, tblPage));