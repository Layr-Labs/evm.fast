import InitECandidate.Proofs.ClashStages713.Proof53
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree5184_agree : tree5184 = literal5184 := by
  rw [tree5184_def, tree5182_agree, tree5183_agree]
  rfl
theorem node5184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5184 live5184 coloured5184 = result5184 := by
  rw [tree5184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5182_eq
  unfold live5182 coloured5182 at child
  try dsimp only [live5184, coloured5184]
  rw [child]
  dsimp only [result5182]
  have child := node5183_eq
  unfold live5183 coloured5183 at child
  try dsimp only [live5184, coloured5184]
  rw [child]
  dsimp only [result5183]
  try dsimp only [colour, result5184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5185_agree : tree5185 = literal5185 := by
  rw [tree5185_def]
  rfl
theorem node5185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5185 live5185 coloured5185 = result5185 := by
  rw [tree5185_def]
  try dsimp only [colour, result5185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5186_agree : tree5186 = literal5186 := by
  rw [tree5186_def, tree5184_agree, tree5185_agree]
  rfl
theorem node5186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5186 live5186 coloured5186 = result5186 := by
  rw [tree5186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5184_eq
  unfold live5184 coloured5184 at child
  try dsimp only [live5186, coloured5186]
  rw [child]
  dsimp only [result5184]
  have child := node5185_eq
  unfold live5185 coloured5185 at child
  try dsimp only [live5186, coloured5186]
  rw [child]
  dsimp only [result5185]
  try dsimp only [colour, result5186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5187_agree : tree5187 = literal5187 := by
  rw [tree5187_def]
  rfl
theorem node5187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5187 live5187 coloured5187 = result5187 := by
  rw [tree5187_def]
  try dsimp only [colour, result5187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5188_agree : tree5188 = literal5188 := by
  rw [tree5188_def, tree5186_agree, tree5187_agree]
  rfl
theorem node5188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5188 live5188 coloured5188 = result5188 := by
  rw [tree5188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5186_eq
  unfold live5186 coloured5186 at child
  try dsimp only [live5188, coloured5188]
  rw [child]
  dsimp only [result5186]
  have child := node5187_eq
  unfold live5187 coloured5187 at child
  try dsimp only [live5188, coloured5188]
  rw [child]
  dsimp only [result5187]
  try dsimp only [colour, result5188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5189_agree : tree5189 = literal5189 := by
  rw [tree5189_def]
  rfl
theorem node5189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5189 live5189 coloured5189 = result5189 := by
  rw [tree5189_def]
  try dsimp only [colour, result5189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5190_agree : tree5190 = literal5190 := by
  rw [tree5190_def, tree5188_agree, tree5189_agree]
  rfl
theorem node5190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5190 live5190 coloured5190 = result5190 := by
  rw [tree5190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5188_eq
  unfold live5188 coloured5188 at child
  try dsimp only [live5190, coloured5190]
  rw [child]
  dsimp only [result5188]
  have child := node5189_eq
  unfold live5189 coloured5189 at child
  try dsimp only [live5190, coloured5190]
  rw [child]
  dsimp only [result5189]
  try dsimp only [colour, result5190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5191_agree : tree5191 = literal5191 := by
  rw [tree5191_def]
  rfl
theorem node5191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5191 live5191 coloured5191 = result5191 := by
  rw [tree5191_def]
  try dsimp only [colour, result5191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5192_agree : tree5192 = literal5192 := by
  rw [tree5192_def, tree5190_agree, tree5191_agree]
  rfl
theorem node5192_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5192 live5192 coloured5192 = result5192 := by
  rw [tree5192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5190_eq
  unfold live5190 coloured5190 at child
  try dsimp only [live5192, coloured5192]
  rw [child]
  dsimp only [result5190]
  have child := node5191_eq
  unfold live5191 coloured5191 at child
  try dsimp only [live5192, coloured5192]
  rw [child]
  dsimp only [result5191]
  try dsimp only [colour, result5192]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5193_agree : tree5193 = literal5193 := by
  rw [tree5193_def]
  rfl
theorem node5193_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5193 live5193 coloured5193 = result5193 := by
  rw [tree5193_def]
  try dsimp only [colour, result5193]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5194_agree : tree5194 = literal5194 := by
  rw [tree5194_def, tree5192_agree, tree5193_agree]
  rfl
theorem node5194_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5194 live5194 coloured5194 = result5194 := by
  rw [tree5194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5192_eq
  unfold live5192 coloured5192 at child
  try dsimp only [live5194, coloured5194]
  rw [child]
  dsimp only [result5192]
  have child := node5193_eq
  unfold live5193 coloured5193 at child
  try dsimp only [live5194, coloured5194]
  rw [child]
  dsimp only [result5193]
  try dsimp only [colour, result5194]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5195_agree : tree5195 = literal5195 := by
  rw [tree5195_def]
  rfl
theorem node5195_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5195 live5195 coloured5195 = result5195 := by
  rw [tree5195_def]
  try dsimp only [colour, result5195]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5196_agree : tree5196 = literal5196 := by
  rw [tree5196_def, tree5194_agree, tree5195_agree]
  rfl
theorem node5196_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5196 live5196 coloured5196 = result5196 := by
  rw [tree5196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5194_eq
  unfold live5194 coloured5194 at child
  try dsimp only [live5196, coloured5196]
  rw [child]
  dsimp only [result5194]
  have child := node5195_eq
  unfold live5195 coloured5195 at child
  try dsimp only [live5196, coloured5196]
  rw [child]
  dsimp only [result5195]
  try dsimp only [colour, result5196]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5197_agree : tree5197 = literal5197 := by
  rw [tree5197_def]
  rfl
theorem node5197_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5197 live5197 coloured5197 = result5197 := by
  rw [tree5197_def]
  try dsimp only [colour, result5197]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5198_agree : tree5198 = literal5198 := by
  rw [tree5198_def, tree5196_agree, tree5197_agree]
  rfl
theorem node5198_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5198 live5198 coloured5198 = result5198 := by
  rw [tree5198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5196_eq
  unfold live5196 coloured5196 at child
  try dsimp only [live5198, coloured5198]
  rw [child]
  dsimp only [result5196]
  have child := node5197_eq
  unfold live5197 coloured5197 at child
  try dsimp only [live5198, coloured5198]
  rw [child]
  dsimp only [result5197]
  try dsimp only [colour, result5198]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5199_agree : tree5199 = literal5199 := by
  rw [tree5199_def]
  rfl
theorem node5199_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5199 live5199 coloured5199 = result5199 := by
  rw [tree5199_def]
  try dsimp only [colour, result5199]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5200_agree : tree5200 = literal5200 := by
  rw [tree5200_def, tree5198_agree, tree5199_agree]
  rfl
theorem node5200_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5200 live5200 coloured5200 = result5200 := by
  rw [tree5200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5198_eq
  unfold live5198 coloured5198 at child
  try dsimp only [live5200, coloured5200]
  rw [child]
  dsimp only [result5198]
  have child := node5199_eq
  unfold live5199 coloured5199 at child
  try dsimp only [live5200, coloured5200]
  rw [child]
  dsimp only [result5199]
  try dsimp only [colour, result5200]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5201_agree : tree5201 = literal5201 := by
  rw [tree5201_def]
  rfl
theorem node5201_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5201 live5201 coloured5201 = result5201 := by
  rw [tree5201_def]
  try dsimp only [colour, result5201]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5202_agree : tree5202 = literal5202 := by
  rw [tree5202_def, tree5200_agree, tree5201_agree]
  rfl
theorem node5202_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5202 live5202 coloured5202 = result5202 := by
  rw [tree5202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5200_eq
  unfold live5200 coloured5200 at child
  try dsimp only [live5202, coloured5202]
  rw [child]
  dsimp only [result5200]
  have child := node5201_eq
  unfold live5201 coloured5201 at child
  try dsimp only [live5202, coloured5202]
  rw [child]
  dsimp only [result5201]
  try dsimp only [colour, result5202]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5203_agree : tree5203 = literal5203 := by
  rw [tree5203_def]
  rfl
theorem node5203_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5203 live5203 coloured5203 = result5203 := by
  rw [tree5203_def]
  try dsimp only [colour, result5203]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5204_agree : tree5204 = literal5204 := by
  rw [tree5204_def, tree5202_agree, tree5203_agree]
  rfl
theorem node5204_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5204 live5204 coloured5204 = result5204 := by
  rw [tree5204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5202_eq
  unfold live5202 coloured5202 at child
  try dsimp only [live5204, coloured5204]
  rw [child]
  dsimp only [result5202]
  have child := node5203_eq
  unfold live5203 coloured5203 at child
  try dsimp only [live5204, coloured5204]
  rw [child]
  dsimp only [result5203]
  try dsimp only [colour, result5204]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5205_agree : tree5205 = literal5205 := by
  rw [tree5205_def]
  rfl
theorem node5205_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5205 live5205 coloured5205 = result5205 := by
  rw [tree5205_def]
  try dsimp only [colour, result5205]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5206_agree : tree5206 = literal5206 := by
  rw [tree5206_def, tree5204_agree, tree5205_agree]
  rfl
theorem node5206_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5206 live5206 coloured5206 = result5206 := by
  rw [tree5206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5204_eq
  unfold live5204 coloured5204 at child
  try dsimp only [live5206, coloured5206]
  rw [child]
  dsimp only [result5204]
  have child := node5205_eq
  unfold live5205 coloured5205 at child
  try dsimp only [live5206, coloured5206]
  rw [child]
  dsimp only [result5205]
  try dsimp only [colour, result5206]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5207_agree : tree5207 = literal5207 := by
  rw [tree5207_def]
  rfl
theorem node5207_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5207 live5207 coloured5207 = result5207 := by
  rw [tree5207_def]
  try dsimp only [colour, result5207]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5208_agree : tree5208 = literal5208 := by
  rw [tree5208_def, tree5206_agree, tree5207_agree]
  rfl
theorem node5208_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5208 live5208 coloured5208 = result5208 := by
  rw [tree5208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5206_eq
  unfold live5206 coloured5206 at child
  try dsimp only [live5208, coloured5208]
  rw [child]
  dsimp only [result5206]
  have child := node5207_eq
  unfold live5207 coloured5207 at child
  try dsimp only [live5208, coloured5208]
  rw [child]
  dsimp only [result5207]
  try dsimp only [colour, result5208]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5209_agree : tree5209 = literal5209 := by
  rw [tree5209_def]
  rfl
theorem node5209_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5209 live5209 coloured5209 = result5209 := by
  rw [tree5209_def]
  try dsimp only [colour, result5209]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5210_agree : tree5210 = literal5210 := by
  rw [tree5210_def, tree5208_agree, tree5209_agree]
  rfl
theorem node5210_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5210 live5210 coloured5210 = result5210 := by
  rw [tree5210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5208_eq
  unfold live5208 coloured5208 at child
  try dsimp only [live5210, coloured5210]
  rw [child]
  dsimp only [result5208]
  have child := node5209_eq
  unfold live5209 coloured5209 at child
  try dsimp only [live5210, coloured5210]
  rw [child]
  dsimp only [result5209]
  try dsimp only [colour, result5210]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5211_agree : tree5211 = literal5211 := by
  rw [tree5211_def]
  rfl
theorem node5211_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5211 live5211 coloured5211 = result5211 := by
  rw [tree5211_def]
  try dsimp only [colour, result5211]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5212_agree : tree5212 = literal5212 := by
  rw [tree5212_def, tree5210_agree, tree5211_agree]
  rfl
theorem node5212_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5212 live5212 coloured5212 = result5212 := by
  rw [tree5212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5210_eq
  unfold live5210 coloured5210 at child
  try dsimp only [live5212, coloured5212]
  rw [child]
  dsimp only [result5210]
  have child := node5211_eq
  unfold live5211 coloured5211 at child
  try dsimp only [live5212, coloured5212]
  rw [child]
  dsimp only [result5211]
  try dsimp only [colour, result5212]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5213_agree : tree5213 = literal5213 := by
  rw [tree5213_def]
  rfl
theorem node5213_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5213 live5213 coloured5213 = result5213 := by
  rw [tree5213_def]
  try dsimp only [colour, result5213]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5214_agree : tree5214 = literal5214 := by
  rw [tree5214_def, tree5212_agree, tree5213_agree]
  rfl
theorem node5214_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5214 live5214 coloured5214 = result5214 := by
  rw [tree5214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5212_eq
  unfold live5212 coloured5212 at child
  try dsimp only [live5214, coloured5214]
  rw [child]
  dsimp only [result5212]
  have child := node5213_eq
  unfold live5213 coloured5213 at child
  try dsimp only [live5214, coloured5214]
  rw [child]
  dsimp only [result5213]
  try dsimp only [colour, result5214]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5215_agree : tree5215 = literal5215 := by
  rw [tree5215_def]
  rfl
theorem node5215_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5215 live5215 coloured5215 = result5215 := by
  rw [tree5215_def]
  try dsimp only [colour, result5215]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5216_agree : tree5216 = literal5216 := by
  rw [tree5216_def, tree5214_agree, tree5215_agree]
  rfl
theorem node5216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5216 live5216 coloured5216 = result5216 := by
  rw [tree5216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5214_eq
  unfold live5214 coloured5214 at child
  try dsimp only [live5216, coloured5216]
  rw [child]
  dsimp only [result5214]
  have child := node5215_eq
  unfold live5215 coloured5215 at child
  try dsimp only [live5216, coloured5216]
  rw [child]
  dsimp only [result5215]
  try dsimp only [colour, result5216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5217_agree : tree5217 = literal5217 := by
  rw [tree5217_def]
  rfl
theorem node5217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5217 live5217 coloured5217 = result5217 := by
  rw [tree5217_def]
  try dsimp only [colour, result5217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5218_agree : tree5218 = literal5218 := by
  rw [tree5218_def, tree5216_agree, tree5217_agree]
  rfl
theorem node5218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5218 live5218 coloured5218 = result5218 := by
  rw [tree5218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5216_eq
  unfold live5216 coloured5216 at child
  try dsimp only [live5218, coloured5218]
  rw [child]
  dsimp only [result5216]
  have child := node5217_eq
  unfold live5217 coloured5217 at child
  try dsimp only [live5218, coloured5218]
  rw [child]
  dsimp only [result5217]
  try dsimp only [colour, result5218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5219_agree : tree5219 = literal5219 := by
  rw [tree5219_def]
  rfl
theorem node5219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5219 live5219 coloured5219 = result5219 := by
  rw [tree5219_def]
  try dsimp only [colour, result5219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5220_agree : tree5220 = literal5220 := by
  rw [tree5220_def, tree5218_agree, tree5219_agree]
  rfl
theorem node5220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5220 live5220 coloured5220 = result5220 := by
  rw [tree5220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5218_eq
  unfold live5218 coloured5218 at child
  try dsimp only [live5220, coloured5220]
  rw [child]
  dsimp only [result5218]
  have child := node5219_eq
  unfold live5219 coloured5219 at child
  try dsimp only [live5220, coloured5220]
  rw [child]
  dsimp only [result5219]
  try dsimp only [colour, result5220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5221_agree : tree5221 = literal5221 := by
  rw [tree5221_def]
  rfl
theorem node5221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5221 live5221 coloured5221 = result5221 := by
  rw [tree5221_def]
  try dsimp only [colour, result5221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5222_agree : tree5222 = literal5222 := by
  rw [tree5222_def, tree5220_agree, tree5221_agree]
  rfl
theorem node5222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5222 live5222 coloured5222 = result5222 := by
  rw [tree5222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5220_eq
  unfold live5220 coloured5220 at child
  try dsimp only [live5222, coloured5222]
  rw [child]
  dsimp only [result5220]
  have child := node5221_eq
  unfold live5221 coloured5221 at child
  try dsimp only [live5222, coloured5222]
  rw [child]
  dsimp only [result5221]
  try dsimp only [colour, result5222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5223_agree : tree5223 = literal5223 := by
  rw [tree5223_def]
  rfl
theorem node5223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5223 live5223 coloured5223 = result5223 := by
  rw [tree5223_def]
  try dsimp only [colour, result5223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5224_agree : tree5224 = literal5224 := by
  rw [tree5224_def, tree5222_agree, tree5223_agree]
  rfl
theorem node5224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5224 live5224 coloured5224 = result5224 := by
  rw [tree5224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5222_eq
  unfold live5222 coloured5222 at child
  try dsimp only [live5224, coloured5224]
  rw [child]
  dsimp only [result5222]
  have child := node5223_eq
  unfold live5223 coloured5223 at child
  try dsimp only [live5224, coloured5224]
  rw [child]
  dsimp only [result5223]
  try dsimp only [colour, result5224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5225_agree : tree5225 = literal5225 := by
  rw [tree5225_def]
  rfl
theorem node5225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5225 live5225 coloured5225 = result5225 := by
  rw [tree5225_def]
  try dsimp only [colour, result5225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5226_agree : tree5226 = literal5226 := by
  rw [tree5226_def, tree5224_agree, tree5225_agree]
  rfl
theorem node5226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5226 live5226 coloured5226 = result5226 := by
  rw [tree5226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5224_eq
  unfold live5224 coloured5224 at child
  try dsimp only [live5226, coloured5226]
  rw [child]
  dsimp only [result5224]
  have child := node5225_eq
  unfold live5225 coloured5225 at child
  try dsimp only [live5226, coloured5226]
  rw [child]
  dsimp only [result5225]
  try dsimp only [colour, result5226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5227_agree : tree5227 = literal5227 := by
  rw [tree5227_def]
  rfl
theorem node5227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5227 live5227 coloured5227 = result5227 := by
  rw [tree5227_def]
  try dsimp only [colour, result5227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5228_agree : tree5228 = literal5228 := by
  rw [tree5228_def, tree5226_agree, tree5227_agree]
  rfl
theorem node5228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5228 live5228 coloured5228 = result5228 := by
  rw [tree5228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5226_eq
  unfold live5226 coloured5226 at child
  try dsimp only [live5228, coloured5228]
  rw [child]
  dsimp only [result5226]
  have child := node5227_eq
  unfold live5227 coloured5227 at child
  try dsimp only [live5228, coloured5228]
  rw [child]
  dsimp only [result5227]
  try dsimp only [colour, result5228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5229_agree : tree5229 = literal5229 := by
  rw [tree5229_def]
  rfl
theorem node5229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5229 live5229 coloured5229 = result5229 := by
  rw [tree5229_def]
  try dsimp only [colour, result5229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5230_agree : tree5230 = literal5230 := by
  rw [tree5230_def, tree5228_agree, tree5229_agree]
  rfl
theorem node5230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5230 live5230 coloured5230 = result5230 := by
  rw [tree5230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5228_eq
  unfold live5228 coloured5228 at child
  try dsimp only [live5230, coloured5230]
  rw [child]
  dsimp only [result5228]
  have child := node5229_eq
  unfold live5229 coloured5229 at child
  try dsimp only [live5230, coloured5230]
  rw [child]
  dsimp only [result5229]
  try dsimp only [colour, result5230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5231_agree : tree5231 = literal5231 := by
  rw [tree5231_def]
  rfl
theorem node5231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5231 live5231 coloured5231 = result5231 := by
  rw [tree5231_def]
  try dsimp only [colour, result5231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5232_agree : tree5232 = literal5232 := by
  rw [tree5232_def, tree5230_agree, tree5231_agree]
  rfl
theorem node5232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5232 live5232 coloured5232 = result5232 := by
  rw [tree5232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5230_eq
  unfold live5230 coloured5230 at child
  try dsimp only [live5232, coloured5232]
  rw [child]
  dsimp only [result5230]
  have child := node5231_eq
  unfold live5231 coloured5231 at child
  try dsimp only [live5232, coloured5232]
  rw [child]
  dsimp only [result5231]
  try dsimp only [colour, result5232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5233_agree : tree5233 = literal5233 := by
  rw [tree5233_def]
  rfl
theorem node5233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5233 live5233 coloured5233 = result5233 := by
  rw [tree5233_def]
  try dsimp only [colour, result5233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5234_agree : tree5234 = literal5234 := by
  rw [tree5234_def, tree5232_agree, tree5233_agree]
  rfl
theorem node5234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5234 live5234 coloured5234 = result5234 := by
  rw [tree5234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5232_eq
  unfold live5232 coloured5232 at child
  try dsimp only [live5234, coloured5234]
  rw [child]
  dsimp only [result5232]
  have child := node5233_eq
  unfold live5233 coloured5233 at child
  try dsimp only [live5234, coloured5234]
  rw [child]
  dsimp only [result5233]
  try dsimp only [colour, result5234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5235_agree : tree5235 = literal5235 := by
  rw [tree5235_def]
  rfl
theorem node5235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5235 live5235 coloured5235 = result5235 := by
  rw [tree5235_def]
  try dsimp only [colour, result5235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5236_agree : tree5236 = literal5236 := by
  rw [tree5236_def, tree5234_agree, tree5235_agree]
  rfl
theorem node5236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5236 live5236 coloured5236 = result5236 := by
  rw [tree5236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5234_eq
  unfold live5234 coloured5234 at child
  try dsimp only [live5236, coloured5236]
  rw [child]
  dsimp only [result5234]
  have child := node5235_eq
  unfold live5235 coloured5235 at child
  try dsimp only [live5236, coloured5236]
  rw [child]
  dsimp only [result5235]
  try dsimp only [colour, result5236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5237_agree : tree5237 = literal5237 := by
  rw [tree5237_def]
  rfl
theorem node5237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5237 live5237 coloured5237 = result5237 := by
  rw [tree5237_def]
  try dsimp only [colour, result5237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5238_agree : tree5238 = literal5238 := by
  rw [tree5238_def, tree5236_agree, tree5237_agree]
  rfl
theorem node5238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5238 live5238 coloured5238 = result5238 := by
  rw [tree5238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5236_eq
  unfold live5236 coloured5236 at child
  try dsimp only [live5238, coloured5238]
  rw [child]
  dsimp only [result5236]
  have child := node5237_eq
  unfold live5237 coloured5237 at child
  try dsimp only [live5238, coloured5238]
  rw [child]
  dsimp only [result5237]
  try dsimp only [colour, result5238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5239_agree : tree5239 = literal5239 := by
  rw [tree5239_def]
  rfl
theorem node5239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5239 live5239 coloured5239 = result5239 := by
  rw [tree5239_def]
  try dsimp only [colour, result5239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5240_agree : tree5240 = literal5240 := by
  rw [tree5240_def, tree5238_agree, tree5239_agree]
  rfl
theorem node5240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5240 live5240 coloured5240 = result5240 := by
  rw [tree5240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5238_eq
  unfold live5238 coloured5238 at child
  try dsimp only [live5240, coloured5240]
  rw [child]
  dsimp only [result5238]
  have child := node5239_eq
  unfold live5239 coloured5239 at child
  try dsimp only [live5240, coloured5240]
  rw [child]
  dsimp only [result5239]
  try dsimp only [colour, result5240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5241_agree : tree5241 = literal5241 := by
  rw [tree5241_def]
  rfl
theorem node5241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5241 live5241 coloured5241 = result5241 := by
  rw [tree5241_def]
  try dsimp only [colour, result5241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5242_agree : tree5242 = literal5242 := by
  rw [tree5242_def, tree5240_agree, tree5241_agree]
  rfl
theorem node5242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5242 live5242 coloured5242 = result5242 := by
  rw [tree5242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5240_eq
  unfold live5240 coloured5240 at child
  try dsimp only [live5242, coloured5242]
  rw [child]
  dsimp only [result5240]
  have child := node5241_eq
  unfold live5241 coloured5241 at child
  try dsimp only [live5242, coloured5242]
  rw [child]
  dsimp only [result5241]
  try dsimp only [colour, result5242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5243_agree : tree5243 = literal5243 := by
  rw [tree5243_def]
  rfl
theorem node5243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5243 live5243 coloured5243 = result5243 := by
  rw [tree5243_def]
  try dsimp only [colour, result5243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5244_agree : tree5244 = literal5244 := by
  rw [tree5244_def, tree5242_agree, tree5243_agree]
  rfl
theorem node5244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5244 live5244 coloured5244 = result5244 := by
  rw [tree5244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5242_eq
  unfold live5242 coloured5242 at child
  try dsimp only [live5244, coloured5244]
  rw [child]
  dsimp only [result5242]
  have child := node5243_eq
  unfold live5243 coloured5243 at child
  try dsimp only [live5244, coloured5244]
  rw [child]
  dsimp only [result5243]
  try dsimp only [colour, result5244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5245_agree : tree5245 = literal5245 := by
  rw [tree5245_def]
  rfl
theorem node5245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5245 live5245 coloured5245 = result5245 := by
  rw [tree5245_def]
  try dsimp only [colour, result5245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5246_agree : tree5246 = literal5246 := by
  rw [tree5246_def, tree5244_agree, tree5245_agree]
  rfl
theorem node5246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5246 live5246 coloured5246 = result5246 := by
  rw [tree5246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5244_eq
  unfold live5244 coloured5244 at child
  try dsimp only [live5246, coloured5246]
  rw [child]
  dsimp only [result5244]
  have child := node5245_eq
  unfold live5245 coloured5245 at child
  try dsimp only [live5246, coloured5246]
  rw [child]
  dsimp only [result5245]
  try dsimp only [colour, result5246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5247_agree : tree5247 = literal5247 := by
  rw [tree5247_def]
  rfl
theorem node5247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5247 live5247 coloured5247 = result5247 := by
  rw [tree5247_def]
  try dsimp only [colour, result5247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5248_agree : tree5248 = literal5248 := by
  rw [tree5248_def, tree5246_agree, tree5247_agree]
  rfl
theorem node5248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5248 live5248 coloured5248 = result5248 := by
  rw [tree5248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5246_eq
  unfold live5246 coloured5246 at child
  try dsimp only [live5248, coloured5248]
  rw [child]
  dsimp only [result5246]
  have child := node5247_eq
  unfold live5247 coloured5247 at child
  try dsimp only [live5248, coloured5248]
  rw [child]
  dsimp only [result5247]
  try dsimp only [colour, result5248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5249_agree : tree5249 = literal5249 := by
  rw [tree5249_def]
  rfl
theorem node5249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5249 live5249 coloured5249 = result5249 := by
  rw [tree5249_def]
  try dsimp only [colour, result5249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5250_agree : tree5250 = literal5250 := by
  rw [tree5250_def, tree5248_agree, tree5249_agree]
  rfl
theorem node5250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5250 live5250 coloured5250 = result5250 := by
  rw [tree5250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5248_eq
  unfold live5248 coloured5248 at child
  try dsimp only [live5250, coloured5250]
  rw [child]
  dsimp only [result5248]
  have child := node5249_eq
  unfold live5249 coloured5249 at child
  try dsimp only [live5250, coloured5250]
  rw [child]
  dsimp only [result5249]
  try dsimp only [colour, result5250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5251_agree : tree5251 = literal5251 := by
  rw [tree5251_def]
  rfl
theorem node5251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5251 live5251 coloured5251 = result5251 := by
  rw [tree5251_def]
  try dsimp only [colour, result5251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5252_agree : tree5252 = literal5252 := by
  rw [tree5252_def, tree5250_agree, tree5251_agree]
  rfl
theorem node5252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5252 live5252 coloured5252 = result5252 := by
  rw [tree5252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5250_eq
  unfold live5250 coloured5250 at child
  try dsimp only [live5252, coloured5252]
  rw [child]
  dsimp only [result5250]
  have child := node5251_eq
  unfold live5251 coloured5251 at child
  try dsimp only [live5252, coloured5252]
  rw [child]
  dsimp only [result5251]
  try dsimp only [colour, result5252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5253_agree : tree5253 = literal5253 := by
  rw [tree5253_def]
  rfl
theorem node5253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5253 live5253 coloured5253 = result5253 := by
  rw [tree5253_def]
  try dsimp only [colour, result5253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5254_agree : tree5254 = literal5254 := by
  rw [tree5254_def, tree5252_agree, tree5253_agree]
  rfl
theorem node5254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5254 live5254 coloured5254 = result5254 := by
  rw [tree5254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5252_eq
  unfold live5252 coloured5252 at child
  try dsimp only [live5254, coloured5254]
  rw [child]
  dsimp only [result5252]
  have child := node5253_eq
  unfold live5253 coloured5253 at child
  try dsimp only [live5254, coloured5254]
  rw [child]
  dsimp only [result5253]
  try dsimp only [colour, result5254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5255_agree : tree5255 = literal5255 := by
  rw [tree5255_def]
  rfl
theorem node5255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5255 live5255 coloured5255 = result5255 := by
  rw [tree5255_def]
  try dsimp only [colour, result5255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5256_agree : tree5256 = literal5256 := by
  rw [tree5256_def, tree5254_agree, tree5255_agree]
  rfl
theorem node5256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5256 live5256 coloured5256 = result5256 := by
  rw [tree5256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5254_eq
  unfold live5254 coloured5254 at child
  try dsimp only [live5256, coloured5256]
  rw [child]
  dsimp only [result5254]
  have child := node5255_eq
  unfold live5255 coloured5255 at child
  try dsimp only [live5256, coloured5256]
  rw [child]
  dsimp only [result5255]
  try dsimp only [colour, result5256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5257_agree : tree5257 = literal5257 := by
  rw [tree5257_def]
  rfl
theorem node5257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5257 live5257 coloured5257 = result5257 := by
  rw [tree5257_def]
  try dsimp only [colour, result5257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5258_agree : tree5258 = literal5258 := by
  rw [tree5258_def, tree5256_agree, tree5257_agree]
  rfl
theorem node5258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5258 live5258 coloured5258 = result5258 := by
  rw [tree5258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5256_eq
  unfold live5256 coloured5256 at child
  try dsimp only [live5258, coloured5258]
  rw [child]
  dsimp only [result5256]
  have child := node5257_eq
  unfold live5257 coloured5257 at child
  try dsimp only [live5258, coloured5258]
  rw [child]
  dsimp only [result5257]
  try dsimp only [colour, result5258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5259_agree : tree5259 = literal5259 := by
  rw [tree5259_def]
  rfl
theorem node5259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5259 live5259 coloured5259 = result5259 := by
  rw [tree5259_def]
  try dsimp only [colour, result5259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5260_agree : tree5260 = literal5260 := by
  rw [tree5260_def, tree5258_agree, tree5259_agree]
  rfl
theorem node5260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5260 live5260 coloured5260 = result5260 := by
  rw [tree5260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5258_eq
  unfold live5258 coloured5258 at child
  try dsimp only [live5260, coloured5260]
  rw [child]
  dsimp only [result5258]
  have child := node5259_eq
  unfold live5259 coloured5259 at child
  try dsimp only [live5260, coloured5260]
  rw [child]
  dsimp only [result5259]
  try dsimp only [colour, result5260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5261_agree : tree5261 = literal5261 := by
  rw [tree5261_def]
  rfl
theorem node5261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5261 live5261 coloured5261 = result5261 := by
  rw [tree5261_def]
  try dsimp only [colour, result5261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5262_agree : tree5262 = literal5262 := by
  rw [tree5262_def, tree5260_agree, tree5261_agree]
  rfl
theorem node5262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5262 live5262 coloured5262 = result5262 := by
  rw [tree5262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5260_eq
  unfold live5260 coloured5260 at child
  try dsimp only [live5262, coloured5262]
  rw [child]
  dsimp only [result5260]
  have child := node5261_eq
  unfold live5261 coloured5261 at child
  try dsimp only [live5262, coloured5262]
  rw [child]
  dsimp only [result5261]
  try dsimp only [colour, result5262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5263_agree : tree5263 = literal5263 := by
  rw [tree5263_def]
  rfl
theorem node5263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5263 live5263 coloured5263 = result5263 := by
  rw [tree5263_def]
  try dsimp only [colour, result5263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5264_agree : tree5264 = literal5264 := by
  rw [tree5264_def, tree5262_agree, tree5263_agree]
  rfl
theorem node5264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5264 live5264 coloured5264 = result5264 := by
  rw [tree5264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5262_eq
  unfold live5262 coloured5262 at child
  try dsimp only [live5264, coloured5264]
  rw [child]
  dsimp only [result5262]
  have child := node5263_eq
  unfold live5263 coloured5263 at child
  try dsimp only [live5264, coloured5264]
  rw [child]
  dsimp only [result5263]
  try dsimp only [colour, result5264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5265_agree : tree5265 = literal5265 := by
  rw [tree5265_def]
  rfl
theorem node5265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5265 live5265 coloured5265 = result5265 := by
  rw [tree5265_def]
  try dsimp only [colour, result5265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5266_agree : tree5266 = literal5266 := by
  rw [tree5266_def, tree5264_agree, tree5265_agree]
  rfl
theorem node5266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5266 live5266 coloured5266 = result5266 := by
  rw [tree5266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5264_eq
  unfold live5264 coloured5264 at child
  try dsimp only [live5266, coloured5266]
  rw [child]
  dsimp only [result5264]
  have child := node5265_eq
  unfold live5265 coloured5265 at child
  try dsimp only [live5266, coloured5266]
  rw [child]
  dsimp only [result5265]
  try dsimp only [colour, result5266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5267_agree : tree5267 = literal5267 := by
  rw [tree5267_def]
  rfl
theorem node5267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5267 live5267 coloured5267 = result5267 := by
  rw [tree5267_def]
  try dsimp only [colour, result5267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5268_agree : tree5268 = literal5268 := by
  rw [tree5268_def, tree5266_agree, tree5267_agree]
  rfl
theorem node5268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5268 live5268 coloured5268 = result5268 := by
  rw [tree5268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5266_eq
  unfold live5266 coloured5266 at child
  try dsimp only [live5268, coloured5268]
  rw [child]
  dsimp only [result5266]
  have child := node5267_eq
  unfold live5267 coloured5267 at child
  try dsimp only [live5268, coloured5268]
  rw [child]
  dsimp only [result5267]
  try dsimp only [colour, result5268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5269_agree : tree5269 = literal5269 := by
  rw [tree5269_def]
  rfl
theorem node5269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5269 live5269 coloured5269 = result5269 := by
  rw [tree5269_def]
  try dsimp only [colour, result5269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5270_agree : tree5270 = literal5270 := by
  rw [tree5270_def, tree5268_agree, tree5269_agree]
  rfl
theorem node5270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5270 live5270 coloured5270 = result5270 := by
  rw [tree5270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5268_eq
  unfold live5268 coloured5268 at child
  try dsimp only [live5270, coloured5270]
  rw [child]
  dsimp only [result5268]
  have child := node5269_eq
  unfold live5269 coloured5269 at child
  try dsimp only [live5270, coloured5270]
  rw [child]
  dsimp only [result5269]
  try dsimp only [colour, result5270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5271_agree : tree5271 = literal5271 := by
  rw [tree5271_def]
  rfl
theorem node5271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5271 live5271 coloured5271 = result5271 := by
  rw [tree5271_def]
  try dsimp only [colour, result5271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5272_agree : tree5272 = literal5272 := by
  rw [tree5272_def, tree5270_agree, tree5271_agree]
  rfl
theorem node5272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5272 live5272 coloured5272 = result5272 := by
  rw [tree5272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5270_eq
  unfold live5270 coloured5270 at child
  try dsimp only [live5272, coloured5272]
  rw [child]
  dsimp only [result5270]
  have child := node5271_eq
  unfold live5271 coloured5271 at child
  try dsimp only [live5272, coloured5272]
  rw [child]
  dsimp only [result5271]
  try dsimp only [colour, result5272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5273_agree : tree5273 = literal5273 := by
  rw [tree5273_def]
  rfl
theorem node5273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5273 live5273 coloured5273 = result5273 := by
  rw [tree5273_def]
  try dsimp only [colour, result5273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5274_agree : tree5274 = literal5274 := by
  rw [tree5274_def, tree5272_agree, tree5273_agree]
  rfl
theorem node5274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5274 live5274 coloured5274 = result5274 := by
  rw [tree5274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5272_eq
  unfold live5272 coloured5272 at child
  try dsimp only [live5274, coloured5274]
  rw [child]
  dsimp only [result5272]
  have child := node5273_eq
  unfold live5273 coloured5273 at child
  try dsimp only [live5274, coloured5274]
  rw [child]
  dsimp only [result5273]
  try dsimp only [colour, result5274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5275_agree : tree5275 = literal5275 := by
  rw [tree5275_def]
  rfl
theorem node5275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5275 live5275 coloured5275 = result5275 := by
  rw [tree5275_def]
  try dsimp only [colour, result5275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5276_agree : tree5276 = literal5276 := by
  rw [tree5276_def, tree5274_agree, tree5275_agree]
  rfl
theorem node5276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5276 live5276 coloured5276 = result5276 := by
  rw [tree5276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5274_eq
  unfold live5274 coloured5274 at child
  try dsimp only [live5276, coloured5276]
  rw [child]
  dsimp only [result5274]
  have child := node5275_eq
  unfold live5275 coloured5275 at child
  try dsimp only [live5276, coloured5276]
  rw [child]
  dsimp only [result5275]
  try dsimp only [colour, result5276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5277_agree : tree5277 = literal5277 := by
  rw [tree5277_def]
  rfl
theorem node5277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5277 live5277 coloured5277 = result5277 := by
  rw [tree5277_def]
  try dsimp only [colour, result5277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5278_agree : tree5278 = literal5278 := by
  rw [tree5278_def, tree5276_agree, tree5277_agree]
  rfl
theorem node5278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5278 live5278 coloured5278 = result5278 := by
  rw [tree5278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node5276_eq
  unfold live5276 coloured5276 at child
  try dsimp only [live5278, coloured5278]
  rw [child]
  dsimp only [result5276]
  have child := node5277_eq
  unfold live5277 coloured5277 at child
  try dsimp only [live5278, coloured5278]
  rw [child]
  dsimp only [result5277]
  try dsimp only [colour, result5278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree5279_agree : tree5279 = literal5279 := by
  rw [tree5279_def]
  rfl
theorem node5279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5279 live5279 coloured5279 = result5279 := by
  rw [tree5279_def]
  try dsimp only [colour, result5279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
