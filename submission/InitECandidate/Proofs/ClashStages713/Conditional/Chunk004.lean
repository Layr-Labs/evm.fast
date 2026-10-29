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
theorem tree384_agree_conditional
    (child0 : tree382 = literal382)
    (child1 : tree383 = literal383) : tree384 = literal384 := by
  rw [tree384_def, child0, child1]
  rfl
theorem node384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree382 live382 coloured382 = result382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree383 live383 coloured383 = result383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree384 live384 coloured384 = result384 := by
  rw [tree384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live382 coloured382 at child
  try dsimp only [live384, coloured384]
  rw [child]
  dsimp only [result382]
  have child := child1
  unfold live383 coloured383 at child
  try dsimp only [live384, coloured384]
  rw [child]
  dsimp only [result383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree385_agree_conditional : tree385 = literal385 := by
  rw [tree385_def]
  rfl
theorem node385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree385 live385 coloured385 = result385 := by
  rw [tree385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree386_agree_conditional
    (child0 : tree384 = literal384)
    (child1 : tree385 = literal385) : tree386 = literal386 := by
  rw [tree386_def, child0, child1]
  rfl
theorem node386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree384 live384 coloured384 = result384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree385 live385 coloured385 = result385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree386 live386 coloured386 = result386 := by
  rw [tree386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live384 coloured384 at child
  try dsimp only [live386, coloured386]
  rw [child]
  dsimp only [result384]
  have child := child1
  unfold live385 coloured385 at child
  try dsimp only [live386, coloured386]
  rw [child]
  dsimp only [result385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree387_agree_conditional : tree387 = literal387 := by
  rw [tree387_def]
  rfl
theorem node387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree387 live387 coloured387 = result387 := by
  rw [tree387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree388_agree_conditional
    (child0 : tree386 = literal386)
    (child1 : tree387 = literal387) : tree388 = literal388 := by
  rw [tree388_def, child0, child1]
  rfl
theorem node388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree386 live386 coloured386 = result386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree387 live387 coloured387 = result387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree388 live388 coloured388 = result388 := by
  rw [tree388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live386 coloured386 at child
  try dsimp only [live388, coloured388]
  rw [child]
  dsimp only [result386]
  have child := child1
  unfold live387 coloured387 at child
  try dsimp only [live388, coloured388]
  rw [child]
  dsimp only [result387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree389_agree_conditional : tree389 = literal389 := by
  rw [tree389_def]
  rfl
theorem node389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree389 live389 coloured389 = result389 := by
  rw [tree389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree390_agree_conditional
    (child0 : tree388 = literal388)
    (child1 : tree389 = literal389) : tree390 = literal390 := by
  rw [tree390_def, child0, child1]
  rfl
theorem node390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree388 live388 coloured388 = result388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree389 live389 coloured389 = result389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree390 live390 coloured390 = result390 := by
  rw [tree390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live388 coloured388 at child
  try dsimp only [live390, coloured390]
  rw [child]
  dsimp only [result388]
  have child := child1
  unfold live389 coloured389 at child
  try dsimp only [live390, coloured390]
  rw [child]
  dsimp only [result389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree391_agree_conditional : tree391 = literal391 := by
  rw [tree391_def]
  rfl
theorem node391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree391 live391 coloured391 = result391 := by
  rw [tree391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree392_agree_conditional
    (child0 : tree390 = literal390)
    (child1 : tree391 = literal391) : tree392 = literal392 := by
  rw [tree392_def, child0, child1]
  rfl
theorem node392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree390 live390 coloured390 = result390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree391 live391 coloured391 = result391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree392 live392 coloured392 = result392 := by
  rw [tree392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live390 coloured390 at child
  try dsimp only [live392, coloured392]
  rw [child]
  dsimp only [result390]
  have child := child1
  unfold live391 coloured391 at child
  try dsimp only [live392, coloured392]
  rw [child]
  dsimp only [result391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree393_agree_conditional : tree393 = literal393 := by
  rw [tree393_def]
  rfl
theorem node393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree393 live393 coloured393 = result393 := by
  rw [tree393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree394_agree_conditional
    (child0 : tree392 = literal392)
    (child1 : tree393 = literal393) : tree394 = literal394 := by
  rw [tree394_def, child0, child1]
  rfl
theorem node394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree392 live392 coloured392 = result392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree393 live393 coloured393 = result393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree394 live394 coloured394 = result394 := by
  rw [tree394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live392 coloured392 at child
  try dsimp only [live394, coloured394]
  rw [child]
  dsimp only [result392]
  have child := child1
  unfold live393 coloured393 at child
  try dsimp only [live394, coloured394]
  rw [child]
  dsimp only [result393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree395_agree_conditional : tree395 = literal395 := by
  rw [tree395_def]
  rfl
theorem node395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree395 live395 coloured395 = result395 := by
  rw [tree395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree396_agree_conditional
    (child0 : tree394 = literal394)
    (child1 : tree395 = literal395) : tree396 = literal396 := by
  rw [tree396_def, child0, child1]
  rfl
theorem node396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree394 live394 coloured394 = result394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree395 live395 coloured395 = result395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree396 live396 coloured396 = result396 := by
  rw [tree396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live394 coloured394 at child
  try dsimp only [live396, coloured396]
  rw [child]
  dsimp only [result394]
  have child := child1
  unfold live395 coloured395 at child
  try dsimp only [live396, coloured396]
  rw [child]
  dsimp only [result395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree397_agree_conditional : tree397 = literal397 := by
  rw [tree397_def]
  rfl
theorem node397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree397 live397 coloured397 = result397 := by
  rw [tree397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree398_agree_conditional
    (child0 : tree396 = literal396)
    (child1 : tree397 = literal397) : tree398 = literal398 := by
  rw [tree398_def, child0, child1]
  rfl
theorem node398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree396 live396 coloured396 = result396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree397 live397 coloured397 = result397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree398 live398 coloured398 = result398 := by
  rw [tree398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live396 coloured396 at child
  try dsimp only [live398, coloured398]
  rw [child]
  dsimp only [result396]
  have child := child1
  unfold live397 coloured397 at child
  try dsimp only [live398, coloured398]
  rw [child]
  dsimp only [result397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree399_agree_conditional : tree399 = literal399 := by
  rw [tree399_def]
  rfl
theorem node399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree399 live399 coloured399 = result399 := by
  rw [tree399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree400_agree_conditional
    (child0 : tree398 = literal398)
    (child1 : tree399 = literal399) : tree400 = literal400 := by
  rw [tree400_def, child0, child1]
  rfl
theorem node400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree398 live398 coloured398 = result398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree399 live399 coloured399 = result399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree400 live400 coloured400 = result400 := by
  rw [tree400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live398 coloured398 at child
  try dsimp only [live400, coloured400]
  rw [child]
  dsimp only [result398]
  have child := child1
  unfold live399 coloured399 at child
  try dsimp only [live400, coloured400]
  rw [child]
  dsimp only [result399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree401_agree_conditional : tree401 = literal401 := by
  rw [tree401_def]
  rfl
theorem node401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree401 live401 coloured401 = result401 := by
  rw [tree401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree402_agree_conditional
    (child0 : tree400 = literal400)
    (child1 : tree401 = literal401) : tree402 = literal402 := by
  rw [tree402_def, child0, child1]
  rfl
theorem node402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree400 live400 coloured400 = result400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree401 live401 coloured401 = result401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree402 live402 coloured402 = result402 := by
  rw [tree402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live400 coloured400 at child
  try dsimp only [live402, coloured402]
  rw [child]
  dsimp only [result400]
  have child := child1
  unfold live401 coloured401 at child
  try dsimp only [live402, coloured402]
  rw [child]
  dsimp only [result401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree403_agree_conditional : tree403 = literal403 := by
  rw [tree403_def]
  rfl
theorem node403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree403 live403 coloured403 = result403 := by
  rw [tree403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree404_agree_conditional
    (child0 : tree402 = literal402)
    (child1 : tree403 = literal403) : tree404 = literal404 := by
  rw [tree404_def, child0, child1]
  rfl
theorem node404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree402 live402 coloured402 = result402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree403 live403 coloured403 = result403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree404 live404 coloured404 = result404 := by
  rw [tree404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live402 coloured402 at child
  try dsimp only [live404, coloured404]
  rw [child]
  dsimp only [result402]
  have child := child1
  unfold live403 coloured403 at child
  try dsimp only [live404, coloured404]
  rw [child]
  dsimp only [result403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree405_agree_conditional : tree405 = literal405 := by
  rw [tree405_def]
  rfl
theorem node405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree405 live405 coloured405 = result405 := by
  rw [tree405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree406_agree_conditional
    (child0 : tree404 = literal404)
    (child1 : tree405 = literal405) : tree406 = literal406 := by
  rw [tree406_def, child0, child1]
  rfl
theorem node406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree404 live404 coloured404 = result404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree405 live405 coloured405 = result405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree406 live406 coloured406 = result406 := by
  rw [tree406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live404 coloured404 at child
  try dsimp only [live406, coloured406]
  rw [child]
  dsimp only [result404]
  have child := child1
  unfold live405 coloured405 at child
  try dsimp only [live406, coloured406]
  rw [child]
  dsimp only [result405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree407_agree_conditional : tree407 = literal407 := by
  rw [tree407_def]
  rfl
theorem node407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree407 live407 coloured407 = result407 := by
  rw [tree407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree408_agree_conditional
    (child0 : tree406 = literal406)
    (child1 : tree407 = literal407) : tree408 = literal408 := by
  rw [tree408_def, child0, child1]
  rfl
theorem node408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree406 live406 coloured406 = result406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree407 live407 coloured407 = result407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree408 live408 coloured408 = result408 := by
  rw [tree408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live406 coloured406 at child
  try dsimp only [live408, coloured408]
  rw [child]
  dsimp only [result406]
  have child := child1
  unfold live407 coloured407 at child
  try dsimp only [live408, coloured408]
  rw [child]
  dsimp only [result407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree409_agree_conditional : tree409 = literal409 := by
  rw [tree409_def]
  rfl
theorem node409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree409 live409 coloured409 = result409 := by
  rw [tree409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree410_agree_conditional
    (child0 : tree408 = literal408)
    (child1 : tree409 = literal409) : tree410 = literal410 := by
  rw [tree410_def, child0, child1]
  rfl
theorem node410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree408 live408 coloured408 = result408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree409 live409 coloured409 = result409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree410 live410 coloured410 = result410 := by
  rw [tree410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live408 coloured408 at child
  try dsimp only [live410, coloured410]
  rw [child]
  dsimp only [result408]
  have child := child1
  unfold live409 coloured409 at child
  try dsimp only [live410, coloured410]
  rw [child]
  dsimp only [result409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree411_agree_conditional : tree411 = literal411 := by
  rw [tree411_def]
  rfl
theorem node411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree411 live411 coloured411 = result411 := by
  rw [tree411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree412_agree_conditional
    (child0 : tree410 = literal410)
    (child1 : tree411 = literal411) : tree412 = literal412 := by
  rw [tree412_def, child0, child1]
  rfl
theorem node412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree410 live410 coloured410 = result410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree411 live411 coloured411 = result411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree412 live412 coloured412 = result412 := by
  rw [tree412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live410 coloured410 at child
  try dsimp only [live412, coloured412]
  rw [child]
  dsimp only [result410]
  have child := child1
  unfold live411 coloured411 at child
  try dsimp only [live412, coloured412]
  rw [child]
  dsimp only [result411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree413_agree_conditional : tree413 = literal413 := by
  rw [tree413_def]
  rfl
theorem node413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree413 live413 coloured413 = result413 := by
  rw [tree413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree414_agree_conditional
    (child0 : tree412 = literal412)
    (child1 : tree413 = literal413) : tree414 = literal414 := by
  rw [tree414_def, child0, child1]
  rfl
theorem node414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree412 live412 coloured412 = result412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree413 live413 coloured413 = result413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree414 live414 coloured414 = result414 := by
  rw [tree414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live412 coloured412 at child
  try dsimp only [live414, coloured414]
  rw [child]
  dsimp only [result412]
  have child := child1
  unfold live413 coloured413 at child
  try dsimp only [live414, coloured414]
  rw [child]
  dsimp only [result413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree415_agree_conditional : tree415 = literal415 := by
  rw [tree415_def]
  rfl
theorem node415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree415 live415 coloured415 = result415 := by
  rw [tree415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree416_agree_conditional
    (child0 : tree414 = literal414)
    (child1 : tree415 = literal415) : tree416 = literal416 := by
  rw [tree416_def, child0, child1]
  rfl
theorem node416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree414 live414 coloured414 = result414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree415 live415 coloured415 = result415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree416 live416 coloured416 = result416 := by
  rw [tree416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live414 coloured414 at child
  try dsimp only [live416, coloured416]
  rw [child]
  dsimp only [result414]
  have child := child1
  unfold live415 coloured415 at child
  try dsimp only [live416, coloured416]
  rw [child]
  dsimp only [result415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree417_agree_conditional : tree417 = literal417 := by
  rw [tree417_def]
  rfl
theorem node417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree417 live417 coloured417 = result417 := by
  rw [tree417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree418_agree_conditional
    (child0 : tree416 = literal416)
    (child1 : tree417 = literal417) : tree418 = literal418 := by
  rw [tree418_def, child0, child1]
  rfl
theorem node418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree416 live416 coloured416 = result416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree417 live417 coloured417 = result417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree418 live418 coloured418 = result418 := by
  rw [tree418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live416 coloured416 at child
  try dsimp only [live418, coloured418]
  rw [child]
  dsimp only [result416]
  have child := child1
  unfold live417 coloured417 at child
  try dsimp only [live418, coloured418]
  rw [child]
  dsimp only [result417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree419_agree_conditional : tree419 = literal419 := by
  rw [tree419_def]
  rfl
theorem node419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree419 live419 coloured419 = result419 := by
  rw [tree419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree420_agree_conditional
    (child0 : tree418 = literal418)
    (child1 : tree419 = literal419) : tree420 = literal420 := by
  rw [tree420_def, child0, child1]
  rfl
theorem node420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree418 live418 coloured418 = result418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree419 live419 coloured419 = result419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree420 live420 coloured420 = result420 := by
  rw [tree420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live418 coloured418 at child
  try dsimp only [live420, coloured420]
  rw [child]
  dsimp only [result418]
  have child := child1
  unfold live419 coloured419 at child
  try dsimp only [live420, coloured420]
  rw [child]
  dsimp only [result419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree421_agree_conditional : tree421 = literal421 := by
  rw [tree421_def]
  rfl
theorem node421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree421 live421 coloured421 = result421 := by
  rw [tree421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree422_agree_conditional
    (child0 : tree420 = literal420)
    (child1 : tree421 = literal421) : tree422 = literal422 := by
  rw [tree422_def, child0, child1]
  rfl
theorem node422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree420 live420 coloured420 = result420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree421 live421 coloured421 = result421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree422 live422 coloured422 = result422 := by
  rw [tree422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live420 coloured420 at child
  try dsimp only [live422, coloured422]
  rw [child]
  dsimp only [result420]
  have child := child1
  unfold live421 coloured421 at child
  try dsimp only [live422, coloured422]
  rw [child]
  dsimp only [result421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree423_agree_conditional : tree423 = literal423 := by
  rw [tree423_def]
  rfl
theorem node423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree423 live423 coloured423 = result423 := by
  rw [tree423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree424_agree_conditional
    (child0 : tree422 = literal422)
    (child1 : tree423 = literal423) : tree424 = literal424 := by
  rw [tree424_def, child0, child1]
  rfl
theorem node424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree422 live422 coloured422 = result422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree423 live423 coloured423 = result423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree424 live424 coloured424 = result424 := by
  rw [tree424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live422 coloured422 at child
  try dsimp only [live424, coloured424]
  rw [child]
  dsimp only [result422]
  have child := child1
  unfold live423 coloured423 at child
  try dsimp only [live424, coloured424]
  rw [child]
  dsimp only [result423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree425_agree_conditional : tree425 = literal425 := by
  rw [tree425_def]
  rfl
theorem node425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree425 live425 coloured425 = result425 := by
  rw [tree425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree426_agree_conditional
    (child0 : tree424 = literal424)
    (child1 : tree425 = literal425) : tree426 = literal426 := by
  rw [tree426_def, child0, child1]
  rfl
theorem node426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree424 live424 coloured424 = result424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree425 live425 coloured425 = result425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree426 live426 coloured426 = result426 := by
  rw [tree426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live424 coloured424 at child
  try dsimp only [live426, coloured426]
  rw [child]
  dsimp only [result424]
  have child := child1
  unfold live425 coloured425 at child
  try dsimp only [live426, coloured426]
  rw [child]
  dsimp only [result425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree427_agree_conditional : tree427 = literal427 := by
  rw [tree427_def]
  rfl
theorem node427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree427 live427 coloured427 = result427 := by
  rw [tree427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree428_agree_conditional
    (child0 : tree426 = literal426)
    (child1 : tree427 = literal427) : tree428 = literal428 := by
  rw [tree428_def, child0, child1]
  rfl
theorem node428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree426 live426 coloured426 = result426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree427 live427 coloured427 = result427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree428 live428 coloured428 = result428 := by
  rw [tree428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live426 coloured426 at child
  try dsimp only [live428, coloured428]
  rw [child]
  dsimp only [result426]
  have child := child1
  unfold live427 coloured427 at child
  try dsimp only [live428, coloured428]
  rw [child]
  dsimp only [result427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree429_agree_conditional : tree429 = literal429 := by
  rw [tree429_def]
  rfl
theorem node429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree429 live429 coloured429 = result429 := by
  rw [tree429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree430_agree_conditional
    (child0 : tree428 = literal428)
    (child1 : tree429 = literal429) : tree430 = literal430 := by
  rw [tree430_def, child0, child1]
  rfl
theorem node430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree428 live428 coloured428 = result428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree429 live429 coloured429 = result429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree430 live430 coloured430 = result430 := by
  rw [tree430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live428 coloured428 at child
  try dsimp only [live430, coloured430]
  rw [child]
  dsimp only [result428]
  have child := child1
  unfold live429 coloured429 at child
  try dsimp only [live430, coloured430]
  rw [child]
  dsimp only [result429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree431_agree_conditional : tree431 = literal431 := by
  rw [tree431_def]
  rfl
theorem node431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree431 live431 coloured431 = result431 := by
  rw [tree431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree432_agree_conditional
    (child0 : tree430 = literal430)
    (child1 : tree431 = literal431) : tree432 = literal432 := by
  rw [tree432_def, child0, child1]
  rfl
theorem node432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree430 live430 coloured430 = result430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree431 live431 coloured431 = result431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree432 live432 coloured432 = result432 := by
  rw [tree432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live430 coloured430 at child
  try dsimp only [live432, coloured432]
  rw [child]
  dsimp only [result430]
  have child := child1
  unfold live431 coloured431 at child
  try dsimp only [live432, coloured432]
  rw [child]
  dsimp only [result431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree433_agree_conditional : tree433 = literal433 := by
  rw [tree433_def]
  rfl
theorem node433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree433 live433 coloured433 = result433 := by
  rw [tree433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree434_agree_conditional
    (child0 : tree432 = literal432)
    (child1 : tree433 = literal433) : tree434 = literal434 := by
  rw [tree434_def, child0, child1]
  rfl
theorem node434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree432 live432 coloured432 = result432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree433 live433 coloured433 = result433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree434 live434 coloured434 = result434 := by
  rw [tree434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live432 coloured432 at child
  try dsimp only [live434, coloured434]
  rw [child]
  dsimp only [result432]
  have child := child1
  unfold live433 coloured433 at child
  try dsimp only [live434, coloured434]
  rw [child]
  dsimp only [result433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree435_agree_conditional : tree435 = literal435 := by
  rw [tree435_def]
  rfl
theorem node435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree435 live435 coloured435 = result435 := by
  rw [tree435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree436_agree_conditional
    (child0 : tree434 = literal434)
    (child1 : tree435 = literal435) : tree436 = literal436 := by
  rw [tree436_def, child0, child1]
  rfl
theorem node436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree434 live434 coloured434 = result434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree435 live435 coloured435 = result435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree436 live436 coloured436 = result436 := by
  rw [tree436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live434 coloured434 at child
  try dsimp only [live436, coloured436]
  rw [child]
  dsimp only [result434]
  have child := child1
  unfold live435 coloured435 at child
  try dsimp only [live436, coloured436]
  rw [child]
  dsimp only [result435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree437_agree_conditional : tree437 = literal437 := by
  rw [tree437_def]
  rfl
theorem node437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree437 live437 coloured437 = result437 := by
  rw [tree437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree438_agree_conditional
    (child0 : tree436 = literal436)
    (child1 : tree437 = literal437) : tree438 = literal438 := by
  rw [tree438_def, child0, child1]
  rfl
theorem node438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree436 live436 coloured436 = result436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree437 live437 coloured437 = result437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree438 live438 coloured438 = result438 := by
  rw [tree438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live436 coloured436 at child
  try dsimp only [live438, coloured438]
  rw [child]
  dsimp only [result436]
  have child := child1
  unfold live437 coloured437 at child
  try dsimp only [live438, coloured438]
  rw [child]
  dsimp only [result437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree439_agree_conditional : tree439 = literal439 := by
  rw [tree439_def]
  rfl
theorem node439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree439 live439 coloured439 = result439 := by
  rw [tree439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree440_agree_conditional
    (child0 : tree438 = literal438)
    (child1 : tree439 = literal439) : tree440 = literal440 := by
  rw [tree440_def, child0, child1]
  rfl
theorem node440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree438 live438 coloured438 = result438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree439 live439 coloured439 = result439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree440 live440 coloured440 = result440 := by
  rw [tree440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live438 coloured438 at child
  try dsimp only [live440, coloured440]
  rw [child]
  dsimp only [result438]
  have child := child1
  unfold live439 coloured439 at child
  try dsimp only [live440, coloured440]
  rw [child]
  dsimp only [result439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree441_agree_conditional : tree441 = literal441 := by
  rw [tree441_def]
  rfl
theorem node441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree441 live441 coloured441 = result441 := by
  rw [tree441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree442_agree_conditional
    (child0 : tree440 = literal440)
    (child1 : tree441 = literal441) : tree442 = literal442 := by
  rw [tree442_def, child0, child1]
  rfl
theorem node442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree440 live440 coloured440 = result440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree441 live441 coloured441 = result441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree442 live442 coloured442 = result442 := by
  rw [tree442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live440 coloured440 at child
  try dsimp only [live442, coloured442]
  rw [child]
  dsimp only [result440]
  have child := child1
  unfold live441 coloured441 at child
  try dsimp only [live442, coloured442]
  rw [child]
  dsimp only [result441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree443_agree_conditional : tree443 = literal443 := by
  rw [tree443_def]
  rfl
theorem node443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree443 live443 coloured443 = result443 := by
  rw [tree443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree444_agree_conditional
    (child0 : tree442 = literal442)
    (child1 : tree443 = literal443) : tree444 = literal444 := by
  rw [tree444_def, child0, child1]
  rfl
theorem node444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree442 live442 coloured442 = result442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree443 live443 coloured443 = result443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree444 live444 coloured444 = result444 := by
  rw [tree444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live442 coloured442 at child
  try dsimp only [live444, coloured444]
  rw [child]
  dsimp only [result442]
  have child := child1
  unfold live443 coloured443 at child
  try dsimp only [live444, coloured444]
  rw [child]
  dsimp only [result443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree445_agree_conditional : tree445 = literal445 := by
  rw [tree445_def]
  rfl
theorem node445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree445 live445 coloured445 = result445 := by
  rw [tree445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree446_agree_conditional
    (child0 : tree444 = literal444)
    (child1 : tree445 = literal445) : tree446 = literal446 := by
  rw [tree446_def, child0, child1]
  rfl
theorem node446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree444 live444 coloured444 = result444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree445 live445 coloured445 = result445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree446 live446 coloured446 = result446 := by
  rw [tree446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live444 coloured444 at child
  try dsimp only [live446, coloured446]
  rw [child]
  dsimp only [result444]
  have child := child1
  unfold live445 coloured445 at child
  try dsimp only [live446, coloured446]
  rw [child]
  dsimp only [result445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree447_agree_conditional : tree447 = literal447 := by
  rw [tree447_def]
  rfl
theorem node447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree447 live447 coloured447 = result447 := by
  rw [tree447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree448_agree_conditional
    (child0 : tree446 = literal446)
    (child1 : tree447 = literal447) : tree448 = literal448 := by
  rw [tree448_def, child0, child1]
  rfl
theorem node448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree446 live446 coloured446 = result446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree447 live447 coloured447 = result447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree448 live448 coloured448 = result448 := by
  rw [tree448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live446 coloured446 at child
  try dsimp only [live448, coloured448]
  rw [child]
  dsimp only [result446]
  have child := child1
  unfold live447 coloured447 at child
  try dsimp only [live448, coloured448]
  rw [child]
  dsimp only [result447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree449_agree_conditional : tree449 = literal449 := by
  rw [tree449_def]
  rfl
theorem node449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree449 live449 coloured449 = result449 := by
  rw [tree449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree450_agree_conditional
    (child0 : tree448 = literal448)
    (child1 : tree449 = literal449) : tree450 = literal450 := by
  rw [tree450_def, child0, child1]
  rfl
theorem node450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree448 live448 coloured448 = result448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree449 live449 coloured449 = result449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree450 live450 coloured450 = result450 := by
  rw [tree450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live448 coloured448 at child
  try dsimp only [live450, coloured450]
  rw [child]
  dsimp only [result448]
  have child := child1
  unfold live449 coloured449 at child
  try dsimp only [live450, coloured450]
  rw [child]
  dsimp only [result449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree451_agree_conditional : tree451 = literal451 := by
  rw [tree451_def]
  rfl
theorem node451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree451 live451 coloured451 = result451 := by
  rw [tree451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree452_agree_conditional
    (child0 : tree450 = literal450)
    (child1 : tree451 = literal451) : tree452 = literal452 := by
  rw [tree452_def, child0, child1]
  rfl
theorem node452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree450 live450 coloured450 = result450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree451 live451 coloured451 = result451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree452 live452 coloured452 = result452 := by
  rw [tree452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live450 coloured450 at child
  try dsimp only [live452, coloured452]
  rw [child]
  dsimp only [result450]
  have child := child1
  unfold live451 coloured451 at child
  try dsimp only [live452, coloured452]
  rw [child]
  dsimp only [result451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree453_agree_conditional : tree453 = literal453 := by
  rw [tree453_def]
  rfl
theorem node453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree453 live453 coloured453 = result453 := by
  rw [tree453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree454_agree_conditional
    (child0 : tree452 = literal452)
    (child1 : tree453 = literal453) : tree454 = literal454 := by
  rw [tree454_def, child0, child1]
  rfl
theorem node454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree452 live452 coloured452 = result452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree453 live453 coloured453 = result453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree454 live454 coloured454 = result454 := by
  rw [tree454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live452 coloured452 at child
  try dsimp only [live454, coloured454]
  rw [child]
  dsimp only [result452]
  have child := child1
  unfold live453 coloured453 at child
  try dsimp only [live454, coloured454]
  rw [child]
  dsimp only [result453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree455_agree_conditional : tree455 = literal455 := by
  rw [tree455_def]
  rfl
theorem node455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree455 live455 coloured455 = result455 := by
  rw [tree455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree456_agree_conditional
    (child0 : tree454 = literal454)
    (child1 : tree455 = literal455) : tree456 = literal456 := by
  rw [tree456_def, child0, child1]
  rfl
theorem node456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree454 live454 coloured454 = result454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree455 live455 coloured455 = result455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree456 live456 coloured456 = result456 := by
  rw [tree456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live454 coloured454 at child
  try dsimp only [live456, coloured456]
  rw [child]
  dsimp only [result454]
  have child := child1
  unfold live455 coloured455 at child
  try dsimp only [live456, coloured456]
  rw [child]
  dsimp only [result455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree457_agree_conditional : tree457 = literal457 := by
  rw [tree457_def]
  rfl
theorem node457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree457 live457 coloured457 = result457 := by
  rw [tree457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree458_agree_conditional
    (child0 : tree456 = literal456)
    (child1 : tree457 = literal457) : tree458 = literal458 := by
  rw [tree458_def, child0, child1]
  rfl
theorem node458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree456 live456 coloured456 = result456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree457 live457 coloured457 = result457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree458 live458 coloured458 = result458 := by
  rw [tree458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live456 coloured456 at child
  try dsimp only [live458, coloured458]
  rw [child]
  dsimp only [result456]
  have child := child1
  unfold live457 coloured457 at child
  try dsimp only [live458, coloured458]
  rw [child]
  dsimp only [result457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree459_agree_conditional : tree459 = literal459 := by
  rw [tree459_def]
  rfl
theorem node459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree459 live459 coloured459 = result459 := by
  rw [tree459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree460_agree_conditional
    (child0 : tree458 = literal458)
    (child1 : tree459 = literal459) : tree460 = literal460 := by
  rw [tree460_def, child0, child1]
  rfl
theorem node460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree458 live458 coloured458 = result458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree459 live459 coloured459 = result459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree460 live460 coloured460 = result460 := by
  rw [tree460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live458 coloured458 at child
  try dsimp only [live460, coloured460]
  rw [child]
  dsimp only [result458]
  have child := child1
  unfold live459 coloured459 at child
  try dsimp only [live460, coloured460]
  rw [child]
  dsimp only [result459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree461_agree_conditional : tree461 = literal461 := by
  rw [tree461_def]
  rfl
theorem node461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree461 live461 coloured461 = result461 := by
  rw [tree461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree462_agree_conditional
    (child0 : tree460 = literal460)
    (child1 : tree461 = literal461) : tree462 = literal462 := by
  rw [tree462_def, child0, child1]
  rfl
theorem node462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree460 live460 coloured460 = result460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree461 live461 coloured461 = result461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree462 live462 coloured462 = result462 := by
  rw [tree462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live460 coloured460 at child
  try dsimp only [live462, coloured462]
  rw [child]
  dsimp only [result460]
  have child := child1
  unfold live461 coloured461 at child
  try dsimp only [live462, coloured462]
  rw [child]
  dsimp only [result461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree463_agree_conditional : tree463 = literal463 := by
  rw [tree463_def]
  rfl
theorem node463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree463 live463 coloured463 = result463 := by
  rw [tree463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree464_agree_conditional
    (child0 : tree462 = literal462)
    (child1 : tree463 = literal463) : tree464 = literal464 := by
  rw [tree464_def, child0, child1]
  rfl
theorem node464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree462 live462 coloured462 = result462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree463 live463 coloured463 = result463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree464 live464 coloured464 = result464 := by
  rw [tree464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live462 coloured462 at child
  try dsimp only [live464, coloured464]
  rw [child]
  dsimp only [result462]
  have child := child1
  unfold live463 coloured463 at child
  try dsimp only [live464, coloured464]
  rw [child]
  dsimp only [result463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree465_agree_conditional : tree465 = literal465 := by
  rw [tree465_def]
  rfl
theorem node465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree465 live465 coloured465 = result465 := by
  rw [tree465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree466_agree_conditional
    (child0 : tree464 = literal464)
    (child1 : tree465 = literal465) : tree466 = literal466 := by
  rw [tree466_def, child0, child1]
  rfl
theorem node466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree464 live464 coloured464 = result464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree465 live465 coloured465 = result465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree466 live466 coloured466 = result466 := by
  rw [tree466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live464 coloured464 at child
  try dsimp only [live466, coloured466]
  rw [child]
  dsimp only [result464]
  have child := child1
  unfold live465 coloured465 at child
  try dsimp only [live466, coloured466]
  rw [child]
  dsimp only [result465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree467_agree_conditional : tree467 = literal467 := by
  rw [tree467_def]
  rfl
theorem node467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree467 live467 coloured467 = result467 := by
  rw [tree467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree468_agree_conditional
    (child0 : tree466 = literal466)
    (child1 : tree467 = literal467) : tree468 = literal468 := by
  rw [tree468_def, child0, child1]
  rfl
theorem node468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree466 live466 coloured466 = result466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree467 live467 coloured467 = result467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree468 live468 coloured468 = result468 := by
  rw [tree468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live466 coloured466 at child
  try dsimp only [live468, coloured468]
  rw [child]
  dsimp only [result466]
  have child := child1
  unfold live467 coloured467 at child
  try dsimp only [live468, coloured468]
  rw [child]
  dsimp only [result467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree469_agree_conditional : tree469 = literal469 := by
  rw [tree469_def]
  rfl
theorem node469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree469 live469 coloured469 = result469 := by
  rw [tree469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree470_agree_conditional
    (child0 : tree468 = literal468)
    (child1 : tree469 = literal469) : tree470 = literal470 := by
  rw [tree470_def, child0, child1]
  rfl
theorem node470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree468 live468 coloured468 = result468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree469 live469 coloured469 = result469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree470 live470 coloured470 = result470 := by
  rw [tree470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live468 coloured468 at child
  try dsimp only [live470, coloured470]
  rw [child]
  dsimp only [result468]
  have child := child1
  unfold live469 coloured469 at child
  try dsimp only [live470, coloured470]
  rw [child]
  dsimp only [result469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree471_agree_conditional : tree471 = literal471 := by
  rw [tree471_def]
  rfl
theorem node471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree471 live471 coloured471 = result471 := by
  rw [tree471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree472_agree_conditional
    (child0 : tree470 = literal470)
    (child1 : tree471 = literal471) : tree472 = literal472 := by
  rw [tree472_def, child0, child1]
  rfl
theorem node472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree470 live470 coloured470 = result470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree471 live471 coloured471 = result471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree472 live472 coloured472 = result472 := by
  rw [tree472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live470 coloured470 at child
  try dsimp only [live472, coloured472]
  rw [child]
  dsimp only [result470]
  have child := child1
  unfold live471 coloured471 at child
  try dsimp only [live472, coloured472]
  rw [child]
  dsimp only [result471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree473_agree_conditional : tree473 = literal473 := by
  rw [tree473_def]
  rfl
theorem node473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree473 live473 coloured473 = result473 := by
  rw [tree473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree474_agree_conditional
    (child0 : tree472 = literal472)
    (child1 : tree473 = literal473) : tree474 = literal474 := by
  rw [tree474_def, child0, child1]
  rfl
theorem node474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree472 live472 coloured472 = result472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree473 live473 coloured473 = result473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree474 live474 coloured474 = result474 := by
  rw [tree474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live472 coloured472 at child
  try dsimp only [live474, coloured474]
  rw [child]
  dsimp only [result472]
  have child := child1
  unfold live473 coloured473 at child
  try dsimp only [live474, coloured474]
  rw [child]
  dsimp only [result473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree475_agree_conditional : tree475 = literal475 := by
  rw [tree475_def]
  rfl
theorem node475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree475 live475 coloured475 = result475 := by
  rw [tree475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree476_agree_conditional
    (child0 : tree474 = literal474)
    (child1 : tree475 = literal475) : tree476 = literal476 := by
  rw [tree476_def, child0, child1]
  rfl
theorem node476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree474 live474 coloured474 = result474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree475 live475 coloured475 = result475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree476 live476 coloured476 = result476 := by
  rw [tree476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live474 coloured474 at child
  try dsimp only [live476, coloured476]
  rw [child]
  dsimp only [result474]
  have child := child1
  unfold live475 coloured475 at child
  try dsimp only [live476, coloured476]
  rw [child]
  dsimp only [result475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree477_agree_conditional : tree477 = literal477 := by
  rw [tree477_def]
  rfl
theorem node477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree477 live477 coloured477 = result477 := by
  rw [tree477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree478_agree_conditional
    (child0 : tree476 = literal476)
    (child1 : tree477 = literal477) : tree478 = literal478 := by
  rw [tree478_def, child0, child1]
  rfl
theorem node478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree476 live476 coloured476 = result476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree477 live477 coloured477 = result477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree478 live478 coloured478 = result478 := by
  rw [tree478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live476 coloured476 at child
  try dsimp only [live478, coloured478]
  rw [child]
  dsimp only [result476]
  have child := child1
  unfold live477 coloured477 at child
  try dsimp only [live478, coloured478]
  rw [child]
  dsimp only [result477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree479_agree_conditional : tree479 = literal479 := by
  rw [tree479_def]
  rfl
theorem node479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree479 live479 coloured479 = result479 := by
  rw [tree479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
