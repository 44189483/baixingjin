var t;

$(function(){

    var form = $('#checkform');
    $(form).find("input").focus(function(){
      $(".error").hide();
    });
    
    // 为表单创建事件监听
    $(form).submit(function(e) {

        //阻止浏览器直接提交表单
        e.preventDefault();

        var url;

        var formtype = $('#formtype').val();

        var phone = $('#phone');
        if(phone.length > 0){
            if (!phone.val().match(/^((1[0-9]{1})+\d{9})$/)) { 
                $(".phone").show();
                $(".phone").text("手机号码格式不正确."); 
                return false; 
            } 
        }

        //注册 密码 安全
        if(formtype == 'register' || formtype == 'setpwd' || formtype == 'mysafe'){

            var email = $("#email");
            if(email.length > 0){
                if(!email.val().match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)){
                    $(".email").text("邮箱格式有误.");
                    $(".email").show();
                    return false;
                }
            }

            //密码验证
            var pwd = $("#pwd").val();
            var repwd = $("#repwd").val();
            if(repwd != pwd){ 
                $('.repwd').text('两次密码输入不一致');
                $('.repwd').show();
                return false;
            }

            if($('#agree').length > 0 && !$('#agree').is(':checked')) {
                $('.agree').text('未同意注册协议.');
                $('.agree').show();
                return false;
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
                $('#submit').attr('disabled',true);
            }
        })
        .done(function(response) {

            $('#submit').removeAttr('disabled',true);

            if(response == 500){
                $('.server').show();
                return false;
            }

            if(response == -1){
                $('.verifcode').text('图片验证码错误.');
                $('.verifcode').show();
                return false;
            }

            //登陆
            if(formtype == 'login'){
                if(response == -2){
                    $('.phone').text('用户不存在');
                    $('.phone').show();
                    return false;
                }else if(response == -3){
                    $('.pwd').text('密码错误请重新填写.');
                    $('.pwd').show();
                    return false;
                }

                url = '/user';

            }

            //注册
            if(formtype == 'register'){
                if(response == -2){
                    $('.phone').show();
                    $('.phone').text('用户已存在.');
                    return false;
                }else if(response == -3){
                    $('.phonecode').text('短信验证码错误.');
                    $('.phonecode').show();
                    //发送验证码复位

                    return false;
                }else if(response == -4){
                    $('.recommcode').text('渠道推荐码错误..');
                    $('.recommcode').show();
                    return false;
                }  
                url = '/user';
            }

            //查找密码
            if(formtype == 'findpwd'){
                if(response == -2){
                    $('.phone').text('用户不存在');
                    $('.phone').show();
                    return false;
                }else if(response == -3){
                    $('.phonecode').text('短信验证码错误.');
                    $('.phonecode').show();
                    //发送验证码复位
                    return false;
                }
                url = null;
                window.location.href='/member/setpwd';
            }

            //设置密码
            if(formtype == 'setpwd'){
                url = '/member/login';
            }

            if(formtype == 'mysafe'){
                url = '/user/mysafe';
            }

            if(url != null){
                //弹出框提示+跳转
                $('#myModal .modal-body').text(response);
                $('#myModal').modal('show');
                $('#myModal').on('hidden.bs.modal', function () {
                    window.location.href = url;
                });
            }

        })
        .fail(function(data) {

            // 设置消息文本
            if (data.responseText !== '') {
                $('.server').text(data.responseText);
            } else {
                $('.server').text('出错了,请再试一次!.');
            }

            $('#submit').removeAttr('disabled',true);

        });
 
    });

    //触发输入手机验证码时
    $("#phonecode").keyup(function(){
        clearTimeout(t);
        //验证码按钮激活
        $("#getphonecode").attr("value","重新发送验证码");
        $("#getphonecode").css("background","#fff"); 
        //提交按钮变成点击
        $("#submit").attr("disabled", false);
        $("#submit").css("background","#cd9d26"); 
    })

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

        var name = input.attr('name');

        if(name == 'mobile'){

            if (!input.val().match(/^((1[0-9]{1})+\d{9})$/)) { 
                $(".mobile").text('手机号码格式不正确.');
                $(".mobile").show();
                return false; 
            } 

        }

        if(name == 'email'){

            if(!input.val().match(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/)){
                $(".email").text('邮箱格式不正确.');
                $(".email").show();
                return false;
            }

        }

        if(name == 'bankcard'){
            if(input.val() == '' || input.val() == null){
                $(".bankcard").text('银行卡+卡号不能为空.');
                $(".bankcard").show();
                return false;                
            }
        }

        $.ajax({
           type: "POST",
           url: "/user/ajax_safe",
           data: "filed="+name+"&value="+input.val(),
           success: function(msg){
             if(msg != null || msg != ''){
                $('.'+name).show();
                $('.'+name).text(msg);
             }else{
                $('.'+name).hide();
                input.parent().siblings('div').html(input.val()+'<span class="pull-right"><button type="button" class="bind">已绑定</button></span>');
             }
           }
        });
    });

    //发送手机验证码
    $("#getphonecode").click(function(){
        var phone = $("#phone");
        if(phone.val() == '' || phone.val() == null){
            $('.phone').show();
            $('.phone').text('手机号码不能为空');
            return false;
        }
        if(!phone.val().match(/^((1[0-9]{1})+\d{9})$/)){
            $('.phone').show();
            $('.phone').text('手机号码格式不正确');
            return false;
        }

        $("#submit").css("background","#eee");  
        $("#submit").attr("disabled", true);//禁用提交按钮 

        $.ajax({
           type: "POST",
           url: "/member/sendverifycode",
           data: "phone="+phone.val(),
           success: function(msg){
            if(msg != 'ok' && msg != null && msg != ''){ 
             alert(msg);
            }
           }
        });

        time(this);
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
var wait=180;  
function time(o) {  
    var btn = document.getElementById('submit');
    if (wait == 0) {  
        o.removeAttribute("disabled");            
        o.value="重新发送验证码";
        o.style.background="#fff"; 
        btn.style.background="#cd9d26";
        btn.setAttribute("disabled", false);//禁用提交按钮 
        wait = 180;  
    } else {  
        o.setAttribute("disabled", true);  
        o.value="发送验证码(" + wait + ")...";
        o.style.background="#eee";
        wait--;  
        t = setTimeout(function() {  
            time(o)  
        },  
        1000)  
    }  
}  

//document.getElementById('getphonecode').onclick = function(){time(this);}; 