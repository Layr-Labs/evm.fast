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
theorem tree5280_agree_conditional
    (child0 : tree5278 = literal5278)
    (child1 : tree5279 = literal5279) : tree5280 = literal5280 := by
  rw [tree5280_def, child0, child1]
  rfl
theorem node5280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5278 live5278 coloured5278 = result5278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5279 live5279 coloured5279 = result5279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5280 live5280 coloured5280 = result5280 := by
  rw [tree5280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5278 coloured5278 at child
  try dsimp only [live5280, coloured5280]
  rw [child]
  dsimp only [result5278]
  have child := child1
  unfold live5279 coloured5279 at child
  try dsimp only [live5280, coloured5280]
  rw [child]
  dsimp only [result5279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5281_agree_conditional : tree5281 = literal5281 := by
  rw [tree5281_def]
  rfl
theorem node5281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5281 live5281 coloured5281 = result5281 := by
  rw [tree5281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5282_agree_conditional
    (child0 : tree5280 = literal5280)
    (child1 : tree5281 = literal5281) : tree5282 = literal5282 := by
  rw [tree5282_def, child0, child1]
  rfl
theorem node5282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5280 live5280 coloured5280 = result5280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5281 live5281 coloured5281 = result5281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5282 live5282 coloured5282 = result5282 := by
  rw [tree5282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5280 coloured5280 at child
  try dsimp only [live5282, coloured5282]
  rw [child]
  dsimp only [result5280]
  have child := child1
  unfold live5281 coloured5281 at child
  try dsimp only [live5282, coloured5282]
  rw [child]
  dsimp only [result5281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5283_agree_conditional : tree5283 = literal5283 := by
  rw [tree5283_def]
  rfl
theorem node5283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5283 live5283 coloured5283 = result5283 := by
  rw [tree5283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5284_agree_conditional
    (child0 : tree5282 = literal5282)
    (child1 : tree5283 = literal5283) : tree5284 = literal5284 := by
  rw [tree5284_def, child0, child1]
  rfl
theorem node5284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5282 live5282 coloured5282 = result5282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5283 live5283 coloured5283 = result5283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5284 live5284 coloured5284 = result5284 := by
  rw [tree5284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5282 coloured5282 at child
  try dsimp only [live5284, coloured5284]
  rw [child]
  dsimp only [result5282]
  have child := child1
  unfold live5283 coloured5283 at child
  try dsimp only [live5284, coloured5284]
  rw [child]
  dsimp only [result5283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5285_agree_conditional : tree5285 = literal5285 := by
  rw [tree5285_def]
  rfl
theorem node5285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5285 live5285 coloured5285 = result5285 := by
  rw [tree5285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5286_agree_conditional
    (child0 : tree5284 = literal5284)
    (child1 : tree5285 = literal5285) : tree5286 = literal5286 := by
  rw [tree5286_def, child0, child1]
  rfl
theorem node5286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5284 live5284 coloured5284 = result5284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5285 live5285 coloured5285 = result5285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5286 live5286 coloured5286 = result5286 := by
  rw [tree5286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5284 coloured5284 at child
  try dsimp only [live5286, coloured5286]
  rw [child]
  dsimp only [result5284]
  have child := child1
  unfold live5285 coloured5285 at child
  try dsimp only [live5286, coloured5286]
  rw [child]
  dsimp only [result5285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5287_agree_conditional : tree5287 = literal5287 := by
  rw [tree5287_def]
  rfl
theorem node5287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5287 live5287 coloured5287 = result5287 := by
  rw [tree5287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5288_agree_conditional
    (child0 : tree5286 = literal5286)
    (child1 : tree5287 = literal5287) : tree5288 = literal5288 := by
  rw [tree5288_def, child0, child1]
  rfl
theorem node5288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5286 live5286 coloured5286 = result5286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5287 live5287 coloured5287 = result5287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5288 live5288 coloured5288 = result5288 := by
  rw [tree5288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5286 coloured5286 at child
  try dsimp only [live5288, coloured5288]
  rw [child]
  dsimp only [result5286]
  have child := child1
  unfold live5287 coloured5287 at child
  try dsimp only [live5288, coloured5288]
  rw [child]
  dsimp only [result5287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5289_agree_conditional : tree5289 = literal5289 := by
  rw [tree5289_def]
  rfl
theorem node5289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5289 live5289 coloured5289 = result5289 := by
  rw [tree5289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5290_agree_conditional
    (child0 : tree5288 = literal5288)
    (child1 : tree5289 = literal5289) : tree5290 = literal5290 := by
  rw [tree5290_def, child0, child1]
  rfl
theorem node5290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5288 live5288 coloured5288 = result5288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5289 live5289 coloured5289 = result5289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5290 live5290 coloured5290 = result5290 := by
  rw [tree5290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5288 coloured5288 at child
  try dsimp only [live5290, coloured5290]
  rw [child]
  dsimp only [result5288]
  have child := child1
  unfold live5289 coloured5289 at child
  try dsimp only [live5290, coloured5290]
  rw [child]
  dsimp only [result5289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5291_agree_conditional : tree5291 = literal5291 := by
  rw [tree5291_def]
  rfl
theorem node5291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5291 live5291 coloured5291 = result5291 := by
  rw [tree5291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5292_agree_conditional
    (child0 : tree5290 = literal5290)
    (child1 : tree5291 = literal5291) : tree5292 = literal5292 := by
  rw [tree5292_def, child0, child1]
  rfl
theorem node5292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5290 live5290 coloured5290 = result5290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5291 live5291 coloured5291 = result5291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5292 live5292 coloured5292 = result5292 := by
  rw [tree5292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5290 coloured5290 at child
  try dsimp only [live5292, coloured5292]
  rw [child]
  dsimp only [result5290]
  have child := child1
  unfold live5291 coloured5291 at child
  try dsimp only [live5292, coloured5292]
  rw [child]
  dsimp only [result5291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5293_agree_conditional : tree5293 = literal5293 := by
  rw [tree5293_def]
  rfl
theorem node5293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5293 live5293 coloured5293 = result5293 := by
  rw [tree5293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5294_agree_conditional
    (child0 : tree5292 = literal5292)
    (child1 : tree5293 = literal5293) : tree5294 = literal5294 := by
  rw [tree5294_def, child0, child1]
  rfl
theorem node5294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5292 live5292 coloured5292 = result5292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5293 live5293 coloured5293 = result5293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5294 live5294 coloured5294 = result5294 := by
  rw [tree5294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5292 coloured5292 at child
  try dsimp only [live5294, coloured5294]
  rw [child]
  dsimp only [result5292]
  have child := child1
  unfold live5293 coloured5293 at child
  try dsimp only [live5294, coloured5294]
  rw [child]
  dsimp only [result5293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5295_agree_conditional : tree5295 = literal5295 := by
  rw [tree5295_def]
  rfl
theorem node5295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5295 live5295 coloured5295 = result5295 := by
  rw [tree5295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5296_agree_conditional
    (child0 : tree5294 = literal5294)
    (child1 : tree5295 = literal5295) : tree5296 = literal5296 := by
  rw [tree5296_def, child0, child1]
  rfl
theorem node5296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5294 live5294 coloured5294 = result5294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5295 live5295 coloured5295 = result5295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5296 live5296 coloured5296 = result5296 := by
  rw [tree5296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5294 coloured5294 at child
  try dsimp only [live5296, coloured5296]
  rw [child]
  dsimp only [result5294]
  have child := child1
  unfold live5295 coloured5295 at child
  try dsimp only [live5296, coloured5296]
  rw [child]
  dsimp only [result5295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5297_agree_conditional : tree5297 = literal5297 := by
  rw [tree5297_def]
  rfl
theorem node5297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5297 live5297 coloured5297 = result5297 := by
  rw [tree5297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5298_agree_conditional
    (child0 : tree5296 = literal5296)
    (child1 : tree5297 = literal5297) : tree5298 = literal5298 := by
  rw [tree5298_def, child0, child1]
  rfl
theorem node5298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5296 live5296 coloured5296 = result5296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5297 live5297 coloured5297 = result5297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5298 live5298 coloured5298 = result5298 := by
  rw [tree5298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5296 coloured5296 at child
  try dsimp only [live5298, coloured5298]
  rw [child]
  dsimp only [result5296]
  have child := child1
  unfold live5297 coloured5297 at child
  try dsimp only [live5298, coloured5298]
  rw [child]
  dsimp only [result5297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5299_agree_conditional : tree5299 = literal5299 := by
  rw [tree5299_def]
  rfl
theorem node5299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5299 live5299 coloured5299 = result5299 := by
  rw [tree5299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5300_agree_conditional
    (child0 : tree5298 = literal5298)
    (child1 : tree5299 = literal5299) : tree5300 = literal5300 := by
  rw [tree5300_def, child0, child1]
  rfl
theorem node5300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5298 live5298 coloured5298 = result5298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5299 live5299 coloured5299 = result5299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5300 live5300 coloured5300 = result5300 := by
  rw [tree5300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5298 coloured5298 at child
  try dsimp only [live5300, coloured5300]
  rw [child]
  dsimp only [result5298]
  have child := child1
  unfold live5299 coloured5299 at child
  try dsimp only [live5300, coloured5300]
  rw [child]
  dsimp only [result5299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5301_agree_conditional : tree5301 = literal5301 := by
  rw [tree5301_def]
  rfl
theorem node5301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5301 live5301 coloured5301 = result5301 := by
  rw [tree5301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5302_agree_conditional
    (child0 : tree5300 = literal5300)
    (child1 : tree5301 = literal5301) : tree5302 = literal5302 := by
  rw [tree5302_def, child0, child1]
  rfl
theorem node5302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5300 live5300 coloured5300 = result5300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5301 live5301 coloured5301 = result5301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5302 live5302 coloured5302 = result5302 := by
  rw [tree5302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5300 coloured5300 at child
  try dsimp only [live5302, coloured5302]
  rw [child]
  dsimp only [result5300]
  have child := child1
  unfold live5301 coloured5301 at child
  try dsimp only [live5302, coloured5302]
  rw [child]
  dsimp only [result5301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5303_agree_conditional : tree5303 = literal5303 := by
  rw [tree5303_def]
  rfl
theorem node5303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5303 live5303 coloured5303 = result5303 := by
  rw [tree5303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5304_agree_conditional
    (child0 : tree5302 = literal5302)
    (child1 : tree5303 = literal5303) : tree5304 = literal5304 := by
  rw [tree5304_def, child0, child1]
  rfl
theorem node5304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5302 live5302 coloured5302 = result5302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5303 live5303 coloured5303 = result5303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5304 live5304 coloured5304 = result5304 := by
  rw [tree5304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5302 coloured5302 at child
  try dsimp only [live5304, coloured5304]
  rw [child]
  dsimp only [result5302]
  have child := child1
  unfold live5303 coloured5303 at child
  try dsimp only [live5304, coloured5304]
  rw [child]
  dsimp only [result5303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5305_agree_conditional : tree5305 = literal5305 := by
  rw [tree5305_def]
  rfl
theorem node5305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5305 live5305 coloured5305 = result5305 := by
  rw [tree5305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5306_agree_conditional
    (child0 : tree5304 = literal5304)
    (child1 : tree5305 = literal5305) : tree5306 = literal5306 := by
  rw [tree5306_def, child0, child1]
  rfl
theorem node5306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5304 live5304 coloured5304 = result5304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5305 live5305 coloured5305 = result5305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5306 live5306 coloured5306 = result5306 := by
  rw [tree5306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5304 coloured5304 at child
  try dsimp only [live5306, coloured5306]
  rw [child]
  dsimp only [result5304]
  have child := child1
  unfold live5305 coloured5305 at child
  try dsimp only [live5306, coloured5306]
  rw [child]
  dsimp only [result5305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5307_agree_conditional : tree5307 = literal5307 := by
  rw [tree5307_def]
  rfl
theorem node5307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5307 live5307 coloured5307 = result5307 := by
  rw [tree5307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5308_agree_conditional
    (child0 : tree5306 = literal5306)
    (child1 : tree5307 = literal5307) : tree5308 = literal5308 := by
  rw [tree5308_def, child0, child1]
  rfl
theorem node5308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5306 live5306 coloured5306 = result5306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5307 live5307 coloured5307 = result5307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5308 live5308 coloured5308 = result5308 := by
  rw [tree5308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5306 coloured5306 at child
  try dsimp only [live5308, coloured5308]
  rw [child]
  dsimp only [result5306]
  have child := child1
  unfold live5307 coloured5307 at child
  try dsimp only [live5308, coloured5308]
  rw [child]
  dsimp only [result5307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5309_agree_conditional : tree5309 = literal5309 := by
  rw [tree5309_def]
  rfl
theorem node5309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5309 live5309 coloured5309 = result5309 := by
  rw [tree5309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5310_agree_conditional
    (child0 : tree5308 = literal5308)
    (child1 : tree5309 = literal5309) : tree5310 = literal5310 := by
  rw [tree5310_def, child0, child1]
  rfl
theorem node5310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5308 live5308 coloured5308 = result5308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5309 live5309 coloured5309 = result5309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5310 live5310 coloured5310 = result5310 := by
  rw [tree5310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5308 coloured5308 at child
  try dsimp only [live5310, coloured5310]
  rw [child]
  dsimp only [result5308]
  have child := child1
  unfold live5309 coloured5309 at child
  try dsimp only [live5310, coloured5310]
  rw [child]
  dsimp only [result5309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5311_agree_conditional : tree5311 = literal5311 := by
  rw [tree5311_def]
  rfl
theorem node5311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5311 live5311 coloured5311 = result5311 := by
  rw [tree5311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5312_agree_conditional
    (child0 : tree5310 = literal5310)
    (child1 : tree5311 = literal5311) : tree5312 = literal5312 := by
  rw [tree5312_def, child0, child1]
  rfl
theorem node5312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5310 live5310 coloured5310 = result5310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5311 live5311 coloured5311 = result5311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5312 live5312 coloured5312 = result5312 := by
  rw [tree5312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5310 coloured5310 at child
  try dsimp only [live5312, coloured5312]
  rw [child]
  dsimp only [result5310]
  have child := child1
  unfold live5311 coloured5311 at child
  try dsimp only [live5312, coloured5312]
  rw [child]
  dsimp only [result5311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5313_agree_conditional : tree5313 = literal5313 := by
  rw [tree5313_def]
  rfl
theorem node5313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5313 live5313 coloured5313 = result5313 := by
  rw [tree5313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5314_agree_conditional
    (child0 : tree5312 = literal5312)
    (child1 : tree5313 = literal5313) : tree5314 = literal5314 := by
  rw [tree5314_def, child0, child1]
  rfl
theorem node5314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5312 live5312 coloured5312 = result5312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5313 live5313 coloured5313 = result5313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5314 live5314 coloured5314 = result5314 := by
  rw [tree5314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5312 coloured5312 at child
  try dsimp only [live5314, coloured5314]
  rw [child]
  dsimp only [result5312]
  have child := child1
  unfold live5313 coloured5313 at child
  try dsimp only [live5314, coloured5314]
  rw [child]
  dsimp only [result5313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5315_agree_conditional : tree5315 = literal5315 := by
  rw [tree5315_def]
  rfl
theorem node5315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5315 live5315 coloured5315 = result5315 := by
  rw [tree5315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5316_agree_conditional
    (child0 : tree5314 = literal5314)
    (child1 : tree5315 = literal5315) : tree5316 = literal5316 := by
  rw [tree5316_def, child0, child1]
  rfl
theorem node5316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5314 live5314 coloured5314 = result5314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5315 live5315 coloured5315 = result5315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5316 live5316 coloured5316 = result5316 := by
  rw [tree5316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5314 coloured5314 at child
  try dsimp only [live5316, coloured5316]
  rw [child]
  dsimp only [result5314]
  have child := child1
  unfold live5315 coloured5315 at child
  try dsimp only [live5316, coloured5316]
  rw [child]
  dsimp only [result5315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5317_agree_conditional : tree5317 = literal5317 := by
  rw [tree5317_def]
  rfl
theorem node5317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5317 live5317 coloured5317 = result5317 := by
  rw [tree5317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5318_agree_conditional
    (child0 : tree5316 = literal5316)
    (child1 : tree5317 = literal5317) : tree5318 = literal5318 := by
  rw [tree5318_def, child0, child1]
  rfl
theorem node5318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5316 live5316 coloured5316 = result5316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5317 live5317 coloured5317 = result5317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5318 live5318 coloured5318 = result5318 := by
  rw [tree5318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5316 coloured5316 at child
  try dsimp only [live5318, coloured5318]
  rw [child]
  dsimp only [result5316]
  have child := child1
  unfold live5317 coloured5317 at child
  try dsimp only [live5318, coloured5318]
  rw [child]
  dsimp only [result5317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5319_agree_conditional : tree5319 = literal5319 := by
  rw [tree5319_def]
  rfl
theorem node5319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5319 live5319 coloured5319 = result5319 := by
  rw [tree5319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5320_agree_conditional
    (child0 : tree5318 = literal5318)
    (child1 : tree5319 = literal5319) : tree5320 = literal5320 := by
  rw [tree5320_def, child0, child1]
  rfl
theorem node5320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5318 live5318 coloured5318 = result5318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5319 live5319 coloured5319 = result5319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5320 live5320 coloured5320 = result5320 := by
  rw [tree5320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5318 coloured5318 at child
  try dsimp only [live5320, coloured5320]
  rw [child]
  dsimp only [result5318]
  have child := child1
  unfold live5319 coloured5319 at child
  try dsimp only [live5320, coloured5320]
  rw [child]
  dsimp only [result5319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5321_agree_conditional : tree5321 = literal5321 := by
  rw [tree5321_def]
  rfl
theorem node5321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5321 live5321 coloured5321 = result5321 := by
  rw [tree5321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5322_agree_conditional
    (child0 : tree5320 = literal5320)
    (child1 : tree5321 = literal5321) : tree5322 = literal5322 := by
  rw [tree5322_def, child0, child1]
  rfl
theorem node5322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5320 live5320 coloured5320 = result5320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5321 live5321 coloured5321 = result5321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5322 live5322 coloured5322 = result5322 := by
  rw [tree5322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5320 coloured5320 at child
  try dsimp only [live5322, coloured5322]
  rw [child]
  dsimp only [result5320]
  have child := child1
  unfold live5321 coloured5321 at child
  try dsimp only [live5322, coloured5322]
  rw [child]
  dsimp only [result5321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5323_agree_conditional : tree5323 = literal5323 := by
  rw [tree5323_def]
  rfl
theorem node5323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5323 live5323 coloured5323 = result5323 := by
  rw [tree5323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5324_agree_conditional
    (child0 : tree5322 = literal5322)
    (child1 : tree5323 = literal5323) : tree5324 = literal5324 := by
  rw [tree5324_def, child0, child1]
  rfl
theorem node5324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5322 live5322 coloured5322 = result5322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5323 live5323 coloured5323 = result5323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5324 live5324 coloured5324 = result5324 := by
  rw [tree5324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5322 coloured5322 at child
  try dsimp only [live5324, coloured5324]
  rw [child]
  dsimp only [result5322]
  have child := child1
  unfold live5323 coloured5323 at child
  try dsimp only [live5324, coloured5324]
  rw [child]
  dsimp only [result5323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5325_agree_conditional : tree5325 = literal5325 := by
  rw [tree5325_def]
  rfl
theorem node5325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5325 live5325 coloured5325 = result5325 := by
  rw [tree5325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5326_agree_conditional
    (child0 : tree5324 = literal5324)
    (child1 : tree5325 = literal5325) : tree5326 = literal5326 := by
  rw [tree5326_def, child0, child1]
  rfl
theorem node5326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5324 live5324 coloured5324 = result5324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5325 live5325 coloured5325 = result5325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5326 live5326 coloured5326 = result5326 := by
  rw [tree5326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5324 coloured5324 at child
  try dsimp only [live5326, coloured5326]
  rw [child]
  dsimp only [result5324]
  have child := child1
  unfold live5325 coloured5325 at child
  try dsimp only [live5326, coloured5326]
  rw [child]
  dsimp only [result5325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5327_agree_conditional : tree5327 = literal5327 := by
  rw [tree5327_def]
  rfl
theorem node5327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5327 live5327 coloured5327 = result5327 := by
  rw [tree5327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5328_agree_conditional
    (child0 : tree5326 = literal5326)
    (child1 : tree5327 = literal5327) : tree5328 = literal5328 := by
  rw [tree5328_def, child0, child1]
  rfl
theorem node5328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5326 live5326 coloured5326 = result5326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5327 live5327 coloured5327 = result5327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5328 live5328 coloured5328 = result5328 := by
  rw [tree5328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5326 coloured5326 at child
  try dsimp only [live5328, coloured5328]
  rw [child]
  dsimp only [result5326]
  have child := child1
  unfold live5327 coloured5327 at child
  try dsimp only [live5328, coloured5328]
  rw [child]
  dsimp only [result5327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5329_agree_conditional : tree5329 = literal5329 := by
  rw [tree5329_def]
  rfl
theorem node5329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5329 live5329 coloured5329 = result5329 := by
  rw [tree5329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5330_agree_conditional
    (child0 : tree5328 = literal5328)
    (child1 : tree5329 = literal5329) : tree5330 = literal5330 := by
  rw [tree5330_def, child0, child1]
  rfl
theorem node5330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5328 live5328 coloured5328 = result5328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5329 live5329 coloured5329 = result5329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5330 live5330 coloured5330 = result5330 := by
  rw [tree5330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5328 coloured5328 at child
  try dsimp only [live5330, coloured5330]
  rw [child]
  dsimp only [result5328]
  have child := child1
  unfold live5329 coloured5329 at child
  try dsimp only [live5330, coloured5330]
  rw [child]
  dsimp only [result5329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5331_agree_conditional : tree5331 = literal5331 := by
  rw [tree5331_def]
  rfl
theorem node5331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5331 live5331 coloured5331 = result5331 := by
  rw [tree5331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5332_agree_conditional
    (child0 : tree5330 = literal5330)
    (child1 : tree5331 = literal5331) : tree5332 = literal5332 := by
  rw [tree5332_def, child0, child1]
  rfl
theorem node5332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5330 live5330 coloured5330 = result5330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5331 live5331 coloured5331 = result5331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5332 live5332 coloured5332 = result5332 := by
  rw [tree5332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5330 coloured5330 at child
  try dsimp only [live5332, coloured5332]
  rw [child]
  dsimp only [result5330]
  have child := child1
  unfold live5331 coloured5331 at child
  try dsimp only [live5332, coloured5332]
  rw [child]
  dsimp only [result5331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5333_agree_conditional : tree5333 = literal5333 := by
  rw [tree5333_def]
  rfl
theorem node5333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5333 live5333 coloured5333 = result5333 := by
  rw [tree5333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5334_agree_conditional
    (child0 : tree5332 = literal5332)
    (child1 : tree5333 = literal5333) : tree5334 = literal5334 := by
  rw [tree5334_def, child0, child1]
  rfl
theorem node5334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5332 live5332 coloured5332 = result5332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5333 live5333 coloured5333 = result5333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5334 live5334 coloured5334 = result5334 := by
  rw [tree5334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5332 coloured5332 at child
  try dsimp only [live5334, coloured5334]
  rw [child]
  dsimp only [result5332]
  have child := child1
  unfold live5333 coloured5333 at child
  try dsimp only [live5334, coloured5334]
  rw [child]
  dsimp only [result5333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5335_agree_conditional : tree5335 = literal5335 := by
  rw [tree5335_def]
  rfl
theorem node5335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5335 live5335 coloured5335 = result5335 := by
  rw [tree5335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5336_agree_conditional
    (child0 : tree5334 = literal5334)
    (child1 : tree5335 = literal5335) : tree5336 = literal5336 := by
  rw [tree5336_def, child0, child1]
  rfl
theorem node5336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5334 live5334 coloured5334 = result5334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5335 live5335 coloured5335 = result5335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5336 live5336 coloured5336 = result5336 := by
  rw [tree5336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5334 coloured5334 at child
  try dsimp only [live5336, coloured5336]
  rw [child]
  dsimp only [result5334]
  have child := child1
  unfold live5335 coloured5335 at child
  try dsimp only [live5336, coloured5336]
  rw [child]
  dsimp only [result5335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5337_agree_conditional : tree5337 = literal5337 := by
  rw [tree5337_def]
  rfl
theorem node5337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5337 live5337 coloured5337 = result5337 := by
  rw [tree5337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5338_agree_conditional
    (child0 : tree5336 = literal5336)
    (child1 : tree5337 = literal5337) : tree5338 = literal5338 := by
  rw [tree5338_def, child0, child1]
  rfl
theorem node5338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5336 live5336 coloured5336 = result5336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5337 live5337 coloured5337 = result5337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5338 live5338 coloured5338 = result5338 := by
  rw [tree5338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5336 coloured5336 at child
  try dsimp only [live5338, coloured5338]
  rw [child]
  dsimp only [result5336]
  have child := child1
  unfold live5337 coloured5337 at child
  try dsimp only [live5338, coloured5338]
  rw [child]
  dsimp only [result5337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5339_agree_conditional : tree5339 = literal5339 := by
  rw [tree5339_def]
  rfl
theorem node5339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5339 live5339 coloured5339 = result5339 := by
  rw [tree5339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5340_agree_conditional
    (child0 : tree5338 = literal5338)
    (child1 : tree5339 = literal5339) : tree5340 = literal5340 := by
  rw [tree5340_def, child0, child1]
  rfl
theorem node5340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5338 live5338 coloured5338 = result5338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5339 live5339 coloured5339 = result5339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5340 live5340 coloured5340 = result5340 := by
  rw [tree5340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5338 coloured5338 at child
  try dsimp only [live5340, coloured5340]
  rw [child]
  dsimp only [result5338]
  have child := child1
  unfold live5339 coloured5339 at child
  try dsimp only [live5340, coloured5340]
  rw [child]
  dsimp only [result5339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5341_agree_conditional : tree5341 = literal5341 := by
  rw [tree5341_def]
  rfl
theorem node5341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5341 live5341 coloured5341 = result5341 := by
  rw [tree5341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5342_agree_conditional
    (child0 : tree5340 = literal5340)
    (child1 : tree5341 = literal5341) : tree5342 = literal5342 := by
  rw [tree5342_def, child0, child1]
  rfl
theorem node5342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5340 live5340 coloured5340 = result5340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5341 live5341 coloured5341 = result5341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5342 live5342 coloured5342 = result5342 := by
  rw [tree5342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5340 coloured5340 at child
  try dsimp only [live5342, coloured5342]
  rw [child]
  dsimp only [result5340]
  have child := child1
  unfold live5341 coloured5341 at child
  try dsimp only [live5342, coloured5342]
  rw [child]
  dsimp only [result5341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5343_agree_conditional : tree5343 = literal5343 := by
  rw [tree5343_def]
  rfl
theorem node5343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5343 live5343 coloured5343 = result5343 := by
  rw [tree5343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5344_agree_conditional
    (child0 : tree5342 = literal5342)
    (child1 : tree5343 = literal5343) : tree5344 = literal5344 := by
  rw [tree5344_def, child0, child1]
  rfl
theorem node5344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5342 live5342 coloured5342 = result5342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5343 live5343 coloured5343 = result5343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5344 live5344 coloured5344 = result5344 := by
  rw [tree5344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5342 coloured5342 at child
  try dsimp only [live5344, coloured5344]
  rw [child]
  dsimp only [result5342]
  have child := child1
  unfold live5343 coloured5343 at child
  try dsimp only [live5344, coloured5344]
  rw [child]
  dsimp only [result5343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5345_agree_conditional : tree5345 = literal5345 := by
  rw [tree5345_def]
  rfl
theorem node5345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5345 live5345 coloured5345 = result5345 := by
  rw [tree5345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5346_agree_conditional
    (child0 : tree5344 = literal5344)
    (child1 : tree5345 = literal5345) : tree5346 = literal5346 := by
  rw [tree5346_def, child0, child1]
  rfl
theorem node5346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5344 live5344 coloured5344 = result5344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5345 live5345 coloured5345 = result5345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5346 live5346 coloured5346 = result5346 := by
  rw [tree5346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5344 coloured5344 at child
  try dsimp only [live5346, coloured5346]
  rw [child]
  dsimp only [result5344]
  have child := child1
  unfold live5345 coloured5345 at child
  try dsimp only [live5346, coloured5346]
  rw [child]
  dsimp only [result5345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5347_agree_conditional : tree5347 = literal5347 := by
  rw [tree5347_def]
  rfl
theorem node5347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5347 live5347 coloured5347 = result5347 := by
  rw [tree5347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5348_agree_conditional
    (child0 : tree5346 = literal5346)
    (child1 : tree5347 = literal5347) : tree5348 = literal5348 := by
  rw [tree5348_def, child0, child1]
  rfl
theorem node5348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5346 live5346 coloured5346 = result5346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5347 live5347 coloured5347 = result5347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5348 live5348 coloured5348 = result5348 := by
  rw [tree5348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5346 coloured5346 at child
  try dsimp only [live5348, coloured5348]
  rw [child]
  dsimp only [result5346]
  have child := child1
  unfold live5347 coloured5347 at child
  try dsimp only [live5348, coloured5348]
  rw [child]
  dsimp only [result5347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5349_agree_conditional : tree5349 = literal5349 := by
  rw [tree5349_def]
  rfl
theorem node5349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5349 live5349 coloured5349 = result5349 := by
  rw [tree5349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5350_agree_conditional
    (child0 : tree5348 = literal5348)
    (child1 : tree5349 = literal5349) : tree5350 = literal5350 := by
  rw [tree5350_def, child0, child1]
  rfl
theorem node5350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5348 live5348 coloured5348 = result5348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5349 live5349 coloured5349 = result5349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5350 live5350 coloured5350 = result5350 := by
  rw [tree5350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5348 coloured5348 at child
  try dsimp only [live5350, coloured5350]
  rw [child]
  dsimp only [result5348]
  have child := child1
  unfold live5349 coloured5349 at child
  try dsimp only [live5350, coloured5350]
  rw [child]
  dsimp only [result5349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5351_agree_conditional : tree5351 = literal5351 := by
  rw [tree5351_def]
  rfl
theorem node5351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5351 live5351 coloured5351 = result5351 := by
  rw [tree5351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5352_agree_conditional
    (child0 : tree5350 = literal5350)
    (child1 : tree5351 = literal5351) : tree5352 = literal5352 := by
  rw [tree5352_def, child0, child1]
  rfl
theorem node5352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5350 live5350 coloured5350 = result5350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5351 live5351 coloured5351 = result5351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5352 live5352 coloured5352 = result5352 := by
  rw [tree5352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5350 coloured5350 at child
  try dsimp only [live5352, coloured5352]
  rw [child]
  dsimp only [result5350]
  have child := child1
  unfold live5351 coloured5351 at child
  try dsimp only [live5352, coloured5352]
  rw [child]
  dsimp only [result5351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5353_agree_conditional : tree5353 = literal5353 := by
  rw [tree5353_def]
  rfl
theorem node5353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5353 live5353 coloured5353 = result5353 := by
  rw [tree5353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5354_agree_conditional
    (child0 : tree5352 = literal5352)
    (child1 : tree5353 = literal5353) : tree5354 = literal5354 := by
  rw [tree5354_def, child0, child1]
  rfl
theorem node5354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5352 live5352 coloured5352 = result5352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5353 live5353 coloured5353 = result5353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5354 live5354 coloured5354 = result5354 := by
  rw [tree5354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5352 coloured5352 at child
  try dsimp only [live5354, coloured5354]
  rw [child]
  dsimp only [result5352]
  have child := child1
  unfold live5353 coloured5353 at child
  try dsimp only [live5354, coloured5354]
  rw [child]
  dsimp only [result5353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5355_agree_conditional : tree5355 = literal5355 := by
  rw [tree5355_def]
  rfl
theorem node5355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5355 live5355 coloured5355 = result5355 := by
  rw [tree5355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5356_agree_conditional
    (child0 : tree5354 = literal5354)
    (child1 : tree5355 = literal5355) : tree5356 = literal5356 := by
  rw [tree5356_def, child0, child1]
  rfl
theorem node5356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5354 live5354 coloured5354 = result5354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5355 live5355 coloured5355 = result5355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5356 live5356 coloured5356 = result5356 := by
  rw [tree5356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5354 coloured5354 at child
  try dsimp only [live5356, coloured5356]
  rw [child]
  dsimp only [result5354]
  have child := child1
  unfold live5355 coloured5355 at child
  try dsimp only [live5356, coloured5356]
  rw [child]
  dsimp only [result5355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5357_agree_conditional : tree5357 = literal5357 := by
  rw [tree5357_def]
  rfl
theorem node5357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5357 live5357 coloured5357 = result5357 := by
  rw [tree5357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5358_agree_conditional
    (child0 : tree5356 = literal5356)
    (child1 : tree5357 = literal5357) : tree5358 = literal5358 := by
  rw [tree5358_def, child0, child1]
  rfl
theorem node5358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5356 live5356 coloured5356 = result5356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5357 live5357 coloured5357 = result5357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5358 live5358 coloured5358 = result5358 := by
  rw [tree5358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5356 coloured5356 at child
  try dsimp only [live5358, coloured5358]
  rw [child]
  dsimp only [result5356]
  have child := child1
  unfold live5357 coloured5357 at child
  try dsimp only [live5358, coloured5358]
  rw [child]
  dsimp only [result5357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5359_agree_conditional : tree5359 = literal5359 := by
  rw [tree5359_def]
  rfl
theorem node5359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5359 live5359 coloured5359 = result5359 := by
  rw [tree5359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5360_agree_conditional
    (child0 : tree5358 = literal5358)
    (child1 : tree5359 = literal5359) : tree5360 = literal5360 := by
  rw [tree5360_def, child0, child1]
  rfl
theorem node5360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5358 live5358 coloured5358 = result5358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5359 live5359 coloured5359 = result5359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5360 live5360 coloured5360 = result5360 := by
  rw [tree5360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5358 coloured5358 at child
  try dsimp only [live5360, coloured5360]
  rw [child]
  dsimp only [result5358]
  have child := child1
  unfold live5359 coloured5359 at child
  try dsimp only [live5360, coloured5360]
  rw [child]
  dsimp only [result5359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5361_agree_conditional : tree5361 = literal5361 := by
  rw [tree5361_def]
  rfl
theorem node5361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5361 live5361 coloured5361 = result5361 := by
  rw [tree5361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5362_agree_conditional
    (child0 : tree5360 = literal5360)
    (child1 : tree5361 = literal5361) : tree5362 = literal5362 := by
  rw [tree5362_def, child0, child1]
  rfl
theorem node5362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5360 live5360 coloured5360 = result5360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5361 live5361 coloured5361 = result5361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5362 live5362 coloured5362 = result5362 := by
  rw [tree5362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5360 coloured5360 at child
  try dsimp only [live5362, coloured5362]
  rw [child]
  dsimp only [result5360]
  have child := child1
  unfold live5361 coloured5361 at child
  try dsimp only [live5362, coloured5362]
  rw [child]
  dsimp only [result5361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5363_agree_conditional : tree5363 = literal5363 := by
  rw [tree5363_def]
  rfl
theorem node5363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5363 live5363 coloured5363 = result5363 := by
  rw [tree5363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5364_agree_conditional
    (child0 : tree5362 = literal5362)
    (child1 : tree5363 = literal5363) : tree5364 = literal5364 := by
  rw [tree5364_def, child0, child1]
  rfl
theorem node5364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5362 live5362 coloured5362 = result5362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5363 live5363 coloured5363 = result5363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5364 live5364 coloured5364 = result5364 := by
  rw [tree5364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5362 coloured5362 at child
  try dsimp only [live5364, coloured5364]
  rw [child]
  dsimp only [result5362]
  have child := child1
  unfold live5363 coloured5363 at child
  try dsimp only [live5364, coloured5364]
  rw [child]
  dsimp only [result5363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5365_agree_conditional : tree5365 = literal5365 := by
  rw [tree5365_def]
  rfl
theorem node5365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5365 live5365 coloured5365 = result5365 := by
  rw [tree5365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5366_agree_conditional
    (child0 : tree5364 = literal5364)
    (child1 : tree5365 = literal5365) : tree5366 = literal5366 := by
  rw [tree5366_def, child0, child1]
  rfl
theorem node5366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5364 live5364 coloured5364 = result5364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5365 live5365 coloured5365 = result5365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5366 live5366 coloured5366 = result5366 := by
  rw [tree5366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5364 coloured5364 at child
  try dsimp only [live5366, coloured5366]
  rw [child]
  dsimp only [result5364]
  have child := child1
  unfold live5365 coloured5365 at child
  try dsimp only [live5366, coloured5366]
  rw [child]
  dsimp only [result5365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5367_agree_conditional : tree5367 = literal5367 := by
  rw [tree5367_def]
  rfl
theorem node5367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5367 live5367 coloured5367 = result5367 := by
  rw [tree5367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5368_agree_conditional
    (child0 : tree5366 = literal5366)
    (child1 : tree5367 = literal5367) : tree5368 = literal5368 := by
  rw [tree5368_def, child0, child1]
  rfl
theorem node5368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5366 live5366 coloured5366 = result5366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5367 live5367 coloured5367 = result5367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5368 live5368 coloured5368 = result5368 := by
  rw [tree5368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5366 coloured5366 at child
  try dsimp only [live5368, coloured5368]
  rw [child]
  dsimp only [result5366]
  have child := child1
  unfold live5367 coloured5367 at child
  try dsimp only [live5368, coloured5368]
  rw [child]
  dsimp only [result5367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5369_agree_conditional : tree5369 = literal5369 := by
  rw [tree5369_def]
  rfl
theorem node5369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5369 live5369 coloured5369 = result5369 := by
  rw [tree5369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5370_agree_conditional
    (child0 : tree5368 = literal5368)
    (child1 : tree5369 = literal5369) : tree5370 = literal5370 := by
  rw [tree5370_def, child0, child1]
  rfl
theorem node5370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5368 live5368 coloured5368 = result5368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5369 live5369 coloured5369 = result5369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5370 live5370 coloured5370 = result5370 := by
  rw [tree5370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5368 coloured5368 at child
  try dsimp only [live5370, coloured5370]
  rw [child]
  dsimp only [result5368]
  have child := child1
  unfold live5369 coloured5369 at child
  try dsimp only [live5370, coloured5370]
  rw [child]
  dsimp only [result5369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5371_agree_conditional : tree5371 = literal5371 := by
  rw [tree5371_def]
  rfl
theorem node5371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5371 live5371 coloured5371 = result5371 := by
  rw [tree5371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5372_agree_conditional
    (child0 : tree5370 = literal5370)
    (child1 : tree5371 = literal5371) : tree5372 = literal5372 := by
  rw [tree5372_def, child0, child1]
  rfl
theorem node5372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5370 live5370 coloured5370 = result5370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5371 live5371 coloured5371 = result5371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5372 live5372 coloured5372 = result5372 := by
  rw [tree5372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5370 coloured5370 at child
  try dsimp only [live5372, coloured5372]
  rw [child]
  dsimp only [result5370]
  have child := child1
  unfold live5371 coloured5371 at child
  try dsimp only [live5372, coloured5372]
  rw [child]
  dsimp only [result5371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5373_agree_conditional : tree5373 = literal5373 := by
  rw [tree5373_def]
  rfl
theorem node5373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5373 live5373 coloured5373 = result5373 := by
  rw [tree5373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5374_agree_conditional
    (child0 : tree5372 = literal5372)
    (child1 : tree5373 = literal5373) : tree5374 = literal5374 := by
  rw [tree5374_def, child0, child1]
  rfl
theorem node5374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5372 live5372 coloured5372 = result5372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5373 live5373 coloured5373 = result5373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5374 live5374 coloured5374 = result5374 := by
  rw [tree5374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5372 coloured5372 at child
  try dsimp only [live5374, coloured5374]
  rw [child]
  dsimp only [result5372]
  have child := child1
  unfold live5373 coloured5373 at child
  try dsimp only [live5374, coloured5374]
  rw [child]
  dsimp only [result5373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5375_agree_conditional : tree5375 = literal5375 := by
  rw [tree5375_def]
  rfl
theorem node5375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5375 live5375 coloured5375 = result5375 := by
  rw [tree5375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
