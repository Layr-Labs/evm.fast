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
theorem tree10272_agree_conditional
    (child0 : tree10270 = literal10270)
    (child1 : tree10271 = literal10271) : tree10272 = literal10272 := by
  rw [tree10272_def, child0, child1]
  rfl
theorem node10272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10270 live10270 coloured10270 = result10270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10271 live10271 coloured10271 = result10271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10272 live10272 coloured10272 = result10272 := by
  rw [tree10272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10270 coloured10270 at child
  try dsimp only [live10272, coloured10272]
  rw [child]
  dsimp only [result10270]
  have child := child1
  unfold live10271 coloured10271 at child
  try dsimp only [live10272, coloured10272]
  rw [child]
  dsimp only [result10271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10273_agree_conditional : tree10273 = literal10273 := by
  rw [tree10273_def]
  rfl
theorem node10273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10273 live10273 coloured10273 = result10273 := by
  rw [tree10273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10274_agree_conditional
    (child0 : tree10272 = literal10272)
    (child1 : tree10273 = literal10273) : tree10274 = literal10274 := by
  rw [tree10274_def, child0, child1]
  rfl
theorem node10274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10272 live10272 coloured10272 = result10272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10273 live10273 coloured10273 = result10273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10274 live10274 coloured10274 = result10274 := by
  rw [tree10274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10272 coloured10272 at child
  try dsimp only [live10274, coloured10274]
  rw [child]
  dsimp only [result10272]
  have child := child1
  unfold live10273 coloured10273 at child
  try dsimp only [live10274, coloured10274]
  rw [child]
  dsimp only [result10273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10275_agree_conditional : tree10275 = literal10275 := by
  rw [tree10275_def]
  rfl
theorem node10275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10275 live10275 coloured10275 = result10275 := by
  rw [tree10275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10276_agree_conditional
    (child0 : tree10274 = literal10274)
    (child1 : tree10275 = literal10275) : tree10276 = literal10276 := by
  rw [tree10276_def, child0, child1]
  rfl
theorem node10276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10274 live10274 coloured10274 = result10274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10275 live10275 coloured10275 = result10275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10276 live10276 coloured10276 = result10276 := by
  rw [tree10276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10274 coloured10274 at child
  try dsimp only [live10276, coloured10276]
  rw [child]
  dsimp only [result10274]
  have child := child1
  unfold live10275 coloured10275 at child
  try dsimp only [live10276, coloured10276]
  rw [child]
  dsimp only [result10275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10277_agree_conditional : tree10277 = literal10277 := by
  rw [tree10277_def]
  rfl
theorem node10277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10277 live10277 coloured10277 = result10277 := by
  rw [tree10277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10278_agree_conditional
    (child0 : tree10276 = literal10276)
    (child1 : tree10277 = literal10277) : tree10278 = literal10278 := by
  rw [tree10278_def, child0, child1]
  rfl
theorem node10278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10276 live10276 coloured10276 = result10276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10277 live10277 coloured10277 = result10277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10278 live10278 coloured10278 = result10278 := by
  rw [tree10278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10276 coloured10276 at child
  try dsimp only [live10278, coloured10278]
  rw [child]
  dsimp only [result10276]
  have child := child1
  unfold live10277 coloured10277 at child
  try dsimp only [live10278, coloured10278]
  rw [child]
  dsimp only [result10277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10279_agree_conditional : tree10279 = literal10279 := by
  rw [tree10279_def]
  rfl
theorem node10279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10279 live10279 coloured10279 = result10279 := by
  rw [tree10279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10280_agree_conditional
    (child0 : tree10278 = literal10278)
    (child1 : tree10279 = literal10279) : tree10280 = literal10280 := by
  rw [tree10280_def, child0, child1]
  rfl
theorem node10280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10278 live10278 coloured10278 = result10278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10279 live10279 coloured10279 = result10279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10280 live10280 coloured10280 = result10280 := by
  rw [tree10280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10278 coloured10278 at child
  try dsimp only [live10280, coloured10280]
  rw [child]
  dsimp only [result10278]
  have child := child1
  unfold live10279 coloured10279 at child
  try dsimp only [live10280, coloured10280]
  rw [child]
  dsimp only [result10279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10281_agree_conditional : tree10281 = literal10281 := by
  rw [tree10281_def]
  rfl
theorem node10281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10281 live10281 coloured10281 = result10281 := by
  rw [tree10281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10282_agree_conditional
    (child0 : tree10280 = literal10280)
    (child1 : tree10281 = literal10281) : tree10282 = literal10282 := by
  rw [tree10282_def, child0, child1]
  rfl
theorem node10282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10280 live10280 coloured10280 = result10280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10281 live10281 coloured10281 = result10281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10282 live10282 coloured10282 = result10282 := by
  rw [tree10282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10280 coloured10280 at child
  try dsimp only [live10282, coloured10282]
  rw [child]
  dsimp only [result10280]
  have child := child1
  unfold live10281 coloured10281 at child
  try dsimp only [live10282, coloured10282]
  rw [child]
  dsimp only [result10281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10283_agree_conditional : tree10283 = literal10283 := by
  rw [tree10283_def]
  rfl
theorem node10283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10283 live10283 coloured10283 = result10283 := by
  rw [tree10283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10284_agree_conditional
    (child0 : tree10282 = literal10282)
    (child1 : tree10283 = literal10283) : tree10284 = literal10284 := by
  rw [tree10284_def, child0, child1]
  rfl
theorem node10284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10282 live10282 coloured10282 = result10282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10283 live10283 coloured10283 = result10283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10284 live10284 coloured10284 = result10284 := by
  rw [tree10284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10282 coloured10282 at child
  try dsimp only [live10284, coloured10284]
  rw [child]
  dsimp only [result10282]
  have child := child1
  unfold live10283 coloured10283 at child
  try dsimp only [live10284, coloured10284]
  rw [child]
  dsimp only [result10283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10285_agree_conditional : tree10285 = literal10285 := by
  rw [tree10285_def]
  rfl
theorem node10285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10285 live10285 coloured10285 = result10285 := by
  rw [tree10285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10286_agree_conditional
    (child0 : tree10284 = literal10284)
    (child1 : tree10285 = literal10285) : tree10286 = literal10286 := by
  rw [tree10286_def, child0, child1]
  rfl
theorem node10286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10284 live10284 coloured10284 = result10284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10285 live10285 coloured10285 = result10285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10286 live10286 coloured10286 = result10286 := by
  rw [tree10286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10284 coloured10284 at child
  try dsimp only [live10286, coloured10286]
  rw [child]
  dsimp only [result10284]
  have child := child1
  unfold live10285 coloured10285 at child
  try dsimp only [live10286, coloured10286]
  rw [child]
  dsimp only [result10285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10287_agree_conditional : tree10287 = literal10287 := by
  rw [tree10287_def]
  rfl
theorem node10287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10287 live10287 coloured10287 = result10287 := by
  rw [tree10287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10288_agree_conditional
    (child0 : tree10286 = literal10286)
    (child1 : tree10287 = literal10287) : tree10288 = literal10288 := by
  rw [tree10288_def, child0, child1]
  rfl
theorem node10288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10286 live10286 coloured10286 = result10286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10287 live10287 coloured10287 = result10287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10288 live10288 coloured10288 = result10288 := by
  rw [tree10288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10286 coloured10286 at child
  try dsimp only [live10288, coloured10288]
  rw [child]
  dsimp only [result10286]
  have child := child1
  unfold live10287 coloured10287 at child
  try dsimp only [live10288, coloured10288]
  rw [child]
  dsimp only [result10287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10289_agree_conditional : tree10289 = literal10289 := by
  rw [tree10289_def]
  rfl
theorem node10289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10289 live10289 coloured10289 = result10289 := by
  rw [tree10289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10290_agree_conditional
    (child0 : tree10288 = literal10288)
    (child1 : tree10289 = literal10289) : tree10290 = literal10290 := by
  rw [tree10290_def, child0, child1]
  rfl
theorem node10290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10288 live10288 coloured10288 = result10288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10289 live10289 coloured10289 = result10289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10290 live10290 coloured10290 = result10290 := by
  rw [tree10290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10288 coloured10288 at child
  try dsimp only [live10290, coloured10290]
  rw [child]
  dsimp only [result10288]
  have child := child1
  unfold live10289 coloured10289 at child
  try dsimp only [live10290, coloured10290]
  rw [child]
  dsimp only [result10289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10291_agree_conditional : tree10291 = literal10291 := by
  rw [tree10291_def]
  rfl
theorem node10291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10291 live10291 coloured10291 = result10291 := by
  rw [tree10291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10292_agree_conditional
    (child0 : tree10290 = literal10290)
    (child1 : tree10291 = literal10291) : tree10292 = literal10292 := by
  rw [tree10292_def, child0, child1]
  rfl
theorem node10292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10290 live10290 coloured10290 = result10290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10291 live10291 coloured10291 = result10291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10292 live10292 coloured10292 = result10292 := by
  rw [tree10292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10290 coloured10290 at child
  try dsimp only [live10292, coloured10292]
  rw [child]
  dsimp only [result10290]
  have child := child1
  unfold live10291 coloured10291 at child
  try dsimp only [live10292, coloured10292]
  rw [child]
  dsimp only [result10291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10293_agree_conditional : tree10293 = literal10293 := by
  rw [tree10293_def]
  rfl
theorem node10293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10293 live10293 coloured10293 = result10293 := by
  rw [tree10293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10294_agree_conditional
    (child0 : tree10292 = literal10292)
    (child1 : tree10293 = literal10293) : tree10294 = literal10294 := by
  rw [tree10294_def, child0, child1]
  rfl
theorem node10294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10292 live10292 coloured10292 = result10292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10293 live10293 coloured10293 = result10293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10294 live10294 coloured10294 = result10294 := by
  rw [tree10294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10292 coloured10292 at child
  try dsimp only [live10294, coloured10294]
  rw [child]
  dsimp only [result10292]
  have child := child1
  unfold live10293 coloured10293 at child
  try dsimp only [live10294, coloured10294]
  rw [child]
  dsimp only [result10293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10295_agree_conditional : tree10295 = literal10295 := by
  rw [tree10295_def]
  rfl
theorem node10295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10295 live10295 coloured10295 = result10295 := by
  rw [tree10295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10296_agree_conditional
    (child0 : tree10294 = literal10294)
    (child1 : tree10295 = literal10295) : tree10296 = literal10296 := by
  rw [tree10296_def, child0, child1]
  rfl
theorem node10296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10294 live10294 coloured10294 = result10294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10295 live10295 coloured10295 = result10295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10296 live10296 coloured10296 = result10296 := by
  rw [tree10296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10294 coloured10294 at child
  try dsimp only [live10296, coloured10296]
  rw [child]
  dsimp only [result10294]
  have child := child1
  unfold live10295 coloured10295 at child
  try dsimp only [live10296, coloured10296]
  rw [child]
  dsimp only [result10295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10297_agree_conditional : tree10297 = literal10297 := by
  rw [tree10297_def]
  rfl
theorem node10297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10297 live10297 coloured10297 = result10297 := by
  rw [tree10297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10298_agree_conditional
    (child0 : tree10296 = literal10296)
    (child1 : tree10297 = literal10297) : tree10298 = literal10298 := by
  rw [tree10298_def, child0, child1]
  rfl
theorem node10298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10296 live10296 coloured10296 = result10296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10297 live10297 coloured10297 = result10297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10298 live10298 coloured10298 = result10298 := by
  rw [tree10298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10296 coloured10296 at child
  try dsimp only [live10298, coloured10298]
  rw [child]
  dsimp only [result10296]
  have child := child1
  unfold live10297 coloured10297 at child
  try dsimp only [live10298, coloured10298]
  rw [child]
  dsimp only [result10297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10299_agree_conditional : tree10299 = literal10299 := by
  rw [tree10299_def]
  rfl
theorem node10299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10299 live10299 coloured10299 = result10299 := by
  rw [tree10299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10300_agree_conditional
    (child0 : tree10298 = literal10298)
    (child1 : tree10299 = literal10299) : tree10300 = literal10300 := by
  rw [tree10300_def, child0, child1]
  rfl
theorem node10300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10298 live10298 coloured10298 = result10298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10299 live10299 coloured10299 = result10299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10300 live10300 coloured10300 = result10300 := by
  rw [tree10300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10298 coloured10298 at child
  try dsimp only [live10300, coloured10300]
  rw [child]
  dsimp only [result10298]
  have child := child1
  unfold live10299 coloured10299 at child
  try dsimp only [live10300, coloured10300]
  rw [child]
  dsimp only [result10299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10301_agree_conditional : tree10301 = literal10301 := by
  rw [tree10301_def]
  rfl
theorem node10301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10301 live10301 coloured10301 = result10301 := by
  rw [tree10301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10302_agree_conditional
    (child0 : tree10300 = literal10300)
    (child1 : tree10301 = literal10301) : tree10302 = literal10302 := by
  rw [tree10302_def, child0, child1]
  rfl
theorem node10302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10300 live10300 coloured10300 = result10300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10301 live10301 coloured10301 = result10301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10302 live10302 coloured10302 = result10302 := by
  rw [tree10302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10300 coloured10300 at child
  try dsimp only [live10302, coloured10302]
  rw [child]
  dsimp only [result10300]
  have child := child1
  unfold live10301 coloured10301 at child
  try dsimp only [live10302, coloured10302]
  rw [child]
  dsimp only [result10301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10303_agree_conditional : tree10303 = literal10303 := by
  rw [tree10303_def]
  rfl
theorem node10303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10303 live10303 coloured10303 = result10303 := by
  rw [tree10303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10304_agree_conditional
    (child0 : tree10302 = literal10302)
    (child1 : tree10303 = literal10303) : tree10304 = literal10304 := by
  rw [tree10304_def, child0, child1]
  rfl
theorem node10304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10302 live10302 coloured10302 = result10302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10303 live10303 coloured10303 = result10303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10304 live10304 coloured10304 = result10304 := by
  rw [tree10304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10302 coloured10302 at child
  try dsimp only [live10304, coloured10304]
  rw [child]
  dsimp only [result10302]
  have child := child1
  unfold live10303 coloured10303 at child
  try dsimp only [live10304, coloured10304]
  rw [child]
  dsimp only [result10303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10305_agree_conditional : tree10305 = literal10305 := by
  rw [tree10305_def]
  rfl
theorem node10305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10305 live10305 coloured10305 = result10305 := by
  rw [tree10305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10306_agree_conditional
    (child0 : tree10304 = literal10304)
    (child1 : tree10305 = literal10305) : tree10306 = literal10306 := by
  rw [tree10306_def, child0, child1]
  rfl
theorem node10306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10304 live10304 coloured10304 = result10304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10305 live10305 coloured10305 = result10305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10306 live10306 coloured10306 = result10306 := by
  rw [tree10306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10304 coloured10304 at child
  try dsimp only [live10306, coloured10306]
  rw [child]
  dsimp only [result10304]
  have child := child1
  unfold live10305 coloured10305 at child
  try dsimp only [live10306, coloured10306]
  rw [child]
  dsimp only [result10305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10307_agree_conditional : tree10307 = literal10307 := by
  rw [tree10307_def]
  rfl
theorem node10307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10307 live10307 coloured10307 = result10307 := by
  rw [tree10307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10308_agree_conditional
    (child0 : tree10306 = literal10306)
    (child1 : tree10307 = literal10307) : tree10308 = literal10308 := by
  rw [tree10308_def, child0, child1]
  rfl
theorem node10308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10306 live10306 coloured10306 = result10306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10307 live10307 coloured10307 = result10307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10308 live10308 coloured10308 = result10308 := by
  rw [tree10308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10306 coloured10306 at child
  try dsimp only [live10308, coloured10308]
  rw [child]
  dsimp only [result10306]
  have child := child1
  unfold live10307 coloured10307 at child
  try dsimp only [live10308, coloured10308]
  rw [child]
  dsimp only [result10307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10309_agree_conditional : tree10309 = literal10309 := by
  rw [tree10309_def]
  rfl
theorem node10309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10309 live10309 coloured10309 = result10309 := by
  rw [tree10309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10310_agree_conditional
    (child0 : tree10308 = literal10308)
    (child1 : tree10309 = literal10309) : tree10310 = literal10310 := by
  rw [tree10310_def, child0, child1]
  rfl
theorem node10310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10308 live10308 coloured10308 = result10308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10309 live10309 coloured10309 = result10309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10310 live10310 coloured10310 = result10310 := by
  rw [tree10310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10308 coloured10308 at child
  try dsimp only [live10310, coloured10310]
  rw [child]
  dsimp only [result10308]
  have child := child1
  unfold live10309 coloured10309 at child
  try dsimp only [live10310, coloured10310]
  rw [child]
  dsimp only [result10309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10311_agree_conditional : tree10311 = literal10311 := by
  rw [tree10311_def]
  rfl
theorem node10311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10311 live10311 coloured10311 = result10311 := by
  rw [tree10311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10312_agree_conditional
    (child0 : tree10310 = literal10310)
    (child1 : tree10311 = literal10311) : tree10312 = literal10312 := by
  rw [tree10312_def, child0, child1]
  rfl
theorem node10312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10310 live10310 coloured10310 = result10310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10311 live10311 coloured10311 = result10311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10312 live10312 coloured10312 = result10312 := by
  rw [tree10312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10310 coloured10310 at child
  try dsimp only [live10312, coloured10312]
  rw [child]
  dsimp only [result10310]
  have child := child1
  unfold live10311 coloured10311 at child
  try dsimp only [live10312, coloured10312]
  rw [child]
  dsimp only [result10311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10313_agree_conditional : tree10313 = literal10313 := by
  rw [tree10313_def]
  rfl
theorem node10313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10313 live10313 coloured10313 = result10313 := by
  rw [tree10313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10314_agree_conditional
    (child0 : tree10312 = literal10312)
    (child1 : tree10313 = literal10313) : tree10314 = literal10314 := by
  rw [tree10314_def, child0, child1]
  rfl
theorem node10314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10312 live10312 coloured10312 = result10312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10313 live10313 coloured10313 = result10313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10314 live10314 coloured10314 = result10314 := by
  rw [tree10314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10312 coloured10312 at child
  try dsimp only [live10314, coloured10314]
  rw [child]
  dsimp only [result10312]
  have child := child1
  unfold live10313 coloured10313 at child
  try dsimp only [live10314, coloured10314]
  rw [child]
  dsimp only [result10313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10315_agree_conditional : tree10315 = literal10315 := by
  rw [tree10315_def]
  rfl
theorem node10315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10315 live10315 coloured10315 = result10315 := by
  rw [tree10315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10316_agree_conditional
    (child0 : tree10314 = literal10314)
    (child1 : tree10315 = literal10315) : tree10316 = literal10316 := by
  rw [tree10316_def, child0, child1]
  rfl
theorem node10316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10314 live10314 coloured10314 = result10314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10315 live10315 coloured10315 = result10315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10316 live10316 coloured10316 = result10316 := by
  rw [tree10316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10314 coloured10314 at child
  try dsimp only [live10316, coloured10316]
  rw [child]
  dsimp only [result10314]
  have child := child1
  unfold live10315 coloured10315 at child
  try dsimp only [live10316, coloured10316]
  rw [child]
  dsimp only [result10315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10317_agree_conditional : tree10317 = literal10317 := by
  rw [tree10317_def]
  rfl
theorem node10317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10317 live10317 coloured10317 = result10317 := by
  rw [tree10317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10318_agree_conditional
    (child0 : tree10316 = literal10316)
    (child1 : tree10317 = literal10317) : tree10318 = literal10318 := by
  rw [tree10318_def, child0, child1]
  rfl
theorem node10318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10316 live10316 coloured10316 = result10316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10317 live10317 coloured10317 = result10317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10318 live10318 coloured10318 = result10318 := by
  rw [tree10318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10316 coloured10316 at child
  try dsimp only [live10318, coloured10318]
  rw [child]
  dsimp only [result10316]
  have child := child1
  unfold live10317 coloured10317 at child
  try dsimp only [live10318, coloured10318]
  rw [child]
  dsimp only [result10317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10319_agree_conditional : tree10319 = literal10319 := by
  rw [tree10319_def]
  rfl
theorem node10319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10319 live10319 coloured10319 = result10319 := by
  rw [tree10319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10320_agree_conditional
    (child0 : tree10318 = literal10318)
    (child1 : tree10319 = literal10319) : tree10320 = literal10320 := by
  rw [tree10320_def, child0, child1]
  rfl
theorem node10320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10318 live10318 coloured10318 = result10318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10319 live10319 coloured10319 = result10319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10320 live10320 coloured10320 = result10320 := by
  rw [tree10320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10318 coloured10318 at child
  try dsimp only [live10320, coloured10320]
  rw [child]
  dsimp only [result10318]
  have child := child1
  unfold live10319 coloured10319 at child
  try dsimp only [live10320, coloured10320]
  rw [child]
  dsimp only [result10319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10321_agree_conditional : tree10321 = literal10321 := by
  rw [tree10321_def]
  rfl
theorem node10321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10321 live10321 coloured10321 = result10321 := by
  rw [tree10321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10322_agree_conditional
    (child0 : tree10320 = literal10320)
    (child1 : tree10321 = literal10321) : tree10322 = literal10322 := by
  rw [tree10322_def, child0, child1]
  rfl
theorem node10322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10320 live10320 coloured10320 = result10320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10321 live10321 coloured10321 = result10321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10322 live10322 coloured10322 = result10322 := by
  rw [tree10322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10320 coloured10320 at child
  try dsimp only [live10322, coloured10322]
  rw [child]
  dsimp only [result10320]
  have child := child1
  unfold live10321 coloured10321 at child
  try dsimp only [live10322, coloured10322]
  rw [child]
  dsimp only [result10321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10323_agree_conditional : tree10323 = literal10323 := by
  rw [tree10323_def]
  rfl
theorem node10323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10323 live10323 coloured10323 = result10323 := by
  rw [tree10323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10324_agree_conditional
    (child0 : tree10322 = literal10322)
    (child1 : tree10323 = literal10323) : tree10324 = literal10324 := by
  rw [tree10324_def, child0, child1]
  rfl
theorem node10324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10322 live10322 coloured10322 = result10322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10323 live10323 coloured10323 = result10323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10324 live10324 coloured10324 = result10324 := by
  rw [tree10324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10322 coloured10322 at child
  try dsimp only [live10324, coloured10324]
  rw [child]
  dsimp only [result10322]
  have child := child1
  unfold live10323 coloured10323 at child
  try dsimp only [live10324, coloured10324]
  rw [child]
  dsimp only [result10323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10325_agree_conditional : tree10325 = literal10325 := by
  rw [tree10325_def]
  rfl
theorem node10325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10325 live10325 coloured10325 = result10325 := by
  rw [tree10325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10326_agree_conditional
    (child0 : tree10324 = literal10324)
    (child1 : tree10325 = literal10325) : tree10326 = literal10326 := by
  rw [tree10326_def, child0, child1]
  rfl
theorem node10326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10324 live10324 coloured10324 = result10324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10325 live10325 coloured10325 = result10325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10326 live10326 coloured10326 = result10326 := by
  rw [tree10326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10324 coloured10324 at child
  try dsimp only [live10326, coloured10326]
  rw [child]
  dsimp only [result10324]
  have child := child1
  unfold live10325 coloured10325 at child
  try dsimp only [live10326, coloured10326]
  rw [child]
  dsimp only [result10325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10327_agree_conditional : tree10327 = literal10327 := by
  rw [tree10327_def]
  rfl
theorem node10327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10327 live10327 coloured10327 = result10327 := by
  rw [tree10327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10328_agree_conditional
    (child0 : tree10326 = literal10326)
    (child1 : tree10327 = literal10327) : tree10328 = literal10328 := by
  rw [tree10328_def, child0, child1]
  rfl
theorem node10328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10326 live10326 coloured10326 = result10326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10327 live10327 coloured10327 = result10327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10328 live10328 coloured10328 = result10328 := by
  rw [tree10328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10326 coloured10326 at child
  try dsimp only [live10328, coloured10328]
  rw [child]
  dsimp only [result10326]
  have child := child1
  unfold live10327 coloured10327 at child
  try dsimp only [live10328, coloured10328]
  rw [child]
  dsimp only [result10327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10329_agree_conditional : tree10329 = literal10329 := by
  rw [tree10329_def]
  rfl
theorem node10329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10329 live10329 coloured10329 = result10329 := by
  rw [tree10329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10330_agree_conditional
    (child0 : tree10328 = literal10328)
    (child1 : tree10329 = literal10329) : tree10330 = literal10330 := by
  rw [tree10330_def, child0, child1]
  rfl
theorem node10330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10328 live10328 coloured10328 = result10328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10329 live10329 coloured10329 = result10329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10330 live10330 coloured10330 = result10330 := by
  rw [tree10330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10328 coloured10328 at child
  try dsimp only [live10330, coloured10330]
  rw [child]
  dsimp only [result10328]
  have child := child1
  unfold live10329 coloured10329 at child
  try dsimp only [live10330, coloured10330]
  rw [child]
  dsimp only [result10329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10331_agree_conditional : tree10331 = literal10331 := by
  rw [tree10331_def]
  rfl
theorem node10331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10331 live10331 coloured10331 = result10331 := by
  rw [tree10331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10332_agree_conditional
    (child0 : tree10330 = literal10330)
    (child1 : tree10331 = literal10331) : tree10332 = literal10332 := by
  rw [tree10332_def, child0, child1]
  rfl
theorem node10332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10330 live10330 coloured10330 = result10330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10331 live10331 coloured10331 = result10331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10332 live10332 coloured10332 = result10332 := by
  rw [tree10332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10330 coloured10330 at child
  try dsimp only [live10332, coloured10332]
  rw [child]
  dsimp only [result10330]
  have child := child1
  unfold live10331 coloured10331 at child
  try dsimp only [live10332, coloured10332]
  rw [child]
  dsimp only [result10331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10333_agree_conditional : tree10333 = literal10333 := by
  rw [tree10333_def]
  rfl
theorem node10333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10333 live10333 coloured10333 = result10333 := by
  rw [tree10333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10334_agree_conditional
    (child0 : tree10332 = literal10332)
    (child1 : tree10333 = literal10333) : tree10334 = literal10334 := by
  rw [tree10334_def, child0, child1]
  rfl
theorem node10334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10332 live10332 coloured10332 = result10332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10333 live10333 coloured10333 = result10333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10334 live10334 coloured10334 = result10334 := by
  rw [tree10334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10332 coloured10332 at child
  try dsimp only [live10334, coloured10334]
  rw [child]
  dsimp only [result10332]
  have child := child1
  unfold live10333 coloured10333 at child
  try dsimp only [live10334, coloured10334]
  rw [child]
  dsimp only [result10333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10335_agree_conditional : tree10335 = literal10335 := by
  rw [tree10335_def]
  rfl
theorem node10335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10335 live10335 coloured10335 = result10335 := by
  rw [tree10335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10336_agree_conditional
    (child0 : tree10334 = literal10334)
    (child1 : tree10335 = literal10335) : tree10336 = literal10336 := by
  rw [tree10336_def, child0, child1]
  rfl
theorem node10336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10334 live10334 coloured10334 = result10334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10335 live10335 coloured10335 = result10335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10336 live10336 coloured10336 = result10336 := by
  rw [tree10336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10334 coloured10334 at child
  try dsimp only [live10336, coloured10336]
  rw [child]
  dsimp only [result10334]
  have child := child1
  unfold live10335 coloured10335 at child
  try dsimp only [live10336, coloured10336]
  rw [child]
  dsimp only [result10335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10337_agree_conditional : tree10337 = literal10337 := by
  rw [tree10337_def]
  rfl
theorem node10337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10337 live10337 coloured10337 = result10337 := by
  rw [tree10337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10338_agree_conditional
    (child0 : tree10336 = literal10336)
    (child1 : tree10337 = literal10337) : tree10338 = literal10338 := by
  rw [tree10338_def, child0, child1]
  rfl
theorem node10338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10336 live10336 coloured10336 = result10336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10337 live10337 coloured10337 = result10337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10338 live10338 coloured10338 = result10338 := by
  rw [tree10338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10336 coloured10336 at child
  try dsimp only [live10338, coloured10338]
  rw [child]
  dsimp only [result10336]
  have child := child1
  unfold live10337 coloured10337 at child
  try dsimp only [live10338, coloured10338]
  rw [child]
  dsimp only [result10337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10339_agree_conditional : tree10339 = literal10339 := by
  rw [tree10339_def]
  rfl
theorem node10339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10339 live10339 coloured10339 = result10339 := by
  rw [tree10339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10340_agree_conditional
    (child0 : tree10338 = literal10338)
    (child1 : tree10339 = literal10339) : tree10340 = literal10340 := by
  rw [tree10340_def, child0, child1]
  rfl
theorem node10340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10338 live10338 coloured10338 = result10338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10339 live10339 coloured10339 = result10339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10340 live10340 coloured10340 = result10340 := by
  rw [tree10340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10338 coloured10338 at child
  try dsimp only [live10340, coloured10340]
  rw [child]
  dsimp only [result10338]
  have child := child1
  unfold live10339 coloured10339 at child
  try dsimp only [live10340, coloured10340]
  rw [child]
  dsimp only [result10339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10341_agree_conditional : tree10341 = literal10341 := by
  rw [tree10341_def]
  rfl
theorem node10341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10341 live10341 coloured10341 = result10341 := by
  rw [tree10341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10342_agree_conditional
    (child0 : tree10340 = literal10340)
    (child1 : tree10341 = literal10341) : tree10342 = literal10342 := by
  rw [tree10342_def, child0, child1]
  rfl
theorem node10342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10340 live10340 coloured10340 = result10340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10341 live10341 coloured10341 = result10341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10342 live10342 coloured10342 = result10342 := by
  rw [tree10342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10340 coloured10340 at child
  try dsimp only [live10342, coloured10342]
  rw [child]
  dsimp only [result10340]
  have child := child1
  unfold live10341 coloured10341 at child
  try dsimp only [live10342, coloured10342]
  rw [child]
  dsimp only [result10341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10343_agree_conditional : tree10343 = literal10343 := by
  rw [tree10343_def]
  rfl
theorem node10343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10343 live10343 coloured10343 = result10343 := by
  rw [tree10343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10344_agree_conditional
    (child0 : tree10342 = literal10342)
    (child1 : tree10343 = literal10343) : tree10344 = literal10344 := by
  rw [tree10344_def, child0, child1]
  rfl
theorem node10344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10342 live10342 coloured10342 = result10342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10343 live10343 coloured10343 = result10343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10344 live10344 coloured10344 = result10344 := by
  rw [tree10344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10342 coloured10342 at child
  try dsimp only [live10344, coloured10344]
  rw [child]
  dsimp only [result10342]
  have child := child1
  unfold live10343 coloured10343 at child
  try dsimp only [live10344, coloured10344]
  rw [child]
  dsimp only [result10343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10345_agree_conditional : tree10345 = literal10345 := by
  rw [tree10345_def]
  rfl
theorem node10345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10345 live10345 coloured10345 = result10345 := by
  rw [tree10345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10346_agree_conditional
    (child0 : tree10344 = literal10344)
    (child1 : tree10345 = literal10345) : tree10346 = literal10346 := by
  rw [tree10346_def, child0, child1]
  rfl
theorem node10346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10344 live10344 coloured10344 = result10344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10345 live10345 coloured10345 = result10345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10346 live10346 coloured10346 = result10346 := by
  rw [tree10346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10344 coloured10344 at child
  try dsimp only [live10346, coloured10346]
  rw [child]
  dsimp only [result10344]
  have child := child1
  unfold live10345 coloured10345 at child
  try dsimp only [live10346, coloured10346]
  rw [child]
  dsimp only [result10345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10347_agree_conditional : tree10347 = literal10347 := by
  rw [tree10347_def]
  rfl
theorem node10347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10347 live10347 coloured10347 = result10347 := by
  rw [tree10347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10348_agree_conditional
    (child0 : tree10346 = literal10346)
    (child1 : tree10347 = literal10347) : tree10348 = literal10348 := by
  rw [tree10348_def, child0, child1]
  rfl
theorem node10348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10346 live10346 coloured10346 = result10346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10347 live10347 coloured10347 = result10347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10348 live10348 coloured10348 = result10348 := by
  rw [tree10348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10346 coloured10346 at child
  try dsimp only [live10348, coloured10348]
  rw [child]
  dsimp only [result10346]
  have child := child1
  unfold live10347 coloured10347 at child
  try dsimp only [live10348, coloured10348]
  rw [child]
  dsimp only [result10347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10349_agree_conditional : tree10349 = literal10349 := by
  rw [tree10349_def]
  rfl
theorem node10349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10349 live10349 coloured10349 = result10349 := by
  rw [tree10349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10350_agree_conditional
    (child0 : tree10348 = literal10348)
    (child1 : tree10349 = literal10349) : tree10350 = literal10350 := by
  rw [tree10350_def, child0, child1]
  rfl
theorem node10350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10348 live10348 coloured10348 = result10348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10349 live10349 coloured10349 = result10349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10350 live10350 coloured10350 = result10350 := by
  rw [tree10350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10348 coloured10348 at child
  try dsimp only [live10350, coloured10350]
  rw [child]
  dsimp only [result10348]
  have child := child1
  unfold live10349 coloured10349 at child
  try dsimp only [live10350, coloured10350]
  rw [child]
  dsimp only [result10349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10351_agree_conditional : tree10351 = literal10351 := by
  rw [tree10351_def]
  rfl
theorem node10351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10351 live10351 coloured10351 = result10351 := by
  rw [tree10351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10352_agree_conditional
    (child0 : tree10350 = literal10350)
    (child1 : tree10351 = literal10351) : tree10352 = literal10352 := by
  rw [tree10352_def, child0, child1]
  rfl
theorem node10352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10350 live10350 coloured10350 = result10350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10351 live10351 coloured10351 = result10351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10352 live10352 coloured10352 = result10352 := by
  rw [tree10352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10350 coloured10350 at child
  try dsimp only [live10352, coloured10352]
  rw [child]
  dsimp only [result10350]
  have child := child1
  unfold live10351 coloured10351 at child
  try dsimp only [live10352, coloured10352]
  rw [child]
  dsimp only [result10351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10353_agree_conditional : tree10353 = literal10353 := by
  rw [tree10353_def]
  rfl
theorem node10353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10353 live10353 coloured10353 = result10353 := by
  rw [tree10353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10354_agree_conditional
    (child0 : tree10352 = literal10352)
    (child1 : tree10353 = literal10353) : tree10354 = literal10354 := by
  rw [tree10354_def, child0, child1]
  rfl
theorem node10354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10352 live10352 coloured10352 = result10352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10353 live10353 coloured10353 = result10353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10354 live10354 coloured10354 = result10354 := by
  rw [tree10354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10352 coloured10352 at child
  try dsimp only [live10354, coloured10354]
  rw [child]
  dsimp only [result10352]
  have child := child1
  unfold live10353 coloured10353 at child
  try dsimp only [live10354, coloured10354]
  rw [child]
  dsimp only [result10353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10355_agree_conditional : tree10355 = literal10355 := by
  rw [tree10355_def]
  rfl
theorem node10355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10355 live10355 coloured10355 = result10355 := by
  rw [tree10355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10356_agree_conditional
    (child0 : tree10354 = literal10354)
    (child1 : tree10355 = literal10355) : tree10356 = literal10356 := by
  rw [tree10356_def, child0, child1]
  rfl
theorem node10356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10354 live10354 coloured10354 = result10354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10355 live10355 coloured10355 = result10355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10356 live10356 coloured10356 = result10356 := by
  rw [tree10356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10354 coloured10354 at child
  try dsimp only [live10356, coloured10356]
  rw [child]
  dsimp only [result10354]
  have child := child1
  unfold live10355 coloured10355 at child
  try dsimp only [live10356, coloured10356]
  rw [child]
  dsimp only [result10355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10357_agree_conditional : tree10357 = literal10357 := by
  rw [tree10357_def]
  rfl
theorem node10357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10357 live10357 coloured10357 = result10357 := by
  rw [tree10357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10358_agree_conditional
    (child0 : tree10356 = literal10356)
    (child1 : tree10357 = literal10357) : tree10358 = literal10358 := by
  rw [tree10358_def, child0, child1]
  rfl
theorem node10358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10356 live10356 coloured10356 = result10356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10357 live10357 coloured10357 = result10357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10358 live10358 coloured10358 = result10358 := by
  rw [tree10358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10356 coloured10356 at child
  try dsimp only [live10358, coloured10358]
  rw [child]
  dsimp only [result10356]
  have child := child1
  unfold live10357 coloured10357 at child
  try dsimp only [live10358, coloured10358]
  rw [child]
  dsimp only [result10357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10359_agree_conditional : tree10359 = literal10359 := by
  rw [tree10359_def]
  rfl
theorem node10359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10359 live10359 coloured10359 = result10359 := by
  rw [tree10359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10360_agree_conditional
    (child0 : tree10358 = literal10358)
    (child1 : tree10359 = literal10359) : tree10360 = literal10360 := by
  rw [tree10360_def, child0, child1]
  rfl
theorem node10360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10358 live10358 coloured10358 = result10358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10359 live10359 coloured10359 = result10359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10360 live10360 coloured10360 = result10360 := by
  rw [tree10360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10358 coloured10358 at child
  try dsimp only [live10360, coloured10360]
  rw [child]
  dsimp only [result10358]
  have child := child1
  unfold live10359 coloured10359 at child
  try dsimp only [live10360, coloured10360]
  rw [child]
  dsimp only [result10359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10361_agree_conditional : tree10361 = literal10361 := by
  rw [tree10361_def]
  rfl
theorem node10361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10361 live10361 coloured10361 = result10361 := by
  rw [tree10361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10362_agree_conditional
    (child0 : tree10360 = literal10360)
    (child1 : tree10361 = literal10361) : tree10362 = literal10362 := by
  rw [tree10362_def, child0, child1]
  rfl
theorem node10362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10360 live10360 coloured10360 = result10360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10361 live10361 coloured10361 = result10361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10362 live10362 coloured10362 = result10362 := by
  rw [tree10362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10360 coloured10360 at child
  try dsimp only [live10362, coloured10362]
  rw [child]
  dsimp only [result10360]
  have child := child1
  unfold live10361 coloured10361 at child
  try dsimp only [live10362, coloured10362]
  rw [child]
  dsimp only [result10361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10363_agree_conditional : tree10363 = literal10363 := by
  rw [tree10363_def]
  rfl
theorem node10363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10363 live10363 coloured10363 = result10363 := by
  rw [tree10363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10364_agree_conditional
    (child0 : tree10362 = literal10362)
    (child1 : tree10363 = literal10363) : tree10364 = literal10364 := by
  rw [tree10364_def, child0, child1]
  rfl
theorem node10364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10362 live10362 coloured10362 = result10362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10363 live10363 coloured10363 = result10363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10364 live10364 coloured10364 = result10364 := by
  rw [tree10364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10362 coloured10362 at child
  try dsimp only [live10364, coloured10364]
  rw [child]
  dsimp only [result10362]
  have child := child1
  unfold live10363 coloured10363 at child
  try dsimp only [live10364, coloured10364]
  rw [child]
  dsimp only [result10363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10365_agree_conditional : tree10365 = literal10365 := by
  rw [tree10365_def]
  rfl
theorem node10365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10365 live10365 coloured10365 = result10365 := by
  rw [tree10365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10366_agree_conditional
    (child0 : tree10364 = literal10364)
    (child1 : tree10365 = literal10365) : tree10366 = literal10366 := by
  rw [tree10366_def, child0, child1]
  rfl
theorem node10366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10364 live10364 coloured10364 = result10364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10365 live10365 coloured10365 = result10365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10366 live10366 coloured10366 = result10366 := by
  rw [tree10366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10364 coloured10364 at child
  try dsimp only [live10366, coloured10366]
  rw [child]
  dsimp only [result10364]
  have child := child1
  unfold live10365 coloured10365 at child
  try dsimp only [live10366, coloured10366]
  rw [child]
  dsimp only [result10365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10367_agree_conditional : tree10367 = literal10367 := by
  rw [tree10367_def]
  rfl
theorem node10367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10367 live10367 coloured10367 = result10367 := by
  rw [tree10367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
