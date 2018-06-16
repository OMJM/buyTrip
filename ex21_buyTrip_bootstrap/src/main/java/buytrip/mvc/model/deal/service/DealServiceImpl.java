package buytrip.mvc.model.deal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import buytrip.mvc.model.deal.dao.DealDAO;
import buytrip.mvc.model.dto.OfferDTO;

@Service
public class DealServiceImpl implements DealService {

	@Autowired
	private DealDAO dealDao;
	
	@Override
	public void offerDeal(OfferDTO offer) {
		System.out.println(offer.getOfferCode());
		if(dealDao.offerDeal(offer)==0)
			System.out.println("실패");
		else
			System.out.println("성공");
	}

	@Override
	public void deleteDeal() {
		// TODO Auto-generated method stub

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
