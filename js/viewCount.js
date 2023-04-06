const thumbnails = document.querySelectorAll('img[thumbnail]');
const button = document.querySelectorAll('button[button]');

const addViewCount = (id, tbl)=> {
    const xhr = new XMLHttpRequest();
    const formData = new FormData();
    const display = document.getElementById(`display_${tbl}_${id}`);
    formData.append('id', id);
    formData.append('tbl', tbl);

    xhr.open('POST', 'add-count.php');

    xhr.onerror = () => {
        console.log("ERRORR")
    }
    xhr.onload = () => {
        const data =  JSON.parse(xhr.response);
        display.innerHTML = data;
    }
    xhr.send(formData);
}

thumbnails.forEach((img)=>{
    const tbl = img.getAttribute('tbl');
    const id = img.getAttribute('id');

    img.addEventListener('click', ()=> addViewCount(id, tbl));
})
button.forEach((img)=>{
    const tbl = img.getAttribute('tbl');
    const id = img.getAttribute('id');

    img.addEventListener('click', ()=> addViewCount(id, tbl));
})
