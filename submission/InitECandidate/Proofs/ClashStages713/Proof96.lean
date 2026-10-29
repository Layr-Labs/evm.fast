import InitECandidate.Proofs.ClashStages713.Proof95
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree9216_agree : tree9216 = literal9216 := by
  rw [tree9216_def, tree9214_agree, tree9215_agree]
  rfl
theorem node9216_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9216 live9216 coloured9216 = result9216 := by
  rw [tree9216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9214_eq
  unfold live9214 coloured9214 at child
  try dsimp only [live9216, coloured9216]
  rw [child]
  dsimp only [result9214]
  have child := node9215_eq
  unfold live9215 coloured9215 at child
  try dsimp only [live9216, coloured9216]
  rw [child]
  dsimp only [result9215]
  try dsimp only [colour, result9216]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9217_agree : tree9217 = literal9217 := by
  rw [tree9217_def]
  rfl
theorem node9217_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9217 live9217 coloured9217 = result9217 := by
  rw [tree9217_def]
  try dsimp only [colour, result9217]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9218_agree : tree9218 = literal9218 := by
  rw [tree9218_def, tree9216_agree, tree9217_agree]
  rfl
theorem node9218_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9218 live9218 coloured9218 = result9218 := by
  rw [tree9218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9216_eq
  unfold live9216 coloured9216 at child
  try dsimp only [live9218, coloured9218]
  rw [child]
  dsimp only [result9216]
  have child := node9217_eq
  unfold live9217 coloured9217 at child
  try dsimp only [live9218, coloured9218]
  rw [child]
  dsimp only [result9217]
  try dsimp only [colour, result9218]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9219_agree : tree9219 = literal9219 := by
  rw [tree9219_def]
  rfl
theorem node9219_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9219 live9219 coloured9219 = result9219 := by
  rw [tree9219_def]
  try dsimp only [colour, result9219]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9220_agree : tree9220 = literal9220 := by
  rw [tree9220_def, tree9218_agree, tree9219_agree]
  rfl
theorem node9220_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9220 live9220 coloured9220 = result9220 := by
  rw [tree9220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9218_eq
  unfold live9218 coloured9218 at child
  try dsimp only [live9220, coloured9220]
  rw [child]
  dsimp only [result9218]
  have child := node9219_eq
  unfold live9219 coloured9219 at child
  try dsimp only [live9220, coloured9220]
  rw [child]
  dsimp only [result9219]
  try dsimp only [colour, result9220]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9221_agree : tree9221 = literal9221 := by
  rw [tree9221_def]
  rfl
theorem node9221_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9221 live9221 coloured9221 = result9221 := by
  rw [tree9221_def]
  try dsimp only [colour, result9221]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9222_agree : tree9222 = literal9222 := by
  rw [tree9222_def, tree9220_agree, tree9221_agree]
  rfl
theorem node9222_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9222 live9222 coloured9222 = result9222 := by
  rw [tree9222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9220_eq
  unfold live9220 coloured9220 at child
  try dsimp only [live9222, coloured9222]
  rw [child]
  dsimp only [result9220]
  have child := node9221_eq
  unfold live9221 coloured9221 at child
  try dsimp only [live9222, coloured9222]
  rw [child]
  dsimp only [result9221]
  try dsimp only [colour, result9222]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9223_agree : tree9223 = literal9223 := by
  rw [tree9223_def]
  rfl
theorem node9223_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9223 live9223 coloured9223 = result9223 := by
  rw [tree9223_def]
  try dsimp only [colour, result9223]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9224_agree : tree9224 = literal9224 := by
  rw [tree9224_def, tree9222_agree, tree9223_agree]
  rfl
theorem node9224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9224 live9224 coloured9224 = result9224 := by
  rw [tree9224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9222_eq
  unfold live9222 coloured9222 at child
  try dsimp only [live9224, coloured9224]
  rw [child]
  dsimp only [result9222]
  have child := node9223_eq
  unfold live9223 coloured9223 at child
  try dsimp only [live9224, coloured9224]
  rw [child]
  dsimp only [result9223]
  try dsimp only [colour, result9224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9225_agree : tree9225 = literal9225 := by
  rw [tree9225_def]
  rfl
theorem node9225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9225 live9225 coloured9225 = result9225 := by
  rw [tree9225_def]
  try dsimp only [colour, result9225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9226_agree : tree9226 = literal9226 := by
  rw [tree9226_def, tree9224_agree, tree9225_agree]
  rfl
theorem node9226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9226 live9226 coloured9226 = result9226 := by
  rw [tree9226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9224_eq
  unfold live9224 coloured9224 at child
  try dsimp only [live9226, coloured9226]
  rw [child]
  dsimp only [result9224]
  have child := node9225_eq
  unfold live9225 coloured9225 at child
  try dsimp only [live9226, coloured9226]
  rw [child]
  dsimp only [result9225]
  try dsimp only [colour, result9226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9227_agree : tree9227 = literal9227 := by
  rw [tree9227_def]
  rfl
theorem node9227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9227 live9227 coloured9227 = result9227 := by
  rw [tree9227_def]
  try dsimp only [colour, result9227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9228_agree : tree9228 = literal9228 := by
  rw [tree9228_def, tree9226_agree, tree9227_agree]
  rfl
theorem node9228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9228 live9228 coloured9228 = result9228 := by
  rw [tree9228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9226_eq
  unfold live9226 coloured9226 at child
  try dsimp only [live9228, coloured9228]
  rw [child]
  dsimp only [result9226]
  have child := node9227_eq
  unfold live9227 coloured9227 at child
  try dsimp only [live9228, coloured9228]
  rw [child]
  dsimp only [result9227]
  try dsimp only [colour, result9228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9229_agree : tree9229 = literal9229 := by
  rw [tree9229_def]
  rfl
theorem node9229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9229 live9229 coloured9229 = result9229 := by
  rw [tree9229_def]
  try dsimp only [colour, result9229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9230_agree : tree9230 = literal9230 := by
  rw [tree9230_def, tree9228_agree, tree9229_agree]
  rfl
theorem node9230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9230 live9230 coloured9230 = result9230 := by
  rw [tree9230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9228_eq
  unfold live9228 coloured9228 at child
  try dsimp only [live9230, coloured9230]
  rw [child]
  dsimp only [result9228]
  have child := node9229_eq
  unfold live9229 coloured9229 at child
  try dsimp only [live9230, coloured9230]
  rw [child]
  dsimp only [result9229]
  try dsimp only [colour, result9230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9231_agree : tree9231 = literal9231 := by
  rw [tree9231_def]
  rfl
theorem node9231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9231 live9231 coloured9231 = result9231 := by
  rw [tree9231_def]
  try dsimp only [colour, result9231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9232_agree : tree9232 = literal9232 := by
  rw [tree9232_def, tree9230_agree, tree9231_agree]
  rfl
theorem node9232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9232 live9232 coloured9232 = result9232 := by
  rw [tree9232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9230_eq
  unfold live9230 coloured9230 at child
  try dsimp only [live9232, coloured9232]
  rw [child]
  dsimp only [result9230]
  have child := node9231_eq
  unfold live9231 coloured9231 at child
  try dsimp only [live9232, coloured9232]
  rw [child]
  dsimp only [result9231]
  try dsimp only [colour, result9232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9233_agree : tree9233 = literal9233 := by
  rw [tree9233_def]
  rfl
theorem node9233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9233 live9233 coloured9233 = result9233 := by
  rw [tree9233_def]
  try dsimp only [colour, result9233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9234_agree : tree9234 = literal9234 := by
  rw [tree9234_def, tree9232_agree, tree9233_agree]
  rfl
theorem node9234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9234 live9234 coloured9234 = result9234 := by
  rw [tree9234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9232_eq
  unfold live9232 coloured9232 at child
  try dsimp only [live9234, coloured9234]
  rw [child]
  dsimp only [result9232]
  have child := node9233_eq
  unfold live9233 coloured9233 at child
  try dsimp only [live9234, coloured9234]
  rw [child]
  dsimp only [result9233]
  try dsimp only [colour, result9234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9235_agree : tree9235 = literal9235 := by
  rw [tree9235_def]
  rfl
theorem node9235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9235 live9235 coloured9235 = result9235 := by
  rw [tree9235_def]
  try dsimp only [colour, result9235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9236_agree : tree9236 = literal9236 := by
  rw [tree9236_def, tree9234_agree, tree9235_agree]
  rfl
theorem node9236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9236 live9236 coloured9236 = result9236 := by
  rw [tree9236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9234_eq
  unfold live9234 coloured9234 at child
  try dsimp only [live9236, coloured9236]
  rw [child]
  dsimp only [result9234]
  have child := node9235_eq
  unfold live9235 coloured9235 at child
  try dsimp only [live9236, coloured9236]
  rw [child]
  dsimp only [result9235]
  try dsimp only [colour, result9236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9237_agree : tree9237 = literal9237 := by
  rw [tree9237_def]
  rfl
theorem node9237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9237 live9237 coloured9237 = result9237 := by
  rw [tree9237_def]
  try dsimp only [colour, result9237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9238_agree : tree9238 = literal9238 := by
  rw [tree9238_def, tree9236_agree, tree9237_agree]
  rfl
theorem node9238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9238 live9238 coloured9238 = result9238 := by
  rw [tree9238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9236_eq
  unfold live9236 coloured9236 at child
  try dsimp only [live9238, coloured9238]
  rw [child]
  dsimp only [result9236]
  have child := node9237_eq
  unfold live9237 coloured9237 at child
  try dsimp only [live9238, coloured9238]
  rw [child]
  dsimp only [result9237]
  try dsimp only [colour, result9238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9239_agree : tree9239 = literal9239 := by
  rw [tree9239_def]
  rfl
theorem node9239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9239 live9239 coloured9239 = result9239 := by
  rw [tree9239_def]
  try dsimp only [colour, result9239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9240_agree : tree9240 = literal9240 := by
  rw [tree9240_def, tree9238_agree, tree9239_agree]
  rfl
theorem node9240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9240 live9240 coloured9240 = result9240 := by
  rw [tree9240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9238_eq
  unfold live9238 coloured9238 at child
  try dsimp only [live9240, coloured9240]
  rw [child]
  dsimp only [result9238]
  have child := node9239_eq
  unfold live9239 coloured9239 at child
  try dsimp only [live9240, coloured9240]
  rw [child]
  dsimp only [result9239]
  try dsimp only [colour, result9240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9241_agree : tree9241 = literal9241 := by
  rw [tree9241_def]
  rfl
theorem node9241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9241 live9241 coloured9241 = result9241 := by
  rw [tree9241_def]
  try dsimp only [colour, result9241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9242_agree : tree9242 = literal9242 := by
  rw [tree9242_def, tree9240_agree, tree9241_agree]
  rfl
theorem node9242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9242 live9242 coloured9242 = result9242 := by
  rw [tree9242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9240_eq
  unfold live9240 coloured9240 at child
  try dsimp only [live9242, coloured9242]
  rw [child]
  dsimp only [result9240]
  have child := node9241_eq
  unfold live9241 coloured9241 at child
  try dsimp only [live9242, coloured9242]
  rw [child]
  dsimp only [result9241]
  try dsimp only [colour, result9242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9243_agree : tree9243 = literal9243 := by
  rw [tree9243_def]
  rfl
theorem node9243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9243 live9243 coloured9243 = result9243 := by
  rw [tree9243_def]
  try dsimp only [colour, result9243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9244_agree : tree9244 = literal9244 := by
  rw [tree9244_def, tree9242_agree, tree9243_agree]
  rfl
theorem node9244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9244 live9244 coloured9244 = result9244 := by
  rw [tree9244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9242_eq
  unfold live9242 coloured9242 at child
  try dsimp only [live9244, coloured9244]
  rw [child]
  dsimp only [result9242]
  have child := node9243_eq
  unfold live9243 coloured9243 at child
  try dsimp only [live9244, coloured9244]
  rw [child]
  dsimp only [result9243]
  try dsimp only [colour, result9244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9245_agree : tree9245 = literal9245 := by
  rw [tree9245_def]
  rfl
theorem node9245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9245 live9245 coloured9245 = result9245 := by
  rw [tree9245_def]
  try dsimp only [colour, result9245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9246_agree : tree9246 = literal9246 := by
  rw [tree9246_def, tree9244_agree, tree9245_agree]
  rfl
theorem node9246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9246 live9246 coloured9246 = result9246 := by
  rw [tree9246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9244_eq
  unfold live9244 coloured9244 at child
  try dsimp only [live9246, coloured9246]
  rw [child]
  dsimp only [result9244]
  have child := node9245_eq
  unfold live9245 coloured9245 at child
  try dsimp only [live9246, coloured9246]
  rw [child]
  dsimp only [result9245]
  try dsimp only [colour, result9246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9247_agree : tree9247 = literal9247 := by
  rw [tree9247_def]
  rfl
theorem node9247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9247 live9247 coloured9247 = result9247 := by
  rw [tree9247_def]
  try dsimp only [colour, result9247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9248_agree : tree9248 = literal9248 := by
  rw [tree9248_def, tree9246_agree, tree9247_agree]
  rfl
theorem node9248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9248 live9248 coloured9248 = result9248 := by
  rw [tree9248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9246_eq
  unfold live9246 coloured9246 at child
  try dsimp only [live9248, coloured9248]
  rw [child]
  dsimp only [result9246]
  have child := node9247_eq
  unfold live9247 coloured9247 at child
  try dsimp only [live9248, coloured9248]
  rw [child]
  dsimp only [result9247]
  try dsimp only [colour, result9248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9249_agree : tree9249 = literal9249 := by
  rw [tree9249_def]
  rfl
theorem node9249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9249 live9249 coloured9249 = result9249 := by
  rw [tree9249_def]
  try dsimp only [colour, result9249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9250_agree : tree9250 = literal9250 := by
  rw [tree9250_def, tree9248_agree, tree9249_agree]
  rfl
theorem node9250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9250 live9250 coloured9250 = result9250 := by
  rw [tree9250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9248_eq
  unfold live9248 coloured9248 at child
  try dsimp only [live9250, coloured9250]
  rw [child]
  dsimp only [result9248]
  have child := node9249_eq
  unfold live9249 coloured9249 at child
  try dsimp only [live9250, coloured9250]
  rw [child]
  dsimp only [result9249]
  try dsimp only [colour, result9250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9251_agree : tree9251 = literal9251 := by
  rw [tree9251_def]
  rfl
theorem node9251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9251 live9251 coloured9251 = result9251 := by
  rw [tree9251_def]
  try dsimp only [colour, result9251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9252_agree : tree9252 = literal9252 := by
  rw [tree9252_def, tree9250_agree, tree9251_agree]
  rfl
theorem node9252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9252 live9252 coloured9252 = result9252 := by
  rw [tree9252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9250_eq
  unfold live9250 coloured9250 at child
  try dsimp only [live9252, coloured9252]
  rw [child]
  dsimp only [result9250]
  have child := node9251_eq
  unfold live9251 coloured9251 at child
  try dsimp only [live9252, coloured9252]
  rw [child]
  dsimp only [result9251]
  try dsimp only [colour, result9252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9253_agree : tree9253 = literal9253 := by
  rw [tree9253_def]
  rfl
theorem node9253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9253 live9253 coloured9253 = result9253 := by
  rw [tree9253_def]
  try dsimp only [colour, result9253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9254_agree : tree9254 = literal9254 := by
  rw [tree9254_def, tree9252_agree, tree9253_agree]
  rfl
theorem node9254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9254 live9254 coloured9254 = result9254 := by
  rw [tree9254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9252_eq
  unfold live9252 coloured9252 at child
  try dsimp only [live9254, coloured9254]
  rw [child]
  dsimp only [result9252]
  have child := node9253_eq
  unfold live9253 coloured9253 at child
  try dsimp only [live9254, coloured9254]
  rw [child]
  dsimp only [result9253]
  try dsimp only [colour, result9254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9255_agree : tree9255 = literal9255 := by
  rw [tree9255_def]
  rfl
theorem node9255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9255 live9255 coloured9255 = result9255 := by
  rw [tree9255_def]
  try dsimp only [colour, result9255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9256_agree : tree9256 = literal9256 := by
  rw [tree9256_def, tree9254_agree, tree9255_agree]
  rfl
theorem node9256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9256 live9256 coloured9256 = result9256 := by
  rw [tree9256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9254_eq
  unfold live9254 coloured9254 at child
  try dsimp only [live9256, coloured9256]
  rw [child]
  dsimp only [result9254]
  have child := node9255_eq
  unfold live9255 coloured9255 at child
  try dsimp only [live9256, coloured9256]
  rw [child]
  dsimp only [result9255]
  try dsimp only [colour, result9256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9257_agree : tree9257 = literal9257 := by
  rw [tree9257_def]
  rfl
theorem node9257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9257 live9257 coloured9257 = result9257 := by
  rw [tree9257_def]
  try dsimp only [colour, result9257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9258_agree : tree9258 = literal9258 := by
  rw [tree9258_def, tree9256_agree, tree9257_agree]
  rfl
theorem node9258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9258 live9258 coloured9258 = result9258 := by
  rw [tree9258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9256_eq
  unfold live9256 coloured9256 at child
  try dsimp only [live9258, coloured9258]
  rw [child]
  dsimp only [result9256]
  have child := node9257_eq
  unfold live9257 coloured9257 at child
  try dsimp only [live9258, coloured9258]
  rw [child]
  dsimp only [result9257]
  try dsimp only [colour, result9258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9259_agree : tree9259 = literal9259 := by
  rw [tree9259_def]
  rfl
theorem node9259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9259 live9259 coloured9259 = result9259 := by
  rw [tree9259_def]
  try dsimp only [colour, result9259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9260_agree : tree9260 = literal9260 := by
  rw [tree9260_def, tree9258_agree, tree9259_agree]
  rfl
theorem node9260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9260 live9260 coloured9260 = result9260 := by
  rw [tree9260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9258_eq
  unfold live9258 coloured9258 at child
  try dsimp only [live9260, coloured9260]
  rw [child]
  dsimp only [result9258]
  have child := node9259_eq
  unfold live9259 coloured9259 at child
  try dsimp only [live9260, coloured9260]
  rw [child]
  dsimp only [result9259]
  try dsimp only [colour, result9260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9261_agree : tree9261 = literal9261 := by
  rw [tree9261_def]
  rfl
theorem node9261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9261 live9261 coloured9261 = result9261 := by
  rw [tree9261_def]
  try dsimp only [colour, result9261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9262_agree : tree9262 = literal9262 := by
  rw [tree9262_def, tree9260_agree, tree9261_agree]
  rfl
theorem node9262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9262 live9262 coloured9262 = result9262 := by
  rw [tree9262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9260_eq
  unfold live9260 coloured9260 at child
  try dsimp only [live9262, coloured9262]
  rw [child]
  dsimp only [result9260]
  have child := node9261_eq
  unfold live9261 coloured9261 at child
  try dsimp only [live9262, coloured9262]
  rw [child]
  dsimp only [result9261]
  try dsimp only [colour, result9262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9263_agree : tree9263 = literal9263 := by
  rw [tree9263_def]
  rfl
theorem node9263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9263 live9263 coloured9263 = result9263 := by
  rw [tree9263_def]
  try dsimp only [colour, result9263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9264_agree : tree9264 = literal9264 := by
  rw [tree9264_def, tree9262_agree, tree9263_agree]
  rfl
theorem node9264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9264 live9264 coloured9264 = result9264 := by
  rw [tree9264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9262_eq
  unfold live9262 coloured9262 at child
  try dsimp only [live9264, coloured9264]
  rw [child]
  dsimp only [result9262]
  have child := node9263_eq
  unfold live9263 coloured9263 at child
  try dsimp only [live9264, coloured9264]
  rw [child]
  dsimp only [result9263]
  try dsimp only [colour, result9264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9265_agree : tree9265 = literal9265 := by
  rw [tree9265_def]
  rfl
theorem node9265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9265 live9265 coloured9265 = result9265 := by
  rw [tree9265_def]
  try dsimp only [colour, result9265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9266_agree : tree9266 = literal9266 := by
  rw [tree9266_def, tree9264_agree, tree9265_agree]
  rfl
theorem node9266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9266 live9266 coloured9266 = result9266 := by
  rw [tree9266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9264_eq
  unfold live9264 coloured9264 at child
  try dsimp only [live9266, coloured9266]
  rw [child]
  dsimp only [result9264]
  have child := node9265_eq
  unfold live9265 coloured9265 at child
  try dsimp only [live9266, coloured9266]
  rw [child]
  dsimp only [result9265]
  try dsimp only [colour, result9266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9267_agree : tree9267 = literal9267 := by
  rw [tree9267_def]
  rfl
theorem node9267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9267 live9267 coloured9267 = result9267 := by
  rw [tree9267_def]
  try dsimp only [colour, result9267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9268_agree : tree9268 = literal9268 := by
  rw [tree9268_def, tree9266_agree, tree9267_agree]
  rfl
theorem node9268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9268 live9268 coloured9268 = result9268 := by
  rw [tree9268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9266_eq
  unfold live9266 coloured9266 at child
  try dsimp only [live9268, coloured9268]
  rw [child]
  dsimp only [result9266]
  have child := node9267_eq
  unfold live9267 coloured9267 at child
  try dsimp only [live9268, coloured9268]
  rw [child]
  dsimp only [result9267]
  try dsimp only [colour, result9268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9269_agree : tree9269 = literal9269 := by
  rw [tree9269_def]
  rfl
theorem node9269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9269 live9269 coloured9269 = result9269 := by
  rw [tree9269_def]
  try dsimp only [colour, result9269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9270_agree : tree9270 = literal9270 := by
  rw [tree9270_def, tree9268_agree, tree9269_agree]
  rfl
theorem node9270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9270 live9270 coloured9270 = result9270 := by
  rw [tree9270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9268_eq
  unfold live9268 coloured9268 at child
  try dsimp only [live9270, coloured9270]
  rw [child]
  dsimp only [result9268]
  have child := node9269_eq
  unfold live9269 coloured9269 at child
  try dsimp only [live9270, coloured9270]
  rw [child]
  dsimp only [result9269]
  try dsimp only [colour, result9270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9271_agree : tree9271 = literal9271 := by
  rw [tree9271_def]
  rfl
theorem node9271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9271 live9271 coloured9271 = result9271 := by
  rw [tree9271_def]
  try dsimp only [colour, result9271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9272_agree : tree9272 = literal9272 := by
  rw [tree9272_def, tree9270_agree, tree9271_agree]
  rfl
theorem node9272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9272 live9272 coloured9272 = result9272 := by
  rw [tree9272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9270_eq
  unfold live9270 coloured9270 at child
  try dsimp only [live9272, coloured9272]
  rw [child]
  dsimp only [result9270]
  have child := node9271_eq
  unfold live9271 coloured9271 at child
  try dsimp only [live9272, coloured9272]
  rw [child]
  dsimp only [result9271]
  try dsimp only [colour, result9272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9273_agree : tree9273 = literal9273 := by
  rw [tree9273_def]
  rfl
theorem node9273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9273 live9273 coloured9273 = result9273 := by
  rw [tree9273_def]
  try dsimp only [colour, result9273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9274_agree : tree9274 = literal9274 := by
  rw [tree9274_def, tree9272_agree, tree9273_agree]
  rfl
theorem node9274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9274 live9274 coloured9274 = result9274 := by
  rw [tree9274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9272_eq
  unfold live9272 coloured9272 at child
  try dsimp only [live9274, coloured9274]
  rw [child]
  dsimp only [result9272]
  have child := node9273_eq
  unfold live9273 coloured9273 at child
  try dsimp only [live9274, coloured9274]
  rw [child]
  dsimp only [result9273]
  try dsimp only [colour, result9274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9275_agree : tree9275 = literal9275 := by
  rw [tree9275_def]
  rfl
theorem node9275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9275 live9275 coloured9275 = result9275 := by
  rw [tree9275_def]
  try dsimp only [colour, result9275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9276_agree : tree9276 = literal9276 := by
  rw [tree9276_def, tree9274_agree, tree9275_agree]
  rfl
theorem node9276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9276 live9276 coloured9276 = result9276 := by
  rw [tree9276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9274_eq
  unfold live9274 coloured9274 at child
  try dsimp only [live9276, coloured9276]
  rw [child]
  dsimp only [result9274]
  have child := node9275_eq
  unfold live9275 coloured9275 at child
  try dsimp only [live9276, coloured9276]
  rw [child]
  dsimp only [result9275]
  try dsimp only [colour, result9276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9277_agree : tree9277 = literal9277 := by
  rw [tree9277_def]
  rfl
theorem node9277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9277 live9277 coloured9277 = result9277 := by
  rw [tree9277_def]
  try dsimp only [colour, result9277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9278_agree : tree9278 = literal9278 := by
  rw [tree9278_def, tree9276_agree, tree9277_agree]
  rfl
theorem node9278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9278 live9278 coloured9278 = result9278 := by
  rw [tree9278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9276_eq
  unfold live9276 coloured9276 at child
  try dsimp only [live9278, coloured9278]
  rw [child]
  dsimp only [result9276]
  have child := node9277_eq
  unfold live9277 coloured9277 at child
  try dsimp only [live9278, coloured9278]
  rw [child]
  dsimp only [result9277]
  try dsimp only [colour, result9278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9279_agree : tree9279 = literal9279 := by
  rw [tree9279_def]
  rfl
theorem node9279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9279 live9279 coloured9279 = result9279 := by
  rw [tree9279_def]
  try dsimp only [colour, result9279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9280_agree : tree9280 = literal9280 := by
  rw [tree9280_def, tree9278_agree, tree9279_agree]
  rfl
theorem node9280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9280 live9280 coloured9280 = result9280 := by
  rw [tree9280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9278_eq
  unfold live9278 coloured9278 at child
  try dsimp only [live9280, coloured9280]
  rw [child]
  dsimp only [result9278]
  have child := node9279_eq
  unfold live9279 coloured9279 at child
  try dsimp only [live9280, coloured9280]
  rw [child]
  dsimp only [result9279]
  try dsimp only [colour, result9280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9281_agree : tree9281 = literal9281 := by
  rw [tree9281_def]
  rfl
theorem node9281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9281 live9281 coloured9281 = result9281 := by
  rw [tree9281_def]
  try dsimp only [colour, result9281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9282_agree : tree9282 = literal9282 := by
  rw [tree9282_def, tree9280_agree, tree9281_agree]
  rfl
theorem node9282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9282 live9282 coloured9282 = result9282 := by
  rw [tree9282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9280_eq
  unfold live9280 coloured9280 at child
  try dsimp only [live9282, coloured9282]
  rw [child]
  dsimp only [result9280]
  have child := node9281_eq
  unfold live9281 coloured9281 at child
  try dsimp only [live9282, coloured9282]
  rw [child]
  dsimp only [result9281]
  try dsimp only [colour, result9282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9283_agree : tree9283 = literal9283 := by
  rw [tree9283_def]
  rfl
theorem node9283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9283 live9283 coloured9283 = result9283 := by
  rw [tree9283_def]
  try dsimp only [colour, result9283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9284_agree : tree9284 = literal9284 := by
  rw [tree9284_def, tree9282_agree, tree9283_agree]
  rfl
theorem node9284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9284 live9284 coloured9284 = result9284 := by
  rw [tree9284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9282_eq
  unfold live9282 coloured9282 at child
  try dsimp only [live9284, coloured9284]
  rw [child]
  dsimp only [result9282]
  have child := node9283_eq
  unfold live9283 coloured9283 at child
  try dsimp only [live9284, coloured9284]
  rw [child]
  dsimp only [result9283]
  try dsimp only [colour, result9284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9285_agree : tree9285 = literal9285 := by
  rw [tree9285_def]
  rfl
theorem node9285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9285 live9285 coloured9285 = result9285 := by
  rw [tree9285_def]
  try dsimp only [colour, result9285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9286_agree : tree9286 = literal9286 := by
  rw [tree9286_def, tree9284_agree, tree9285_agree]
  rfl
theorem node9286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9286 live9286 coloured9286 = result9286 := by
  rw [tree9286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9284_eq
  unfold live9284 coloured9284 at child
  try dsimp only [live9286, coloured9286]
  rw [child]
  dsimp only [result9284]
  have child := node9285_eq
  unfold live9285 coloured9285 at child
  try dsimp only [live9286, coloured9286]
  rw [child]
  dsimp only [result9285]
  try dsimp only [colour, result9286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9287_agree : tree9287 = literal9287 := by
  rw [tree9287_def]
  rfl
theorem node9287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9287 live9287 coloured9287 = result9287 := by
  rw [tree9287_def]
  try dsimp only [colour, result9287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9288_agree : tree9288 = literal9288 := by
  rw [tree9288_def, tree9286_agree, tree9287_agree]
  rfl
theorem node9288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9288 live9288 coloured9288 = result9288 := by
  rw [tree9288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9286_eq
  unfold live9286 coloured9286 at child
  try dsimp only [live9288, coloured9288]
  rw [child]
  dsimp only [result9286]
  have child := node9287_eq
  unfold live9287 coloured9287 at child
  try dsimp only [live9288, coloured9288]
  rw [child]
  dsimp only [result9287]
  try dsimp only [colour, result9288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9289_agree : tree9289 = literal9289 := by
  rw [tree9289_def]
  rfl
theorem node9289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9289 live9289 coloured9289 = result9289 := by
  rw [tree9289_def]
  try dsimp only [colour, result9289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9290_agree : tree9290 = literal9290 := by
  rw [tree9290_def, tree9288_agree, tree9289_agree]
  rfl
theorem node9290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9290 live9290 coloured9290 = result9290 := by
  rw [tree9290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9288_eq
  unfold live9288 coloured9288 at child
  try dsimp only [live9290, coloured9290]
  rw [child]
  dsimp only [result9288]
  have child := node9289_eq
  unfold live9289 coloured9289 at child
  try dsimp only [live9290, coloured9290]
  rw [child]
  dsimp only [result9289]
  try dsimp only [colour, result9290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9291_agree : tree9291 = literal9291 := by
  rw [tree9291_def]
  rfl
theorem node9291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9291 live9291 coloured9291 = result9291 := by
  rw [tree9291_def]
  try dsimp only [colour, result9291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9292_agree : tree9292 = literal9292 := by
  rw [tree9292_def, tree9290_agree, tree9291_agree]
  rfl
theorem node9292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9292 live9292 coloured9292 = result9292 := by
  rw [tree9292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9290_eq
  unfold live9290 coloured9290 at child
  try dsimp only [live9292, coloured9292]
  rw [child]
  dsimp only [result9290]
  have child := node9291_eq
  unfold live9291 coloured9291 at child
  try dsimp only [live9292, coloured9292]
  rw [child]
  dsimp only [result9291]
  try dsimp only [colour, result9292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9293_agree : tree9293 = literal9293 := by
  rw [tree9293_def]
  rfl
theorem node9293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9293 live9293 coloured9293 = result9293 := by
  rw [tree9293_def]
  try dsimp only [colour, result9293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9294_agree : tree9294 = literal9294 := by
  rw [tree9294_def, tree9292_agree, tree9293_agree]
  rfl
theorem node9294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9294 live9294 coloured9294 = result9294 := by
  rw [tree9294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9292_eq
  unfold live9292 coloured9292 at child
  try dsimp only [live9294, coloured9294]
  rw [child]
  dsimp only [result9292]
  have child := node9293_eq
  unfold live9293 coloured9293 at child
  try dsimp only [live9294, coloured9294]
  rw [child]
  dsimp only [result9293]
  try dsimp only [colour, result9294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9295_agree : tree9295 = literal9295 := by
  rw [tree9295_def]
  rfl
theorem node9295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9295 live9295 coloured9295 = result9295 := by
  rw [tree9295_def]
  try dsimp only [colour, result9295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9296_agree : tree9296 = literal9296 := by
  rw [tree9296_def, tree9294_agree, tree9295_agree]
  rfl
theorem node9296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9296 live9296 coloured9296 = result9296 := by
  rw [tree9296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9294_eq
  unfold live9294 coloured9294 at child
  try dsimp only [live9296, coloured9296]
  rw [child]
  dsimp only [result9294]
  have child := node9295_eq
  unfold live9295 coloured9295 at child
  try dsimp only [live9296, coloured9296]
  rw [child]
  dsimp only [result9295]
  try dsimp only [colour, result9296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9297_agree : tree9297 = literal9297 := by
  rw [tree9297_def]
  rfl
theorem node9297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9297 live9297 coloured9297 = result9297 := by
  rw [tree9297_def]
  try dsimp only [colour, result9297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9298_agree : tree9298 = literal9298 := by
  rw [tree9298_def, tree9296_agree, tree9297_agree]
  rfl
theorem node9298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9298 live9298 coloured9298 = result9298 := by
  rw [tree9298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9296_eq
  unfold live9296 coloured9296 at child
  try dsimp only [live9298, coloured9298]
  rw [child]
  dsimp only [result9296]
  have child := node9297_eq
  unfold live9297 coloured9297 at child
  try dsimp only [live9298, coloured9298]
  rw [child]
  dsimp only [result9297]
  try dsimp only [colour, result9298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9299_agree : tree9299 = literal9299 := by
  rw [tree9299_def]
  rfl
theorem node9299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9299 live9299 coloured9299 = result9299 := by
  rw [tree9299_def]
  try dsimp only [colour, result9299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9300_agree : tree9300 = literal9300 := by
  rw [tree9300_def, tree9298_agree, tree9299_agree]
  rfl
theorem node9300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9300 live9300 coloured9300 = result9300 := by
  rw [tree9300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9298_eq
  unfold live9298 coloured9298 at child
  try dsimp only [live9300, coloured9300]
  rw [child]
  dsimp only [result9298]
  have child := node9299_eq
  unfold live9299 coloured9299 at child
  try dsimp only [live9300, coloured9300]
  rw [child]
  dsimp only [result9299]
  try dsimp only [colour, result9300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9301_agree : tree9301 = literal9301 := by
  rw [tree9301_def]
  rfl
theorem node9301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9301 live9301 coloured9301 = result9301 := by
  rw [tree9301_def]
  try dsimp only [colour, result9301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9302_agree : tree9302 = literal9302 := by
  rw [tree9302_def, tree9300_agree, tree9301_agree]
  rfl
theorem node9302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9302 live9302 coloured9302 = result9302 := by
  rw [tree9302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9300_eq
  unfold live9300 coloured9300 at child
  try dsimp only [live9302, coloured9302]
  rw [child]
  dsimp only [result9300]
  have child := node9301_eq
  unfold live9301 coloured9301 at child
  try dsimp only [live9302, coloured9302]
  rw [child]
  dsimp only [result9301]
  try dsimp only [colour, result9302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9303_agree : tree9303 = literal9303 := by
  rw [tree9303_def]
  rfl
theorem node9303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9303 live9303 coloured9303 = result9303 := by
  rw [tree9303_def]
  try dsimp only [colour, result9303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9304_agree : tree9304 = literal9304 := by
  rw [tree9304_def, tree9302_agree, tree9303_agree]
  rfl
theorem node9304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9304 live9304 coloured9304 = result9304 := by
  rw [tree9304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9302_eq
  unfold live9302 coloured9302 at child
  try dsimp only [live9304, coloured9304]
  rw [child]
  dsimp only [result9302]
  have child := node9303_eq
  unfold live9303 coloured9303 at child
  try dsimp only [live9304, coloured9304]
  rw [child]
  dsimp only [result9303]
  try dsimp only [colour, result9304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9305_agree : tree9305 = literal9305 := by
  rw [tree9305_def]
  rfl
theorem node9305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9305 live9305 coloured9305 = result9305 := by
  rw [tree9305_def]
  try dsimp only [colour, result9305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9306_agree : tree9306 = literal9306 := by
  rw [tree9306_def, tree9304_agree, tree9305_agree]
  rfl
theorem node9306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9306 live9306 coloured9306 = result9306 := by
  rw [tree9306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9304_eq
  unfold live9304 coloured9304 at child
  try dsimp only [live9306, coloured9306]
  rw [child]
  dsimp only [result9304]
  have child := node9305_eq
  unfold live9305 coloured9305 at child
  try dsimp only [live9306, coloured9306]
  rw [child]
  dsimp only [result9305]
  try dsimp only [colour, result9306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9307_agree : tree9307 = literal9307 := by
  rw [tree9307_def]
  rfl
theorem node9307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9307 live9307 coloured9307 = result9307 := by
  rw [tree9307_def]
  try dsimp only [colour, result9307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9308_agree : tree9308 = literal9308 := by
  rw [tree9308_def, tree9306_agree, tree9307_agree]
  rfl
theorem node9308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9308 live9308 coloured9308 = result9308 := by
  rw [tree9308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9306_eq
  unfold live9306 coloured9306 at child
  try dsimp only [live9308, coloured9308]
  rw [child]
  dsimp only [result9306]
  have child := node9307_eq
  unfold live9307 coloured9307 at child
  try dsimp only [live9308, coloured9308]
  rw [child]
  dsimp only [result9307]
  try dsimp only [colour, result9308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9309_agree : tree9309 = literal9309 := by
  rw [tree9309_def]
  rfl
theorem node9309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9309 live9309 coloured9309 = result9309 := by
  rw [tree9309_def]
  try dsimp only [colour, result9309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9310_agree : tree9310 = literal9310 := by
  rw [tree9310_def, tree9308_agree, tree9309_agree]
  rfl
theorem node9310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9310 live9310 coloured9310 = result9310 := by
  rw [tree9310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node9308_eq
  unfold live9308 coloured9308 at child
  try dsimp only [live9310, coloured9310]
  rw [child]
  dsimp only [result9308]
  have child := node9309_eq
  unfold live9309 coloured9309 at child
  try dsimp only [live9310, coloured9310]
  rw [child]
  dsimp only [result9309]
  try dsimp only [colour, result9310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree9311_agree : tree9311 = literal9311 := by
  rw [tree9311_def]
  rfl
theorem node9311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9311 live9311 coloured9311 = result9311 := by
  rw [tree9311_def]
  try dsimp only [colour, result9311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
