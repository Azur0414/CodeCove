<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en" data-bs-theme="light">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assan-Admin</title>

    <!--Bootstrap icons-->
    <link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

    <!--Google web fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hanken+Grotesk:wght@100..900&family=IBM+Plex+Mono:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0" />
    <!--Simplebar css-->
    <link rel="stylesheet" href="/resources/assets/vendor/css/simplebar.min.css">
    <!--Choices css-->
    <link rel="stylesheet" href="/resources/assets/vendor/css/choices.min.css">

    <!--Date range picker-->
    <link rel="stylesheet" href="/resources/assets/vendor/css/daterangepicker.css">
    <!--Main style-->
    <link rel="stylesheet" href="/resources/assets/css/style.min.css">
    
    <!-- gantt chart -->
<!--     <link rel="stylesheet" href="https://cdn.dhtmlx.com/gantt/edge/dhtmlxgantt.css"> -->
    <link rel="stylesheet" href="/resources/assets/css/dhtmlxgantt.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="/resources/assets/vendor/dragula.min.js"></script>
    
<!--     <script src="https://cdn.dhtmlx.com/gantt/edge/dhtmlxgantt.js"></script> -->
    <script src="/resources/js/dhtmlxgantt.js"></script>
    
    <!-- gantt chart -->
    <script src="/resources/js/locale_ko.js"></script>
  </head>

<body onload="init()">

    <div class="d-flex flex-column flex-root">
      <!--Page-->
      <div class="page d-flex flex-row flex-column-fluid">

      <!-- sidebar -->
      <tiles:insertAttribute name="sidebar"/>

      
      <!--///////////Page content wrapper///////////////-->
       <main class="page-content d-flex flex-column flex-row-fluid">
      <!-- mheader -->
<%--       <tiles:insertAttribute name="mainHeader"/> --%>
      
      
      <!-- header -->
      <tiles:insertAttribute name="header"/>
      
      <!-- content -->
      <tiles:insertAttribute name="content"/>
      
    </main>
        <!--///////////Page content wrapper End///////////////-->
      </div>
    </div>
      <!--:Toast Example auto show/hide:-->
<!--      <div class="toast fade show position-fixed end-0 me-3 me-lg-6 mb-3 mb-lg-6 bottom-0 shadow-lg text-white z-fixed bg-primary border-0" id="introToast" role="alert" data-bs-autohide="false" aria-live="assertive" aria-atomic="true"> -->
<!--       <div class="toast-header bg-primary text-white border-opacity-25 border-bottom border-white d-flex align-items-center justify-content-between"> -->
<!--         <div class="flex-grow-1 d-flex align-items-center"> -->
<!--          <h4 class="mb-0 me-2">👋</h4> -->
<!--         <strong class="me-2">Welcome to Assan Admin</strong> -->
<!--         </div> -->
<!--         <button type="button" class="ms-2 mb-1 btn-close btn-close-white" data-bs-dismiss="toast" aria-label="Close"> -->
<!--         </button> -->
<!--       </div> -->
<!--       <div class="toast-body"> -->
<!--         Assan admin is now updated with bootstrap 5.3 Alpha 1 with default Dark/Light/Auto modes -->
<!--       </div> -->
<!--     </div> -->

    
    <!--////////////Theme Core scripts Start/////////////////-->
<!--     <script src="/resources/assets/js/theme.bundle.min.js"></script> -->

    <!--////////////Theme Core scripts End/////////////////-->


    <!--Dashboard duration calendar-->
<!--     <script src="/resources/assets/vendor/moment.min.js"></script> -->
<!--     <script src="/resources/assets/vendor/daterangepicker.js"></script> -->


</body>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="/resources/assets/js/theme.bundle.min.dash.js"></script>
<script src="/resources/assets/vendor/moment.min.js"></script>
<script src="/resources/assets/vendor/daterangepicker.js"></script>
<script src="/resources/assets/vendor/apexcharts.min.js"></script>
</html>
