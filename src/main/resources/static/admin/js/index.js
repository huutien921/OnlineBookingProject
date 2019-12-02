
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

