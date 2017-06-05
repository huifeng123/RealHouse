<%--
  Created by IntelliJ IDEA.
  User: bigjsd
  Date: 2017/6/4
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--搜索框--%>
<!---//pop-up-box---->
<div id="small-dialog" style="margin-top: -10%;z-index: 10000;border-radius: 20%;>
            <!----- tabs-box ---->
            <div class="sap_tabs">
<div id="horizontalTab" style="width: 100%; margin: 0px;">
    <%--<ul class="resp-tabs-list">
        <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>All Homes</span></li>
        <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>For Sale</span></li>
        <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>For Rent</span></li>
        <div class="clearfix"></div>
    </ul>--%>

    <div class="resp-tabs-container">
        <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>All Homes</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
        <form method="post">
            <div class="facts" style="background-color: rgba(255,255,255,0.5);border-radius: 10px">
                <div class="login">
                    <input type="text" name="serch" value="查询房源 区域 小区" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '查询房源 区域 小区';}">
                    <input type="submit" value="" formaction="/serch">
                </div>
            </div>
        </form>
    </div>

        <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>For Sale</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
        <div class="facts">
            <div class="login">
                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
                <input type="submit" value="">
            </div>
        </div>
    </div>
        <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>For Rent</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
        <div class="facts">
            <div class="login">
                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">
                <input type="submit" value="">
            </div>
        </div>
    </div>
    </div>
</div>
<script src="${ctx}/staticfile/js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
</script>
</div>
</div>
<%----------%>
