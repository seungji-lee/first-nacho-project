package org.baek.controller;

import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.baek.domain.MovieVO;
import org.baek.service.MovieService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/search/*")
public class SearchController {
	
	private MovieService service;
	
	@GetMapping("/main")
	public void main(Model model) {
		log.info("=======main start========");
		String genre1 = "액션";
		model.addAttribute("list", service.getAllFromGenre(genre1));
	}
	
	
	
	
	
	
     @GetMapping("/searcher")
     public void searcher(Model model) {
    	log.info("========searcher start===========");


    	// 통합 검색 end---------------
    	
    	// 초기화면 20줄 출력 start
    	String genre1 = "판타지";
    	String genre2 = "SF";
    	String genre3 = "모험";
    	String genre4 = "액션";
    	String genre5 = "전쟁";
    	String genre6 = "범죄";
    	String genre7 = "드라마";
    	String genre8 = "가족";
    	String genre9 = "애니메이션";
    	String genre10 = "코미디";
    	
    	String age1 = "전체 관람가";
    	String age2 = "12세 관람가";
    	String age3 = "15세 관람가";
    	String age4 = "19세 관람가";
    	
    	int year1_1 = 1990;
    	int year1_2 = 1995;
    	
    	int year2_1 = 1996;
    	int year2_2 = 2000;
    	
    	int year3_1 = 2001;
    	int year3_2 = 2005;
    	
    	int year4_1 = 2006;
    	int year4_2 = 2010;
    	
    	int year5_1 = 2011;
    	int year5_2 = 2015;
    	
    	int year6_1 = 2016;
    	int year6_2 = 2021;
    	
    	
    	
    	model.addAttribute("allAge",age1);
    	model.addAttribute("age12",age2);
    	model.addAttribute("age15",age3);
    	model.addAttribute("age19",age4);
    	
    	model.addAttribute("allAgeList",service.getAllFromSelectedAge(age1));
    	model.addAttribute("age12List",service.getAllFromSelectedAge(age2));
    	model.addAttribute("age15List",service.getAllFromSelectedAge(age3));
    	model.addAttribute("age19List",service.getAllFromSelectedAge(age4));
    	

    	
    	
    	model.addAttribute("year1_1",year1_1);
    	model.addAttribute("year1_2",year1_2);
    	model.addAttribute("year2_1",year2_1);
    	model.addAttribute("year2_2",year2_2);
    	model.addAttribute("year3_1",year3_1);
    	model.addAttribute("year3_2",year3_2);
    	model.addAttribute("year4_1",year4_1);
    	model.addAttribute("year4_2",year4_2);
    	model.addAttribute("year5_1",year5_1);
    	model.addAttribute("year5_2",year5_2);
    	model.addAttribute("year6_1",year6_1);
    	model.addAttribute("year6_2",year6_2);
    	
    	
    	model.addAttribute("list1990_1995",service.getAllFromSelectedYear2(year1_1, year1_2));
    	model.addAttribute("list1996_2000",service.getAllFromSelectedYear2(year2_1, year2_2));
    	model.addAttribute("list2001_2005",service.getAllFromSelectedYear2(year3_1, year3_2));
    	model.addAttribute("list2006_2010",service.getAllFromSelectedYear2(year4_1, year4_2));
    	model.addAttribute("list2011_2015",service.getAllFromSelectedYear2(year5_1, year5_2));
    	model.addAttribute("list2016_2020",service.getAllFromSelectedYear2(year6_1, year6_2));
    	
    	
    	model.addAttribute("fantasy", genre1);
    	model.addAttribute("SF", genre2);
    	model.addAttribute("adventure", genre3);
    	model.addAttribute("action", genre4);
    	model.addAttribute("war", genre5);
    	model.addAttribute("crime", genre6);
    	model.addAttribute("drama", genre7);
    	model.addAttribute("family", genre8);
    	model.addAttribute("ani", genre9);
    	model.addAttribute("comedy", genre10);
    	
    	model.addAttribute("fantasyList", service.getAllFromGenre(genre1));
    	model.addAttribute("SFList", service.getAllFromGenre(genre2));
    	model.addAttribute("adventureList", service.getAllFromGenre(genre3));
    	model.addAttribute("actionList", service.getAllFromGenre(genre4));
    	model.addAttribute("warList", service.getAllFromGenre(genre5));
    	model.addAttribute("crimeList", service.getAllFromGenre(genre6));
    	model.addAttribute("dramaList", service.getAllFromGenre(genre7));
    	model.addAttribute("familyList", service.getAllFromGenre(genre8));
    	model.addAttribute("aniList", service.getAllFromGenre(genre9));
    	model.addAttribute("comedyList", service.getAllFromGenre(genre10));
   
//    	model.addAttribute("randomGenres2", service.getListBySelectedGenre(genreList2[randomNum2])); // 랜덤장르 리스트    	
//    	model.addAttribute("randomGenres3", service.getListBySelectedGenre(genreList3[randomNum3])); // 랜덤장르 리스트    	
//    	model.addAttribute("randomGenres4", service.getListBySelectedGenre(genreList4[randomNum4])); // 랜덤장르 리스트    	
//    	model.addAttribute("fantasyList", service.getListBySelectedGenre(genre2));    // 특정 장르 출력
     }

     
     
     
     
     
     @GetMapping("/list")
     public void getAllFromOne(Model model,  String value) {
    	 log.info("getAllFromOne..."+ value+"===============================");
    	 MovieVO vo = new MovieVO();
    	 vo.setTitle(value);
    	 vo.setContent(value);
    	 vo.setGenre1(value);
    	 vo.setGenre2(value);
    	 vo.setDirector(value);
    	 vo.setMainact1(value);
    	 vo.setMainact2(value);
    	 vo.setSupportact1(value);
    	 vo.setSupportact2(value);
    	 
    	 model.addAttribute("value", value);
    	 model.addAttribute("allList", service.getAllFromOne(vo));
    	 
     }
     
     @GetMapping("/searchResult")
     public void getSearchResult(Model model, String value) {
    	 log.info("getAllFromOne..."+ value+"===============================");
    	 MovieVO vo = new MovieVO();
    	 vo.setTitle(value);
    	 vo.setContent(value);
    	 vo.setGenre1(value);
    	 vo.setGenre2(value);
    	 vo.setDirector(value);
    	 vo.setMainact1(value);
    	 vo.setMainact2(value);
    	 vo.setSupportact1(value);
    	 vo.setSupportact2(value);
    	 
    	 model.addAttribute("result", value);
    	 model.addAttribute("listAll", service.getAllFromOne(vo));
     }
     
     
     @GetMapping("/login")
     public void moveToLogin() {
    	 
     }
     
     @GetMapping("/registerMem")
     public void moveToRegisterMem() {
    	 
     }

     @GetMapping("/findIdPw")
     public void moveToFindIdPw() {
    	 
     }
     
     @GetMapping("bootTest")
     public void moveToBootTest() {
    	 
     }
     
     @GetMapping("/regDone")
     public void regDone(){
    	 
     }
     
     @GetMapping("/foundId")
     public void foundId(){
    	 
     }
	
     @GetMapping("/foundPw")
     public void foundPw(){
    	 
     }
     
}
