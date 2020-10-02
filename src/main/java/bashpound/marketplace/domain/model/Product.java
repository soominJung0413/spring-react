package bashpound.marketplace.domain.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Product")
public class Product extends AbstractBaseEntity {

	private static final long serialVersionUID = 3185786274155685830L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(name = "ProdNumber")
	private String ProdNumber;
	@Column(name = "name")
	private String name;
	@Column(name = "thumbNail")
	private String thumbNail;
	@ManyToOne
	@JoinColumn(name = "Member_username")
	private Member seller;
	@Column(name = "regDate")
	private Date regDate;
	@Column(name = "stock")
	private int stock;
	@Column(name = "price")
	private String price;
	@Column(name = "option")
	private String option;
	@OneToMany(mappedBy = "product")
	private List<Purchase> purchases = new ArrayList<>();
	@OneToMany(mappedBy = "product")
	private List<Review> reviews = new ArrayList<>();

	@Override
	public String toString() {
		return "Product [id=" + id + ", ProdNumber=" + ProdNumber + ", name=" + name + ", thumbNail=" + thumbNail
				+ ", seller=" + seller + ", regDate=" + regDate + ", stock=" + stock + ", price=" + price + ", option="
				+ option + ", purchases=" + purchases + ", reviews=" + reviews + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object o) {
	    if (this == o) return true;
	    if (!(o instanceof Product)) return false;
	    Product o1 = (Product) o;
	    return Objects.equals(id, o1.id);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProdNumber() {
		return ProdNumber;
	}

	public void setProdNumber(String prodNumber) {
		ProdNumber = prodNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getThumbNail() {
		return thumbNail;
	}

	public void setThumbNail(String thumbNail) {
		this.thumbNail = thumbNail;
	}

	public Member getSeller() {
		return seller;
	}

	public void setSeller(Member seller) {
		this.seller = seller;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public List<Purchase> getPurchases() {
		return purchases;
	}

	public void setPurchases(List<Purchase> purchases) {
		this.purchases = purchases;
	}

	public List<Review> getReviews() {
		return reviews;
	}

	public void setReviews(List<Review> reviews) {
		this.reviews = reviews;
	}

}