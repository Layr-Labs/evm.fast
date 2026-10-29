import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages783.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages783
theorem tree192_agree_conditional
    (child0 : tree190 = literal190)
    (child1 : tree191 = literal191) : tree192 = literal192 := by
  rw [tree192_def, child0, child1]
  rfl
theorem node192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree190 live190 coloured190 = result190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree191 live191 coloured191 = result191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree192 live192 coloured192 = result192 := by
  rw [tree192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live190 coloured190 at child
  try dsimp only [live192, coloured192]
  rw [child]
  dsimp only [result190]
  have child := child1
  unfold live191 coloured191 at child
  try dsimp only [live192, coloured192]
  rw [child]
  dsimp only [result191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree193_agree_conditional
    (child0 : tree187 = literal187)
    (child1 : tree192 = literal192) : tree193 = literal193 := by
  rw [tree193_def, child0, child1]
  rfl
theorem node193_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree187 live187 coloured187 = result187)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree192 live192 coloured192 = result192) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree193 live193 coloured193 = result193 := by
  rw [tree193_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live187 coloured187 at child
  try dsimp only [live193, coloured193]
  rw [child]
  dsimp only [result187]
  have child := child1
  unfold live192 coloured192 at child
  try dsimp only [live193, coloured193]
  rw [child]
  dsimp only [result192]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree194_agree_conditional
    (child0 : tree184 = literal184)
    (child1 : tree193 = literal193) : tree194 = literal194 := by
  rw [tree194_def, child0, child1]
  rfl
theorem node194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree184 live184 coloured184 = result184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree193 live193 coloured193 = result193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree194 live194 coloured194 = result194 := by
  rw [tree194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live184 coloured184 at child
  try dsimp only [live194, coloured194]
  rw [child]
  dsimp only [result184]
  have child := child1
  unfold live193 coloured193 at child
  try dsimp only [live194, coloured194]
  rw [child]
  dsimp only [result193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree195_agree_conditional : tree195 = literal195 := by
  rw [tree195_def]
  rfl
theorem node195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree195 live195 coloured195 = result195 := by
  rw [tree195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree196_agree_conditional
    (child0 : tree194 = literal194)
    (child1 : tree195 = literal195) : tree196 = literal196 := by
  rw [tree196_def, child0, child1]
  rfl
theorem node196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree194 live194 coloured194 = result194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree195 live195 coloured195 = result195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree196 live196 coloured196 = result196 := by
  rw [tree196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live194 coloured194 at child
  try dsimp only [live196, coloured196]
  rw [child]
  dsimp only [result194]
  have child := child1
  unfold live195 coloured195 at child
  try dsimp only [live196, coloured196]
  rw [child]
  dsimp only [result195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree197_agree_conditional : tree197 = literal197 := by
  rw [tree197_def]
  rfl
theorem node197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree197 live197 coloured197 = result197 := by
  rw [tree197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree198_agree_conditional
    (child0 : tree196 = literal196)
    (child1 : tree197 = literal197) : tree198 = literal198 := by
  rw [tree198_def, child0, child1]
  rfl
theorem node198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree196 live196 coloured196 = result196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree197 live197 coloured197 = result197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree198 live198 coloured198 = result198 := by
  rw [tree198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live196 coloured196 at child
  try dsimp only [live198, coloured198]
  rw [child]
  dsimp only [result196]
  have child := child1
  unfold live197 coloured197 at child
  try dsimp only [live198, coloured198]
  rw [child]
  dsimp only [result197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree199_agree_conditional : tree199 = literal199 := by
  rw [tree199_def]
  rfl
theorem node199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree199 live199 coloured199 = result199 := by
  rw [tree199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree200_agree_conditional : tree200 = literal200 := by
  rw [tree200_def]
  rfl
theorem node200_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree200 live200 coloured200 = result200 := by
  rw [tree200_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree201_agree_conditional
    (child0 : tree199 = literal199)
    (child1 : tree200 = literal200) : tree201 = literal201 := by
  rw [tree201_def, child0, child1]
  rfl
theorem node201_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree199 live199 coloured199 = result199)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree200 live200 coloured200 = result200) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree201 live201 coloured201 = result201 := by
  rw [tree201_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live199 coloured199 at child
  try dsimp only [live201, coloured201]
  rw [child]
  dsimp only [result199]
  have child := child1
  unfold live200 coloured200 at child
  try dsimp only [live201, coloured201]
  rw [child]
  dsimp only [result200]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree202_agree_conditional : tree202 = literal202 := by
  rw [tree202_def]
  rfl
theorem node202_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree202 live202 coloured202 = result202 := by
  rw [tree202_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree203_agree_conditional : tree203 = literal203 := by
  rw [tree203_def]
  rfl
theorem node203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree203 live203 coloured203 = result203 := by
  rw [tree203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree204_agree_conditional
    (child0 : tree202 = literal202)
    (child1 : tree203 = literal203) : tree204 = literal204 := by
  rw [tree204_def, child0, child1]
  rfl
theorem node204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree202 live202 coloured202 = result202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree203 live203 coloured203 = result203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree204 live204 coloured204 = result204 := by
  rw [tree204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live202 coloured202 at child
  try dsimp only [live204, coloured204]
  rw [child]
  dsimp only [result202]
  have child := child1
  unfold live203 coloured203 at child
  try dsimp only [live204, coloured204]
  rw [child]
  dsimp only [result203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree205_agree_conditional : tree205 = literal205 := by
  rw [tree205_def]
  rfl
theorem node205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree205 live205 coloured205 = result205 := by
  rw [tree205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree206_agree_conditional
    (child0 : tree204 = literal204)
    (child1 : tree205 = literal205) : tree206 = literal206 := by
  rw [tree206_def, child0, child1]
  rfl
theorem node206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree204 live204 coloured204 = result204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree205 live205 coloured205 = result205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree206 live206 coloured206 = result206 := by
  rw [tree206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live204 coloured204 at child
  try dsimp only [live206, coloured206]
  rw [child]
  dsimp only [result204]
  have child := child1
  unfold live205 coloured205 at child
  try dsimp only [live206, coloured206]
  rw [child]
  dsimp only [result205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree207_agree_conditional
    (child0 : tree201 = literal201)
    (child1 : tree206 = literal206) : tree207 = literal207 := by
  rw [tree207_def, child0, child1]
  rfl
theorem node207_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree201 live201 coloured201 = result201)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree206 live206 coloured206 = result206) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree207 live207 coloured207 = result207 := by
  rw [tree207_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live201 coloured201 at child
  try dsimp only [live207, coloured207]
  rw [child]
  dsimp only [result201]
  have child := child1
  unfold live206 coloured206 at child
  try dsimp only [live207, coloured207]
  rw [child]
  dsimp only [result206]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree208_agree_conditional
    (child0 : tree198 = literal198)
    (child1 : tree207 = literal207) : tree208 = literal208 := by
  rw [tree208_def, child0, child1]
  rfl
theorem node208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree198 live198 coloured198 = result198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree207 live207 coloured207 = result207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree208 live208 coloured208 = result208 := by
  rw [tree208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live198 coloured198 at child
  try dsimp only [live208, coloured208]
  rw [child]
  dsimp only [result198]
  have child := child1
  unfold live207 coloured207 at child
  try dsimp only [live208, coloured208]
  rw [child]
  dsimp only [result207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree209_agree_conditional : tree209 = literal209 := by
  rw [tree209_def]
  rfl
theorem node209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree209 live209 coloured209 = result209 := by
  rw [tree209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree210_agree_conditional
    (child0 : tree208 = literal208)
    (child1 : tree209 = literal209) : tree210 = literal210 := by
  rw [tree210_def, child0, child1]
  rfl
theorem node210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree208 live208 coloured208 = result208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree209 live209 coloured209 = result209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree210 live210 coloured210 = result210 := by
  rw [tree210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live208 coloured208 at child
  try dsimp only [live210, coloured210]
  rw [child]
  dsimp only [result208]
  have child := child1
  unfold live209 coloured209 at child
  try dsimp only [live210, coloured210]
  rw [child]
  dsimp only [result209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree211_agree_conditional : tree211 = literal211 := by
  rw [tree211_def]
  rfl
theorem node211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree211 live211 coloured211 = result211 := by
  rw [tree211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree212_agree_conditional
    (child0 : tree210 = literal210)
    (child1 : tree211 = literal211) : tree212 = literal212 := by
  rw [tree212_def, child0, child1]
  rfl
theorem node212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree210 live210 coloured210 = result210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree211 live211 coloured211 = result211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree212 live212 coloured212 = result212 := by
  rw [tree212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live210 coloured210 at child
  try dsimp only [live212, coloured212]
  rw [child]
  dsimp only [result210]
  have child := child1
  unfold live211 coloured211 at child
  try dsimp only [live212, coloured212]
  rw [child]
  dsimp only [result211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree213_agree_conditional : tree213 = literal213 := by
  rw [tree213_def]
  rfl
theorem node213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree213 live213 coloured213 = result213 := by
  rw [tree213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree214_agree_conditional : tree214 = literal214 := by
  rw [tree214_def]
  rfl
theorem node214_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree214 live214 coloured214 = result214 := by
  rw [tree214_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree215_agree_conditional
    (child0 : tree213 = literal213)
    (child1 : tree214 = literal214) : tree215 = literal215 := by
  rw [tree215_def, child0, child1]
  rfl
theorem node215_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree213 live213 coloured213 = result213)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree214 live214 coloured214 = result214) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree215 live215 coloured215 = result215 := by
  rw [tree215_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live213 coloured213 at child
  try dsimp only [live215, coloured215]
  rw [child]
  dsimp only [result213]
  have child := child1
  unfold live214 coloured214 at child
  try dsimp only [live215, coloured215]
  rw [child]
  dsimp only [result214]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree216_agree_conditional : tree216 = literal216 := by
  rw [tree216_def]
  rfl
theorem node216_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree216 live216 coloured216 = result216 := by
  rw [tree216_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree217_agree_conditional : tree217 = literal217 := by
  rw [tree217_def]
  rfl
theorem node217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree217 live217 coloured217 = result217 := by
  rw [tree217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree218_agree_conditional
    (child0 : tree216 = literal216)
    (child1 : tree217 = literal217) : tree218 = literal218 := by
  rw [tree218_def, child0, child1]
  rfl
theorem node218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree216 live216 coloured216 = result216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree217 live217 coloured217 = result217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree218 live218 coloured218 = result218 := by
  rw [tree218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live216 coloured216 at child
  try dsimp only [live218, coloured218]
  rw [child]
  dsimp only [result216]
  have child := child1
  unfold live217 coloured217 at child
  try dsimp only [live218, coloured218]
  rw [child]
  dsimp only [result217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree219_agree_conditional : tree219 = literal219 := by
  rw [tree219_def]
  rfl
theorem node219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree219 live219 coloured219 = result219 := by
  rw [tree219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree220_agree_conditional
    (child0 : tree218 = literal218)
    (child1 : tree219 = literal219) : tree220 = literal220 := by
  rw [tree220_def, child0, child1]
  rfl
theorem node220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree218 live218 coloured218 = result218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree219 live219 coloured219 = result219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree220 live220 coloured220 = result220 := by
  rw [tree220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live218 coloured218 at child
  try dsimp only [live220, coloured220]
  rw [child]
  dsimp only [result218]
  have child := child1
  unfold live219 coloured219 at child
  try dsimp only [live220, coloured220]
  rw [child]
  dsimp only [result219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree221_agree_conditional
    (child0 : tree215 = literal215)
    (child1 : tree220 = literal220) : tree221 = literal221 := by
  rw [tree221_def, child0, child1]
  rfl
theorem node221_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree215 live215 coloured215 = result215)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree220 live220 coloured220 = result220) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree221 live221 coloured221 = result221 := by
  rw [tree221_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live215 coloured215 at child
  try dsimp only [live221, coloured221]
  rw [child]
  dsimp only [result215]
  have child := child1
  unfold live220 coloured220 at child
  try dsimp only [live221, coloured221]
  rw [child]
  dsimp only [result220]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree222_agree_conditional
    (child0 : tree212 = literal212)
    (child1 : tree221 = literal221) : tree222 = literal222 := by
  rw [tree222_def, child0, child1]
  rfl
theorem node222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree212 live212 coloured212 = result212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree221 live221 coloured221 = result221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree222 live222 coloured222 = result222 := by
  rw [tree222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live212 coloured212 at child
  try dsimp only [live222, coloured222]
  rw [child]
  dsimp only [result212]
  have child := child1
  unfold live221 coloured221 at child
  try dsimp only [live222, coloured222]
  rw [child]
  dsimp only [result221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree223_agree_conditional : tree223 = literal223 := by
  rw [tree223_def]
  rfl
theorem node223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree223 live223 coloured223 = result223 := by
  rw [tree223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree224_agree_conditional
    (child0 : tree222 = literal222)
    (child1 : tree223 = literal223) : tree224 = literal224 := by
  rw [tree224_def, child0, child1]
  rfl
theorem node224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree222 live222 coloured222 = result222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree223 live223 coloured223 = result223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree224 live224 coloured224 = result224 := by
  rw [tree224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live222 coloured222 at child
  try dsimp only [live224, coloured224]
  rw [child]
  dsimp only [result222]
  have child := child1
  unfold live223 coloured223 at child
  try dsimp only [live224, coloured224]
  rw [child]
  dsimp only [result223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree225_agree_conditional : tree225 = literal225 := by
  rw [tree225_def]
  rfl
theorem node225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree225 live225 coloured225 = result225 := by
  rw [tree225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree226_agree_conditional
    (child0 : tree224 = literal224)
    (child1 : tree225 = literal225) : tree226 = literal226 := by
  rw [tree226_def, child0, child1]
  rfl
theorem node226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree224 live224 coloured224 = result224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree225 live225 coloured225 = result225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree226 live226 coloured226 = result226 := by
  rw [tree226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live224 coloured224 at child
  try dsimp only [live226, coloured226]
  rw [child]
  dsimp only [result224]
  have child := child1
  unfold live225 coloured225 at child
  try dsimp only [live226, coloured226]
  rw [child]
  dsimp only [result225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree227_agree_conditional : tree227 = literal227 := by
  rw [tree227_def]
  rfl
theorem node227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree227 live227 coloured227 = result227 := by
  rw [tree227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree228_agree_conditional : tree228 = literal228 := by
  rw [tree228_def]
  rfl
theorem node228_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree228 live228 coloured228 = result228 := by
  rw [tree228_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree229_agree_conditional
    (child0 : tree227 = literal227)
    (child1 : tree228 = literal228) : tree229 = literal229 := by
  rw [tree229_def, child0, child1]
  rfl
theorem node229_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree227 live227 coloured227 = result227)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree228 live228 coloured228 = result228) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree229 live229 coloured229 = result229 := by
  rw [tree229_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live227 coloured227 at child
  try dsimp only [live229, coloured229]
  rw [child]
  dsimp only [result227]
  have child := child1
  unfold live228 coloured228 at child
  try dsimp only [live229, coloured229]
  rw [child]
  dsimp only [result228]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree230_agree_conditional : tree230 = literal230 := by
  rw [tree230_def]
  rfl
theorem node230_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree230 live230 coloured230 = result230 := by
  rw [tree230_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree231_agree_conditional : tree231 = literal231 := by
  rw [tree231_def]
  rfl
theorem node231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree231 live231 coloured231 = result231 := by
  rw [tree231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree232_agree_conditional
    (child0 : tree230 = literal230)
    (child1 : tree231 = literal231) : tree232 = literal232 := by
  rw [tree232_def, child0, child1]
  rfl
theorem node232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree230 live230 coloured230 = result230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree231 live231 coloured231 = result231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree232 live232 coloured232 = result232 := by
  rw [tree232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live230 coloured230 at child
  try dsimp only [live232, coloured232]
  rw [child]
  dsimp only [result230]
  have child := child1
  unfold live231 coloured231 at child
  try dsimp only [live232, coloured232]
  rw [child]
  dsimp only [result231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree233_agree_conditional : tree233 = literal233 := by
  rw [tree233_def]
  rfl
theorem node233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree233 live233 coloured233 = result233 := by
  rw [tree233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree234_agree_conditional
    (child0 : tree232 = literal232)
    (child1 : tree233 = literal233) : tree234 = literal234 := by
  rw [tree234_def, child0, child1]
  rfl
theorem node234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree232 live232 coloured232 = result232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree233 live233 coloured233 = result233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree234 live234 coloured234 = result234 := by
  rw [tree234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live232 coloured232 at child
  try dsimp only [live234, coloured234]
  rw [child]
  dsimp only [result232]
  have child := child1
  unfold live233 coloured233 at child
  try dsimp only [live234, coloured234]
  rw [child]
  dsimp only [result233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree235_agree_conditional
    (child0 : tree229 = literal229)
    (child1 : tree234 = literal234) : tree235 = literal235 := by
  rw [tree235_def, child0, child1]
  rfl
theorem node235_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree229 live229 coloured229 = result229)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree234 live234 coloured234 = result234) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree235 live235 coloured235 = result235 := by
  rw [tree235_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live229 coloured229 at child
  try dsimp only [live235, coloured235]
  rw [child]
  dsimp only [result229]
  have child := child1
  unfold live234 coloured234 at child
  try dsimp only [live235, coloured235]
  rw [child]
  dsimp only [result234]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree236_agree_conditional
    (child0 : tree226 = literal226)
    (child1 : tree235 = literal235) : tree236 = literal236 := by
  rw [tree236_def, child0, child1]
  rfl
theorem node236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree226 live226 coloured226 = result226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree235 live235 coloured235 = result235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree236 live236 coloured236 = result236 := by
  rw [tree236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live226 coloured226 at child
  try dsimp only [live236, coloured236]
  rw [child]
  dsimp only [result226]
  have child := child1
  unfold live235 coloured235 at child
  try dsimp only [live236, coloured236]
  rw [child]
  dsimp only [result235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree237_agree_conditional : tree237 = literal237 := by
  rw [tree237_def]
  rfl
theorem node237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree237 live237 coloured237 = result237 := by
  rw [tree237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree238_agree_conditional
    (child0 : tree236 = literal236)
    (child1 : tree237 = literal237) : tree238 = literal238 := by
  rw [tree238_def, child0, child1]
  rfl
theorem node238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree236 live236 coloured236 = result236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree237 live237 coloured237 = result237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree238 live238 coloured238 = result238 := by
  rw [tree238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live236 coloured236 at child
  try dsimp only [live238, coloured238]
  rw [child]
  dsimp only [result236]
  have child := child1
  unfold live237 coloured237 at child
  try dsimp only [live238, coloured238]
  rw [child]
  dsimp only [result237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree239_agree_conditional : tree239 = literal239 := by
  rw [tree239_def]
  rfl
theorem node239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree239 live239 coloured239 = result239 := by
  rw [tree239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree240_agree_conditional
    (child0 : tree238 = literal238)
    (child1 : tree239 = literal239) : tree240 = literal240 := by
  rw [tree240_def, child0, child1]
  rfl
theorem node240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree238 live238 coloured238 = result238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree239 live239 coloured239 = result239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree240 live240 coloured240 = result240 := by
  rw [tree240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live238 coloured238 at child
  try dsimp only [live240, coloured240]
  rw [child]
  dsimp only [result238]
  have child := child1
  unfold live239 coloured239 at child
  try dsimp only [live240, coloured240]
  rw [child]
  dsimp only [result239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree241_agree_conditional : tree241 = literal241 := by
  rw [tree241_def]
  rfl
theorem node241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree241 live241 coloured241 = result241 := by
  rw [tree241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree242_agree_conditional : tree242 = literal242 := by
  rw [tree242_def]
  rfl
theorem node242_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree242 live242 coloured242 = result242 := by
  rw [tree242_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree243_agree_conditional
    (child0 : tree241 = literal241)
    (child1 : tree242 = literal242) : tree243 = literal243 := by
  rw [tree243_def, child0, child1]
  rfl
theorem node243_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree241 live241 coloured241 = result241)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree242 live242 coloured242 = result242) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree243 live243 coloured243 = result243 := by
  rw [tree243_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live241 coloured241 at child
  try dsimp only [live243, coloured243]
  rw [child]
  dsimp only [result241]
  have child := child1
  unfold live242 coloured242 at child
  try dsimp only [live243, coloured243]
  rw [child]
  dsimp only [result242]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree244_agree_conditional : tree244 = literal244 := by
  rw [tree244_def]
  rfl
theorem node244_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree244 live244 coloured244 = result244 := by
  rw [tree244_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree245_agree_conditional : tree245 = literal245 := by
  rw [tree245_def]
  rfl
theorem node245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree245 live245 coloured245 = result245 := by
  rw [tree245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree246_agree_conditional
    (child0 : tree244 = literal244)
    (child1 : tree245 = literal245) : tree246 = literal246 := by
  rw [tree246_def, child0, child1]
  rfl
theorem node246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree244 live244 coloured244 = result244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree245 live245 coloured245 = result245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree246 live246 coloured246 = result246 := by
  rw [tree246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live244 coloured244 at child
  try dsimp only [live246, coloured246]
  rw [child]
  dsimp only [result244]
  have child := child1
  unfold live245 coloured245 at child
  try dsimp only [live246, coloured246]
  rw [child]
  dsimp only [result245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree247_agree_conditional : tree247 = literal247 := by
  rw [tree247_def]
  rfl
theorem node247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree247 live247 coloured247 = result247 := by
  rw [tree247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree248_agree_conditional
    (child0 : tree246 = literal246)
    (child1 : tree247 = literal247) : tree248 = literal248 := by
  rw [tree248_def, child0, child1]
  rfl
theorem node248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree246 live246 coloured246 = result246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree247 live247 coloured247 = result247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree248 live248 coloured248 = result248 := by
  rw [tree248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live246 coloured246 at child
  try dsimp only [live248, coloured248]
  rw [child]
  dsimp only [result246]
  have child := child1
  unfold live247 coloured247 at child
  try dsimp only [live248, coloured248]
  rw [child]
  dsimp only [result247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree249_agree_conditional
    (child0 : tree243 = literal243)
    (child1 : tree248 = literal248) : tree249 = literal249 := by
  rw [tree249_def, child0, child1]
  rfl
theorem node249_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree243 live243 coloured243 = result243)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree248 live248 coloured248 = result248) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree249 live249 coloured249 = result249 := by
  rw [tree249_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live243 coloured243 at child
  try dsimp only [live249, coloured249]
  rw [child]
  dsimp only [result243]
  have child := child1
  unfold live248 coloured248 at child
  try dsimp only [live249, coloured249]
  rw [child]
  dsimp only [result248]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree250_agree_conditional
    (child0 : tree240 = literal240)
    (child1 : tree249 = literal249) : tree250 = literal250 := by
  rw [tree250_def, child0, child1]
  rfl
theorem node250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree240 live240 coloured240 = result240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree249 live249 coloured249 = result249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree250 live250 coloured250 = result250 := by
  rw [tree250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live240 coloured240 at child
  try dsimp only [live250, coloured250]
  rw [child]
  dsimp only [result240]
  have child := child1
  unfold live249 coloured249 at child
  try dsimp only [live250, coloured250]
  rw [child]
  dsimp only [result249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree251_agree_conditional : tree251 = literal251 := by
  rw [tree251_def]
  rfl
theorem node251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree251 live251 coloured251 = result251 := by
  rw [tree251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree252_agree_conditional
    (child0 : tree250 = literal250)
    (child1 : tree251 = literal251) : tree252 = literal252 := by
  rw [tree252_def, child0, child1]
  rfl
theorem node252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree250 live250 coloured250 = result250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree251 live251 coloured251 = result251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree252 live252 coloured252 = result252 := by
  rw [tree252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live250 coloured250 at child
  try dsimp only [live252, coloured252]
  rw [child]
  dsimp only [result250]
  have child := child1
  unfold live251 coloured251 at child
  try dsimp only [live252, coloured252]
  rw [child]
  dsimp only [result251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree253_agree_conditional : tree253 = literal253 := by
  rw [tree253_def]
  rfl
theorem node253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree253 live253 coloured253 = result253 := by
  rw [tree253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree254_agree_conditional
    (child0 : tree252 = literal252)
    (child1 : tree253 = literal253) : tree254 = literal254 := by
  rw [tree254_def, child0, child1]
  rfl
theorem node254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree252 live252 coloured252 = result252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree253 live253 coloured253 = result253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree254 live254 coloured254 = result254 := by
  rw [tree254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live252 coloured252 at child
  try dsimp only [live254, coloured254]
  rw [child]
  dsimp only [result252]
  have child := child1
  unfold live253 coloured253 at child
  try dsimp only [live254, coloured254]
  rw [child]
  dsimp only [result253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree255_agree_conditional : tree255 = literal255 := by
  rw [tree255_def]
  rfl
theorem node255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree255 live255 coloured255 = result255 := by
  rw [tree255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree256_agree_conditional : tree256 = literal256 := by
  rw [tree256_def]
  rfl
theorem node256_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree256 live256 coloured256 = result256 := by
  rw [tree256_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree257_agree_conditional
    (child0 : tree255 = literal255)
    (child1 : tree256 = literal256) : tree257 = literal257 := by
  rw [tree257_def, child0, child1]
  rfl
theorem node257_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree255 live255 coloured255 = result255)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree256 live256 coloured256 = result256) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree257 live257 coloured257 = result257 := by
  rw [tree257_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live255 coloured255 at child
  try dsimp only [live257, coloured257]
  rw [child]
  dsimp only [result255]
  have child := child1
  unfold live256 coloured256 at child
  try dsimp only [live257, coloured257]
  rw [child]
  dsimp only [result256]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree258_agree_conditional : tree258 = literal258 := by
  rw [tree258_def]
  rfl
theorem node258_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree258 live258 coloured258 = result258 := by
  rw [tree258_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree259_agree_conditional : tree259 = literal259 := by
  rw [tree259_def]
  rfl
theorem node259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree259 live259 coloured259 = result259 := by
  rw [tree259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree260_agree_conditional
    (child0 : tree258 = literal258)
    (child1 : tree259 = literal259) : tree260 = literal260 := by
  rw [tree260_def, child0, child1]
  rfl
theorem node260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree258 live258 coloured258 = result258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree259 live259 coloured259 = result259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree260 live260 coloured260 = result260 := by
  rw [tree260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live258 coloured258 at child
  try dsimp only [live260, coloured260]
  rw [child]
  dsimp only [result258]
  have child := child1
  unfold live259 coloured259 at child
  try dsimp only [live260, coloured260]
  rw [child]
  dsimp only [result259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree261_agree_conditional : tree261 = literal261 := by
  rw [tree261_def]
  rfl
theorem node261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree261 live261 coloured261 = result261 := by
  rw [tree261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree262_agree_conditional
    (child0 : tree260 = literal260)
    (child1 : tree261 = literal261) : tree262 = literal262 := by
  rw [tree262_def, child0, child1]
  rfl
theorem node262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree260 live260 coloured260 = result260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree261 live261 coloured261 = result261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree262 live262 coloured262 = result262 := by
  rw [tree262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live260 coloured260 at child
  try dsimp only [live262, coloured262]
  rw [child]
  dsimp only [result260]
  have child := child1
  unfold live261 coloured261 at child
  try dsimp only [live262, coloured262]
  rw [child]
  dsimp only [result261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree263_agree_conditional
    (child0 : tree257 = literal257)
    (child1 : tree262 = literal262) : tree263 = literal263 := by
  rw [tree263_def, child0, child1]
  rfl
theorem node263_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree257 live257 coloured257 = result257)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree262 live262 coloured262 = result262) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree263 live263 coloured263 = result263 := by
  rw [tree263_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live257 coloured257 at child
  try dsimp only [live263, coloured263]
  rw [child]
  dsimp only [result257]
  have child := child1
  unfold live262 coloured262 at child
  try dsimp only [live263, coloured263]
  rw [child]
  dsimp only [result262]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree264_agree_conditional
    (child0 : tree254 = literal254)
    (child1 : tree263 = literal263) : tree264 = literal264 := by
  rw [tree264_def, child0, child1]
  rfl
theorem node264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree254 live254 coloured254 = result254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree263 live263 coloured263 = result263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree264 live264 coloured264 = result264 := by
  rw [tree264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live254 coloured254 at child
  try dsimp only [live264, coloured264]
  rw [child]
  dsimp only [result254]
  have child := child1
  unfold live263 coloured263 at child
  try dsimp only [live264, coloured264]
  rw [child]
  dsimp only [result263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree265_agree_conditional : tree265 = literal265 := by
  rw [tree265_def]
  rfl
theorem node265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree265 live265 coloured265 = result265 := by
  rw [tree265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree266_agree_conditional
    (child0 : tree264 = literal264)
    (child1 : tree265 = literal265) : tree266 = literal266 := by
  rw [tree266_def, child0, child1]
  rfl
theorem node266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree264 live264 coloured264 = result264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree265 live265 coloured265 = result265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree266 live266 coloured266 = result266 := by
  rw [tree266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live264 coloured264 at child
  try dsimp only [live266, coloured266]
  rw [child]
  dsimp only [result264]
  have child := child1
  unfold live265 coloured265 at child
  try dsimp only [live266, coloured266]
  rw [child]
  dsimp only [result265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree267_agree_conditional : tree267 = literal267 := by
  rw [tree267_def]
  rfl
theorem node267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree267 live267 coloured267 = result267 := by
  rw [tree267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree268_agree_conditional
    (child0 : tree266 = literal266)
    (child1 : tree267 = literal267) : tree268 = literal268 := by
  rw [tree268_def, child0, child1]
  rfl
theorem node268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree266 live266 coloured266 = result266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree267 live267 coloured267 = result267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree268 live268 coloured268 = result268 := by
  rw [tree268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live266 coloured266 at child
  try dsimp only [live268, coloured268]
  rw [child]
  dsimp only [result266]
  have child := child1
  unfold live267 coloured267 at child
  try dsimp only [live268, coloured268]
  rw [child]
  dsimp only [result267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree269_agree_conditional : tree269 = literal269 := by
  rw [tree269_def]
  rfl
theorem node269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree269 live269 coloured269 = result269 := by
  rw [tree269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree270_agree_conditional : tree270 = literal270 := by
  rw [tree270_def]
  rfl
theorem node270_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree270 live270 coloured270 = result270 := by
  rw [tree270_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree271_agree_conditional
    (child0 : tree269 = literal269)
    (child1 : tree270 = literal270) : tree271 = literal271 := by
  rw [tree271_def, child0, child1]
  rfl
theorem node271_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree269 live269 coloured269 = result269)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree270 live270 coloured270 = result270) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree271 live271 coloured271 = result271 := by
  rw [tree271_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live269 coloured269 at child
  try dsimp only [live271, coloured271]
  rw [child]
  dsimp only [result269]
  have child := child1
  unfold live270 coloured270 at child
  try dsimp only [live271, coloured271]
  rw [child]
  dsimp only [result270]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree272_agree_conditional : tree272 = literal272 := by
  rw [tree272_def]
  rfl
theorem node272_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree272 live272 coloured272 = result272 := by
  rw [tree272_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree273_agree_conditional : tree273 = literal273 := by
  rw [tree273_def]
  rfl
theorem node273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree273 live273 coloured273 = result273 := by
  rw [tree273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree274_agree_conditional
    (child0 : tree272 = literal272)
    (child1 : tree273 = literal273) : tree274 = literal274 := by
  rw [tree274_def, child0, child1]
  rfl
theorem node274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree272 live272 coloured272 = result272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree273 live273 coloured273 = result273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree274 live274 coloured274 = result274 := by
  rw [tree274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live272 coloured272 at child
  try dsimp only [live274, coloured274]
  rw [child]
  dsimp only [result272]
  have child := child1
  unfold live273 coloured273 at child
  try dsimp only [live274, coloured274]
  rw [child]
  dsimp only [result273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree275_agree_conditional : tree275 = literal275 := by
  rw [tree275_def]
  rfl
theorem node275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree275 live275 coloured275 = result275 := by
  rw [tree275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree276_agree_conditional
    (child0 : tree274 = literal274)
    (child1 : tree275 = literal275) : tree276 = literal276 := by
  rw [tree276_def, child0, child1]
  rfl
theorem node276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree274 live274 coloured274 = result274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree275 live275 coloured275 = result275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree276 live276 coloured276 = result276 := by
  rw [tree276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live274 coloured274 at child
  try dsimp only [live276, coloured276]
  rw [child]
  dsimp only [result274]
  have child := child1
  unfold live275 coloured275 at child
  try dsimp only [live276, coloured276]
  rw [child]
  dsimp only [result275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree277_agree_conditional
    (child0 : tree271 = literal271)
    (child1 : tree276 = literal276) : tree277 = literal277 := by
  rw [tree277_def, child0, child1]
  rfl
theorem node277_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree271 live271 coloured271 = result271)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree276 live276 coloured276 = result276) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree277 live277 coloured277 = result277 := by
  rw [tree277_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live271 coloured271 at child
  try dsimp only [live277, coloured277]
  rw [child]
  dsimp only [result271]
  have child := child1
  unfold live276 coloured276 at child
  try dsimp only [live277, coloured277]
  rw [child]
  dsimp only [result276]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree278_agree_conditional
    (child0 : tree268 = literal268)
    (child1 : tree277 = literal277) : tree278 = literal278 := by
  rw [tree278_def, child0, child1]
  rfl
theorem node278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree268 live268 coloured268 = result268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree277 live277 coloured277 = result277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree278 live278 coloured278 = result278 := by
  rw [tree278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live268 coloured268 at child
  try dsimp only [live278, coloured278]
  rw [child]
  dsimp only [result268]
  have child := child1
  unfold live277 coloured277 at child
  try dsimp only [live278, coloured278]
  rw [child]
  dsimp only [result277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree279_agree_conditional : tree279 = literal279 := by
  rw [tree279_def]
  rfl
theorem node279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree279 live279 coloured279 = result279 := by
  rw [tree279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree280_agree_conditional
    (child0 : tree278 = literal278)
    (child1 : tree279 = literal279) : tree280 = literal280 := by
  rw [tree280_def, child0, child1]
  rfl
theorem node280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree278 live278 coloured278 = result278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree279 live279 coloured279 = result279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree280 live280 coloured280 = result280 := by
  rw [tree280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live278 coloured278 at child
  try dsimp only [live280, coloured280]
  rw [child]
  dsimp only [result278]
  have child := child1
  unfold live279 coloured279 at child
  try dsimp only [live280, coloured280]
  rw [child]
  dsimp only [result279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree281_agree_conditional : tree281 = literal281 := by
  rw [tree281_def]
  rfl
theorem node281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree281 live281 coloured281 = result281 := by
  rw [tree281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree282_agree_conditional
    (child0 : tree280 = literal280)
    (child1 : tree281 = literal281) : tree282 = literal282 := by
  rw [tree282_def, child0, child1]
  rfl
theorem node282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree280 live280 coloured280 = result280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree281 live281 coloured281 = result281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree282 live282 coloured282 = result282 := by
  rw [tree282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live280 coloured280 at child
  try dsimp only [live282, coloured282]
  rw [child]
  dsimp only [result280]
  have child := child1
  unfold live281 coloured281 at child
  try dsimp only [live282, coloured282]
  rw [child]
  dsimp only [result281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree283_agree_conditional : tree283 = literal283 := by
  rw [tree283_def]
  rfl
theorem node283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree283 live283 coloured283 = result283 := by
  rw [tree283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree284_agree_conditional : tree284 = literal284 := by
  rw [tree284_def]
  rfl
theorem node284_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree284 live284 coloured284 = result284 := by
  rw [tree284_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree285_agree_conditional
    (child0 : tree283 = literal283)
    (child1 : tree284 = literal284) : tree285 = literal285 := by
  rw [tree285_def, child0, child1]
  rfl
theorem node285_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree283 live283 coloured283 = result283)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree284 live284 coloured284 = result284) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree285 live285 coloured285 = result285 := by
  rw [tree285_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live283 coloured283 at child
  try dsimp only [live285, coloured285]
  rw [child]
  dsimp only [result283]
  have child := child1
  unfold live284 coloured284 at child
  try dsimp only [live285, coloured285]
  rw [child]
  dsimp only [result284]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree286_agree_conditional : tree286 = literal286 := by
  rw [tree286_def]
  rfl
theorem node286_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree286 live286 coloured286 = result286 := by
  rw [tree286_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree287_agree_conditional : tree287 = literal287 := by
  rw [tree287_def]
  rfl
theorem node287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree287 live287 coloured287 = result287 := by
  rw [tree287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages783
