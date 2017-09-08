$(function(){

    /*
    var form = $('#ajax-appointment');
	// 为表单创建事件监听
	$(form).submit(function(e) {

		//阻止浏览器直接提交表单
		e.preventDefault();

		//手机验证
		var mobile = document.getElementById("mdInputPhone");;
	    mobile.onblur = function(){
	        if(mobile.validity.patternMismatch){ 
	            mobile.setCustomValidity("cell phone number error.");
	        }
	    };

        //手机验证
        var robot = $("#mdCheckRot");
        if(robot.val() == '1'){
            $('.isrobot p i').attr('style','color:red');
            return false;
        }

        // 序列化表单数据 隐藏域无法获到值FUCK
        var formData = $(form).serialize();

        // 使用AJAX提交表单
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            beforeSend: function ( xhr ) {
                $('.load-wrap').append('<img src="../wp-content/themes/ruxinspa/images/loading.gif" alt="" />');
                $('#submit').hide();
            }
        })
        .done(function(response) {

            $('#modalTip').modal();

            if(response == 200){

                $('#myModal').modal('hide');

                // 清除表单
                $('#mdInputName').val('');
                $('#mdInputPhone').val('');
                $('#mdCheckKnow').val('');
                $('#mdInputOthers').val('');
                $('.know i').attr("class","fa fa-square-o purple-font");
                $('.isrobot').find('i').attr("class","fa fa-square");
              
                $('#myModalLabel').html('<img src="../wp-content/themes/ruxinspa/images/icon_person.png" alt="" style="float:left;width:70px;"/>Thank You For <br/>Using Our Online Booking System.');

                $(formMessages).html('<img src="../wp-content/themes/ruxinspa/images/icon_tel.png" alt="" style="float:left;margin:-15px 10px 0 0;width:50px;"/>Our staff will contact you for confirmation shortly.');

            }else if(response == 500){
                $('#myModalLabel').text('Tip');
                $(formMessages).text('Internal Server Error.');
            }

            $('.load-warp img').remove();

            $('#submit').show();

        })
        .fail(function(data) {

            $('#modalTip').modal();

            $('#myModalLabel').text('Tip');

            // 设置消息文本
            if (data.responseText !== '') {
                $(formMessages).text(data.responseText);
            } else {
                $(formMessages).text('An error occurred and could not send.');
            }

            $('#submit').show();

            $('.load-warp img').remove();

        });
 
	});
    */

    //加入我们 展开闭合
    $('.conbr h3 span').click(function(){
        var op = $(this).parent().parent().find('.op');
        if(op.attr('style') == 'height:auto'){
            $(this).find('i').attr('class','fa fa-chevron-down');
            op.attr('style','height:80px');
        }else{
            $(this).find('i').attr('class','fa fa-chevron-up');
            op.attr('style','height:auto');
        }
    });

});

/*
* switchTab 标签切换
* tle - 标题ID
* con - 内容ID
* e   - 当前点击元素
*/
function switchTab(tle,con,e){
    var tle = document.getElementById(tle);
    var con = document.getElementById(con);
    for(var i=0; i < tle.children.length; i++){
        tle.children[i].className = '';
        con.children[i].style.display = 'none';
    }
    con.children[e].style.display = '';
    tle.children[e].className = 'active';
}