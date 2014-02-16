<!DOCTYPE html>
<%@ page language="java" pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <link rel="stylesheet" type="text/css" href="/ueditor/themes/default/css/ueditor.css"/>
    <script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="/ueditor/ueditor.all.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</head>
<body>

<%--完整使用，同时也演示多处使用--%>
<div style="width:800px;margin:20px auto 40px;">
    <script type="text/plain" id="editor" name="content" style="width:100%;height:200px;"></script>
</div>
<script type="text/javascript">
    UE.getEditor('editor')
</script>
</body>
</html>