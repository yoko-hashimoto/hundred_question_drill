# 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
police_car = "パトカー".chars
taxi = "タクシー".chars
concatenated_string = police_car.zip(taxi).flatten.join
p concatenated_string