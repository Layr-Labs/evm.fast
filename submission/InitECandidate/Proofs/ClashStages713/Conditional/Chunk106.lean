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
theorem tree10176_agree_conditional
    (child0 : tree10174 = literal10174)
    (child1 : tree10175 = literal10175) : tree10176 = literal10176 := by
  rw [tree10176_def, child0, child1]
  rfl
theorem node10176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10174 live10174 coloured10174 = result10174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10175 live10175 coloured10175 = result10175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10176 live10176 coloured10176 = result10176 := by
  rw [tree10176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10174 coloured10174 at child
  try dsimp only [live10176, coloured10176]
  rw [child]
  dsimp only [result10174]
  have child := child1
  unfold live10175 coloured10175 at child
  try dsimp only [live10176, coloured10176]
  rw [child]
  dsimp only [result10175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10177_agree_conditional : tree10177 = literal10177 := by
  rw [tree10177_def]
  rfl
theorem node10177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10177 live10177 coloured10177 = result10177 := by
  rw [tree10177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10178_agree_conditional
    (child0 : tree10176 = literal10176)
    (child1 : tree10177 = literal10177) : tree10178 = literal10178 := by
  rw [tree10178_def, child0, child1]
  rfl
theorem node10178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10176 live10176 coloured10176 = result10176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10177 live10177 coloured10177 = result10177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10178 live10178 coloured10178 = result10178 := by
  rw [tree10178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10176 coloured10176 at child
  try dsimp only [live10178, coloured10178]
  rw [child]
  dsimp only [result10176]
  have child := child1
  unfold live10177 coloured10177 at child
  try dsimp only [live10178, coloured10178]
  rw [child]
  dsimp only [result10177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10179_agree_conditional : tree10179 = literal10179 := by
  rw [tree10179_def]
  rfl
theorem node10179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10179 live10179 coloured10179 = result10179 := by
  rw [tree10179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10180_agree_conditional
    (child0 : tree10178 = literal10178)
    (child1 : tree10179 = literal10179) : tree10180 = literal10180 := by
  rw [tree10180_def, child0, child1]
  rfl
theorem node10180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10178 live10178 coloured10178 = result10178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10179 live10179 coloured10179 = result10179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10180 live10180 coloured10180 = result10180 := by
  rw [tree10180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10178 coloured10178 at child
  try dsimp only [live10180, coloured10180]
  rw [child]
  dsimp only [result10178]
  have child := child1
  unfold live10179 coloured10179 at child
  try dsimp only [live10180, coloured10180]
  rw [child]
  dsimp only [result10179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10181_agree_conditional : tree10181 = literal10181 := by
  rw [tree10181_def]
  rfl
theorem node10181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10181 live10181 coloured10181 = result10181 := by
  rw [tree10181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10182_agree_conditional
    (child0 : tree10180 = literal10180)
    (child1 : tree10181 = literal10181) : tree10182 = literal10182 := by
  rw [tree10182_def, child0, child1]
  rfl
theorem node10182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10180 live10180 coloured10180 = result10180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10181 live10181 coloured10181 = result10181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10182 live10182 coloured10182 = result10182 := by
  rw [tree10182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10180 coloured10180 at child
  try dsimp only [live10182, coloured10182]
  rw [child]
  dsimp only [result10180]
  have child := child1
  unfold live10181 coloured10181 at child
  try dsimp only [live10182, coloured10182]
  rw [child]
  dsimp only [result10181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10183_agree_conditional : tree10183 = literal10183 := by
  rw [tree10183_def]
  rfl
theorem node10183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10183 live10183 coloured10183 = result10183 := by
  rw [tree10183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10184_agree_conditional
    (child0 : tree10182 = literal10182)
    (child1 : tree10183 = literal10183) : tree10184 = literal10184 := by
  rw [tree10184_def, child0, child1]
  rfl
theorem node10184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10182 live10182 coloured10182 = result10182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10183 live10183 coloured10183 = result10183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10184 live10184 coloured10184 = result10184 := by
  rw [tree10184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10182 coloured10182 at child
  try dsimp only [live10184, coloured10184]
  rw [child]
  dsimp only [result10182]
  have child := child1
  unfold live10183 coloured10183 at child
  try dsimp only [live10184, coloured10184]
  rw [child]
  dsimp only [result10183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10185_agree_conditional : tree10185 = literal10185 := by
  rw [tree10185_def]
  rfl
theorem node10185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10185 live10185 coloured10185 = result10185 := by
  rw [tree10185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10186_agree_conditional
    (child0 : tree10184 = literal10184)
    (child1 : tree10185 = literal10185) : tree10186 = literal10186 := by
  rw [tree10186_def, child0, child1]
  rfl
theorem node10186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10184 live10184 coloured10184 = result10184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10185 live10185 coloured10185 = result10185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10186 live10186 coloured10186 = result10186 := by
  rw [tree10186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10184 coloured10184 at child
  try dsimp only [live10186, coloured10186]
  rw [child]
  dsimp only [result10184]
  have child := child1
  unfold live10185 coloured10185 at child
  try dsimp only [live10186, coloured10186]
  rw [child]
  dsimp only [result10185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10187_agree_conditional : tree10187 = literal10187 := by
  rw [tree10187_def]
  rfl
theorem node10187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10187 live10187 coloured10187 = result10187 := by
  rw [tree10187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10188_agree_conditional
    (child0 : tree10186 = literal10186)
    (child1 : tree10187 = literal10187) : tree10188 = literal10188 := by
  rw [tree10188_def, child0, child1]
  rfl
theorem node10188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10186 live10186 coloured10186 = result10186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10187 live10187 coloured10187 = result10187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10188 live10188 coloured10188 = result10188 := by
  rw [tree10188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10186 coloured10186 at child
  try dsimp only [live10188, coloured10188]
  rw [child]
  dsimp only [result10186]
  have child := child1
  unfold live10187 coloured10187 at child
  try dsimp only [live10188, coloured10188]
  rw [child]
  dsimp only [result10187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10189_agree_conditional : tree10189 = literal10189 := by
  rw [tree10189_def]
  rfl
theorem node10189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10189 live10189 coloured10189 = result10189 := by
  rw [tree10189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10190_agree_conditional
    (child0 : tree10188 = literal10188)
    (child1 : tree10189 = literal10189) : tree10190 = literal10190 := by
  rw [tree10190_def, child0, child1]
  rfl
theorem node10190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10188 live10188 coloured10188 = result10188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10189 live10189 coloured10189 = result10189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10190 live10190 coloured10190 = result10190 := by
  rw [tree10190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10188 coloured10188 at child
  try dsimp only [live10190, coloured10190]
  rw [child]
  dsimp only [result10188]
  have child := child1
  unfold live10189 coloured10189 at child
  try dsimp only [live10190, coloured10190]
  rw [child]
  dsimp only [result10189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10191_agree_conditional : tree10191 = literal10191 := by
  rw [tree10191_def]
  rfl
theorem node10191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10191 live10191 coloured10191 = result10191 := by
  rw [tree10191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10192_agree_conditional
    (child0 : tree10190 = literal10190)
    (child1 : tree10191 = literal10191) : tree10192 = literal10192 := by
  rw [tree10192_def, child0, child1]
  rfl
theorem node10192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10190 live10190 coloured10190 = result10190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10191 live10191 coloured10191 = result10191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10192 live10192 coloured10192 = result10192 := by
  rw [tree10192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10190 coloured10190 at child
  try dsimp only [live10192, coloured10192]
  rw [child]
  dsimp only [result10190]
  have child := child1
  unfold live10191 coloured10191 at child
  try dsimp only [live10192, coloured10192]
  rw [child]
  dsimp only [result10191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10193_agree_conditional : tree10193 = literal10193 := by
  rw [tree10193_def]
  rfl
theorem node10193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10193 live10193 coloured10193 = result10193 := by
  rw [tree10193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10194_agree_conditional
    (child0 : tree10192 = literal10192)
    (child1 : tree10193 = literal10193) : tree10194 = literal10194 := by
  rw [tree10194_def, child0, child1]
  rfl
theorem node10194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10192 live10192 coloured10192 = result10192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10193 live10193 coloured10193 = result10193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10194 live10194 coloured10194 = result10194 := by
  rw [tree10194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10192 coloured10192 at child
  try dsimp only [live10194, coloured10194]
  rw [child]
  dsimp only [result10192]
  have child := child1
  unfold live10193 coloured10193 at child
  try dsimp only [live10194, coloured10194]
  rw [child]
  dsimp only [result10193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10195_agree_conditional : tree10195 = literal10195 := by
  rw [tree10195_def]
  rfl
theorem node10195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10195 live10195 coloured10195 = result10195 := by
  rw [tree10195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10196_agree_conditional
    (child0 : tree10194 = literal10194)
    (child1 : tree10195 = literal10195) : tree10196 = literal10196 := by
  rw [tree10196_def, child0, child1]
  rfl
theorem node10196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10194 live10194 coloured10194 = result10194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10195 live10195 coloured10195 = result10195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10196 live10196 coloured10196 = result10196 := by
  rw [tree10196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10194 coloured10194 at child
  try dsimp only [live10196, coloured10196]
  rw [child]
  dsimp only [result10194]
  have child := child1
  unfold live10195 coloured10195 at child
  try dsimp only [live10196, coloured10196]
  rw [child]
  dsimp only [result10195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10197_agree_conditional : tree10197 = literal10197 := by
  rw [tree10197_def]
  rfl
theorem node10197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10197 live10197 coloured10197 = result10197 := by
  rw [tree10197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10198_agree_conditional
    (child0 : tree10196 = literal10196)
    (child1 : tree10197 = literal10197) : tree10198 = literal10198 := by
  rw [tree10198_def, child0, child1]
  rfl
theorem node10198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10196 live10196 coloured10196 = result10196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10197 live10197 coloured10197 = result10197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10198 live10198 coloured10198 = result10198 := by
  rw [tree10198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10196 coloured10196 at child
  try dsimp only [live10198, coloured10198]
  rw [child]
  dsimp only [result10196]
  have child := child1
  unfold live10197 coloured10197 at child
  try dsimp only [live10198, coloured10198]
  rw [child]
  dsimp only [result10197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10199_agree_conditional : tree10199 = literal10199 := by
  rw [tree10199_def]
  rfl
theorem node10199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10199 live10199 coloured10199 = result10199 := by
  rw [tree10199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10200_agree_conditional
    (child0 : tree10198 = literal10198)
    (child1 : tree10199 = literal10199) : tree10200 = literal10200 := by
  rw [tree10200_def, child0, child1]
  rfl
theorem node10200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10198 live10198 coloured10198 = result10198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10199 live10199 coloured10199 = result10199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10200 live10200 coloured10200 = result10200 := by
  rw [tree10200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10198 coloured10198 at child
  try dsimp only [live10200, coloured10200]
  rw [child]
  dsimp only [result10198]
  have child := child1
  unfold live10199 coloured10199 at child
  try dsimp only [live10200, coloured10200]
  rw [child]
  dsimp only [result10199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10201_agree_conditional : tree10201 = literal10201 := by
  rw [tree10201_def]
  rfl
theorem node10201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10201 live10201 coloured10201 = result10201 := by
  rw [tree10201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10202_agree_conditional
    (child0 : tree10200 = literal10200)
    (child1 : tree10201 = literal10201) : tree10202 = literal10202 := by
  rw [tree10202_def, child0, child1]
  rfl
theorem node10202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10200 live10200 coloured10200 = result10200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10201 live10201 coloured10201 = result10201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10202 live10202 coloured10202 = result10202 := by
  rw [tree10202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10200 coloured10200 at child
  try dsimp only [live10202, coloured10202]
  rw [child]
  dsimp only [result10200]
  have child := child1
  unfold live10201 coloured10201 at child
  try dsimp only [live10202, coloured10202]
  rw [child]
  dsimp only [result10201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10203_agree_conditional : tree10203 = literal10203 := by
  rw [tree10203_def]
  rfl
theorem node10203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10203 live10203 coloured10203 = result10203 := by
  rw [tree10203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10204_agree_conditional
    (child0 : tree10202 = literal10202)
    (child1 : tree10203 = literal10203) : tree10204 = literal10204 := by
  rw [tree10204_def, child0, child1]
  rfl
theorem node10204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10202 live10202 coloured10202 = result10202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10203 live10203 coloured10203 = result10203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10204 live10204 coloured10204 = result10204 := by
  rw [tree10204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10202 coloured10202 at child
  try dsimp only [live10204, coloured10204]
  rw [child]
  dsimp only [result10202]
  have child := child1
  unfold live10203 coloured10203 at child
  try dsimp only [live10204, coloured10204]
  rw [child]
  dsimp only [result10203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10205_agree_conditional : tree10205 = literal10205 := by
  rw [tree10205_def]
  rfl
theorem node10205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10205 live10205 coloured10205 = result10205 := by
  rw [tree10205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10206_agree_conditional
    (child0 : tree10204 = literal10204)
    (child1 : tree10205 = literal10205) : tree10206 = literal10206 := by
  rw [tree10206_def, child0, child1]
  rfl
theorem node10206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10204 live10204 coloured10204 = result10204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10205 live10205 coloured10205 = result10205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10206 live10206 coloured10206 = result10206 := by
  rw [tree10206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10204 coloured10204 at child
  try dsimp only [live10206, coloured10206]
  rw [child]
  dsimp only [result10204]
  have child := child1
  unfold live10205 coloured10205 at child
  try dsimp only [live10206, coloured10206]
  rw [child]
  dsimp only [result10205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10207_agree_conditional : tree10207 = literal10207 := by
  rw [tree10207_def]
  rfl
theorem node10207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10207 live10207 coloured10207 = result10207 := by
  rw [tree10207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10208_agree_conditional
    (child0 : tree10206 = literal10206)
    (child1 : tree10207 = literal10207) : tree10208 = literal10208 := by
  rw [tree10208_def, child0, child1]
  rfl
theorem node10208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10206 live10206 coloured10206 = result10206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10207 live10207 coloured10207 = result10207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10208 live10208 coloured10208 = result10208 := by
  rw [tree10208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10206 coloured10206 at child
  try dsimp only [live10208, coloured10208]
  rw [child]
  dsimp only [result10206]
  have child := child1
  unfold live10207 coloured10207 at child
  try dsimp only [live10208, coloured10208]
  rw [child]
  dsimp only [result10207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10209_agree_conditional : tree10209 = literal10209 := by
  rw [tree10209_def]
  rfl
theorem node10209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10209 live10209 coloured10209 = result10209 := by
  rw [tree10209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10210_agree_conditional
    (child0 : tree10208 = literal10208)
    (child1 : tree10209 = literal10209) : tree10210 = literal10210 := by
  rw [tree10210_def, child0, child1]
  rfl
theorem node10210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10208 live10208 coloured10208 = result10208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10209 live10209 coloured10209 = result10209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10210 live10210 coloured10210 = result10210 := by
  rw [tree10210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10208 coloured10208 at child
  try dsimp only [live10210, coloured10210]
  rw [child]
  dsimp only [result10208]
  have child := child1
  unfold live10209 coloured10209 at child
  try dsimp only [live10210, coloured10210]
  rw [child]
  dsimp only [result10209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10211_agree_conditional : tree10211 = literal10211 := by
  rw [tree10211_def]
  rfl
theorem node10211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10211 live10211 coloured10211 = result10211 := by
  rw [tree10211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10212_agree_conditional
    (child0 : tree10210 = literal10210)
    (child1 : tree10211 = literal10211) : tree10212 = literal10212 := by
  rw [tree10212_def, child0, child1]
  rfl
theorem node10212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10210 live10210 coloured10210 = result10210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10211 live10211 coloured10211 = result10211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10212 live10212 coloured10212 = result10212 := by
  rw [tree10212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10210 coloured10210 at child
  try dsimp only [live10212, coloured10212]
  rw [child]
  dsimp only [result10210]
  have child := child1
  unfold live10211 coloured10211 at child
  try dsimp only [live10212, coloured10212]
  rw [child]
  dsimp only [result10211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10213_agree_conditional : tree10213 = literal10213 := by
  rw [tree10213_def]
  rfl
theorem node10213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10213 live10213 coloured10213 = result10213 := by
  rw [tree10213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10214_agree_conditional
    (child0 : tree10212 = literal10212)
    (child1 : tree10213 = literal10213) : tree10214 = literal10214 := by
  rw [tree10214_def, child0, child1]
  rfl
theorem node10214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10212 live10212 coloured10212 = result10212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10213 live10213 coloured10213 = result10213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10214 live10214 coloured10214 = result10214 := by
  rw [tree10214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10212 coloured10212 at child
  try dsimp only [live10214, coloured10214]
  rw [child]
  dsimp only [result10212]
  have child := child1
  unfold live10213 coloured10213 at child
  try dsimp only [live10214, coloured10214]
  rw [child]
  dsimp only [result10213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10215_agree_conditional : tree10215 = literal10215 := by
  rw [tree10215_def]
  rfl
theorem node10215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10215 live10215 coloured10215 = result10215 := by
  rw [tree10215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10216_agree_conditional
    (child0 : tree10214 = literal10214)
    (child1 : tree10215 = literal10215) : tree10216 = literal10216 := by
  rw [tree10216_def, child0, child1]
  rfl
theorem node10216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10214 live10214 coloured10214 = result10214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10215 live10215 coloured10215 = result10215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10216 live10216 coloured10216 = result10216 := by
  rw [tree10216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10214 coloured10214 at child
  try dsimp only [live10216, coloured10216]
  rw [child]
  dsimp only [result10214]
  have child := child1
  unfold live10215 coloured10215 at child
  try dsimp only [live10216, coloured10216]
  rw [child]
  dsimp only [result10215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10217_agree_conditional : tree10217 = literal10217 := by
  rw [tree10217_def]
  rfl
theorem node10217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10217 live10217 coloured10217 = result10217 := by
  rw [tree10217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10218_agree_conditional
    (child0 : tree10216 = literal10216)
    (child1 : tree10217 = literal10217) : tree10218 = literal10218 := by
  rw [tree10218_def, child0, child1]
  rfl
theorem node10218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10216 live10216 coloured10216 = result10216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10217 live10217 coloured10217 = result10217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10218 live10218 coloured10218 = result10218 := by
  rw [tree10218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10216 coloured10216 at child
  try dsimp only [live10218, coloured10218]
  rw [child]
  dsimp only [result10216]
  have child := child1
  unfold live10217 coloured10217 at child
  try dsimp only [live10218, coloured10218]
  rw [child]
  dsimp only [result10217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10219_agree_conditional : tree10219 = literal10219 := by
  rw [tree10219_def]
  rfl
theorem node10219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10219 live10219 coloured10219 = result10219 := by
  rw [tree10219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10220_agree_conditional
    (child0 : tree10218 = literal10218)
    (child1 : tree10219 = literal10219) : tree10220 = literal10220 := by
  rw [tree10220_def, child0, child1]
  rfl
theorem node10220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10218 live10218 coloured10218 = result10218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10219 live10219 coloured10219 = result10219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10220 live10220 coloured10220 = result10220 := by
  rw [tree10220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10218 coloured10218 at child
  try dsimp only [live10220, coloured10220]
  rw [child]
  dsimp only [result10218]
  have child := child1
  unfold live10219 coloured10219 at child
  try dsimp only [live10220, coloured10220]
  rw [child]
  dsimp only [result10219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10221_agree_conditional : tree10221 = literal10221 := by
  rw [tree10221_def]
  rfl
theorem node10221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10221 live10221 coloured10221 = result10221 := by
  rw [tree10221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10222_agree_conditional
    (child0 : tree10220 = literal10220)
    (child1 : tree10221 = literal10221) : tree10222 = literal10222 := by
  rw [tree10222_def, child0, child1]
  rfl
theorem node10222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10220 live10220 coloured10220 = result10220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10221 live10221 coloured10221 = result10221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10222 live10222 coloured10222 = result10222 := by
  rw [tree10222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10220 coloured10220 at child
  try dsimp only [live10222, coloured10222]
  rw [child]
  dsimp only [result10220]
  have child := child1
  unfold live10221 coloured10221 at child
  try dsimp only [live10222, coloured10222]
  rw [child]
  dsimp only [result10221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10223_agree_conditional : tree10223 = literal10223 := by
  rw [tree10223_def]
  rfl
theorem node10223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10223 live10223 coloured10223 = result10223 := by
  rw [tree10223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10224_agree_conditional
    (child0 : tree10222 = literal10222)
    (child1 : tree10223 = literal10223) : tree10224 = literal10224 := by
  rw [tree10224_def, child0, child1]
  rfl
theorem node10224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10222 live10222 coloured10222 = result10222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10223 live10223 coloured10223 = result10223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10224 live10224 coloured10224 = result10224 := by
  rw [tree10224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10222 coloured10222 at child
  try dsimp only [live10224, coloured10224]
  rw [child]
  dsimp only [result10222]
  have child := child1
  unfold live10223 coloured10223 at child
  try dsimp only [live10224, coloured10224]
  rw [child]
  dsimp only [result10223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10225_agree_conditional : tree10225 = literal10225 := by
  rw [tree10225_def]
  rfl
theorem node10225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10225 live10225 coloured10225 = result10225 := by
  rw [tree10225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10226_agree_conditional
    (child0 : tree10224 = literal10224)
    (child1 : tree10225 = literal10225) : tree10226 = literal10226 := by
  rw [tree10226_def, child0, child1]
  rfl
theorem node10226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10224 live10224 coloured10224 = result10224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10225 live10225 coloured10225 = result10225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10226 live10226 coloured10226 = result10226 := by
  rw [tree10226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10224 coloured10224 at child
  try dsimp only [live10226, coloured10226]
  rw [child]
  dsimp only [result10224]
  have child := child1
  unfold live10225 coloured10225 at child
  try dsimp only [live10226, coloured10226]
  rw [child]
  dsimp only [result10225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10227_agree_conditional : tree10227 = literal10227 := by
  rw [tree10227_def]
  rfl
theorem node10227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10227 live10227 coloured10227 = result10227 := by
  rw [tree10227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10228_agree_conditional
    (child0 : tree10226 = literal10226)
    (child1 : tree10227 = literal10227) : tree10228 = literal10228 := by
  rw [tree10228_def, child0, child1]
  rfl
theorem node10228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10226 live10226 coloured10226 = result10226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10227 live10227 coloured10227 = result10227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10228 live10228 coloured10228 = result10228 := by
  rw [tree10228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10226 coloured10226 at child
  try dsimp only [live10228, coloured10228]
  rw [child]
  dsimp only [result10226]
  have child := child1
  unfold live10227 coloured10227 at child
  try dsimp only [live10228, coloured10228]
  rw [child]
  dsimp only [result10227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10229_agree_conditional : tree10229 = literal10229 := by
  rw [tree10229_def]
  rfl
theorem node10229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10229 live10229 coloured10229 = result10229 := by
  rw [tree10229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10230_agree_conditional
    (child0 : tree10228 = literal10228)
    (child1 : tree10229 = literal10229) : tree10230 = literal10230 := by
  rw [tree10230_def, child0, child1]
  rfl
theorem node10230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10228 live10228 coloured10228 = result10228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10229 live10229 coloured10229 = result10229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10230 live10230 coloured10230 = result10230 := by
  rw [tree10230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10228 coloured10228 at child
  try dsimp only [live10230, coloured10230]
  rw [child]
  dsimp only [result10228]
  have child := child1
  unfold live10229 coloured10229 at child
  try dsimp only [live10230, coloured10230]
  rw [child]
  dsimp only [result10229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10231_agree_conditional : tree10231 = literal10231 := by
  rw [tree10231_def]
  rfl
theorem node10231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10231 live10231 coloured10231 = result10231 := by
  rw [tree10231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10232_agree_conditional
    (child0 : tree10230 = literal10230)
    (child1 : tree10231 = literal10231) : tree10232 = literal10232 := by
  rw [tree10232_def, child0, child1]
  rfl
theorem node10232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10230 live10230 coloured10230 = result10230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10231 live10231 coloured10231 = result10231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10232 live10232 coloured10232 = result10232 := by
  rw [tree10232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10230 coloured10230 at child
  try dsimp only [live10232, coloured10232]
  rw [child]
  dsimp only [result10230]
  have child := child1
  unfold live10231 coloured10231 at child
  try dsimp only [live10232, coloured10232]
  rw [child]
  dsimp only [result10231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10233_agree_conditional : tree10233 = literal10233 := by
  rw [tree10233_def]
  rfl
theorem node10233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10233 live10233 coloured10233 = result10233 := by
  rw [tree10233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10234_agree_conditional
    (child0 : tree10232 = literal10232)
    (child1 : tree10233 = literal10233) : tree10234 = literal10234 := by
  rw [tree10234_def, child0, child1]
  rfl
theorem node10234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10232 live10232 coloured10232 = result10232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10233 live10233 coloured10233 = result10233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10234 live10234 coloured10234 = result10234 := by
  rw [tree10234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10232 coloured10232 at child
  try dsimp only [live10234, coloured10234]
  rw [child]
  dsimp only [result10232]
  have child := child1
  unfold live10233 coloured10233 at child
  try dsimp only [live10234, coloured10234]
  rw [child]
  dsimp only [result10233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10235_agree_conditional : tree10235 = literal10235 := by
  rw [tree10235_def]
  rfl
theorem node10235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10235 live10235 coloured10235 = result10235 := by
  rw [tree10235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10236_agree_conditional
    (child0 : tree10234 = literal10234)
    (child1 : tree10235 = literal10235) : tree10236 = literal10236 := by
  rw [tree10236_def, child0, child1]
  rfl
theorem node10236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10234 live10234 coloured10234 = result10234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10235 live10235 coloured10235 = result10235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10236 live10236 coloured10236 = result10236 := by
  rw [tree10236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10234 coloured10234 at child
  try dsimp only [live10236, coloured10236]
  rw [child]
  dsimp only [result10234]
  have child := child1
  unfold live10235 coloured10235 at child
  try dsimp only [live10236, coloured10236]
  rw [child]
  dsimp only [result10235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10237_agree_conditional : tree10237 = literal10237 := by
  rw [tree10237_def]
  rfl
theorem node10237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10237 live10237 coloured10237 = result10237 := by
  rw [tree10237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10238_agree_conditional
    (child0 : tree10236 = literal10236)
    (child1 : tree10237 = literal10237) : tree10238 = literal10238 := by
  rw [tree10238_def, child0, child1]
  rfl
theorem node10238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10236 live10236 coloured10236 = result10236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10237 live10237 coloured10237 = result10237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10238 live10238 coloured10238 = result10238 := by
  rw [tree10238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10236 coloured10236 at child
  try dsimp only [live10238, coloured10238]
  rw [child]
  dsimp only [result10236]
  have child := child1
  unfold live10237 coloured10237 at child
  try dsimp only [live10238, coloured10238]
  rw [child]
  dsimp only [result10237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10239_agree_conditional : tree10239 = literal10239 := by
  rw [tree10239_def]
  rfl
theorem node10239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10239 live10239 coloured10239 = result10239 := by
  rw [tree10239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10240_agree_conditional
    (child0 : tree10238 = literal10238)
    (child1 : tree10239 = literal10239) : tree10240 = literal10240 := by
  rw [tree10240_def, child0, child1]
  rfl
theorem node10240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10238 live10238 coloured10238 = result10238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10239 live10239 coloured10239 = result10239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10240 live10240 coloured10240 = result10240 := by
  rw [tree10240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10238 coloured10238 at child
  try dsimp only [live10240, coloured10240]
  rw [child]
  dsimp only [result10238]
  have child := child1
  unfold live10239 coloured10239 at child
  try dsimp only [live10240, coloured10240]
  rw [child]
  dsimp only [result10239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10241_agree_conditional : tree10241 = literal10241 := by
  rw [tree10241_def]
  rfl
theorem node10241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10241 live10241 coloured10241 = result10241 := by
  rw [tree10241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10242_agree_conditional
    (child0 : tree10240 = literal10240)
    (child1 : tree10241 = literal10241) : tree10242 = literal10242 := by
  rw [tree10242_def, child0, child1]
  rfl
theorem node10242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10240 live10240 coloured10240 = result10240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10241 live10241 coloured10241 = result10241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10242 live10242 coloured10242 = result10242 := by
  rw [tree10242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10240 coloured10240 at child
  try dsimp only [live10242, coloured10242]
  rw [child]
  dsimp only [result10240]
  have child := child1
  unfold live10241 coloured10241 at child
  try dsimp only [live10242, coloured10242]
  rw [child]
  dsimp only [result10241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10243_agree_conditional : tree10243 = literal10243 := by
  rw [tree10243_def]
  rfl
theorem node10243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10243 live10243 coloured10243 = result10243 := by
  rw [tree10243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10244_agree_conditional
    (child0 : tree10242 = literal10242)
    (child1 : tree10243 = literal10243) : tree10244 = literal10244 := by
  rw [tree10244_def, child0, child1]
  rfl
theorem node10244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10242 live10242 coloured10242 = result10242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10243 live10243 coloured10243 = result10243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10244 live10244 coloured10244 = result10244 := by
  rw [tree10244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10242 coloured10242 at child
  try dsimp only [live10244, coloured10244]
  rw [child]
  dsimp only [result10242]
  have child := child1
  unfold live10243 coloured10243 at child
  try dsimp only [live10244, coloured10244]
  rw [child]
  dsimp only [result10243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10245_agree_conditional : tree10245 = literal10245 := by
  rw [tree10245_def]
  rfl
theorem node10245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10245 live10245 coloured10245 = result10245 := by
  rw [tree10245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10246_agree_conditional
    (child0 : tree10244 = literal10244)
    (child1 : tree10245 = literal10245) : tree10246 = literal10246 := by
  rw [tree10246_def, child0, child1]
  rfl
theorem node10246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10244 live10244 coloured10244 = result10244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10245 live10245 coloured10245 = result10245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10246 live10246 coloured10246 = result10246 := by
  rw [tree10246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10244 coloured10244 at child
  try dsimp only [live10246, coloured10246]
  rw [child]
  dsimp only [result10244]
  have child := child1
  unfold live10245 coloured10245 at child
  try dsimp only [live10246, coloured10246]
  rw [child]
  dsimp only [result10245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10247_agree_conditional : tree10247 = literal10247 := by
  rw [tree10247_def]
  rfl
theorem node10247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10247 live10247 coloured10247 = result10247 := by
  rw [tree10247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10248_agree_conditional
    (child0 : tree10246 = literal10246)
    (child1 : tree10247 = literal10247) : tree10248 = literal10248 := by
  rw [tree10248_def, child0, child1]
  rfl
theorem node10248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10246 live10246 coloured10246 = result10246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10247 live10247 coloured10247 = result10247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10248 live10248 coloured10248 = result10248 := by
  rw [tree10248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10246 coloured10246 at child
  try dsimp only [live10248, coloured10248]
  rw [child]
  dsimp only [result10246]
  have child := child1
  unfold live10247 coloured10247 at child
  try dsimp only [live10248, coloured10248]
  rw [child]
  dsimp only [result10247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10249_agree_conditional : tree10249 = literal10249 := by
  rw [tree10249_def]
  rfl
theorem node10249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10249 live10249 coloured10249 = result10249 := by
  rw [tree10249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10250_agree_conditional
    (child0 : tree10248 = literal10248)
    (child1 : tree10249 = literal10249) : tree10250 = literal10250 := by
  rw [tree10250_def, child0, child1]
  rfl
theorem node10250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10248 live10248 coloured10248 = result10248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10249 live10249 coloured10249 = result10249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10250 live10250 coloured10250 = result10250 := by
  rw [tree10250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10248 coloured10248 at child
  try dsimp only [live10250, coloured10250]
  rw [child]
  dsimp only [result10248]
  have child := child1
  unfold live10249 coloured10249 at child
  try dsimp only [live10250, coloured10250]
  rw [child]
  dsimp only [result10249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10251_agree_conditional : tree10251 = literal10251 := by
  rw [tree10251_def]
  rfl
theorem node10251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10251 live10251 coloured10251 = result10251 := by
  rw [tree10251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10252_agree_conditional
    (child0 : tree10250 = literal10250)
    (child1 : tree10251 = literal10251) : tree10252 = literal10252 := by
  rw [tree10252_def, child0, child1]
  rfl
theorem node10252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10250 live10250 coloured10250 = result10250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10251 live10251 coloured10251 = result10251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10252 live10252 coloured10252 = result10252 := by
  rw [tree10252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10250 coloured10250 at child
  try dsimp only [live10252, coloured10252]
  rw [child]
  dsimp only [result10250]
  have child := child1
  unfold live10251 coloured10251 at child
  try dsimp only [live10252, coloured10252]
  rw [child]
  dsimp only [result10251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10253_agree_conditional : tree10253 = literal10253 := by
  rw [tree10253_def]
  rfl
theorem node10253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10253 live10253 coloured10253 = result10253 := by
  rw [tree10253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10254_agree_conditional
    (child0 : tree10252 = literal10252)
    (child1 : tree10253 = literal10253) : tree10254 = literal10254 := by
  rw [tree10254_def, child0, child1]
  rfl
theorem node10254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10252 live10252 coloured10252 = result10252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10253 live10253 coloured10253 = result10253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10254 live10254 coloured10254 = result10254 := by
  rw [tree10254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10252 coloured10252 at child
  try dsimp only [live10254, coloured10254]
  rw [child]
  dsimp only [result10252]
  have child := child1
  unfold live10253 coloured10253 at child
  try dsimp only [live10254, coloured10254]
  rw [child]
  dsimp only [result10253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10255_agree_conditional : tree10255 = literal10255 := by
  rw [tree10255_def]
  rfl
theorem node10255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10255 live10255 coloured10255 = result10255 := by
  rw [tree10255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10256_agree_conditional
    (child0 : tree10254 = literal10254)
    (child1 : tree10255 = literal10255) : tree10256 = literal10256 := by
  rw [tree10256_def, child0, child1]
  rfl
theorem node10256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10254 live10254 coloured10254 = result10254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10255 live10255 coloured10255 = result10255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10256 live10256 coloured10256 = result10256 := by
  rw [tree10256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10254 coloured10254 at child
  try dsimp only [live10256, coloured10256]
  rw [child]
  dsimp only [result10254]
  have child := child1
  unfold live10255 coloured10255 at child
  try dsimp only [live10256, coloured10256]
  rw [child]
  dsimp only [result10255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10257_agree_conditional : tree10257 = literal10257 := by
  rw [tree10257_def]
  rfl
theorem node10257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10257 live10257 coloured10257 = result10257 := by
  rw [tree10257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10258_agree_conditional
    (child0 : tree10256 = literal10256)
    (child1 : tree10257 = literal10257) : tree10258 = literal10258 := by
  rw [tree10258_def, child0, child1]
  rfl
theorem node10258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10256 live10256 coloured10256 = result10256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10257 live10257 coloured10257 = result10257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10258 live10258 coloured10258 = result10258 := by
  rw [tree10258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10256 coloured10256 at child
  try dsimp only [live10258, coloured10258]
  rw [child]
  dsimp only [result10256]
  have child := child1
  unfold live10257 coloured10257 at child
  try dsimp only [live10258, coloured10258]
  rw [child]
  dsimp only [result10257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10259_agree_conditional : tree10259 = literal10259 := by
  rw [tree10259_def]
  rfl
theorem node10259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10259 live10259 coloured10259 = result10259 := by
  rw [tree10259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10260_agree_conditional
    (child0 : tree10258 = literal10258)
    (child1 : tree10259 = literal10259) : tree10260 = literal10260 := by
  rw [tree10260_def, child0, child1]
  rfl
theorem node10260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10258 live10258 coloured10258 = result10258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10259 live10259 coloured10259 = result10259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10260 live10260 coloured10260 = result10260 := by
  rw [tree10260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10258 coloured10258 at child
  try dsimp only [live10260, coloured10260]
  rw [child]
  dsimp only [result10258]
  have child := child1
  unfold live10259 coloured10259 at child
  try dsimp only [live10260, coloured10260]
  rw [child]
  dsimp only [result10259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10261_agree_conditional : tree10261 = literal10261 := by
  rw [tree10261_def]
  rfl
theorem node10261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10261 live10261 coloured10261 = result10261 := by
  rw [tree10261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10262_agree_conditional
    (child0 : tree10260 = literal10260)
    (child1 : tree10261 = literal10261) : tree10262 = literal10262 := by
  rw [tree10262_def, child0, child1]
  rfl
theorem node10262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10260 live10260 coloured10260 = result10260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10261 live10261 coloured10261 = result10261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10262 live10262 coloured10262 = result10262 := by
  rw [tree10262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10260 coloured10260 at child
  try dsimp only [live10262, coloured10262]
  rw [child]
  dsimp only [result10260]
  have child := child1
  unfold live10261 coloured10261 at child
  try dsimp only [live10262, coloured10262]
  rw [child]
  dsimp only [result10261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10263_agree_conditional : tree10263 = literal10263 := by
  rw [tree10263_def]
  rfl
theorem node10263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10263 live10263 coloured10263 = result10263 := by
  rw [tree10263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10264_agree_conditional
    (child0 : tree10262 = literal10262)
    (child1 : tree10263 = literal10263) : tree10264 = literal10264 := by
  rw [tree10264_def, child0, child1]
  rfl
theorem node10264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10262 live10262 coloured10262 = result10262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10263 live10263 coloured10263 = result10263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10264 live10264 coloured10264 = result10264 := by
  rw [tree10264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10262 coloured10262 at child
  try dsimp only [live10264, coloured10264]
  rw [child]
  dsimp only [result10262]
  have child := child1
  unfold live10263 coloured10263 at child
  try dsimp only [live10264, coloured10264]
  rw [child]
  dsimp only [result10263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10265_agree_conditional : tree10265 = literal10265 := by
  rw [tree10265_def]
  rfl
theorem node10265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10265 live10265 coloured10265 = result10265 := by
  rw [tree10265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10266_agree_conditional
    (child0 : tree10264 = literal10264)
    (child1 : tree10265 = literal10265) : tree10266 = literal10266 := by
  rw [tree10266_def, child0, child1]
  rfl
theorem node10266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10264 live10264 coloured10264 = result10264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10265 live10265 coloured10265 = result10265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10266 live10266 coloured10266 = result10266 := by
  rw [tree10266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10264 coloured10264 at child
  try dsimp only [live10266, coloured10266]
  rw [child]
  dsimp only [result10264]
  have child := child1
  unfold live10265 coloured10265 at child
  try dsimp only [live10266, coloured10266]
  rw [child]
  dsimp only [result10265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10267_agree_conditional : tree10267 = literal10267 := by
  rw [tree10267_def]
  rfl
theorem node10267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10267 live10267 coloured10267 = result10267 := by
  rw [tree10267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10268_agree_conditional
    (child0 : tree10266 = literal10266)
    (child1 : tree10267 = literal10267) : tree10268 = literal10268 := by
  rw [tree10268_def, child0, child1]
  rfl
theorem node10268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10266 live10266 coloured10266 = result10266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10267 live10267 coloured10267 = result10267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10268 live10268 coloured10268 = result10268 := by
  rw [tree10268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10266 coloured10266 at child
  try dsimp only [live10268, coloured10268]
  rw [child]
  dsimp only [result10266]
  have child := child1
  unfold live10267 coloured10267 at child
  try dsimp only [live10268, coloured10268]
  rw [child]
  dsimp only [result10267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10269_agree_conditional : tree10269 = literal10269 := by
  rw [tree10269_def]
  rfl
theorem node10269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10269 live10269 coloured10269 = result10269 := by
  rw [tree10269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10270_agree_conditional
    (child0 : tree10268 = literal10268)
    (child1 : tree10269 = literal10269) : tree10270 = literal10270 := by
  rw [tree10270_def, child0, child1]
  rfl
theorem node10270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10268 live10268 coloured10268 = result10268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10269 live10269 coloured10269 = result10269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10270 live10270 coloured10270 = result10270 := by
  rw [tree10270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10268 coloured10268 at child
  try dsimp only [live10270, coloured10270]
  rw [child]
  dsimp only [result10268]
  have child := child1
  unfold live10269 coloured10269 at child
  try dsimp only [live10270, coloured10270]
  rw [child]
  dsimp only [result10269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10271_agree_conditional : tree10271 = literal10271 := by
  rw [tree10271_def]
  rfl
theorem node10271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10271 live10271 coloured10271 = result10271 := by
  rw [tree10271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
