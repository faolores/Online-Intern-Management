
<?php $faculty_id = $_SESSION['login_id'] ?>
<?php 
function ordinal_suffix($num){
    $num = $num % 100; // protect against large numbers
    if($num < 11 || $num > 13){
         switch($num % 10){
            case 1: return $num.'st';
            case 2: return $num.'nd';
            case 3: return $num.'rd';
        }
    }
    return $num.'th';
}
?>
<div class="col-lg-12">
	<div class="row">
		<div class="col-md-12 mb-1">
			<div class="d-flex justify-content-end w-100">
				<button class="btn btn-sm btn-success bg-gradient-success" style="display:none" id="print-btn"><i class="fa fa-print"></i> Print</button>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="callout callout-info">
				<div class="list-group" id="class-list">
					
				</div>
			</div>
		</div>
		<div class="col-md-9">
			<div class="callout callout-info" id="printable">
			<div>
			<h3 class="text-center">Evaluation Report</h3>
			<hr>
			<table width="100%">
					<tr>
						<td width="50%"><p><b>Academic Year: <span id="ay"><?php echo $_SESSION['academic']['year'].' '.(ordinal_suffix($_SESSION['academic']['semester'])) ?> Semester</span></b></p></td>
						<td></td>
					</tr>
					<tr>
						<td width="50%"><p><b>Class: <span id="classField"></span></b></p></td>
						<td width="50%"><p><b>Subject: <span id="subjectField"></span></b></p></td>
					</tr>
			</table>
				<p class=""><b>Total Industry Professor Evaluated: <span id="tse"></span></b></p>
			</div>
			<fieldset class="border border-info p-2 w-100">
					<legend  class="w-auto">Directions:</legend>
					<p> 1. Intern evaluation form will be submitted only in SOFT COPY. No need to print. </p>
					<p> 2. Kindly click the circle of your choice</p>
					<p> 3. No need to compute or input  the Subtotals/Totals Portion as the form will automatically compute.</p>
					<p> 4. Discuss the evaluation with the intern so that they are aware of their strengths and weaknesses. This should help them improve 
						their performance and/or work behavior. (Please note that the contents of this form are highly confidential and should be discussed 
						only with the concerned intern).</p>

					</fieldset>
				<?php 
							$q_arr = array();
						$criteria = $conn->query("SELECT * FROM criteria_list where id in (SELECT criteria_id FROM question_list where academic_id = {$_SESSION['academic']['id']} ) order by abs(order_by) asc ");
						while($crow = $criteria->fetch_assoc()):
					?>
					<table class="table table-condensed wborder">
						<thead>
							<tr class="bg-gradient-secondary">
								<th class=" p-1"><b><?php echo $crow['criteria'] ?></b></th>
								<th class="text-center">5</th>
								<th class="text-center">4</th>
								<th class="text-center">3</th>
								<th class="text-center">2</th>
								<th class="text-center">1</th>
								<th class="text-center">NA</th>
							</tr>
						</thead>
						<tbody class="tr-sortable">
							<?php 
							$questions = $conn->query("SELECT * FROM question_list where criteria_id = {$crow['id']} and academic_id = {$_SESSION['academic']['id']} order by abs(order_by) asc ");
							while($row=$questions->fetch_assoc()):
							$q_arr[$row['id']] = $row;
							?>
							<tr class="bg-white">
								<td class="p-1" width="40%">
									<?php echo $row['question'] ?>
								</td>
								<?php for($c=0;$c<6;$c++): ?>
								<td class="text-center">
									<span class="rate_<?php echo $c.'_'.$row['id'] ?> rates"></span>
			                      </div>
								</td>
								<?php endfor; ?>
							</tr>
							<?php endwhile; ?>
						</tbody>
					</table>
					<?php endwhile; ?>
					<html>
					<head>
					<center>
      
   </head>
   <div>
   <div class="card-body">
             <fieldset class="border border-info p-2 w-100">

                <legend  class="w-auto">Intern Computation Grade :</legend>
								
				<div class="card-body">
				<fieldset class="border border-info p-2 w-50">

               <legend  class="w-auto">Industry Professor Intern Ratings:</legend>
  
					
						
				<table border = "1">
					
				<tr>
					
					<th>Rating</th>
					<th>Subtotal Points (No. of Ratings × Rating)</th>
				</tr>
				<tr	>
				<td class = "text-center"> 5  <td class = "text-center"><span id="total_5">=</td></td>
				</span>

								</tr>
				<td class = "text-center">4  <td class = "text-center"><span id="total_4">=</td></td>
				</span>
				</tr>
				<td class = "text-center">3  <td class = "text-center"><span id="total_3">=</td></td>
				</span>
				</tr>
				<td class = "text-center">2  <td class = "text-center"><span id="total_2">=</td></td>
				</span>
				</tr>
				<td class = "text-center">1  <td class = "text-center"><span id="total_1">=</td></td>
				</span>
				</tr>
				<td class = "text-center">N/A  <td class = "text-center"><span id="total_na">=</td></td>
				</span>
				</tr>
				<fieldset>
			<div>
			</table>
			<b> Total = <span id="grand_total">=</b>
				</span>
				<br>
				<b> Percentage = <span id="grand_per">%</b>
				</span>
				<br>
				<b>APC Grade Equivalent = <td><span id="apc_grade"></b>

								</div>
