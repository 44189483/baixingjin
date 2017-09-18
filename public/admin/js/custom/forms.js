/*
 * 	Additional function for forms.html
 *	Written by ThemePixels	
 *	http://themepixels.com/
 *
 *	Copyright (c) 2012 ThemePixels (http://themepixels.com)
 *	
 *	Built for Amanda Premium Responsive Admin Template
 *  http://themeforest.net/category/site-templates/admin-templates
 */

jQuery(document).ready(function(){
	
	///// FORM TRANSFORMATION /////
	jQuery('input:checkbox, input:radio, select.uniformselect, input:file').uniform();


	///// DUAL BOX /////
	var db = jQuery('#dualselect').find('.ds_arrow .arrow');	//get arrows of dual select
	var sel1 = jQuery('#dualselect select:first-child');		//get first select element
	var sel2 = jQuery('#dualselect select:last-child');			//get second select element
	
	sel2.empty(); //empty it first from dom.
	
	db.click(function(){
		var t = (jQuery(this).hasClass('ds_prev'))? 0 : 1;	// 0 if arrow prev otherwise arrow next
		if(t) {
			sel1.find('option').each(function(){
				if(jQuery(this).is(':selected')) {
					jQuery(this).attr('selected',false);
					var op = sel2.find('option:first-child');
					sel2.append(jQuery(this));
				}
			});	
		} else {
			sel2.find('option').each(function(){
				if(jQuery(this).is(':selected')) {
					jQuery(this).attr('selected',false);
					sel1.append(jQuery(this));
				}
			});		
		}
	});
	
	
	
	///// FORM VALIDATION /////
	jQuery("#form1").validate({
		rules: {
			title: {
		     required: true,
		     maxlength: 100
		    },
			cname: "required",
			cid: "required",
			content: "required",
			number: "required",
			pwd: {
		     minlength: 6
		    },
		    newpwd: {
		     minlength: 6,
		     equalTo: "#pwd"
		    },
			selection: "required"
		},
		messages: {
			title: {
		     required: "标题必填",
		     maxlength: jQuery.format("密码不能大于50个字符")
		    },
			cname: "名称必填",
			cid: "分类必选",
			content: "内容必填",
			number: "身份证必填",
		    pwd: {
		     minlength: jQuery.format("密码不能小于{0}个字符")
		    },
		    newpwd: {
		     minlength: "确认密码不能小于5个字符",
		     equalTo: "两次输入密码不一致不一致"
		    }
		}
	});
	
	
	///// TAG INPUT /////
	
	//jQuery('#tags').tagsInput();

	
	///// SPINNER /////
	
	//jQuery("#spinner").spinner({min: 0, max: 100, increment: 2});
	
	
	///// CHARACTER COUNTER /////
	
	jQuery("#textarea2").charCount({
		allowed: 120,		
		warning: 20,
		counterText: 'Characters left: '	
	});
	
	
	///// SELECT WITH SEARCH /////
	jQuery(".chzn-select").chosen({
		no_results_text: "没有找到"
	});
	
});