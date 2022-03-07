package kr.co.fpj.bbsvo;

public class ElseVO {
	int seq;
	String day;
	String time1;
	String team1;
	String team2;
	String time2;
	String team3;
	String team4;
	public ElseVO(int seq, String day, String time1, String team1, String team2, String time2, String team3,
			String team4) {
		this.seq = seq;
		this.day = day;
		this.time1 = time1;
		this.team1 = team1;
		this.team2 = team2;
		this.time2 = time2;
		this.team3 = team3;
		this.team4 = team4;
	}
	@Override
	public String toString() {
		return "ElseVO [seq=" + seq + ", day=" + day + ", time1=" + time1 + ", team1=" + team1 + ", team2=" + team2
				+ ", time2=" + time2 + ", team3=" + team3 + ", team4=" + team4 + "]";
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTime1() {
		return time1;
	}
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String getTeam1() {
		return team1;
	}
	public void setTeam1(String team1) {
		this.team1 = team1;
	}
	public String getTeam2() {
		return team2;
	}
	public void setTeam2(String team2) {
		this.team2 = team2;
	}
	public String getTime2() {
		return time2;
	}
	public void setTime2(String time2) {
		this.time2 = time2;
	}
	public String getTeam3() {
		return team3;
	}
	public void setTeam3(String team3) {
		this.team3 = team3;
	}
	public String getTeam4() {
		return team4;
	}
	public void setTeam4(String team4) {
		this.team4 = team4;
	}
	
}
