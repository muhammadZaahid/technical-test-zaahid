package com.profile.springbootappprofile.service;

import com.profile.springbootappprofile.model.Profile;
import com.profile.springbootappprofile.repository.ProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProfileService {

    @Autowired
    ProfileRepository profileRepository;

    public List<Profile> getAllProfiles(){
        return profileRepository.findAll();
    }

    public Profile createProfile(Profile profile){
        return profileRepository.save(profile);
    }
}
