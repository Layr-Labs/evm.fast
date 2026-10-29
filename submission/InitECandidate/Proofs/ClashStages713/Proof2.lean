import InitECandidate.Proofs.ClashStages713.Proof1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree192_agree : tree192 = literal192 := by
  rw [tree192_def, tree190_agree, tree191_agree]
  rfl
theorem node192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree192 live192 coloured192 = result192 := by
  rw [tree192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node190_eq
  unfold live190 coloured190 at child
  try dsimp only [live192, coloured192]
  rw [child]
  dsimp only [result190]
  have child := node191_eq
  unfold live191 coloured191 at child
  try dsimp only [live192, coloured192]
  rw [child]
  dsimp only [result191]
  try dsimp only [colour, result192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree193_agree : tree193 = literal193 := by
  rw [tree193_def]
  rfl
theorem node193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree193 live193 coloured193 = result193 := by
  rw [tree193_def]
  try dsimp only [colour, result193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree194_agree : tree194 = literal194 := by
  rw [tree194_def, tree192_agree, tree193_agree]
  rfl
theorem node194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree194 live194 coloured194 = result194 := by
  rw [tree194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node192_eq
  unfold live192 coloured192 at child
  try dsimp only [live194, coloured194]
  rw [child]
  dsimp only [result192]
  have child := node193_eq
  unfold live193 coloured193 at child
  try dsimp only [live194, coloured194]
  rw [child]
  dsimp only [result193]
  try dsimp only [colour, result194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree195_agree : tree195 = literal195 := by
  rw [tree195_def]
  rfl
theorem node195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree195 live195 coloured195 = result195 := by
  rw [tree195_def]
  try dsimp only [colour, result195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree196_agree : tree196 = literal196 := by
  rw [tree196_def, tree194_agree, tree195_agree]
  rfl
theorem node196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree196 live196 coloured196 = result196 := by
  rw [tree196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node194_eq
  unfold live194 coloured194 at child
  try dsimp only [live196, coloured196]
  rw [child]
  dsimp only [result194]
  have child := node195_eq
  unfold live195 coloured195 at child
  try dsimp only [live196, coloured196]
  rw [child]
  dsimp only [result195]
  try dsimp only [colour, result196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree197_agree : tree197 = literal197 := by
  rw [tree197_def]
  rfl
theorem node197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree197 live197 coloured197 = result197 := by
  rw [tree197_def]
  try dsimp only [colour, result197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree198_agree : tree198 = literal198 := by
  rw [tree198_def, tree196_agree, tree197_agree]
  rfl
theorem node198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree198 live198 coloured198 = result198 := by
  rw [tree198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node196_eq
  unfold live196 coloured196 at child
  try dsimp only [live198, coloured198]
  rw [child]
  dsimp only [result196]
  have child := node197_eq
  unfold live197 coloured197 at child
  try dsimp only [live198, coloured198]
  rw [child]
  dsimp only [result197]
  try dsimp only [colour, result198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree199_agree : tree199 = literal199 := by
  rw [tree199_def]
  rfl
theorem node199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree199 live199 coloured199 = result199 := by
  rw [tree199_def]
  try dsimp only [colour, result199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree200_agree : tree200 = literal200 := by
  rw [tree200_def, tree198_agree, tree199_agree]
  rfl
theorem node200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree200 live200 coloured200 = result200 := by
  rw [tree200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node198_eq
  unfold live198 coloured198 at child
  try dsimp only [live200, coloured200]
  rw [child]
  dsimp only [result198]
  have child := node199_eq
  unfold live199 coloured199 at child
  try dsimp only [live200, coloured200]
  rw [child]
  dsimp only [result199]
  try dsimp only [colour, result200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree201_agree : tree201 = literal201 := by
  rw [tree201_def]
  rfl
theorem node201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree201 live201 coloured201 = result201 := by
  rw [tree201_def]
  try dsimp only [colour, result201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree202_agree : tree202 = literal202 := by
  rw [tree202_def, tree200_agree, tree201_agree]
  rfl
theorem node202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree202 live202 coloured202 = result202 := by
  rw [tree202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node200_eq
  unfold live200 coloured200 at child
  try dsimp only [live202, coloured202]
  rw [child]
  dsimp only [result200]
  have child := node201_eq
  unfold live201 coloured201 at child
  try dsimp only [live202, coloured202]
  rw [child]
  dsimp only [result201]
  try dsimp only [colour, result202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree203_agree : tree203 = literal203 := by
  rw [tree203_def]
  rfl
theorem node203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree203 live203 coloured203 = result203 := by
  rw [tree203_def]
  try dsimp only [colour, result203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree204_agree : tree204 = literal204 := by
  rw [tree204_def, tree202_agree, tree203_agree]
  rfl
theorem node204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree204 live204 coloured204 = result204 := by
  rw [tree204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node202_eq
  unfold live202 coloured202 at child
  try dsimp only [live204, coloured204]
  rw [child]
  dsimp only [result202]
  have child := node203_eq
  unfold live203 coloured203 at child
  try dsimp only [live204, coloured204]
  rw [child]
  dsimp only [result203]
  try dsimp only [colour, result204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree205_agree : tree205 = literal205 := by
  rw [tree205_def]
  rfl
theorem node205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree205 live205 coloured205 = result205 := by
  rw [tree205_def]
  try dsimp only [colour, result205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree206_agree : tree206 = literal206 := by
  rw [tree206_def, tree204_agree, tree205_agree]
  rfl
theorem node206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree206 live206 coloured206 = result206 := by
  rw [tree206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node204_eq
  unfold live204 coloured204 at child
  try dsimp only [live206, coloured206]
  rw [child]
  dsimp only [result204]
  have child := node205_eq
  unfold live205 coloured205 at child
  try dsimp only [live206, coloured206]
  rw [child]
  dsimp only [result205]
  try dsimp only [colour, result206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree207_agree : tree207 = literal207 := by
  rw [tree207_def]
  rfl
theorem node207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree207 live207 coloured207 = result207 := by
  rw [tree207_def]
  try dsimp only [colour, result207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree208_agree : tree208 = literal208 := by
  rw [tree208_def, tree206_agree, tree207_agree]
  rfl
theorem node208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree208 live208 coloured208 = result208 := by
  rw [tree208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node206_eq
  unfold live206 coloured206 at child
  try dsimp only [live208, coloured208]
  rw [child]
  dsimp only [result206]
  have child := node207_eq
  unfold live207 coloured207 at child
  try dsimp only [live208, coloured208]
  rw [child]
  dsimp only [result207]
  try dsimp only [colour, result208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree209_agree : tree209 = literal209 := by
  rw [tree209_def]
  rfl
theorem node209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree209 live209 coloured209 = result209 := by
  rw [tree209_def]
  try dsimp only [colour, result209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree210_agree : tree210 = literal210 := by
  rw [tree210_def, tree208_agree, tree209_agree]
  rfl
theorem node210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree210 live210 coloured210 = result210 := by
  rw [tree210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node208_eq
  unfold live208 coloured208 at child
  try dsimp only [live210, coloured210]
  rw [child]
  dsimp only [result208]
  have child := node209_eq
  unfold live209 coloured209 at child
  try dsimp only [live210, coloured210]
  rw [child]
  dsimp only [result209]
  try dsimp only [colour, result210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree211_agree : tree211 = literal211 := by
  rw [tree211_def]
  rfl
theorem node211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree211 live211 coloured211 = result211 := by
  rw [tree211_def]
  try dsimp only [colour, result211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree212_agree : tree212 = literal212 := by
  rw [tree212_def, tree210_agree, tree211_agree]
  rfl
theorem node212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree212 live212 coloured212 = result212 := by
  rw [tree212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node210_eq
  unfold live210 coloured210 at child
  try dsimp only [live212, coloured212]
  rw [child]
  dsimp only [result210]
  have child := node211_eq
  unfold live211 coloured211 at child
  try dsimp only [live212, coloured212]
  rw [child]
  dsimp only [result211]
  try dsimp only [colour, result212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree213_agree : tree213 = literal213 := by
  rw [tree213_def]
  rfl
theorem node213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree213 live213 coloured213 = result213 := by
  rw [tree213_def]
  try dsimp only [colour, result213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree214_agree : tree214 = literal214 := by
  rw [tree214_def, tree212_agree, tree213_agree]
  rfl
theorem node214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree214 live214 coloured214 = result214 := by
  rw [tree214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node212_eq
  unfold live212 coloured212 at child
  try dsimp only [live214, coloured214]
  rw [child]
  dsimp only [result212]
  have child := node213_eq
  unfold live213 coloured213 at child
  try dsimp only [live214, coloured214]
  rw [child]
  dsimp only [result213]
  try dsimp only [colour, result214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree215_agree : tree215 = literal215 := by
  rw [tree215_def]
  rfl
theorem node215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree215 live215 coloured215 = result215 := by
  rw [tree215_def]
  try dsimp only [colour, result215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree216_agree : tree216 = literal216 := by
  rw [tree216_def, tree214_agree, tree215_agree]
  rfl
theorem node216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree216 live216 coloured216 = result216 := by
  rw [tree216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node214_eq
  unfold live214 coloured214 at child
  try dsimp only [live216, coloured216]
  rw [child]
  dsimp only [result214]
  have child := node215_eq
  unfold live215 coloured215 at child
  try dsimp only [live216, coloured216]
  rw [child]
  dsimp only [result215]
  try dsimp only [colour, result216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree217_agree : tree217 = literal217 := by
  rw [tree217_def]
  rfl
theorem node217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree217 live217 coloured217 = result217 := by
  rw [tree217_def]
  try dsimp only [colour, result217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree218_agree : tree218 = literal218 := by
  rw [tree218_def, tree216_agree, tree217_agree]
  rfl
theorem node218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree218 live218 coloured218 = result218 := by
  rw [tree218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node216_eq
  unfold live216 coloured216 at child
  try dsimp only [live218, coloured218]
  rw [child]
  dsimp only [result216]
  have child := node217_eq
  unfold live217 coloured217 at child
  try dsimp only [live218, coloured218]
  rw [child]
  dsimp only [result217]
  try dsimp only [colour, result218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree219_agree : tree219 = literal219 := by
  rw [tree219_def]
  rfl
theorem node219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree219 live219 coloured219 = result219 := by
  rw [tree219_def]
  try dsimp only [colour, result219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree220_agree : tree220 = literal220 := by
  rw [tree220_def, tree218_agree, tree219_agree]
  rfl
theorem node220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree220 live220 coloured220 = result220 := by
  rw [tree220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node218_eq
  unfold live218 coloured218 at child
  try dsimp only [live220, coloured220]
  rw [child]
  dsimp only [result218]
  have child := node219_eq
  unfold live219 coloured219 at child
  try dsimp only [live220, coloured220]
  rw [child]
  dsimp only [result219]
  try dsimp only [colour, result220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree221_agree : tree221 = literal221 := by
  rw [tree221_def]
  rfl
theorem node221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree221 live221 coloured221 = result221 := by
  rw [tree221_def]
  try dsimp only [colour, result221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree222_agree : tree222 = literal222 := by
  rw [tree222_def, tree220_agree, tree221_agree]
  rfl
theorem node222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree222 live222 coloured222 = result222 := by
  rw [tree222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node220_eq
  unfold live220 coloured220 at child
  try dsimp only [live222, coloured222]
  rw [child]
  dsimp only [result220]
  have child := node221_eq
  unfold live221 coloured221 at child
  try dsimp only [live222, coloured222]
  rw [child]
  dsimp only [result221]
  try dsimp only [colour, result222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree223_agree : tree223 = literal223 := by
  rw [tree223_def]
  rfl
theorem node223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree223 live223 coloured223 = result223 := by
  rw [tree223_def]
  try dsimp only [colour, result223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree224_agree : tree224 = literal224 := by
  rw [tree224_def, tree222_agree, tree223_agree]
  rfl
theorem node224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree224 live224 coloured224 = result224 := by
  rw [tree224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node222_eq
  unfold live222 coloured222 at child
  try dsimp only [live224, coloured224]
  rw [child]
  dsimp only [result222]
  have child := node223_eq
  unfold live223 coloured223 at child
  try dsimp only [live224, coloured224]
  rw [child]
  dsimp only [result223]
  try dsimp only [colour, result224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree225_agree : tree225 = literal225 := by
  rw [tree225_def]
  rfl
theorem node225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree225 live225 coloured225 = result225 := by
  rw [tree225_def]
  try dsimp only [colour, result225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree226_agree : tree226 = literal226 := by
  rw [tree226_def, tree224_agree, tree225_agree]
  rfl
theorem node226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree226 live226 coloured226 = result226 := by
  rw [tree226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node224_eq
  unfold live224 coloured224 at child
  try dsimp only [live226, coloured226]
  rw [child]
  dsimp only [result224]
  have child := node225_eq
  unfold live225 coloured225 at child
  try dsimp only [live226, coloured226]
  rw [child]
  dsimp only [result225]
  try dsimp only [colour, result226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree227_agree : tree227 = literal227 := by
  rw [tree227_def]
  rfl
theorem node227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree227 live227 coloured227 = result227 := by
  rw [tree227_def]
  try dsimp only [colour, result227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree228_agree : tree228 = literal228 := by
  rw [tree228_def, tree226_agree, tree227_agree]
  rfl
theorem node228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree228 live228 coloured228 = result228 := by
  rw [tree228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node226_eq
  unfold live226 coloured226 at child
  try dsimp only [live228, coloured228]
  rw [child]
  dsimp only [result226]
  have child := node227_eq
  unfold live227 coloured227 at child
  try dsimp only [live228, coloured228]
  rw [child]
  dsimp only [result227]
  try dsimp only [colour, result228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree229_agree : tree229 = literal229 := by
  rw [tree229_def]
  rfl
theorem node229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree229 live229 coloured229 = result229 := by
  rw [tree229_def]
  try dsimp only [colour, result229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree230_agree : tree230 = literal230 := by
  rw [tree230_def, tree228_agree, tree229_agree]
  rfl
theorem node230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree230 live230 coloured230 = result230 := by
  rw [tree230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node228_eq
  unfold live228 coloured228 at child
  try dsimp only [live230, coloured230]
  rw [child]
  dsimp only [result228]
  have child := node229_eq
  unfold live229 coloured229 at child
  try dsimp only [live230, coloured230]
  rw [child]
  dsimp only [result229]
  try dsimp only [colour, result230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree231_agree : tree231 = literal231 := by
  rw [tree231_def]
  rfl
theorem node231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree231 live231 coloured231 = result231 := by
  rw [tree231_def]
  try dsimp only [colour, result231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree232_agree : tree232 = literal232 := by
  rw [tree232_def, tree230_agree, tree231_agree]
  rfl
theorem node232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree232 live232 coloured232 = result232 := by
  rw [tree232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node230_eq
  unfold live230 coloured230 at child
  try dsimp only [live232, coloured232]
  rw [child]
  dsimp only [result230]
  have child := node231_eq
  unfold live231 coloured231 at child
  try dsimp only [live232, coloured232]
  rw [child]
  dsimp only [result231]
  try dsimp only [colour, result232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree233_agree : tree233 = literal233 := by
  rw [tree233_def]
  rfl
theorem node233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree233 live233 coloured233 = result233 := by
  rw [tree233_def]
  try dsimp only [colour, result233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree234_agree : tree234 = literal234 := by
  rw [tree234_def, tree232_agree, tree233_agree]
  rfl
theorem node234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree234 live234 coloured234 = result234 := by
  rw [tree234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node232_eq
  unfold live232 coloured232 at child
  try dsimp only [live234, coloured234]
  rw [child]
  dsimp only [result232]
  have child := node233_eq
  unfold live233 coloured233 at child
  try dsimp only [live234, coloured234]
  rw [child]
  dsimp only [result233]
  try dsimp only [colour, result234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree235_agree : tree235 = literal235 := by
  rw [tree235_def]
  rfl
theorem node235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree235 live235 coloured235 = result235 := by
  rw [tree235_def]
  try dsimp only [colour, result235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree236_agree : tree236 = literal236 := by
  rw [tree236_def, tree234_agree, tree235_agree]
  rfl
theorem node236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree236 live236 coloured236 = result236 := by
  rw [tree236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node234_eq
  unfold live234 coloured234 at child
  try dsimp only [live236, coloured236]
  rw [child]
  dsimp only [result234]
  have child := node235_eq
  unfold live235 coloured235 at child
  try dsimp only [live236, coloured236]
  rw [child]
  dsimp only [result235]
  try dsimp only [colour, result236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree237_agree : tree237 = literal237 := by
  rw [tree237_def]
  rfl
theorem node237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree237 live237 coloured237 = result237 := by
  rw [tree237_def]
  try dsimp only [colour, result237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree238_agree : tree238 = literal238 := by
  rw [tree238_def, tree236_agree, tree237_agree]
  rfl
theorem node238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree238 live238 coloured238 = result238 := by
  rw [tree238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node236_eq
  unfold live236 coloured236 at child
  try dsimp only [live238, coloured238]
  rw [child]
  dsimp only [result236]
  have child := node237_eq
  unfold live237 coloured237 at child
  try dsimp only [live238, coloured238]
  rw [child]
  dsimp only [result237]
  try dsimp only [colour, result238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree239_agree : tree239 = literal239 := by
  rw [tree239_def]
  rfl
theorem node239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree239 live239 coloured239 = result239 := by
  rw [tree239_def]
  try dsimp only [colour, result239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree240_agree : tree240 = literal240 := by
  rw [tree240_def, tree238_agree, tree239_agree]
  rfl
theorem node240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree240 live240 coloured240 = result240 := by
  rw [tree240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node238_eq
  unfold live238 coloured238 at child
  try dsimp only [live240, coloured240]
  rw [child]
  dsimp only [result238]
  have child := node239_eq
  unfold live239 coloured239 at child
  try dsimp only [live240, coloured240]
  rw [child]
  dsimp only [result239]
  try dsimp only [colour, result240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree241_agree : tree241 = literal241 := by
  rw [tree241_def]
  rfl
theorem node241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree241 live241 coloured241 = result241 := by
  rw [tree241_def]
  try dsimp only [colour, result241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree242_agree : tree242 = literal242 := by
  rw [tree242_def, tree240_agree, tree241_agree]
  rfl
theorem node242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree242 live242 coloured242 = result242 := by
  rw [tree242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node240_eq
  unfold live240 coloured240 at child
  try dsimp only [live242, coloured242]
  rw [child]
  dsimp only [result240]
  have child := node241_eq
  unfold live241 coloured241 at child
  try dsimp only [live242, coloured242]
  rw [child]
  dsimp only [result241]
  try dsimp only [colour, result242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree243_agree : tree243 = literal243 := by
  rw [tree243_def]
  rfl
theorem node243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree243 live243 coloured243 = result243 := by
  rw [tree243_def]
  try dsimp only [colour, result243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree244_agree : tree244 = literal244 := by
  rw [tree244_def, tree242_agree, tree243_agree]
  rfl
theorem node244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree244 live244 coloured244 = result244 := by
  rw [tree244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node242_eq
  unfold live242 coloured242 at child
  try dsimp only [live244, coloured244]
  rw [child]
  dsimp only [result242]
  have child := node243_eq
  unfold live243 coloured243 at child
  try dsimp only [live244, coloured244]
  rw [child]
  dsimp only [result243]
  try dsimp only [colour, result244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree245_agree : tree245 = literal245 := by
  rw [tree245_def]
  rfl
theorem node245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree245 live245 coloured245 = result245 := by
  rw [tree245_def]
  try dsimp only [colour, result245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree246_agree : tree246 = literal246 := by
  rw [tree246_def, tree244_agree, tree245_agree]
  rfl
theorem node246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree246 live246 coloured246 = result246 := by
  rw [tree246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node244_eq
  unfold live244 coloured244 at child
  try dsimp only [live246, coloured246]
  rw [child]
  dsimp only [result244]
  have child := node245_eq
  unfold live245 coloured245 at child
  try dsimp only [live246, coloured246]
  rw [child]
  dsimp only [result245]
  try dsimp only [colour, result246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree247_agree : tree247 = literal247 := by
  rw [tree247_def]
  rfl
theorem node247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree247 live247 coloured247 = result247 := by
  rw [tree247_def]
  try dsimp only [colour, result247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree248_agree : tree248 = literal248 := by
  rw [tree248_def, tree246_agree, tree247_agree]
  rfl
theorem node248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree248 live248 coloured248 = result248 := by
  rw [tree248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node246_eq
  unfold live246 coloured246 at child
  try dsimp only [live248, coloured248]
  rw [child]
  dsimp only [result246]
  have child := node247_eq
  unfold live247 coloured247 at child
  try dsimp only [live248, coloured248]
  rw [child]
  dsimp only [result247]
  try dsimp only [colour, result248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree249_agree : tree249 = literal249 := by
  rw [tree249_def]
  rfl
theorem node249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree249 live249 coloured249 = result249 := by
  rw [tree249_def]
  try dsimp only [colour, result249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree250_agree : tree250 = literal250 := by
  rw [tree250_def, tree248_agree, tree249_agree]
  rfl
theorem node250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree250 live250 coloured250 = result250 := by
  rw [tree250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node248_eq
  unfold live248 coloured248 at child
  try dsimp only [live250, coloured250]
  rw [child]
  dsimp only [result248]
  have child := node249_eq
  unfold live249 coloured249 at child
  try dsimp only [live250, coloured250]
  rw [child]
  dsimp only [result249]
  try dsimp only [colour, result250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree251_agree : tree251 = literal251 := by
  rw [tree251_def]
  rfl
theorem node251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree251 live251 coloured251 = result251 := by
  rw [tree251_def]
  try dsimp only [colour, result251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree252_agree : tree252 = literal252 := by
  rw [tree252_def, tree250_agree, tree251_agree]
  rfl
theorem node252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree252 live252 coloured252 = result252 := by
  rw [tree252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node250_eq
  unfold live250 coloured250 at child
  try dsimp only [live252, coloured252]
  rw [child]
  dsimp only [result250]
  have child := node251_eq
  unfold live251 coloured251 at child
  try dsimp only [live252, coloured252]
  rw [child]
  dsimp only [result251]
  try dsimp only [colour, result252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree253_agree : tree253 = literal253 := by
  rw [tree253_def]
  rfl
theorem node253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree253 live253 coloured253 = result253 := by
  rw [tree253_def]
  try dsimp only [colour, result253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree254_agree : tree254 = literal254 := by
  rw [tree254_def, tree252_agree, tree253_agree]
  rfl
theorem node254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree254 live254 coloured254 = result254 := by
  rw [tree254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node252_eq
  unfold live252 coloured252 at child
  try dsimp only [live254, coloured254]
  rw [child]
  dsimp only [result252]
  have child := node253_eq
  unfold live253 coloured253 at child
  try dsimp only [live254, coloured254]
  rw [child]
  dsimp only [result253]
  try dsimp only [colour, result254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree255_agree : tree255 = literal255 := by
  rw [tree255_def]
  rfl
theorem node255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree255 live255 coloured255 = result255 := by
  rw [tree255_def]
  try dsimp only [colour, result255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree256_agree : tree256 = literal256 := by
  rw [tree256_def, tree254_agree, tree255_agree]
  rfl
theorem node256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree256 live256 coloured256 = result256 := by
  rw [tree256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node254_eq
  unfold live254 coloured254 at child
  try dsimp only [live256, coloured256]
  rw [child]
  dsimp only [result254]
  have child := node255_eq
  unfold live255 coloured255 at child
  try dsimp only [live256, coloured256]
  rw [child]
  dsimp only [result255]
  try dsimp only [colour, result256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree257_agree : tree257 = literal257 := by
  rw [tree257_def]
  rfl
theorem node257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree257 live257 coloured257 = result257 := by
  rw [tree257_def]
  try dsimp only [colour, result257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree258_agree : tree258 = literal258 := by
  rw [tree258_def, tree256_agree, tree257_agree]
  rfl
theorem node258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree258 live258 coloured258 = result258 := by
  rw [tree258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node256_eq
  unfold live256 coloured256 at child
  try dsimp only [live258, coloured258]
  rw [child]
  dsimp only [result256]
  have child := node257_eq
  unfold live257 coloured257 at child
  try dsimp only [live258, coloured258]
  rw [child]
  dsimp only [result257]
  try dsimp only [colour, result258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree259_agree : tree259 = literal259 := by
  rw [tree259_def]
  rfl
theorem node259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree259 live259 coloured259 = result259 := by
  rw [tree259_def]
  try dsimp only [colour, result259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree260_agree : tree260 = literal260 := by
  rw [tree260_def, tree258_agree, tree259_agree]
  rfl
theorem node260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree260 live260 coloured260 = result260 := by
  rw [tree260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node258_eq
  unfold live258 coloured258 at child
  try dsimp only [live260, coloured260]
  rw [child]
  dsimp only [result258]
  have child := node259_eq
  unfold live259 coloured259 at child
  try dsimp only [live260, coloured260]
  rw [child]
  dsimp only [result259]
  try dsimp only [colour, result260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree261_agree : tree261 = literal261 := by
  rw [tree261_def]
  rfl
theorem node261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree261 live261 coloured261 = result261 := by
  rw [tree261_def]
  try dsimp only [colour, result261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree262_agree : tree262 = literal262 := by
  rw [tree262_def, tree260_agree, tree261_agree]
  rfl
theorem node262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree262 live262 coloured262 = result262 := by
  rw [tree262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node260_eq
  unfold live260 coloured260 at child
  try dsimp only [live262, coloured262]
  rw [child]
  dsimp only [result260]
  have child := node261_eq
  unfold live261 coloured261 at child
  try dsimp only [live262, coloured262]
  rw [child]
  dsimp only [result261]
  try dsimp only [colour, result262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree263_agree : tree263 = literal263 := by
  rw [tree263_def]
  rfl
theorem node263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree263 live263 coloured263 = result263 := by
  rw [tree263_def]
  try dsimp only [colour, result263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree264_agree : tree264 = literal264 := by
  rw [tree264_def, tree262_agree, tree263_agree]
  rfl
theorem node264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree264 live264 coloured264 = result264 := by
  rw [tree264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node262_eq
  unfold live262 coloured262 at child
  try dsimp only [live264, coloured264]
  rw [child]
  dsimp only [result262]
  have child := node263_eq
  unfold live263 coloured263 at child
  try dsimp only [live264, coloured264]
  rw [child]
  dsimp only [result263]
  try dsimp only [colour, result264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree265_agree : tree265 = literal265 := by
  rw [tree265_def]
  rfl
theorem node265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree265 live265 coloured265 = result265 := by
  rw [tree265_def]
  try dsimp only [colour, result265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree266_agree : tree266 = literal266 := by
  rw [tree266_def, tree264_agree, tree265_agree]
  rfl
theorem node266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree266 live266 coloured266 = result266 := by
  rw [tree266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node264_eq
  unfold live264 coloured264 at child
  try dsimp only [live266, coloured266]
  rw [child]
  dsimp only [result264]
  have child := node265_eq
  unfold live265 coloured265 at child
  try dsimp only [live266, coloured266]
  rw [child]
  dsimp only [result265]
  try dsimp only [colour, result266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree267_agree : tree267 = literal267 := by
  rw [tree267_def]
  rfl
theorem node267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree267 live267 coloured267 = result267 := by
  rw [tree267_def]
  try dsimp only [colour, result267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree268_agree : tree268 = literal268 := by
  rw [tree268_def, tree266_agree, tree267_agree]
  rfl
theorem node268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree268 live268 coloured268 = result268 := by
  rw [tree268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node266_eq
  unfold live266 coloured266 at child
  try dsimp only [live268, coloured268]
  rw [child]
  dsimp only [result266]
  have child := node267_eq
  unfold live267 coloured267 at child
  try dsimp only [live268, coloured268]
  rw [child]
  dsimp only [result267]
  try dsimp only [colour, result268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree269_agree : tree269 = literal269 := by
  rw [tree269_def]
  rfl
theorem node269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree269 live269 coloured269 = result269 := by
  rw [tree269_def]
  try dsimp only [colour, result269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree270_agree : tree270 = literal270 := by
  rw [tree270_def, tree268_agree, tree269_agree]
  rfl
theorem node270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree270 live270 coloured270 = result270 := by
  rw [tree270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node268_eq
  unfold live268 coloured268 at child
  try dsimp only [live270, coloured270]
  rw [child]
  dsimp only [result268]
  have child := node269_eq
  unfold live269 coloured269 at child
  try dsimp only [live270, coloured270]
  rw [child]
  dsimp only [result269]
  try dsimp only [colour, result270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree271_agree : tree271 = literal271 := by
  rw [tree271_def]
  rfl
theorem node271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree271 live271 coloured271 = result271 := by
  rw [tree271_def]
  try dsimp only [colour, result271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree272_agree : tree272 = literal272 := by
  rw [tree272_def, tree270_agree, tree271_agree]
  rfl
theorem node272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree272 live272 coloured272 = result272 := by
  rw [tree272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node270_eq
  unfold live270 coloured270 at child
  try dsimp only [live272, coloured272]
  rw [child]
  dsimp only [result270]
  have child := node271_eq
  unfold live271 coloured271 at child
  try dsimp only [live272, coloured272]
  rw [child]
  dsimp only [result271]
  try dsimp only [colour, result272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree273_agree : tree273 = literal273 := by
  rw [tree273_def]
  rfl
theorem node273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree273 live273 coloured273 = result273 := by
  rw [tree273_def]
  try dsimp only [colour, result273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree274_agree : tree274 = literal274 := by
  rw [tree274_def, tree272_agree, tree273_agree]
  rfl
theorem node274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree274 live274 coloured274 = result274 := by
  rw [tree274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node272_eq
  unfold live272 coloured272 at child
  try dsimp only [live274, coloured274]
  rw [child]
  dsimp only [result272]
  have child := node273_eq
  unfold live273 coloured273 at child
  try dsimp only [live274, coloured274]
  rw [child]
  dsimp only [result273]
  try dsimp only [colour, result274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree275_agree : tree275 = literal275 := by
  rw [tree275_def]
  rfl
theorem node275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree275 live275 coloured275 = result275 := by
  rw [tree275_def]
  try dsimp only [colour, result275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree276_agree : tree276 = literal276 := by
  rw [tree276_def, tree274_agree, tree275_agree]
  rfl
theorem node276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree276 live276 coloured276 = result276 := by
  rw [tree276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node274_eq
  unfold live274 coloured274 at child
  try dsimp only [live276, coloured276]
  rw [child]
  dsimp only [result274]
  have child := node275_eq
  unfold live275 coloured275 at child
  try dsimp only [live276, coloured276]
  rw [child]
  dsimp only [result275]
  try dsimp only [colour, result276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree277_agree : tree277 = literal277 := by
  rw [tree277_def]
  rfl
theorem node277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree277 live277 coloured277 = result277 := by
  rw [tree277_def]
  try dsimp only [colour, result277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree278_agree : tree278 = literal278 := by
  rw [tree278_def, tree276_agree, tree277_agree]
  rfl
theorem node278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree278 live278 coloured278 = result278 := by
  rw [tree278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node276_eq
  unfold live276 coloured276 at child
  try dsimp only [live278, coloured278]
  rw [child]
  dsimp only [result276]
  have child := node277_eq
  unfold live277 coloured277 at child
  try dsimp only [live278, coloured278]
  rw [child]
  dsimp only [result277]
  try dsimp only [colour, result278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree279_agree : tree279 = literal279 := by
  rw [tree279_def]
  rfl
theorem node279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree279 live279 coloured279 = result279 := by
  rw [tree279_def]
  try dsimp only [colour, result279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree280_agree : tree280 = literal280 := by
  rw [tree280_def, tree278_agree, tree279_agree]
  rfl
theorem node280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree280 live280 coloured280 = result280 := by
  rw [tree280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node278_eq
  unfold live278 coloured278 at child
  try dsimp only [live280, coloured280]
  rw [child]
  dsimp only [result278]
  have child := node279_eq
  unfold live279 coloured279 at child
  try dsimp only [live280, coloured280]
  rw [child]
  dsimp only [result279]
  try dsimp only [colour, result280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree281_agree : tree281 = literal281 := by
  rw [tree281_def]
  rfl
theorem node281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree281 live281 coloured281 = result281 := by
  rw [tree281_def]
  try dsimp only [colour, result281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree282_agree : tree282 = literal282 := by
  rw [tree282_def, tree280_agree, tree281_agree]
  rfl
theorem node282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree282 live282 coloured282 = result282 := by
  rw [tree282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node280_eq
  unfold live280 coloured280 at child
  try dsimp only [live282, coloured282]
  rw [child]
  dsimp only [result280]
  have child := node281_eq
  unfold live281 coloured281 at child
  try dsimp only [live282, coloured282]
  rw [child]
  dsimp only [result281]
  try dsimp only [colour, result282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree283_agree : tree283 = literal283 := by
  rw [tree283_def]
  rfl
theorem node283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree283 live283 coloured283 = result283 := by
  rw [tree283_def]
  try dsimp only [colour, result283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree284_agree : tree284 = literal284 := by
  rw [tree284_def, tree282_agree, tree283_agree]
  rfl
theorem node284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree284 live284 coloured284 = result284 := by
  rw [tree284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node282_eq
  unfold live282 coloured282 at child
  try dsimp only [live284, coloured284]
  rw [child]
  dsimp only [result282]
  have child := node283_eq
  unfold live283 coloured283 at child
  try dsimp only [live284, coloured284]
  rw [child]
  dsimp only [result283]
  try dsimp only [colour, result284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree285_agree : tree285 = literal285 := by
  rw [tree285_def]
  rfl
theorem node285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree285 live285 coloured285 = result285 := by
  rw [tree285_def]
  try dsimp only [colour, result285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree286_agree : tree286 = literal286 := by
  rw [tree286_def, tree284_agree, tree285_agree]
  rfl
theorem node286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree286 live286 coloured286 = result286 := by
  rw [tree286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node284_eq
  unfold live284 coloured284 at child
  try dsimp only [live286, coloured286]
  rw [child]
  dsimp only [result284]
  have child := node285_eq
  unfold live285 coloured285 at child
  try dsimp only [live286, coloured286]
  rw [child]
  dsimp only [result285]
  try dsimp only [colour, result286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree287_agree : tree287 = literal287 := by
  rw [tree287_def]
  rfl
theorem node287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree287 live287 coloured287 = result287 := by
  rw [tree287_def]
  try dsimp only [colour, result287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
