var pageTpl = ''
+ '{{if TotalPage>1}}'
    + '<ul>'
        + '<li>共{{TotalPage}}页</li>'
        + '<li id="index_page"><a href="/{{cController}}/{{cAction}}">首页</a></li>'
        + '{{if Page==1}}'
            + '<li><a href="javascript:void(0);">上一页</a></li>'
        + '{{else}}'
            + '<li><a href="/{{cController}}/{{cAction}}?page={{Page*1-1}}{{link}}">上一页</a></li>'
        + '{{/if}}'
        + '{{if Page==TotalPage}}'
            + '<li><a href="javascript:void(0);">下一页</a></li>'
        + '{{else}}'
            + '<li><a href="/{{cController}}/{{cAction}}?page={{Page*1+1}}{{link}}">下一页</a></li>'
        + '{{/if}}'
        + '<li><a href="/{{cController}}/{{cAction}}?page={{TotalPage}}{{link}}">尾页</a></li>'
        + '<li>{{Page}}/{{TotalPage}}页 {{num}}条/页</li>'
    + '</ul>'
    + '<div id="pageform">'
        + '到第<input type="text" class="text" id="pagetext" value="" />页'
        + '<input type="submit" class="submit" id="pagesubmit" value="确定">'
    + '</div>'
+ '{{/if}}';