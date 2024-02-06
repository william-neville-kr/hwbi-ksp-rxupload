$(function () { // wait for document to load 
    $('#oFile').MultiFile({
        //max: 5,
        //maxsize: 5120,
        //accept: 'jpg|gif|png|tif|tiff|pdf',
        list: '#File_List',
        STRING: {
            file: '<strong>$file</strong><span class="small"> ($size) [$type]</span>',
            remove: '<span class="web-icon reset cross" aria-hidden="true"></span>'
        }
    });
});