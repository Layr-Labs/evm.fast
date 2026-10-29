import InitECandidate.Proofs.ClashStages713.Proof116
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11232_agree : tree11232 = literal11232 := by
  rw [tree11232_def, tree11230_agree, tree11231_agree]
  rfl
theorem node11232_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11232 live11232 coloured11232 = result11232 := by
  rw [tree11232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11230_eq
  unfold live11230 coloured11230 at child
  try dsimp only [live11232, coloured11232]
  rw [child]
  dsimp only [result11230]
  have child := node11231_eq
  unfold live11231 coloured11231 at child
  try dsimp only [live11232, coloured11232]
  rw [child]
  dsimp only [result11231]
  try dsimp only [colour, result11232]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11233_agree : tree11233 = literal11233 := by
  rw [tree11233_def]
  rfl
theorem node11233_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11233 live11233 coloured11233 = result11233 := by
  rw [tree11233_def]
  try dsimp only [colour, result11233]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11234_agree : tree11234 = literal11234 := by
  rw [tree11234_def, tree11232_agree, tree11233_agree]
  rfl
theorem node11234_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11234 live11234 coloured11234 = result11234 := by
  rw [tree11234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11232_eq
  unfold live11232 coloured11232 at child
  try dsimp only [live11234, coloured11234]
  rw [child]
  dsimp only [result11232]
  have child := node11233_eq
  unfold live11233 coloured11233 at child
  try dsimp only [live11234, coloured11234]
  rw [child]
  dsimp only [result11233]
  try dsimp only [colour, result11234]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11235_agree : tree11235 = literal11235 := by
  rw [tree11235_def]
  rfl
theorem node11235_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11235 live11235 coloured11235 = result11235 := by
  rw [tree11235_def]
  try dsimp only [colour, result11235]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11236_agree : tree11236 = literal11236 := by
  rw [tree11236_def, tree11234_agree, tree11235_agree]
  rfl
theorem node11236_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11236 live11236 coloured11236 = result11236 := by
  rw [tree11236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11234_eq
  unfold live11234 coloured11234 at child
  try dsimp only [live11236, coloured11236]
  rw [child]
  dsimp only [result11234]
  have child := node11235_eq
  unfold live11235 coloured11235 at child
  try dsimp only [live11236, coloured11236]
  rw [child]
  dsimp only [result11235]
  try dsimp only [colour, result11236]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11237_agree : tree11237 = literal11237 := by
  rw [tree11237_def]
  rfl
theorem node11237_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11237 live11237 coloured11237 = result11237 := by
  rw [tree11237_def]
  try dsimp only [colour, result11237]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11238_agree : tree11238 = literal11238 := by
  rw [tree11238_def, tree11236_agree, tree11237_agree]
  rfl
theorem node11238_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11238 live11238 coloured11238 = result11238 := by
  rw [tree11238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11236_eq
  unfold live11236 coloured11236 at child
  try dsimp only [live11238, coloured11238]
  rw [child]
  dsimp only [result11236]
  have child := node11237_eq
  unfold live11237 coloured11237 at child
  try dsimp only [live11238, coloured11238]
  rw [child]
  dsimp only [result11237]
  try dsimp only [colour, result11238]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11239_agree : tree11239 = literal11239 := by
  rw [tree11239_def]
  rfl
theorem node11239_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11239 live11239 coloured11239 = result11239 := by
  rw [tree11239_def]
  try dsimp only [colour, result11239]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11240_agree : tree11240 = literal11240 := by
  rw [tree11240_def, tree11238_agree, tree11239_agree]
  rfl
theorem node11240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11240 live11240 coloured11240 = result11240 := by
  rw [tree11240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11238_eq
  unfold live11238 coloured11238 at child
  try dsimp only [live11240, coloured11240]
  rw [child]
  dsimp only [result11238]
  have child := node11239_eq
  unfold live11239 coloured11239 at child
  try dsimp only [live11240, coloured11240]
  rw [child]
  dsimp only [result11239]
  try dsimp only [colour, result11240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11241_agree : tree11241 = literal11241 := by
  rw [tree11241_def]
  rfl
theorem node11241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11241 live11241 coloured11241 = result11241 := by
  rw [tree11241_def]
  try dsimp only [colour, result11241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11242_agree : tree11242 = literal11242 := by
  rw [tree11242_def, tree11240_agree, tree11241_agree]
  rfl
theorem node11242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11242 live11242 coloured11242 = result11242 := by
  rw [tree11242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11240_eq
  unfold live11240 coloured11240 at child
  try dsimp only [live11242, coloured11242]
  rw [child]
  dsimp only [result11240]
  have child := node11241_eq
  unfold live11241 coloured11241 at child
  try dsimp only [live11242, coloured11242]
  rw [child]
  dsimp only [result11241]
  try dsimp only [colour, result11242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11243_agree : tree11243 = literal11243 := by
  rw [tree11243_def]
  rfl
theorem node11243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11243 live11243 coloured11243 = result11243 := by
  rw [tree11243_def]
  try dsimp only [colour, result11243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11244_agree : tree11244 = literal11244 := by
  rw [tree11244_def, tree11242_agree, tree11243_agree]
  rfl
theorem node11244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11244 live11244 coloured11244 = result11244 := by
  rw [tree11244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11242_eq
  unfold live11242 coloured11242 at child
  try dsimp only [live11244, coloured11244]
  rw [child]
  dsimp only [result11242]
  have child := node11243_eq
  unfold live11243 coloured11243 at child
  try dsimp only [live11244, coloured11244]
  rw [child]
  dsimp only [result11243]
  try dsimp only [colour, result11244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11245_agree : tree11245 = literal11245 := by
  rw [tree11245_def]
  rfl
theorem node11245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11245 live11245 coloured11245 = result11245 := by
  rw [tree11245_def]
  try dsimp only [colour, result11245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11246_agree : tree11246 = literal11246 := by
  rw [tree11246_def, tree11244_agree, tree11245_agree]
  rfl
theorem node11246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11246 live11246 coloured11246 = result11246 := by
  rw [tree11246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11244_eq
  unfold live11244 coloured11244 at child
  try dsimp only [live11246, coloured11246]
  rw [child]
  dsimp only [result11244]
  have child := node11245_eq
  unfold live11245 coloured11245 at child
  try dsimp only [live11246, coloured11246]
  rw [child]
  dsimp only [result11245]
  try dsimp only [colour, result11246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11247_agree : tree11247 = literal11247 := by
  rw [tree11247_def]
  rfl
theorem node11247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11247 live11247 coloured11247 = result11247 := by
  rw [tree11247_def]
  try dsimp only [colour, result11247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11248_agree : tree11248 = literal11248 := by
  rw [tree11248_def, tree11246_agree, tree11247_agree]
  rfl
theorem node11248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11248 live11248 coloured11248 = result11248 := by
  rw [tree11248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11246_eq
  unfold live11246 coloured11246 at child
  try dsimp only [live11248, coloured11248]
  rw [child]
  dsimp only [result11246]
  have child := node11247_eq
  unfold live11247 coloured11247 at child
  try dsimp only [live11248, coloured11248]
  rw [child]
  dsimp only [result11247]
  try dsimp only [colour, result11248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11249_agree : tree11249 = literal11249 := by
  rw [tree11249_def]
  rfl
theorem node11249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11249 live11249 coloured11249 = result11249 := by
  rw [tree11249_def]
  try dsimp only [colour, result11249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11250_agree : tree11250 = literal11250 := by
  rw [tree11250_def, tree11248_agree, tree11249_agree]
  rfl
theorem node11250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11250 live11250 coloured11250 = result11250 := by
  rw [tree11250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11248_eq
  unfold live11248 coloured11248 at child
  try dsimp only [live11250, coloured11250]
  rw [child]
  dsimp only [result11248]
  have child := node11249_eq
  unfold live11249 coloured11249 at child
  try dsimp only [live11250, coloured11250]
  rw [child]
  dsimp only [result11249]
  try dsimp only [colour, result11250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11251_agree : tree11251 = literal11251 := by
  rw [tree11251_def]
  rfl
theorem node11251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11251 live11251 coloured11251 = result11251 := by
  rw [tree11251_def]
  try dsimp only [colour, result11251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11252_agree : tree11252 = literal11252 := by
  rw [tree11252_def, tree11250_agree, tree11251_agree]
  rfl
theorem node11252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11252 live11252 coloured11252 = result11252 := by
  rw [tree11252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11250_eq
  unfold live11250 coloured11250 at child
  try dsimp only [live11252, coloured11252]
  rw [child]
  dsimp only [result11250]
  have child := node11251_eq
  unfold live11251 coloured11251 at child
  try dsimp only [live11252, coloured11252]
  rw [child]
  dsimp only [result11251]
  try dsimp only [colour, result11252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11253_agree : tree11253 = literal11253 := by
  rw [tree11253_def]
  rfl
theorem node11253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11253 live11253 coloured11253 = result11253 := by
  rw [tree11253_def]
  try dsimp only [colour, result11253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11254_agree : tree11254 = literal11254 := by
  rw [tree11254_def, tree11252_agree, tree11253_agree]
  rfl
theorem node11254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11254 live11254 coloured11254 = result11254 := by
  rw [tree11254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11252_eq
  unfold live11252 coloured11252 at child
  try dsimp only [live11254, coloured11254]
  rw [child]
  dsimp only [result11252]
  have child := node11253_eq
  unfold live11253 coloured11253 at child
  try dsimp only [live11254, coloured11254]
  rw [child]
  dsimp only [result11253]
  try dsimp only [colour, result11254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11255_agree : tree11255 = literal11255 := by
  rw [tree11255_def]
  rfl
theorem node11255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11255 live11255 coloured11255 = result11255 := by
  rw [tree11255_def]
  try dsimp only [colour, result11255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11256_agree : tree11256 = literal11256 := by
  rw [tree11256_def, tree11254_agree, tree11255_agree]
  rfl
theorem node11256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11256 live11256 coloured11256 = result11256 := by
  rw [tree11256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11254_eq
  unfold live11254 coloured11254 at child
  try dsimp only [live11256, coloured11256]
  rw [child]
  dsimp only [result11254]
  have child := node11255_eq
  unfold live11255 coloured11255 at child
  try dsimp only [live11256, coloured11256]
  rw [child]
  dsimp only [result11255]
  try dsimp only [colour, result11256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11257_agree : tree11257 = literal11257 := by
  rw [tree11257_def]
  rfl
theorem node11257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11257 live11257 coloured11257 = result11257 := by
  rw [tree11257_def]
  try dsimp only [colour, result11257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11258_agree : tree11258 = literal11258 := by
  rw [tree11258_def, tree11256_agree, tree11257_agree]
  rfl
theorem node11258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11258 live11258 coloured11258 = result11258 := by
  rw [tree11258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11256_eq
  unfold live11256 coloured11256 at child
  try dsimp only [live11258, coloured11258]
  rw [child]
  dsimp only [result11256]
  have child := node11257_eq
  unfold live11257 coloured11257 at child
  try dsimp only [live11258, coloured11258]
  rw [child]
  dsimp only [result11257]
  try dsimp only [colour, result11258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11259_agree : tree11259 = literal11259 := by
  rw [tree11259_def]
  rfl
theorem node11259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11259 live11259 coloured11259 = result11259 := by
  rw [tree11259_def]
  try dsimp only [colour, result11259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11260_agree : tree11260 = literal11260 := by
  rw [tree11260_def, tree11258_agree, tree11259_agree]
  rfl
theorem node11260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11260 live11260 coloured11260 = result11260 := by
  rw [tree11260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11258_eq
  unfold live11258 coloured11258 at child
  try dsimp only [live11260, coloured11260]
  rw [child]
  dsimp only [result11258]
  have child := node11259_eq
  unfold live11259 coloured11259 at child
  try dsimp only [live11260, coloured11260]
  rw [child]
  dsimp only [result11259]
  try dsimp only [colour, result11260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11261_agree : tree11261 = literal11261 := by
  rw [tree11261_def]
  rfl
theorem node11261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11261 live11261 coloured11261 = result11261 := by
  rw [tree11261_def]
  try dsimp only [colour, result11261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11262_agree : tree11262 = literal11262 := by
  rw [tree11262_def, tree11260_agree, tree11261_agree]
  rfl
theorem node11262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11262 live11262 coloured11262 = result11262 := by
  rw [tree11262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11260_eq
  unfold live11260 coloured11260 at child
  try dsimp only [live11262, coloured11262]
  rw [child]
  dsimp only [result11260]
  have child := node11261_eq
  unfold live11261 coloured11261 at child
  try dsimp only [live11262, coloured11262]
  rw [child]
  dsimp only [result11261]
  try dsimp only [colour, result11262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11263_agree : tree11263 = literal11263 := by
  rw [tree11263_def]
  rfl
theorem node11263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11263 live11263 coloured11263 = result11263 := by
  rw [tree11263_def]
  try dsimp only [colour, result11263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11264_agree : tree11264 = literal11264 := by
  rw [tree11264_def, tree11262_agree, tree11263_agree]
  rfl
theorem node11264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11264 live11264 coloured11264 = result11264 := by
  rw [tree11264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11262_eq
  unfold live11262 coloured11262 at child
  try dsimp only [live11264, coloured11264]
  rw [child]
  dsimp only [result11262]
  have child := node11263_eq
  unfold live11263 coloured11263 at child
  try dsimp only [live11264, coloured11264]
  rw [child]
  dsimp only [result11263]
  try dsimp only [colour, result11264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11265_agree : tree11265 = literal11265 := by
  rw [tree11265_def]
  rfl
theorem node11265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11265 live11265 coloured11265 = result11265 := by
  rw [tree11265_def]
  try dsimp only [colour, result11265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11266_agree : tree11266 = literal11266 := by
  rw [tree11266_def, tree11264_agree, tree11265_agree]
  rfl
theorem node11266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11266 live11266 coloured11266 = result11266 := by
  rw [tree11266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11264_eq
  unfold live11264 coloured11264 at child
  try dsimp only [live11266, coloured11266]
  rw [child]
  dsimp only [result11264]
  have child := node11265_eq
  unfold live11265 coloured11265 at child
  try dsimp only [live11266, coloured11266]
  rw [child]
  dsimp only [result11265]
  try dsimp only [colour, result11266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11267_agree : tree11267 = literal11267 := by
  rw [tree11267_def]
  rfl
theorem node11267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11267 live11267 coloured11267 = result11267 := by
  rw [tree11267_def]
  try dsimp only [colour, result11267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11268_agree : tree11268 = literal11268 := by
  rw [tree11268_def, tree11266_agree, tree11267_agree]
  rfl
theorem node11268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11268 live11268 coloured11268 = result11268 := by
  rw [tree11268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11266_eq
  unfold live11266 coloured11266 at child
  try dsimp only [live11268, coloured11268]
  rw [child]
  dsimp only [result11266]
  have child := node11267_eq
  unfold live11267 coloured11267 at child
  try dsimp only [live11268, coloured11268]
  rw [child]
  dsimp only [result11267]
  try dsimp only [colour, result11268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11269_agree : tree11269 = literal11269 := by
  rw [tree11269_def]
  rfl
theorem node11269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11269 live11269 coloured11269 = result11269 := by
  rw [tree11269_def]
  try dsimp only [colour, result11269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11270_agree : tree11270 = literal11270 := by
  rw [tree11270_def, tree11268_agree, tree11269_agree]
  rfl
theorem node11270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11270 live11270 coloured11270 = result11270 := by
  rw [tree11270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11268_eq
  unfold live11268 coloured11268 at child
  try dsimp only [live11270, coloured11270]
  rw [child]
  dsimp only [result11268]
  have child := node11269_eq
  unfold live11269 coloured11269 at child
  try dsimp only [live11270, coloured11270]
  rw [child]
  dsimp only [result11269]
  try dsimp only [colour, result11270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11271_agree : tree11271 = literal11271 := by
  rw [tree11271_def]
  rfl
theorem node11271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11271 live11271 coloured11271 = result11271 := by
  rw [tree11271_def]
  try dsimp only [colour, result11271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11272_agree : tree11272 = literal11272 := by
  rw [tree11272_def, tree11270_agree, tree11271_agree]
  rfl
theorem node11272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11272 live11272 coloured11272 = result11272 := by
  rw [tree11272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11270_eq
  unfold live11270 coloured11270 at child
  try dsimp only [live11272, coloured11272]
  rw [child]
  dsimp only [result11270]
  have child := node11271_eq
  unfold live11271 coloured11271 at child
  try dsimp only [live11272, coloured11272]
  rw [child]
  dsimp only [result11271]
  try dsimp only [colour, result11272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11273_agree : tree11273 = literal11273 := by
  rw [tree11273_def]
  rfl
theorem node11273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11273 live11273 coloured11273 = result11273 := by
  rw [tree11273_def]
  try dsimp only [colour, result11273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11274_agree : tree11274 = literal11274 := by
  rw [tree11274_def, tree11272_agree, tree11273_agree]
  rfl
theorem node11274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11274 live11274 coloured11274 = result11274 := by
  rw [tree11274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11272_eq
  unfold live11272 coloured11272 at child
  try dsimp only [live11274, coloured11274]
  rw [child]
  dsimp only [result11272]
  have child := node11273_eq
  unfold live11273 coloured11273 at child
  try dsimp only [live11274, coloured11274]
  rw [child]
  dsimp only [result11273]
  try dsimp only [colour, result11274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11275_agree : tree11275 = literal11275 := by
  rw [tree11275_def]
  rfl
theorem node11275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11275 live11275 coloured11275 = result11275 := by
  rw [tree11275_def]
  try dsimp only [colour, result11275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11276_agree : tree11276 = literal11276 := by
  rw [tree11276_def, tree11274_agree, tree11275_agree]
  rfl
theorem node11276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11276 live11276 coloured11276 = result11276 := by
  rw [tree11276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11274_eq
  unfold live11274 coloured11274 at child
  try dsimp only [live11276, coloured11276]
  rw [child]
  dsimp only [result11274]
  have child := node11275_eq
  unfold live11275 coloured11275 at child
  try dsimp only [live11276, coloured11276]
  rw [child]
  dsimp only [result11275]
  try dsimp only [colour, result11276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11277_agree : tree11277 = literal11277 := by
  rw [tree11277_def]
  rfl
theorem node11277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11277 live11277 coloured11277 = result11277 := by
  rw [tree11277_def]
  try dsimp only [colour, result11277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11278_agree : tree11278 = literal11278 := by
  rw [tree11278_def, tree11276_agree, tree11277_agree]
  rfl
theorem node11278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11278 live11278 coloured11278 = result11278 := by
  rw [tree11278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11276_eq
  unfold live11276 coloured11276 at child
  try dsimp only [live11278, coloured11278]
  rw [child]
  dsimp only [result11276]
  have child := node11277_eq
  unfold live11277 coloured11277 at child
  try dsimp only [live11278, coloured11278]
  rw [child]
  dsimp only [result11277]
  try dsimp only [colour, result11278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11279_agree : tree11279 = literal11279 := by
  rw [tree11279_def]
  rfl
theorem node11279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11279 live11279 coloured11279 = result11279 := by
  rw [tree11279_def]
  try dsimp only [colour, result11279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11280_agree : tree11280 = literal11280 := by
  rw [tree11280_def, tree11278_agree, tree11279_agree]
  rfl
theorem node11280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11280 live11280 coloured11280 = result11280 := by
  rw [tree11280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11278_eq
  unfold live11278 coloured11278 at child
  try dsimp only [live11280, coloured11280]
  rw [child]
  dsimp only [result11278]
  have child := node11279_eq
  unfold live11279 coloured11279 at child
  try dsimp only [live11280, coloured11280]
  rw [child]
  dsimp only [result11279]
  try dsimp only [colour, result11280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11281_agree : tree11281 = literal11281 := by
  rw [tree11281_def]
  rfl
theorem node11281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11281 live11281 coloured11281 = result11281 := by
  rw [tree11281_def]
  try dsimp only [colour, result11281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11282_agree : tree11282 = literal11282 := by
  rw [tree11282_def, tree11280_agree, tree11281_agree]
  rfl
theorem node11282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11282 live11282 coloured11282 = result11282 := by
  rw [tree11282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11280_eq
  unfold live11280 coloured11280 at child
  try dsimp only [live11282, coloured11282]
  rw [child]
  dsimp only [result11280]
  have child := node11281_eq
  unfold live11281 coloured11281 at child
  try dsimp only [live11282, coloured11282]
  rw [child]
  dsimp only [result11281]
  try dsimp only [colour, result11282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11283_agree : tree11283 = literal11283 := by
  rw [tree11283_def]
  rfl
theorem node11283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11283 live11283 coloured11283 = result11283 := by
  rw [tree11283_def]
  try dsimp only [colour, result11283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11284_agree : tree11284 = literal11284 := by
  rw [tree11284_def, tree11282_agree, tree11283_agree]
  rfl
theorem node11284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11284 live11284 coloured11284 = result11284 := by
  rw [tree11284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11282_eq
  unfold live11282 coloured11282 at child
  try dsimp only [live11284, coloured11284]
  rw [child]
  dsimp only [result11282]
  have child := node11283_eq
  unfold live11283 coloured11283 at child
  try dsimp only [live11284, coloured11284]
  rw [child]
  dsimp only [result11283]
  try dsimp only [colour, result11284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11285_agree : tree11285 = literal11285 := by
  rw [tree11285_def]
  rfl
theorem node11285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11285 live11285 coloured11285 = result11285 := by
  rw [tree11285_def]
  try dsimp only [colour, result11285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11286_agree : tree11286 = literal11286 := by
  rw [tree11286_def, tree11284_agree, tree11285_agree]
  rfl
theorem node11286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11286 live11286 coloured11286 = result11286 := by
  rw [tree11286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11284_eq
  unfold live11284 coloured11284 at child
  try dsimp only [live11286, coloured11286]
  rw [child]
  dsimp only [result11284]
  have child := node11285_eq
  unfold live11285 coloured11285 at child
  try dsimp only [live11286, coloured11286]
  rw [child]
  dsimp only [result11285]
  try dsimp only [colour, result11286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11287_agree : tree11287 = literal11287 := by
  rw [tree11287_def]
  rfl
theorem node11287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11287 live11287 coloured11287 = result11287 := by
  rw [tree11287_def]
  try dsimp only [colour, result11287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11288_agree : tree11288 = literal11288 := by
  rw [tree11288_def, tree11286_agree, tree11287_agree]
  rfl
theorem node11288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11288 live11288 coloured11288 = result11288 := by
  rw [tree11288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11286_eq
  unfold live11286 coloured11286 at child
  try dsimp only [live11288, coloured11288]
  rw [child]
  dsimp only [result11286]
  have child := node11287_eq
  unfold live11287 coloured11287 at child
  try dsimp only [live11288, coloured11288]
  rw [child]
  dsimp only [result11287]
  try dsimp only [colour, result11288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11289_agree : tree11289 = literal11289 := by
  rw [tree11289_def]
  rfl
theorem node11289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11289 live11289 coloured11289 = result11289 := by
  rw [tree11289_def]
  try dsimp only [colour, result11289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11290_agree : tree11290 = literal11290 := by
  rw [tree11290_def, tree11288_agree, tree11289_agree]
  rfl
theorem node11290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11290 live11290 coloured11290 = result11290 := by
  rw [tree11290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11288_eq
  unfold live11288 coloured11288 at child
  try dsimp only [live11290, coloured11290]
  rw [child]
  dsimp only [result11288]
  have child := node11289_eq
  unfold live11289 coloured11289 at child
  try dsimp only [live11290, coloured11290]
  rw [child]
  dsimp only [result11289]
  try dsimp only [colour, result11290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11291_agree : tree11291 = literal11291 := by
  rw [tree11291_def]
  rfl
theorem node11291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11291 live11291 coloured11291 = result11291 := by
  rw [tree11291_def]
  try dsimp only [colour, result11291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11292_agree : tree11292 = literal11292 := by
  rw [tree11292_def, tree11290_agree, tree11291_agree]
  rfl
theorem node11292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11292 live11292 coloured11292 = result11292 := by
  rw [tree11292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11290_eq
  unfold live11290 coloured11290 at child
  try dsimp only [live11292, coloured11292]
  rw [child]
  dsimp only [result11290]
  have child := node11291_eq
  unfold live11291 coloured11291 at child
  try dsimp only [live11292, coloured11292]
  rw [child]
  dsimp only [result11291]
  try dsimp only [colour, result11292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11293_agree : tree11293 = literal11293 := by
  rw [tree11293_def]
  rfl
theorem node11293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11293 live11293 coloured11293 = result11293 := by
  rw [tree11293_def]
  try dsimp only [colour, result11293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11294_agree : tree11294 = literal11294 := by
  rw [tree11294_def, tree11292_agree, tree11293_agree]
  rfl
theorem node11294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11294 live11294 coloured11294 = result11294 := by
  rw [tree11294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11292_eq
  unfold live11292 coloured11292 at child
  try dsimp only [live11294, coloured11294]
  rw [child]
  dsimp only [result11292]
  have child := node11293_eq
  unfold live11293 coloured11293 at child
  try dsimp only [live11294, coloured11294]
  rw [child]
  dsimp only [result11293]
  try dsimp only [colour, result11294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11295_agree : tree11295 = literal11295 := by
  rw [tree11295_def]
  rfl
theorem node11295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11295 live11295 coloured11295 = result11295 := by
  rw [tree11295_def]
  try dsimp only [colour, result11295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11296_agree : tree11296 = literal11296 := by
  rw [tree11296_def, tree11294_agree, tree11295_agree]
  rfl
theorem node11296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11296 live11296 coloured11296 = result11296 := by
  rw [tree11296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11294_eq
  unfold live11294 coloured11294 at child
  try dsimp only [live11296, coloured11296]
  rw [child]
  dsimp only [result11294]
  have child := node11295_eq
  unfold live11295 coloured11295 at child
  try dsimp only [live11296, coloured11296]
  rw [child]
  dsimp only [result11295]
  try dsimp only [colour, result11296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11297_agree : tree11297 = literal11297 := by
  rw [tree11297_def]
  rfl
theorem node11297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11297 live11297 coloured11297 = result11297 := by
  rw [tree11297_def]
  try dsimp only [colour, result11297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11298_agree : tree11298 = literal11298 := by
  rw [tree11298_def, tree11296_agree, tree11297_agree]
  rfl
theorem node11298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11298 live11298 coloured11298 = result11298 := by
  rw [tree11298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11296_eq
  unfold live11296 coloured11296 at child
  try dsimp only [live11298, coloured11298]
  rw [child]
  dsimp only [result11296]
  have child := node11297_eq
  unfold live11297 coloured11297 at child
  try dsimp only [live11298, coloured11298]
  rw [child]
  dsimp only [result11297]
  try dsimp only [colour, result11298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11299_agree : tree11299 = literal11299 := by
  rw [tree11299_def]
  rfl
theorem node11299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11299 live11299 coloured11299 = result11299 := by
  rw [tree11299_def]
  try dsimp only [colour, result11299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11300_agree : tree11300 = literal11300 := by
  rw [tree11300_def, tree11298_agree, tree11299_agree]
  rfl
theorem node11300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11300 live11300 coloured11300 = result11300 := by
  rw [tree11300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11298_eq
  unfold live11298 coloured11298 at child
  try dsimp only [live11300, coloured11300]
  rw [child]
  dsimp only [result11298]
  have child := node11299_eq
  unfold live11299 coloured11299 at child
  try dsimp only [live11300, coloured11300]
  rw [child]
  dsimp only [result11299]
  try dsimp only [colour, result11300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11301_agree : tree11301 = literal11301 := by
  rw [tree11301_def]
  rfl
theorem node11301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11301 live11301 coloured11301 = result11301 := by
  rw [tree11301_def]
  try dsimp only [colour, result11301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11302_agree : tree11302 = literal11302 := by
  rw [tree11302_def, tree11300_agree, tree11301_agree]
  rfl
theorem node11302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11302 live11302 coloured11302 = result11302 := by
  rw [tree11302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11300_eq
  unfold live11300 coloured11300 at child
  try dsimp only [live11302, coloured11302]
  rw [child]
  dsimp only [result11300]
  have child := node11301_eq
  unfold live11301 coloured11301 at child
  try dsimp only [live11302, coloured11302]
  rw [child]
  dsimp only [result11301]
  try dsimp only [colour, result11302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11303_agree : tree11303 = literal11303 := by
  rw [tree11303_def]
  rfl
theorem node11303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11303 live11303 coloured11303 = result11303 := by
  rw [tree11303_def]
  try dsimp only [colour, result11303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11304_agree : tree11304 = literal11304 := by
  rw [tree11304_def, tree11302_agree, tree11303_agree]
  rfl
theorem node11304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11304 live11304 coloured11304 = result11304 := by
  rw [tree11304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11302_eq
  unfold live11302 coloured11302 at child
  try dsimp only [live11304, coloured11304]
  rw [child]
  dsimp only [result11302]
  have child := node11303_eq
  unfold live11303 coloured11303 at child
  try dsimp only [live11304, coloured11304]
  rw [child]
  dsimp only [result11303]
  try dsimp only [colour, result11304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11305_agree : tree11305 = literal11305 := by
  rw [tree11305_def]
  rfl
theorem node11305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11305 live11305 coloured11305 = result11305 := by
  rw [tree11305_def]
  try dsimp only [colour, result11305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11306_agree : tree11306 = literal11306 := by
  rw [tree11306_def, tree11304_agree, tree11305_agree]
  rfl
theorem node11306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11306 live11306 coloured11306 = result11306 := by
  rw [tree11306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11304_eq
  unfold live11304 coloured11304 at child
  try dsimp only [live11306, coloured11306]
  rw [child]
  dsimp only [result11304]
  have child := node11305_eq
  unfold live11305 coloured11305 at child
  try dsimp only [live11306, coloured11306]
  rw [child]
  dsimp only [result11305]
  try dsimp only [colour, result11306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11307_agree : tree11307 = literal11307 := by
  rw [tree11307_def]
  rfl
theorem node11307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11307 live11307 coloured11307 = result11307 := by
  rw [tree11307_def]
  try dsimp only [colour, result11307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11308_agree : tree11308 = literal11308 := by
  rw [tree11308_def, tree11306_agree, tree11307_agree]
  rfl
theorem node11308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11308 live11308 coloured11308 = result11308 := by
  rw [tree11308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11306_eq
  unfold live11306 coloured11306 at child
  try dsimp only [live11308, coloured11308]
  rw [child]
  dsimp only [result11306]
  have child := node11307_eq
  unfold live11307 coloured11307 at child
  try dsimp only [live11308, coloured11308]
  rw [child]
  dsimp only [result11307]
  try dsimp only [colour, result11308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11309_agree : tree11309 = literal11309 := by
  rw [tree11309_def]
  rfl
theorem node11309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11309 live11309 coloured11309 = result11309 := by
  rw [tree11309_def]
  try dsimp only [colour, result11309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11310_agree : tree11310 = literal11310 := by
  rw [tree11310_def, tree11308_agree, tree11309_agree]
  rfl
theorem node11310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11310 live11310 coloured11310 = result11310 := by
  rw [tree11310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11308_eq
  unfold live11308 coloured11308 at child
  try dsimp only [live11310, coloured11310]
  rw [child]
  dsimp only [result11308]
  have child := node11309_eq
  unfold live11309 coloured11309 at child
  try dsimp only [live11310, coloured11310]
  rw [child]
  dsimp only [result11309]
  try dsimp only [colour, result11310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11311_agree : tree11311 = literal11311 := by
  rw [tree11311_def]
  rfl
theorem node11311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11311 live11311 coloured11311 = result11311 := by
  rw [tree11311_def]
  try dsimp only [colour, result11311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11312_agree : tree11312 = literal11312 := by
  rw [tree11312_def, tree11310_agree, tree11311_agree]
  rfl
theorem node11312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11312 live11312 coloured11312 = result11312 := by
  rw [tree11312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11310_eq
  unfold live11310 coloured11310 at child
  try dsimp only [live11312, coloured11312]
  rw [child]
  dsimp only [result11310]
  have child := node11311_eq
  unfold live11311 coloured11311 at child
  try dsimp only [live11312, coloured11312]
  rw [child]
  dsimp only [result11311]
  try dsimp only [colour, result11312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11313_agree : tree11313 = literal11313 := by
  rw [tree11313_def]
  rfl
theorem node11313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11313 live11313 coloured11313 = result11313 := by
  rw [tree11313_def]
  try dsimp only [colour, result11313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11314_agree : tree11314 = literal11314 := by
  rw [tree11314_def, tree11312_agree, tree11313_agree]
  rfl
theorem node11314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11314 live11314 coloured11314 = result11314 := by
  rw [tree11314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11312_eq
  unfold live11312 coloured11312 at child
  try dsimp only [live11314, coloured11314]
  rw [child]
  dsimp only [result11312]
  have child := node11313_eq
  unfold live11313 coloured11313 at child
  try dsimp only [live11314, coloured11314]
  rw [child]
  dsimp only [result11313]
  try dsimp only [colour, result11314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11315_agree : tree11315 = literal11315 := by
  rw [tree11315_def]
  rfl
theorem node11315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11315 live11315 coloured11315 = result11315 := by
  rw [tree11315_def]
  try dsimp only [colour, result11315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11316_agree : tree11316 = literal11316 := by
  rw [tree11316_def, tree11314_agree, tree11315_agree]
  rfl
theorem node11316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11316 live11316 coloured11316 = result11316 := by
  rw [tree11316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11314_eq
  unfold live11314 coloured11314 at child
  try dsimp only [live11316, coloured11316]
  rw [child]
  dsimp only [result11314]
  have child := node11315_eq
  unfold live11315 coloured11315 at child
  try dsimp only [live11316, coloured11316]
  rw [child]
  dsimp only [result11315]
  try dsimp only [colour, result11316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11317_agree : tree11317 = literal11317 := by
  rw [tree11317_def]
  rfl
theorem node11317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11317 live11317 coloured11317 = result11317 := by
  rw [tree11317_def]
  try dsimp only [colour, result11317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11318_agree : tree11318 = literal11318 := by
  rw [tree11318_def, tree11316_agree, tree11317_agree]
  rfl
theorem node11318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11318 live11318 coloured11318 = result11318 := by
  rw [tree11318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11316_eq
  unfold live11316 coloured11316 at child
  try dsimp only [live11318, coloured11318]
  rw [child]
  dsimp only [result11316]
  have child := node11317_eq
  unfold live11317 coloured11317 at child
  try dsimp only [live11318, coloured11318]
  rw [child]
  dsimp only [result11317]
  try dsimp only [colour, result11318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11319_agree : tree11319 = literal11319 := by
  rw [tree11319_def]
  rfl
theorem node11319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11319 live11319 coloured11319 = result11319 := by
  rw [tree11319_def]
  try dsimp only [colour, result11319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11320_agree : tree11320 = literal11320 := by
  rw [tree11320_def, tree11318_agree, tree11319_agree]
  rfl
theorem node11320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11320 live11320 coloured11320 = result11320 := by
  rw [tree11320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11318_eq
  unfold live11318 coloured11318 at child
  try dsimp only [live11320, coloured11320]
  rw [child]
  dsimp only [result11318]
  have child := node11319_eq
  unfold live11319 coloured11319 at child
  try dsimp only [live11320, coloured11320]
  rw [child]
  dsimp only [result11319]
  try dsimp only [colour, result11320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11321_agree : tree11321 = literal11321 := by
  rw [tree11321_def]
  rfl
theorem node11321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11321 live11321 coloured11321 = result11321 := by
  rw [tree11321_def]
  try dsimp only [colour, result11321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11322_agree : tree11322 = literal11322 := by
  rw [tree11322_def, tree11320_agree, tree11321_agree]
  rfl
theorem node11322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11322 live11322 coloured11322 = result11322 := by
  rw [tree11322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11320_eq
  unfold live11320 coloured11320 at child
  try dsimp only [live11322, coloured11322]
  rw [child]
  dsimp only [result11320]
  have child := node11321_eq
  unfold live11321 coloured11321 at child
  try dsimp only [live11322, coloured11322]
  rw [child]
  dsimp only [result11321]
  try dsimp only [colour, result11322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11323_agree : tree11323 = literal11323 := by
  rw [tree11323_def]
  rfl
theorem node11323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11323 live11323 coloured11323 = result11323 := by
  rw [tree11323_def]
  try dsimp only [colour, result11323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11324_agree : tree11324 = literal11324 := by
  rw [tree11324_def, tree11322_agree, tree11323_agree]
  rfl
theorem node11324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11324 live11324 coloured11324 = result11324 := by
  rw [tree11324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11322_eq
  unfold live11322 coloured11322 at child
  try dsimp only [live11324, coloured11324]
  rw [child]
  dsimp only [result11322]
  have child := node11323_eq
  unfold live11323 coloured11323 at child
  try dsimp only [live11324, coloured11324]
  rw [child]
  dsimp only [result11323]
  try dsimp only [colour, result11324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11325_agree : tree11325 = literal11325 := by
  rw [tree11325_def]
  rfl
theorem node11325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11325 live11325 coloured11325 = result11325 := by
  rw [tree11325_def]
  try dsimp only [colour, result11325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11326_agree : tree11326 = literal11326 := by
  rw [tree11326_def, tree11324_agree, tree11325_agree]
  rfl
theorem node11326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11326 live11326 coloured11326 = result11326 := by
  rw [tree11326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11324_eq
  unfold live11324 coloured11324 at child
  try dsimp only [live11326, coloured11326]
  rw [child]
  dsimp only [result11324]
  have child := node11325_eq
  unfold live11325 coloured11325 at child
  try dsimp only [live11326, coloured11326]
  rw [child]
  dsimp only [result11325]
  try dsimp only [colour, result11326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11327_agree : tree11327 = literal11327 := by
  rw [tree11327_def]
  rfl
theorem node11327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11327 live11327 coloured11327 = result11327 := by
  rw [tree11327_def]
  try dsimp only [colour, result11327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
