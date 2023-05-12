<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container-fluid">
	<div class="row py-2 mb-3" style="background-color: rgba(245, 245, 245, 0.6);">
		<ul class="nav nav-tabs">
			<li class="nav-pills mx-3">
				<a class="nav-link px-3 <c:if test="${active eq '1' or not active }">active</c:if>" id="sales-tap" data-bs-toggle="tab" data-bs-target="#sales" role="tab" aria-controls="sales" aria-selected="true">
			      매출현황
				</a>
			</li>
			<li class="nav-pills me-3">
			    <a class="nav-link px-3 <c:if test="${active eq '2' }">active</c:if>" id="project-tap" data-bs-toggle="tab" data-bs-target="#project" role="tab" aria-controls="project" aria-selected="false">
			      프로젝트현황
			    </a>
			</li>
			<li class="nav-pills me-3">
				<a class="nav-link px-3 <c:if test="${active eq '2' }">active</c:if>"
				id="mento-tap" data-bs-toggle="tab" data-bs-target="#mento" role="tab" aria-controls="mento" aria-selected="false">
					멘토현황
				</a>
			</li>
			<li class="nav-pills me-3">
				<a class="nav-link px-3 <c:if test="${active eq '3' }">active</c:if>"
				id="member-tap" data-bs-toggle="tab" data-bs-target="#member" role="tab" aria-controls="member" aria-selected="false">
					회원현황
				</a>
			</li>
			<li class="nav-pills">
				<a class="nav-link px-3 <c:if test="${active eq '4' }">active</c:if>"
				id="board-tap" data-bs-toggle="tab" data-bs-target="#board" role="tab" aria-controls="board" aria-selected="false">
					게시판현황
				</a>
			</li>
		</ul>
	</div>
	
	<!-- Content  -->
	
	<div class="row">
		<div class="tab-content">
		      <div class="tab-pane fade <c:if test="${active eq '1' or not active }">show active</c:if>" id="sales" role="tabpanel" aria-labelledby="sales-tab">
				<div class="row mx-2 mb-4 g-4">
					<div class="d-flex">
						<div class="col-6 me-3 px-3 py-3 card">
							<h6 class="h6">최근 3년간 수익</h6>
							<div class="text-body-secondary mb-3">당해년도의 경우 현재까지의 수익합계를 표시합니다.</div>
							<div class="row mb-3">
								<div class="d-flex justify-content-end align-middle form-check">
								  <input type="checkbox" id="template" name="category" value="템플릿" class="form-check-input mx-2" onchange="updateChart()" checked/>
								  <label for="template">템플릿</label> 
								  <input type="checkbox" id="mentoring" name="category" value="멘토링" class="form-check-input mx-2" onchange="updateChart()" checked /> 
								  <label for="mentoring">멘토링</label> 
								  <input type="checkbox" id="premium" name="category" value="프리미엄서비스" class="form-check-input mx-2" onchange="updateChart()" checked /> 
								  <label for="premium">프리미엄서비스</label> 
								</div>
							</div>
							
							<div class="d-flex justify-content-center align-middle" style="display: flex; align-items: center;">
								<canvas id="salesChart" width="100%"></canvas>
							</div>
						</div>
							
						<div class="col-6 px-3 py-3 card">
							<h6>최근 3년간 수익비중</h6>
							<div class="text-body-secondary">당해년도의 경우 현재까지의 수익합계 표시합니다.</div>
							<div class="row">
								<div class="d-flex justify-content-end">
									<div class="col-4">
										<select class="form-select" id="selectYear">
											<option value="2023">2023년</option>
											<option value="2022">2022년</option>
											<option value="2021">2021년</option>
										</select>
									</div>
								</div>
							</div>
							<div class="chart-container d-flex justify-content-center align-middle" style="position: relative; height: 35vh; width: 100%;">
								<canvas id="pieChart"></canvas>
							</div>
						</div>
					</div>
						
				</div>
				
				<div class="row mx-3">
					<div class="card py-4">
						<h6 class="h6">2023년 수익</h6>
						<span class="border-top d-block flex-grow-1"></span>
						<div class="col-sm-12 d-flex justify-content-center align-middle">
							<div class="col-sm-7 d-flex justify-content-center align-middle">
								<canvas id="salesChartMonth"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			<div class="tab-pane fade <c:if test="${active eq '2' }">show active</c:if>" id="project" role="tabpanel" aria-labelledby="project-tab">
				<h4>프로젝트</h4>
				<div class="row">
					<div class="card mb-3">
						<h6 class="h6">3개년도 프로젝트 생성수 / 종료수</h6>
						<div class="d-flex justify-content-center align-middle" style="height: 35vh;">
							<canvas id="pjLine" height="100%"></canvas>
						</div>
					</div>
					<div class="card">
						<h6 class="h6">1년간 프로젝트 생성, 종료, 진행 중인 프로젝트 수</h6>
						<div class="d-flex justify-content-center align-middle" style="height: 35vh;"> 
							<canvas id="pjbar1"></canvas>
						</div>
					</div>
				</div>
				
			</div>
			<div class="tab-pane fade <c:if test="${active eq '3' }">show active</c:if>" id="mento" role="tabpanel" aria-labelledby="mento-tab">
				<h4>멘토현황</h4>
				<div class="row">
					<div class="card mb-3">
						<h6 class="h6">3개년도 멘토 증감 </h6>
						<div class="d-flex justify-content-center align-middle" style="height: 35vh;">
							<canvas id="mentoLine" height="100%"></canvas>
						</div>
					</div>
					<div class="card mb-3">
						<h6 class="h6">3개년도 멘토 경력분포 </h6>
						<div class="d-flex justify-content-center align-middle" style="height: 35vh;">
							<canvas id="mentoBar1" height="100%"></canvas>
						</div>
					</div>
					<div class="card mb-3">
						<h6 class="h6">3개년도 멘토 직무분포 </h6>
						<div class="d-flex justify-content-center align-middle" style="height: 35vh;">
							<canvas id="mentoBar2" height="100%"></canvas>
						</div>
					</div>
				</div>
			</div>
			
			<div class="tab-pane fade <c:if test="${active eq '4' }">show active</c:if>" id="member" role="tabpanel" aria-labelledby="member-tab">
				<h4>회원현황</h4>
				<div class="row">
					<div>3개년도 회원증감</div>
					<div>3개년도 블랙리스트 증감</div>
					<div>회원/멘토 비율</div>
					<div>구매이력 있는 회원(1회, 3회, 5회 이상)</div>
				</div>
			</div>
			<div class="tab-pane fade <c:if test="${active eq '5' }">show active</c:if>" id="board" role="tabpanel" aria-labelledby="board-tab">
				<h4>게시판현황</h4>
				<div class="row">
					<div>3개년도 각 게시판 글 숫자</div>
					<div>게시판별 신고수</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
