<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- include libraries(jQuery, bootstrap) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>

<input type="hidden" name="boardNo" value="${param.boardNo }">
<textarea id="summernote" name="content" value="${vo.content }"></textarea>
<script>
$('#summernote').summernote({
 	placeholder: '내용을 입력하세요',
    minHeight: 350,
    maxHeight: null,
    focus: true, 
    lang : 'ko-KR'
});
</script>
