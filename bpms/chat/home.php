<style>
    #convo-box {
        height: 35em;
        display: flex;
        flex-direction: column-reverse;
    }
    #suggestion-list:not(:empty):before {
        content: 'Suggestions';
        width: 100%;
        display: block;
        color: #ababab;
        padding: 0.6em 1em;
    }
    .msg-field{
        min-width:5em;
    }
    .msg-field.bot-msg {
        background: #f1f1f1 !important;
    }
    .rounded-pill {
        border-radius: 2rem !important;
    }
</style>
<div class="container my-5">
    <div class="card card-outline-navy rounded-0">
        <div class="card-header">
            <div class="d-flex w-100 align-items-center">
                <div class="col-auto">
                    <img src="<?= validate_image($_settings->info('logo')) ?>" class="img-fluid img-thumbnail rounded-circle" style="width:1.9em;height:1.9em;object-fit:cover;object-position:center center" alt="<?= validate_image($_settings->info('bot_name')) ?>">
                </div>
                <div class="col-auto">
                    <b><?= $_settings->info("bot_name") ?></b>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="overflow-auto" id="convo-box">
                <div id="suggestion-list" class="my-4 px-5">
                    <?php 
                    $suggestions = $_settings->info('suggestion') != '' ? json_decode($_settings->info('suggestion')) : [];
                    foreach($suggestions as $sg):
                        if(empty($sg))
                        continue;
                    ?>
                    <a href="javascript:void(0)" class="w-auto rounded-pill bg-transparent border px-3 py-2 text-decoration-none text-reset suggestion"><?= $sg ?></a>
                    <?php endforeach; ?>
                </div>
                <div class="d-flex w-100 align-items-center mt-4">
                    <div class="col-auto">
                        <img src="<?= validate_image($_settings->info('logo')) ?>" class="img-fluid img-thumbnail rounded-circle" style="width:2.5em;height:2.5em;object-fit:cover;object-position:center center" alt="<?= validate_image($_settings->info('bot_name')) ?>">
                    </div>
                    <div class="col-auto flex-shrink-1 flex-grow-1">
                        <div class="msg-field bot-msg w-auto d-inline-block bg-gradient-light border rounded-pill px-3 py-2"><?= $_settings->info('welcome_message') ?></div>
                    </div>
                </div>
            </div>
            <div class="d-flex w-100 align-items-center">
                <div class="col-auto flex-shrink-1 flex-grow-1">
                    <textarea name="keyword" id="keyword" cols="30" class="form-control form-control-sm rounded-0" placeholder="Write your query here" rows="2"></textarea>
                </div>
                <div class="col-auto">
                    <button class="btn btn-outline-primary border-0 rounded-0" type="button" id="submit"><i class="fa fa-paper-plane"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>
<noscript id="resp-msg">
    <div class="d-flex w-100 align-items-center mt-4">
        <div class="col-auto">
            <img src="<?= validate_image($_settings->info('logo')) ?>" class="img-fluid img-thumbnail rounded-circle" style="width:2.5em;height:2.5em;object-fit:cover;object-position:center center" alt="<?= validate_image($_settings->info('bot_name')) ?>">
        </div>
        <div class="col-auto flex-shrink-1 flex-grow-1">
            <div class="msg-field bot-msg w-auto d-inline-block bg-gradient-light border rounded-pill px-3 py-2 response"></div>
        </div>
    </div>
</noscript>
<noscript id="user-msg">
    <div class="d-flex flex-row-reverse  w-100 align-items-center mt-4">
        <div class="col-auto text-center">
            <div class="img-fluid img-thumbnail rounded-circle" style="width:2.5em;height:2.5em">
                <i class="fa fa-user text-muted bg-gradient-light" style="font-size:1em"></i>
            </div>
        </div>
        <div class="col-auto flex-shrink-1 flex-grow-1 text-right">
            <div class="msg-field w-auto d-inline-block bg-gradient-light border rounded-pill px-3 py-2 msg text-left"></div>
        </div>
    </div> 
</noscript>
<noscript id="sg-item">
    <a href="javascript:void(0)" class="w-auto rounded-pill bg-transparent border px-3 py-2 text-decoration-none text-reset suggestion"></a>
</noscript>
<script>
    function add_msg($kw=""){
        var item = $($('noscript#user-msg').html()).clone()
        item.find('.msg-field').text($kw)
        $('#suggestion-list').after(item)
    }
    function fetch_response($kw=""){
        var item = $($('noscript#resp-msg').html()).clone()
        $.ajax({
            url:_base_url_+"classes/Master.php?f=fetch_response",
            method:'POST',
            data:{kw : $kw},
            dataType:'json',
            error:err=>{
                console.log(err)
                alert("An errror occurred while fetching a response")
            },
            success:function(resp){
                if(resp.status = 'success'){
                    item.find('.msg-field').html(resp.response)
                    $('#suggestion-list').after(item)
                    $('#suggestion-list').html("")
                    if(!!resp.suggestions && Object.keys(resp.suggestions).length){
                        Object.keys(resp.suggestions).map((k)=>{
                            if(resp.suggestions[k] != ''){
                                var item = $($('noscript#sg-item').html()).clone()
                                item.text(resp.suggestions[k])
                                $('#suggestion-list').append(item)
                                item.click(function(){
                                    var kw = $(this).text()
                                    add_msg(kw)
                                    fetch_response(kw)
                                })
                            }
                        })
                        
                    }
                }else{
                    alert("An errror occurred while fetching a response")
                }
            }
        })
    }
    $(function(){
        $('#keyword').keypress(function(e){
            if(e.which == 13 && e.shiftKey == false){
                e.preventDefault()
                $('#submit').click()
            }
        })
        $('#submit').click(function(){
            var kw = $('#keyword').val()
            add_msg(kw)
            fetch_response(kw)
            var kw = $('#keyword').val('').focus()
        })
        $('.suggestion').click(function(){
            var kw = $(this).text()
            add_msg(kw)
            fetch_response(kw)
        })
    })
</script>