// mentoLine 3개년도 멘토 증감
const mentoLineCtx =  document.getElementById('mentoLine');
const mentoLine = new Chart(mentoLineCtx, {
	type : 'line',
	data : {
		labels : ['2021년', '2022년', '2023년'],
		datasets : [{
			labels : '멘토 증가수',
			data : [54, 87, 47]
		},
		{
			labels : '멘토 감소수',
			data : [5, 14, 23]
		}]
	},
	options: {
		scales: {
            y: {
                beginAtZero: true
            }
        }
	}
});
// mentoBar1 3개년도 멘토 경력분포

// mentoBar2 3개년도 멘토 직무분포

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// pjLine
const pjgLineCtx = document.getElementById('pjLine'); 
const pjLineChart = new Chart(pjgLineCtx, {
	type : 'line',
	data : {
		labels : ['2021년', '2022년', '2023년'],
		datasets : [{
			label : '프로젝트 생성 수',
			data : [52, 111, 147]
		},
		{
			label : '프로젝트 종료 수',
			data : [36, 87, 112]
		}]
	},
	options: {
		scales: {
            y: {
                beginAtZero: true
            }
        }
	}
});

// pjbar1 	당해년도 프로젝트 생성, 종료, 진행 중인 프로젝트 수
const pjbar1Ctx = document.getElementById('pjbar1'); 
const pjbar1Chart = new Chart(pjbar1Ctx, {
	type : 'bar',
	data : {
		labels : ['2022년 5월', '2022년 6월', '2022년 7월', '2022년 8월', '2022년 9월', '2022년 10월', '2022년 11월', '2022년 12월', '2023년 1월', '2023년 2월', '2023년 3월', '2023년 4월', '2023년 5월'],
		datasets : [{
			label : '프로젝트 생성 수',
			data : [11, 13, 10, 15, 16, 8, 10, 7, 10, 15, 12, 7, 2]
		},
		{
			label : '프로젝트 종료 수',
			data : [7, 9, 5, 10, 12, 10, 12, 15, 4, 7, 13, 4, 0]
		},
		{
		    label: '진행 중인 프로젝트 수',
		    data: [10, 12, 15, 11, 9, 7, 11, 14, 5, 10, 9, 8, 5]
		}]
	},
	options: {
		scales: {
            y: {
                beginAtZero: true
            }
        }
	}
	
});


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// 2023년 수익비중
	var salesChartMonthLabels = ['22년 5월', '22년 6월', '22년 7월', '22년 8월', '22년 9월', '22년 10월', '22년 11월', '22년 12월', '23년 1월', '23년 2월', '23년 3월', '23년 4월', '23년 5월'];
	var salesChartMonthData = {
			  labels: salesChartMonthLabels,
			  datasets: [
			    {
			      label: '템플릿',
			      data: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
			    },
			    {
			      label: '솔루션',
			      data: [12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 15, 3]
			    },
			    {
			      label: '프리미엄 서비스',
			      data: [6, 7, 8, 9, 10, 11, 12, 11, 10, 9, 8, 3, 7]
			    }
			  ]
			};
	
	const config = {
			  type: 'line',
			  options: {
			    responsive: true,
			    plugins: {
			      legend: {
			        position: 'top',
			      },
			      title: {
			        display: true,
			        text: 'Chart.js Line Chart'
			      }
			    }
			  },
			};
	
	var scmCtx = document.getElementById('salesChartMonth').getContext('2d');
	var salesChartMonth = new Chart(scmCtx, {
		type : 'line',
		data : salesChartMonthData,
		options : config
	})


	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// 3년 사업간 수익비중(멘토링, 템플릿, 등급상품)
	// 차트 초기화
	const selectYear = document.getElementById("selectYear");

	var pieCtx = document.getElementById('pieChart').getContext('2d');
	var piedata = {
		    datasets: [{
		        data: [30, 30, 40]
		    }],
		    labels: [
		        '프리미엄서비스',
		        '템플릿',
		        '멘토링'
		    ]
		};
	var pieChart = new Chart(pieCtx, {
		  type: 'pie',
		  data: piedata,
		  options: {
		    plugins: {
		      tooltip: {
		        callbacks: {
		          label: function(context) {
		            var label = context.label || '';
		            var value = context.formattedValue;

		            var maxWidth = 150;
		            if (label.length > maxWidth) {
		              label = label.substr(0, maxWidth) + '...';
		            }
		            return label + ': ' + value;
		          }
		        }
		      },
		      legend: {
		        position: 'top'
		      }
		    }
		  }
		});
	

	$("#selectYear").change(function() {
		  var selectYear = $("#selectYear").val();
		  console.log("selectYear", selectYear);
		  
		  if(selectYear == 2023) {
		    var data = [30, 50, 50]
		    pieChart.data.datasets[0].data = data;
		    pieChart.update();
		    console.log("2023 차트데이터:", pieChart.data.datasets);
		  }
		  if(selectYear == 2022) {
		    var data = [40, 40, 30]
		    pieChart.data.datasets[0].data = data;
		    pieChart.update();
		    console.log("2022 차트데이터:", pieChart.data.datasets);
		  }
		  if(selectYear == 2021) {
		    var data = [50, 20, 40]
		    pieChart.data.datasets[0].data = data;
		    pieChart.update();
		    console.log("2021 차트데이터:", pieChart.data.datasets);
		  };
		});

