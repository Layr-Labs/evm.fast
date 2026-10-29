import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree5184_agree_conditional
    (child0 : tree5182 = literal5182)
    (child1 : tree5183 = literal5183) : tree5184 = literal5184 := by
  rw [tree5184_def, child0, child1]
  rfl
theorem node5184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5182 live5182 coloured5182 = result5182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5183 live5183 coloured5183 = result5183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5184 live5184 coloured5184 = result5184 := by
  rw [tree5184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5182 coloured5182 at child
  try dsimp only [live5184, coloured5184]
  rw [child]
  dsimp only [result5182]
  have child := child1
  unfold live5183 coloured5183 at child
  try dsimp only [live5184, coloured5184]
  rw [child]
  dsimp only [result5183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5185_agree_conditional : tree5185 = literal5185 := by
  rw [tree5185_def]
  rfl
theorem node5185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5185 live5185 coloured5185 = result5185 := by
  rw [tree5185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5186_agree_conditional
    (child0 : tree5184 = literal5184)
    (child1 : tree5185 = literal5185) : tree5186 = literal5186 := by
  rw [tree5186_def, child0, child1]
  rfl
theorem node5186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5184 live5184 coloured5184 = result5184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5185 live5185 coloured5185 = result5185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5186 live5186 coloured5186 = result5186 := by
  rw [tree5186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5184 coloured5184 at child
  try dsimp only [live5186, coloured5186]
  rw [child]
  dsimp only [result5184]
  have child := child1
  unfold live5185 coloured5185 at child
  try dsimp only [live5186, coloured5186]
  rw [child]
  dsimp only [result5185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5187_agree_conditional : tree5187 = literal5187 := by
  rw [tree5187_def]
  rfl
theorem node5187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5187 live5187 coloured5187 = result5187 := by
  rw [tree5187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5188_agree_conditional
    (child0 : tree5186 = literal5186)
    (child1 : tree5187 = literal5187) : tree5188 = literal5188 := by
  rw [tree5188_def, child0, child1]
  rfl
theorem node5188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5186 live5186 coloured5186 = result5186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5187 live5187 coloured5187 = result5187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5188 live5188 coloured5188 = result5188 := by
  rw [tree5188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5186 coloured5186 at child
  try dsimp only [live5188, coloured5188]
  rw [child]
  dsimp only [result5186]
  have child := child1
  unfold live5187 coloured5187 at child
  try dsimp only [live5188, coloured5188]
  rw [child]
  dsimp only [result5187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5189_agree_conditional : tree5189 = literal5189 := by
  rw [tree5189_def]
  rfl
theorem node5189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5189 live5189 coloured5189 = result5189 := by
  rw [tree5189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5190_agree_conditional
    (child0 : tree5188 = literal5188)
    (child1 : tree5189 = literal5189) : tree5190 = literal5190 := by
  rw [tree5190_def, child0, child1]
  rfl
theorem node5190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5188 live5188 coloured5188 = result5188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5189 live5189 coloured5189 = result5189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5190 live5190 coloured5190 = result5190 := by
  rw [tree5190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5188 coloured5188 at child
  try dsimp only [live5190, coloured5190]
  rw [child]
  dsimp only [result5188]
  have child := child1
  unfold live5189 coloured5189 at child
  try dsimp only [live5190, coloured5190]
  rw [child]
  dsimp only [result5189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5191_agree_conditional : tree5191 = literal5191 := by
  rw [tree5191_def]
  rfl
theorem node5191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5191 live5191 coloured5191 = result5191 := by
  rw [tree5191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5192_agree_conditional
    (child0 : tree5190 = literal5190)
    (child1 : tree5191 = literal5191) : tree5192 = literal5192 := by
  rw [tree5192_def, child0, child1]
  rfl
theorem node5192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5190 live5190 coloured5190 = result5190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5191 live5191 coloured5191 = result5191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5192 live5192 coloured5192 = result5192 := by
  rw [tree5192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5190 coloured5190 at child
  try dsimp only [live5192, coloured5192]
  rw [child]
  dsimp only [result5190]
  have child := child1
  unfold live5191 coloured5191 at child
  try dsimp only [live5192, coloured5192]
  rw [child]
  dsimp only [result5191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5193_agree_conditional : tree5193 = literal5193 := by
  rw [tree5193_def]
  rfl
theorem node5193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5193 live5193 coloured5193 = result5193 := by
  rw [tree5193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5194_agree_conditional
    (child0 : tree5192 = literal5192)
    (child1 : tree5193 = literal5193) : tree5194 = literal5194 := by
  rw [tree5194_def, child0, child1]
  rfl
theorem node5194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5192 live5192 coloured5192 = result5192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5193 live5193 coloured5193 = result5193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5194 live5194 coloured5194 = result5194 := by
  rw [tree5194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5192 coloured5192 at child
  try dsimp only [live5194, coloured5194]
  rw [child]
  dsimp only [result5192]
  have child := child1
  unfold live5193 coloured5193 at child
  try dsimp only [live5194, coloured5194]
  rw [child]
  dsimp only [result5193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5195_agree_conditional : tree5195 = literal5195 := by
  rw [tree5195_def]
  rfl
theorem node5195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5195 live5195 coloured5195 = result5195 := by
  rw [tree5195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5196_agree_conditional
    (child0 : tree5194 = literal5194)
    (child1 : tree5195 = literal5195) : tree5196 = literal5196 := by
  rw [tree5196_def, child0, child1]
  rfl
theorem node5196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5194 live5194 coloured5194 = result5194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5195 live5195 coloured5195 = result5195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5196 live5196 coloured5196 = result5196 := by
  rw [tree5196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5194 coloured5194 at child
  try dsimp only [live5196, coloured5196]
  rw [child]
  dsimp only [result5194]
  have child := child1
  unfold live5195 coloured5195 at child
  try dsimp only [live5196, coloured5196]
  rw [child]
  dsimp only [result5195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5197_agree_conditional : tree5197 = literal5197 := by
  rw [tree5197_def]
  rfl
theorem node5197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5197 live5197 coloured5197 = result5197 := by
  rw [tree5197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5198_agree_conditional
    (child0 : tree5196 = literal5196)
    (child1 : tree5197 = literal5197) : tree5198 = literal5198 := by
  rw [tree5198_def, child0, child1]
  rfl
theorem node5198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5196 live5196 coloured5196 = result5196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5197 live5197 coloured5197 = result5197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5198 live5198 coloured5198 = result5198 := by
  rw [tree5198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5196 coloured5196 at child
  try dsimp only [live5198, coloured5198]
  rw [child]
  dsimp only [result5196]
  have child := child1
  unfold live5197 coloured5197 at child
  try dsimp only [live5198, coloured5198]
  rw [child]
  dsimp only [result5197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5199_agree_conditional : tree5199 = literal5199 := by
  rw [tree5199_def]
  rfl
theorem node5199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5199 live5199 coloured5199 = result5199 := by
  rw [tree5199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5200_agree_conditional
    (child0 : tree5198 = literal5198)
    (child1 : tree5199 = literal5199) : tree5200 = literal5200 := by
  rw [tree5200_def, child0, child1]
  rfl
theorem node5200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5198 live5198 coloured5198 = result5198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5199 live5199 coloured5199 = result5199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5200 live5200 coloured5200 = result5200 := by
  rw [tree5200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5198 coloured5198 at child
  try dsimp only [live5200, coloured5200]
  rw [child]
  dsimp only [result5198]
  have child := child1
  unfold live5199 coloured5199 at child
  try dsimp only [live5200, coloured5200]
  rw [child]
  dsimp only [result5199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5201_agree_conditional : tree5201 = literal5201 := by
  rw [tree5201_def]
  rfl
theorem node5201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5201 live5201 coloured5201 = result5201 := by
  rw [tree5201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5202_agree_conditional
    (child0 : tree5200 = literal5200)
    (child1 : tree5201 = literal5201) : tree5202 = literal5202 := by
  rw [tree5202_def, child0, child1]
  rfl
theorem node5202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5200 live5200 coloured5200 = result5200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5201 live5201 coloured5201 = result5201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5202 live5202 coloured5202 = result5202 := by
  rw [tree5202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5200 coloured5200 at child
  try dsimp only [live5202, coloured5202]
  rw [child]
  dsimp only [result5200]
  have child := child1
  unfold live5201 coloured5201 at child
  try dsimp only [live5202, coloured5202]
  rw [child]
  dsimp only [result5201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5203_agree_conditional : tree5203 = literal5203 := by
  rw [tree5203_def]
  rfl
theorem node5203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5203 live5203 coloured5203 = result5203 := by
  rw [tree5203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5204_agree_conditional
    (child0 : tree5202 = literal5202)
    (child1 : tree5203 = literal5203) : tree5204 = literal5204 := by
  rw [tree5204_def, child0, child1]
  rfl
theorem node5204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5202 live5202 coloured5202 = result5202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5203 live5203 coloured5203 = result5203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5204 live5204 coloured5204 = result5204 := by
  rw [tree5204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5202 coloured5202 at child
  try dsimp only [live5204, coloured5204]
  rw [child]
  dsimp only [result5202]
  have child := child1
  unfold live5203 coloured5203 at child
  try dsimp only [live5204, coloured5204]
  rw [child]
  dsimp only [result5203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5205_agree_conditional : tree5205 = literal5205 := by
  rw [tree5205_def]
  rfl
theorem node5205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5205 live5205 coloured5205 = result5205 := by
  rw [tree5205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5206_agree_conditional
    (child0 : tree5204 = literal5204)
    (child1 : tree5205 = literal5205) : tree5206 = literal5206 := by
  rw [tree5206_def, child0, child1]
  rfl
theorem node5206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5204 live5204 coloured5204 = result5204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5205 live5205 coloured5205 = result5205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5206 live5206 coloured5206 = result5206 := by
  rw [tree5206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5204 coloured5204 at child
  try dsimp only [live5206, coloured5206]
  rw [child]
  dsimp only [result5204]
  have child := child1
  unfold live5205 coloured5205 at child
  try dsimp only [live5206, coloured5206]
  rw [child]
  dsimp only [result5205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5207_agree_conditional : tree5207 = literal5207 := by
  rw [tree5207_def]
  rfl
theorem node5207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5207 live5207 coloured5207 = result5207 := by
  rw [tree5207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5208_agree_conditional
    (child0 : tree5206 = literal5206)
    (child1 : tree5207 = literal5207) : tree5208 = literal5208 := by
  rw [tree5208_def, child0, child1]
  rfl
theorem node5208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5206 live5206 coloured5206 = result5206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5207 live5207 coloured5207 = result5207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5208 live5208 coloured5208 = result5208 := by
  rw [tree5208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5206 coloured5206 at child
  try dsimp only [live5208, coloured5208]
  rw [child]
  dsimp only [result5206]
  have child := child1
  unfold live5207 coloured5207 at child
  try dsimp only [live5208, coloured5208]
  rw [child]
  dsimp only [result5207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5209_agree_conditional : tree5209 = literal5209 := by
  rw [tree5209_def]
  rfl
theorem node5209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5209 live5209 coloured5209 = result5209 := by
  rw [tree5209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5210_agree_conditional
    (child0 : tree5208 = literal5208)
    (child1 : tree5209 = literal5209) : tree5210 = literal5210 := by
  rw [tree5210_def, child0, child1]
  rfl
theorem node5210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5208 live5208 coloured5208 = result5208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5209 live5209 coloured5209 = result5209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5210 live5210 coloured5210 = result5210 := by
  rw [tree5210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5208 coloured5208 at child
  try dsimp only [live5210, coloured5210]
  rw [child]
  dsimp only [result5208]
  have child := child1
  unfold live5209 coloured5209 at child
  try dsimp only [live5210, coloured5210]
  rw [child]
  dsimp only [result5209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5211_agree_conditional : tree5211 = literal5211 := by
  rw [tree5211_def]
  rfl
theorem node5211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5211 live5211 coloured5211 = result5211 := by
  rw [tree5211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5212_agree_conditional
    (child0 : tree5210 = literal5210)
    (child1 : tree5211 = literal5211) : tree5212 = literal5212 := by
  rw [tree5212_def, child0, child1]
  rfl
theorem node5212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5210 live5210 coloured5210 = result5210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5211 live5211 coloured5211 = result5211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5212 live5212 coloured5212 = result5212 := by
  rw [tree5212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5210 coloured5210 at child
  try dsimp only [live5212, coloured5212]
  rw [child]
  dsimp only [result5210]
  have child := child1
  unfold live5211 coloured5211 at child
  try dsimp only [live5212, coloured5212]
  rw [child]
  dsimp only [result5211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5213_agree_conditional : tree5213 = literal5213 := by
  rw [tree5213_def]
  rfl
theorem node5213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5213 live5213 coloured5213 = result5213 := by
  rw [tree5213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5214_agree_conditional
    (child0 : tree5212 = literal5212)
    (child1 : tree5213 = literal5213) : tree5214 = literal5214 := by
  rw [tree5214_def, child0, child1]
  rfl
theorem node5214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5212 live5212 coloured5212 = result5212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5213 live5213 coloured5213 = result5213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5214 live5214 coloured5214 = result5214 := by
  rw [tree5214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5212 coloured5212 at child
  try dsimp only [live5214, coloured5214]
  rw [child]
  dsimp only [result5212]
  have child := child1
  unfold live5213 coloured5213 at child
  try dsimp only [live5214, coloured5214]
  rw [child]
  dsimp only [result5213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5215_agree_conditional : tree5215 = literal5215 := by
  rw [tree5215_def]
  rfl
theorem node5215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5215 live5215 coloured5215 = result5215 := by
  rw [tree5215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5216_agree_conditional
    (child0 : tree5214 = literal5214)
    (child1 : tree5215 = literal5215) : tree5216 = literal5216 := by
  rw [tree5216_def, child0, child1]
  rfl
theorem node5216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5214 live5214 coloured5214 = result5214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5215 live5215 coloured5215 = result5215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5216 live5216 coloured5216 = result5216 := by
  rw [tree5216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5214 coloured5214 at child
  try dsimp only [live5216, coloured5216]
  rw [child]
  dsimp only [result5214]
  have child := child1
  unfold live5215 coloured5215 at child
  try dsimp only [live5216, coloured5216]
  rw [child]
  dsimp only [result5215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5217_agree_conditional : tree5217 = literal5217 := by
  rw [tree5217_def]
  rfl
theorem node5217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5217 live5217 coloured5217 = result5217 := by
  rw [tree5217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5218_agree_conditional
    (child0 : tree5216 = literal5216)
    (child1 : tree5217 = literal5217) : tree5218 = literal5218 := by
  rw [tree5218_def, child0, child1]
  rfl
theorem node5218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5216 live5216 coloured5216 = result5216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5217 live5217 coloured5217 = result5217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5218 live5218 coloured5218 = result5218 := by
  rw [tree5218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5216 coloured5216 at child
  try dsimp only [live5218, coloured5218]
  rw [child]
  dsimp only [result5216]
  have child := child1
  unfold live5217 coloured5217 at child
  try dsimp only [live5218, coloured5218]
  rw [child]
  dsimp only [result5217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5219_agree_conditional : tree5219 = literal5219 := by
  rw [tree5219_def]
  rfl
theorem node5219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5219 live5219 coloured5219 = result5219 := by
  rw [tree5219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5220_agree_conditional
    (child0 : tree5218 = literal5218)
    (child1 : tree5219 = literal5219) : tree5220 = literal5220 := by
  rw [tree5220_def, child0, child1]
  rfl
theorem node5220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5218 live5218 coloured5218 = result5218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5219 live5219 coloured5219 = result5219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5220 live5220 coloured5220 = result5220 := by
  rw [tree5220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5218 coloured5218 at child
  try dsimp only [live5220, coloured5220]
  rw [child]
  dsimp only [result5218]
  have child := child1
  unfold live5219 coloured5219 at child
  try dsimp only [live5220, coloured5220]
  rw [child]
  dsimp only [result5219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5221_agree_conditional : tree5221 = literal5221 := by
  rw [tree5221_def]
  rfl
theorem node5221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5221 live5221 coloured5221 = result5221 := by
  rw [tree5221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5222_agree_conditional
    (child0 : tree5220 = literal5220)
    (child1 : tree5221 = literal5221) : tree5222 = literal5222 := by
  rw [tree5222_def, child0, child1]
  rfl
theorem node5222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5220 live5220 coloured5220 = result5220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5221 live5221 coloured5221 = result5221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5222 live5222 coloured5222 = result5222 := by
  rw [tree5222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5220 coloured5220 at child
  try dsimp only [live5222, coloured5222]
  rw [child]
  dsimp only [result5220]
  have child := child1
  unfold live5221 coloured5221 at child
  try dsimp only [live5222, coloured5222]
  rw [child]
  dsimp only [result5221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5223_agree_conditional : tree5223 = literal5223 := by
  rw [tree5223_def]
  rfl
theorem node5223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5223 live5223 coloured5223 = result5223 := by
  rw [tree5223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5224_agree_conditional
    (child0 : tree5222 = literal5222)
    (child1 : tree5223 = literal5223) : tree5224 = literal5224 := by
  rw [tree5224_def, child0, child1]
  rfl
theorem node5224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5222 live5222 coloured5222 = result5222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5223 live5223 coloured5223 = result5223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5224 live5224 coloured5224 = result5224 := by
  rw [tree5224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5222 coloured5222 at child
  try dsimp only [live5224, coloured5224]
  rw [child]
  dsimp only [result5222]
  have child := child1
  unfold live5223 coloured5223 at child
  try dsimp only [live5224, coloured5224]
  rw [child]
  dsimp only [result5223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5225_agree_conditional : tree5225 = literal5225 := by
  rw [tree5225_def]
  rfl
theorem node5225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5225 live5225 coloured5225 = result5225 := by
  rw [tree5225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5226_agree_conditional
    (child0 : tree5224 = literal5224)
    (child1 : tree5225 = literal5225) : tree5226 = literal5226 := by
  rw [tree5226_def, child0, child1]
  rfl
theorem node5226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5224 live5224 coloured5224 = result5224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5225 live5225 coloured5225 = result5225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5226 live5226 coloured5226 = result5226 := by
  rw [tree5226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5224 coloured5224 at child
  try dsimp only [live5226, coloured5226]
  rw [child]
  dsimp only [result5224]
  have child := child1
  unfold live5225 coloured5225 at child
  try dsimp only [live5226, coloured5226]
  rw [child]
  dsimp only [result5225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5227_agree_conditional : tree5227 = literal5227 := by
  rw [tree5227_def]
  rfl
theorem node5227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5227 live5227 coloured5227 = result5227 := by
  rw [tree5227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5228_agree_conditional
    (child0 : tree5226 = literal5226)
    (child1 : tree5227 = literal5227) : tree5228 = literal5228 := by
  rw [tree5228_def, child0, child1]
  rfl
theorem node5228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5226 live5226 coloured5226 = result5226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5227 live5227 coloured5227 = result5227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5228 live5228 coloured5228 = result5228 := by
  rw [tree5228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5226 coloured5226 at child
  try dsimp only [live5228, coloured5228]
  rw [child]
  dsimp only [result5226]
  have child := child1
  unfold live5227 coloured5227 at child
  try dsimp only [live5228, coloured5228]
  rw [child]
  dsimp only [result5227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5229_agree_conditional : tree5229 = literal5229 := by
  rw [tree5229_def]
  rfl
theorem node5229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5229 live5229 coloured5229 = result5229 := by
  rw [tree5229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5230_agree_conditional
    (child0 : tree5228 = literal5228)
    (child1 : tree5229 = literal5229) : tree5230 = literal5230 := by
  rw [tree5230_def, child0, child1]
  rfl
theorem node5230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5228 live5228 coloured5228 = result5228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5229 live5229 coloured5229 = result5229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5230 live5230 coloured5230 = result5230 := by
  rw [tree5230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5228 coloured5228 at child
  try dsimp only [live5230, coloured5230]
  rw [child]
  dsimp only [result5228]
  have child := child1
  unfold live5229 coloured5229 at child
  try dsimp only [live5230, coloured5230]
  rw [child]
  dsimp only [result5229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5231_agree_conditional : tree5231 = literal5231 := by
  rw [tree5231_def]
  rfl
theorem node5231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5231 live5231 coloured5231 = result5231 := by
  rw [tree5231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5232_agree_conditional
    (child0 : tree5230 = literal5230)
    (child1 : tree5231 = literal5231) : tree5232 = literal5232 := by
  rw [tree5232_def, child0, child1]
  rfl
theorem node5232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5230 live5230 coloured5230 = result5230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5231 live5231 coloured5231 = result5231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5232 live5232 coloured5232 = result5232 := by
  rw [tree5232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5230 coloured5230 at child
  try dsimp only [live5232, coloured5232]
  rw [child]
  dsimp only [result5230]
  have child := child1
  unfold live5231 coloured5231 at child
  try dsimp only [live5232, coloured5232]
  rw [child]
  dsimp only [result5231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5233_agree_conditional : tree5233 = literal5233 := by
  rw [tree5233_def]
  rfl
theorem node5233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5233 live5233 coloured5233 = result5233 := by
  rw [tree5233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5234_agree_conditional
    (child0 : tree5232 = literal5232)
    (child1 : tree5233 = literal5233) : tree5234 = literal5234 := by
  rw [tree5234_def, child0, child1]
  rfl
theorem node5234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5232 live5232 coloured5232 = result5232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5233 live5233 coloured5233 = result5233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5234 live5234 coloured5234 = result5234 := by
  rw [tree5234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5232 coloured5232 at child
  try dsimp only [live5234, coloured5234]
  rw [child]
  dsimp only [result5232]
  have child := child1
  unfold live5233 coloured5233 at child
  try dsimp only [live5234, coloured5234]
  rw [child]
  dsimp only [result5233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5235_agree_conditional : tree5235 = literal5235 := by
  rw [tree5235_def]
  rfl
theorem node5235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5235 live5235 coloured5235 = result5235 := by
  rw [tree5235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5236_agree_conditional
    (child0 : tree5234 = literal5234)
    (child1 : tree5235 = literal5235) : tree5236 = literal5236 := by
  rw [tree5236_def, child0, child1]
  rfl
theorem node5236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5234 live5234 coloured5234 = result5234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5235 live5235 coloured5235 = result5235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5236 live5236 coloured5236 = result5236 := by
  rw [tree5236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5234 coloured5234 at child
  try dsimp only [live5236, coloured5236]
  rw [child]
  dsimp only [result5234]
  have child := child1
  unfold live5235 coloured5235 at child
  try dsimp only [live5236, coloured5236]
  rw [child]
  dsimp only [result5235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5237_agree_conditional : tree5237 = literal5237 := by
  rw [tree5237_def]
  rfl
theorem node5237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5237 live5237 coloured5237 = result5237 := by
  rw [tree5237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5238_agree_conditional
    (child0 : tree5236 = literal5236)
    (child1 : tree5237 = literal5237) : tree5238 = literal5238 := by
  rw [tree5238_def, child0, child1]
  rfl
theorem node5238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5236 live5236 coloured5236 = result5236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5237 live5237 coloured5237 = result5237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5238 live5238 coloured5238 = result5238 := by
  rw [tree5238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5236 coloured5236 at child
  try dsimp only [live5238, coloured5238]
  rw [child]
  dsimp only [result5236]
  have child := child1
  unfold live5237 coloured5237 at child
  try dsimp only [live5238, coloured5238]
  rw [child]
  dsimp only [result5237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5239_agree_conditional : tree5239 = literal5239 := by
  rw [tree5239_def]
  rfl
theorem node5239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5239 live5239 coloured5239 = result5239 := by
  rw [tree5239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5240_agree_conditional
    (child0 : tree5238 = literal5238)
    (child1 : tree5239 = literal5239) : tree5240 = literal5240 := by
  rw [tree5240_def, child0, child1]
  rfl
theorem node5240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5238 live5238 coloured5238 = result5238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5239 live5239 coloured5239 = result5239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5240 live5240 coloured5240 = result5240 := by
  rw [tree5240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5238 coloured5238 at child
  try dsimp only [live5240, coloured5240]
  rw [child]
  dsimp only [result5238]
  have child := child1
  unfold live5239 coloured5239 at child
  try dsimp only [live5240, coloured5240]
  rw [child]
  dsimp only [result5239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5241_agree_conditional : tree5241 = literal5241 := by
  rw [tree5241_def]
  rfl
theorem node5241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5241 live5241 coloured5241 = result5241 := by
  rw [tree5241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5242_agree_conditional
    (child0 : tree5240 = literal5240)
    (child1 : tree5241 = literal5241) : tree5242 = literal5242 := by
  rw [tree5242_def, child0, child1]
  rfl
theorem node5242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5240 live5240 coloured5240 = result5240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5241 live5241 coloured5241 = result5241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5242 live5242 coloured5242 = result5242 := by
  rw [tree5242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5240 coloured5240 at child
  try dsimp only [live5242, coloured5242]
  rw [child]
  dsimp only [result5240]
  have child := child1
  unfold live5241 coloured5241 at child
  try dsimp only [live5242, coloured5242]
  rw [child]
  dsimp only [result5241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5243_agree_conditional : tree5243 = literal5243 := by
  rw [tree5243_def]
  rfl
theorem node5243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5243 live5243 coloured5243 = result5243 := by
  rw [tree5243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5244_agree_conditional
    (child0 : tree5242 = literal5242)
    (child1 : tree5243 = literal5243) : tree5244 = literal5244 := by
  rw [tree5244_def, child0, child1]
  rfl
theorem node5244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5242 live5242 coloured5242 = result5242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5243 live5243 coloured5243 = result5243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5244 live5244 coloured5244 = result5244 := by
  rw [tree5244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5242 coloured5242 at child
  try dsimp only [live5244, coloured5244]
  rw [child]
  dsimp only [result5242]
  have child := child1
  unfold live5243 coloured5243 at child
  try dsimp only [live5244, coloured5244]
  rw [child]
  dsimp only [result5243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5245_agree_conditional : tree5245 = literal5245 := by
  rw [tree5245_def]
  rfl
theorem node5245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5245 live5245 coloured5245 = result5245 := by
  rw [tree5245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5246_agree_conditional
    (child0 : tree5244 = literal5244)
    (child1 : tree5245 = literal5245) : tree5246 = literal5246 := by
  rw [tree5246_def, child0, child1]
  rfl
theorem node5246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5244 live5244 coloured5244 = result5244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5245 live5245 coloured5245 = result5245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5246 live5246 coloured5246 = result5246 := by
  rw [tree5246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5244 coloured5244 at child
  try dsimp only [live5246, coloured5246]
  rw [child]
  dsimp only [result5244]
  have child := child1
  unfold live5245 coloured5245 at child
  try dsimp only [live5246, coloured5246]
  rw [child]
  dsimp only [result5245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5247_agree_conditional : tree5247 = literal5247 := by
  rw [tree5247_def]
  rfl
theorem node5247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5247 live5247 coloured5247 = result5247 := by
  rw [tree5247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5248_agree_conditional
    (child0 : tree5246 = literal5246)
    (child1 : tree5247 = literal5247) : tree5248 = literal5248 := by
  rw [tree5248_def, child0, child1]
  rfl
theorem node5248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5246 live5246 coloured5246 = result5246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5247 live5247 coloured5247 = result5247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5248 live5248 coloured5248 = result5248 := by
  rw [tree5248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5246 coloured5246 at child
  try dsimp only [live5248, coloured5248]
  rw [child]
  dsimp only [result5246]
  have child := child1
  unfold live5247 coloured5247 at child
  try dsimp only [live5248, coloured5248]
  rw [child]
  dsimp only [result5247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5249_agree_conditional : tree5249 = literal5249 := by
  rw [tree5249_def]
  rfl
theorem node5249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5249 live5249 coloured5249 = result5249 := by
  rw [tree5249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5250_agree_conditional
    (child0 : tree5248 = literal5248)
    (child1 : tree5249 = literal5249) : tree5250 = literal5250 := by
  rw [tree5250_def, child0, child1]
  rfl
theorem node5250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5248 live5248 coloured5248 = result5248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5249 live5249 coloured5249 = result5249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5250 live5250 coloured5250 = result5250 := by
  rw [tree5250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5248 coloured5248 at child
  try dsimp only [live5250, coloured5250]
  rw [child]
  dsimp only [result5248]
  have child := child1
  unfold live5249 coloured5249 at child
  try dsimp only [live5250, coloured5250]
  rw [child]
  dsimp only [result5249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5251_agree_conditional : tree5251 = literal5251 := by
  rw [tree5251_def]
  rfl
theorem node5251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5251 live5251 coloured5251 = result5251 := by
  rw [tree5251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5252_agree_conditional
    (child0 : tree5250 = literal5250)
    (child1 : tree5251 = literal5251) : tree5252 = literal5252 := by
  rw [tree5252_def, child0, child1]
  rfl
theorem node5252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5250 live5250 coloured5250 = result5250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5251 live5251 coloured5251 = result5251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5252 live5252 coloured5252 = result5252 := by
  rw [tree5252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5250 coloured5250 at child
  try dsimp only [live5252, coloured5252]
  rw [child]
  dsimp only [result5250]
  have child := child1
  unfold live5251 coloured5251 at child
  try dsimp only [live5252, coloured5252]
  rw [child]
  dsimp only [result5251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5253_agree_conditional : tree5253 = literal5253 := by
  rw [tree5253_def]
  rfl
theorem node5253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5253 live5253 coloured5253 = result5253 := by
  rw [tree5253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5254_agree_conditional
    (child0 : tree5252 = literal5252)
    (child1 : tree5253 = literal5253) : tree5254 = literal5254 := by
  rw [tree5254_def, child0, child1]
  rfl
theorem node5254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5252 live5252 coloured5252 = result5252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5253 live5253 coloured5253 = result5253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5254 live5254 coloured5254 = result5254 := by
  rw [tree5254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5252 coloured5252 at child
  try dsimp only [live5254, coloured5254]
  rw [child]
  dsimp only [result5252]
  have child := child1
  unfold live5253 coloured5253 at child
  try dsimp only [live5254, coloured5254]
  rw [child]
  dsimp only [result5253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5255_agree_conditional : tree5255 = literal5255 := by
  rw [tree5255_def]
  rfl
theorem node5255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5255 live5255 coloured5255 = result5255 := by
  rw [tree5255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5256_agree_conditional
    (child0 : tree5254 = literal5254)
    (child1 : tree5255 = literal5255) : tree5256 = literal5256 := by
  rw [tree5256_def, child0, child1]
  rfl
theorem node5256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5254 live5254 coloured5254 = result5254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5255 live5255 coloured5255 = result5255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5256 live5256 coloured5256 = result5256 := by
  rw [tree5256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5254 coloured5254 at child
  try dsimp only [live5256, coloured5256]
  rw [child]
  dsimp only [result5254]
  have child := child1
  unfold live5255 coloured5255 at child
  try dsimp only [live5256, coloured5256]
  rw [child]
  dsimp only [result5255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5257_agree_conditional : tree5257 = literal5257 := by
  rw [tree5257_def]
  rfl
theorem node5257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5257 live5257 coloured5257 = result5257 := by
  rw [tree5257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5258_agree_conditional
    (child0 : tree5256 = literal5256)
    (child1 : tree5257 = literal5257) : tree5258 = literal5258 := by
  rw [tree5258_def, child0, child1]
  rfl
theorem node5258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5256 live5256 coloured5256 = result5256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5257 live5257 coloured5257 = result5257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5258 live5258 coloured5258 = result5258 := by
  rw [tree5258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5256 coloured5256 at child
  try dsimp only [live5258, coloured5258]
  rw [child]
  dsimp only [result5256]
  have child := child1
  unfold live5257 coloured5257 at child
  try dsimp only [live5258, coloured5258]
  rw [child]
  dsimp only [result5257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5259_agree_conditional : tree5259 = literal5259 := by
  rw [tree5259_def]
  rfl
theorem node5259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5259 live5259 coloured5259 = result5259 := by
  rw [tree5259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5260_agree_conditional
    (child0 : tree5258 = literal5258)
    (child1 : tree5259 = literal5259) : tree5260 = literal5260 := by
  rw [tree5260_def, child0, child1]
  rfl
theorem node5260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5258 live5258 coloured5258 = result5258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5259 live5259 coloured5259 = result5259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5260 live5260 coloured5260 = result5260 := by
  rw [tree5260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5258 coloured5258 at child
  try dsimp only [live5260, coloured5260]
  rw [child]
  dsimp only [result5258]
  have child := child1
  unfold live5259 coloured5259 at child
  try dsimp only [live5260, coloured5260]
  rw [child]
  dsimp only [result5259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5261_agree_conditional : tree5261 = literal5261 := by
  rw [tree5261_def]
  rfl
theorem node5261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5261 live5261 coloured5261 = result5261 := by
  rw [tree5261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5262_agree_conditional
    (child0 : tree5260 = literal5260)
    (child1 : tree5261 = literal5261) : tree5262 = literal5262 := by
  rw [tree5262_def, child0, child1]
  rfl
theorem node5262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5260 live5260 coloured5260 = result5260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5261 live5261 coloured5261 = result5261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5262 live5262 coloured5262 = result5262 := by
  rw [tree5262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5260 coloured5260 at child
  try dsimp only [live5262, coloured5262]
  rw [child]
  dsimp only [result5260]
  have child := child1
  unfold live5261 coloured5261 at child
  try dsimp only [live5262, coloured5262]
  rw [child]
  dsimp only [result5261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5263_agree_conditional : tree5263 = literal5263 := by
  rw [tree5263_def]
  rfl
theorem node5263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5263 live5263 coloured5263 = result5263 := by
  rw [tree5263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5264_agree_conditional
    (child0 : tree5262 = literal5262)
    (child1 : tree5263 = literal5263) : tree5264 = literal5264 := by
  rw [tree5264_def, child0, child1]
  rfl
theorem node5264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5262 live5262 coloured5262 = result5262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5263 live5263 coloured5263 = result5263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5264 live5264 coloured5264 = result5264 := by
  rw [tree5264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5262 coloured5262 at child
  try dsimp only [live5264, coloured5264]
  rw [child]
  dsimp only [result5262]
  have child := child1
  unfold live5263 coloured5263 at child
  try dsimp only [live5264, coloured5264]
  rw [child]
  dsimp only [result5263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5265_agree_conditional : tree5265 = literal5265 := by
  rw [tree5265_def]
  rfl
theorem node5265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5265 live5265 coloured5265 = result5265 := by
  rw [tree5265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5266_agree_conditional
    (child0 : tree5264 = literal5264)
    (child1 : tree5265 = literal5265) : tree5266 = literal5266 := by
  rw [tree5266_def, child0, child1]
  rfl
theorem node5266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5264 live5264 coloured5264 = result5264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5265 live5265 coloured5265 = result5265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5266 live5266 coloured5266 = result5266 := by
  rw [tree5266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5264 coloured5264 at child
  try dsimp only [live5266, coloured5266]
  rw [child]
  dsimp only [result5264]
  have child := child1
  unfold live5265 coloured5265 at child
  try dsimp only [live5266, coloured5266]
  rw [child]
  dsimp only [result5265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5267_agree_conditional : tree5267 = literal5267 := by
  rw [tree5267_def]
  rfl
theorem node5267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5267 live5267 coloured5267 = result5267 := by
  rw [tree5267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5268_agree_conditional
    (child0 : tree5266 = literal5266)
    (child1 : tree5267 = literal5267) : tree5268 = literal5268 := by
  rw [tree5268_def, child0, child1]
  rfl
theorem node5268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5266 live5266 coloured5266 = result5266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5267 live5267 coloured5267 = result5267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5268 live5268 coloured5268 = result5268 := by
  rw [tree5268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5266 coloured5266 at child
  try dsimp only [live5268, coloured5268]
  rw [child]
  dsimp only [result5266]
  have child := child1
  unfold live5267 coloured5267 at child
  try dsimp only [live5268, coloured5268]
  rw [child]
  dsimp only [result5267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5269_agree_conditional : tree5269 = literal5269 := by
  rw [tree5269_def]
  rfl
theorem node5269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5269 live5269 coloured5269 = result5269 := by
  rw [tree5269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5270_agree_conditional
    (child0 : tree5268 = literal5268)
    (child1 : tree5269 = literal5269) : tree5270 = literal5270 := by
  rw [tree5270_def, child0, child1]
  rfl
theorem node5270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5268 live5268 coloured5268 = result5268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5269 live5269 coloured5269 = result5269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5270 live5270 coloured5270 = result5270 := by
  rw [tree5270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5268 coloured5268 at child
  try dsimp only [live5270, coloured5270]
  rw [child]
  dsimp only [result5268]
  have child := child1
  unfold live5269 coloured5269 at child
  try dsimp only [live5270, coloured5270]
  rw [child]
  dsimp only [result5269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5271_agree_conditional : tree5271 = literal5271 := by
  rw [tree5271_def]
  rfl
theorem node5271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5271 live5271 coloured5271 = result5271 := by
  rw [tree5271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5272_agree_conditional
    (child0 : tree5270 = literal5270)
    (child1 : tree5271 = literal5271) : tree5272 = literal5272 := by
  rw [tree5272_def, child0, child1]
  rfl
theorem node5272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5270 live5270 coloured5270 = result5270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5271 live5271 coloured5271 = result5271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5272 live5272 coloured5272 = result5272 := by
  rw [tree5272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5270 coloured5270 at child
  try dsimp only [live5272, coloured5272]
  rw [child]
  dsimp only [result5270]
  have child := child1
  unfold live5271 coloured5271 at child
  try dsimp only [live5272, coloured5272]
  rw [child]
  dsimp only [result5271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5273_agree_conditional : tree5273 = literal5273 := by
  rw [tree5273_def]
  rfl
theorem node5273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5273 live5273 coloured5273 = result5273 := by
  rw [tree5273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5274_agree_conditional
    (child0 : tree5272 = literal5272)
    (child1 : tree5273 = literal5273) : tree5274 = literal5274 := by
  rw [tree5274_def, child0, child1]
  rfl
theorem node5274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5272 live5272 coloured5272 = result5272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5273 live5273 coloured5273 = result5273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5274 live5274 coloured5274 = result5274 := by
  rw [tree5274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5272 coloured5272 at child
  try dsimp only [live5274, coloured5274]
  rw [child]
  dsimp only [result5272]
  have child := child1
  unfold live5273 coloured5273 at child
  try dsimp only [live5274, coloured5274]
  rw [child]
  dsimp only [result5273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5275_agree_conditional : tree5275 = literal5275 := by
  rw [tree5275_def]
  rfl
theorem node5275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5275 live5275 coloured5275 = result5275 := by
  rw [tree5275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5276_agree_conditional
    (child0 : tree5274 = literal5274)
    (child1 : tree5275 = literal5275) : tree5276 = literal5276 := by
  rw [tree5276_def, child0, child1]
  rfl
theorem node5276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5274 live5274 coloured5274 = result5274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5275 live5275 coloured5275 = result5275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5276 live5276 coloured5276 = result5276 := by
  rw [tree5276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5274 coloured5274 at child
  try dsimp only [live5276, coloured5276]
  rw [child]
  dsimp only [result5274]
  have child := child1
  unfold live5275 coloured5275 at child
  try dsimp only [live5276, coloured5276]
  rw [child]
  dsimp only [result5275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5277_agree_conditional : tree5277 = literal5277 := by
  rw [tree5277_def]
  rfl
theorem node5277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5277 live5277 coloured5277 = result5277 := by
  rw [tree5277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5278_agree_conditional
    (child0 : tree5276 = literal5276)
    (child1 : tree5277 = literal5277) : tree5278 = literal5278 := by
  rw [tree5278_def, child0, child1]
  rfl
theorem node5278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5276 live5276 coloured5276 = result5276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5277 live5277 coloured5277 = result5277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5278 live5278 coloured5278 = result5278 := by
  rw [tree5278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5276 coloured5276 at child
  try dsimp only [live5278, coloured5278]
  rw [child]
  dsimp only [result5276]
  have child := child1
  unfold live5277 coloured5277 at child
  try dsimp only [live5278, coloured5278]
  rw [child]
  dsimp only [result5277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5279_agree_conditional : tree5279 = literal5279 := by
  rw [tree5279_def]
  rfl
theorem node5279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5279 live5279 coloured5279 = result5279 := by
  rw [tree5279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
