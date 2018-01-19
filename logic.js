calculateHandicap (diffs) {
  total = diffs.length
  case (total <= 5)
    return diffs.order[0]
  case (total <= 20)
    topThree = diffs.order[0..2]
    return average of [0..2]
  default
    diffs = diffs[0..19].order
    return average of [0..5]

}
