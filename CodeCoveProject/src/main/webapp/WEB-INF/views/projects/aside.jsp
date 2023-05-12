<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!--///////////Page sidebar begin///////////////-->
<aside class="page-sidebar">
	<div class="h-100 flex-column d-flex justify-content-start">

		<!--Aside-logo-->
		<div
			class="aside-logo d-flex align-items-center flex-shrink-0 justify-content-start px-5 position-relative">
			<a href="/coco/main" class="d-block">
				<div class="d-flex align-items-center flex-no-wrap text-truncate">
					<!--Logo-icon-->
					<span
						class="sidebar-icon size-40 d-flex align-items-center justify-content-center fs-4 lh-1 text-white rounded-3 bg-gradient-primary fw-bolder">
						C </span> <span class="sidebar-text"> <!--Sidebar-text--> <span
						class="sidebar-text text-truncate fs-3 fw-bold"> CodeCove </span>
					</span>
				</div>
			</a>
		</div>
		<!--Sidebar-Menu-->
		<div class="aside-menu px-3 my-auto" data-simplebar>
			<nav class="flex-grow-1 h-100" id="page-navbar">
				<!--:Sidebar nav-->
				<ul class="nav flex-column collapse-group collapse d-flex">
					<li class="nav-item sidebar-title text-truncate opacity-50 small">
						<i class="bi bi-three-dots"></i> <span>프로젝트</span>
					</li>
					<li class="nav-item"><a href="/coco/project/register"
						class="nav-link d-flex align-items-center text-truncate active">
							<span class="sidebar-icon"> <span
								class="material-symbols-rounded"> sell </span>
						</span> <!--Sidebar nav text--> <span class="sidebar-text">프로젝트 만들기</span>
					</a></li>
					
					<li class="nav-item"><a href="/coco/project/list"
						class="nav-link d-flex align-items-center text-truncate "> <span
							class="sidebar-icon"> <span
								class="material-symbols-rounded"> monitoring </span>
						</span> <!--Sidebar nav text--> <span class="sidebar-text">내 프로젝트</span>
					</a></li>
					
					<li
						class="nav-item mt-2 sidebar-title text-truncate small opacity-50">
						<i class="bi bi-three-dots"></i> <span>모아보기</span>
					</li>
					<li class="nav-item"><a href="/coco/project/allWork"
						class="nav-link d-flex align-items-center text-truncate "> <span
							class="sidebar-icon"> <span
								class="material-symbols-rounded"> all_inbox </span>
						</span> <span class="sidebar-text">전체업무 
<!-- 						<span class="badge rounded-pill bg-primary small lh-1 ms-3">1 new</span> -->
						</span>
					</a></li>
					<li class="nav-item"><a href="/coco/myGantt/form"
						class="nav-link d-flex align-items-center text-truncate "> <span
							class="sidebar-icon"> <span
								class="material-symbols-rounded"> chat </span>
						</span> <span class="sidebar-text">간트차트</span>
					</a></li>
					<li class="nav-item"><a href="/coco/myBoard/form"
						class="nav-link d-flex align-items-center text-truncate "> <span
							class="sidebar-icon"> <span
								class="material-symbols-rounded"> space_dashboard </span>
						</span> <span class="sidebar-text">칸반보드</span>
					</a></li>
					<li class="nav-item"><a href="/coco/myCalendar/form"
						class="nav-link d-flex align-items-center text-truncate "> <span
							class="sidebar-icon"> <span
								class="material-symbols-rounded"> calendar_month </span>
						</span> <span class="sidebar-text">캘린더</span>
					</a></li>
					
					<li class="nav-item">
					<a href="/coco/project/jRepositoryList"
						class="nav-link d-flex align-items-center text-truncate "> <span
							class="sidebar-icon"> <span
								class="material-symbols-rounded"> database </span>
						</span> <span class="sidebar-text">자료실</span>
					</a></li>
				</ul>
			</nav>
			<!--aside-info-box-->
			<div
				class="my-3 p-3 aside-info bg-gradient-primary shadow-lg text-white rounded-4 position-relative overflow-hidden">
				<svg style="transform: rotate(-180deg);" preserveAspectRatio="none"
					class="position-absolute text-white start-0 bottom-0 w-100"
					fill="currentColor" height="35%" viewBox="0 0 1200 120"
					xmlns="http://www.w3.org/2000/svg">
                  <path
						d="M0 0v46.29c47.79 22.2 103.59 32.17 158 28 70.36-5.37 136.33-33.31 206.8-37.5 73.84-4.36 147.54 16.88 218.2 35.26 69.27 18 138.3 24.88 209.4 13.08 36.15-6 69.85-17.84 104.45-29.34C989.49 25 1113-14.29 1200 52.47V0z"
						opacity=".1"></path>
                  <path
						d="M0 0v15.81c13 21.11 27.64 41.05 47.69 56.24C99.41 111.27 165 111 224.58 91.58c31.15-10.15 60.09-26.07 89.67-39.8 40.92-19 84.73-46 130.83-49.67 36.26-2.85 70.9 9.42 98.6 31.56 31.77 25.39 62.32 62 103.63 73 40.44 10.79 81.35-6.69 119.13-24.28s75.16-39 116.92-43.05c59.73-5.85 113.28 22.88 168.9 38.84 30.2 8.66 59 6.17 87.09-7.5 22.43-10.89 48-26.93 60.65-49.24V0z"
						opacity=".25"></path>
                  <path
						d="M0 0v5.63C149.93 59 314.09 71.32 475.83 42.57c43-7.64 84.23-20.12 127.61-26.46 59-8.63 112.48 12.24 165.56 35.4C827.93 77.22 886 95.24 951.2 90c86.53-7 172.46-45.71 248.8-84.81V0z"
						opacity=".25"></path>
                </svg>
				<div class="position-relative">
					<p class="mb-0 pb-2">계정 업그레이드로 <br>업무 효율을 높여보세요!</p>
					<a href="/coco/premium"
						class="btn rounded-pill btn-white shadow-sm text-truncate px-3 btn-sm">Upgrade</a>
				</div>
			</div>
		</div>
	</div>
</aside>
<!--///////////Page Sidebar End///////////////-->

<!--///Sidebar close button for 991px or below devices///-->
<div class="sidebar-close d-lg-none">
	<a href="#"></a>
</div>
<!--///.Sidebar close end///-->