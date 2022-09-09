package com.skillstorm.demo.services.implementation;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skillstorm.demo.models.Goal;
import com.skillstorm.demo.repositories.GenericRepositoryImpl;
import com.skillstorm.demo.repositories.GoalRepository;
import com.skillstorm.demo.services.interfaces.GoalServiceInterface;

@Service
@Transactional
public class GoalService extends GenericRepositoryImpl<Goal, Integer> implements GoalServiceInterface{
	private final GoalRepository goalRepository;
	
	@Autowired
	public GoalService(GoalRepository goalRepository) {
		super(goalRepository);
		this.goalRepository = goalRepository;
	}
	
//	@Override
//	public Goal update(Goal goal) {
//		Set<Goal> goalSet = new HashSet<>();
//		goalSet.add(goal);
//		User newUser = new User(
//				0,
//				goal.getUserId().getUsername()
//				
		
//	}
	
	@Override
	public void saveGoal(Goal goal) {
		try {
			Goal createdGoal = goalRepository.save(goal);
			if (createdGoal != null) {
				return;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return;
	}

	@Override
	public boolean delete(int id) {
		Goal goal = goalRepository.findById(id).get();
		if (goal != null) {
			goalRepository.save(goal);
			goalRepository.deleteById(id);
			// returns false if deleted
			return goalRepository.findById(id).isPresent();
		}

		//Goal was not deleted
		return true;
	}



}
