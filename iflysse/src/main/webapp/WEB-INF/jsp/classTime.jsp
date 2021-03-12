<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta property="qc:admins" content="3020656377612414137646375711277">
        <title>博思教师辅助系统-主页</title><meta name="keywords">
        <link rel="stylesheet" type="text/css" href="layui/css/layui.css" /> 
        <style>
            .bs{
                width: auto;
                height: 100%;
                margin: 0 auto;
                background-color: #FFF;
                
            }
            .banner{
                height: 100px;
                width: auto;
                background: rgb(189, 19, 175);               
            }
            .banner p{
                text-align: center;
                padding-top: 20px;
                font-family:Arial;
                font-size:30px;
                font-style:oblique;
            }
            /* .menu{
                height: 50px;
                line-height: 50px;
                background-color: #bbb;
            } */
            .main{
                height: 100%;
            }
            .left{
                height: 100%;
                width: 200px;
                background-color: #f93;
                float: left;
            }
            .left a{
                left: center;
                margin: 50px;
            }
            .right{
                height: 100%;
                width: 1298px;
                /* background-color: #CCFF66; */
                float: right;              
                margin-left: 3px;
                margin-top: 5px;
                border: none;
                text-align:center;
             	vertical-align:middle;
       
                
            }
            
            .my_form{
                text-align: center;
            }
            .right input{
                height: 30px;
            }
            .right select{
                height: 30px;
            }
            .menu a{
                left: center;
                margin: 50px;
               
            }
            
        </style>
    </head>
    <body>

        <div class="bs">
            
            <div class="menu">
                
            </div>
            <!-- <div class="main">
                <div class="left">
                    <a href="#">课程管理</a>
                </div> -->
                <div class="right">
                    <h3>上课时间</h3>                   
                    <button type="button" class="layui-btn" onclick="add()">
					  <i class="layui-icon">&#xe608;</i> 添加
					</button>
                                    
                    <form role="form" class="my_form" id="" action="saveCourse2" method="post">
                    <input type="hidden"  name="id" value="${course.id }"  >
                    <div id="classTime" style="margin-top: 5px"></div>
                       <br><button type="submit" 
                       class="layui-btn layui-btn-radius layui-btn-normal">下一步</button>	               		                                                           
                    </form>
                    
                </div>
            </div>
            <div class="footer"></div>
        </div>
    <script src="../js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
    <script>   
        var i=1;
        function add(){
            var form = document.getElementById('classTime');
            var input1 = document.createElement('input');
            var input2 = document.createElement('input');
            var input3 = document.createElement('input');
            var input4 = document.createElement('input');
            var input5 = document.createElement('input');
            var br = document.createElement('br');
            input1.setAttribute('type', 'number');
            input1.setAttribute('name', 'startTime');
            input2.setAttribute('type', 'number');
            input2.setAttribute('name', 'endTime');
            input3.setAttribute('type', 'number');
            input3.setAttribute('name', 'week');
            input4.setAttribute('type', 'text');
            input4.setAttribute('name', 'classNum');
            input5.setAttribute('type', 'text');
            input5.setAttribute('name', 'classroom');
            input1.style.width = "50px"
            input2.style.width = "50px"
            input3.style.width = "50px"
            input4.style.width = "50px"
            input5.style.width = "50px"
            var t=i+11;var count=i;
            while(i<t){
                var span = document.createElement('span');
                span.setAttribute('id',i);
                form.appendChild(span);
                i++
            }
                form.appendChild(document.createElement('br'));
                $('#'+count).html('从');
                $('#'+(++count)).append(input1);
                $('#'+(++count)).html('到');
                $('#'+(++count)).append(input2);
                $('#'+(++count)).html('周,星期');
                $('#'+(++count)).append(input3);
                $('#'+(++count)).html('第');
                $('#'+(++count)).append(input4);
                $('#'+(++count)).html('节,');
                $('#'+(++count)).append(input5);
                $('#'+(++count)).html('教室');
                
            
}
    </script>
    </body>
</html>