package buytrip.mvc.model.deal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import buytrip.mvc.model.deal.dao.DealDAO;
import buytrip.mvc.model.dto.OfferDTO;
import buytrip.mvc.model.dto.OfferJoinProductDTO;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class DealServiceImpl implements DealService {

	@Autowired
	private DealDAO dealDao;
	
	@Override
	public void offerDeal(OfferDTO offer) {
		if(dealDao.offerDeal(offer)==0 || dealDao.updateProductStateToInDeal(offer)==0)
			throw new RuntimeException("��� ��û ����");
		else
			System.out.println("����");
	}

	@Override
	public void deleteDeal(String offerCode) {
		//product ��� ��û�� ��� �� count
		//��� ���� ���� product ���� ������Ʈ
		if(dealDao.countDeal(offerCode)<2)
			if(dealDao.updateProductStateToNoOffer(offerCode)==0)
				throw new RuntimeException("���� ����, ������Ʈ ����");
		//����
		if(dealDao.deleteDeal(offerCode)==0)
			throw new RuntimeException("���� ����");
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

	@Override
	public List<OfferJoinProductDTO> readDeals(String offerId) {
		return dealDao.readDeals(offerId);
	}

}