// 	function drawChart(year) {
// 		  $.ajax({
// 		    url: "/coco/admin/getCateSumData",
// 		    method: "POST",
// 		    dataType: "json",
// 		    data: { selectYear: year },
// 		    success: function(data) {
// 		      var labels = data.labels;
// 		      var datasets = data.datasets;

// 		      var pieCtx = document.getElementById("pieChart").getContext("2d");
// 		      var myPieChart = new Chart(pieCtx, {
// 		        type: "pie",
// 		        data: {
// 		          labels: labels,
// 		          datasets: datasets,
// 		        },
// 		      });
// 		    },
// 		    error: function(jqXHR, textStatus, errorThrown) {
// 		      console.log(textStatus, errorThrown);
// 		    }
// 		  });
// 		}


	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/* 3년 - 연간 / 카테고리별 / 수익 */
	var sChartData = {
		  labels: ['2021', '2022', '2023'],
		  datasets: [
		  ]
		};

		// 차트 객체 생성
		var sCtx = document.getElementById('salesChart').getContext('2d');
		var sChart = new Chart(sCtx, {
		  type: 'bar',
		  data: sChartData,
		  options: {}
		});

		$.ajax({
			  url: "/coco/admin/getYearCateData",
			  type: "get",
			  success: function(result) {
// 			    console.log("컨트롤러에서 넘어온 데이터:", result);
// 			    console.log("컨트롤러-result.data", result.data);
			    
			    var datasets = result.data;
			    
			    // 누락된 속성 추가
			    for (var i = 0; i < datasets.length; i++) {
			      var color = getRandomColor();
			      datasets[i].backgroundColor = color + "90"; // 투명도
			      datasets[i].borderColor = color;
			      datasets[i].borderWidth = 1;
			    }
			    
			    sChart.data.datasets = datasets;
			    sChart.update();
			  }
			});

			function getRandomColor() {
			  var letters = "0123456789ABCDEF";
			  var color = "#";
			  for (var i = 0; i < 6; i++) {
			    color += letters[Math.floor(Math.random() * 16)];
			  }
			  return color;
			}



