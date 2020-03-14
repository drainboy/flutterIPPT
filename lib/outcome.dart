String outcome(int totalPoints){
  if (totalPoints < 61) return "Pass";
  else if (totalPoints < 75) return "Pass with incentive";
  else if (totalPoints < 85) return "Silver";
  else return "Gold";
}