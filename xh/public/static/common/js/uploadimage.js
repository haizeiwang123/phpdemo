//通用上传图片方法
function bindUploadImage(div,action,callback, isMultiple, compressType, checkSize) {
    var file;
    var form = $('<form action="'+action + (compressType != null ? "?compressType=" + compressType : "") + '"  method="post"></form>');
    file = $('<input type="file" accept="image/*;" name="file[]" style="display:none"/>');
    $(div).bind('click', function () { file.click(); });
    $('body').append(form);
    //}
    $(form).append(file);
    file.bind('change', function () { form.submit(); });
    if (isMultiple) {
        file.attr("multiple", "multiple");
    }
    form.ajaxForm({
        beforeSubmit: function () {
            var check = true;
            $.map(file.get(0).files, function (f) {
                var filepath = f.name;
                var extStart = filepath.lastIndexOf(".");
                var ext = filepath.substring(extStart, filepath.length).toUpperCase();
                if (ext != ".BMP" && ext != ".PNG" && ext != ".GIF" && ext != ".JPG" && ext != ".JPEG") {
                    alert("图片限于bmp,png,gif,jpeg,jpg格式");
                    check = false;
                    return;
                }
                if ((checkSize == null || checkSize == true) && f.size > 1024 * 1024) {
                    alert("图片大小不能超过1M");
                    check = false;
                    return;
                }
            });
            return check;
        },
        success: function (d) {
            if (!d.flag) {
                alert(d.msg);
            } else if (callback != null) {
                for (var i = 0; i < d.Data.length; i++) {
                    if (d.Data[i] != null && d.Data[i] != "") {
                        callback(d.Data[i]);
                    }
                }
            }
        }
    });
}

