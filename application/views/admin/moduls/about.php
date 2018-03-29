<?php $title = "<i class='fa fa-newspaper-o'></i>&nbsp;About"; ?>
<div id="idImgLoader" style="margin: 0 auto; text-align: center;">
	<img src='<?php echo base_url();?>assetsadmin/img/loader-dark.gif' />
</div>
<div id="data" style="display:none;">
<section class="content">
<div class="page-header">
	<h1>
		<?php echo $title;?>
	</h1>
</div><!-- /.page-header -->
<style type="text/css"> #loader-upload{display: none}</style>
<div id="form-update" >
<div class="tabbable">
	<ul class="nav nav-tabs" id="formAksi">
		<li class="active">
			<a data-toggle="tab" href="#home">
			<i class="green ace-icon fa fa-home bigger-120"></i>
				Form
			</a>
		</li>

		<li>
			<a data-toggle="tab" href="#messages">
			<i class="green ace-icon fa fa-file-image-o bigger-120"></i>
				Gambar
			</a>
		</li>


	</ul>

	<div class="tab-content">
	<div id="home" class="tab-pane fade in active">
	<form action="#" id="form" name="form" class="form-horizontal" enctype="multipart/form-data">

		<input type="hidden" name="id_about"/>
		<div class="form-group">

		<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Deskripsi </label>
			<div class="col-sm-6">
				<textarea class="form-control" id="about_deskripsi" name="about_deskripsi" placeholder="Deskripsi" ></textarea>
				<span class="help-block"></span>
			</div>
		</div>
		<div class="form-group">
		<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Title Meta </label>
			<div class="col-sm-10">
				<input type="text" id="about_title_meta" name="about_title_meta" placeholder="Title Meta" class="col-xs-10 col-sm-5" />
				<span class="help-block"></span>
			</div>
		</div>
		<div class="form-group">
		<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Deskripsi Meta </label>
			<div class="col-sm-6">
				<textarea class="form-control" id="about_deskripsi_meta" name="about_deskripsi_meta" placeholder="Deskripsi" ></textarea>
				<span class="help-block"></span>
			</div>
		</div>
		<div class="form-group">
		<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Keyword Meta </label>
			<div class="col-sm-6">
				<input type="text" id="about_keyword_meta" name="about_keyword_meta" placeholder="Keyword Meta" class="col-xs-10 col-sm-5" />
				<span class="help-block"></span>
			</div><br /><br /><br /><br />
			<div class="col-md-offset-2 col-md-9">
				<button type="button" value="Add" id="btnSave" onclick="save()" class="btn btn-primary">Save</button>
				<button type="button" class="btn btn-danger" onclick="Batal2()">Cancel</button>
			</div>
		</div>

	</form>
	</div>

	<div id="messages" class="tab-pane fade">
	<form id="form-upload" class="form-horizontal" role="form" action="<?= site_url('about/upload')?>" method="POST" enctype="multipart/form-data">
		<input type="hidden" name="id_about"/>
		<div class="form-body">
			<div class="form-group" >
			<label class="control-label col-md-3">Pilih File</label>
			<div class="input-group col-md-6">
				<input type="file" name="file-upload" id="file-upload">
				<span class="help-block"></span>
				<div class="input-group-btn">
					<button type="submit" class="btn btn-primary">Upload</button>
				</div>
			</div>
			</div>
			<div class="form-group" >
				<label class="control-label col-md-3">Preview</label>
					<div class="input-group col-md-9">
						<img id="loader-upload" src="<?= base_url(); ?>uploads/load.gif" style="height: 30px;">
						<img id="preview-upload" src="#" style="height: 100px;border: 1px solid #DDC; " />
					</div>
			</div>
		</div>
	</form>
	</div>

	</div>
</div>
</div>

