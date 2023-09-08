package com.profile.springbootappprofile.controller;

import com.profile.springbootappprofile.model.Profile;
import com.profile.springbootappprofile.service.ProfileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RestController
@RequestMapping("/profile")
public class ProfileController {

    @Autowired
    ProfileService profileService;

    @GetMapping
    public List<Profile> getAllProfiles(){
        return profileService.getAllProfiles();
    }

    @PostMapping
    public Profile createProfile(@RequestBody Profile profile){
        return profileService.createProfile(profile);
    }
}
