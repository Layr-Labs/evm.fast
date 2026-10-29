import InitECandidate.Proofs.ClashStages713.Proof43
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree4224_agree : tree4224 = literal4224 := by
  rw [tree4224_def, tree4222_agree, tree4223_agree]
  rfl
theorem node4224_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4224 live4224 coloured4224 = result4224 := by
  rw [tree4224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4222_eq
  unfold live4222 coloured4222 at child
  try dsimp only [live4224, coloured4224]
  rw [child]
  dsimp only [result4222]
  have child := node4223_eq
  unfold live4223 coloured4223 at child
  try dsimp only [live4224, coloured4224]
  rw [child]
  dsimp only [result4223]
  try dsimp only [colour, result4224]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4225_agree : tree4225 = literal4225 := by
  rw [tree4225_def]
  rfl
theorem node4225_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4225 live4225 coloured4225 = result4225 := by
  rw [tree4225_def]
  try dsimp only [colour, result4225]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4226_agree : tree4226 = literal4226 := by
  rw [tree4226_def, tree4224_agree, tree4225_agree]
  rfl
theorem node4226_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4226 live4226 coloured4226 = result4226 := by
  rw [tree4226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4224_eq
  unfold live4224 coloured4224 at child
  try dsimp only [live4226, coloured4226]
  rw [child]
  dsimp only [result4224]
  have child := node4225_eq
  unfold live4225 coloured4225 at child
  try dsimp only [live4226, coloured4226]
  rw [child]
  dsimp only [result4225]
  try dsimp only [colour, result4226]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4227_agree : tree4227 = literal4227 := by
  rw [tree4227_def]
  rfl
theorem node4227_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4227 live4227 coloured4227 = result4227 := by
  rw [tree4227_def]
  try dsimp only [colour, result4227]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4228_agree : tree4228 = literal4228 := by
  rw [tree4228_def, tree4226_agree, tree4227_agree]
  rfl
theorem node4228_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4228 live4228 coloured4228 = result4228 := by
  rw [tree4228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4226_eq
  unfold live4226 coloured4226 at child
  try dsimp only [live4228, coloured4228]
  rw [child]
  dsimp only [result4226]
  have child := node4227_eq
  unfold live4227 coloured4227 at child
  try dsimp only [live4228, coloured4228]
  rw [child]
  dsimp only [result4227]
  try dsimp only [colour, result4228]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4229_agree : tree4229 = literal4229 := by
  rw [tree4229_def]
  rfl
theorem node4229_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4229 live4229 coloured4229 = result4229 := by
  rw [tree4229_def]
  try dsimp only [colour, result4229]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4230_agree : tree4230 = literal4230 := by
  rw [tree4230_def, tree4228_agree, tree4229_agree]
  rfl
theorem node4230_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4230 live4230 coloured4230 = result4230 := by
  rw [tree4230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4228_eq
  unfold live4228 coloured4228 at child
  try dsimp only [live4230, coloured4230]
  rw [child]
  dsimp only [result4228]
  have child := node4229_eq
  unfold live4229 coloured4229 at child
  try dsimp only [live4230, coloured4230]
  rw [child]
  dsimp only [result4229]
  try dsimp only [colour, result4230]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4231_agree : tree4231 = literal4231 := by
  rw [tree4231_def]
  rfl
theorem node4231_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4231 live4231 coloured4231 = result4231 := by
  rw [tree4231_def]
  try dsimp only [colour, result4231]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4232_agree : tree4232 = literal4232 := by
  rw [tree4232_def, tree4230_agree, tree4231_agree]
  rfl
theorem node4232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4232 live4232 coloured4232 = result4232 := by
  rw [tree4232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4230_eq
  unfold live4230 coloured4230 at child
  try dsimp only [live4232, coloured4232]
  rw [child]
  dsimp only [result4230]
  have child := node4231_eq
  unfold live4231 coloured4231 at child
  try dsimp only [live4232, coloured4232]
  rw [child]
  dsimp only [result4231]
  try dsimp only [colour, result4232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4233_agree : tree4233 = literal4233 := by
  rw [tree4233_def]
  rfl
theorem node4233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4233 live4233 coloured4233 = result4233 := by
  rw [tree4233_def]
  try dsimp only [colour, result4233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4234_agree : tree4234 = literal4234 := by
  rw [tree4234_def, tree4232_agree, tree4233_agree]
  rfl
theorem node4234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4234 live4234 coloured4234 = result4234 := by
  rw [tree4234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4232_eq
  unfold live4232 coloured4232 at child
  try dsimp only [live4234, coloured4234]
  rw [child]
  dsimp only [result4232]
  have child := node4233_eq
  unfold live4233 coloured4233 at child
  try dsimp only [live4234, coloured4234]
  rw [child]
  dsimp only [result4233]
  try dsimp only [colour, result4234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4235_agree : tree4235 = literal4235 := by
  rw [tree4235_def]
  rfl
theorem node4235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4235 live4235 coloured4235 = result4235 := by
  rw [tree4235_def]
  try dsimp only [colour, result4235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4236_agree : tree4236 = literal4236 := by
  rw [tree4236_def, tree4234_agree, tree4235_agree]
  rfl
theorem node4236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4236 live4236 coloured4236 = result4236 := by
  rw [tree4236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4234_eq
  unfold live4234 coloured4234 at child
  try dsimp only [live4236, coloured4236]
  rw [child]
  dsimp only [result4234]
  have child := node4235_eq
  unfold live4235 coloured4235 at child
  try dsimp only [live4236, coloured4236]
  rw [child]
  dsimp only [result4235]
  try dsimp only [colour, result4236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4237_agree : tree4237 = literal4237 := by
  rw [tree4237_def]
  rfl
theorem node4237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4237 live4237 coloured4237 = result4237 := by
  rw [tree4237_def]
  try dsimp only [colour, result4237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4238_agree : tree4238 = literal4238 := by
  rw [tree4238_def, tree4236_agree, tree4237_agree]
  rfl
theorem node4238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4238 live4238 coloured4238 = result4238 := by
  rw [tree4238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4236_eq
  unfold live4236 coloured4236 at child
  try dsimp only [live4238, coloured4238]
  rw [child]
  dsimp only [result4236]
  have child := node4237_eq
  unfold live4237 coloured4237 at child
  try dsimp only [live4238, coloured4238]
  rw [child]
  dsimp only [result4237]
  try dsimp only [colour, result4238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4239_agree : tree4239 = literal4239 := by
  rw [tree4239_def]
  rfl
theorem node4239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4239 live4239 coloured4239 = result4239 := by
  rw [tree4239_def]
  try dsimp only [colour, result4239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4240_agree : tree4240 = literal4240 := by
  rw [tree4240_def, tree4238_agree, tree4239_agree]
  rfl
theorem node4240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4240 live4240 coloured4240 = result4240 := by
  rw [tree4240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4238_eq
  unfold live4238 coloured4238 at child
  try dsimp only [live4240, coloured4240]
  rw [child]
  dsimp only [result4238]
  have child := node4239_eq
  unfold live4239 coloured4239 at child
  try dsimp only [live4240, coloured4240]
  rw [child]
  dsimp only [result4239]
  try dsimp only [colour, result4240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4241_agree : tree4241 = literal4241 := by
  rw [tree4241_def]
  rfl
theorem node4241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4241 live4241 coloured4241 = result4241 := by
  rw [tree4241_def]
  try dsimp only [colour, result4241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4242_agree : tree4242 = literal4242 := by
  rw [tree4242_def, tree4240_agree, tree4241_agree]
  rfl
theorem node4242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4242 live4242 coloured4242 = result4242 := by
  rw [tree4242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4240_eq
  unfold live4240 coloured4240 at child
  try dsimp only [live4242, coloured4242]
  rw [child]
  dsimp only [result4240]
  have child := node4241_eq
  unfold live4241 coloured4241 at child
  try dsimp only [live4242, coloured4242]
  rw [child]
  dsimp only [result4241]
  try dsimp only [colour, result4242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4243_agree : tree4243 = literal4243 := by
  rw [tree4243_def]
  rfl
theorem node4243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4243 live4243 coloured4243 = result4243 := by
  rw [tree4243_def]
  try dsimp only [colour, result4243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4244_agree : tree4244 = literal4244 := by
  rw [tree4244_def, tree4242_agree, tree4243_agree]
  rfl
theorem node4244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4244 live4244 coloured4244 = result4244 := by
  rw [tree4244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4242_eq
  unfold live4242 coloured4242 at child
  try dsimp only [live4244, coloured4244]
  rw [child]
  dsimp only [result4242]
  have child := node4243_eq
  unfold live4243 coloured4243 at child
  try dsimp only [live4244, coloured4244]
  rw [child]
  dsimp only [result4243]
  try dsimp only [colour, result4244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4245_agree : tree4245 = literal4245 := by
  rw [tree4245_def]
  rfl
theorem node4245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4245 live4245 coloured4245 = result4245 := by
  rw [tree4245_def]
  try dsimp only [colour, result4245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4246_agree : tree4246 = literal4246 := by
  rw [tree4246_def, tree4244_agree, tree4245_agree]
  rfl
theorem node4246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4246 live4246 coloured4246 = result4246 := by
  rw [tree4246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4244_eq
  unfold live4244 coloured4244 at child
  try dsimp only [live4246, coloured4246]
  rw [child]
  dsimp only [result4244]
  have child := node4245_eq
  unfold live4245 coloured4245 at child
  try dsimp only [live4246, coloured4246]
  rw [child]
  dsimp only [result4245]
  try dsimp only [colour, result4246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4247_agree : tree4247 = literal4247 := by
  rw [tree4247_def]
  rfl
theorem node4247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4247 live4247 coloured4247 = result4247 := by
  rw [tree4247_def]
  try dsimp only [colour, result4247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4248_agree : tree4248 = literal4248 := by
  rw [tree4248_def, tree4246_agree, tree4247_agree]
  rfl
theorem node4248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4248 live4248 coloured4248 = result4248 := by
  rw [tree4248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4246_eq
  unfold live4246 coloured4246 at child
  try dsimp only [live4248, coloured4248]
  rw [child]
  dsimp only [result4246]
  have child := node4247_eq
  unfold live4247 coloured4247 at child
  try dsimp only [live4248, coloured4248]
  rw [child]
  dsimp only [result4247]
  try dsimp only [colour, result4248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4249_agree : tree4249 = literal4249 := by
  rw [tree4249_def]
  rfl
theorem node4249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4249 live4249 coloured4249 = result4249 := by
  rw [tree4249_def]
  try dsimp only [colour, result4249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4250_agree : tree4250 = literal4250 := by
  rw [tree4250_def, tree4248_agree, tree4249_agree]
  rfl
theorem node4250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4250 live4250 coloured4250 = result4250 := by
  rw [tree4250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4248_eq
  unfold live4248 coloured4248 at child
  try dsimp only [live4250, coloured4250]
  rw [child]
  dsimp only [result4248]
  have child := node4249_eq
  unfold live4249 coloured4249 at child
  try dsimp only [live4250, coloured4250]
  rw [child]
  dsimp only [result4249]
  try dsimp only [colour, result4250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4251_agree : tree4251 = literal4251 := by
  rw [tree4251_def]
  rfl
theorem node4251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4251 live4251 coloured4251 = result4251 := by
  rw [tree4251_def]
  try dsimp only [colour, result4251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4252_agree : tree4252 = literal4252 := by
  rw [tree4252_def, tree4250_agree, tree4251_agree]
  rfl
theorem node4252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4252 live4252 coloured4252 = result4252 := by
  rw [tree4252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4250_eq
  unfold live4250 coloured4250 at child
  try dsimp only [live4252, coloured4252]
  rw [child]
  dsimp only [result4250]
  have child := node4251_eq
  unfold live4251 coloured4251 at child
  try dsimp only [live4252, coloured4252]
  rw [child]
  dsimp only [result4251]
  try dsimp only [colour, result4252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4253_agree : tree4253 = literal4253 := by
  rw [tree4253_def]
  rfl
theorem node4253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4253 live4253 coloured4253 = result4253 := by
  rw [tree4253_def]
  try dsimp only [colour, result4253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4254_agree : tree4254 = literal4254 := by
  rw [tree4254_def, tree4252_agree, tree4253_agree]
  rfl
theorem node4254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4254 live4254 coloured4254 = result4254 := by
  rw [tree4254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4252_eq
  unfold live4252 coloured4252 at child
  try dsimp only [live4254, coloured4254]
  rw [child]
  dsimp only [result4252]
  have child := node4253_eq
  unfold live4253 coloured4253 at child
  try dsimp only [live4254, coloured4254]
  rw [child]
  dsimp only [result4253]
  try dsimp only [colour, result4254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4255_agree : tree4255 = literal4255 := by
  rw [tree4255_def]
  rfl
theorem node4255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4255 live4255 coloured4255 = result4255 := by
  rw [tree4255_def]
  try dsimp only [colour, result4255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4256_agree : tree4256 = literal4256 := by
  rw [tree4256_def, tree4254_agree, tree4255_agree]
  rfl
theorem node4256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4256 live4256 coloured4256 = result4256 := by
  rw [tree4256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4254_eq
  unfold live4254 coloured4254 at child
  try dsimp only [live4256, coloured4256]
  rw [child]
  dsimp only [result4254]
  have child := node4255_eq
  unfold live4255 coloured4255 at child
  try dsimp only [live4256, coloured4256]
  rw [child]
  dsimp only [result4255]
  try dsimp only [colour, result4256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4257_agree : tree4257 = literal4257 := by
  rw [tree4257_def]
  rfl
theorem node4257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4257 live4257 coloured4257 = result4257 := by
  rw [tree4257_def]
  try dsimp only [colour, result4257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4258_agree : tree4258 = literal4258 := by
  rw [tree4258_def, tree4256_agree, tree4257_agree]
  rfl
theorem node4258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4258 live4258 coloured4258 = result4258 := by
  rw [tree4258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4256_eq
  unfold live4256 coloured4256 at child
  try dsimp only [live4258, coloured4258]
  rw [child]
  dsimp only [result4256]
  have child := node4257_eq
  unfold live4257 coloured4257 at child
  try dsimp only [live4258, coloured4258]
  rw [child]
  dsimp only [result4257]
  try dsimp only [colour, result4258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4259_agree : tree4259 = literal4259 := by
  rw [tree4259_def]
  rfl
theorem node4259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4259 live4259 coloured4259 = result4259 := by
  rw [tree4259_def]
  try dsimp only [colour, result4259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4260_agree : tree4260 = literal4260 := by
  rw [tree4260_def, tree4258_agree, tree4259_agree]
  rfl
theorem node4260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4260 live4260 coloured4260 = result4260 := by
  rw [tree4260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4258_eq
  unfold live4258 coloured4258 at child
  try dsimp only [live4260, coloured4260]
  rw [child]
  dsimp only [result4258]
  have child := node4259_eq
  unfold live4259 coloured4259 at child
  try dsimp only [live4260, coloured4260]
  rw [child]
  dsimp only [result4259]
  try dsimp only [colour, result4260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4261_agree : tree4261 = literal4261 := by
  rw [tree4261_def]
  rfl
theorem node4261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4261 live4261 coloured4261 = result4261 := by
  rw [tree4261_def]
  try dsimp only [colour, result4261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4262_agree : tree4262 = literal4262 := by
  rw [tree4262_def, tree4260_agree, tree4261_agree]
  rfl
theorem node4262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4262 live4262 coloured4262 = result4262 := by
  rw [tree4262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4260_eq
  unfold live4260 coloured4260 at child
  try dsimp only [live4262, coloured4262]
  rw [child]
  dsimp only [result4260]
  have child := node4261_eq
  unfold live4261 coloured4261 at child
  try dsimp only [live4262, coloured4262]
  rw [child]
  dsimp only [result4261]
  try dsimp only [colour, result4262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4263_agree : tree4263 = literal4263 := by
  rw [tree4263_def]
  rfl
theorem node4263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4263 live4263 coloured4263 = result4263 := by
  rw [tree4263_def]
  try dsimp only [colour, result4263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4264_agree : tree4264 = literal4264 := by
  rw [tree4264_def, tree4262_agree, tree4263_agree]
  rfl
theorem node4264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4264 live4264 coloured4264 = result4264 := by
  rw [tree4264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4262_eq
  unfold live4262 coloured4262 at child
  try dsimp only [live4264, coloured4264]
  rw [child]
  dsimp only [result4262]
  have child := node4263_eq
  unfold live4263 coloured4263 at child
  try dsimp only [live4264, coloured4264]
  rw [child]
  dsimp only [result4263]
  try dsimp only [colour, result4264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4265_agree : tree4265 = literal4265 := by
  rw [tree4265_def]
  rfl
theorem node4265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4265 live4265 coloured4265 = result4265 := by
  rw [tree4265_def]
  try dsimp only [colour, result4265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4266_agree : tree4266 = literal4266 := by
  rw [tree4266_def, tree4264_agree, tree4265_agree]
  rfl
theorem node4266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4266 live4266 coloured4266 = result4266 := by
  rw [tree4266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4264_eq
  unfold live4264 coloured4264 at child
  try dsimp only [live4266, coloured4266]
  rw [child]
  dsimp only [result4264]
  have child := node4265_eq
  unfold live4265 coloured4265 at child
  try dsimp only [live4266, coloured4266]
  rw [child]
  dsimp only [result4265]
  try dsimp only [colour, result4266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4267_agree : tree4267 = literal4267 := by
  rw [tree4267_def]
  rfl
theorem node4267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4267 live4267 coloured4267 = result4267 := by
  rw [tree4267_def]
  try dsimp only [colour, result4267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4268_agree : tree4268 = literal4268 := by
  rw [tree4268_def, tree4266_agree, tree4267_agree]
  rfl
theorem node4268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4268 live4268 coloured4268 = result4268 := by
  rw [tree4268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4266_eq
  unfold live4266 coloured4266 at child
  try dsimp only [live4268, coloured4268]
  rw [child]
  dsimp only [result4266]
  have child := node4267_eq
  unfold live4267 coloured4267 at child
  try dsimp only [live4268, coloured4268]
  rw [child]
  dsimp only [result4267]
  try dsimp only [colour, result4268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4269_agree : tree4269 = literal4269 := by
  rw [tree4269_def]
  rfl
theorem node4269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4269 live4269 coloured4269 = result4269 := by
  rw [tree4269_def]
  try dsimp only [colour, result4269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4270_agree : tree4270 = literal4270 := by
  rw [tree4270_def, tree4268_agree, tree4269_agree]
  rfl
theorem node4270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4270 live4270 coloured4270 = result4270 := by
  rw [tree4270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4268_eq
  unfold live4268 coloured4268 at child
  try dsimp only [live4270, coloured4270]
  rw [child]
  dsimp only [result4268]
  have child := node4269_eq
  unfold live4269 coloured4269 at child
  try dsimp only [live4270, coloured4270]
  rw [child]
  dsimp only [result4269]
  try dsimp only [colour, result4270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4271_agree : tree4271 = literal4271 := by
  rw [tree4271_def]
  rfl
theorem node4271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4271 live4271 coloured4271 = result4271 := by
  rw [tree4271_def]
  try dsimp only [colour, result4271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4272_agree : tree4272 = literal4272 := by
  rw [tree4272_def, tree4270_agree, tree4271_agree]
  rfl
theorem node4272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4272 live4272 coloured4272 = result4272 := by
  rw [tree4272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4270_eq
  unfold live4270 coloured4270 at child
  try dsimp only [live4272, coloured4272]
  rw [child]
  dsimp only [result4270]
  have child := node4271_eq
  unfold live4271 coloured4271 at child
  try dsimp only [live4272, coloured4272]
  rw [child]
  dsimp only [result4271]
  try dsimp only [colour, result4272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4273_agree : tree4273 = literal4273 := by
  rw [tree4273_def]
  rfl
theorem node4273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4273 live4273 coloured4273 = result4273 := by
  rw [tree4273_def]
  try dsimp only [colour, result4273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4274_agree : tree4274 = literal4274 := by
  rw [tree4274_def, tree4272_agree, tree4273_agree]
  rfl
theorem node4274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4274 live4274 coloured4274 = result4274 := by
  rw [tree4274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4272_eq
  unfold live4272 coloured4272 at child
  try dsimp only [live4274, coloured4274]
  rw [child]
  dsimp only [result4272]
  have child := node4273_eq
  unfold live4273 coloured4273 at child
  try dsimp only [live4274, coloured4274]
  rw [child]
  dsimp only [result4273]
  try dsimp only [colour, result4274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4275_agree : tree4275 = literal4275 := by
  rw [tree4275_def]
  rfl
theorem node4275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4275 live4275 coloured4275 = result4275 := by
  rw [tree4275_def]
  try dsimp only [colour, result4275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4276_agree : tree4276 = literal4276 := by
  rw [tree4276_def, tree4274_agree, tree4275_agree]
  rfl
theorem node4276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4276 live4276 coloured4276 = result4276 := by
  rw [tree4276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4274_eq
  unfold live4274 coloured4274 at child
  try dsimp only [live4276, coloured4276]
  rw [child]
  dsimp only [result4274]
  have child := node4275_eq
  unfold live4275 coloured4275 at child
  try dsimp only [live4276, coloured4276]
  rw [child]
  dsimp only [result4275]
  try dsimp only [colour, result4276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4277_agree : tree4277 = literal4277 := by
  rw [tree4277_def]
  rfl
theorem node4277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4277 live4277 coloured4277 = result4277 := by
  rw [tree4277_def]
  try dsimp only [colour, result4277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4278_agree : tree4278 = literal4278 := by
  rw [tree4278_def, tree4276_agree, tree4277_agree]
  rfl
theorem node4278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4278 live4278 coloured4278 = result4278 := by
  rw [tree4278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4276_eq
  unfold live4276 coloured4276 at child
  try dsimp only [live4278, coloured4278]
  rw [child]
  dsimp only [result4276]
  have child := node4277_eq
  unfold live4277 coloured4277 at child
  try dsimp only [live4278, coloured4278]
  rw [child]
  dsimp only [result4277]
  try dsimp only [colour, result4278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4279_agree : tree4279 = literal4279 := by
  rw [tree4279_def]
  rfl
theorem node4279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4279 live4279 coloured4279 = result4279 := by
  rw [tree4279_def]
  try dsimp only [colour, result4279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4280_agree : tree4280 = literal4280 := by
  rw [tree4280_def, tree4278_agree, tree4279_agree]
  rfl
theorem node4280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4280 live4280 coloured4280 = result4280 := by
  rw [tree4280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4278_eq
  unfold live4278 coloured4278 at child
  try dsimp only [live4280, coloured4280]
  rw [child]
  dsimp only [result4278]
  have child := node4279_eq
  unfold live4279 coloured4279 at child
  try dsimp only [live4280, coloured4280]
  rw [child]
  dsimp only [result4279]
  try dsimp only [colour, result4280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4281_agree : tree4281 = literal4281 := by
  rw [tree4281_def]
  rfl
theorem node4281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4281 live4281 coloured4281 = result4281 := by
  rw [tree4281_def]
  try dsimp only [colour, result4281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4282_agree : tree4282 = literal4282 := by
  rw [tree4282_def, tree4280_agree, tree4281_agree]
  rfl
theorem node4282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4282 live4282 coloured4282 = result4282 := by
  rw [tree4282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4280_eq
  unfold live4280 coloured4280 at child
  try dsimp only [live4282, coloured4282]
  rw [child]
  dsimp only [result4280]
  have child := node4281_eq
  unfold live4281 coloured4281 at child
  try dsimp only [live4282, coloured4282]
  rw [child]
  dsimp only [result4281]
  try dsimp only [colour, result4282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4283_agree : tree4283 = literal4283 := by
  rw [tree4283_def]
  rfl
theorem node4283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4283 live4283 coloured4283 = result4283 := by
  rw [tree4283_def]
  try dsimp only [colour, result4283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4284_agree : tree4284 = literal4284 := by
  rw [tree4284_def, tree4282_agree, tree4283_agree]
  rfl
theorem node4284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4284 live4284 coloured4284 = result4284 := by
  rw [tree4284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4282_eq
  unfold live4282 coloured4282 at child
  try dsimp only [live4284, coloured4284]
  rw [child]
  dsimp only [result4282]
  have child := node4283_eq
  unfold live4283 coloured4283 at child
  try dsimp only [live4284, coloured4284]
  rw [child]
  dsimp only [result4283]
  try dsimp only [colour, result4284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4285_agree : tree4285 = literal4285 := by
  rw [tree4285_def]
  rfl
theorem node4285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4285 live4285 coloured4285 = result4285 := by
  rw [tree4285_def]
  try dsimp only [colour, result4285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4286_agree : tree4286 = literal4286 := by
  rw [tree4286_def, tree4284_agree, tree4285_agree]
  rfl
theorem node4286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4286 live4286 coloured4286 = result4286 := by
  rw [tree4286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4284_eq
  unfold live4284 coloured4284 at child
  try dsimp only [live4286, coloured4286]
  rw [child]
  dsimp only [result4284]
  have child := node4285_eq
  unfold live4285 coloured4285 at child
  try dsimp only [live4286, coloured4286]
  rw [child]
  dsimp only [result4285]
  try dsimp only [colour, result4286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4287_agree : tree4287 = literal4287 := by
  rw [tree4287_def]
  rfl
theorem node4287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4287 live4287 coloured4287 = result4287 := by
  rw [tree4287_def]
  try dsimp only [colour, result4287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4288_agree : tree4288 = literal4288 := by
  rw [tree4288_def, tree4286_agree, tree4287_agree]
  rfl
theorem node4288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4288 live4288 coloured4288 = result4288 := by
  rw [tree4288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4286_eq
  unfold live4286 coloured4286 at child
  try dsimp only [live4288, coloured4288]
  rw [child]
  dsimp only [result4286]
  have child := node4287_eq
  unfold live4287 coloured4287 at child
  try dsimp only [live4288, coloured4288]
  rw [child]
  dsimp only [result4287]
  try dsimp only [colour, result4288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4289_agree : tree4289 = literal4289 := by
  rw [tree4289_def]
  rfl
theorem node4289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4289 live4289 coloured4289 = result4289 := by
  rw [tree4289_def]
  try dsimp only [colour, result4289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4290_agree : tree4290 = literal4290 := by
  rw [tree4290_def, tree4288_agree, tree4289_agree]
  rfl
theorem node4290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4290 live4290 coloured4290 = result4290 := by
  rw [tree4290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4288_eq
  unfold live4288 coloured4288 at child
  try dsimp only [live4290, coloured4290]
  rw [child]
  dsimp only [result4288]
  have child := node4289_eq
  unfold live4289 coloured4289 at child
  try dsimp only [live4290, coloured4290]
  rw [child]
  dsimp only [result4289]
  try dsimp only [colour, result4290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4291_agree : tree4291 = literal4291 := by
  rw [tree4291_def]
  rfl
theorem node4291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4291 live4291 coloured4291 = result4291 := by
  rw [tree4291_def]
  try dsimp only [colour, result4291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4292_agree : tree4292 = literal4292 := by
  rw [tree4292_def, tree4290_agree, tree4291_agree]
  rfl
theorem node4292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4292 live4292 coloured4292 = result4292 := by
  rw [tree4292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4290_eq
  unfold live4290 coloured4290 at child
  try dsimp only [live4292, coloured4292]
  rw [child]
  dsimp only [result4290]
  have child := node4291_eq
  unfold live4291 coloured4291 at child
  try dsimp only [live4292, coloured4292]
  rw [child]
  dsimp only [result4291]
  try dsimp only [colour, result4292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4293_agree : tree4293 = literal4293 := by
  rw [tree4293_def]
  rfl
theorem node4293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4293 live4293 coloured4293 = result4293 := by
  rw [tree4293_def]
  try dsimp only [colour, result4293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4294_agree : tree4294 = literal4294 := by
  rw [tree4294_def, tree4292_agree, tree4293_agree]
  rfl
theorem node4294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4294 live4294 coloured4294 = result4294 := by
  rw [tree4294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4292_eq
  unfold live4292 coloured4292 at child
  try dsimp only [live4294, coloured4294]
  rw [child]
  dsimp only [result4292]
  have child := node4293_eq
  unfold live4293 coloured4293 at child
  try dsimp only [live4294, coloured4294]
  rw [child]
  dsimp only [result4293]
  try dsimp only [colour, result4294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4295_agree : tree4295 = literal4295 := by
  rw [tree4295_def]
  rfl
theorem node4295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4295 live4295 coloured4295 = result4295 := by
  rw [tree4295_def]
  try dsimp only [colour, result4295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4296_agree : tree4296 = literal4296 := by
  rw [tree4296_def, tree4294_agree, tree4295_agree]
  rfl
theorem node4296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4296 live4296 coloured4296 = result4296 := by
  rw [tree4296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4294_eq
  unfold live4294 coloured4294 at child
  try dsimp only [live4296, coloured4296]
  rw [child]
  dsimp only [result4294]
  have child := node4295_eq
  unfold live4295 coloured4295 at child
  try dsimp only [live4296, coloured4296]
  rw [child]
  dsimp only [result4295]
  try dsimp only [colour, result4296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4297_agree : tree4297 = literal4297 := by
  rw [tree4297_def]
  rfl
theorem node4297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4297 live4297 coloured4297 = result4297 := by
  rw [tree4297_def]
  try dsimp only [colour, result4297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4298_agree : tree4298 = literal4298 := by
  rw [tree4298_def, tree4296_agree, tree4297_agree]
  rfl
theorem node4298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4298 live4298 coloured4298 = result4298 := by
  rw [tree4298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4296_eq
  unfold live4296 coloured4296 at child
  try dsimp only [live4298, coloured4298]
  rw [child]
  dsimp only [result4296]
  have child := node4297_eq
  unfold live4297 coloured4297 at child
  try dsimp only [live4298, coloured4298]
  rw [child]
  dsimp only [result4297]
  try dsimp only [colour, result4298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4299_agree : tree4299 = literal4299 := by
  rw [tree4299_def]
  rfl
theorem node4299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4299 live4299 coloured4299 = result4299 := by
  rw [tree4299_def]
  try dsimp only [colour, result4299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4300_agree : tree4300 = literal4300 := by
  rw [tree4300_def, tree4298_agree, tree4299_agree]
  rfl
theorem node4300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4300 live4300 coloured4300 = result4300 := by
  rw [tree4300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4298_eq
  unfold live4298 coloured4298 at child
  try dsimp only [live4300, coloured4300]
  rw [child]
  dsimp only [result4298]
  have child := node4299_eq
  unfold live4299 coloured4299 at child
  try dsimp only [live4300, coloured4300]
  rw [child]
  dsimp only [result4299]
  try dsimp only [colour, result4300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4301_agree : tree4301 = literal4301 := by
  rw [tree4301_def]
  rfl
theorem node4301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4301 live4301 coloured4301 = result4301 := by
  rw [tree4301_def]
  try dsimp only [colour, result4301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4302_agree : tree4302 = literal4302 := by
  rw [tree4302_def, tree4300_agree, tree4301_agree]
  rfl
theorem node4302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4302 live4302 coloured4302 = result4302 := by
  rw [tree4302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4300_eq
  unfold live4300 coloured4300 at child
  try dsimp only [live4302, coloured4302]
  rw [child]
  dsimp only [result4300]
  have child := node4301_eq
  unfold live4301 coloured4301 at child
  try dsimp only [live4302, coloured4302]
  rw [child]
  dsimp only [result4301]
  try dsimp only [colour, result4302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4303_agree : tree4303 = literal4303 := by
  rw [tree4303_def]
  rfl
theorem node4303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4303 live4303 coloured4303 = result4303 := by
  rw [tree4303_def]
  try dsimp only [colour, result4303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4304_agree : tree4304 = literal4304 := by
  rw [tree4304_def, tree4302_agree, tree4303_agree]
  rfl
theorem node4304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4304 live4304 coloured4304 = result4304 := by
  rw [tree4304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4302_eq
  unfold live4302 coloured4302 at child
  try dsimp only [live4304, coloured4304]
  rw [child]
  dsimp only [result4302]
  have child := node4303_eq
  unfold live4303 coloured4303 at child
  try dsimp only [live4304, coloured4304]
  rw [child]
  dsimp only [result4303]
  try dsimp only [colour, result4304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4305_agree : tree4305 = literal4305 := by
  rw [tree4305_def]
  rfl
theorem node4305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4305 live4305 coloured4305 = result4305 := by
  rw [tree4305_def]
  try dsimp only [colour, result4305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4306_agree : tree4306 = literal4306 := by
  rw [tree4306_def, tree4304_agree, tree4305_agree]
  rfl
theorem node4306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4306 live4306 coloured4306 = result4306 := by
  rw [tree4306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4304_eq
  unfold live4304 coloured4304 at child
  try dsimp only [live4306, coloured4306]
  rw [child]
  dsimp only [result4304]
  have child := node4305_eq
  unfold live4305 coloured4305 at child
  try dsimp only [live4306, coloured4306]
  rw [child]
  dsimp only [result4305]
  try dsimp only [colour, result4306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4307_agree : tree4307 = literal4307 := by
  rw [tree4307_def]
  rfl
theorem node4307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4307 live4307 coloured4307 = result4307 := by
  rw [tree4307_def]
  try dsimp only [colour, result4307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4308_agree : tree4308 = literal4308 := by
  rw [tree4308_def, tree4306_agree, tree4307_agree]
  rfl
theorem node4308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4308 live4308 coloured4308 = result4308 := by
  rw [tree4308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4306_eq
  unfold live4306 coloured4306 at child
  try dsimp only [live4308, coloured4308]
  rw [child]
  dsimp only [result4306]
  have child := node4307_eq
  unfold live4307 coloured4307 at child
  try dsimp only [live4308, coloured4308]
  rw [child]
  dsimp only [result4307]
  try dsimp only [colour, result4308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4309_agree : tree4309 = literal4309 := by
  rw [tree4309_def]
  rfl
theorem node4309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4309 live4309 coloured4309 = result4309 := by
  rw [tree4309_def]
  try dsimp only [colour, result4309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4310_agree : tree4310 = literal4310 := by
  rw [tree4310_def, tree4308_agree, tree4309_agree]
  rfl
theorem node4310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4310 live4310 coloured4310 = result4310 := by
  rw [tree4310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4308_eq
  unfold live4308 coloured4308 at child
  try dsimp only [live4310, coloured4310]
  rw [child]
  dsimp only [result4308]
  have child := node4309_eq
  unfold live4309 coloured4309 at child
  try dsimp only [live4310, coloured4310]
  rw [child]
  dsimp only [result4309]
  try dsimp only [colour, result4310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4311_agree : tree4311 = literal4311 := by
  rw [tree4311_def]
  rfl
theorem node4311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4311 live4311 coloured4311 = result4311 := by
  rw [tree4311_def]
  try dsimp only [colour, result4311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4312_agree : tree4312 = literal4312 := by
  rw [tree4312_def, tree4310_agree, tree4311_agree]
  rfl
theorem node4312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4312 live4312 coloured4312 = result4312 := by
  rw [tree4312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4310_eq
  unfold live4310 coloured4310 at child
  try dsimp only [live4312, coloured4312]
  rw [child]
  dsimp only [result4310]
  have child := node4311_eq
  unfold live4311 coloured4311 at child
  try dsimp only [live4312, coloured4312]
  rw [child]
  dsimp only [result4311]
  try dsimp only [colour, result4312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4313_agree : tree4313 = literal4313 := by
  rw [tree4313_def]
  rfl
theorem node4313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4313 live4313 coloured4313 = result4313 := by
  rw [tree4313_def]
  try dsimp only [colour, result4313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4314_agree : tree4314 = literal4314 := by
  rw [tree4314_def, tree4312_agree, tree4313_agree]
  rfl
theorem node4314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4314 live4314 coloured4314 = result4314 := by
  rw [tree4314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4312_eq
  unfold live4312 coloured4312 at child
  try dsimp only [live4314, coloured4314]
  rw [child]
  dsimp only [result4312]
  have child := node4313_eq
  unfold live4313 coloured4313 at child
  try dsimp only [live4314, coloured4314]
  rw [child]
  dsimp only [result4313]
  try dsimp only [colour, result4314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4315_agree : tree4315 = literal4315 := by
  rw [tree4315_def]
  rfl
theorem node4315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4315 live4315 coloured4315 = result4315 := by
  rw [tree4315_def]
  try dsimp only [colour, result4315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4316_agree : tree4316 = literal4316 := by
  rw [tree4316_def, tree4314_agree, tree4315_agree]
  rfl
theorem node4316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4316 live4316 coloured4316 = result4316 := by
  rw [tree4316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4314_eq
  unfold live4314 coloured4314 at child
  try dsimp only [live4316, coloured4316]
  rw [child]
  dsimp only [result4314]
  have child := node4315_eq
  unfold live4315 coloured4315 at child
  try dsimp only [live4316, coloured4316]
  rw [child]
  dsimp only [result4315]
  try dsimp only [colour, result4316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4317_agree : tree4317 = literal4317 := by
  rw [tree4317_def]
  rfl
theorem node4317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4317 live4317 coloured4317 = result4317 := by
  rw [tree4317_def]
  try dsimp only [colour, result4317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4318_agree : tree4318 = literal4318 := by
  rw [tree4318_def, tree4316_agree, tree4317_agree]
  rfl
theorem node4318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4318 live4318 coloured4318 = result4318 := by
  rw [tree4318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4316_eq
  unfold live4316 coloured4316 at child
  try dsimp only [live4318, coloured4318]
  rw [child]
  dsimp only [result4316]
  have child := node4317_eq
  unfold live4317 coloured4317 at child
  try dsimp only [live4318, coloured4318]
  rw [child]
  dsimp only [result4317]
  try dsimp only [colour, result4318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4319_agree : tree4319 = literal4319 := by
  rw [tree4319_def]
  rfl
theorem node4319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4319 live4319 coloured4319 = result4319 := by
  rw [tree4319_def]
  try dsimp only [colour, result4319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
