package com.abchealthinsurance.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.abchealthinsurance.dao.HospitalModel;
import com.abchealthinsurance.dao.Members;
import com.abchealthinsurance.dao.Plan;
import com.abchealthinsurance.repo.ProviderRepository;
import com.abchealthinsurance.repo.MembersRepo;
import com.abchealthinsurance.repo.PlanRepository;

@Controller
public class MemberController {

	@Autowired
	private MembersRepo membersRepo;

	@Autowired
	private ProviderRepository providerRepo;

	@Autowired
	private PlanRepository planRepo;

	@RequestMapping("/showMemberRegister")
	public String showMemberReg() {
		return "reg";
	}

	@RequestMapping(value = "/SelPlan", method = RequestMethod.POST)
	public String register(@RequestParam("state") String state, @ModelAttribute("mem") Members mem, ModelMap modelMap) {
		modelMap.addAttribute("mem", mem);
		List<Plan> plan = planRepo.findPlan(state);
		modelMap.addAttribute("plan", plan);
		return "plan";
	}

	@RequestMapping(value = "/ConfirmEnrolment")
	public String ConfirmEnroll(@RequestParam("pincode") String pincode, @ModelAttribute("mem") Members mem,
			@ModelAttribute("plan") Plan plan, ModelMap modelMap) {
		modelMap.addAttribute("mem", mem);
		modelMap.addAttribute("plan", plan);
		List<HospitalModel> hospitalModel = providerRepo.findProvider(pincode);
		modelMap.addAttribute("hospital", hospitalModel);
		return "review";
	}

	@RequestMapping(value = "/MemberAdded", method = RequestMethod.POST)
	public String doneEnroll(@ModelAttribute("mem") Members mem, ModelMap modelMap) {
		Members x = membersRepo.save(mem);
		modelMap.addAttribute("mem", x);
		return "success";
	}

}
