package buytrip.mvc.model.deal.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import buytrip.mvc.model.deal.dto.OfferDTO;

@Repository
public class DealDAOImpl implements DealDAO {

	@Autowired
	private SqlSession session;
	
	@Override
	public int offerDeal(OfferDTO offer) {
		
		return session.insert("offerDeal", offer);
	}

	@Override
	public int deleteDeal() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void messages() {
		// TODO Auto-generated method stub

	}

	@Override
	public void messageDetail() {
		// TODO Auto-generated method stub

	}

	@Override
	public void sendMessage() {
		// TODO Auto-generated method stub

	}

	@Override
	public void notifications() {
		// TODO Auto-generated method stub

	}

	@Override
	public void readNotifications() {
		// TODO Auto-generated method stub

	}

}
