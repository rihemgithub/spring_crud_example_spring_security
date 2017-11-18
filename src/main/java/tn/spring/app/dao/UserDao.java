package tn.spring.app.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import tn.spring.app.entity.UserEntity;
@Repository
@EnableTransactionManagement
public class UserDao {
	
	@PersistenceContext
	private EntityManager entityManager;

	
	/**
	 * add a user
	 * @param user to add
	 */
	
	@Transactional
	public void save(UserEntity user)
	{
		entityManager.persist(user);
	}
	
	/**
	 * Find a user by Id
	 * @param login
	 * @return
	 */
	
	public UserEntity findUserByLogin(Long id) {
		return entityManager.find(UserEntity.class, id);
	}
	
	/**
	 * Edit User
	 * @param user to edit
	 */
	@Transactional
	public void update(UserEntity user) {
		entityManager.merge(user);
	}
	public List<UserEntity> getListUser() {
		return entityManager.createQuery("SELECT u FROM UserEntity u",UserEntity.class).getResultList();
	}




	
	/**
	 * Remove a given user by login
	 * @param id of the user to be removed
	 */
	@Transactional
	public void delete(UserEntity u) {
		entityManager.remove(entityManager.contains(u) ? u : entityManager.merge(u));
	}

}
