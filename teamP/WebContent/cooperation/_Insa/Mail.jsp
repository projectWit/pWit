<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<base target="_self" />    

    <title>
	우편번호검색
</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="robots" content="noindex,nofollow" />

<link type="text/css" rel="stylesheet" href="/ECMain/ECount.Common/Css2/2_base.css?2014072301" />
    
    <link type="text/css" rel="stylesheet" href="/ECMain/ECount.Common/Css2/2_layout.css?2014072301" />
    
<link type="text/css" rel="stylesheet" href="css/base.css" />

<link type="text/css" rel="stylesheet" href="css/layout.css" />

<link type="text/css" rel="stylesheet" href="css/table.css" />
<link type="text/css" rel="stylesheet" href="css/menu.css" />
<link type="text/css" rel="stylesheet" href="css/print.css" />
<link type="text/css" rel="stylesheet" href="css/etc.css" />
<link type="text/css" rel="stylesheet" href="css/setting.css" />
<link type="text/css" rel="stylesheet" href="css/window.css" />
<link type="text/css" rel="stylesheet" href="css/tax.css" />
    
    <style type="text/css">
         html {overflow-x : hidden;overflow-y : auto}
    </style>
    <script type="text/javascript" language="javascript">
    
        window.onload = function () {
            if ($("#tb2").get(0).style.display == "")
                $("#txtDetailAddr").focus();
            else
                $("#txtName").focus(); 
            
            $("#btnClose").click(function () {
                window.close();
            });

            $("#txtName").keypress(function (e) {
                if (e.which == 13) {
                    $("#tb2").get(0).style.display = "none";
                    $("#lblRegist").get(0).style.display = "none";
                    $("#tb1").get(0).style.display = "";      
                    __doPostBack("btnSearch", "");
                    LoadProgressbar.show();
                    return false;
                }
            });

            $("#txtNameRoad").keypress(function (e) {
                if (e.which == 13) {
                    $("#tb2").get(0).style.display = "none";
                    $("#lblRegist").get(0).style.display = "none";
                    $("#tb1").get(0).style.display = "";
                    __doPostBack("btnSearch", "");
                    LoadProgressbar.show();
                    return false;
                }
            });

            fnSelectGugun();
        }

        // 입력값 선택시
        function fnLink(ZipCode, Addr, Sido, Gugun, Ri, RoadCode, RoadName, Basement, BuildingBon, BuildingBu) {
          //데이터 1개일때 fnTabGubun 안먹어서 새로 추가
             var id = $("#hidZipFlag").get(0).value; 
             var tbId = $("#tb1").get(0);
             if (id == "work1") {
                $("#work1").css("display", "");
                $("#work2").css("display", "none");       //class="nav_tabon"
                $('#Tab1').toggleClass("nav_tabon", true);
                $('#Tab2').toggleClass("nav_tabon", false);
             }else{
                $("#work1").css("display", "none");
                $("#work2").css("display", "");
                $('#Tab1').toggleClass("nav_tabon", false);
                $('#Tab2').toggleClass("nav_tabon", true); 
             }

            $("#txtZipCode").get(0).value = ZipCode.toString().substring(0, 3) + " - " + ZipCode.toString().substring(3, 6);
            $("#hidZipCode").get(0).value = ZipCode;
            $("#tdAddr").get(0).innerHTML = Addr;
            $("#hidAddr").get(0).value = Addr;
            $("#tb1").get(0).style.display = "none";
            $("#tb2").get(0).style.display = "";
            $("#lblRegist").get(0).style.display = "";
            $("#txtDetailAddr").focus();

            $("#hidSido").get(0).value = Sido;
            $("#hidGugun").get(0).value = Gugun;
            $("#hidRi").get(0).value = Ri;
            $("#hidRoadCode").get(0).value = RoadCode;
            $("#hidRoadName").get(0).value = RoadName;
            $("#hidBasement").get(0).value = Basement;
            $("#hidBuildingBon").get(0).value = BuildingBon;
            $("#hidBuildingBu").get(0).value = BuildingBu;

            var length = tbId.rows.length;

            for( var i =0 ; i < length ; i++){
                tbId.deleteRow(0);
            }
        }        
        
        function ReturnValue() {
            var gubun = $("#hidZipFlag").get(0).value;
            var strReVal = "";
            
            if(gubun == "work1") 
                gubun = "1";
            else 
                gubun = "0";
            
            strReVal = $("#hidZipCode").get(0).value + "|" + $("#hidAddr").get(0).value +"" + $("#txtDetailAddr").get(0).value  + "|" + gubun + "|" + $("#hidSido").get(0).value + "|"+ $("#hidGugun").get(0).value + "|"+ $("#hidRi").get(0).value + "|" + $("#hidRoadName").get(0).value + "|" + $("#hidRoadCode").get(0).value + "|"+ $("#hidBasement").get(0).value + "|"+ $("#hidBuildingBon").get(0).value + "|"+ $("#hidBuildingBu").get(0).value;
            
            if (window.opener)
            {
                window.opener.returnValue = strReVal;
                if(window.opener.$("#hidZipCode").length > 0)
                {
                    window.opener.$("#hidZipCode").get(0).value=strReVal;
                }
            }
            
            window.returnValue = strReVal;
            window.close();
        }

        function fnTabGubun(name, id) { 
            if (id == "work1") {
                $("#work1").css("display", "");
                $("#work2").css("display", "none");       //class="nav_tabon"
                $('#Tab1').toggleClass("nav_tabon", true);
                $('#Tab2').toggleClass("nav_tabon", false);
                
                if( $("#nodata").get(0) != undefined)
                    nodata.innerHTML="찾고자 하는 주소의 [도로명]을 입력 바랍니다.";

                
            } else {
                $("#work1").css("display", "none");
                $("#work2").css("display", "");
                $('#Tab1').toggleClass("nav_tabon", false);
                $('#Tab2').toggleClass("nav_tabon", true); 
                if( $("#nodata").get(0) != undefined)
                    nodata.innerHTML="찾고자 하는 주소의 [동]을 입력 바랍니다.";                
            }

            $("#hidZipFlag").get(0).value = id;
        }

        function fnSelectGugun() { 

            for(var i = $("#ddlGuGun").get(0).length-1 ; i>=1 ; i--){
                $("#ddlGuGun").get(0).options[i] =null;
            } 

            var j =1;
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("강릉시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("강릉시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("강릉시","강릉시");
                    }

                    if("" == "강릉시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("고성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("고성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("고성군","고성군");
                    }

                    if("" == "고성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("동해시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동해시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동해시","동해시");
                    }

                    if("" == "동해시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("삼척시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("삼척시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("삼척시","삼척시");
                    }

                    if("" == "삼척시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("속초시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("속초시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("속초시","속초시");
                    }

                    if("" == "속초시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("양구군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("양구군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("양구군","양구군");
                    }

                    if("" == "양구군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("양양군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("양양군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("양양군","양양군");
                    }

                    if("" == "양양군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("영월군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영월군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영월군","영월군");
                    }

                    if("" == "영월군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("원주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("원주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("원주시","원주시");
                    }

                    if("" == "원주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("인제군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("인제군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("인제군","인제군");
                    }

                    if("" == "인제군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("정선군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("정선군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("정선군","정선군");
                    }

                    if("" == "정선군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("철원군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("철원군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("철원군","철원군");
                    }

                    if("" == "철원군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("춘천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("춘천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("춘천시","춘천시");
                    }

                    if("" == "춘천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("태백시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("태백시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("태백시","태백시");
                    }

                    if("" == "태백시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("평창군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("평창군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("평창군","평창군");
                    }

                    if("" == "평창군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("홍천군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("홍천군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("홍천군","홍천군");
                    }

                    if("" == "홍천군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("화천군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("화천군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("화천군","화천군");
                    }

                    if("" == "화천군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="강원도") {
                    if("횡성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("횡성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("횡성군","횡성군");
                    }

                    if("" == "횡성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("가평군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("가평군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("가평군","가평군");
                    }

                    if("" == "가평군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("고양시 덕양구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("고양시 덕양구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("고양시 덕양구","고양시 덕양구");
                    }

                    if("" == "고양시 덕양구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("고양시 일산동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("고양시 일산동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("고양시 일산동구","고양시 일산동구");
                    }

                    if("" == "고양시 일산동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("고양시 일산서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("고양시 일산서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("고양시 일산서구","고양시 일산서구");
                    }

                    if("" == "고양시 일산서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("과천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("과천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("과천시","과천시");
                    }

                    if("" == "과천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("광명시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("광명시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("광명시","광명시");
                    }

                    if("" == "광명시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("광주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("광주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("광주시","광주시");
                    }

                    if("" == "광주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("구리시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("구리시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("구리시","구리시");
                    }

                    if("" == "구리시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("군포시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("군포시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("군포시","군포시");
                    }

                    if("" == "군포시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("김포시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("김포시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("김포시","김포시");
                    }

                    if("" == "김포시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("남양주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남양주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남양주시","남양주시");
                    }

                    if("" == "남양주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("동두천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동두천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동두천시","동두천시");
                    }

                    if("" == "동두천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("부천시 소사구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("부천시 소사구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("부천시 소사구","부천시 소사구");
                    }

                    if("" == "부천시 소사구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("부천시 오정구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("부천시 오정구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("부천시 오정구","부천시 오정구");
                    }

                    if("" == "부천시 오정구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("부천시 원미구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("부천시 원미구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("부천시 원미구","부천시 원미구");
                    }

                    if("" == "부천시 원미구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("성남시 분당구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("성남시 분당구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("성남시 분당구","성남시 분당구");
                    }

                    if("" == "성남시 분당구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("성남시 수정구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("성남시 수정구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("성남시 수정구","성남시 수정구");
                    }

                    if("" == "성남시 수정구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("성남시 중원구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("성남시 중원구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("성남시 중원구","성남시 중원구");
                    }

                    if("" == "성남시 중원구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("수원시 권선구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("수원시 권선구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("수원시 권선구","수원시 권선구");
                    }

                    if("" == "수원시 권선구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("수원시 영통구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("수원시 영통구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("수원시 영통구","수원시 영통구");
                    }

                    if("" == "수원시 영통구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("수원시 장안구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("수원시 장안구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("수원시 장안구","수원시 장안구");
                    }

                    if("" == "수원시 장안구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("수원시 팔달구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("수원시 팔달구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("수원시 팔달구","수원시 팔달구");
                    }

                    if("" == "수원시 팔달구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("시흥시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("시흥시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("시흥시","시흥시");
                    }

                    if("" == "시흥시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("안산시 단원구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("안산시 단원구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("안산시 단원구","안산시 단원구");
                    }

                    if("" == "안산시 단원구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("안산시 상록구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("안산시 상록구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("안산시 상록구","안산시 상록구");
                    }

                    if("" == "안산시 상록구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("안성시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("안성시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("안성시","안성시");
                    }

                    if("" == "안성시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("안양시 동안구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("안양시 동안구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("안양시 동안구","안양시 동안구");
                    }

                    if("" == "안양시 동안구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("안양시 만안구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("안양시 만안구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("안양시 만안구","안양시 만안구");
                    }

                    if("" == "안양시 만안구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("양주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("양주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("양주시","양주시");
                    }

                    if("" == "양주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("양평군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("양평군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("양평군","양평군");
                    }

                    if("" == "양평군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("여주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("여주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("여주시","여주시");
                    }

                    if("" == "여주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("연천군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("연천군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("연천군","연천군");
                    }

                    if("" == "연천군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("오산시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("오산시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("오산시","오산시");
                    }

                    if("" == "오산시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("용인시 기흥구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("용인시 기흥구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("용인시 기흥구","용인시 기흥구");
                    }

                    if("" == "용인시 기흥구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("용인시 수지구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("용인시 수지구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("용인시 수지구","용인시 수지구");
                    }

                    if("" == "용인시 수지구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("용인시 처인구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("용인시 처인구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("용인시 처인구","용인시 처인구");
                    }

                    if("" == "용인시 처인구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("의왕시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("의왕시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("의왕시","의왕시");
                    }

                    if("" == "의왕시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("의정부시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("의정부시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("의정부시","의정부시");
                    }

                    if("" == "의정부시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("이천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("이천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("이천시","이천시");
                    }

                    if("" == "이천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("파주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("파주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("파주시","파주시");
                    }

                    if("" == "파주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("평택시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("평택시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("평택시","평택시");
                    }

                    if("" == "평택시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("포천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("포천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("포천시","포천시");
                    }

                    if("" == "포천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("하남시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("하남시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("하남시","하남시");
                    }

                    if("" == "하남시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경기도") {
                    if("화성시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("화성시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("화성시","화성시");
                    }

                    if("" == "화성시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("거제시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("거제시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("거제시","거제시");
                    }

                    if("" == "거제시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("거창군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("거창군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("거창군","거창군");
                    }

                    if("" == "거창군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("고성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("고성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("고성군","고성군");
                    }

                    if("" == "고성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("김해시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("김해시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("김해시","김해시");
                    }

                    if("" == "김해시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("남해군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남해군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남해군","남해군");
                    }

                    if("" == "남해군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("밀양시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("밀양시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("밀양시","밀양시");
                    }

                    if("" == "밀양시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("사천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("사천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("사천시","사천시");
                    }

                    if("" == "사천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("산청군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("산청군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("산청군","산청군");
                    }

                    if("" == "산청군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("양산시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("양산시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("양산시","양산시");
                    }

                    if("" == "양산시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("의령군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("의령군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("의령군","의령군");
                    }

                    if("" == "의령군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("진주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("진주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("진주시","진주시");
                    }

                    if("" == "진주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("창녕군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("창녕군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("창녕군","창녕군");
                    }

                    if("" == "창녕군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("창원시 마산합포구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 마산합포구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 마산합포구","창원시 마산합포구");
                    }

                    if("" == "창원시 마산합포구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("창원시 마산회원구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 마산회원구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 마산회원구","창원시 마산회원구");
                    }

                    if("" == "창원시 마산회원구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("창원시 성산구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 성산구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 성산구","창원시 성산구");
                    }

                    if("" == "창원시 성산구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("창원시 의창구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 의창구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 의창구","창원시 의창구");
                    }

                    if("" == "창원시 의창구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("창원시 진해구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 진해구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("창원시 진해구","창원시 진해구");
                    }

                    if("" == "창원시 진해구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("통영시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("통영시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("통영시","통영시");
                    }

                    if("" == "통영시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("하동군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("하동군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("하동군","하동군");
                    }

                    if("" == "하동군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("함안군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("함안군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("함안군","함안군");
                    }

                    if("" == "함안군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("함양군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("함양군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("함양군","함양군");
                    }

                    if("" == "함양군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상남도") {
                    if("합천군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("합천군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("합천군","합천군");
                    }

                    if("" == "합천군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("경산시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("경산시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("경산시","경산시");
                    }

                    if("" == "경산시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("경주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("경주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("경주시","경주시");
                    }

                    if("" == "경주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("고령군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("고령군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("고령군","고령군");
                    }

                    if("" == "고령군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("구미시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("구미시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("구미시","구미시");
                    }

                    if("" == "구미시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("군위군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("군위군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("군위군","군위군");
                    }

                    if("" == "군위군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("김천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("김천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("김천시","김천시");
                    }

                    if("" == "김천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("문경시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("문경시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("문경시","문경시");
                    }

                    if("" == "문경시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("봉화군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("봉화군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("봉화군","봉화군");
                    }

                    if("" == "봉화군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("상주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("상주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("상주시","상주시");
                    }

                    if("" == "상주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("성주군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("성주군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("성주군","성주군");
                    }

                    if("" == "성주군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("안동시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("안동시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("안동시","안동시");
                    }

                    if("" == "안동시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("영덕군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영덕군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영덕군","영덕군");
                    }

                    if("" == "영덕군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("영양군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영양군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영양군","영양군");
                    }

                    if("" == "영양군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("영주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영주시","영주시");
                    }

                    if("" == "영주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("영천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영천시","영천시");
                    }

                    if("" == "영천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("예천군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("예천군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("예천군","예천군");
                    }

                    if("" == "예천군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("울릉군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("울릉군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("울릉군","울릉군");
                    }

                    if("" == "울릉군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("울진군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("울진군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("울진군","울진군");
                    }

                    if("" == "울진군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("의성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("의성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("의성군","의성군");
                    }

                    if("" == "의성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("청도군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("청도군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("청도군","청도군");
                    }

                    if("" == "청도군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("청송군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("청송군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("청송군","청송군");
                    }

                    if("" == "청송군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("칠곡군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("칠곡군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("칠곡군","칠곡군");
                    }

                    if("" == "칠곡군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("포항시 남구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("포항시 남구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("포항시 남구","포항시 남구");
                    }

                    if("" == "포항시 남구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="경상북도") {
                    if("포항시 북구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("포항시 북구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("포항시 북구","포항시 북구");
                    }

                    if("" == "포항시 북구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="광주광역시") {
                    if("광산구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("광산구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("광산구","광산구");
                    }

                    if("" == "광산구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="광주광역시") {
                    if("남구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","남구");
                    }

                    if("" == "남구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="광주광역시") {
                    if("동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","동구");
                    }

                    if("" == "동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="광주광역시") {
                    if("북구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("북구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("북구","북구");
                    }

                    if("" == "북구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="광주광역시") {
                    if("서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","서구");
                    }

                    if("" == "서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대구광역시") {
                    if("남구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","남구");
                    }

                    if("" == "남구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대구광역시") {
                    if("달서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("달서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("달서구","달서구");
                    }

                    if("" == "달서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대구광역시") {
                    if("달성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("달성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("달성군","달성군");
                    }

                    if("" == "달성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대구광역시") {
                    if("동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","동구");
                    }

                    if("" == "동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대구광역시") {
                    if("북구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("북구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("북구","북구");
                    }

                    if("" == "북구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대구광역시") {
                    if("서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","서구");
                    }

                    if("" == "서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대구광역시") {
                    if("수성구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("수성구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("수성구","수성구");
                    }

                    if("" == "수성구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대구광역시") {
                    if("중구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","중구");
                    }

                    if("" == "중구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대전광역시") {
                    if("대덕구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("대덕구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("대덕구","대덕구");
                    }

                    if("" == "대덕구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대전광역시") {
                    if("동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","동구");
                    }

                    if("" == "동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대전광역시") {
                    if("서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","서구");
                    }

                    if("" == "서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대전광역시") {
                    if("유성구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("유성구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("유성구","유성구");
                    }

                    if("" == "유성구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="대전광역시") {
                    if("중구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","중구");
                    }

                    if("" == "중구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("강서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("강서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("강서구","강서구");
                    }

                    if("" == "강서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("금정구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("금정구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("금정구","금정구");
                    }

                    if("" == "금정구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("기장군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("기장군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("기장군","기장군");
                    }

                    if("" == "기장군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("남구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","남구");
                    }

                    if("" == "남구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","동구");
                    }

                    if("" == "동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("동래구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동래구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동래구","동래구");
                    }

                    if("" == "동래구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("부산진구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("부산진구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("부산진구","부산진구");
                    }

                    if("" == "부산진구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("북구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("북구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("북구","북구");
                    }

                    if("" == "북구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("사상구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("사상구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("사상구","사상구");
                    }

                    if("" == "사상구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("사하구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("사하구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("사하구","사하구");
                    }

                    if("" == "사하구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","서구");
                    }

                    if("" == "서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("수영구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("수영구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("수영구","수영구");
                    }

                    if("" == "수영구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("연제구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("연제구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("연제구","연제구");
                    }

                    if("" == "연제구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("영도구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영도구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영도구","영도구");
                    }

                    if("" == "영도구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("중구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","중구");
                    }

                    if("" == "중구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="부산광역시") {
                    if("해운대구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("해운대구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("해운대구","해운대구");
                    }

                    if("" == "해운대구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("강남구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("강남구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("강남구","강남구");
                    }

                    if("" == "강남구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("강동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("강동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("강동구","강동구");
                    }

                    if("" == "강동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("강북구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("강북구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("강북구","강북구");
                    }

                    if("" == "강북구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("강서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("강서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("강서구","강서구");
                    }

                    if("" == "강서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("관악구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("관악구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("관악구","관악구");
                    }

                    if("" == "관악구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("광진구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("광진구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("광진구","광진구");
                    }

                    if("" == "광진구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("구로구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("구로구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("구로구","구로구");
                    }

                    if("" == "구로구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("금천구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("금천구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("금천구","금천구");
                    }

                    if("" == "금천구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("노원구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("노원구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("노원구","노원구");
                    }

                    if("" == "노원구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("도봉구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("도봉구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("도봉구","도봉구");
                    }

                    if("" == "도봉구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("동대문구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동대문구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동대문구","동대문구");
                    }

                    if("" == "동대문구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("동작구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동작구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동작구","동작구");
                    }

                    if("" == "동작구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("마포구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("마포구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("마포구","마포구");
                    }

                    if("" == "마포구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("서대문구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서대문구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서대문구","서대문구");
                    }

                    if("" == "서대문구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("서초구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서초구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서초구","서초구");
                    }

                    if("" == "서초구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("성동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("성동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("성동구","성동구");
                    }

                    if("" == "성동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("성북구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("성북구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("성북구","성북구");
                    }

                    if("" == "성북구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("송파구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("송파구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("송파구","송파구");
                    }

                    if("" == "송파구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("양천구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("양천구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("양천구","양천구");
                    }

                    if("" == "양천구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("영등포구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영등포구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영등포구","영등포구");
                    }

                    if("" == "영등포구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("용산구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("용산구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("용산구","용산구");
                    }

                    if("" == "용산구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("은평구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("은평구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("은평구","은평구");
                    }

                    if("" == "은평구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("종로구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("종로구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("종로구","종로구");
                    }

                    if("" == "종로구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("중구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","중구");
                    }

                    if("" == "중구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="서울특별시") {
                    if("중랑구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("중랑구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("중랑구","중랑구");
                    }

                    if("" == "중랑구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="세종특별자치시") {
                    if("" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("","");
                    }

                    if("" == "")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="울산광역시") {
                    if("남구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","남구");
                    }

                    if("" == "남구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="울산광역시") {
                    if("동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","동구");
                    }

                    if("" == "동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="울산광역시") {
                    if("북구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("북구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("북구","북구");
                    }

                    if("" == "북구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="울산광역시") {
                    if("울주군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("울주군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("울주군","울주군");
                    }

                    if("" == "울주군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="울산광역시") {
                    if("중구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","중구");
                    }

                    if("" == "중구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("강화군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("강화군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("강화군","강화군");
                    }

                    if("" == "강화군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("계양구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("계양구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("계양구","계양구");
                    }

                    if("" == "계양구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("남구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남구","남구");
                    }

                    if("" == "남구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("남동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남동구","남동구");
                    }

                    if("" == "남동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("동구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("동구","동구");
                    }

                    if("" == "동구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("부평구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("부평구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("부평구","부평구");
                    }

                    if("" == "부평구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("서구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서구","서구");
                    }

                    if("" == "서구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("연수구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("연수구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("연수구","연수구");
                    }

                    if("" == "연수구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("옹진군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("옹진군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("옹진군","옹진군");
                    }

                    if("" == "옹진군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="인천광역시") {
                    if("중구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("중구","중구");
                    }

                    if("" == "중구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("강진군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("강진군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("강진군","강진군");
                    }

                    if("" == "강진군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("고흥군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("고흥군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("고흥군","고흥군");
                    }

                    if("" == "고흥군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("곡성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("곡성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("곡성군","곡성군");
                    }

                    if("" == "곡성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("광양시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("광양시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("광양시","광양시");
                    }

                    if("" == "광양시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("구례군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("구례군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("구례군","구례군");
                    }

                    if("" == "구례군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("나주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("나주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("나주시","나주시");
                    }

                    if("" == "나주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("담양군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("담양군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("담양군","담양군");
                    }

                    if("" == "담양군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("목포시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("목포시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("목포시","목포시");
                    }

                    if("" == "목포시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("무안군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("무안군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("무안군","무안군");
                    }

                    if("" == "무안군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("보성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("보성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("보성군","보성군");
                    }

                    if("" == "보성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("순천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("순천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("순천시","순천시");
                    }

                    if("" == "순천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("신안군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("신안군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("신안군","신안군");
                    }

                    if("" == "신안군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("여수시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("여수시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("여수시","여수시");
                    }

                    if("" == "여수시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("영광군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영광군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영광군","영광군");
                    }

                    if("" == "영광군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("영암군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영암군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영암군","영암군");
                    }

                    if("" == "영암군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("완도군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("완도군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("완도군","완도군");
                    }

                    if("" == "완도군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("장성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("장성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("장성군","장성군");
                    }

                    if("" == "장성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("장흥군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("장흥군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("장흥군","장흥군");
                    }

                    if("" == "장흥군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("진도군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("진도군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("진도군","진도군");
                    }

                    if("" == "진도군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("함평군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("함평군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("함평군","함평군");
                    }

                    if("" == "함평군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("해남군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("해남군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("해남군","해남군");
                    }

                    if("" == "해남군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라남도") {
                    if("화순군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("화순군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("화순군","화순군");
                    }

                    if("" == "화순군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("고창군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("고창군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("고창군","고창군");
                    }

                    if("" == "고창군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("군산시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("군산시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("군산시","군산시");
                    }

                    if("" == "군산시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("김제시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("김제시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("김제시","김제시");
                    }

                    if("" == "김제시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("남원시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("남원시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("남원시","남원시");
                    }

                    if("" == "남원시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("무주군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("무주군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("무주군","무주군");
                    }

                    if("" == "무주군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("부안군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("부안군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("부안군","부안군");
                    }

                    if("" == "부안군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("순창군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("순창군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("순창군","순창군");
                    }

                    if("" == "순창군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("완주군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("완주군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("완주군","완주군");
                    }

                    if("" == "완주군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("익산시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("익산시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("익산시","익산시");
                    }

                    if("" == "익산시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("임실군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("임실군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("임실군","임실군");
                    }

                    if("" == "임실군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("장수군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("장수군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("장수군","장수군");
                    }

                    if("" == "장수군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("전주시 덕진구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("전주시 덕진구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("전주시 덕진구","전주시 덕진구");
                    }

                    if("" == "전주시 덕진구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("전주시 완산구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("전주시 완산구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("전주시 완산구","전주시 완산구");
                    }

                    if("" == "전주시 완산구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("정읍시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("정읍시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("정읍시","정읍시");
                    }

                    if("" == "정읍시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="전라북도") {
                    if("진안군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("진안군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("진안군","진안군");
                    }

                    if("" == "진안군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="제주특별자치도") {
                    if("서귀포시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서귀포시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서귀포시","서귀포시");
                    }

                    if("" == "서귀포시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="제주특별자치도") {
                    if("제주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("제주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("제주시","제주시");
                    }

                    if("" == "제주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("계룡시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("계룡시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("계룡시","계룡시");
                    }

                    if("" == "계룡시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("공주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("공주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("공주시","공주시");
                    }

                    if("" == "공주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("금산군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("금산군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("금산군","금산군");
                    }

                    if("" == "금산군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("논산시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("논산시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("논산시","논산시");
                    }

                    if("" == "논산시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("당진시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("당진시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("당진시","당진시");
                    }

                    if("" == "당진시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("보령시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("보령시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("보령시","보령시");
                    }

                    if("" == "보령시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("부여군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("부여군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("부여군","부여군");
                    }

                    if("" == "부여군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("서산시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서산시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서산시","서산시");
                    }

                    if("" == "서산시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("서천군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("서천군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("서천군","서천군");
                    }

                    if("" == "서천군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("아산시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("아산시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("아산시","아산시");
                    }

                    if("" == "아산시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("예산군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("예산군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("예산군","예산군");
                    }

                    if("" == "예산군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("천안시 동남구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("천안시 동남구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("천안시 동남구","천안시 동남구");
                    }

                    if("" == "천안시 동남구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("천안시 서북구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("천안시 서북구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("천안시 서북구","천안시 서북구");
                    }

                    if("" == "천안시 서북구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("청양군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("청양군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("청양군","청양군");
                    }

                    if("" == "청양군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("태안군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("태안군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("태안군","태안군");
                    }

                    if("" == "태안군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청남도") {
                    if("홍성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("홍성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("홍성군","홍성군");
                    }

                    if("" == "홍성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("괴산군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("괴산군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("괴산군","괴산군");
                    }

                    if("" == "괴산군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("단양군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("단양군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("단양군","단양군");
                    }

                    if("" == "단양군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("보은군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("보은군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("보은군","보은군");
                    }

                    if("" == "보은군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("영동군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("영동군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("영동군","영동군");
                    }

                    if("" == "영동군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("옥천군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("옥천군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("옥천군","옥천군");
                    }

                    if("" == "옥천군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("음성군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("음성군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("음성군","음성군");
                    }

                    if("" == "음성군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("제천시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("제천시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("제천시","제천시");
                    }

                    if("" == "제천시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("증평군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("증평군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("증평군","증평군");
                    }

                    if("" == "증평군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("진천군" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("진천군","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("진천군","진천군");
                    }

                    if("" == "진천군")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("청주시 상당구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("청주시 상당구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("청주시 상당구","청주시 상당구");
                    }

                    if("" == "청주시 상당구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("청주시 서원구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("청주시 서원구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("청주시 서원구","청주시 서원구");
                    }

                    if("" == "청주시 서원구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("청주시 청원구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("청주시 청원구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("청주시 청원구","청주시 청원구");
                    }

                    if("" == "청주시 청원구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("청주시 흥덕구" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("청주시 흥덕구","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("청주시 흥덕구","청주시 흥덕구");
                    }

                    if("" == "청주시 흥덕구")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
              
                if($("#ddlSiDo").get(0).value =="충청북도") {
                    if("충주시" == "전체") {
                        $("#ddlGuGun").get(0).options[j] = new Option("충주시","");
                    }
                    else {
                        $("#ddlGuGun").get(0).options[j] = new Option("충주시","충주시");
                    }

                    if("" == "충주시")    
                        $("#ddlGuGun").get(0).options[j].selected= true;
                    
                    j++;
                }           
            
        }

        function fnTabClick(id) {
            $("#hidZipFlag").get(0).value = id;
            $("#hidTabClick").get(0).value = id;
            __doPostBack("lnkPostBack", "");
            LoadProgressbar.show();
        }

        
        function searchit2(gubun) {
            $("#hidTabClick").get(0).value = "";
	        LoadProgressbar.show();
            return true;
        }
    //
    </script>    
</head>
<body>
    <form method="post" action="CM004P.aspx?ec_req_sid=00HObBP1cPN9&amp;KeyWord=" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNjcyMjc2Mjg5D2QWAgIDD2QWBgIBDw8WAh4EVGV4dAUG6rKA7IOJZGQCAw8PFgIfAAUG6rKA7IOJZGQCBg8PFgIfAAUP64KY66i47KeA7KO87IaMZGRkO754LfGrtl9l1GY1qeYGim+b0ho=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<div class="aspNetHidden">

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWCAKA9Pq+DQKv1ordAQKazqC+CQLEhISFCwKln/PuCgL8v/mQBwLSzZ7uBALF8PLkAc5aN5mNclbxpqhWEKhV7IxwW23i" />
</div>
        <div style="width:440px;"> 
            <div id="wrap_pop">
            <!-- 타이틀-->
                <div class="new-title">
                    <div class="title-leftarea">우편번호검색</div>		
                </div><!--endof [titlebar] 타이틀바--> 

                <div id="contents">
			        <div class="nav_tab">
					    <ul>
						    <li id="Tab1" ><a href="javascript:fnTabClick('work1'); " >도로명주소</a></li>
						
                            <li id="Tab2" ><a href="javascript:fnTabClick('work2');" >지번 주소</a></li>
                        
					    </ul>
			        </div>

	                <div id="work1"> 
			            <table class="list H_10px" summary="등록된 우편번호를 검색하는 DIV팝업창">
			                <thead>
					            <tr>
							        <th>시도, 시군구를 선택한후 도로명 혹은 건물번호를 입력 바랍니다.</th>
					            </tr>
			                </thead>
			                <tbody>
					            <tr class="gray_bg"> 
							        <td class="center">
								        <select id="ddlSiDo" name="ddlSiDo" onchange="fnSelectGugun()">
									        <option value="">시도 선택</option>
                                        
                                            <option value ="강원도">강원도</option>
                                        
                                            <option value ="경기도">경기도</option>
                                        
                                            <option value ="경상남도">경상남도</option>
                                        
                                            <option value ="경상북도">경상북도</option>
                                        
                                            <option value ="광주광역시">광주광역시</option>
                                        
                                            <option value ="대구광역시">대구광역시</option>
                                        
                                            <option value ="대전광역시">대전광역시</option>
                                        
                                            <option value ="부산광역시">부산광역시</option>
                                        
                                            <option value ="서울특별시">서울특별시</option>
                                        
                                            <option value ="세종특별자치시">세종특별자치시</option>
                                        
                                            <option value ="울산광역시">울산광역시</option>
                                        
                                            <option value ="인천광역시">인천광역시</option>
                                        
                                            <option value ="전라남도">전라남도</option>
                                        
                                            <option value ="전라북도">전라북도</option>
                                        
                                            <option value ="제주특별자치도">제주특별자치도</option>
                                        
                                            <option value ="충청남도">충청남도</option>
                                        
                                            <option value ="충청북도">충청북도</option>
                                        	
								        </select>
								        <select id="ddlGuGun" name="ddlGuGun">
									        <option value="">시군구선택</option> 
								        </select>
								        <input name="txtNameRoad" type="text" id="txtNameRoad" class="default" onfocus="this.select();" />&nbsp;
								        <input type="submit" name="btnSearchRoad" value="검색" onclick="return searchit2(&#39;work1&#39;);" id="btnSearchRoad" class="btn_searchS" />
							        </td>
					            </tr>
			                </tbody>
			            </table> 
	                </div>

                    <div id="work2"> 
		                <table class="list H_10px" summary="등록된 우편번호를 검색하는 DIV팝업창">
		                    <thead>
				                <tr>
						            <th>검색할 시,군,구,읍,면,동,리 이름 중 하나를 입력합니다.</th>
				                </tr>
		                    </thead>
		                    <tbody>
				                <tr> 
						            <td class="center">
								            <input name="txtName" type="text" id="txtName" class="default" onfocus="this.select();" />&nbsp;
								            <input type="submit" name="btnSearch" value="검색" onclick="return searchit2(&#39;work2&#39;);" id="btnSearch" class="btn_searchS" />
						            </td>
				                </tr>
		                    </tbody>
		                </table><!-- endof 상단검색 테이블  -->
                    </div>

                    <p class="H_10px Navy"><strong>지역명 : </strong>데이터를 입력하기 바랍니다.</p>

                    <table class="list H_2px">
                        <col width="30%" /><col width="68%" />
			            <thead>
					        <tr>
							    <th>우편번호</th>
							    <th>주소</th>
					        </tr>
			            </thead>
                        <tbody id="tb1">		
                            
                        
                            <tr>
                                <td class="nodata" colspan="2" ><span id="nodata"></span></td>
                            </tr>		
                        
                        </tbody>
                        <tbody id="tb2" style="display:none">
                            <tr>
                                <td class="center">
                                    <input name="txtZipCode" type="text" readonly="readonly" id="txtZipCode" class="defaultgray_none center" style="background:none" />
                                </td>
                                <td id="tdAddr"></td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <span id="lblDetalAddr">나머지주소</span>
                                </td>
                                <td>
                                    <input name="txtDetailAddr" type="text" id="txtDetailAddr" class="default" style="width:90%;" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div><!--endof contents-->
                
                <br /><br /><br /><br />
                
                <div class="footerBG_pop">
                    <span id="lblRegist" class="btn blue" style="display:none"><input type="button"  value="등록" id="btnRegist" name="btnRegist"  onclick="javascript:ReturnValue();" /></span>
                    <span class="btn gray"><input type="button" value="닫기" id="btnClose" name="btnClose" /></span> 
                    <p class="btn_right"><label class="btn_txt"  id="updateMsg"></label></p>
                    <a id="lnkPostBack" href="javascript:__doPostBack(&#39;lnkPostBack&#39;,&#39;&#39;)"></a>     
                </div><!--endof 하단버튼 단-->
                
                <input type="hidden" id="hidZipCode" name="hidZipCode" />
                <input type="hidden" id="hidAddr" name="hidAddr" />
                <input type ="hidden" id="hidZipFlag" name="hidZipFlag" value="work2" />
                <input type ="hidden" id="hidType" name="hidType" />
                <input type="hidden" id="hidSido" name="hidSido" />
                <input type="hidden" id="hidGugun" name="hidGugun" />
                <input type="hidden" id="hidRi" name="hidRi" />
                <input type="hidden" id="hidRoadCode" name="hidRoadCode" />
                <input type="hidden" id="hidRoadName" name="hidRoadName" />
                <input type="hidden" id="hidBasement" name="hidBasement" />
                <input type="hidden" id="hidBuildingBon" name="hidBuildingBon" />
                <input type="hidden" id="hidBuildingBu" name="hidBuildingBu" />
                <input type="hidden" id="hidTabClick" name="hidTabClick" />
            </div>   
        </div>    
    

<script type="text/javascript">
//<![CDATA[
fnTabGubun('Tab2','work2');//]]>
</script>
</form>
</body>
</html>