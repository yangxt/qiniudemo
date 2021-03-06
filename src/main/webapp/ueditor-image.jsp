<!DOCTYPE html>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
    <title>ueditor上传图片控件</title>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" type="text/css" href="/ueditor/themes/default/css/ueditor.css"/>
    <script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="/ueditor/ueditor.all.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>
<body>
<%--单独调用图片上传--%>
<form action="" type="" method="post" enctype="multipart/form-data">

    <input id="upload" type="text" value=""/>
    <script id="myeditor"></script>
    <span  id="image">上传图片</span>

    <script type="text/javascript">
        (function($){
            var image = {
                editor:null,
                init:function(editorid,keyid){
                    var _editor =this.getEditor(editorid);
                    _editor.ready(function () {
                        _editor.setDisabled();
                        _editor.hide();
                        _editor.addListener('beforeInsertImage', function (t, args) {
                            $("#"+keyid).val(args[0].src);
                        });
                    });
                },
                getEditor:function(editorid){
                    this.editor = UE.getEditor(editorid);
                    return this.editor;
                },
                show:function(id){
                    var _editor = this.editor;
                    //注意这里只需要获取编辑器，无需渲染，如果强行渲染，在IE下可能会不兼容（切记）
                    //和网上一些朋友的代码不同之处就在这里
                    $("#"+id).click(function(){
                        var image = _editor.getDialog("insertimage");
                        image.render();
                        image.open();
                    });
                },
                render:function(editorid){
                    var _editor = this.getEditor(editorid);
                    _editor.render();
                }
            };
            $(function(){
                image.init("myeditor","upload");
                image.show("image");
            });
        })(jQuery);
    </script>
</form>
</body>
</html>