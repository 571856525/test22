// 首页、列表页等加入购物车
function ShopAddCart1625194556(aid, spec_value_id, num, rootDir) {
    rootDir = rootDir ? rootDir : '';
    $.ajax({
        url : rootDir + '/index.php?m=user&c=Shop&a=shop_add_cart&_ajax=1',
        data: {aid: aid, num: num, spec_value_id: spec_value_id},
        type:'post',
        dataType:'json',
        success:function(res){
            if (1 == res.code) {
                window.location.href = res.url;
            } else {
                if (-1 == res.data.code) {
                    layer.msg(res.msg, {time: time});
                } else {
                    // 去登陆
                    window.location.href = res.url;
                }
            }
        }
    });
}