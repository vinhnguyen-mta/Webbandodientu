﻿var product = {
    init: function () {
        product.registerEvents();
    },
    registerEvents: function () {
        $('.btn-images').off('click').on('click', function (e) {
            e.preventDefault();
            $('#imagesManage').modal('show');
            $('#hiProductID').val($(this).data('id'));
            product.loadImages();
        });

        $('#btnChooImages').off('click').on('click', function (e) {
            e.preventDefault();
            var finder = new CKFinder();
            finder.selectActionFunction = function (url) {
                $('#imageList').append('<div style="float:left" ><img src="' + url + '" width="100" /><a href="#" class="btn-delImage" ><i class="fa fa-times"></i></a></div>')
                $('.btn-delImage').off('click').on('click', function (e) {
                    e.preventDefault();
                    $(this).parent().remove();
                });
            };
            finder.popup();
        });
        $('#btnSaveImages').off('click').on('click', function () {
            var images = [];
            var id = $('#hiProductID').val();
            $.each($('#imageList img'), function (i, item) {
                images.push($(item).prop('src'));
            })
            console.log(id);
            $.ajax({
                url: '/Amin/Product/SaveImages',
                type: 'POST',
                data: {
                    id: id,
                    images: JSON.stringify(images)
                },
                dataType: 'json',
                success: function (response) {
                    if (response.status) {
                        $('#imagesManage').modal('hide');
                        $('#imageList img').html('');
                        alert('Save thành công');
                    }
                    

                }

            }); 
        });

    },
    loadImages: function () {
        $.ajax({
            url: '/Amin/Product/LoadImages',
            type: 'GET',
            data: {
                id: $('#hiProductID').val()
            },
            dataType: 'json',
            success: function (response) {
                    var data = response.data;
                    var html = '';
                    $.each(data, function (i, item) {
                        html += '<div style="float:left" ><img src="' + item + '" width="100" /><a href="#" class="btn-delImage" ><i class="fa fa-times"></i></a></div>'
                    });
                $('#imageList').html(html);

                $('.btn-delImage').off('click').on('click', function (e) {
                    e.preventDefault();
                    $(this).parent().remove();
                });

            }

        })
    }
}
product.init();