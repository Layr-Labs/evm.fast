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
theorem tree6240_agree_conditional
    (child0 : tree6238 = literal6238)
    (child1 : tree6239 = literal6239) : tree6240 = literal6240 := by
  rw [tree6240_def, child0, child1]
  rfl
theorem node6240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6238 live6238 coloured6238 = result6238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6239 live6239 coloured6239 = result6239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6240 live6240 coloured6240 = result6240 := by
  rw [tree6240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6238 coloured6238 at child
  try dsimp only [live6240, coloured6240]
  rw [child]
  dsimp only [result6238]
  have child := child1
  unfold live6239 coloured6239 at child
  try dsimp only [live6240, coloured6240]
  rw [child]
  dsimp only [result6239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6241_agree_conditional : tree6241 = literal6241 := by
  rw [tree6241_def]
  rfl
theorem node6241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6241 live6241 coloured6241 = result6241 := by
  rw [tree6241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6242_agree_conditional
    (child0 : tree6240 = literal6240)
    (child1 : tree6241 = literal6241) : tree6242 = literal6242 := by
  rw [tree6242_def, child0, child1]
  rfl
theorem node6242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6240 live6240 coloured6240 = result6240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6241 live6241 coloured6241 = result6241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6242 live6242 coloured6242 = result6242 := by
  rw [tree6242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6240 coloured6240 at child
  try dsimp only [live6242, coloured6242]
  rw [child]
  dsimp only [result6240]
  have child := child1
  unfold live6241 coloured6241 at child
  try dsimp only [live6242, coloured6242]
  rw [child]
  dsimp only [result6241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6243_agree_conditional : tree6243 = literal6243 := by
  rw [tree6243_def]
  rfl
theorem node6243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6243 live6243 coloured6243 = result6243 := by
  rw [tree6243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6244_agree_conditional
    (child0 : tree6242 = literal6242)
    (child1 : tree6243 = literal6243) : tree6244 = literal6244 := by
  rw [tree6244_def, child0, child1]
  rfl
theorem node6244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6242 live6242 coloured6242 = result6242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6243 live6243 coloured6243 = result6243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6244 live6244 coloured6244 = result6244 := by
  rw [tree6244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6242 coloured6242 at child
  try dsimp only [live6244, coloured6244]
  rw [child]
  dsimp only [result6242]
  have child := child1
  unfold live6243 coloured6243 at child
  try dsimp only [live6244, coloured6244]
  rw [child]
  dsimp only [result6243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6245_agree_conditional : tree6245 = literal6245 := by
  rw [tree6245_def]
  rfl
theorem node6245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6245 live6245 coloured6245 = result6245 := by
  rw [tree6245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6246_agree_conditional
    (child0 : tree6244 = literal6244)
    (child1 : tree6245 = literal6245) : tree6246 = literal6246 := by
  rw [tree6246_def, child0, child1]
  rfl
theorem node6246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6244 live6244 coloured6244 = result6244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6245 live6245 coloured6245 = result6245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6246 live6246 coloured6246 = result6246 := by
  rw [tree6246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6244 coloured6244 at child
  try dsimp only [live6246, coloured6246]
  rw [child]
  dsimp only [result6244]
  have child := child1
  unfold live6245 coloured6245 at child
  try dsimp only [live6246, coloured6246]
  rw [child]
  dsimp only [result6245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6247_agree_conditional : tree6247 = literal6247 := by
  rw [tree6247_def]
  rfl
theorem node6247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6247 live6247 coloured6247 = result6247 := by
  rw [tree6247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6248_agree_conditional
    (child0 : tree6246 = literal6246)
    (child1 : tree6247 = literal6247) : tree6248 = literal6248 := by
  rw [tree6248_def, child0, child1]
  rfl
theorem node6248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6246 live6246 coloured6246 = result6246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6247 live6247 coloured6247 = result6247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6248 live6248 coloured6248 = result6248 := by
  rw [tree6248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6246 coloured6246 at child
  try dsimp only [live6248, coloured6248]
  rw [child]
  dsimp only [result6246]
  have child := child1
  unfold live6247 coloured6247 at child
  try dsimp only [live6248, coloured6248]
  rw [child]
  dsimp only [result6247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6249_agree_conditional : tree6249 = literal6249 := by
  rw [tree6249_def]
  rfl
theorem node6249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6249 live6249 coloured6249 = result6249 := by
  rw [tree6249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6250_agree_conditional
    (child0 : tree6248 = literal6248)
    (child1 : tree6249 = literal6249) : tree6250 = literal6250 := by
  rw [tree6250_def, child0, child1]
  rfl
theorem node6250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6248 live6248 coloured6248 = result6248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6249 live6249 coloured6249 = result6249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6250 live6250 coloured6250 = result6250 := by
  rw [tree6250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6248 coloured6248 at child
  try dsimp only [live6250, coloured6250]
  rw [child]
  dsimp only [result6248]
  have child := child1
  unfold live6249 coloured6249 at child
  try dsimp only [live6250, coloured6250]
  rw [child]
  dsimp only [result6249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6251_agree_conditional : tree6251 = literal6251 := by
  rw [tree6251_def]
  rfl
theorem node6251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6251 live6251 coloured6251 = result6251 := by
  rw [tree6251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6252_agree_conditional
    (child0 : tree6250 = literal6250)
    (child1 : tree6251 = literal6251) : tree6252 = literal6252 := by
  rw [tree6252_def, child0, child1]
  rfl
theorem node6252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6250 live6250 coloured6250 = result6250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6251 live6251 coloured6251 = result6251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6252 live6252 coloured6252 = result6252 := by
  rw [tree6252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6250 coloured6250 at child
  try dsimp only [live6252, coloured6252]
  rw [child]
  dsimp only [result6250]
  have child := child1
  unfold live6251 coloured6251 at child
  try dsimp only [live6252, coloured6252]
  rw [child]
  dsimp only [result6251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6253_agree_conditional : tree6253 = literal6253 := by
  rw [tree6253_def]
  rfl
theorem node6253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6253 live6253 coloured6253 = result6253 := by
  rw [tree6253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6254_agree_conditional
    (child0 : tree6252 = literal6252)
    (child1 : tree6253 = literal6253) : tree6254 = literal6254 := by
  rw [tree6254_def, child0, child1]
  rfl
theorem node6254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6252 live6252 coloured6252 = result6252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6253 live6253 coloured6253 = result6253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6254 live6254 coloured6254 = result6254 := by
  rw [tree6254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6252 coloured6252 at child
  try dsimp only [live6254, coloured6254]
  rw [child]
  dsimp only [result6252]
  have child := child1
  unfold live6253 coloured6253 at child
  try dsimp only [live6254, coloured6254]
  rw [child]
  dsimp only [result6253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6255_agree_conditional : tree6255 = literal6255 := by
  rw [tree6255_def]
  rfl
theorem node6255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6255 live6255 coloured6255 = result6255 := by
  rw [tree6255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6256_agree_conditional
    (child0 : tree6254 = literal6254)
    (child1 : tree6255 = literal6255) : tree6256 = literal6256 := by
  rw [tree6256_def, child0, child1]
  rfl
theorem node6256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6254 live6254 coloured6254 = result6254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6255 live6255 coloured6255 = result6255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6256 live6256 coloured6256 = result6256 := by
  rw [tree6256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6254 coloured6254 at child
  try dsimp only [live6256, coloured6256]
  rw [child]
  dsimp only [result6254]
  have child := child1
  unfold live6255 coloured6255 at child
  try dsimp only [live6256, coloured6256]
  rw [child]
  dsimp only [result6255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6257_agree_conditional : tree6257 = literal6257 := by
  rw [tree6257_def]
  rfl
theorem node6257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6257 live6257 coloured6257 = result6257 := by
  rw [tree6257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6258_agree_conditional
    (child0 : tree6256 = literal6256)
    (child1 : tree6257 = literal6257) : tree6258 = literal6258 := by
  rw [tree6258_def, child0, child1]
  rfl
theorem node6258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6256 live6256 coloured6256 = result6256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6257 live6257 coloured6257 = result6257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6258 live6258 coloured6258 = result6258 := by
  rw [tree6258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6256 coloured6256 at child
  try dsimp only [live6258, coloured6258]
  rw [child]
  dsimp only [result6256]
  have child := child1
  unfold live6257 coloured6257 at child
  try dsimp only [live6258, coloured6258]
  rw [child]
  dsimp only [result6257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6259_agree_conditional : tree6259 = literal6259 := by
  rw [tree6259_def]
  rfl
theorem node6259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6259 live6259 coloured6259 = result6259 := by
  rw [tree6259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6260_agree_conditional
    (child0 : tree6258 = literal6258)
    (child1 : tree6259 = literal6259) : tree6260 = literal6260 := by
  rw [tree6260_def, child0, child1]
  rfl
theorem node6260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6258 live6258 coloured6258 = result6258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6259 live6259 coloured6259 = result6259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6260 live6260 coloured6260 = result6260 := by
  rw [tree6260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6258 coloured6258 at child
  try dsimp only [live6260, coloured6260]
  rw [child]
  dsimp only [result6258]
  have child := child1
  unfold live6259 coloured6259 at child
  try dsimp only [live6260, coloured6260]
  rw [child]
  dsimp only [result6259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6261_agree_conditional : tree6261 = literal6261 := by
  rw [tree6261_def]
  rfl
theorem node6261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6261 live6261 coloured6261 = result6261 := by
  rw [tree6261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6262_agree_conditional
    (child0 : tree6260 = literal6260)
    (child1 : tree6261 = literal6261) : tree6262 = literal6262 := by
  rw [tree6262_def, child0, child1]
  rfl
theorem node6262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6260 live6260 coloured6260 = result6260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6261 live6261 coloured6261 = result6261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6262 live6262 coloured6262 = result6262 := by
  rw [tree6262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6260 coloured6260 at child
  try dsimp only [live6262, coloured6262]
  rw [child]
  dsimp only [result6260]
  have child := child1
  unfold live6261 coloured6261 at child
  try dsimp only [live6262, coloured6262]
  rw [child]
  dsimp only [result6261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6263_agree_conditional : tree6263 = literal6263 := by
  rw [tree6263_def]
  rfl
theorem node6263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6263 live6263 coloured6263 = result6263 := by
  rw [tree6263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6264_agree_conditional
    (child0 : tree6262 = literal6262)
    (child1 : tree6263 = literal6263) : tree6264 = literal6264 := by
  rw [tree6264_def, child0, child1]
  rfl
theorem node6264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6262 live6262 coloured6262 = result6262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6263 live6263 coloured6263 = result6263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6264 live6264 coloured6264 = result6264 := by
  rw [tree6264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6262 coloured6262 at child
  try dsimp only [live6264, coloured6264]
  rw [child]
  dsimp only [result6262]
  have child := child1
  unfold live6263 coloured6263 at child
  try dsimp only [live6264, coloured6264]
  rw [child]
  dsimp only [result6263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6265_agree_conditional : tree6265 = literal6265 := by
  rw [tree6265_def]
  rfl
theorem node6265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6265 live6265 coloured6265 = result6265 := by
  rw [tree6265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6266_agree_conditional
    (child0 : tree6264 = literal6264)
    (child1 : tree6265 = literal6265) : tree6266 = literal6266 := by
  rw [tree6266_def, child0, child1]
  rfl
theorem node6266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6264 live6264 coloured6264 = result6264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6265 live6265 coloured6265 = result6265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6266 live6266 coloured6266 = result6266 := by
  rw [tree6266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6264 coloured6264 at child
  try dsimp only [live6266, coloured6266]
  rw [child]
  dsimp only [result6264]
  have child := child1
  unfold live6265 coloured6265 at child
  try dsimp only [live6266, coloured6266]
  rw [child]
  dsimp only [result6265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6267_agree_conditional : tree6267 = literal6267 := by
  rw [tree6267_def]
  rfl
theorem node6267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6267 live6267 coloured6267 = result6267 := by
  rw [tree6267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6268_agree_conditional
    (child0 : tree6266 = literal6266)
    (child1 : tree6267 = literal6267) : tree6268 = literal6268 := by
  rw [tree6268_def, child0, child1]
  rfl
theorem node6268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6266 live6266 coloured6266 = result6266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6267 live6267 coloured6267 = result6267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6268 live6268 coloured6268 = result6268 := by
  rw [tree6268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6266 coloured6266 at child
  try dsimp only [live6268, coloured6268]
  rw [child]
  dsimp only [result6266]
  have child := child1
  unfold live6267 coloured6267 at child
  try dsimp only [live6268, coloured6268]
  rw [child]
  dsimp only [result6267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6269_agree_conditional : tree6269 = literal6269 := by
  rw [tree6269_def]
  rfl
theorem node6269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6269 live6269 coloured6269 = result6269 := by
  rw [tree6269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6270_agree_conditional
    (child0 : tree6268 = literal6268)
    (child1 : tree6269 = literal6269) : tree6270 = literal6270 := by
  rw [tree6270_def, child0, child1]
  rfl
theorem node6270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6268 live6268 coloured6268 = result6268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6269 live6269 coloured6269 = result6269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6270 live6270 coloured6270 = result6270 := by
  rw [tree6270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6268 coloured6268 at child
  try dsimp only [live6270, coloured6270]
  rw [child]
  dsimp only [result6268]
  have child := child1
  unfold live6269 coloured6269 at child
  try dsimp only [live6270, coloured6270]
  rw [child]
  dsimp only [result6269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6271_agree_conditional : tree6271 = literal6271 := by
  rw [tree6271_def]
  rfl
theorem node6271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6271 live6271 coloured6271 = result6271 := by
  rw [tree6271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6272_agree_conditional
    (child0 : tree6270 = literal6270)
    (child1 : tree6271 = literal6271) : tree6272 = literal6272 := by
  rw [tree6272_def, child0, child1]
  rfl
theorem node6272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6270 live6270 coloured6270 = result6270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6271 live6271 coloured6271 = result6271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6272 live6272 coloured6272 = result6272 := by
  rw [tree6272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6270 coloured6270 at child
  try dsimp only [live6272, coloured6272]
  rw [child]
  dsimp only [result6270]
  have child := child1
  unfold live6271 coloured6271 at child
  try dsimp only [live6272, coloured6272]
  rw [child]
  dsimp only [result6271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6273_agree_conditional : tree6273 = literal6273 := by
  rw [tree6273_def]
  rfl
theorem node6273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6273 live6273 coloured6273 = result6273 := by
  rw [tree6273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6274_agree_conditional
    (child0 : tree6272 = literal6272)
    (child1 : tree6273 = literal6273) : tree6274 = literal6274 := by
  rw [tree6274_def, child0, child1]
  rfl
theorem node6274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6272 live6272 coloured6272 = result6272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6273 live6273 coloured6273 = result6273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6274 live6274 coloured6274 = result6274 := by
  rw [tree6274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6272 coloured6272 at child
  try dsimp only [live6274, coloured6274]
  rw [child]
  dsimp only [result6272]
  have child := child1
  unfold live6273 coloured6273 at child
  try dsimp only [live6274, coloured6274]
  rw [child]
  dsimp only [result6273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6275_agree_conditional : tree6275 = literal6275 := by
  rw [tree6275_def]
  rfl
theorem node6275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6275 live6275 coloured6275 = result6275 := by
  rw [tree6275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6276_agree_conditional
    (child0 : tree6274 = literal6274)
    (child1 : tree6275 = literal6275) : tree6276 = literal6276 := by
  rw [tree6276_def, child0, child1]
  rfl
theorem node6276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6274 live6274 coloured6274 = result6274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6275 live6275 coloured6275 = result6275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6276 live6276 coloured6276 = result6276 := by
  rw [tree6276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6274 coloured6274 at child
  try dsimp only [live6276, coloured6276]
  rw [child]
  dsimp only [result6274]
  have child := child1
  unfold live6275 coloured6275 at child
  try dsimp only [live6276, coloured6276]
  rw [child]
  dsimp only [result6275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6277_agree_conditional : tree6277 = literal6277 := by
  rw [tree6277_def]
  rfl
theorem node6277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6277 live6277 coloured6277 = result6277 := by
  rw [tree6277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6278_agree_conditional
    (child0 : tree6276 = literal6276)
    (child1 : tree6277 = literal6277) : tree6278 = literal6278 := by
  rw [tree6278_def, child0, child1]
  rfl
theorem node6278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6276 live6276 coloured6276 = result6276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6277 live6277 coloured6277 = result6277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6278 live6278 coloured6278 = result6278 := by
  rw [tree6278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6276 coloured6276 at child
  try dsimp only [live6278, coloured6278]
  rw [child]
  dsimp only [result6276]
  have child := child1
  unfold live6277 coloured6277 at child
  try dsimp only [live6278, coloured6278]
  rw [child]
  dsimp only [result6277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6279_agree_conditional : tree6279 = literal6279 := by
  rw [tree6279_def]
  rfl
theorem node6279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6279 live6279 coloured6279 = result6279 := by
  rw [tree6279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6280_agree_conditional
    (child0 : tree6278 = literal6278)
    (child1 : tree6279 = literal6279) : tree6280 = literal6280 := by
  rw [tree6280_def, child0, child1]
  rfl
theorem node6280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6278 live6278 coloured6278 = result6278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6279 live6279 coloured6279 = result6279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6280 live6280 coloured6280 = result6280 := by
  rw [tree6280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6278 coloured6278 at child
  try dsimp only [live6280, coloured6280]
  rw [child]
  dsimp only [result6278]
  have child := child1
  unfold live6279 coloured6279 at child
  try dsimp only [live6280, coloured6280]
  rw [child]
  dsimp only [result6279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6281_agree_conditional : tree6281 = literal6281 := by
  rw [tree6281_def]
  rfl
theorem node6281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6281 live6281 coloured6281 = result6281 := by
  rw [tree6281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6282_agree_conditional
    (child0 : tree6280 = literal6280)
    (child1 : tree6281 = literal6281) : tree6282 = literal6282 := by
  rw [tree6282_def, child0, child1]
  rfl
theorem node6282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6280 live6280 coloured6280 = result6280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6281 live6281 coloured6281 = result6281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6282 live6282 coloured6282 = result6282 := by
  rw [tree6282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6280 coloured6280 at child
  try dsimp only [live6282, coloured6282]
  rw [child]
  dsimp only [result6280]
  have child := child1
  unfold live6281 coloured6281 at child
  try dsimp only [live6282, coloured6282]
  rw [child]
  dsimp only [result6281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6283_agree_conditional : tree6283 = literal6283 := by
  rw [tree6283_def]
  rfl
theorem node6283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6283 live6283 coloured6283 = result6283 := by
  rw [tree6283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6284_agree_conditional
    (child0 : tree6282 = literal6282)
    (child1 : tree6283 = literal6283) : tree6284 = literal6284 := by
  rw [tree6284_def, child0, child1]
  rfl
theorem node6284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6282 live6282 coloured6282 = result6282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6283 live6283 coloured6283 = result6283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6284 live6284 coloured6284 = result6284 := by
  rw [tree6284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6282 coloured6282 at child
  try dsimp only [live6284, coloured6284]
  rw [child]
  dsimp only [result6282]
  have child := child1
  unfold live6283 coloured6283 at child
  try dsimp only [live6284, coloured6284]
  rw [child]
  dsimp only [result6283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6285_agree_conditional : tree6285 = literal6285 := by
  rw [tree6285_def]
  rfl
theorem node6285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6285 live6285 coloured6285 = result6285 := by
  rw [tree6285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6286_agree_conditional
    (child0 : tree6284 = literal6284)
    (child1 : tree6285 = literal6285) : tree6286 = literal6286 := by
  rw [tree6286_def, child0, child1]
  rfl
theorem node6286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6284 live6284 coloured6284 = result6284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6285 live6285 coloured6285 = result6285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6286 live6286 coloured6286 = result6286 := by
  rw [tree6286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6284 coloured6284 at child
  try dsimp only [live6286, coloured6286]
  rw [child]
  dsimp only [result6284]
  have child := child1
  unfold live6285 coloured6285 at child
  try dsimp only [live6286, coloured6286]
  rw [child]
  dsimp only [result6285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6287_agree_conditional : tree6287 = literal6287 := by
  rw [tree6287_def]
  rfl
theorem node6287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6287 live6287 coloured6287 = result6287 := by
  rw [tree6287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6288_agree_conditional
    (child0 : tree6286 = literal6286)
    (child1 : tree6287 = literal6287) : tree6288 = literal6288 := by
  rw [tree6288_def, child0, child1]
  rfl
theorem node6288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6286 live6286 coloured6286 = result6286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6287 live6287 coloured6287 = result6287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6288 live6288 coloured6288 = result6288 := by
  rw [tree6288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6286 coloured6286 at child
  try dsimp only [live6288, coloured6288]
  rw [child]
  dsimp only [result6286]
  have child := child1
  unfold live6287 coloured6287 at child
  try dsimp only [live6288, coloured6288]
  rw [child]
  dsimp only [result6287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6289_agree_conditional : tree6289 = literal6289 := by
  rw [tree6289_def]
  rfl
theorem node6289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6289 live6289 coloured6289 = result6289 := by
  rw [tree6289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6290_agree_conditional
    (child0 : tree6288 = literal6288)
    (child1 : tree6289 = literal6289) : tree6290 = literal6290 := by
  rw [tree6290_def, child0, child1]
  rfl
theorem node6290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6288 live6288 coloured6288 = result6288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6289 live6289 coloured6289 = result6289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6290 live6290 coloured6290 = result6290 := by
  rw [tree6290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6288 coloured6288 at child
  try dsimp only [live6290, coloured6290]
  rw [child]
  dsimp only [result6288]
  have child := child1
  unfold live6289 coloured6289 at child
  try dsimp only [live6290, coloured6290]
  rw [child]
  dsimp only [result6289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6291_agree_conditional : tree6291 = literal6291 := by
  rw [tree6291_def]
  rfl
theorem node6291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6291 live6291 coloured6291 = result6291 := by
  rw [tree6291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6292_agree_conditional
    (child0 : tree6290 = literal6290)
    (child1 : tree6291 = literal6291) : tree6292 = literal6292 := by
  rw [tree6292_def, child0, child1]
  rfl
theorem node6292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6290 live6290 coloured6290 = result6290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6291 live6291 coloured6291 = result6291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6292 live6292 coloured6292 = result6292 := by
  rw [tree6292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6290 coloured6290 at child
  try dsimp only [live6292, coloured6292]
  rw [child]
  dsimp only [result6290]
  have child := child1
  unfold live6291 coloured6291 at child
  try dsimp only [live6292, coloured6292]
  rw [child]
  dsimp only [result6291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6293_agree_conditional : tree6293 = literal6293 := by
  rw [tree6293_def]
  rfl
theorem node6293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6293 live6293 coloured6293 = result6293 := by
  rw [tree6293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6294_agree_conditional
    (child0 : tree6292 = literal6292)
    (child1 : tree6293 = literal6293) : tree6294 = literal6294 := by
  rw [tree6294_def, child0, child1]
  rfl
theorem node6294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6292 live6292 coloured6292 = result6292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6293 live6293 coloured6293 = result6293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6294 live6294 coloured6294 = result6294 := by
  rw [tree6294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6292 coloured6292 at child
  try dsimp only [live6294, coloured6294]
  rw [child]
  dsimp only [result6292]
  have child := child1
  unfold live6293 coloured6293 at child
  try dsimp only [live6294, coloured6294]
  rw [child]
  dsimp only [result6293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6295_agree_conditional : tree6295 = literal6295 := by
  rw [tree6295_def]
  rfl
theorem node6295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6295 live6295 coloured6295 = result6295 := by
  rw [tree6295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6296_agree_conditional
    (child0 : tree6294 = literal6294)
    (child1 : tree6295 = literal6295) : tree6296 = literal6296 := by
  rw [tree6296_def, child0, child1]
  rfl
theorem node6296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6294 live6294 coloured6294 = result6294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6295 live6295 coloured6295 = result6295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6296 live6296 coloured6296 = result6296 := by
  rw [tree6296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6294 coloured6294 at child
  try dsimp only [live6296, coloured6296]
  rw [child]
  dsimp only [result6294]
  have child := child1
  unfold live6295 coloured6295 at child
  try dsimp only [live6296, coloured6296]
  rw [child]
  dsimp only [result6295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6297_agree_conditional : tree6297 = literal6297 := by
  rw [tree6297_def]
  rfl
theorem node6297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6297 live6297 coloured6297 = result6297 := by
  rw [tree6297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6298_agree_conditional
    (child0 : tree6296 = literal6296)
    (child1 : tree6297 = literal6297) : tree6298 = literal6298 := by
  rw [tree6298_def, child0, child1]
  rfl
theorem node6298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6296 live6296 coloured6296 = result6296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6297 live6297 coloured6297 = result6297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6298 live6298 coloured6298 = result6298 := by
  rw [tree6298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6296 coloured6296 at child
  try dsimp only [live6298, coloured6298]
  rw [child]
  dsimp only [result6296]
  have child := child1
  unfold live6297 coloured6297 at child
  try dsimp only [live6298, coloured6298]
  rw [child]
  dsimp only [result6297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6299_agree_conditional : tree6299 = literal6299 := by
  rw [tree6299_def]
  rfl
theorem node6299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6299 live6299 coloured6299 = result6299 := by
  rw [tree6299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6300_agree_conditional
    (child0 : tree6298 = literal6298)
    (child1 : tree6299 = literal6299) : tree6300 = literal6300 := by
  rw [tree6300_def, child0, child1]
  rfl
theorem node6300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6298 live6298 coloured6298 = result6298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6299 live6299 coloured6299 = result6299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6300 live6300 coloured6300 = result6300 := by
  rw [tree6300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6298 coloured6298 at child
  try dsimp only [live6300, coloured6300]
  rw [child]
  dsimp only [result6298]
  have child := child1
  unfold live6299 coloured6299 at child
  try dsimp only [live6300, coloured6300]
  rw [child]
  dsimp only [result6299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6301_agree_conditional : tree6301 = literal6301 := by
  rw [tree6301_def]
  rfl
theorem node6301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6301 live6301 coloured6301 = result6301 := by
  rw [tree6301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6302_agree_conditional
    (child0 : tree6300 = literal6300)
    (child1 : tree6301 = literal6301) : tree6302 = literal6302 := by
  rw [tree6302_def, child0, child1]
  rfl
theorem node6302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6300 live6300 coloured6300 = result6300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6301 live6301 coloured6301 = result6301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6302 live6302 coloured6302 = result6302 := by
  rw [tree6302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6300 coloured6300 at child
  try dsimp only [live6302, coloured6302]
  rw [child]
  dsimp only [result6300]
  have child := child1
  unfold live6301 coloured6301 at child
  try dsimp only [live6302, coloured6302]
  rw [child]
  dsimp only [result6301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6303_agree_conditional : tree6303 = literal6303 := by
  rw [tree6303_def]
  rfl
theorem node6303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6303 live6303 coloured6303 = result6303 := by
  rw [tree6303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6304_agree_conditional
    (child0 : tree6302 = literal6302)
    (child1 : tree6303 = literal6303) : tree6304 = literal6304 := by
  rw [tree6304_def, child0, child1]
  rfl
theorem node6304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6302 live6302 coloured6302 = result6302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6303 live6303 coloured6303 = result6303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6304 live6304 coloured6304 = result6304 := by
  rw [tree6304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6302 coloured6302 at child
  try dsimp only [live6304, coloured6304]
  rw [child]
  dsimp only [result6302]
  have child := child1
  unfold live6303 coloured6303 at child
  try dsimp only [live6304, coloured6304]
  rw [child]
  dsimp only [result6303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6305_agree_conditional : tree6305 = literal6305 := by
  rw [tree6305_def]
  rfl
theorem node6305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6305 live6305 coloured6305 = result6305 := by
  rw [tree6305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6306_agree_conditional
    (child0 : tree6304 = literal6304)
    (child1 : tree6305 = literal6305) : tree6306 = literal6306 := by
  rw [tree6306_def, child0, child1]
  rfl
theorem node6306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6304 live6304 coloured6304 = result6304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6305 live6305 coloured6305 = result6305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6306 live6306 coloured6306 = result6306 := by
  rw [tree6306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6304 coloured6304 at child
  try dsimp only [live6306, coloured6306]
  rw [child]
  dsimp only [result6304]
  have child := child1
  unfold live6305 coloured6305 at child
  try dsimp only [live6306, coloured6306]
  rw [child]
  dsimp only [result6305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6307_agree_conditional : tree6307 = literal6307 := by
  rw [tree6307_def]
  rfl
theorem node6307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6307 live6307 coloured6307 = result6307 := by
  rw [tree6307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6308_agree_conditional
    (child0 : tree6306 = literal6306)
    (child1 : tree6307 = literal6307) : tree6308 = literal6308 := by
  rw [tree6308_def, child0, child1]
  rfl
theorem node6308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6306 live6306 coloured6306 = result6306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6307 live6307 coloured6307 = result6307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6308 live6308 coloured6308 = result6308 := by
  rw [tree6308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6306 coloured6306 at child
  try dsimp only [live6308, coloured6308]
  rw [child]
  dsimp only [result6306]
  have child := child1
  unfold live6307 coloured6307 at child
  try dsimp only [live6308, coloured6308]
  rw [child]
  dsimp only [result6307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6309_agree_conditional : tree6309 = literal6309 := by
  rw [tree6309_def]
  rfl
theorem node6309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6309 live6309 coloured6309 = result6309 := by
  rw [tree6309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6310_agree_conditional
    (child0 : tree6308 = literal6308)
    (child1 : tree6309 = literal6309) : tree6310 = literal6310 := by
  rw [tree6310_def, child0, child1]
  rfl
theorem node6310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6308 live6308 coloured6308 = result6308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6309 live6309 coloured6309 = result6309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6310 live6310 coloured6310 = result6310 := by
  rw [tree6310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6308 coloured6308 at child
  try dsimp only [live6310, coloured6310]
  rw [child]
  dsimp only [result6308]
  have child := child1
  unfold live6309 coloured6309 at child
  try dsimp only [live6310, coloured6310]
  rw [child]
  dsimp only [result6309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6311_agree_conditional : tree6311 = literal6311 := by
  rw [tree6311_def]
  rfl
theorem node6311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6311 live6311 coloured6311 = result6311 := by
  rw [tree6311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6312_agree_conditional
    (child0 : tree6310 = literal6310)
    (child1 : tree6311 = literal6311) : tree6312 = literal6312 := by
  rw [tree6312_def, child0, child1]
  rfl
theorem node6312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6310 live6310 coloured6310 = result6310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6311 live6311 coloured6311 = result6311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6312 live6312 coloured6312 = result6312 := by
  rw [tree6312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6310 coloured6310 at child
  try dsimp only [live6312, coloured6312]
  rw [child]
  dsimp only [result6310]
  have child := child1
  unfold live6311 coloured6311 at child
  try dsimp only [live6312, coloured6312]
  rw [child]
  dsimp only [result6311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6313_agree_conditional : tree6313 = literal6313 := by
  rw [tree6313_def]
  rfl
theorem node6313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6313 live6313 coloured6313 = result6313 := by
  rw [tree6313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6314_agree_conditional
    (child0 : tree6312 = literal6312)
    (child1 : tree6313 = literal6313) : tree6314 = literal6314 := by
  rw [tree6314_def, child0, child1]
  rfl
theorem node6314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6312 live6312 coloured6312 = result6312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6313 live6313 coloured6313 = result6313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6314 live6314 coloured6314 = result6314 := by
  rw [tree6314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6312 coloured6312 at child
  try dsimp only [live6314, coloured6314]
  rw [child]
  dsimp only [result6312]
  have child := child1
  unfold live6313 coloured6313 at child
  try dsimp only [live6314, coloured6314]
  rw [child]
  dsimp only [result6313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6315_agree_conditional : tree6315 = literal6315 := by
  rw [tree6315_def]
  rfl
theorem node6315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6315 live6315 coloured6315 = result6315 := by
  rw [tree6315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6316_agree_conditional
    (child0 : tree6314 = literal6314)
    (child1 : tree6315 = literal6315) : tree6316 = literal6316 := by
  rw [tree6316_def, child0, child1]
  rfl
theorem node6316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6314 live6314 coloured6314 = result6314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6315 live6315 coloured6315 = result6315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6316 live6316 coloured6316 = result6316 := by
  rw [tree6316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6314 coloured6314 at child
  try dsimp only [live6316, coloured6316]
  rw [child]
  dsimp only [result6314]
  have child := child1
  unfold live6315 coloured6315 at child
  try dsimp only [live6316, coloured6316]
  rw [child]
  dsimp only [result6315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6317_agree_conditional : tree6317 = literal6317 := by
  rw [tree6317_def]
  rfl
theorem node6317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6317 live6317 coloured6317 = result6317 := by
  rw [tree6317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6318_agree_conditional
    (child0 : tree6316 = literal6316)
    (child1 : tree6317 = literal6317) : tree6318 = literal6318 := by
  rw [tree6318_def, child0, child1]
  rfl
theorem node6318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6316 live6316 coloured6316 = result6316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6317 live6317 coloured6317 = result6317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6318 live6318 coloured6318 = result6318 := by
  rw [tree6318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6316 coloured6316 at child
  try dsimp only [live6318, coloured6318]
  rw [child]
  dsimp only [result6316]
  have child := child1
  unfold live6317 coloured6317 at child
  try dsimp only [live6318, coloured6318]
  rw [child]
  dsimp only [result6317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6319_agree_conditional : tree6319 = literal6319 := by
  rw [tree6319_def]
  rfl
theorem node6319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6319 live6319 coloured6319 = result6319 := by
  rw [tree6319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6320_agree_conditional
    (child0 : tree6318 = literal6318)
    (child1 : tree6319 = literal6319) : tree6320 = literal6320 := by
  rw [tree6320_def, child0, child1]
  rfl
theorem node6320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6318 live6318 coloured6318 = result6318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6319 live6319 coloured6319 = result6319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6320 live6320 coloured6320 = result6320 := by
  rw [tree6320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6318 coloured6318 at child
  try dsimp only [live6320, coloured6320]
  rw [child]
  dsimp only [result6318]
  have child := child1
  unfold live6319 coloured6319 at child
  try dsimp only [live6320, coloured6320]
  rw [child]
  dsimp only [result6319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6321_agree_conditional : tree6321 = literal6321 := by
  rw [tree6321_def]
  rfl
theorem node6321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6321 live6321 coloured6321 = result6321 := by
  rw [tree6321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6322_agree_conditional
    (child0 : tree6320 = literal6320)
    (child1 : tree6321 = literal6321) : tree6322 = literal6322 := by
  rw [tree6322_def, child0, child1]
  rfl
theorem node6322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6320 live6320 coloured6320 = result6320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6321 live6321 coloured6321 = result6321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6322 live6322 coloured6322 = result6322 := by
  rw [tree6322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6320 coloured6320 at child
  try dsimp only [live6322, coloured6322]
  rw [child]
  dsimp only [result6320]
  have child := child1
  unfold live6321 coloured6321 at child
  try dsimp only [live6322, coloured6322]
  rw [child]
  dsimp only [result6321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6323_agree_conditional : tree6323 = literal6323 := by
  rw [tree6323_def]
  rfl
theorem node6323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6323 live6323 coloured6323 = result6323 := by
  rw [tree6323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6324_agree_conditional
    (child0 : tree6322 = literal6322)
    (child1 : tree6323 = literal6323) : tree6324 = literal6324 := by
  rw [tree6324_def, child0, child1]
  rfl
theorem node6324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6322 live6322 coloured6322 = result6322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6323 live6323 coloured6323 = result6323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6324 live6324 coloured6324 = result6324 := by
  rw [tree6324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6322 coloured6322 at child
  try dsimp only [live6324, coloured6324]
  rw [child]
  dsimp only [result6322]
  have child := child1
  unfold live6323 coloured6323 at child
  try dsimp only [live6324, coloured6324]
  rw [child]
  dsimp only [result6323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6325_agree_conditional : tree6325 = literal6325 := by
  rw [tree6325_def]
  rfl
theorem node6325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6325 live6325 coloured6325 = result6325 := by
  rw [tree6325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6326_agree_conditional
    (child0 : tree6324 = literal6324)
    (child1 : tree6325 = literal6325) : tree6326 = literal6326 := by
  rw [tree6326_def, child0, child1]
  rfl
theorem node6326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6324 live6324 coloured6324 = result6324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6325 live6325 coloured6325 = result6325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6326 live6326 coloured6326 = result6326 := by
  rw [tree6326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6324 coloured6324 at child
  try dsimp only [live6326, coloured6326]
  rw [child]
  dsimp only [result6324]
  have child := child1
  unfold live6325 coloured6325 at child
  try dsimp only [live6326, coloured6326]
  rw [child]
  dsimp only [result6325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6327_agree_conditional : tree6327 = literal6327 := by
  rw [tree6327_def]
  rfl
theorem node6327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6327 live6327 coloured6327 = result6327 := by
  rw [tree6327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6328_agree_conditional
    (child0 : tree6326 = literal6326)
    (child1 : tree6327 = literal6327) : tree6328 = literal6328 := by
  rw [tree6328_def, child0, child1]
  rfl
theorem node6328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6326 live6326 coloured6326 = result6326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6327 live6327 coloured6327 = result6327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6328 live6328 coloured6328 = result6328 := by
  rw [tree6328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6326 coloured6326 at child
  try dsimp only [live6328, coloured6328]
  rw [child]
  dsimp only [result6326]
  have child := child1
  unfold live6327 coloured6327 at child
  try dsimp only [live6328, coloured6328]
  rw [child]
  dsimp only [result6327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6329_agree_conditional : tree6329 = literal6329 := by
  rw [tree6329_def]
  rfl
theorem node6329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6329 live6329 coloured6329 = result6329 := by
  rw [tree6329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6330_agree_conditional
    (child0 : tree6328 = literal6328)
    (child1 : tree6329 = literal6329) : tree6330 = literal6330 := by
  rw [tree6330_def, child0, child1]
  rfl
theorem node6330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6328 live6328 coloured6328 = result6328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6329 live6329 coloured6329 = result6329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6330 live6330 coloured6330 = result6330 := by
  rw [tree6330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6328 coloured6328 at child
  try dsimp only [live6330, coloured6330]
  rw [child]
  dsimp only [result6328]
  have child := child1
  unfold live6329 coloured6329 at child
  try dsimp only [live6330, coloured6330]
  rw [child]
  dsimp only [result6329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6331_agree_conditional : tree6331 = literal6331 := by
  rw [tree6331_def]
  rfl
theorem node6331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6331 live6331 coloured6331 = result6331 := by
  rw [tree6331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6332_agree_conditional
    (child0 : tree6330 = literal6330)
    (child1 : tree6331 = literal6331) : tree6332 = literal6332 := by
  rw [tree6332_def, child0, child1]
  rfl
theorem node6332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6330 live6330 coloured6330 = result6330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6331 live6331 coloured6331 = result6331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6332 live6332 coloured6332 = result6332 := by
  rw [tree6332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6330 coloured6330 at child
  try dsimp only [live6332, coloured6332]
  rw [child]
  dsimp only [result6330]
  have child := child1
  unfold live6331 coloured6331 at child
  try dsimp only [live6332, coloured6332]
  rw [child]
  dsimp only [result6331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6333_agree_conditional : tree6333 = literal6333 := by
  rw [tree6333_def]
  rfl
theorem node6333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6333 live6333 coloured6333 = result6333 := by
  rw [tree6333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6334_agree_conditional
    (child0 : tree6332 = literal6332)
    (child1 : tree6333 = literal6333) : tree6334 = literal6334 := by
  rw [tree6334_def, child0, child1]
  rfl
theorem node6334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6332 live6332 coloured6332 = result6332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6333 live6333 coloured6333 = result6333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6334 live6334 coloured6334 = result6334 := by
  rw [tree6334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6332 coloured6332 at child
  try dsimp only [live6334, coloured6334]
  rw [child]
  dsimp only [result6332]
  have child := child1
  unfold live6333 coloured6333 at child
  try dsimp only [live6334, coloured6334]
  rw [child]
  dsimp only [result6333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6335_agree_conditional : tree6335 = literal6335 := by
  rw [tree6335_def]
  rfl
theorem node6335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6335 live6335 coloured6335 = result6335 := by
  rw [tree6335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
