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
    /*
    var form = $('#form1');
    // 为表单创建事件监听
    $(form).submit(function(e) {

        //阻止浏览器直接提交表单
        e.preventDefault();

        var formtype = $('#formtype').val();

        switch(formtype){

            case 'login':

                break;

        }


        //密码验证
        var newpwd = document.getElementById("newpwd");
        var repwd = document.getElementById("repwd");
        repwd.onblur = function(){
            if(repwd.value != newpwd.value){ 
                repwd.setCustomValidity("重复密码与新密码不一致.");
            }
        };

        //手机验证
        var robot = $("#mdCheckRot");
        if(robot.val() == '1'){
            $('.isrobot p i').attr('style','color:red');
            return false;
        }


        // 序列化表单数据
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

    var form = $('#checkform');
    $(form).find("input").focus(function(){
      $(".error").hide();
    });
    
    // 为表单创建事件监听
    $(form).submit(function(e) {

        //阻止浏览器直接提交表单
        e.preventDefault();

        var formtype = $('#formtype').val();

        if(formtype == 'register'){

            //密码验证
            var pwd = $("#pwd").val();
            var repwd = $("#repwd").val();
            if(repwd != pwd){ 
                $('.repwd').show();
            }

        }

        // 序列化表单数据 隐藏域无法获到值FUCK
        var formData = $(form).serialize();

        // 使用AJAX提交表单
        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: formData,
            beforeSend: function ( xhr ) {
                $('#loadimg').show();
                $('#submit').hide();
            }
        })
        .done(function(response) {

            $('#loadimg').hide();

            $('#submit').show();

            if(response == 500){
                $('.server').show();
            }

            if(response == -1){
                $('.verifcode').show();
            }

            //登陆
            if(formtype == 'login'){
                if(response == -2){
                    $('.user').show();
                }else if(response == -3){
                    $('.pwd').show();
                } 
            }

            //注册
            if(formtype == 'register'){
                if(response == -2){
                    $('.phone').show();
                }else if(response == -3){
                    $('.phonecode').show();
                } 
            }

            window.location.href='/member';

        })
        .fail(function(data) {

            // 设置消息文本
            if (data.responseText !== '') {
                $('.server').text(data.responseText);
            } else {
                $('.server').text('出错了,请再试一次!.');
            }

            $('#submit').show();

            $('#loadimg').hide();

        });
 
    });

    //加入我们 展开闭合
    $('.conbr h3 span').click(function(){
        var op = $(this).parent().parent().find('.op');
        if(typeof(op.attr('style')) == 'undefined' || op.attr('style') == ''){
            $(this).find('i').attr('class','fa fa-chevron-down');
            op.attr('style','height: 80px');
        }else{
            $(this).find('i').attr('class','fa fa-chevron-up');
            op.attr('style','');
        }
    });

    //省市下拉
    $("#prov_city").citySelect({
        nodata: "none",
        required: false
    });

    //安全设置 取消
    $('.info-panel table button.cancel').click(function(){
        var p = $(this).parent();
        p.addClass('hide');
        p.siblings('div').removeClass('hide');
    });

    //安全设置 绑定
    $('.info-panel table button.bind').click(function(){
        var p = $(this).parent().parent();
        p.addClass('hide');
        p.siblings('div').removeClass('hide');
    });

    //安全设置 绑定
    $('.info-panel table button.ok').click(function(){
        var input = $(this).siblings('input');
        //input.val()
        //input.attr('name');
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


/*发送手机验证码*/
var wait=60;  
function time(o) {  
    if (wait == 0) {  
        o.removeAttribute("disabled");            
        o.value="重新发送验证码";
        o.style.background="#fff";  
        wait = 60;  
    } else {  
        o.setAttribute("disabled", true);  
        o.value="发送验证码(" + wait + ")...";
        o.style.background="#eee";  
        wait--;  
        setTimeout(function() {  
            time(o)  
        },  
        1000)  
    }  
}  
document.getElementById("getphonecode").onclick=function(){time(this);}  