</div>

<style>
	.list-group-item:hover{
		color: black !important;
		font-weight: 700 !important;
	}
</style>
<noscript>
	<style>
		table{
			width:100%;
			border-collapse: collapse;
		}
		table.wborder tr,table.wborder td,table.wborder th{
			border:1px solid gray;
			padding: 3px
		}
		table.wborder thead tr{
			background: #6c757d linear-gradient(180deg,#828a91,#6c757d) repeat-x!important;
    		color: #fff;
		}
		.text-center{
			text-align:center;
		} 
		.text-right{
			text-align:right;
		} 
		.text-left{
			text-align:left;
		} 
	</style>
</noscript>
<script>
	var total_5 = 0
	var total_4 = 0
	var total_3 = 0
	var total_2 = 0
	var total_1 = 0
	var total_na = 0
	var sum_grand_per = 0;

	$(document).ready(function(){
		load_class()
	})
	function load_class(){
		start_load()
		$.ajax({
			url:"ajax.php?action=get_class",
			method:'POST',
			data:{fid:<?php echo $faculty_id ?>},
			error:function(err){
				console.log(err)
				alert_toast("An error occured",'error')
				end_load()
			},
			success:function(resp){
				if(resp){
					resp = JSON.parse(resp)
					if(Object.keys(resp).length <= 0 ){
						$('#class-list').html('<a href="javascript:void(0)" class="list-group-item list-group-item-action disabled">No data to be display.</a>')
					}else{
						$('#class-list').html('')
						Object.keys(resp).map(k=>{
						$('#class-list').append('<a href="javascript:void(0)" data-json=\''+JSON.stringify(resp[k])+'\' data-id="'+resp[k].id+'" class="list-group-item list-group-item-action show-result">'+resp[k].class+' - '+resp[k].subj+'</a>')
						})

					}
				}
			},
			complete:function(){
				end_load()
				anchor_func()
				if('<?php echo isset($_GET['rid']) ?>' == 1){
					$('.show-result[data-id="<?php echo isset($_GET['rid']) ? $_GET['rid'] : '' ?>"]').trigger('click')
				}else{
					$('.show-result').first().trigger('click')
				}
			}
		})
	}
	function anchor_func(){
		$('.show-result').click(function(){
			var vars = [], hash;
			var data = $(this).attr('data-json')
				data = JSON.parse(data)
			var _href = location.href.slice(window.location.href.indexOf('?') + 1).split('&');
			for(var i = 0; i < _href.length; i++)
				{
					hash = _href[i].split('=');
					vars[hash[0]] = hash[1];
				}
			window.history.pushState({}, null, './index.php?page=result&rid='+data.id);
			load_report(<?php echo $faculty_id ?>,data.sid,data.id);
			$('#subjectField').text(data.subj)
			$('#classField').text(data.class)
			$('.show-result.active').removeClass('active')
			$(this).addClass('active')
		})
	}
	function load_report($faculty_id, $subject_id,$class_id){
		if($('#preloader2').length <= 0)
		start_load()
		$.ajax({
			url:'ajax.php?action=get_report',
			method:"POST",
			data:{faculty_id: $faculty_id,subject_id:$subject_id,class_id:$class_id},
			error:function(err){
				console.log(err)
				alert_toast("An Error Occured.","error");
				end_load()
			},
			success:function(resp){
				if(resp){
					resp = JSON.parse(resp)
					if(Object.keys(resp).length <= 0){
						$('.rates').text('')
						$('#tse').text('')
						$('#print-btn').hide()
					}else{
						$('#print-btn').show()
						$('#tse').text(resp.tse)
						$('.rates').text('-')
						var data = resp.data
						Object.keys(data).map(q=>{
							Object.keys(data[q]).map(r=>{
								// console.log('R - ' + r)
								// console.log('Q - ' + q)
								// console.log($('.rate_'+r+'_'+q),data[q][r])
								$('.rate_'+r+'_'+q).html('&#10003;')
								switch (r) {
									case '1':
										$('.rate_'+r+'_'+q).attr('score', 5);
										total_5++;
										break;
									case '2':
										$('.rate_'+r+'_'+q).attr('score', 4);
										total_4++;
										break;
									case '3':
										$('.rate_'+r+'_'+q).attr('score', 3);
										total_3++;
										break;
									case '4':
										$('.rate_'+r+'_'+q).attr('score', 2);
										total_2++;
										break;
									case '5':
										$('.rate_'+r+'_'+q).attr('score', 1);
										total_1++;
										break;
									default:
										$('.rate_'+r+'_'+q).attr('score', 'NA');
										total_na++;
										break;
								}
							})
						})

						//put value in span
						prod_5 = total_5 * 5
						prod_4 = total_4 * 4
						prod_3 = total_3 * 3
						prod_2 = total_2 * 2
						prod_1 = total_1 * 1
						prod_na = total_na * 0
						sum_grand_total = prod_5 + prod_4 + prod_3 + prod_2 + prod_1 + prod_na
						sum_grand_per = (sum_grand_total / (100-(total_na * 5)) *100).toFixed(2);
						apc_grade = 0;

						if (sum_grand_total >= 95 && sum_grand_total <= 100) {
							apc_grade = "4.00"
						} else if (sum_grand_total >= 91 && sum_grand_total <= 94) {
							apc_grade = "3.50"
						} else if (sum_grand_total >= 87 && sum_grand_total <= 90) {
							apc_grade = "3.00"
						} else if (sum_grand_total >= 83 && sum_grand_total <= 86) {
							apc_grade = "2.50"
						} else if (sum_grand_total >= 79 && sum_grand_total <= 82) {
							apc_grade = "2.00"
						} else if (sum_grand_total >= 75 && sum_grand_total <= 78) {
							apc_grade = "1.50"
						} else if (sum_grand_total >= 70 && sum_grand_total <= 74) {
							apc_grade = "1.00"
						} else if (sum_grand_total <= 69) {
							apc_grade = "R"
						} else {
							apc_grade = "0.00"
						}

						$('#total_5').html(prod_5);
						$('#total_4').html(prod_4);
						$('#total_3').html(prod_3);
						$('#total_2').html(prod_2);
						$('#total_1').html(prod_1);
						$('#total_na').html(prod_na);
						$('#grand_total').html(sum_grand_total);
						$('#grand_per').html(sum_grand_per);
						$('#apc_grade').html(apc_grade);
					}
					
				}
			},
			complete:function(){
				end_load()
			}
		})
	}
	$('#print-btn').click(function(){
		start_load()
		var ns =$('noscript').clone()
		var content = $('#printable').html()
		ns.append(content)
		var nw = window.open("Report","_blank","width=900,height=700")
		nw.document.write(ns.html())
		nw.document.close()
		nw.print()
		setTimeout(function(){
			nw.close()
			end_load()
		},750)
	})
</script>