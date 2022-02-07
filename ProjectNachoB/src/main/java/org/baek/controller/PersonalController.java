package org.baek.controller;

import java.io.Serializable;
import java.security.Principal;
import java.util.List;

import org.baek.domain.AuthVO;
import org.baek.domain.MemberVO;
import org.baek.domain.TicketingVO;
import org.baek.service.AuthService;
import org.baek.service.BoardService;
import org.baek.service.MemberService;
import org.baek.service.MovieReplyService;
import org.baek.service.MovieService;
import org.baek.service.TicketService;
import org.baek.service.TxService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/personal/*")
public class PersonalController implements Serializable{
   
   private MemberService service;
   private AuthService authService;
   private TxService tservice;
   private TicketService tkservice;
   private MovieReplyService mrservice;
   private BoardService bservice;
   
   @Autowired
   private BCryptPasswordEncoder pwencoder;
   
   @GetMapping("/myPage")
   public void myPage(Model model, Principal pri) {
      log.info("=======myPage start========");
      log.info(pri.getName());
      model.addAttribute("MyTicketInfo", service.Mytickets(pri.getName()));
      model.addAttribute("MyBoardInfo", service.Myboard(pri.getName()));
      model.addAttribute("MyMreply", service.MyMovieReply(pri.getName()));
   }
   
   // 티켓 삭제
   @PostMapping("/myPage")
   public String deleteTK(TicketingVO tkvo,RedirectAttributes rttr){
      log.info("============="+tkvo.getMid()+"=============");   // 넘어오는지 확인용
      log.info("============="+tkvo.getTheater()+"=============");
      int result = 0;
      result = tkservice.removeBook(tkvo);
      log.info("============="+result+"=============");
      rttr.addFlashAttribute("tResult", result);
      
      return "redirect:/personal/myPage";
   }
   
    // 체크한 티켓 전체 삭제, 삭제 후 환불 처리는 알람으로 대체
    @PostMapping("/delete_ticketChecked")   //배열은 @RequestParam에 value= 를 적어줘야 된다.
    public String deleteCheckedTK(@RequestParam(value="valueArr[]") List<Integer> valueArr,
                   RedirectAttributes rttr) {
       log.info("*************"+valueArr+"***************");
       int[] result = new int[valueArr.size()];   // 체크된 체크박스의 개수만큼 넣어주는 결과
       
       for(int i=0; i<valueArr.size(); i++) {
          result[i] = tkservice.removeBookByTno(valueArr.get(i));
          log.info("result["+i+"] = "+ result[i] +"=============");
          rttr.addFlashAttribute("result"+i, result[i]);
       }
       return "redirect:/personal/myPage";   // ajax로 하니까 이게 안먹네, 새로고침하니까 삭제는 됨
    }
     
     @PostMapping("/deleteBoard")
     public String deleteBoardInMyPage(long bno, RedirectAttributes rttr) {
        boolean result = false;
        result = bservice.remove(bno);
        
        rttr.addFlashAttribute("bResult",result);
        
        return "redirect:/personal/myPage";
     }
     
     @PostMapping("/deleteMyMreply")
     public String deleteMyMreply(int mrno, RedirectAttributes rttr) {
        
        int result = 0;
        result = mrservice.removeMreply(mrno);
        log.info("result of remove movieReply : " + result + "==============================");
        rttr.addFlashAttribute("MRresult", result);
        
        return "redirect:/personal/myPage";
     }
   @GetMapping("/registerMem")
   public void showRegisterMem() {
      log.info("=======registerMem start========");      
   }
   
   // 회원가입
   @PostMapping("/registerMem")
   public String registerMem(Model model, MemberVO vo,
         RedirectAttributes rttr){
      log.info("=======registerMem(post) start========");
         
//      String rawPw = "";      // 인코딩 전 비밀번호
//      String encodePw = "";   //  인코딩 후 비밀번호
//      
//      rawPw = vo.getMpw();            // 비밀번호 데이터 얻음
//      encodePw = pwEncoder.encode(rawPw);   // 비밀번호 인코딩
//      vo.setMpw(encodePw);            // 인코딩한 비밀번호 member객체에 다시 저장
      
//      //회원가입 쿼리 실행
      
      // 권한 객체에 아이디, 권한값 삽입
      String rawPw = vo.getMpw();
      String encodedPw = pwencoder.encode(rawPw);
      vo.setMpw(encodedPw);
      
      tservice.addMember(vo);            // transactional 사용한 메소드
      
      AuthVO avo = new AuthVO();         // 항상 권한은 ROLE_USER이므로 넘어가는지 확인(트랜젝션 내부에 있어서 가져오기 불가)
      avo.setAuth("ROLE_USER");
      
      rttr.addAttribute("mid",vo.getMid());
      rttr.addAttribute("mname",vo.getMname());
      rttr.addAttribute("auth",avo.getAuth());
      
      
      return "redirect: /personal/regDone";
   }
   
   // 회원가입 완료 페이지
   @GetMapping("/regDone")
   public void showRegDone(Model model, String mid, String mname, String auth) {
      log.info("===========regDone============");      
      log.info("===========mid : "+ mid +"============");      
      log.info("===========mname : "+ mname +"============");
      
      model.addAttribute("mid", mid);
      model.addAttribute("mname", mname);
      model.addAttribute("auth", auth);
   }
   
 

     
     // 아이디 비밀번호 찾기 페이지로 이동
     @GetMapping("/findIdPw")
     public void moveToFindIdPw() {
        
     }
     // 아이디찾기 , 비밀번호 찾기 동시에 진행중 ************** test
     @PostMapping("/findIdPw")
     public String foundId(Model model,@RequestParam("mname") String mname, 
                                 @RequestParam("memail") String memail, RedirectAttributes rttr) {
           String gotId = "";
           MemberVO vo = new MemberVO();
           int result = 0;
//           log.info("id찾기시 mid의 출력결과 확인 : " + mid+"====="); 400 에러 생긴다. mid가 반드시 있어야 함
            vo = service.findIdByNameAndEmail(mname, memail);    
            
            if(vo != null) {
              gotId = vo.getMid();
              //  addAttribute는 url에 나오고, addFlashAttribute는 url에 안나온다. refresh할 경우 데이터 소실.
              rttr.addFlashAttribute("gotId", gotId);   
              return "redirect:/personal/foundId";               
            }else {
               rttr.addFlashAttribute("result", result);
               return "redirect:/personal/findIdPw";
            }
           
     }
     
     @PostMapping("/foundPw")
     public String resetPw(Model model, @RequestParam("mid") String mid, @RequestParam("mname") String mname,
                          @RequestParam("memail") String memail, RedirectAttributes rttr) {
       MemberVO vo = new MemberVO();
       
       // 파라미터 3개를 조건으로 맞는 맴버 확인, vo가 null값으로 들어올때 어떻게 해야할까?
        vo = service.findOneForNewPw(mid, mname, memail);
        
        if(vo == null) {
           return "redirect:/personal/wrongInput";

        }else {
           rttr.addFlashAttribute("mid",mid);   // 비밀번호 수정을 위한 아이디
          // Flash로 적어야 ${} 사용가능, 그냥 addAttribute는 url에만 나온다.
          return "redirect:/personal/setPw";
        }
        
        //if(vo.getMid().equals(mid) && vo.getMname().equals(mname) && vo.getMemail().equals(memail)) {
              
           
        
        
        
//        log.info("---------------------------"+vo.getMid()+mid+"------------------------------");
           
      
        
       // 맴버의 아이디 전달 후 비밀번호 설정하는 페이지로 이동
       // 비밀번호랑 비밀번호 확인을 적으면 등록완료 alert창을 띄운뒤 이동. 안되면 alert창으로 비밀번호가 조건에 안맞는다
        
     }
     
     @GetMapping("/setPw")
     public void moveForSetPw() {
        
     }
     
     @PostMapping("/setPw")
     public String setPw(Model model, MemberVO vo, RedirectAttributes rttr) {
        
        log.info("넘어오는지 확인 : " +vo.getMpw() +vo.getMid()+ vo.getMchpw());
        String rawPw = vo.getMpw();
        String encodedPw = pwencoder.encode(rawPw);
        vo.setMpw(encodedPw);
        log.info("인코딩된 비밀번호 확인 : " +vo.getMpw());
        
        int result = service.updatePw(vo);
        log.info("result of that pw changed : " + result +"======================" );
       
        // 등록여부 확인
        
        if(result != 1) {           
           rttr.addFlashAttribute("result", result);
           return "redirect:/personal/setPw";
        }else {
           rttr.addFlashAttribute("result", result);
           return "redirect:/nachoCustomLogin";           
        }
        
     }
     
     
     @GetMapping("/wrongInput")
     public void getWrongInputForChangingPw() {
        
     }
     
     
     @GetMapping("/foundId")
     public void foundIdMovingTest(){
        // @postMapping redirct 할 때 필요하다. 없으면 404
     }
     
     @GetMapping("/foundPw")
     public void foundPw(){
        
     }
     
     @GetMapping("/confirmPw")
     public void moveToConfirmPw() {
        
     }
     
     @PostMapping("/confirmPw")
     public String checkPw(Model model, @RequestParam("mid") String mid, @RequestParam("mchpw") String mchpw
           , RedirectAttributes rttr) {
        
        MemberVO vo = new MemberVO();
        int result = 0;
        
        vo = service.findOneForChangePersonalinfo(mid, mchpw);
        log.info(vo);
        
        if(vo == null ) {
           // 왜 result가 전달이 안될까...? 그렇지!!!!! 주소에 redirect: 를 안적었으니까 redirect가 안먹히지!!!!
           rttr.addFlashAttribute("result", result);
           return "redirect:/personal/confirmPw";
        }else {
           // 왜 전달이 안될까...?
           rttr.addFlashAttribute("mid", vo.getMid());
           rttr.addFlashAttribute("memail", vo.getMemail());
           rttr.addFlashAttribute("mname", vo.getMname());
           return "redirect:/personal/changeInfo";
        }
     }
     
     @GetMapping("/changeInfo")
     public void moveToChangeInfo() {
        
     }
     
     @PostMapping("/changeInfo")
     public String changeInfo(MemberVO vo, RedirectAttributes rttr) {
        
        int result = 0;
        String rawPw = vo.getMpw();
        String encodedPw = pwencoder.encode(rawPw);
        vo.setMpw(encodedPw);
        
        result= service.updateMember(vo);
        
        if(result == 0) {
           rttr.addFlashAttribute("result",result);
           return "redirect:/personal/myPage";
        }else{
           rttr.addFlashAttribute("result", result);
           return "redirect:/personal/myPage";
        }
        
     }
     
}