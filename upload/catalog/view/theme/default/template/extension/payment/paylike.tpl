<div class="buttons">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" />
  </div>
</div>

<script type="text/javascript" src="https://sdk.paylike.io/10.js"></script>
<script type="text/javascript"><!--

$('body').on('click', '#button-confirm', function() {
    var paylike = Paylike({key: '<?php echo $paylike_public_key; ?>'});
    paylike.pay({
        test: ('live' === '<?php echo $active_mode; ?>') ? (false) : (true),
        title: '<?php echo $popup_title; ?>',
        description: '<?php echo $popup_description; ?>',
        amount: {
          currency: '<?php echo strtoupper($currency_code); ?>',
          exponent: <?php echo $exponent; ?>,
          value: <?php echo $amount; ?>
        },
        custom: {
            orderId: '<?php echo $order_id; ?>',
            products:  <?php echo $products; ?>,
            customer:{
                name: '<?php echo $name; ?>',
                email: '<?php echo $email; ?>',
                telephone: '<?php echo $telephone; ?>',
                address: '<?php echo $address; ?>',
                customerIp: '<?php echo $ip; ?>'
                },
            platform:{
                name: 'opencart',
                version: '<?php echo VERSION; ?>',
                },
            ecommerce: {
                name: 'opencart',
                version: '<?php echo VERSION; ?>',
                },
            version: '<?php echo $plugin_version; ?>'
            },
      locale: '<?php echo $lc;  ?>'
    }, function(err, res) {
        if (err)
            return console.log(err);

        console.log(res);
        console.log('++++++++++++++++++++++++++++');

        $.ajax({
            url: 'index.php?route=extension/payment/paylike/process_payment',
            type: 'post',
            data: {
                'trans_ref': res.transaction.id
            },
            dataType: 'json',
            cache: false,
            beforeSend: function() {
                $('#button-confirm').button('loading');
            },
            complete: function() {
                $('#button-confirm').button('reset');
            },
            success: function(json) {
                if( json.hasOwnProperty('error') ) {
                    var html = '<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> Warning: ' + json.error + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>';
                    $('#button-confirm').closest('.buttons').before(html);
                }

                if( json.hasOwnProperty('redirect') ) {
                    location.href = json.redirect;
                }
            }
        });
    });

});
//--></script>
