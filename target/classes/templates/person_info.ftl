<aside class="bg-white">
    <section class="vbox">
        <header class="header bg-light lt">
            <ul class="nav nav-tabs nav-white">
                <li class="active"><a href="#activity" data-toggle="tab">用户画像</a></li>

            </ul>

        </header>
        <section class="scrollable" style="background: #D1EEEE">
            <div class="bubbleChart"/>

        </section>
    </section>
</aside>





<#--<script type="text/javascript">-->
    <#--$(document).ready(function () {-->
        <#--var bubbleChart = new d3.svg.BubbleChart({-->
            <#--supportResponsive: true,-->
            <#--//container: => use @default-->
            <#--size: 600,-->
            <#--//viewBoxSize: => use @default-->
            <#--innerRadius: 600 / 3.5,-->
            <#--//outerRadius: => use @default-->
            <#--radiusMin: 50,-->
            <#--//radiusMax: use @default-->
            <#--//intersectDelta: use @default-->
            <#--//intersectInc: use @default-->
            <#--//circleColor: use @default-->
            <#--data: {-->
                <#--items: [-->
                    <#--{text: "Java", count: "236"},-->
                    <#--{text: ".Net", count: "382"},-->
                    <#--{text: "Php", count: "170"},-->
                    <#--{text: "Ruby", count: "123"},-->
                    <#--{text: "D", count: "12"},-->
                    <#--{text: "Python", count: "170"},-->
                    <#--{text: "C/C++", count: "382"},-->
                    <#--{text: "Pascal", count: "10"},-->
                    <#--{text: "Something", count: "170"},-->
                <#--],-->
                <#--eval: function (item) {return item.count;},-->
                <#--classed: function (item) {return item.text.split(" ").join("");}-->
            <#--},-->
            <#--plugins: [-->
                <#--{-->
                    <#--name: "central-click",-->
                    <#--options: {-->
                        <#--text: "(See more detail)",-->
                        <#--style: {-->
                            <#--"font-size": "12px",-->
                            <#--"font-style": "italic",-->
                            <#--"font-family": "Source Sans Pro, sans-serif",-->
                            <#--//"font-weight": "700",-->
                            <#--"text-anchor": "middle",-->
                            <#--"fill": "white"-->
                        <#--},-->
                        <#--attr: {dy: "65px"},-->
                        <#--centralClick: function() {-->
                            <#--alert("Here is more details!!");-->
                        <#--}-->
                    <#--}-->
                <#--},-->
                <#--{-->
                    <#--name: "lines",-->
                    <#--options: {-->
                        <#--format: [-->
                            <#--{// Line #0-->
                                <#--textField: "count",-->
                                <#--classed: {count: true},-->
                                <#--style: {-->
                                    <#--"font-size": "28px",-->
                                    <#--"font-family": "Source Sans Pro, sans-serif",-->
                                    <#--"text-anchor": "middle",-->
                                    <#--fill: "white"-->
                                <#--},-->
                                <#--attr: {-->
                                    <#--dy: "0px",-->
                                    <#--x: function (d) {return d.cx;},-->
                                    <#--y: function (d) {return d.cy;}-->
                                <#--}-->
                            <#--},-->
                            <#--{// Line #1-->
                                <#--textField: "text",-->
                                <#--classed: {text: true},-->
                                <#--style: {-->
                                    <#--"font-size": "14px",-->
                                    <#--"font-family": "Source Sans Pro, sans-serif",-->
                                    <#--"text-anchor": "middle",-->
                                    <#--fill: "white"-->
                                <#--},-->
                                <#--attr: {-->
                                    <#--dy: "20px",-->
                                    <#--x: function (d) {return d.cx;},-->
                                    <#--y: function (d) {return d.cy;}-->
                                <#--}-->
                            <#--}-->
                        <#--],-->
                        <#--centralFormat: [-->
                            <#--{// Line #0-->
                                <#--style: {"font-size": "50px"},-->
                                <#--attr: {}-->
                            <#--},-->
                            <#--{// Line #1-->
                                <#--style: {"font-size": "30px"},-->
                                <#--attr: {dy: "40px"}-->
                            <#--}-->
                        <#--]-->
                    <#--}-->
                <#--}]-->
        <#--});-->
    <#--});-->
<#--</script>-->
<#--<script type="text/javascript">-->
    <#--var dom = document.getElementById("container");-->
    <#--var myChart = echarts.init(dom);-->
    <#--var app = {};-->
    <#--option = null;-->
    <#--option = {-->
        <#--backgroundColor: '#2c343c',-->

        <#--title: {-->
            <#--text: '用户画像分析',-->
            <#--left: 'center',-->
            <#--top: 20,-->
            <#--textStyle: {-->
                <#--color: '#ccc'-->
            <#--}-->
        <#--},-->

        <#--tooltip : {-->
            <#--trigger: 'item',-->
            <#--formatter: "{a} <br/>{b} : {c} ({d}%)"-->
        <#--},-->

        <#--visualMap: {-->
            <#--show: false,-->
            <#--min: 80,-->
            <#--max: 600,-->
            <#--inRange: {-->
                <#--colorLightness: [0, 1]-->
            <#--}-->
        <#--},-->
        <#--series : [-->
            <#--{-->
                <#--name:'用户分析',-->
                <#--type:'pie',-->
                <#--radius : '55%',-->
                <#--center: ['50%', '50%'],-->
                <#--data:[-->
                    <#--{value:335, name:'${characterList[0]}'},-->
                    <#--{value:310, name:'${characterList[1]}'},-->
                    <#--{value:274, name:'${characterList[2]}'},-->
                    <#--{value:235, name:'${characterList[3]}'},-->
                    <#--{value:400, name:'${characterList[4]}'},-->
                    <#--{value:234, name:'${characterList[5]}'},-->
                    <#--{value:543, name:'${characterList[6]}'}-->
                <#--].sort(function (a, b) { return a.value - b.value; }),-->
                <#--roseType: 'radius',-->
                <#--label: {-->
                    <#--normal: {-->
                        <#--textStyle: {-->
                            <#--color: 'rgba(255, 255, 255, 0.3)'-->
                        <#--}-->
                    <#--}-->
                <#--},-->
                <#--labelLine: {-->
                    <#--normal: {-->
                        <#--lineStyle: {-->
                            <#--color: 'rgba(255, 255, 255, 0.3)'-->
                        <#--},-->
                        <#--smooth: 0.2,-->
                        <#--length: 10,-->
                        <#--length2: 20-->
                    <#--}-->
                <#--},-->
                <#--itemStyle: {-->
                    <#--normal: {-->
                        <#--color: '#c23531',-->
                        <#--shadowBlur: 200,-->
                        <#--shadowColor: 'rgba(0, 0, 0, 0.5)'-->
                    <#--}-->
                <#--},-->

                <#--animationType: 'scale',-->
                <#--animationEasing: 'elasticOut',-->
                <#--animationDelay: function (idx) {-->
                    <#--return Math.random() * 200;-->
                <#--}-->
            <#--}-->
        <#--]-->
    <#--};;-->
    <#--if (option && typeof option === "object") {-->
        <#--myChart.setOption(option, true);-->
    <#--}-->
<#--</script>-->