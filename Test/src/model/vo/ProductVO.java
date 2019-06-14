package model.vo;

public class ProductVO {
  private int n1Cnt;
  private int n2Cnt;
  private int n3Cnt;


  public ProductVO(){
    this.n1Cnt = 0; //누적을 위해 초기치를 줘버린다
    this.n2Cnt = 0;
    this.n3Cnt = 0;
  }
  public ProductVO(int n1, int n2, int n3)
  {
    this.n1Cnt = n1;
    this.n2Cnt = n2;
    this.n3Cnt = n3;
  }
  public void setN1(int n1)
  {
    this.n1Cnt=n1;
  }
  public int getN1()
  {
    return this.n1Cnt;
  }

  public void setN2(int n2)
  {
    this.n2Cnt=n2;
  }
  public int getN2()
  {
    return this.n2Cnt;
  }

  public void setN3(int n3)
  {
    this.n3Cnt=n3;
  }
  public int getN3()
  {
    return this.n3Cnt;
  }


}
