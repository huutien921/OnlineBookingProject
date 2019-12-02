<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!--  <h3>statistical</h3>-->

         <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 <!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1" />
<title>PIE</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

</head>
<body>
	<!-- <script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/highcharts-3d.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
 -->
<!--  
<script src="https://code.highcharts.com/stock/highstock.js"></script>
<script src="https://code.highcharts.com/stock/modules/data.js"></script>
<script src="https://code.highcharts.com/stock/modules/exporting.js"></script>
<script src="https://code.highcharts.com/stock/modules/export-data.js"></script>
-->
	
<script src="${pageContext.request.contextPath }/resources/admin/js/highcharts.js"></script>
	
	<!--<script src="${pageContext.request.contextPath }/resources/admin/js/index.js"></script>-->

	<script src="${pageContext.request.contextPath }/resources/admin/js/jquery.js"></script>
<!--  <div id="container" style="height: 400px; min-width: 310px"></div>-->

<div id="container" style="height: 400px"></div>
 
<script >

$.ajax({
	/* for pie chart */
	//url: "piechart",
	//type : 'GET',
	/* for line chart */
	url: "${pageContext.request.contextPath }/admin/statistical/ajax/linechartdata",
	/* for multiple line chart */
//	url: "multiplelinechart",
	success: function(result){
		/* line chart single starts here */
		var category = JSON.parse(result).categories;
		var series = JSON.parse(result).series;
		drawLineChart(category, series);
	
		
	}
});
/* for line chart */

function drawLineChart(category, series){
	Highcharts.chart('container', {
	    chart: {
	        type: 'line',
	        width: 500
	    },
	    
	    title: {
	        text: 'Statistical User'
	    },
	
	    xAxis: {
	        categories: category
	    },
	    
	    tooltip: {
	        formatter: function() {
	          return '<strong>'+this.x+': </strong>'+ this.y;
	        }
	    },
	
	    series: [{
	        data: series
	    }]
	});
}
/* for multiple line chart */


/* for pie chart */



/* for multiple line chart */


/* for pie chart */


















</script>




 <!--  <script th:inline="javascript">
	Highcharts.chart('container', {
	    chart: {
	        type: 'pie',
	        options3d: {
	            enabled: true,
	            alpha: 45,
	            beta: 0
	        }
	    },
	    title: {
	        text: 'Browser market shares at a specific website, 2014'
	    },
	    tooltip: {
	        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            depth: 35,
	            dataLabels: {
	                enabled: true,
	                format: '{point.name}'
	            }
	        }
	    },
	    series: [{
	        type: 'pie',
	        name: 'Browser share',
	        data: [
	            ['Firefox', 45.0],
	            ['IE', 26.8],
	            {
	                name: 'Chrome',
	                y: 12.8,
	                sliced: true,
	                selected: true
	            },
	            ['Safari', 8.5],
	            ['Opera', 6.2],
	            ['Others', ${statistical}]
	        ]
	    }]
	});
	</script>
	-->
	
	<!--<c:forEach var="st" items="${statistical }">
		${st.sumQuantity }
		${st.year }
	
	
	</c:forEach>-->
	
	
	<!-- <script th:inline="javascript">
	Highcharts.getJSON('https://www.highcharts.com/samples/data/aapl-c.json', function (data) {

    // Create the chart
    Highcharts.stockChart('container', {
        chart: {
            type: 'area'
        },

        rangeSelector: {
            selected: 1
        },

        title: {
            text: 'AAPL Stock Price'
        },

        yAxis: {
            reversed: true,
            showFirstLabel: false,
            showLastLabel: true
        },

        series: [{
            name: 'AAPL Stock Price',
            data: data,
            threshold: null,
            fillColor: {
                linearGradient: {
                    x1: 0,
                    y1: 1,
                    x2: 0,
                    y2: 0
                },
                stops: [
                    [0, Highcharts.getOptions().colors[0]],
                    [1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                ]
            },
            tooltip: {
                valueDecimals: 2
            }
        }]
    });
});
	</script> -->
</body>
</html>