//체크박스 클릭 이벤트 핸들러
var flag = false;
var databox = [];

// function updateChart() {
// 	  var premiumChecked = document.getElementById('premium').checked;
// 	  var templateChecked = document.getElementById('template').checked;
// 	  var mentoringChecked = document.getElementById('mentoring').checked;

// 	  var filteredData = sChartData.datasets.filter(function(dataset) {
// 	    if (dataset.label === '프리미엄') {
// 	      return premiumChecked;
// 	    } else if (dataset.label === '템플릿') {
// 	      return templateChecked;
// 	    } else if (dataset.label === '멘토링') {
// 	      return mentoringChecked;
// 	    }
// 	  });

// 	  // 기존의 데이터셋을 모두 제거
// 	  sChartData.datasets.splice(0, sChartData.datasets.length);

// 	  // 필터링된 데이터셋을 추가
// 	  for (var i = 0; i < filteredData.length; i++) {
// 	    sChartData.datasets.push(filteredData[i]);
// 	  }

// 	  sChart.update();
// 	}


function updateChart() {
  var premiumChecked = document.getElementById('premium').checked;
  var templateChecked = document.getElementById('template').checked;
  var mentoringChecked = document.getElementById('mentoring').checked;

  for (var i = 0; i < sChartData.datasets.length; i++) {
    if (sChartData.datasets[i].label === '프리미엄') {
      sChartData.datasets[i].hidden = !premiumChecked;
    } else if (sChartData.datasets[i].label === '템플릿') {
      sChartData.datasets[i].hidden = !templateChecked;
    } else if (sChartData.datasets[i].label === '멘토링') {
      sChartData.datasets[i].hidden = !mentoringChecked;
    }
  }

  sChart.update();
}

	
</script>





