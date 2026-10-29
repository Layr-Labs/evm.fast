import InitECandidate.Proofs.ClashStages713.Proof105
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree10176_agree : tree10176 = literal10176 := by
  rw [tree10176_def, tree10174_agree, tree10175_agree]
  rfl
theorem node10176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10176 live10176 coloured10176 = result10176 := by
  rw [tree10176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10174_eq
  unfold live10174 coloured10174 at child
  try dsimp only [live10176, coloured10176]
  rw [child]
  dsimp only [result10174]
  have child := node10175_eq
  unfold live10175 coloured10175 at child
  try dsimp only [live10176, coloured10176]
  rw [child]
  dsimp only [result10175]
  try dsimp only [colour, result10176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10177_agree : tree10177 = literal10177 := by
  rw [tree10177_def]
  rfl
theorem node10177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10177 live10177 coloured10177 = result10177 := by
  rw [tree10177_def]
  try dsimp only [colour, result10177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10178_agree : tree10178 = literal10178 := by
  rw [tree10178_def, tree10176_agree, tree10177_agree]
  rfl
theorem node10178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10178 live10178 coloured10178 = result10178 := by
  rw [tree10178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10176_eq
  unfold live10176 coloured10176 at child
  try dsimp only [live10178, coloured10178]
  rw [child]
  dsimp only [result10176]
  have child := node10177_eq
  unfold live10177 coloured10177 at child
  try dsimp only [live10178, coloured10178]
  rw [child]
  dsimp only [result10177]
  try dsimp only [colour, result10178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10179_agree : tree10179 = literal10179 := by
  rw [tree10179_def]
  rfl
theorem node10179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10179 live10179 coloured10179 = result10179 := by
  rw [tree10179_def]
  try dsimp only [colour, result10179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10180_agree : tree10180 = literal10180 := by
  rw [tree10180_def, tree10178_agree, tree10179_agree]
  rfl
theorem node10180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10180 live10180 coloured10180 = result10180 := by
  rw [tree10180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10178_eq
  unfold live10178 coloured10178 at child
  try dsimp only [live10180, coloured10180]
  rw [child]
  dsimp only [result10178]
  have child := node10179_eq
  unfold live10179 coloured10179 at child
  try dsimp only [live10180, coloured10180]
  rw [child]
  dsimp only [result10179]
  try dsimp only [colour, result10180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10181_agree : tree10181 = literal10181 := by
  rw [tree10181_def]
  rfl
theorem node10181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10181 live10181 coloured10181 = result10181 := by
  rw [tree10181_def]
  try dsimp only [colour, result10181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10182_agree : tree10182 = literal10182 := by
  rw [tree10182_def, tree10180_agree, tree10181_agree]
  rfl
theorem node10182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10182 live10182 coloured10182 = result10182 := by
  rw [tree10182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10180_eq
  unfold live10180 coloured10180 at child
  try dsimp only [live10182, coloured10182]
  rw [child]
  dsimp only [result10180]
  have child := node10181_eq
  unfold live10181 coloured10181 at child
  try dsimp only [live10182, coloured10182]
  rw [child]
  dsimp only [result10181]
  try dsimp only [colour, result10182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10183_agree : tree10183 = literal10183 := by
  rw [tree10183_def]
  rfl
theorem node10183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10183 live10183 coloured10183 = result10183 := by
  rw [tree10183_def]
  try dsimp only [colour, result10183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10184_agree : tree10184 = literal10184 := by
  rw [tree10184_def, tree10182_agree, tree10183_agree]
  rfl
theorem node10184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10184 live10184 coloured10184 = result10184 := by
  rw [tree10184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10182_eq
  unfold live10182 coloured10182 at child
  try dsimp only [live10184, coloured10184]
  rw [child]
  dsimp only [result10182]
  have child := node10183_eq
  unfold live10183 coloured10183 at child
  try dsimp only [live10184, coloured10184]
  rw [child]
  dsimp only [result10183]
  try dsimp only [colour, result10184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10185_agree : tree10185 = literal10185 := by
  rw [tree10185_def]
  rfl
theorem node10185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10185 live10185 coloured10185 = result10185 := by
  rw [tree10185_def]
  try dsimp only [colour, result10185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10186_agree : tree10186 = literal10186 := by
  rw [tree10186_def, tree10184_agree, tree10185_agree]
  rfl
theorem node10186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10186 live10186 coloured10186 = result10186 := by
  rw [tree10186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10184_eq
  unfold live10184 coloured10184 at child
  try dsimp only [live10186, coloured10186]
  rw [child]
  dsimp only [result10184]
  have child := node10185_eq
  unfold live10185 coloured10185 at child
  try dsimp only [live10186, coloured10186]
  rw [child]
  dsimp only [result10185]
  try dsimp only [colour, result10186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10187_agree : tree10187 = literal10187 := by
  rw [tree10187_def]
  rfl
theorem node10187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10187 live10187 coloured10187 = result10187 := by
  rw [tree10187_def]
  try dsimp only [colour, result10187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10188_agree : tree10188 = literal10188 := by
  rw [tree10188_def, tree10186_agree, tree10187_agree]
  rfl
theorem node10188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10188 live10188 coloured10188 = result10188 := by
  rw [tree10188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10186_eq
  unfold live10186 coloured10186 at child
  try dsimp only [live10188, coloured10188]
  rw [child]
  dsimp only [result10186]
  have child := node10187_eq
  unfold live10187 coloured10187 at child
  try dsimp only [live10188, coloured10188]
  rw [child]
  dsimp only [result10187]
  try dsimp only [colour, result10188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10189_agree : tree10189 = literal10189 := by
  rw [tree10189_def]
  rfl
theorem node10189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10189 live10189 coloured10189 = result10189 := by
  rw [tree10189_def]
  try dsimp only [colour, result10189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10190_agree : tree10190 = literal10190 := by
  rw [tree10190_def, tree10188_agree, tree10189_agree]
  rfl
theorem node10190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10190 live10190 coloured10190 = result10190 := by
  rw [tree10190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10188_eq
  unfold live10188 coloured10188 at child
  try dsimp only [live10190, coloured10190]
  rw [child]
  dsimp only [result10188]
  have child := node10189_eq
  unfold live10189 coloured10189 at child
  try dsimp only [live10190, coloured10190]
  rw [child]
  dsimp only [result10189]
  try dsimp only [colour, result10190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10191_agree : tree10191 = literal10191 := by
  rw [tree10191_def]
  rfl
theorem node10191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10191 live10191 coloured10191 = result10191 := by
  rw [tree10191_def]
  try dsimp only [colour, result10191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10192_agree : tree10192 = literal10192 := by
  rw [tree10192_def, tree10190_agree, tree10191_agree]
  rfl
theorem node10192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10192 live10192 coloured10192 = result10192 := by
  rw [tree10192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10190_eq
  unfold live10190 coloured10190 at child
  try dsimp only [live10192, coloured10192]
  rw [child]
  dsimp only [result10190]
  have child := node10191_eq
  unfold live10191 coloured10191 at child
  try dsimp only [live10192, coloured10192]
  rw [child]
  dsimp only [result10191]
  try dsimp only [colour, result10192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10193_agree : tree10193 = literal10193 := by
  rw [tree10193_def]
  rfl
theorem node10193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10193 live10193 coloured10193 = result10193 := by
  rw [tree10193_def]
  try dsimp only [colour, result10193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10194_agree : tree10194 = literal10194 := by
  rw [tree10194_def, tree10192_agree, tree10193_agree]
  rfl
theorem node10194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10194 live10194 coloured10194 = result10194 := by
  rw [tree10194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10192_eq
  unfold live10192 coloured10192 at child
  try dsimp only [live10194, coloured10194]
  rw [child]
  dsimp only [result10192]
  have child := node10193_eq
  unfold live10193 coloured10193 at child
  try dsimp only [live10194, coloured10194]
  rw [child]
  dsimp only [result10193]
  try dsimp only [colour, result10194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10195_agree : tree10195 = literal10195 := by
  rw [tree10195_def]
  rfl
theorem node10195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10195 live10195 coloured10195 = result10195 := by
  rw [tree10195_def]
  try dsimp only [colour, result10195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10196_agree : tree10196 = literal10196 := by
  rw [tree10196_def, tree10194_agree, tree10195_agree]
  rfl
theorem node10196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10196 live10196 coloured10196 = result10196 := by
  rw [tree10196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10194_eq
  unfold live10194 coloured10194 at child
  try dsimp only [live10196, coloured10196]
  rw [child]
  dsimp only [result10194]
  have child := node10195_eq
  unfold live10195 coloured10195 at child
  try dsimp only [live10196, coloured10196]
  rw [child]
  dsimp only [result10195]
  try dsimp only [colour, result10196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10197_agree : tree10197 = literal10197 := by
  rw [tree10197_def]
  rfl
theorem node10197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10197 live10197 coloured10197 = result10197 := by
  rw [tree10197_def]
  try dsimp only [colour, result10197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10198_agree : tree10198 = literal10198 := by
  rw [tree10198_def, tree10196_agree, tree10197_agree]
  rfl
theorem node10198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10198 live10198 coloured10198 = result10198 := by
  rw [tree10198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10196_eq
  unfold live10196 coloured10196 at child
  try dsimp only [live10198, coloured10198]
  rw [child]
  dsimp only [result10196]
  have child := node10197_eq
  unfold live10197 coloured10197 at child
  try dsimp only [live10198, coloured10198]
  rw [child]
  dsimp only [result10197]
  try dsimp only [colour, result10198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10199_agree : tree10199 = literal10199 := by
  rw [tree10199_def]
  rfl
theorem node10199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10199 live10199 coloured10199 = result10199 := by
  rw [tree10199_def]
  try dsimp only [colour, result10199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10200_agree : tree10200 = literal10200 := by
  rw [tree10200_def, tree10198_agree, tree10199_agree]
  rfl
theorem node10200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10200 live10200 coloured10200 = result10200 := by
  rw [tree10200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10198_eq
  unfold live10198 coloured10198 at child
  try dsimp only [live10200, coloured10200]
  rw [child]
  dsimp only [result10198]
  have child := node10199_eq
  unfold live10199 coloured10199 at child
  try dsimp only [live10200, coloured10200]
  rw [child]
  dsimp only [result10199]
  try dsimp only [colour, result10200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10201_agree : tree10201 = literal10201 := by
  rw [tree10201_def]
  rfl
theorem node10201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10201 live10201 coloured10201 = result10201 := by
  rw [tree10201_def]
  try dsimp only [colour, result10201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10202_agree : tree10202 = literal10202 := by
  rw [tree10202_def, tree10200_agree, tree10201_agree]
  rfl
theorem node10202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10202 live10202 coloured10202 = result10202 := by
  rw [tree10202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10200_eq
  unfold live10200 coloured10200 at child
  try dsimp only [live10202, coloured10202]
  rw [child]
  dsimp only [result10200]
  have child := node10201_eq
  unfold live10201 coloured10201 at child
  try dsimp only [live10202, coloured10202]
  rw [child]
  dsimp only [result10201]
  try dsimp only [colour, result10202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10203_agree : tree10203 = literal10203 := by
  rw [tree10203_def]
  rfl
theorem node10203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10203 live10203 coloured10203 = result10203 := by
  rw [tree10203_def]
  try dsimp only [colour, result10203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10204_agree : tree10204 = literal10204 := by
  rw [tree10204_def, tree10202_agree, tree10203_agree]
  rfl
theorem node10204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10204 live10204 coloured10204 = result10204 := by
  rw [tree10204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10202_eq
  unfold live10202 coloured10202 at child
  try dsimp only [live10204, coloured10204]
  rw [child]
  dsimp only [result10202]
  have child := node10203_eq
  unfold live10203 coloured10203 at child
  try dsimp only [live10204, coloured10204]
  rw [child]
  dsimp only [result10203]
  try dsimp only [colour, result10204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10205_agree : tree10205 = literal10205 := by
  rw [tree10205_def]
  rfl
theorem node10205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10205 live10205 coloured10205 = result10205 := by
  rw [tree10205_def]
  try dsimp only [colour, result10205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10206_agree : tree10206 = literal10206 := by
  rw [tree10206_def, tree10204_agree, tree10205_agree]
  rfl
theorem node10206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10206 live10206 coloured10206 = result10206 := by
  rw [tree10206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10204_eq
  unfold live10204 coloured10204 at child
  try dsimp only [live10206, coloured10206]
  rw [child]
  dsimp only [result10204]
  have child := node10205_eq
  unfold live10205 coloured10205 at child
  try dsimp only [live10206, coloured10206]
  rw [child]
  dsimp only [result10205]
  try dsimp only [colour, result10206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10207_agree : tree10207 = literal10207 := by
  rw [tree10207_def]
  rfl
theorem node10207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10207 live10207 coloured10207 = result10207 := by
  rw [tree10207_def]
  try dsimp only [colour, result10207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10208_agree : tree10208 = literal10208 := by
  rw [tree10208_def, tree10206_agree, tree10207_agree]
  rfl
theorem node10208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10208 live10208 coloured10208 = result10208 := by
  rw [tree10208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10206_eq
  unfold live10206 coloured10206 at child
  try dsimp only [live10208, coloured10208]
  rw [child]
  dsimp only [result10206]
  have child := node10207_eq
  unfold live10207 coloured10207 at child
  try dsimp only [live10208, coloured10208]
  rw [child]
  dsimp only [result10207]
  try dsimp only [colour, result10208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10209_agree : tree10209 = literal10209 := by
  rw [tree10209_def]
  rfl
theorem node10209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10209 live10209 coloured10209 = result10209 := by
  rw [tree10209_def]
  try dsimp only [colour, result10209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10210_agree : tree10210 = literal10210 := by
  rw [tree10210_def, tree10208_agree, tree10209_agree]
  rfl
theorem node10210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10210 live10210 coloured10210 = result10210 := by
  rw [tree10210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10208_eq
  unfold live10208 coloured10208 at child
  try dsimp only [live10210, coloured10210]
  rw [child]
  dsimp only [result10208]
  have child := node10209_eq
  unfold live10209 coloured10209 at child
  try dsimp only [live10210, coloured10210]
  rw [child]
  dsimp only [result10209]
  try dsimp only [colour, result10210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10211_agree : tree10211 = literal10211 := by
  rw [tree10211_def]
  rfl
theorem node10211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10211 live10211 coloured10211 = result10211 := by
  rw [tree10211_def]
  try dsimp only [colour, result10211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10212_agree : tree10212 = literal10212 := by
  rw [tree10212_def, tree10210_agree, tree10211_agree]
  rfl
theorem node10212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10212 live10212 coloured10212 = result10212 := by
  rw [tree10212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10210_eq
  unfold live10210 coloured10210 at child
  try dsimp only [live10212, coloured10212]
  rw [child]
  dsimp only [result10210]
  have child := node10211_eq
  unfold live10211 coloured10211 at child
  try dsimp only [live10212, coloured10212]
  rw [child]
  dsimp only [result10211]
  try dsimp only [colour, result10212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10213_agree : tree10213 = literal10213 := by
  rw [tree10213_def]
  rfl
theorem node10213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10213 live10213 coloured10213 = result10213 := by
  rw [tree10213_def]
  try dsimp only [colour, result10213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10214_agree : tree10214 = literal10214 := by
  rw [tree10214_def, tree10212_agree, tree10213_agree]
  rfl
theorem node10214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10214 live10214 coloured10214 = result10214 := by
  rw [tree10214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10212_eq
  unfold live10212 coloured10212 at child
  try dsimp only [live10214, coloured10214]
  rw [child]
  dsimp only [result10212]
  have child := node10213_eq
  unfold live10213 coloured10213 at child
  try dsimp only [live10214, coloured10214]
  rw [child]
  dsimp only [result10213]
  try dsimp only [colour, result10214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10215_agree : tree10215 = literal10215 := by
  rw [tree10215_def]
  rfl
theorem node10215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10215 live10215 coloured10215 = result10215 := by
  rw [tree10215_def]
  try dsimp only [colour, result10215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10216_agree : tree10216 = literal10216 := by
  rw [tree10216_def, tree10214_agree, tree10215_agree]
  rfl
theorem node10216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10216 live10216 coloured10216 = result10216 := by
  rw [tree10216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10214_eq
  unfold live10214 coloured10214 at child
  try dsimp only [live10216, coloured10216]
  rw [child]
  dsimp only [result10214]
  have child := node10215_eq
  unfold live10215 coloured10215 at child
  try dsimp only [live10216, coloured10216]
  rw [child]
  dsimp only [result10215]
  try dsimp only [colour, result10216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10217_agree : tree10217 = literal10217 := by
  rw [tree10217_def]
  rfl
theorem node10217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10217 live10217 coloured10217 = result10217 := by
  rw [tree10217_def]
  try dsimp only [colour, result10217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10218_agree : tree10218 = literal10218 := by
  rw [tree10218_def, tree10216_agree, tree10217_agree]
  rfl
theorem node10218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10218 live10218 coloured10218 = result10218 := by
  rw [tree10218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10216_eq
  unfold live10216 coloured10216 at child
  try dsimp only [live10218, coloured10218]
  rw [child]
  dsimp only [result10216]
  have child := node10217_eq
  unfold live10217 coloured10217 at child
  try dsimp only [live10218, coloured10218]
  rw [child]
  dsimp only [result10217]
  try dsimp only [colour, result10218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10219_agree : tree10219 = literal10219 := by
  rw [tree10219_def]
  rfl
theorem node10219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10219 live10219 coloured10219 = result10219 := by
  rw [tree10219_def]
  try dsimp only [colour, result10219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10220_agree : tree10220 = literal10220 := by
  rw [tree10220_def, tree10218_agree, tree10219_agree]
  rfl
theorem node10220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10220 live10220 coloured10220 = result10220 := by
  rw [tree10220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10218_eq
  unfold live10218 coloured10218 at child
  try dsimp only [live10220, coloured10220]
  rw [child]
  dsimp only [result10218]
  have child := node10219_eq
  unfold live10219 coloured10219 at child
  try dsimp only [live10220, coloured10220]
  rw [child]
  dsimp only [result10219]
  try dsimp only [colour, result10220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10221_agree : tree10221 = literal10221 := by
  rw [tree10221_def]
  rfl
theorem node10221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10221 live10221 coloured10221 = result10221 := by
  rw [tree10221_def]
  try dsimp only [colour, result10221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10222_agree : tree10222 = literal10222 := by
  rw [tree10222_def, tree10220_agree, tree10221_agree]
  rfl
theorem node10222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10222 live10222 coloured10222 = result10222 := by
  rw [tree10222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10220_eq
  unfold live10220 coloured10220 at child
  try dsimp only [live10222, coloured10222]
  rw [child]
  dsimp only [result10220]
  have child := node10221_eq
  unfold live10221 coloured10221 at child
  try dsimp only [live10222, coloured10222]
  rw [child]
  dsimp only [result10221]
  try dsimp only [colour, result10222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10223_agree : tree10223 = literal10223 := by
  rw [tree10223_def]
  rfl
theorem node10223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10223 live10223 coloured10223 = result10223 := by
  rw [tree10223_def]
  try dsimp only [colour, result10223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10224_agree : tree10224 = literal10224 := by
  rw [tree10224_def, tree10222_agree, tree10223_agree]
  rfl
theorem node10224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10224 live10224 coloured10224 = result10224 := by
  rw [tree10224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10222_eq
  unfold live10222 coloured10222 at child
  try dsimp only [live10224, coloured10224]
  rw [child]
  dsimp only [result10222]
  have child := node10223_eq
  unfold live10223 coloured10223 at child
  try dsimp only [live10224, coloured10224]
  rw [child]
  dsimp only [result10223]
  try dsimp only [colour, result10224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10225_agree : tree10225 = literal10225 := by
  rw [tree10225_def]
  rfl
theorem node10225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10225 live10225 coloured10225 = result10225 := by
  rw [tree10225_def]
  try dsimp only [colour, result10225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10226_agree : tree10226 = literal10226 := by
  rw [tree10226_def, tree10224_agree, tree10225_agree]
  rfl
theorem node10226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10226 live10226 coloured10226 = result10226 := by
  rw [tree10226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10224_eq
  unfold live10224 coloured10224 at child
  try dsimp only [live10226, coloured10226]
  rw [child]
  dsimp only [result10224]
  have child := node10225_eq
  unfold live10225 coloured10225 at child
  try dsimp only [live10226, coloured10226]
  rw [child]
  dsimp only [result10225]
  try dsimp only [colour, result10226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10227_agree : tree10227 = literal10227 := by
  rw [tree10227_def]
  rfl
theorem node10227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10227 live10227 coloured10227 = result10227 := by
  rw [tree10227_def]
  try dsimp only [colour, result10227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10228_agree : tree10228 = literal10228 := by
  rw [tree10228_def, tree10226_agree, tree10227_agree]
  rfl
theorem node10228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10228 live10228 coloured10228 = result10228 := by
  rw [tree10228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10226_eq
  unfold live10226 coloured10226 at child
  try dsimp only [live10228, coloured10228]
  rw [child]
  dsimp only [result10226]
  have child := node10227_eq
  unfold live10227 coloured10227 at child
  try dsimp only [live10228, coloured10228]
  rw [child]
  dsimp only [result10227]
  try dsimp only [colour, result10228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10229_agree : tree10229 = literal10229 := by
  rw [tree10229_def]
  rfl
theorem node10229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10229 live10229 coloured10229 = result10229 := by
  rw [tree10229_def]
  try dsimp only [colour, result10229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10230_agree : tree10230 = literal10230 := by
  rw [tree10230_def, tree10228_agree, tree10229_agree]
  rfl
theorem node10230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10230 live10230 coloured10230 = result10230 := by
  rw [tree10230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10228_eq
  unfold live10228 coloured10228 at child
  try dsimp only [live10230, coloured10230]
  rw [child]
  dsimp only [result10228]
  have child := node10229_eq
  unfold live10229 coloured10229 at child
  try dsimp only [live10230, coloured10230]
  rw [child]
  dsimp only [result10229]
  try dsimp only [colour, result10230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10231_agree : tree10231 = literal10231 := by
  rw [tree10231_def]
  rfl
theorem node10231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10231 live10231 coloured10231 = result10231 := by
  rw [tree10231_def]
  try dsimp only [colour, result10231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10232_agree : tree10232 = literal10232 := by
  rw [tree10232_def, tree10230_agree, tree10231_agree]
  rfl
theorem node10232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10232 live10232 coloured10232 = result10232 := by
  rw [tree10232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10230_eq
  unfold live10230 coloured10230 at child
  try dsimp only [live10232, coloured10232]
  rw [child]
  dsimp only [result10230]
  have child := node10231_eq
  unfold live10231 coloured10231 at child
  try dsimp only [live10232, coloured10232]
  rw [child]
  dsimp only [result10231]
  try dsimp only [colour, result10232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10233_agree : tree10233 = literal10233 := by
  rw [tree10233_def]
  rfl
theorem node10233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10233 live10233 coloured10233 = result10233 := by
  rw [tree10233_def]
  try dsimp only [colour, result10233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10234_agree : tree10234 = literal10234 := by
  rw [tree10234_def, tree10232_agree, tree10233_agree]
  rfl
theorem node10234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10234 live10234 coloured10234 = result10234 := by
  rw [tree10234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10232_eq
  unfold live10232 coloured10232 at child
  try dsimp only [live10234, coloured10234]
  rw [child]
  dsimp only [result10232]
  have child := node10233_eq
  unfold live10233 coloured10233 at child
  try dsimp only [live10234, coloured10234]
  rw [child]
  dsimp only [result10233]
  try dsimp only [colour, result10234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10235_agree : tree10235 = literal10235 := by
  rw [tree10235_def]
  rfl
theorem node10235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10235 live10235 coloured10235 = result10235 := by
  rw [tree10235_def]
  try dsimp only [colour, result10235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10236_agree : tree10236 = literal10236 := by
  rw [tree10236_def, tree10234_agree, tree10235_agree]
  rfl
theorem node10236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10236 live10236 coloured10236 = result10236 := by
  rw [tree10236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10234_eq
  unfold live10234 coloured10234 at child
  try dsimp only [live10236, coloured10236]
  rw [child]
  dsimp only [result10234]
  have child := node10235_eq
  unfold live10235 coloured10235 at child
  try dsimp only [live10236, coloured10236]
  rw [child]
  dsimp only [result10235]
  try dsimp only [colour, result10236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10237_agree : tree10237 = literal10237 := by
  rw [tree10237_def]
  rfl
theorem node10237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10237 live10237 coloured10237 = result10237 := by
  rw [tree10237_def]
  try dsimp only [colour, result10237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10238_agree : tree10238 = literal10238 := by
  rw [tree10238_def, tree10236_agree, tree10237_agree]
  rfl
theorem node10238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10238 live10238 coloured10238 = result10238 := by
  rw [tree10238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10236_eq
  unfold live10236 coloured10236 at child
  try dsimp only [live10238, coloured10238]
  rw [child]
  dsimp only [result10236]
  have child := node10237_eq
  unfold live10237 coloured10237 at child
  try dsimp only [live10238, coloured10238]
  rw [child]
  dsimp only [result10237]
  try dsimp only [colour, result10238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10239_agree : tree10239 = literal10239 := by
  rw [tree10239_def]
  rfl
theorem node10239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10239 live10239 coloured10239 = result10239 := by
  rw [tree10239_def]
  try dsimp only [colour, result10239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10240_agree : tree10240 = literal10240 := by
  rw [tree10240_def, tree10238_agree, tree10239_agree]
  rfl
theorem node10240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10240 live10240 coloured10240 = result10240 := by
  rw [tree10240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10238_eq
  unfold live10238 coloured10238 at child
  try dsimp only [live10240, coloured10240]
  rw [child]
  dsimp only [result10238]
  have child := node10239_eq
  unfold live10239 coloured10239 at child
  try dsimp only [live10240, coloured10240]
  rw [child]
  dsimp only [result10239]
  try dsimp only [colour, result10240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10241_agree : tree10241 = literal10241 := by
  rw [tree10241_def]
  rfl
theorem node10241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10241 live10241 coloured10241 = result10241 := by
  rw [tree10241_def]
  try dsimp only [colour, result10241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10242_agree : tree10242 = literal10242 := by
  rw [tree10242_def, tree10240_agree, tree10241_agree]
  rfl
theorem node10242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10242 live10242 coloured10242 = result10242 := by
  rw [tree10242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10240_eq
  unfold live10240 coloured10240 at child
  try dsimp only [live10242, coloured10242]
  rw [child]
  dsimp only [result10240]
  have child := node10241_eq
  unfold live10241 coloured10241 at child
  try dsimp only [live10242, coloured10242]
  rw [child]
  dsimp only [result10241]
  try dsimp only [colour, result10242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10243_agree : tree10243 = literal10243 := by
  rw [tree10243_def]
  rfl
theorem node10243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10243 live10243 coloured10243 = result10243 := by
  rw [tree10243_def]
  try dsimp only [colour, result10243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10244_agree : tree10244 = literal10244 := by
  rw [tree10244_def, tree10242_agree, tree10243_agree]
  rfl
theorem node10244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10244 live10244 coloured10244 = result10244 := by
  rw [tree10244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10242_eq
  unfold live10242 coloured10242 at child
  try dsimp only [live10244, coloured10244]
  rw [child]
  dsimp only [result10242]
  have child := node10243_eq
  unfold live10243 coloured10243 at child
  try dsimp only [live10244, coloured10244]
  rw [child]
  dsimp only [result10243]
  try dsimp only [colour, result10244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10245_agree : tree10245 = literal10245 := by
  rw [tree10245_def]
  rfl
theorem node10245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10245 live10245 coloured10245 = result10245 := by
  rw [tree10245_def]
  try dsimp only [colour, result10245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10246_agree : tree10246 = literal10246 := by
  rw [tree10246_def, tree10244_agree, tree10245_agree]
  rfl
theorem node10246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10246 live10246 coloured10246 = result10246 := by
  rw [tree10246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10244_eq
  unfold live10244 coloured10244 at child
  try dsimp only [live10246, coloured10246]
  rw [child]
  dsimp only [result10244]
  have child := node10245_eq
  unfold live10245 coloured10245 at child
  try dsimp only [live10246, coloured10246]
  rw [child]
  dsimp only [result10245]
  try dsimp only [colour, result10246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10247_agree : tree10247 = literal10247 := by
  rw [tree10247_def]
  rfl
theorem node10247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10247 live10247 coloured10247 = result10247 := by
  rw [tree10247_def]
  try dsimp only [colour, result10247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10248_agree : tree10248 = literal10248 := by
  rw [tree10248_def, tree10246_agree, tree10247_agree]
  rfl
theorem node10248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10248 live10248 coloured10248 = result10248 := by
  rw [tree10248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10246_eq
  unfold live10246 coloured10246 at child
  try dsimp only [live10248, coloured10248]
  rw [child]
  dsimp only [result10246]
  have child := node10247_eq
  unfold live10247 coloured10247 at child
  try dsimp only [live10248, coloured10248]
  rw [child]
  dsimp only [result10247]
  try dsimp only [colour, result10248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10249_agree : tree10249 = literal10249 := by
  rw [tree10249_def]
  rfl
theorem node10249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10249 live10249 coloured10249 = result10249 := by
  rw [tree10249_def]
  try dsimp only [colour, result10249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10250_agree : tree10250 = literal10250 := by
  rw [tree10250_def, tree10248_agree, tree10249_agree]
  rfl
theorem node10250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10250 live10250 coloured10250 = result10250 := by
  rw [tree10250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10248_eq
  unfold live10248 coloured10248 at child
  try dsimp only [live10250, coloured10250]
  rw [child]
  dsimp only [result10248]
  have child := node10249_eq
  unfold live10249 coloured10249 at child
  try dsimp only [live10250, coloured10250]
  rw [child]
  dsimp only [result10249]
  try dsimp only [colour, result10250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10251_agree : tree10251 = literal10251 := by
  rw [tree10251_def]
  rfl
theorem node10251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10251 live10251 coloured10251 = result10251 := by
  rw [tree10251_def]
  try dsimp only [colour, result10251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10252_agree : tree10252 = literal10252 := by
  rw [tree10252_def, tree10250_agree, tree10251_agree]
  rfl
theorem node10252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10252 live10252 coloured10252 = result10252 := by
  rw [tree10252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10250_eq
  unfold live10250 coloured10250 at child
  try dsimp only [live10252, coloured10252]
  rw [child]
  dsimp only [result10250]
  have child := node10251_eq
  unfold live10251 coloured10251 at child
  try dsimp only [live10252, coloured10252]
  rw [child]
  dsimp only [result10251]
  try dsimp only [colour, result10252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10253_agree : tree10253 = literal10253 := by
  rw [tree10253_def]
  rfl
theorem node10253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10253 live10253 coloured10253 = result10253 := by
  rw [tree10253_def]
  try dsimp only [colour, result10253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10254_agree : tree10254 = literal10254 := by
  rw [tree10254_def, tree10252_agree, tree10253_agree]
  rfl
theorem node10254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10254 live10254 coloured10254 = result10254 := by
  rw [tree10254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10252_eq
  unfold live10252 coloured10252 at child
  try dsimp only [live10254, coloured10254]
  rw [child]
  dsimp only [result10252]
  have child := node10253_eq
  unfold live10253 coloured10253 at child
  try dsimp only [live10254, coloured10254]
  rw [child]
  dsimp only [result10253]
  try dsimp only [colour, result10254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10255_agree : tree10255 = literal10255 := by
  rw [tree10255_def]
  rfl
theorem node10255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10255 live10255 coloured10255 = result10255 := by
  rw [tree10255_def]
  try dsimp only [colour, result10255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10256_agree : tree10256 = literal10256 := by
  rw [tree10256_def, tree10254_agree, tree10255_agree]
  rfl
theorem node10256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10256 live10256 coloured10256 = result10256 := by
  rw [tree10256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10254_eq
  unfold live10254 coloured10254 at child
  try dsimp only [live10256, coloured10256]
  rw [child]
  dsimp only [result10254]
  have child := node10255_eq
  unfold live10255 coloured10255 at child
  try dsimp only [live10256, coloured10256]
  rw [child]
  dsimp only [result10255]
  try dsimp only [colour, result10256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10257_agree : tree10257 = literal10257 := by
  rw [tree10257_def]
  rfl
theorem node10257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10257 live10257 coloured10257 = result10257 := by
  rw [tree10257_def]
  try dsimp only [colour, result10257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10258_agree : tree10258 = literal10258 := by
  rw [tree10258_def, tree10256_agree, tree10257_agree]
  rfl
theorem node10258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10258 live10258 coloured10258 = result10258 := by
  rw [tree10258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10256_eq
  unfold live10256 coloured10256 at child
  try dsimp only [live10258, coloured10258]
  rw [child]
  dsimp only [result10256]
  have child := node10257_eq
  unfold live10257 coloured10257 at child
  try dsimp only [live10258, coloured10258]
  rw [child]
  dsimp only [result10257]
  try dsimp only [colour, result10258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10259_agree : tree10259 = literal10259 := by
  rw [tree10259_def]
  rfl
theorem node10259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10259 live10259 coloured10259 = result10259 := by
  rw [tree10259_def]
  try dsimp only [colour, result10259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10260_agree : tree10260 = literal10260 := by
  rw [tree10260_def, tree10258_agree, tree10259_agree]
  rfl
theorem node10260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10260 live10260 coloured10260 = result10260 := by
  rw [tree10260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10258_eq
  unfold live10258 coloured10258 at child
  try dsimp only [live10260, coloured10260]
  rw [child]
  dsimp only [result10258]
  have child := node10259_eq
  unfold live10259 coloured10259 at child
  try dsimp only [live10260, coloured10260]
  rw [child]
  dsimp only [result10259]
  try dsimp only [colour, result10260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10261_agree : tree10261 = literal10261 := by
  rw [tree10261_def]
  rfl
theorem node10261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10261 live10261 coloured10261 = result10261 := by
  rw [tree10261_def]
  try dsimp only [colour, result10261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10262_agree : tree10262 = literal10262 := by
  rw [tree10262_def, tree10260_agree, tree10261_agree]
  rfl
theorem node10262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10262 live10262 coloured10262 = result10262 := by
  rw [tree10262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10260_eq
  unfold live10260 coloured10260 at child
  try dsimp only [live10262, coloured10262]
  rw [child]
  dsimp only [result10260]
  have child := node10261_eq
  unfold live10261 coloured10261 at child
  try dsimp only [live10262, coloured10262]
  rw [child]
  dsimp only [result10261]
  try dsimp only [colour, result10262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10263_agree : tree10263 = literal10263 := by
  rw [tree10263_def]
  rfl
theorem node10263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10263 live10263 coloured10263 = result10263 := by
  rw [tree10263_def]
  try dsimp only [colour, result10263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10264_agree : tree10264 = literal10264 := by
  rw [tree10264_def, tree10262_agree, tree10263_agree]
  rfl
theorem node10264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10264 live10264 coloured10264 = result10264 := by
  rw [tree10264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10262_eq
  unfold live10262 coloured10262 at child
  try dsimp only [live10264, coloured10264]
  rw [child]
  dsimp only [result10262]
  have child := node10263_eq
  unfold live10263 coloured10263 at child
  try dsimp only [live10264, coloured10264]
  rw [child]
  dsimp only [result10263]
  try dsimp only [colour, result10264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10265_agree : tree10265 = literal10265 := by
  rw [tree10265_def]
  rfl
theorem node10265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10265 live10265 coloured10265 = result10265 := by
  rw [tree10265_def]
  try dsimp only [colour, result10265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10266_agree : tree10266 = literal10266 := by
  rw [tree10266_def, tree10264_agree, tree10265_agree]
  rfl
theorem node10266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10266 live10266 coloured10266 = result10266 := by
  rw [tree10266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10264_eq
  unfold live10264 coloured10264 at child
  try dsimp only [live10266, coloured10266]
  rw [child]
  dsimp only [result10264]
  have child := node10265_eq
  unfold live10265 coloured10265 at child
  try dsimp only [live10266, coloured10266]
  rw [child]
  dsimp only [result10265]
  try dsimp only [colour, result10266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10267_agree : tree10267 = literal10267 := by
  rw [tree10267_def]
  rfl
theorem node10267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10267 live10267 coloured10267 = result10267 := by
  rw [tree10267_def]
  try dsimp only [colour, result10267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10268_agree : tree10268 = literal10268 := by
  rw [tree10268_def, tree10266_agree, tree10267_agree]
  rfl
theorem node10268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10268 live10268 coloured10268 = result10268 := by
  rw [tree10268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10266_eq
  unfold live10266 coloured10266 at child
  try dsimp only [live10268, coloured10268]
  rw [child]
  dsimp only [result10266]
  have child := node10267_eq
  unfold live10267 coloured10267 at child
  try dsimp only [live10268, coloured10268]
  rw [child]
  dsimp only [result10267]
  try dsimp only [colour, result10268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10269_agree : tree10269 = literal10269 := by
  rw [tree10269_def]
  rfl
theorem node10269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10269 live10269 coloured10269 = result10269 := by
  rw [tree10269_def]
  try dsimp only [colour, result10269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10270_agree : tree10270 = literal10270 := by
  rw [tree10270_def, tree10268_agree, tree10269_agree]
  rfl
theorem node10270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10270 live10270 coloured10270 = result10270 := by
  rw [tree10270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10268_eq
  unfold live10268 coloured10268 at child
  try dsimp only [live10270, coloured10270]
  rw [child]
  dsimp only [result10268]
  have child := node10269_eq
  unfold live10269 coloured10269 at child
  try dsimp only [live10270, coloured10270]
  rw [child]
  dsimp only [result10269]
  try dsimp only [colour, result10270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10271_agree : tree10271 = literal10271 := by
  rw [tree10271_def]
  rfl
theorem node10271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10271 live10271 coloured10271 = result10271 := by
  rw [tree10271_def]
  try dsimp only [colour, result10271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
