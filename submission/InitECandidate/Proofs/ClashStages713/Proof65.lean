import InitECandidate.Proofs.ClashStages713.Proof64
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree6240_agree : tree6240 = literal6240 := by
  rw [tree6240_def, tree6238_agree, tree6239_agree]
  rfl
theorem node6240_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6240 live6240 coloured6240 = result6240 := by
  rw [tree6240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6238_eq
  unfold live6238 coloured6238 at child
  try dsimp only [live6240, coloured6240]
  rw [child]
  dsimp only [result6238]
  have child := node6239_eq
  unfold live6239 coloured6239 at child
  try dsimp only [live6240, coloured6240]
  rw [child]
  dsimp only [result6239]
  try dsimp only [colour, result6240]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6241_agree : tree6241 = literal6241 := by
  rw [tree6241_def]
  rfl
theorem node6241_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6241 live6241 coloured6241 = result6241 := by
  rw [tree6241_def]
  try dsimp only [colour, result6241]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6242_agree : tree6242 = literal6242 := by
  rw [tree6242_def, tree6240_agree, tree6241_agree]
  rfl
theorem node6242_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6242 live6242 coloured6242 = result6242 := by
  rw [tree6242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6240_eq
  unfold live6240 coloured6240 at child
  try dsimp only [live6242, coloured6242]
  rw [child]
  dsimp only [result6240]
  have child := node6241_eq
  unfold live6241 coloured6241 at child
  try dsimp only [live6242, coloured6242]
  rw [child]
  dsimp only [result6241]
  try dsimp only [colour, result6242]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6243_agree : tree6243 = literal6243 := by
  rw [tree6243_def]
  rfl
theorem node6243_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6243 live6243 coloured6243 = result6243 := by
  rw [tree6243_def]
  try dsimp only [colour, result6243]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6244_agree : tree6244 = literal6244 := by
  rw [tree6244_def, tree6242_agree, tree6243_agree]
  rfl
theorem node6244_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6244 live6244 coloured6244 = result6244 := by
  rw [tree6244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6242_eq
  unfold live6242 coloured6242 at child
  try dsimp only [live6244, coloured6244]
  rw [child]
  dsimp only [result6242]
  have child := node6243_eq
  unfold live6243 coloured6243 at child
  try dsimp only [live6244, coloured6244]
  rw [child]
  dsimp only [result6243]
  try dsimp only [colour, result6244]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6245_agree : tree6245 = literal6245 := by
  rw [tree6245_def]
  rfl
theorem node6245_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6245 live6245 coloured6245 = result6245 := by
  rw [tree6245_def]
  try dsimp only [colour, result6245]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6246_agree : tree6246 = literal6246 := by
  rw [tree6246_def, tree6244_agree, tree6245_agree]
  rfl
theorem node6246_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6246 live6246 coloured6246 = result6246 := by
  rw [tree6246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6244_eq
  unfold live6244 coloured6244 at child
  try dsimp only [live6246, coloured6246]
  rw [child]
  dsimp only [result6244]
  have child := node6245_eq
  unfold live6245 coloured6245 at child
  try dsimp only [live6246, coloured6246]
  rw [child]
  dsimp only [result6245]
  try dsimp only [colour, result6246]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6247_agree : tree6247 = literal6247 := by
  rw [tree6247_def]
  rfl
theorem node6247_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6247 live6247 coloured6247 = result6247 := by
  rw [tree6247_def]
  try dsimp only [colour, result6247]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6248_agree : tree6248 = literal6248 := by
  rw [tree6248_def, tree6246_agree, tree6247_agree]
  rfl
theorem node6248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6248 live6248 coloured6248 = result6248 := by
  rw [tree6248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6246_eq
  unfold live6246 coloured6246 at child
  try dsimp only [live6248, coloured6248]
  rw [child]
  dsimp only [result6246]
  have child := node6247_eq
  unfold live6247 coloured6247 at child
  try dsimp only [live6248, coloured6248]
  rw [child]
  dsimp only [result6247]
  try dsimp only [colour, result6248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6249_agree : tree6249 = literal6249 := by
  rw [tree6249_def]
  rfl
theorem node6249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6249 live6249 coloured6249 = result6249 := by
  rw [tree6249_def]
  try dsimp only [colour, result6249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6250_agree : tree6250 = literal6250 := by
  rw [tree6250_def, tree6248_agree, tree6249_agree]
  rfl
theorem node6250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6250 live6250 coloured6250 = result6250 := by
  rw [tree6250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6248_eq
  unfold live6248 coloured6248 at child
  try dsimp only [live6250, coloured6250]
  rw [child]
  dsimp only [result6248]
  have child := node6249_eq
  unfold live6249 coloured6249 at child
  try dsimp only [live6250, coloured6250]
  rw [child]
  dsimp only [result6249]
  try dsimp only [colour, result6250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6251_agree : tree6251 = literal6251 := by
  rw [tree6251_def]
  rfl
theorem node6251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6251 live6251 coloured6251 = result6251 := by
  rw [tree6251_def]
  try dsimp only [colour, result6251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6252_agree : tree6252 = literal6252 := by
  rw [tree6252_def, tree6250_agree, tree6251_agree]
  rfl
theorem node6252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6252 live6252 coloured6252 = result6252 := by
  rw [tree6252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6250_eq
  unfold live6250 coloured6250 at child
  try dsimp only [live6252, coloured6252]
  rw [child]
  dsimp only [result6250]
  have child := node6251_eq
  unfold live6251 coloured6251 at child
  try dsimp only [live6252, coloured6252]
  rw [child]
  dsimp only [result6251]
  try dsimp only [colour, result6252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6253_agree : tree6253 = literal6253 := by
  rw [tree6253_def]
  rfl
theorem node6253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6253 live6253 coloured6253 = result6253 := by
  rw [tree6253_def]
  try dsimp only [colour, result6253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6254_agree : tree6254 = literal6254 := by
  rw [tree6254_def, tree6252_agree, tree6253_agree]
  rfl
theorem node6254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6254 live6254 coloured6254 = result6254 := by
  rw [tree6254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6252_eq
  unfold live6252 coloured6252 at child
  try dsimp only [live6254, coloured6254]
  rw [child]
  dsimp only [result6252]
  have child := node6253_eq
  unfold live6253 coloured6253 at child
  try dsimp only [live6254, coloured6254]
  rw [child]
  dsimp only [result6253]
  try dsimp only [colour, result6254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6255_agree : tree6255 = literal6255 := by
  rw [tree6255_def]
  rfl
theorem node6255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6255 live6255 coloured6255 = result6255 := by
  rw [tree6255_def]
  try dsimp only [colour, result6255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6256_agree : tree6256 = literal6256 := by
  rw [tree6256_def, tree6254_agree, tree6255_agree]
  rfl
theorem node6256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6256 live6256 coloured6256 = result6256 := by
  rw [tree6256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6254_eq
  unfold live6254 coloured6254 at child
  try dsimp only [live6256, coloured6256]
  rw [child]
  dsimp only [result6254]
  have child := node6255_eq
  unfold live6255 coloured6255 at child
  try dsimp only [live6256, coloured6256]
  rw [child]
  dsimp only [result6255]
  try dsimp only [colour, result6256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6257_agree : tree6257 = literal6257 := by
  rw [tree6257_def]
  rfl
theorem node6257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6257 live6257 coloured6257 = result6257 := by
  rw [tree6257_def]
  try dsimp only [colour, result6257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6258_agree : tree6258 = literal6258 := by
  rw [tree6258_def, tree6256_agree, tree6257_agree]
  rfl
theorem node6258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6258 live6258 coloured6258 = result6258 := by
  rw [tree6258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6256_eq
  unfold live6256 coloured6256 at child
  try dsimp only [live6258, coloured6258]
  rw [child]
  dsimp only [result6256]
  have child := node6257_eq
  unfold live6257 coloured6257 at child
  try dsimp only [live6258, coloured6258]
  rw [child]
  dsimp only [result6257]
  try dsimp only [colour, result6258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6259_agree : tree6259 = literal6259 := by
  rw [tree6259_def]
  rfl
theorem node6259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6259 live6259 coloured6259 = result6259 := by
  rw [tree6259_def]
  try dsimp only [colour, result6259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6260_agree : tree6260 = literal6260 := by
  rw [tree6260_def, tree6258_agree, tree6259_agree]
  rfl
theorem node6260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6260 live6260 coloured6260 = result6260 := by
  rw [tree6260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6258_eq
  unfold live6258 coloured6258 at child
  try dsimp only [live6260, coloured6260]
  rw [child]
  dsimp only [result6258]
  have child := node6259_eq
  unfold live6259 coloured6259 at child
  try dsimp only [live6260, coloured6260]
  rw [child]
  dsimp only [result6259]
  try dsimp only [colour, result6260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6261_agree : tree6261 = literal6261 := by
  rw [tree6261_def]
  rfl
theorem node6261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6261 live6261 coloured6261 = result6261 := by
  rw [tree6261_def]
  try dsimp only [colour, result6261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6262_agree : tree6262 = literal6262 := by
  rw [tree6262_def, tree6260_agree, tree6261_agree]
  rfl
theorem node6262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6262 live6262 coloured6262 = result6262 := by
  rw [tree6262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6260_eq
  unfold live6260 coloured6260 at child
  try dsimp only [live6262, coloured6262]
  rw [child]
  dsimp only [result6260]
  have child := node6261_eq
  unfold live6261 coloured6261 at child
  try dsimp only [live6262, coloured6262]
  rw [child]
  dsimp only [result6261]
  try dsimp only [colour, result6262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6263_agree : tree6263 = literal6263 := by
  rw [tree6263_def]
  rfl
theorem node6263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6263 live6263 coloured6263 = result6263 := by
  rw [tree6263_def]
  try dsimp only [colour, result6263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6264_agree : tree6264 = literal6264 := by
  rw [tree6264_def, tree6262_agree, tree6263_agree]
  rfl
theorem node6264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6264 live6264 coloured6264 = result6264 := by
  rw [tree6264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6262_eq
  unfold live6262 coloured6262 at child
  try dsimp only [live6264, coloured6264]
  rw [child]
  dsimp only [result6262]
  have child := node6263_eq
  unfold live6263 coloured6263 at child
  try dsimp only [live6264, coloured6264]
  rw [child]
  dsimp only [result6263]
  try dsimp only [colour, result6264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6265_agree : tree6265 = literal6265 := by
  rw [tree6265_def]
  rfl
theorem node6265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6265 live6265 coloured6265 = result6265 := by
  rw [tree6265_def]
  try dsimp only [colour, result6265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6266_agree : tree6266 = literal6266 := by
  rw [tree6266_def, tree6264_agree, tree6265_agree]
  rfl
theorem node6266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6266 live6266 coloured6266 = result6266 := by
  rw [tree6266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6264_eq
  unfold live6264 coloured6264 at child
  try dsimp only [live6266, coloured6266]
  rw [child]
  dsimp only [result6264]
  have child := node6265_eq
  unfold live6265 coloured6265 at child
  try dsimp only [live6266, coloured6266]
  rw [child]
  dsimp only [result6265]
  try dsimp only [colour, result6266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6267_agree : tree6267 = literal6267 := by
  rw [tree6267_def]
  rfl
theorem node6267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6267 live6267 coloured6267 = result6267 := by
  rw [tree6267_def]
  try dsimp only [colour, result6267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6268_agree : tree6268 = literal6268 := by
  rw [tree6268_def, tree6266_agree, tree6267_agree]
  rfl
theorem node6268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6268 live6268 coloured6268 = result6268 := by
  rw [tree6268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6266_eq
  unfold live6266 coloured6266 at child
  try dsimp only [live6268, coloured6268]
  rw [child]
  dsimp only [result6266]
  have child := node6267_eq
  unfold live6267 coloured6267 at child
  try dsimp only [live6268, coloured6268]
  rw [child]
  dsimp only [result6267]
  try dsimp only [colour, result6268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6269_agree : tree6269 = literal6269 := by
  rw [tree6269_def]
  rfl
theorem node6269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6269 live6269 coloured6269 = result6269 := by
  rw [tree6269_def]
  try dsimp only [colour, result6269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6270_agree : tree6270 = literal6270 := by
  rw [tree6270_def, tree6268_agree, tree6269_agree]
  rfl
theorem node6270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6270 live6270 coloured6270 = result6270 := by
  rw [tree6270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6268_eq
  unfold live6268 coloured6268 at child
  try dsimp only [live6270, coloured6270]
  rw [child]
  dsimp only [result6268]
  have child := node6269_eq
  unfold live6269 coloured6269 at child
  try dsimp only [live6270, coloured6270]
  rw [child]
  dsimp only [result6269]
  try dsimp only [colour, result6270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6271_agree : tree6271 = literal6271 := by
  rw [tree6271_def]
  rfl
theorem node6271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6271 live6271 coloured6271 = result6271 := by
  rw [tree6271_def]
  try dsimp only [colour, result6271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6272_agree : tree6272 = literal6272 := by
  rw [tree6272_def, tree6270_agree, tree6271_agree]
  rfl
theorem node6272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6272 live6272 coloured6272 = result6272 := by
  rw [tree6272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6270_eq
  unfold live6270 coloured6270 at child
  try dsimp only [live6272, coloured6272]
  rw [child]
  dsimp only [result6270]
  have child := node6271_eq
  unfold live6271 coloured6271 at child
  try dsimp only [live6272, coloured6272]
  rw [child]
  dsimp only [result6271]
  try dsimp only [colour, result6272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6273_agree : tree6273 = literal6273 := by
  rw [tree6273_def]
  rfl
theorem node6273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6273 live6273 coloured6273 = result6273 := by
  rw [tree6273_def]
  try dsimp only [colour, result6273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6274_agree : tree6274 = literal6274 := by
  rw [tree6274_def, tree6272_agree, tree6273_agree]
  rfl
theorem node6274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6274 live6274 coloured6274 = result6274 := by
  rw [tree6274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6272_eq
  unfold live6272 coloured6272 at child
  try dsimp only [live6274, coloured6274]
  rw [child]
  dsimp only [result6272]
  have child := node6273_eq
  unfold live6273 coloured6273 at child
  try dsimp only [live6274, coloured6274]
  rw [child]
  dsimp only [result6273]
  try dsimp only [colour, result6274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6275_agree : tree6275 = literal6275 := by
  rw [tree6275_def]
  rfl
theorem node6275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6275 live6275 coloured6275 = result6275 := by
  rw [tree6275_def]
  try dsimp only [colour, result6275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6276_agree : tree6276 = literal6276 := by
  rw [tree6276_def, tree6274_agree, tree6275_agree]
  rfl
theorem node6276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6276 live6276 coloured6276 = result6276 := by
  rw [tree6276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6274_eq
  unfold live6274 coloured6274 at child
  try dsimp only [live6276, coloured6276]
  rw [child]
  dsimp only [result6274]
  have child := node6275_eq
  unfold live6275 coloured6275 at child
  try dsimp only [live6276, coloured6276]
  rw [child]
  dsimp only [result6275]
  try dsimp only [colour, result6276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6277_agree : tree6277 = literal6277 := by
  rw [tree6277_def]
  rfl
theorem node6277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6277 live6277 coloured6277 = result6277 := by
  rw [tree6277_def]
  try dsimp only [colour, result6277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6278_agree : tree6278 = literal6278 := by
  rw [tree6278_def, tree6276_agree, tree6277_agree]
  rfl
theorem node6278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6278 live6278 coloured6278 = result6278 := by
  rw [tree6278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6276_eq
  unfold live6276 coloured6276 at child
  try dsimp only [live6278, coloured6278]
  rw [child]
  dsimp only [result6276]
  have child := node6277_eq
  unfold live6277 coloured6277 at child
  try dsimp only [live6278, coloured6278]
  rw [child]
  dsimp only [result6277]
  try dsimp only [colour, result6278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6279_agree : tree6279 = literal6279 := by
  rw [tree6279_def]
  rfl
theorem node6279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6279 live6279 coloured6279 = result6279 := by
  rw [tree6279_def]
  try dsimp only [colour, result6279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6280_agree : tree6280 = literal6280 := by
  rw [tree6280_def, tree6278_agree, tree6279_agree]
  rfl
theorem node6280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6280 live6280 coloured6280 = result6280 := by
  rw [tree6280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6278_eq
  unfold live6278 coloured6278 at child
  try dsimp only [live6280, coloured6280]
  rw [child]
  dsimp only [result6278]
  have child := node6279_eq
  unfold live6279 coloured6279 at child
  try dsimp only [live6280, coloured6280]
  rw [child]
  dsimp only [result6279]
  try dsimp only [colour, result6280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6281_agree : tree6281 = literal6281 := by
  rw [tree6281_def]
  rfl
theorem node6281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6281 live6281 coloured6281 = result6281 := by
  rw [tree6281_def]
  try dsimp only [colour, result6281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6282_agree : tree6282 = literal6282 := by
  rw [tree6282_def, tree6280_agree, tree6281_agree]
  rfl
theorem node6282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6282 live6282 coloured6282 = result6282 := by
  rw [tree6282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6280_eq
  unfold live6280 coloured6280 at child
  try dsimp only [live6282, coloured6282]
  rw [child]
  dsimp only [result6280]
  have child := node6281_eq
  unfold live6281 coloured6281 at child
  try dsimp only [live6282, coloured6282]
  rw [child]
  dsimp only [result6281]
  try dsimp only [colour, result6282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6283_agree : tree6283 = literal6283 := by
  rw [tree6283_def]
  rfl
theorem node6283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6283 live6283 coloured6283 = result6283 := by
  rw [tree6283_def]
  try dsimp only [colour, result6283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6284_agree : tree6284 = literal6284 := by
  rw [tree6284_def, tree6282_agree, tree6283_agree]
  rfl
theorem node6284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6284 live6284 coloured6284 = result6284 := by
  rw [tree6284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6282_eq
  unfold live6282 coloured6282 at child
  try dsimp only [live6284, coloured6284]
  rw [child]
  dsimp only [result6282]
  have child := node6283_eq
  unfold live6283 coloured6283 at child
  try dsimp only [live6284, coloured6284]
  rw [child]
  dsimp only [result6283]
  try dsimp only [colour, result6284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6285_agree : tree6285 = literal6285 := by
  rw [tree6285_def]
  rfl
theorem node6285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6285 live6285 coloured6285 = result6285 := by
  rw [tree6285_def]
  try dsimp only [colour, result6285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6286_agree : tree6286 = literal6286 := by
  rw [tree6286_def, tree6284_agree, tree6285_agree]
  rfl
theorem node6286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6286 live6286 coloured6286 = result6286 := by
  rw [tree6286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6284_eq
  unfold live6284 coloured6284 at child
  try dsimp only [live6286, coloured6286]
  rw [child]
  dsimp only [result6284]
  have child := node6285_eq
  unfold live6285 coloured6285 at child
  try dsimp only [live6286, coloured6286]
  rw [child]
  dsimp only [result6285]
  try dsimp only [colour, result6286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6287_agree : tree6287 = literal6287 := by
  rw [tree6287_def]
  rfl
theorem node6287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6287 live6287 coloured6287 = result6287 := by
  rw [tree6287_def]
  try dsimp only [colour, result6287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6288_agree : tree6288 = literal6288 := by
  rw [tree6288_def, tree6286_agree, tree6287_agree]
  rfl
theorem node6288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6288 live6288 coloured6288 = result6288 := by
  rw [tree6288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6286_eq
  unfold live6286 coloured6286 at child
  try dsimp only [live6288, coloured6288]
  rw [child]
  dsimp only [result6286]
  have child := node6287_eq
  unfold live6287 coloured6287 at child
  try dsimp only [live6288, coloured6288]
  rw [child]
  dsimp only [result6287]
  try dsimp only [colour, result6288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6289_agree : tree6289 = literal6289 := by
  rw [tree6289_def]
  rfl
theorem node6289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6289 live6289 coloured6289 = result6289 := by
  rw [tree6289_def]
  try dsimp only [colour, result6289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6290_agree : tree6290 = literal6290 := by
  rw [tree6290_def, tree6288_agree, tree6289_agree]
  rfl
theorem node6290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6290 live6290 coloured6290 = result6290 := by
  rw [tree6290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6288_eq
  unfold live6288 coloured6288 at child
  try dsimp only [live6290, coloured6290]
  rw [child]
  dsimp only [result6288]
  have child := node6289_eq
  unfold live6289 coloured6289 at child
  try dsimp only [live6290, coloured6290]
  rw [child]
  dsimp only [result6289]
  try dsimp only [colour, result6290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6291_agree : tree6291 = literal6291 := by
  rw [tree6291_def]
  rfl
theorem node6291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6291 live6291 coloured6291 = result6291 := by
  rw [tree6291_def]
  try dsimp only [colour, result6291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6292_agree : tree6292 = literal6292 := by
  rw [tree6292_def, tree6290_agree, tree6291_agree]
  rfl
theorem node6292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6292 live6292 coloured6292 = result6292 := by
  rw [tree6292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6290_eq
  unfold live6290 coloured6290 at child
  try dsimp only [live6292, coloured6292]
  rw [child]
  dsimp only [result6290]
  have child := node6291_eq
  unfold live6291 coloured6291 at child
  try dsimp only [live6292, coloured6292]
  rw [child]
  dsimp only [result6291]
  try dsimp only [colour, result6292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6293_agree : tree6293 = literal6293 := by
  rw [tree6293_def]
  rfl
theorem node6293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6293 live6293 coloured6293 = result6293 := by
  rw [tree6293_def]
  try dsimp only [colour, result6293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6294_agree : tree6294 = literal6294 := by
  rw [tree6294_def, tree6292_agree, tree6293_agree]
  rfl
theorem node6294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6294 live6294 coloured6294 = result6294 := by
  rw [tree6294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6292_eq
  unfold live6292 coloured6292 at child
  try dsimp only [live6294, coloured6294]
  rw [child]
  dsimp only [result6292]
  have child := node6293_eq
  unfold live6293 coloured6293 at child
  try dsimp only [live6294, coloured6294]
  rw [child]
  dsimp only [result6293]
  try dsimp only [colour, result6294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6295_agree : tree6295 = literal6295 := by
  rw [tree6295_def]
  rfl
theorem node6295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6295 live6295 coloured6295 = result6295 := by
  rw [tree6295_def]
  try dsimp only [colour, result6295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6296_agree : tree6296 = literal6296 := by
  rw [tree6296_def, tree6294_agree, tree6295_agree]
  rfl
theorem node6296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6296 live6296 coloured6296 = result6296 := by
  rw [tree6296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6294_eq
  unfold live6294 coloured6294 at child
  try dsimp only [live6296, coloured6296]
  rw [child]
  dsimp only [result6294]
  have child := node6295_eq
  unfold live6295 coloured6295 at child
  try dsimp only [live6296, coloured6296]
  rw [child]
  dsimp only [result6295]
  try dsimp only [colour, result6296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6297_agree : tree6297 = literal6297 := by
  rw [tree6297_def]
  rfl
theorem node6297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6297 live6297 coloured6297 = result6297 := by
  rw [tree6297_def]
  try dsimp only [colour, result6297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6298_agree : tree6298 = literal6298 := by
  rw [tree6298_def, tree6296_agree, tree6297_agree]
  rfl
theorem node6298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6298 live6298 coloured6298 = result6298 := by
  rw [tree6298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6296_eq
  unfold live6296 coloured6296 at child
  try dsimp only [live6298, coloured6298]
  rw [child]
  dsimp only [result6296]
  have child := node6297_eq
  unfold live6297 coloured6297 at child
  try dsimp only [live6298, coloured6298]
  rw [child]
  dsimp only [result6297]
  try dsimp only [colour, result6298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6299_agree : tree6299 = literal6299 := by
  rw [tree6299_def]
  rfl
theorem node6299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6299 live6299 coloured6299 = result6299 := by
  rw [tree6299_def]
  try dsimp only [colour, result6299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6300_agree : tree6300 = literal6300 := by
  rw [tree6300_def, tree6298_agree, tree6299_agree]
  rfl
theorem node6300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6300 live6300 coloured6300 = result6300 := by
  rw [tree6300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6298_eq
  unfold live6298 coloured6298 at child
  try dsimp only [live6300, coloured6300]
  rw [child]
  dsimp only [result6298]
  have child := node6299_eq
  unfold live6299 coloured6299 at child
  try dsimp only [live6300, coloured6300]
  rw [child]
  dsimp only [result6299]
  try dsimp only [colour, result6300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6301_agree : tree6301 = literal6301 := by
  rw [tree6301_def]
  rfl
theorem node6301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6301 live6301 coloured6301 = result6301 := by
  rw [tree6301_def]
  try dsimp only [colour, result6301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6302_agree : tree6302 = literal6302 := by
  rw [tree6302_def, tree6300_agree, tree6301_agree]
  rfl
theorem node6302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6302 live6302 coloured6302 = result6302 := by
  rw [tree6302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6300_eq
  unfold live6300 coloured6300 at child
  try dsimp only [live6302, coloured6302]
  rw [child]
  dsimp only [result6300]
  have child := node6301_eq
  unfold live6301 coloured6301 at child
  try dsimp only [live6302, coloured6302]
  rw [child]
  dsimp only [result6301]
  try dsimp only [colour, result6302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6303_agree : tree6303 = literal6303 := by
  rw [tree6303_def]
  rfl
theorem node6303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6303 live6303 coloured6303 = result6303 := by
  rw [tree6303_def]
  try dsimp only [colour, result6303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6304_agree : tree6304 = literal6304 := by
  rw [tree6304_def, tree6302_agree, tree6303_agree]
  rfl
theorem node6304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6304 live6304 coloured6304 = result6304 := by
  rw [tree6304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6302_eq
  unfold live6302 coloured6302 at child
  try dsimp only [live6304, coloured6304]
  rw [child]
  dsimp only [result6302]
  have child := node6303_eq
  unfold live6303 coloured6303 at child
  try dsimp only [live6304, coloured6304]
  rw [child]
  dsimp only [result6303]
  try dsimp only [colour, result6304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6305_agree : tree6305 = literal6305 := by
  rw [tree6305_def]
  rfl
theorem node6305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6305 live6305 coloured6305 = result6305 := by
  rw [tree6305_def]
  try dsimp only [colour, result6305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6306_agree : tree6306 = literal6306 := by
  rw [tree6306_def, tree6304_agree, tree6305_agree]
  rfl
theorem node6306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6306 live6306 coloured6306 = result6306 := by
  rw [tree6306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6304_eq
  unfold live6304 coloured6304 at child
  try dsimp only [live6306, coloured6306]
  rw [child]
  dsimp only [result6304]
  have child := node6305_eq
  unfold live6305 coloured6305 at child
  try dsimp only [live6306, coloured6306]
  rw [child]
  dsimp only [result6305]
  try dsimp only [colour, result6306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6307_agree : tree6307 = literal6307 := by
  rw [tree6307_def]
  rfl
theorem node6307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6307 live6307 coloured6307 = result6307 := by
  rw [tree6307_def]
  try dsimp only [colour, result6307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6308_agree : tree6308 = literal6308 := by
  rw [tree6308_def, tree6306_agree, tree6307_agree]
  rfl
theorem node6308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6308 live6308 coloured6308 = result6308 := by
  rw [tree6308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6306_eq
  unfold live6306 coloured6306 at child
  try dsimp only [live6308, coloured6308]
  rw [child]
  dsimp only [result6306]
  have child := node6307_eq
  unfold live6307 coloured6307 at child
  try dsimp only [live6308, coloured6308]
  rw [child]
  dsimp only [result6307]
  try dsimp only [colour, result6308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6309_agree : tree6309 = literal6309 := by
  rw [tree6309_def]
  rfl
theorem node6309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6309 live6309 coloured6309 = result6309 := by
  rw [tree6309_def]
  try dsimp only [colour, result6309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6310_agree : tree6310 = literal6310 := by
  rw [tree6310_def, tree6308_agree, tree6309_agree]
  rfl
theorem node6310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6310 live6310 coloured6310 = result6310 := by
  rw [tree6310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6308_eq
  unfold live6308 coloured6308 at child
  try dsimp only [live6310, coloured6310]
  rw [child]
  dsimp only [result6308]
  have child := node6309_eq
  unfold live6309 coloured6309 at child
  try dsimp only [live6310, coloured6310]
  rw [child]
  dsimp only [result6309]
  try dsimp only [colour, result6310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6311_agree : tree6311 = literal6311 := by
  rw [tree6311_def]
  rfl
theorem node6311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6311 live6311 coloured6311 = result6311 := by
  rw [tree6311_def]
  try dsimp only [colour, result6311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6312_agree : tree6312 = literal6312 := by
  rw [tree6312_def, tree6310_agree, tree6311_agree]
  rfl
theorem node6312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6312 live6312 coloured6312 = result6312 := by
  rw [tree6312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6310_eq
  unfold live6310 coloured6310 at child
  try dsimp only [live6312, coloured6312]
  rw [child]
  dsimp only [result6310]
  have child := node6311_eq
  unfold live6311 coloured6311 at child
  try dsimp only [live6312, coloured6312]
  rw [child]
  dsimp only [result6311]
  try dsimp only [colour, result6312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6313_agree : tree6313 = literal6313 := by
  rw [tree6313_def]
  rfl
theorem node6313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6313 live6313 coloured6313 = result6313 := by
  rw [tree6313_def]
  try dsimp only [colour, result6313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6314_agree : tree6314 = literal6314 := by
  rw [tree6314_def, tree6312_agree, tree6313_agree]
  rfl
theorem node6314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6314 live6314 coloured6314 = result6314 := by
  rw [tree6314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6312_eq
  unfold live6312 coloured6312 at child
  try dsimp only [live6314, coloured6314]
  rw [child]
  dsimp only [result6312]
  have child := node6313_eq
  unfold live6313 coloured6313 at child
  try dsimp only [live6314, coloured6314]
  rw [child]
  dsimp only [result6313]
  try dsimp only [colour, result6314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6315_agree : tree6315 = literal6315 := by
  rw [tree6315_def]
  rfl
theorem node6315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6315 live6315 coloured6315 = result6315 := by
  rw [tree6315_def]
  try dsimp only [colour, result6315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6316_agree : tree6316 = literal6316 := by
  rw [tree6316_def, tree6314_agree, tree6315_agree]
  rfl
theorem node6316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6316 live6316 coloured6316 = result6316 := by
  rw [tree6316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6314_eq
  unfold live6314 coloured6314 at child
  try dsimp only [live6316, coloured6316]
  rw [child]
  dsimp only [result6314]
  have child := node6315_eq
  unfold live6315 coloured6315 at child
  try dsimp only [live6316, coloured6316]
  rw [child]
  dsimp only [result6315]
  try dsimp only [colour, result6316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6317_agree : tree6317 = literal6317 := by
  rw [tree6317_def]
  rfl
theorem node6317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6317 live6317 coloured6317 = result6317 := by
  rw [tree6317_def]
  try dsimp only [colour, result6317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6318_agree : tree6318 = literal6318 := by
  rw [tree6318_def, tree6316_agree, tree6317_agree]
  rfl
theorem node6318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6318 live6318 coloured6318 = result6318 := by
  rw [tree6318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6316_eq
  unfold live6316 coloured6316 at child
  try dsimp only [live6318, coloured6318]
  rw [child]
  dsimp only [result6316]
  have child := node6317_eq
  unfold live6317 coloured6317 at child
  try dsimp only [live6318, coloured6318]
  rw [child]
  dsimp only [result6317]
  try dsimp only [colour, result6318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6319_agree : tree6319 = literal6319 := by
  rw [tree6319_def]
  rfl
theorem node6319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6319 live6319 coloured6319 = result6319 := by
  rw [tree6319_def]
  try dsimp only [colour, result6319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6320_agree : tree6320 = literal6320 := by
  rw [tree6320_def, tree6318_agree, tree6319_agree]
  rfl
theorem node6320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6320 live6320 coloured6320 = result6320 := by
  rw [tree6320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6318_eq
  unfold live6318 coloured6318 at child
  try dsimp only [live6320, coloured6320]
  rw [child]
  dsimp only [result6318]
  have child := node6319_eq
  unfold live6319 coloured6319 at child
  try dsimp only [live6320, coloured6320]
  rw [child]
  dsimp only [result6319]
  try dsimp only [colour, result6320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6321_agree : tree6321 = literal6321 := by
  rw [tree6321_def]
  rfl
theorem node6321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6321 live6321 coloured6321 = result6321 := by
  rw [tree6321_def]
  try dsimp only [colour, result6321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6322_agree : tree6322 = literal6322 := by
  rw [tree6322_def, tree6320_agree, tree6321_agree]
  rfl
theorem node6322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6322 live6322 coloured6322 = result6322 := by
  rw [tree6322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6320_eq
  unfold live6320 coloured6320 at child
  try dsimp only [live6322, coloured6322]
  rw [child]
  dsimp only [result6320]
  have child := node6321_eq
  unfold live6321 coloured6321 at child
  try dsimp only [live6322, coloured6322]
  rw [child]
  dsimp only [result6321]
  try dsimp only [colour, result6322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6323_agree : tree6323 = literal6323 := by
  rw [tree6323_def]
  rfl
theorem node6323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6323 live6323 coloured6323 = result6323 := by
  rw [tree6323_def]
  try dsimp only [colour, result6323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6324_agree : tree6324 = literal6324 := by
  rw [tree6324_def, tree6322_agree, tree6323_agree]
  rfl
theorem node6324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6324 live6324 coloured6324 = result6324 := by
  rw [tree6324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6322_eq
  unfold live6322 coloured6322 at child
  try dsimp only [live6324, coloured6324]
  rw [child]
  dsimp only [result6322]
  have child := node6323_eq
  unfold live6323 coloured6323 at child
  try dsimp only [live6324, coloured6324]
  rw [child]
  dsimp only [result6323]
  try dsimp only [colour, result6324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6325_agree : tree6325 = literal6325 := by
  rw [tree6325_def]
  rfl
theorem node6325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6325 live6325 coloured6325 = result6325 := by
  rw [tree6325_def]
  try dsimp only [colour, result6325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6326_agree : tree6326 = literal6326 := by
  rw [tree6326_def, tree6324_agree, tree6325_agree]
  rfl
theorem node6326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6326 live6326 coloured6326 = result6326 := by
  rw [tree6326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6324_eq
  unfold live6324 coloured6324 at child
  try dsimp only [live6326, coloured6326]
  rw [child]
  dsimp only [result6324]
  have child := node6325_eq
  unfold live6325 coloured6325 at child
  try dsimp only [live6326, coloured6326]
  rw [child]
  dsimp only [result6325]
  try dsimp only [colour, result6326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6327_agree : tree6327 = literal6327 := by
  rw [tree6327_def]
  rfl
theorem node6327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6327 live6327 coloured6327 = result6327 := by
  rw [tree6327_def]
  try dsimp only [colour, result6327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6328_agree : tree6328 = literal6328 := by
  rw [tree6328_def, tree6326_agree, tree6327_agree]
  rfl
theorem node6328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6328 live6328 coloured6328 = result6328 := by
  rw [tree6328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6326_eq
  unfold live6326 coloured6326 at child
  try dsimp only [live6328, coloured6328]
  rw [child]
  dsimp only [result6326]
  have child := node6327_eq
  unfold live6327 coloured6327 at child
  try dsimp only [live6328, coloured6328]
  rw [child]
  dsimp only [result6327]
  try dsimp only [colour, result6328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6329_agree : tree6329 = literal6329 := by
  rw [tree6329_def]
  rfl
theorem node6329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6329 live6329 coloured6329 = result6329 := by
  rw [tree6329_def]
  try dsimp only [colour, result6329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6330_agree : tree6330 = literal6330 := by
  rw [tree6330_def, tree6328_agree, tree6329_agree]
  rfl
theorem node6330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6330 live6330 coloured6330 = result6330 := by
  rw [tree6330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6328_eq
  unfold live6328 coloured6328 at child
  try dsimp only [live6330, coloured6330]
  rw [child]
  dsimp only [result6328]
  have child := node6329_eq
  unfold live6329 coloured6329 at child
  try dsimp only [live6330, coloured6330]
  rw [child]
  dsimp only [result6329]
  try dsimp only [colour, result6330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6331_agree : tree6331 = literal6331 := by
  rw [tree6331_def]
  rfl
theorem node6331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6331 live6331 coloured6331 = result6331 := by
  rw [tree6331_def]
  try dsimp only [colour, result6331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6332_agree : tree6332 = literal6332 := by
  rw [tree6332_def, tree6330_agree, tree6331_agree]
  rfl
theorem node6332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6332 live6332 coloured6332 = result6332 := by
  rw [tree6332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6330_eq
  unfold live6330 coloured6330 at child
  try dsimp only [live6332, coloured6332]
  rw [child]
  dsimp only [result6330]
  have child := node6331_eq
  unfold live6331 coloured6331 at child
  try dsimp only [live6332, coloured6332]
  rw [child]
  dsimp only [result6331]
  try dsimp only [colour, result6332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6333_agree : tree6333 = literal6333 := by
  rw [tree6333_def]
  rfl
theorem node6333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6333 live6333 coloured6333 = result6333 := by
  rw [tree6333_def]
  try dsimp only [colour, result6333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6334_agree : tree6334 = literal6334 := by
  rw [tree6334_def, tree6332_agree, tree6333_agree]
  rfl
theorem node6334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6334 live6334 coloured6334 = result6334 := by
  rw [tree6334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node6332_eq
  unfold live6332 coloured6332 at child
  try dsimp only [live6334, coloured6334]
  rw [child]
  dsimp only [result6332]
  have child := node6333_eq
  unfold live6333 coloured6333 at child
  try dsimp only [live6334, coloured6334]
  rw [child]
  dsimp only [result6333]
  try dsimp only [colour, result6334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree6335_agree : tree6335 = literal6335 := by
  rw [tree6335_def]
  rfl
theorem node6335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6335 live6335 coloured6335 = result6335 := by
  rw [tree6335_def]
  try dsimp only [colour, result6335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
