<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(function(){
		$('#startDay').datepicker({
			dateFormat:'yy-mm-dd',
			changeYear:true,
			dayNamesMin:['일','월','화','수','목','금','토'],
			monthNames:['1월','2월','3월','4월','5월','6월',
				'7월','8월','9월','10월','11월','12월']
		});
		$('#endDay').datepicker({
			dateFormat:'yy-mm-dd',
			changeYear:true,
			dayNamesMin:['일','월','화','수','목','금','토'],
			monthNames:['1월','2월','3월','4월','5월','6월',
				'7월','8월','9월','10월','11월','12월']
		});
		
		$('#btWeek').click(function(){
			$.setDate(7, 'd'); //1주일전
		})
		$('#btMonth1').click(function(){
			$.setDate(1, 'm'); //1개월전
		})
		$('#btMonth3').click(function(){
			$.setDate(3, 'm'); //3개월전
		})
		
	});
	
	$.setDate = function(term, type){
		var arr = $('#endDay').val().split("-");  //2020-07-20
		var d = new Date(arr[0], arr[1]-1, arr[2]);
		
		if(type=='d'){
			d.setDate(d.getDate()-term); //7일전 날짜			
		}else if(type=='m'){
			d.setMonth(d.getMonth()-term); //1개월전이나 3개월전 날짜			
		}
		
		$('#startDay').val($.findDate(d));
	}
	
	$.findDate=function(date){
		return date.getFullYear() +"-" 
			+ $.formatDate(date.getMonth()+1) 
			+"-" + $.formatDate(date.getDate());
	}
	
	$.formatDate = function(d){
		if(d<10){
			return "0"+d;
		}else{
			return d;
		}
	}
	
</script>
	<div>
		<input type="button" value="1주일" id="btWeek" class="btn btn-primary">
		<input type="button" value="1개월" id="btMonth1" class="btn btn-primary">
		<input type="button" value="3개월" id="btMonth3"class="btn btn-primary">
			
		<input type="text" name="startDay" id="startDay" style="width: 120px"
			value="${dateSearchVO.startDay }"> 

		~ 
		<input type="text" name="endDay" id="endDay" style="width: 120px"
			value="${dateSearchVO.endDay }">    
	</div>
		
		