<script>
	var zonk='';
	var save_method;
	var link = "<?php echo site_url('about')?>";
	var table;

	$(document).ready(function(){
		update();
    });

	function data(){
		$('#data').fadeIn();
	}

	$(document).ready(function(){
	$('#form-add').submit(function(e) {
		tinyMCE.triggerSave();
		e.preventDefault(); var formData = new FormData($(this)[0]);
		$.ajax({
			url: $(this).attr("action"), type: 'POST', dataType: 'json', data: formData, async: true,
			beforeSend: function() { $('#btnSave').text('saving...'); $('#btnSave').attr('disabled',true); },
			success: function(response) {
				if(response.status) { swal_berhasil(); update();
				} else { Batal(); reload_table(); swal_error(response.error); }
			},
			complete: function() { $('#btnSave').text('save'); $('#btnSave').attr('disabled',false); },
			cache: false, contentType: false, processData: false
		});
		return false;
	});

	function readURL(input) {
		$("#preview").show();
		if (input.files && input.files[0]) {
			var rd = new FileReader();
			rd.onload = function (e) { $('#preview').attr('src', e.target.result); }; rd.readAsDataURL(input.files[0]);
		}
	}
	$("#userfile").change(function(){ readURL(this); });

	});

	$(document).ready(function(){
		$('#form-upload').submit(function(e) {
			tinyMCE.triggerSave();
			e.preventDefault(); var formData = new FormData($(this)[0]);
			$.ajax({
				url: $(this).attr("action"), type: 'POST', dataType: 'json', data: formData, async: true,
				beforeSend: function() { $('#btnSave').text('saving...'); $('#btnSave').attr('disabled',true); },
				success: function(response) {
					if(response.status) { swal_berhasil(); update();
					} else { reload_table(); swal_error(response.error); }
				},
				complete: function() { $('#btnSave').text('save'); $('#btnSave').attr('disabled',false); },
				cache: false, contentType: false, processData: false
			});
		});

		function readURL(input) {
			if (input.files && input.files[0]) {
				var rd = new FileReader();
				rd.onload = function (e) { $('#preview-upload').attr('src', e.target.result); }; rd.readAsDataURL(input.files[0]);
			}
		}
		$("#file-upload").change(function(){ readURL(this); });
	});

	function save() {
		var url;
		url = "<?= site_url()?>about/update/";
		$('#btnSave').text('saving...'); $('#btnSave').attr('disabled',true);
		tinyMCE.triggerSave();
		$.ajax({
			url : url, type: "POST", dataType: "JSON", data: $('#form').serialize(),
			success: function(data) {
				if(data.status) { swal_berhasil(); update();
				} else {
					for (var i = 0; i < data.inputerror.length; i++) {
						$('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error');
						$('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);
					}
				}
				$('#btnSave').text('save'); $('#btnSave').attr('disabled',false);
			},
			error: function (jqXHR, textStatus, errorThrown) {
				swal({ title:"ERROR", text:"Error adding / update data", type: "warning", closeOnConfirm: true});
				$('#btnSave').text('save'); $('#btnSave').attr('disabled',false);
			}
		});
	}

	$(document).ready(function(){
      //$('#idImgLoader').show(2000);
	  $('#idImgLoader').fadeOut(2000);
	  setTimeout(function(){
            data();
      }, 2000);
	  setTimeout(function(){
            ckeditor();
      }, 2000);
    });

	function ckeditor(){
		tinyMCE.init({

              mode : "textareas",

              // ===========================================
              // Set THEME to ADVANCED
              // ===========================================

              theme : "advanced",

              // ===========================================
              // INCLUDE the PLUGIN
              // ===========================================

              plugins : "jbimages,autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave",

              // ===========================================
              // Set LANGUAGE to EN (Otherwise, you have to use plugin's translation file)
              // ===========================================

              language : "en",

              theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
              theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
              theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",

              // ===========================================
              // Put PLUGIN'S BUTTON on the toolbar
              // ===========================================

              theme_advanced_buttons4 : "jbimages,|,insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft",

              theme_advanced_toolbar_location : "top",
              theme_advanced_toolbar_align : "left",
              theme_advanced_statusbar_location : "bottom",
              theme_advanced_resizing : true,

              // ===========================================
              // Set RELATIVE_URLS to FALSE (This is required for images to display properly)
              // ===========================================

              relative_urls : false

            });
	}

	function update() {
			save_method = 'update';
			$('#panel-data').fadeOut('slow');
			$('#form-update').fadeIn('slow');
			//document.getElementById('formAksi').reset();
			$.ajax({
				url : link+"/ajax_edit/",
				type: "GET",
				dataType: "JSON",
				success: function(result) {
				var img = '<?= base_url(); ?>assets/images/'+result.about_logo;
				$('[name="id_about"]').val(result.id_about);
				$('[name="about_deskripsi"]').val(result.about_deskripsi);
				$('[name="about_title_meta"]').val(result.about_title_meta);
				$('[name="about_deskripsi_meta"]').val(result.about_deskripsi_meta);
				$('[name="about_keyword_meta"]').val(result.about_keyword_meta);
				$('#preview-upload').attr('src', img);

				}, error: function (jqXHR, textStatus, errorThrown) {
					alert('Error get data from ajax');
				}
			});
	}

</script>
