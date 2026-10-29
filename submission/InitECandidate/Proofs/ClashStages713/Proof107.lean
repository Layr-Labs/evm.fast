import InitECandidate.Proofs.ClashStages713.Proof106
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree10272_agree : tree10272 = literal10272 := by
  rw [tree10272_def, tree10270_agree, tree10271_agree]
  rfl
theorem node10272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10272 live10272 coloured10272 = result10272 := by
  rw [tree10272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10270_eq
  unfold live10270 coloured10270 at child
  try dsimp only [live10272, coloured10272]
  rw [child]
  dsimp only [result10270]
  have child := node10271_eq
  unfold live10271 coloured10271 at child
  try dsimp only [live10272, coloured10272]
  rw [child]
  dsimp only [result10271]
  try dsimp only [colour, result10272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10273_agree : tree10273 = literal10273 := by
  rw [tree10273_def]
  rfl
theorem node10273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10273 live10273 coloured10273 = result10273 := by
  rw [tree10273_def]
  try dsimp only [colour, result10273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10274_agree : tree10274 = literal10274 := by
  rw [tree10274_def, tree10272_agree, tree10273_agree]
  rfl
theorem node10274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10274 live10274 coloured10274 = result10274 := by
  rw [tree10274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10272_eq
  unfold live10272 coloured10272 at child
  try dsimp only [live10274, coloured10274]
  rw [child]
  dsimp only [result10272]
  have child := node10273_eq
  unfold live10273 coloured10273 at child
  try dsimp only [live10274, coloured10274]
  rw [child]
  dsimp only [result10273]
  try dsimp only [colour, result10274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10275_agree : tree10275 = literal10275 := by
  rw [tree10275_def]
  rfl
theorem node10275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10275 live10275 coloured10275 = result10275 := by
  rw [tree10275_def]
  try dsimp only [colour, result10275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10276_agree : tree10276 = literal10276 := by
  rw [tree10276_def, tree10274_agree, tree10275_agree]
  rfl
theorem node10276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10276 live10276 coloured10276 = result10276 := by
  rw [tree10276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10274_eq
  unfold live10274 coloured10274 at child
  try dsimp only [live10276, coloured10276]
  rw [child]
  dsimp only [result10274]
  have child := node10275_eq
  unfold live10275 coloured10275 at child
  try dsimp only [live10276, coloured10276]
  rw [child]
  dsimp only [result10275]
  try dsimp only [colour, result10276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10277_agree : tree10277 = literal10277 := by
  rw [tree10277_def]
  rfl
theorem node10277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10277 live10277 coloured10277 = result10277 := by
  rw [tree10277_def]
  try dsimp only [colour, result10277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10278_agree : tree10278 = literal10278 := by
  rw [tree10278_def, tree10276_agree, tree10277_agree]
  rfl
theorem node10278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10278 live10278 coloured10278 = result10278 := by
  rw [tree10278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10276_eq
  unfold live10276 coloured10276 at child
  try dsimp only [live10278, coloured10278]
  rw [child]
  dsimp only [result10276]
  have child := node10277_eq
  unfold live10277 coloured10277 at child
  try dsimp only [live10278, coloured10278]
  rw [child]
  dsimp only [result10277]
  try dsimp only [colour, result10278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10279_agree : tree10279 = literal10279 := by
  rw [tree10279_def]
  rfl
theorem node10279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10279 live10279 coloured10279 = result10279 := by
  rw [tree10279_def]
  try dsimp only [colour, result10279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10280_agree : tree10280 = literal10280 := by
  rw [tree10280_def, tree10278_agree, tree10279_agree]
  rfl
theorem node10280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10280 live10280 coloured10280 = result10280 := by
  rw [tree10280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10278_eq
  unfold live10278 coloured10278 at child
  try dsimp only [live10280, coloured10280]
  rw [child]
  dsimp only [result10278]
  have child := node10279_eq
  unfold live10279 coloured10279 at child
  try dsimp only [live10280, coloured10280]
  rw [child]
  dsimp only [result10279]
  try dsimp only [colour, result10280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10281_agree : tree10281 = literal10281 := by
  rw [tree10281_def]
  rfl
theorem node10281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10281 live10281 coloured10281 = result10281 := by
  rw [tree10281_def]
  try dsimp only [colour, result10281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10282_agree : tree10282 = literal10282 := by
  rw [tree10282_def, tree10280_agree, tree10281_agree]
  rfl
theorem node10282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10282 live10282 coloured10282 = result10282 := by
  rw [tree10282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10280_eq
  unfold live10280 coloured10280 at child
  try dsimp only [live10282, coloured10282]
  rw [child]
  dsimp only [result10280]
  have child := node10281_eq
  unfold live10281 coloured10281 at child
  try dsimp only [live10282, coloured10282]
  rw [child]
  dsimp only [result10281]
  try dsimp only [colour, result10282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10283_agree : tree10283 = literal10283 := by
  rw [tree10283_def]
  rfl
theorem node10283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10283 live10283 coloured10283 = result10283 := by
  rw [tree10283_def]
  try dsimp only [colour, result10283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10284_agree : tree10284 = literal10284 := by
  rw [tree10284_def, tree10282_agree, tree10283_agree]
  rfl
theorem node10284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10284 live10284 coloured10284 = result10284 := by
  rw [tree10284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10282_eq
  unfold live10282 coloured10282 at child
  try dsimp only [live10284, coloured10284]
  rw [child]
  dsimp only [result10282]
  have child := node10283_eq
  unfold live10283 coloured10283 at child
  try dsimp only [live10284, coloured10284]
  rw [child]
  dsimp only [result10283]
  try dsimp only [colour, result10284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10285_agree : tree10285 = literal10285 := by
  rw [tree10285_def]
  rfl
theorem node10285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10285 live10285 coloured10285 = result10285 := by
  rw [tree10285_def]
  try dsimp only [colour, result10285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10286_agree : tree10286 = literal10286 := by
  rw [tree10286_def, tree10284_agree, tree10285_agree]
  rfl
theorem node10286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10286 live10286 coloured10286 = result10286 := by
  rw [tree10286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10284_eq
  unfold live10284 coloured10284 at child
  try dsimp only [live10286, coloured10286]
  rw [child]
  dsimp only [result10284]
  have child := node10285_eq
  unfold live10285 coloured10285 at child
  try dsimp only [live10286, coloured10286]
  rw [child]
  dsimp only [result10285]
  try dsimp only [colour, result10286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10287_agree : tree10287 = literal10287 := by
  rw [tree10287_def]
  rfl
theorem node10287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10287 live10287 coloured10287 = result10287 := by
  rw [tree10287_def]
  try dsimp only [colour, result10287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10288_agree : tree10288 = literal10288 := by
  rw [tree10288_def, tree10286_agree, tree10287_agree]
  rfl
theorem node10288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10288 live10288 coloured10288 = result10288 := by
  rw [tree10288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10286_eq
  unfold live10286 coloured10286 at child
  try dsimp only [live10288, coloured10288]
  rw [child]
  dsimp only [result10286]
  have child := node10287_eq
  unfold live10287 coloured10287 at child
  try dsimp only [live10288, coloured10288]
  rw [child]
  dsimp only [result10287]
  try dsimp only [colour, result10288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10289_agree : tree10289 = literal10289 := by
  rw [tree10289_def]
  rfl
theorem node10289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10289 live10289 coloured10289 = result10289 := by
  rw [tree10289_def]
  try dsimp only [colour, result10289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10290_agree : tree10290 = literal10290 := by
  rw [tree10290_def, tree10288_agree, tree10289_agree]
  rfl
theorem node10290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10290 live10290 coloured10290 = result10290 := by
  rw [tree10290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10288_eq
  unfold live10288 coloured10288 at child
  try dsimp only [live10290, coloured10290]
  rw [child]
  dsimp only [result10288]
  have child := node10289_eq
  unfold live10289 coloured10289 at child
  try dsimp only [live10290, coloured10290]
  rw [child]
  dsimp only [result10289]
  try dsimp only [colour, result10290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10291_agree : tree10291 = literal10291 := by
  rw [tree10291_def]
  rfl
theorem node10291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10291 live10291 coloured10291 = result10291 := by
  rw [tree10291_def]
  try dsimp only [colour, result10291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10292_agree : tree10292 = literal10292 := by
  rw [tree10292_def, tree10290_agree, tree10291_agree]
  rfl
theorem node10292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10292 live10292 coloured10292 = result10292 := by
  rw [tree10292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10290_eq
  unfold live10290 coloured10290 at child
  try dsimp only [live10292, coloured10292]
  rw [child]
  dsimp only [result10290]
  have child := node10291_eq
  unfold live10291 coloured10291 at child
  try dsimp only [live10292, coloured10292]
  rw [child]
  dsimp only [result10291]
  try dsimp only [colour, result10292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10293_agree : tree10293 = literal10293 := by
  rw [tree10293_def]
  rfl
theorem node10293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10293 live10293 coloured10293 = result10293 := by
  rw [tree10293_def]
  try dsimp only [colour, result10293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10294_agree : tree10294 = literal10294 := by
  rw [tree10294_def, tree10292_agree, tree10293_agree]
  rfl
theorem node10294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10294 live10294 coloured10294 = result10294 := by
  rw [tree10294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10292_eq
  unfold live10292 coloured10292 at child
  try dsimp only [live10294, coloured10294]
  rw [child]
  dsimp only [result10292]
  have child := node10293_eq
  unfold live10293 coloured10293 at child
  try dsimp only [live10294, coloured10294]
  rw [child]
  dsimp only [result10293]
  try dsimp only [colour, result10294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10295_agree : tree10295 = literal10295 := by
  rw [tree10295_def]
  rfl
theorem node10295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10295 live10295 coloured10295 = result10295 := by
  rw [tree10295_def]
  try dsimp only [colour, result10295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10296_agree : tree10296 = literal10296 := by
  rw [tree10296_def, tree10294_agree, tree10295_agree]
  rfl
theorem node10296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10296 live10296 coloured10296 = result10296 := by
  rw [tree10296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10294_eq
  unfold live10294 coloured10294 at child
  try dsimp only [live10296, coloured10296]
  rw [child]
  dsimp only [result10294]
  have child := node10295_eq
  unfold live10295 coloured10295 at child
  try dsimp only [live10296, coloured10296]
  rw [child]
  dsimp only [result10295]
  try dsimp only [colour, result10296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10297_agree : tree10297 = literal10297 := by
  rw [tree10297_def]
  rfl
theorem node10297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10297 live10297 coloured10297 = result10297 := by
  rw [tree10297_def]
  try dsimp only [colour, result10297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10298_agree : tree10298 = literal10298 := by
  rw [tree10298_def, tree10296_agree, tree10297_agree]
  rfl
theorem node10298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10298 live10298 coloured10298 = result10298 := by
  rw [tree10298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10296_eq
  unfold live10296 coloured10296 at child
  try dsimp only [live10298, coloured10298]
  rw [child]
  dsimp only [result10296]
  have child := node10297_eq
  unfold live10297 coloured10297 at child
  try dsimp only [live10298, coloured10298]
  rw [child]
  dsimp only [result10297]
  try dsimp only [colour, result10298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10299_agree : tree10299 = literal10299 := by
  rw [tree10299_def]
  rfl
theorem node10299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10299 live10299 coloured10299 = result10299 := by
  rw [tree10299_def]
  try dsimp only [colour, result10299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10300_agree : tree10300 = literal10300 := by
  rw [tree10300_def, tree10298_agree, tree10299_agree]
  rfl
theorem node10300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10300 live10300 coloured10300 = result10300 := by
  rw [tree10300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10298_eq
  unfold live10298 coloured10298 at child
  try dsimp only [live10300, coloured10300]
  rw [child]
  dsimp only [result10298]
  have child := node10299_eq
  unfold live10299 coloured10299 at child
  try dsimp only [live10300, coloured10300]
  rw [child]
  dsimp only [result10299]
  try dsimp only [colour, result10300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10301_agree : tree10301 = literal10301 := by
  rw [tree10301_def]
  rfl
theorem node10301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10301 live10301 coloured10301 = result10301 := by
  rw [tree10301_def]
  try dsimp only [colour, result10301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10302_agree : tree10302 = literal10302 := by
  rw [tree10302_def, tree10300_agree, tree10301_agree]
  rfl
theorem node10302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10302 live10302 coloured10302 = result10302 := by
  rw [tree10302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10300_eq
  unfold live10300 coloured10300 at child
  try dsimp only [live10302, coloured10302]
  rw [child]
  dsimp only [result10300]
  have child := node10301_eq
  unfold live10301 coloured10301 at child
  try dsimp only [live10302, coloured10302]
  rw [child]
  dsimp only [result10301]
  try dsimp only [colour, result10302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10303_agree : tree10303 = literal10303 := by
  rw [tree10303_def]
  rfl
theorem node10303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10303 live10303 coloured10303 = result10303 := by
  rw [tree10303_def]
  try dsimp only [colour, result10303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10304_agree : tree10304 = literal10304 := by
  rw [tree10304_def, tree10302_agree, tree10303_agree]
  rfl
theorem node10304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10304 live10304 coloured10304 = result10304 := by
  rw [tree10304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10302_eq
  unfold live10302 coloured10302 at child
  try dsimp only [live10304, coloured10304]
  rw [child]
  dsimp only [result10302]
  have child := node10303_eq
  unfold live10303 coloured10303 at child
  try dsimp only [live10304, coloured10304]
  rw [child]
  dsimp only [result10303]
  try dsimp only [colour, result10304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10305_agree : tree10305 = literal10305 := by
  rw [tree10305_def]
  rfl
theorem node10305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10305 live10305 coloured10305 = result10305 := by
  rw [tree10305_def]
  try dsimp only [colour, result10305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10306_agree : tree10306 = literal10306 := by
  rw [tree10306_def, tree10304_agree, tree10305_agree]
  rfl
theorem node10306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10306 live10306 coloured10306 = result10306 := by
  rw [tree10306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10304_eq
  unfold live10304 coloured10304 at child
  try dsimp only [live10306, coloured10306]
  rw [child]
  dsimp only [result10304]
  have child := node10305_eq
  unfold live10305 coloured10305 at child
  try dsimp only [live10306, coloured10306]
  rw [child]
  dsimp only [result10305]
  try dsimp only [colour, result10306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10307_agree : tree10307 = literal10307 := by
  rw [tree10307_def]
  rfl
theorem node10307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10307 live10307 coloured10307 = result10307 := by
  rw [tree10307_def]
  try dsimp only [colour, result10307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10308_agree : tree10308 = literal10308 := by
  rw [tree10308_def, tree10306_agree, tree10307_agree]
  rfl
theorem node10308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10308 live10308 coloured10308 = result10308 := by
  rw [tree10308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10306_eq
  unfold live10306 coloured10306 at child
  try dsimp only [live10308, coloured10308]
  rw [child]
  dsimp only [result10306]
  have child := node10307_eq
  unfold live10307 coloured10307 at child
  try dsimp only [live10308, coloured10308]
  rw [child]
  dsimp only [result10307]
  try dsimp only [colour, result10308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10309_agree : tree10309 = literal10309 := by
  rw [tree10309_def]
  rfl
theorem node10309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10309 live10309 coloured10309 = result10309 := by
  rw [tree10309_def]
  try dsimp only [colour, result10309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10310_agree : tree10310 = literal10310 := by
  rw [tree10310_def, tree10308_agree, tree10309_agree]
  rfl
theorem node10310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10310 live10310 coloured10310 = result10310 := by
  rw [tree10310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10308_eq
  unfold live10308 coloured10308 at child
  try dsimp only [live10310, coloured10310]
  rw [child]
  dsimp only [result10308]
  have child := node10309_eq
  unfold live10309 coloured10309 at child
  try dsimp only [live10310, coloured10310]
  rw [child]
  dsimp only [result10309]
  try dsimp only [colour, result10310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10311_agree : tree10311 = literal10311 := by
  rw [tree10311_def]
  rfl
theorem node10311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10311 live10311 coloured10311 = result10311 := by
  rw [tree10311_def]
  try dsimp only [colour, result10311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10312_agree : tree10312 = literal10312 := by
  rw [tree10312_def, tree10310_agree, tree10311_agree]
  rfl
theorem node10312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10312 live10312 coloured10312 = result10312 := by
  rw [tree10312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10310_eq
  unfold live10310 coloured10310 at child
  try dsimp only [live10312, coloured10312]
  rw [child]
  dsimp only [result10310]
  have child := node10311_eq
  unfold live10311 coloured10311 at child
  try dsimp only [live10312, coloured10312]
  rw [child]
  dsimp only [result10311]
  try dsimp only [colour, result10312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10313_agree : tree10313 = literal10313 := by
  rw [tree10313_def]
  rfl
theorem node10313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10313 live10313 coloured10313 = result10313 := by
  rw [tree10313_def]
  try dsimp only [colour, result10313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10314_agree : tree10314 = literal10314 := by
  rw [tree10314_def, tree10312_agree, tree10313_agree]
  rfl
theorem node10314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10314 live10314 coloured10314 = result10314 := by
  rw [tree10314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10312_eq
  unfold live10312 coloured10312 at child
  try dsimp only [live10314, coloured10314]
  rw [child]
  dsimp only [result10312]
  have child := node10313_eq
  unfold live10313 coloured10313 at child
  try dsimp only [live10314, coloured10314]
  rw [child]
  dsimp only [result10313]
  try dsimp only [colour, result10314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10315_agree : tree10315 = literal10315 := by
  rw [tree10315_def]
  rfl
theorem node10315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10315 live10315 coloured10315 = result10315 := by
  rw [tree10315_def]
  try dsimp only [colour, result10315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10316_agree : tree10316 = literal10316 := by
  rw [tree10316_def, tree10314_agree, tree10315_agree]
  rfl
theorem node10316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10316 live10316 coloured10316 = result10316 := by
  rw [tree10316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10314_eq
  unfold live10314 coloured10314 at child
  try dsimp only [live10316, coloured10316]
  rw [child]
  dsimp only [result10314]
  have child := node10315_eq
  unfold live10315 coloured10315 at child
  try dsimp only [live10316, coloured10316]
  rw [child]
  dsimp only [result10315]
  try dsimp only [colour, result10316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10317_agree : tree10317 = literal10317 := by
  rw [tree10317_def]
  rfl
theorem node10317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10317 live10317 coloured10317 = result10317 := by
  rw [tree10317_def]
  try dsimp only [colour, result10317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10318_agree : tree10318 = literal10318 := by
  rw [tree10318_def, tree10316_agree, tree10317_agree]
  rfl
theorem node10318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10318 live10318 coloured10318 = result10318 := by
  rw [tree10318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10316_eq
  unfold live10316 coloured10316 at child
  try dsimp only [live10318, coloured10318]
  rw [child]
  dsimp only [result10316]
  have child := node10317_eq
  unfold live10317 coloured10317 at child
  try dsimp only [live10318, coloured10318]
  rw [child]
  dsimp only [result10317]
  try dsimp only [colour, result10318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10319_agree : tree10319 = literal10319 := by
  rw [tree10319_def]
  rfl
theorem node10319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10319 live10319 coloured10319 = result10319 := by
  rw [tree10319_def]
  try dsimp only [colour, result10319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10320_agree : tree10320 = literal10320 := by
  rw [tree10320_def, tree10318_agree, tree10319_agree]
  rfl
theorem node10320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10320 live10320 coloured10320 = result10320 := by
  rw [tree10320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10318_eq
  unfold live10318 coloured10318 at child
  try dsimp only [live10320, coloured10320]
  rw [child]
  dsimp only [result10318]
  have child := node10319_eq
  unfold live10319 coloured10319 at child
  try dsimp only [live10320, coloured10320]
  rw [child]
  dsimp only [result10319]
  try dsimp only [colour, result10320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10321_agree : tree10321 = literal10321 := by
  rw [tree10321_def]
  rfl
theorem node10321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10321 live10321 coloured10321 = result10321 := by
  rw [tree10321_def]
  try dsimp only [colour, result10321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10322_agree : tree10322 = literal10322 := by
  rw [tree10322_def, tree10320_agree, tree10321_agree]
  rfl
theorem node10322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10322 live10322 coloured10322 = result10322 := by
  rw [tree10322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10320_eq
  unfold live10320 coloured10320 at child
  try dsimp only [live10322, coloured10322]
  rw [child]
  dsimp only [result10320]
  have child := node10321_eq
  unfold live10321 coloured10321 at child
  try dsimp only [live10322, coloured10322]
  rw [child]
  dsimp only [result10321]
  try dsimp only [colour, result10322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10323_agree : tree10323 = literal10323 := by
  rw [tree10323_def]
  rfl
theorem node10323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10323 live10323 coloured10323 = result10323 := by
  rw [tree10323_def]
  try dsimp only [colour, result10323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10324_agree : tree10324 = literal10324 := by
  rw [tree10324_def, tree10322_agree, tree10323_agree]
  rfl
theorem node10324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10324 live10324 coloured10324 = result10324 := by
  rw [tree10324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10322_eq
  unfold live10322 coloured10322 at child
  try dsimp only [live10324, coloured10324]
  rw [child]
  dsimp only [result10322]
  have child := node10323_eq
  unfold live10323 coloured10323 at child
  try dsimp only [live10324, coloured10324]
  rw [child]
  dsimp only [result10323]
  try dsimp only [colour, result10324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10325_agree : tree10325 = literal10325 := by
  rw [tree10325_def]
  rfl
theorem node10325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10325 live10325 coloured10325 = result10325 := by
  rw [tree10325_def]
  try dsimp only [colour, result10325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10326_agree : tree10326 = literal10326 := by
  rw [tree10326_def, tree10324_agree, tree10325_agree]
  rfl
theorem node10326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10326 live10326 coloured10326 = result10326 := by
  rw [tree10326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10324_eq
  unfold live10324 coloured10324 at child
  try dsimp only [live10326, coloured10326]
  rw [child]
  dsimp only [result10324]
  have child := node10325_eq
  unfold live10325 coloured10325 at child
  try dsimp only [live10326, coloured10326]
  rw [child]
  dsimp only [result10325]
  try dsimp only [colour, result10326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10327_agree : tree10327 = literal10327 := by
  rw [tree10327_def]
  rfl
theorem node10327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10327 live10327 coloured10327 = result10327 := by
  rw [tree10327_def]
  try dsimp only [colour, result10327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10328_agree : tree10328 = literal10328 := by
  rw [tree10328_def, tree10326_agree, tree10327_agree]
  rfl
theorem node10328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10328 live10328 coloured10328 = result10328 := by
  rw [tree10328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10326_eq
  unfold live10326 coloured10326 at child
  try dsimp only [live10328, coloured10328]
  rw [child]
  dsimp only [result10326]
  have child := node10327_eq
  unfold live10327 coloured10327 at child
  try dsimp only [live10328, coloured10328]
  rw [child]
  dsimp only [result10327]
  try dsimp only [colour, result10328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10329_agree : tree10329 = literal10329 := by
  rw [tree10329_def]
  rfl
theorem node10329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10329 live10329 coloured10329 = result10329 := by
  rw [tree10329_def]
  try dsimp only [colour, result10329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10330_agree : tree10330 = literal10330 := by
  rw [tree10330_def, tree10328_agree, tree10329_agree]
  rfl
theorem node10330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10330 live10330 coloured10330 = result10330 := by
  rw [tree10330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10328_eq
  unfold live10328 coloured10328 at child
  try dsimp only [live10330, coloured10330]
  rw [child]
  dsimp only [result10328]
  have child := node10329_eq
  unfold live10329 coloured10329 at child
  try dsimp only [live10330, coloured10330]
  rw [child]
  dsimp only [result10329]
  try dsimp only [colour, result10330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10331_agree : tree10331 = literal10331 := by
  rw [tree10331_def]
  rfl
theorem node10331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10331 live10331 coloured10331 = result10331 := by
  rw [tree10331_def]
  try dsimp only [colour, result10331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10332_agree : tree10332 = literal10332 := by
  rw [tree10332_def, tree10330_agree, tree10331_agree]
  rfl
theorem node10332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10332 live10332 coloured10332 = result10332 := by
  rw [tree10332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10330_eq
  unfold live10330 coloured10330 at child
  try dsimp only [live10332, coloured10332]
  rw [child]
  dsimp only [result10330]
  have child := node10331_eq
  unfold live10331 coloured10331 at child
  try dsimp only [live10332, coloured10332]
  rw [child]
  dsimp only [result10331]
  try dsimp only [colour, result10332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10333_agree : tree10333 = literal10333 := by
  rw [tree10333_def]
  rfl
theorem node10333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10333 live10333 coloured10333 = result10333 := by
  rw [tree10333_def]
  try dsimp only [colour, result10333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10334_agree : tree10334 = literal10334 := by
  rw [tree10334_def, tree10332_agree, tree10333_agree]
  rfl
theorem node10334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10334 live10334 coloured10334 = result10334 := by
  rw [tree10334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10332_eq
  unfold live10332 coloured10332 at child
  try dsimp only [live10334, coloured10334]
  rw [child]
  dsimp only [result10332]
  have child := node10333_eq
  unfold live10333 coloured10333 at child
  try dsimp only [live10334, coloured10334]
  rw [child]
  dsimp only [result10333]
  try dsimp only [colour, result10334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10335_agree : tree10335 = literal10335 := by
  rw [tree10335_def]
  rfl
theorem node10335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10335 live10335 coloured10335 = result10335 := by
  rw [tree10335_def]
  try dsimp only [colour, result10335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10336_agree : tree10336 = literal10336 := by
  rw [tree10336_def, tree10334_agree, tree10335_agree]
  rfl
theorem node10336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10336 live10336 coloured10336 = result10336 := by
  rw [tree10336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10334_eq
  unfold live10334 coloured10334 at child
  try dsimp only [live10336, coloured10336]
  rw [child]
  dsimp only [result10334]
  have child := node10335_eq
  unfold live10335 coloured10335 at child
  try dsimp only [live10336, coloured10336]
  rw [child]
  dsimp only [result10335]
  try dsimp only [colour, result10336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10337_agree : tree10337 = literal10337 := by
  rw [tree10337_def]
  rfl
theorem node10337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10337 live10337 coloured10337 = result10337 := by
  rw [tree10337_def]
  try dsimp only [colour, result10337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10338_agree : tree10338 = literal10338 := by
  rw [tree10338_def, tree10336_agree, tree10337_agree]
  rfl
theorem node10338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10338 live10338 coloured10338 = result10338 := by
  rw [tree10338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10336_eq
  unfold live10336 coloured10336 at child
  try dsimp only [live10338, coloured10338]
  rw [child]
  dsimp only [result10336]
  have child := node10337_eq
  unfold live10337 coloured10337 at child
  try dsimp only [live10338, coloured10338]
  rw [child]
  dsimp only [result10337]
  try dsimp only [colour, result10338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10339_agree : tree10339 = literal10339 := by
  rw [tree10339_def]
  rfl
theorem node10339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10339 live10339 coloured10339 = result10339 := by
  rw [tree10339_def]
  try dsimp only [colour, result10339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10340_agree : tree10340 = literal10340 := by
  rw [tree10340_def, tree10338_agree, tree10339_agree]
  rfl
theorem node10340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10340 live10340 coloured10340 = result10340 := by
  rw [tree10340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10338_eq
  unfold live10338 coloured10338 at child
  try dsimp only [live10340, coloured10340]
  rw [child]
  dsimp only [result10338]
  have child := node10339_eq
  unfold live10339 coloured10339 at child
  try dsimp only [live10340, coloured10340]
  rw [child]
  dsimp only [result10339]
  try dsimp only [colour, result10340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10341_agree : tree10341 = literal10341 := by
  rw [tree10341_def]
  rfl
theorem node10341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10341 live10341 coloured10341 = result10341 := by
  rw [tree10341_def]
  try dsimp only [colour, result10341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10342_agree : tree10342 = literal10342 := by
  rw [tree10342_def, tree10340_agree, tree10341_agree]
  rfl
theorem node10342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10342 live10342 coloured10342 = result10342 := by
  rw [tree10342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10340_eq
  unfold live10340 coloured10340 at child
  try dsimp only [live10342, coloured10342]
  rw [child]
  dsimp only [result10340]
  have child := node10341_eq
  unfold live10341 coloured10341 at child
  try dsimp only [live10342, coloured10342]
  rw [child]
  dsimp only [result10341]
  try dsimp only [colour, result10342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10343_agree : tree10343 = literal10343 := by
  rw [tree10343_def]
  rfl
theorem node10343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10343 live10343 coloured10343 = result10343 := by
  rw [tree10343_def]
  try dsimp only [colour, result10343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10344_agree : tree10344 = literal10344 := by
  rw [tree10344_def, tree10342_agree, tree10343_agree]
  rfl
theorem node10344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10344 live10344 coloured10344 = result10344 := by
  rw [tree10344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10342_eq
  unfold live10342 coloured10342 at child
  try dsimp only [live10344, coloured10344]
  rw [child]
  dsimp only [result10342]
  have child := node10343_eq
  unfold live10343 coloured10343 at child
  try dsimp only [live10344, coloured10344]
  rw [child]
  dsimp only [result10343]
  try dsimp only [colour, result10344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10345_agree : tree10345 = literal10345 := by
  rw [tree10345_def]
  rfl
theorem node10345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10345 live10345 coloured10345 = result10345 := by
  rw [tree10345_def]
  try dsimp only [colour, result10345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10346_agree : tree10346 = literal10346 := by
  rw [tree10346_def, tree10344_agree, tree10345_agree]
  rfl
theorem node10346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10346 live10346 coloured10346 = result10346 := by
  rw [tree10346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10344_eq
  unfold live10344 coloured10344 at child
  try dsimp only [live10346, coloured10346]
  rw [child]
  dsimp only [result10344]
  have child := node10345_eq
  unfold live10345 coloured10345 at child
  try dsimp only [live10346, coloured10346]
  rw [child]
  dsimp only [result10345]
  try dsimp only [colour, result10346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10347_agree : tree10347 = literal10347 := by
  rw [tree10347_def]
  rfl
theorem node10347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10347 live10347 coloured10347 = result10347 := by
  rw [tree10347_def]
  try dsimp only [colour, result10347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10348_agree : tree10348 = literal10348 := by
  rw [tree10348_def, tree10346_agree, tree10347_agree]
  rfl
theorem node10348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10348 live10348 coloured10348 = result10348 := by
  rw [tree10348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10346_eq
  unfold live10346 coloured10346 at child
  try dsimp only [live10348, coloured10348]
  rw [child]
  dsimp only [result10346]
  have child := node10347_eq
  unfold live10347 coloured10347 at child
  try dsimp only [live10348, coloured10348]
  rw [child]
  dsimp only [result10347]
  try dsimp only [colour, result10348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10349_agree : tree10349 = literal10349 := by
  rw [tree10349_def]
  rfl
theorem node10349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10349 live10349 coloured10349 = result10349 := by
  rw [tree10349_def]
  try dsimp only [colour, result10349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10350_agree : tree10350 = literal10350 := by
  rw [tree10350_def, tree10348_agree, tree10349_agree]
  rfl
theorem node10350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10350 live10350 coloured10350 = result10350 := by
  rw [tree10350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10348_eq
  unfold live10348 coloured10348 at child
  try dsimp only [live10350, coloured10350]
  rw [child]
  dsimp only [result10348]
  have child := node10349_eq
  unfold live10349 coloured10349 at child
  try dsimp only [live10350, coloured10350]
  rw [child]
  dsimp only [result10349]
  try dsimp only [colour, result10350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10351_agree : tree10351 = literal10351 := by
  rw [tree10351_def]
  rfl
theorem node10351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10351 live10351 coloured10351 = result10351 := by
  rw [tree10351_def]
  try dsimp only [colour, result10351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10352_agree : tree10352 = literal10352 := by
  rw [tree10352_def, tree10350_agree, tree10351_agree]
  rfl
theorem node10352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10352 live10352 coloured10352 = result10352 := by
  rw [tree10352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10350_eq
  unfold live10350 coloured10350 at child
  try dsimp only [live10352, coloured10352]
  rw [child]
  dsimp only [result10350]
  have child := node10351_eq
  unfold live10351 coloured10351 at child
  try dsimp only [live10352, coloured10352]
  rw [child]
  dsimp only [result10351]
  try dsimp only [colour, result10352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10353_agree : tree10353 = literal10353 := by
  rw [tree10353_def]
  rfl
theorem node10353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10353 live10353 coloured10353 = result10353 := by
  rw [tree10353_def]
  try dsimp only [colour, result10353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10354_agree : tree10354 = literal10354 := by
  rw [tree10354_def, tree10352_agree, tree10353_agree]
  rfl
theorem node10354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10354 live10354 coloured10354 = result10354 := by
  rw [tree10354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10352_eq
  unfold live10352 coloured10352 at child
  try dsimp only [live10354, coloured10354]
  rw [child]
  dsimp only [result10352]
  have child := node10353_eq
  unfold live10353 coloured10353 at child
  try dsimp only [live10354, coloured10354]
  rw [child]
  dsimp only [result10353]
  try dsimp only [colour, result10354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10355_agree : tree10355 = literal10355 := by
  rw [tree10355_def]
  rfl
theorem node10355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10355 live10355 coloured10355 = result10355 := by
  rw [tree10355_def]
  try dsimp only [colour, result10355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10356_agree : tree10356 = literal10356 := by
  rw [tree10356_def, tree10354_agree, tree10355_agree]
  rfl
theorem node10356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10356 live10356 coloured10356 = result10356 := by
  rw [tree10356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10354_eq
  unfold live10354 coloured10354 at child
  try dsimp only [live10356, coloured10356]
  rw [child]
  dsimp only [result10354]
  have child := node10355_eq
  unfold live10355 coloured10355 at child
  try dsimp only [live10356, coloured10356]
  rw [child]
  dsimp only [result10355]
  try dsimp only [colour, result10356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10357_agree : tree10357 = literal10357 := by
  rw [tree10357_def]
  rfl
theorem node10357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10357 live10357 coloured10357 = result10357 := by
  rw [tree10357_def]
  try dsimp only [colour, result10357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10358_agree : tree10358 = literal10358 := by
  rw [tree10358_def, tree10356_agree, tree10357_agree]
  rfl
theorem node10358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10358 live10358 coloured10358 = result10358 := by
  rw [tree10358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10356_eq
  unfold live10356 coloured10356 at child
  try dsimp only [live10358, coloured10358]
  rw [child]
  dsimp only [result10356]
  have child := node10357_eq
  unfold live10357 coloured10357 at child
  try dsimp only [live10358, coloured10358]
  rw [child]
  dsimp only [result10357]
  try dsimp only [colour, result10358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10359_agree : tree10359 = literal10359 := by
  rw [tree10359_def]
  rfl
theorem node10359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10359 live10359 coloured10359 = result10359 := by
  rw [tree10359_def]
  try dsimp only [colour, result10359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10360_agree : tree10360 = literal10360 := by
  rw [tree10360_def, tree10358_agree, tree10359_agree]
  rfl
theorem node10360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10360 live10360 coloured10360 = result10360 := by
  rw [tree10360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10358_eq
  unfold live10358 coloured10358 at child
  try dsimp only [live10360, coloured10360]
  rw [child]
  dsimp only [result10358]
  have child := node10359_eq
  unfold live10359 coloured10359 at child
  try dsimp only [live10360, coloured10360]
  rw [child]
  dsimp only [result10359]
  try dsimp only [colour, result10360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10361_agree : tree10361 = literal10361 := by
  rw [tree10361_def]
  rfl
theorem node10361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10361 live10361 coloured10361 = result10361 := by
  rw [tree10361_def]
  try dsimp only [colour, result10361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10362_agree : tree10362 = literal10362 := by
  rw [tree10362_def, tree10360_agree, tree10361_agree]
  rfl
theorem node10362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10362 live10362 coloured10362 = result10362 := by
  rw [tree10362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10360_eq
  unfold live10360 coloured10360 at child
  try dsimp only [live10362, coloured10362]
  rw [child]
  dsimp only [result10360]
  have child := node10361_eq
  unfold live10361 coloured10361 at child
  try dsimp only [live10362, coloured10362]
  rw [child]
  dsimp only [result10361]
  try dsimp only [colour, result10362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10363_agree : tree10363 = literal10363 := by
  rw [tree10363_def]
  rfl
theorem node10363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10363 live10363 coloured10363 = result10363 := by
  rw [tree10363_def]
  try dsimp only [colour, result10363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10364_agree : tree10364 = literal10364 := by
  rw [tree10364_def, tree10362_agree, tree10363_agree]
  rfl
theorem node10364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10364 live10364 coloured10364 = result10364 := by
  rw [tree10364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10362_eq
  unfold live10362 coloured10362 at child
  try dsimp only [live10364, coloured10364]
  rw [child]
  dsimp only [result10362]
  have child := node10363_eq
  unfold live10363 coloured10363 at child
  try dsimp only [live10364, coloured10364]
  rw [child]
  dsimp only [result10363]
  try dsimp only [colour, result10364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10365_agree : tree10365 = literal10365 := by
  rw [tree10365_def]
  rfl
theorem node10365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10365 live10365 coloured10365 = result10365 := by
  rw [tree10365_def]
  try dsimp only [colour, result10365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10366_agree : tree10366 = literal10366 := by
  rw [tree10366_def, tree10364_agree, tree10365_agree]
  rfl
theorem node10366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10366 live10366 coloured10366 = result10366 := by
  rw [tree10366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node10364_eq
  unfold live10364 coloured10364 at child
  try dsimp only [live10366, coloured10366]
  rw [child]
  dsimp only [result10364]
  have child := node10365_eq
  unfold live10365 coloured10365 at child
  try dsimp only [live10366, coloured10366]
  rw [child]
  dsimp only [result10365]
  try dsimp only [colour, result10366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree10367_agree : tree10367 = literal10367 := by
  rw [tree10367_def]
  rfl
theorem node10367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10367 live10367 coloured10367 = result10367 := by
  rw [tree10367_def]
  try dsimp only [colour, result10367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
