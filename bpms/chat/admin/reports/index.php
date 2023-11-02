<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>
<?php $date = isset($_GET['date']) ? $_GET['date'] : date("Y-m-d"); ?>
<div class="card card-outline rounded-0 card-navy">
	<div class="card-header">
		<h3 class="card-title">Report</h3>
        <div class="card-tools">
            <button class="btn btn-light btn-sm bg-gradient-light rounded-0 border" type="button" id="print"><i class="fa fa-print"></i> Print</button>
        </div>
	</div>
	<div class="card-body">
        <div class="container-fluid" id="printout">
			<table class="table table-hover table-striped table-bordered">
				<colgroup>
					<col width="10%">
					<col width="70%">
					<col width="20%">
				</colgroup>
				<thead>
					<tr>
						<th>#</th>
						<th>Response</th>
						<th>Total Count Fetched</th>
					</tr>
				</thead>
				<tbody>
					<?php 
                    $total = 0;
					$i = 1;
                    $qry = $conn->query("SELECT *, COALESCE((SELECT count(response_id) FROM `keyword_fetched` where response_id = response_list.id), 0) as `fetched` FROM `response_list` order by COALESCE((SELECT count(response_id) FROM `keyword_fetched` where response_id = response_list.id), 0) desc");
                    while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><p class="m-0"><?= strip_tags($row['response']) ?></p></td>
							<td class='text-right'><?= format_num($row['fetched']) ?></td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<noscript id="print-header">
    <div>
    <div class="d-flex w-100">
        <div class="col-2 text-center">
            <img style="height:.8in;width:.8in!important;object-fit:cover;object-position:center center" src="<?= validate_image($_settings->info('logo')) ?>" alt="" class="w-100 img-thumbnail rounded-circle">
        </div>
        <div class="col-8 text-center">
            <div style="line-height:1em">
                <h4 class="text-center mb-0"><?= $_settings->info('name') ?></h4>
                <h3 class="text-center mb-0"><b>Responses Report</b></h3>
            </div>
        </div>
    </div>
    <hr>
    </div>
</noscript>
<script>
	$(document).ready(function(){
        $('#print').click(function(){
            var h = $('head').clone()
            var ph = $($('noscript#print-header').html()).clone()
            var p = $('#printout').clone()
            h.find('title').text('Responses Report - Print View')

            start_loader()
            var nw = window.open("", "_blank", "width="+($(window).width() * .8)+", height="+($(window).height() * .8)+", left="+($(window).width() * .1)+", top="+($(window).height() * .1))
                     nw.document.querySelector('head').innerHTML = h.html()
                     nw.document.querySelector('body').innerHTML = ph.html()
                     nw.document.querySelector('body').innerHTML += p[0].outerHTML
                     nw.document.close()
                     setTimeout(() => {
                         nw.print()
                         setTimeout(() => {
                             nw.close()
                             end_loader()
                         }, 300);
                     }, 300);
        })
	})
	
</script>