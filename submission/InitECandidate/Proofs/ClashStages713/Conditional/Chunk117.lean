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
theorem tree11232_agree_conditional
    (child0 : tree11230 = literal11230)
    (child1 : tree11231 = literal11231) : tree11232 = literal11232 := by
  rw [tree11232_def, child0, child1]
  rfl
theorem node11232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11230 live11230 coloured11230 = result11230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11231 live11231 coloured11231 = result11231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11232 live11232 coloured11232 = result11232 := by
  rw [tree11232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11230 coloured11230 at child
  try dsimp only [live11232, coloured11232]
  rw [child]
  dsimp only [result11230]
  have child := child1
  unfold live11231 coloured11231 at child
  try dsimp only [live11232, coloured11232]
  rw [child]
  dsimp only [result11231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11233_agree_conditional : tree11233 = literal11233 := by
  rw [tree11233_def]
  rfl
theorem node11233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11233 live11233 coloured11233 = result11233 := by
  rw [tree11233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11234_agree_conditional
    (child0 : tree11232 = literal11232)
    (child1 : tree11233 = literal11233) : tree11234 = literal11234 := by
  rw [tree11234_def, child0, child1]
  rfl
theorem node11234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11232 live11232 coloured11232 = result11232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11233 live11233 coloured11233 = result11233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11234 live11234 coloured11234 = result11234 := by
  rw [tree11234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11232 coloured11232 at child
  try dsimp only [live11234, coloured11234]
  rw [child]
  dsimp only [result11232]
  have child := child1
  unfold live11233 coloured11233 at child
  try dsimp only [live11234, coloured11234]
  rw [child]
  dsimp only [result11233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11235_agree_conditional : tree11235 = literal11235 := by
  rw [tree11235_def]
  rfl
theorem node11235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11235 live11235 coloured11235 = result11235 := by
  rw [tree11235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11236_agree_conditional
    (child0 : tree11234 = literal11234)
    (child1 : tree11235 = literal11235) : tree11236 = literal11236 := by
  rw [tree11236_def, child0, child1]
  rfl
theorem node11236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11234 live11234 coloured11234 = result11234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11235 live11235 coloured11235 = result11235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11236 live11236 coloured11236 = result11236 := by
  rw [tree11236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11234 coloured11234 at child
  try dsimp only [live11236, coloured11236]
  rw [child]
  dsimp only [result11234]
  have child := child1
  unfold live11235 coloured11235 at child
  try dsimp only [live11236, coloured11236]
  rw [child]
  dsimp only [result11235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11237_agree_conditional : tree11237 = literal11237 := by
  rw [tree11237_def]
  rfl
theorem node11237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11237 live11237 coloured11237 = result11237 := by
  rw [tree11237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11238_agree_conditional
    (child0 : tree11236 = literal11236)
    (child1 : tree11237 = literal11237) : tree11238 = literal11238 := by
  rw [tree11238_def, child0, child1]
  rfl
theorem node11238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11236 live11236 coloured11236 = result11236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11237 live11237 coloured11237 = result11237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11238 live11238 coloured11238 = result11238 := by
  rw [tree11238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11236 coloured11236 at child
  try dsimp only [live11238, coloured11238]
  rw [child]
  dsimp only [result11236]
  have child := child1
  unfold live11237 coloured11237 at child
  try dsimp only [live11238, coloured11238]
  rw [child]
  dsimp only [result11237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11239_agree_conditional : tree11239 = literal11239 := by
  rw [tree11239_def]
  rfl
theorem node11239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11239 live11239 coloured11239 = result11239 := by
  rw [tree11239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11240_agree_conditional
    (child0 : tree11238 = literal11238)
    (child1 : tree11239 = literal11239) : tree11240 = literal11240 := by
  rw [tree11240_def, child0, child1]
  rfl
theorem node11240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11238 live11238 coloured11238 = result11238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11239 live11239 coloured11239 = result11239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11240 live11240 coloured11240 = result11240 := by
  rw [tree11240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11238 coloured11238 at child
  try dsimp only [live11240, coloured11240]
  rw [child]
  dsimp only [result11238]
  have child := child1
  unfold live11239 coloured11239 at child
  try dsimp only [live11240, coloured11240]
  rw [child]
  dsimp only [result11239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11241_agree_conditional : tree11241 = literal11241 := by
  rw [tree11241_def]
  rfl
theorem node11241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11241 live11241 coloured11241 = result11241 := by
  rw [tree11241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11242_agree_conditional
    (child0 : tree11240 = literal11240)
    (child1 : tree11241 = literal11241) : tree11242 = literal11242 := by
  rw [tree11242_def, child0, child1]
  rfl
theorem node11242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11240 live11240 coloured11240 = result11240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11241 live11241 coloured11241 = result11241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11242 live11242 coloured11242 = result11242 := by
  rw [tree11242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11240 coloured11240 at child
  try dsimp only [live11242, coloured11242]
  rw [child]
  dsimp only [result11240]
  have child := child1
  unfold live11241 coloured11241 at child
  try dsimp only [live11242, coloured11242]
  rw [child]
  dsimp only [result11241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11243_agree_conditional : tree11243 = literal11243 := by
  rw [tree11243_def]
  rfl
theorem node11243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11243 live11243 coloured11243 = result11243 := by
  rw [tree11243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11244_agree_conditional
    (child0 : tree11242 = literal11242)
    (child1 : tree11243 = literal11243) : tree11244 = literal11244 := by
  rw [tree11244_def, child0, child1]
  rfl
theorem node11244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11242 live11242 coloured11242 = result11242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11243 live11243 coloured11243 = result11243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11244 live11244 coloured11244 = result11244 := by
  rw [tree11244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11242 coloured11242 at child
  try dsimp only [live11244, coloured11244]
  rw [child]
  dsimp only [result11242]
  have child := child1
  unfold live11243 coloured11243 at child
  try dsimp only [live11244, coloured11244]
  rw [child]
  dsimp only [result11243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11245_agree_conditional : tree11245 = literal11245 := by
  rw [tree11245_def]
  rfl
theorem node11245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11245 live11245 coloured11245 = result11245 := by
  rw [tree11245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11246_agree_conditional
    (child0 : tree11244 = literal11244)
    (child1 : tree11245 = literal11245) : tree11246 = literal11246 := by
  rw [tree11246_def, child0, child1]
  rfl
theorem node11246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11244 live11244 coloured11244 = result11244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11245 live11245 coloured11245 = result11245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11246 live11246 coloured11246 = result11246 := by
  rw [tree11246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11244 coloured11244 at child
  try dsimp only [live11246, coloured11246]
  rw [child]
  dsimp only [result11244]
  have child := child1
  unfold live11245 coloured11245 at child
  try dsimp only [live11246, coloured11246]
  rw [child]
  dsimp only [result11245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11247_agree_conditional : tree11247 = literal11247 := by
  rw [tree11247_def]
  rfl
theorem node11247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11247 live11247 coloured11247 = result11247 := by
  rw [tree11247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11248_agree_conditional
    (child0 : tree11246 = literal11246)
    (child1 : tree11247 = literal11247) : tree11248 = literal11248 := by
  rw [tree11248_def, child0, child1]
  rfl
theorem node11248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11246 live11246 coloured11246 = result11246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11247 live11247 coloured11247 = result11247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11248 live11248 coloured11248 = result11248 := by
  rw [tree11248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11246 coloured11246 at child
  try dsimp only [live11248, coloured11248]
  rw [child]
  dsimp only [result11246]
  have child := child1
  unfold live11247 coloured11247 at child
  try dsimp only [live11248, coloured11248]
  rw [child]
  dsimp only [result11247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11249_agree_conditional : tree11249 = literal11249 := by
  rw [tree11249_def]
  rfl
theorem node11249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11249 live11249 coloured11249 = result11249 := by
  rw [tree11249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11250_agree_conditional
    (child0 : tree11248 = literal11248)
    (child1 : tree11249 = literal11249) : tree11250 = literal11250 := by
  rw [tree11250_def, child0, child1]
  rfl
theorem node11250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11248 live11248 coloured11248 = result11248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11249 live11249 coloured11249 = result11249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11250 live11250 coloured11250 = result11250 := by
  rw [tree11250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11248 coloured11248 at child
  try dsimp only [live11250, coloured11250]
  rw [child]
  dsimp only [result11248]
  have child := child1
  unfold live11249 coloured11249 at child
  try dsimp only [live11250, coloured11250]
  rw [child]
  dsimp only [result11249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11251_agree_conditional : tree11251 = literal11251 := by
  rw [tree11251_def]
  rfl
theorem node11251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11251 live11251 coloured11251 = result11251 := by
  rw [tree11251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11252_agree_conditional
    (child0 : tree11250 = literal11250)
    (child1 : tree11251 = literal11251) : tree11252 = literal11252 := by
  rw [tree11252_def, child0, child1]
  rfl
theorem node11252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11250 live11250 coloured11250 = result11250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11251 live11251 coloured11251 = result11251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11252 live11252 coloured11252 = result11252 := by
  rw [tree11252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11250 coloured11250 at child
  try dsimp only [live11252, coloured11252]
  rw [child]
  dsimp only [result11250]
  have child := child1
  unfold live11251 coloured11251 at child
  try dsimp only [live11252, coloured11252]
  rw [child]
  dsimp only [result11251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11253_agree_conditional : tree11253 = literal11253 := by
  rw [tree11253_def]
  rfl
theorem node11253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11253 live11253 coloured11253 = result11253 := by
  rw [tree11253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11254_agree_conditional
    (child0 : tree11252 = literal11252)
    (child1 : tree11253 = literal11253) : tree11254 = literal11254 := by
  rw [tree11254_def, child0, child1]
  rfl
theorem node11254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11252 live11252 coloured11252 = result11252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11253 live11253 coloured11253 = result11253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11254 live11254 coloured11254 = result11254 := by
  rw [tree11254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11252 coloured11252 at child
  try dsimp only [live11254, coloured11254]
  rw [child]
  dsimp only [result11252]
  have child := child1
  unfold live11253 coloured11253 at child
  try dsimp only [live11254, coloured11254]
  rw [child]
  dsimp only [result11253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11255_agree_conditional : tree11255 = literal11255 := by
  rw [tree11255_def]
  rfl
theorem node11255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11255 live11255 coloured11255 = result11255 := by
  rw [tree11255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11256_agree_conditional
    (child0 : tree11254 = literal11254)
    (child1 : tree11255 = literal11255) : tree11256 = literal11256 := by
  rw [tree11256_def, child0, child1]
  rfl
theorem node11256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11254 live11254 coloured11254 = result11254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11255 live11255 coloured11255 = result11255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11256 live11256 coloured11256 = result11256 := by
  rw [tree11256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11254 coloured11254 at child
  try dsimp only [live11256, coloured11256]
  rw [child]
  dsimp only [result11254]
  have child := child1
  unfold live11255 coloured11255 at child
  try dsimp only [live11256, coloured11256]
  rw [child]
  dsimp only [result11255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11257_agree_conditional : tree11257 = literal11257 := by
  rw [tree11257_def]
  rfl
theorem node11257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11257 live11257 coloured11257 = result11257 := by
  rw [tree11257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11258_agree_conditional
    (child0 : tree11256 = literal11256)
    (child1 : tree11257 = literal11257) : tree11258 = literal11258 := by
  rw [tree11258_def, child0, child1]
  rfl
theorem node11258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11256 live11256 coloured11256 = result11256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11257 live11257 coloured11257 = result11257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11258 live11258 coloured11258 = result11258 := by
  rw [tree11258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11256 coloured11256 at child
  try dsimp only [live11258, coloured11258]
  rw [child]
  dsimp only [result11256]
  have child := child1
  unfold live11257 coloured11257 at child
  try dsimp only [live11258, coloured11258]
  rw [child]
  dsimp only [result11257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11259_agree_conditional : tree11259 = literal11259 := by
  rw [tree11259_def]
  rfl
theorem node11259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11259 live11259 coloured11259 = result11259 := by
  rw [tree11259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11260_agree_conditional
    (child0 : tree11258 = literal11258)
    (child1 : tree11259 = literal11259) : tree11260 = literal11260 := by
  rw [tree11260_def, child0, child1]
  rfl
theorem node11260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11258 live11258 coloured11258 = result11258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11259 live11259 coloured11259 = result11259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11260 live11260 coloured11260 = result11260 := by
  rw [tree11260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11258 coloured11258 at child
  try dsimp only [live11260, coloured11260]
  rw [child]
  dsimp only [result11258]
  have child := child1
  unfold live11259 coloured11259 at child
  try dsimp only [live11260, coloured11260]
  rw [child]
  dsimp only [result11259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11261_agree_conditional : tree11261 = literal11261 := by
  rw [tree11261_def]
  rfl
theorem node11261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11261 live11261 coloured11261 = result11261 := by
  rw [tree11261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11262_agree_conditional
    (child0 : tree11260 = literal11260)
    (child1 : tree11261 = literal11261) : tree11262 = literal11262 := by
  rw [tree11262_def, child0, child1]
  rfl
theorem node11262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11260 live11260 coloured11260 = result11260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11261 live11261 coloured11261 = result11261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11262 live11262 coloured11262 = result11262 := by
  rw [tree11262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11260 coloured11260 at child
  try dsimp only [live11262, coloured11262]
  rw [child]
  dsimp only [result11260]
  have child := child1
  unfold live11261 coloured11261 at child
  try dsimp only [live11262, coloured11262]
  rw [child]
  dsimp only [result11261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11263_agree_conditional : tree11263 = literal11263 := by
  rw [tree11263_def]
  rfl
theorem node11263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11263 live11263 coloured11263 = result11263 := by
  rw [tree11263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11264_agree_conditional
    (child0 : tree11262 = literal11262)
    (child1 : tree11263 = literal11263) : tree11264 = literal11264 := by
  rw [tree11264_def, child0, child1]
  rfl
theorem node11264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11262 live11262 coloured11262 = result11262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11263 live11263 coloured11263 = result11263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11264 live11264 coloured11264 = result11264 := by
  rw [tree11264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11262 coloured11262 at child
  try dsimp only [live11264, coloured11264]
  rw [child]
  dsimp only [result11262]
  have child := child1
  unfold live11263 coloured11263 at child
  try dsimp only [live11264, coloured11264]
  rw [child]
  dsimp only [result11263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11265_agree_conditional : tree11265 = literal11265 := by
  rw [tree11265_def]
  rfl
theorem node11265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11265 live11265 coloured11265 = result11265 := by
  rw [tree11265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11266_agree_conditional
    (child0 : tree11264 = literal11264)
    (child1 : tree11265 = literal11265) : tree11266 = literal11266 := by
  rw [tree11266_def, child0, child1]
  rfl
theorem node11266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11264 live11264 coloured11264 = result11264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11265 live11265 coloured11265 = result11265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11266 live11266 coloured11266 = result11266 := by
  rw [tree11266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11264 coloured11264 at child
  try dsimp only [live11266, coloured11266]
  rw [child]
  dsimp only [result11264]
  have child := child1
  unfold live11265 coloured11265 at child
  try dsimp only [live11266, coloured11266]
  rw [child]
  dsimp only [result11265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11267_agree_conditional : tree11267 = literal11267 := by
  rw [tree11267_def]
  rfl
theorem node11267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11267 live11267 coloured11267 = result11267 := by
  rw [tree11267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11268_agree_conditional
    (child0 : tree11266 = literal11266)
    (child1 : tree11267 = literal11267) : tree11268 = literal11268 := by
  rw [tree11268_def, child0, child1]
  rfl
theorem node11268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11266 live11266 coloured11266 = result11266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11267 live11267 coloured11267 = result11267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11268 live11268 coloured11268 = result11268 := by
  rw [tree11268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11266 coloured11266 at child
  try dsimp only [live11268, coloured11268]
  rw [child]
  dsimp only [result11266]
  have child := child1
  unfold live11267 coloured11267 at child
  try dsimp only [live11268, coloured11268]
  rw [child]
  dsimp only [result11267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11269_agree_conditional : tree11269 = literal11269 := by
  rw [tree11269_def]
  rfl
theorem node11269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11269 live11269 coloured11269 = result11269 := by
  rw [tree11269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11270_agree_conditional
    (child0 : tree11268 = literal11268)
    (child1 : tree11269 = literal11269) : tree11270 = literal11270 := by
  rw [tree11270_def, child0, child1]
  rfl
theorem node11270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11268 live11268 coloured11268 = result11268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11269 live11269 coloured11269 = result11269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11270 live11270 coloured11270 = result11270 := by
  rw [tree11270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11268 coloured11268 at child
  try dsimp only [live11270, coloured11270]
  rw [child]
  dsimp only [result11268]
  have child := child1
  unfold live11269 coloured11269 at child
  try dsimp only [live11270, coloured11270]
  rw [child]
  dsimp only [result11269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11271_agree_conditional : tree11271 = literal11271 := by
  rw [tree11271_def]
  rfl
theorem node11271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11271 live11271 coloured11271 = result11271 := by
  rw [tree11271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11272_agree_conditional
    (child0 : tree11270 = literal11270)
    (child1 : tree11271 = literal11271) : tree11272 = literal11272 := by
  rw [tree11272_def, child0, child1]
  rfl
theorem node11272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11270 live11270 coloured11270 = result11270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11271 live11271 coloured11271 = result11271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11272 live11272 coloured11272 = result11272 := by
  rw [tree11272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11270 coloured11270 at child
  try dsimp only [live11272, coloured11272]
  rw [child]
  dsimp only [result11270]
  have child := child1
  unfold live11271 coloured11271 at child
  try dsimp only [live11272, coloured11272]
  rw [child]
  dsimp only [result11271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11273_agree_conditional : tree11273 = literal11273 := by
  rw [tree11273_def]
  rfl
theorem node11273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11273 live11273 coloured11273 = result11273 := by
  rw [tree11273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11274_agree_conditional
    (child0 : tree11272 = literal11272)
    (child1 : tree11273 = literal11273) : tree11274 = literal11274 := by
  rw [tree11274_def, child0, child1]
  rfl
theorem node11274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11272 live11272 coloured11272 = result11272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11273 live11273 coloured11273 = result11273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11274 live11274 coloured11274 = result11274 := by
  rw [tree11274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11272 coloured11272 at child
  try dsimp only [live11274, coloured11274]
  rw [child]
  dsimp only [result11272]
  have child := child1
  unfold live11273 coloured11273 at child
  try dsimp only [live11274, coloured11274]
  rw [child]
  dsimp only [result11273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11275_agree_conditional : tree11275 = literal11275 := by
  rw [tree11275_def]
  rfl
theorem node11275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11275 live11275 coloured11275 = result11275 := by
  rw [tree11275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11276_agree_conditional
    (child0 : tree11274 = literal11274)
    (child1 : tree11275 = literal11275) : tree11276 = literal11276 := by
  rw [tree11276_def, child0, child1]
  rfl
theorem node11276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11274 live11274 coloured11274 = result11274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11275 live11275 coloured11275 = result11275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11276 live11276 coloured11276 = result11276 := by
  rw [tree11276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11274 coloured11274 at child
  try dsimp only [live11276, coloured11276]
  rw [child]
  dsimp only [result11274]
  have child := child1
  unfold live11275 coloured11275 at child
  try dsimp only [live11276, coloured11276]
  rw [child]
  dsimp only [result11275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11277_agree_conditional : tree11277 = literal11277 := by
  rw [tree11277_def]
  rfl
theorem node11277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11277 live11277 coloured11277 = result11277 := by
  rw [tree11277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11278_agree_conditional
    (child0 : tree11276 = literal11276)
    (child1 : tree11277 = literal11277) : tree11278 = literal11278 := by
  rw [tree11278_def, child0, child1]
  rfl
theorem node11278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11276 live11276 coloured11276 = result11276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11277 live11277 coloured11277 = result11277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11278 live11278 coloured11278 = result11278 := by
  rw [tree11278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11276 coloured11276 at child
  try dsimp only [live11278, coloured11278]
  rw [child]
  dsimp only [result11276]
  have child := child1
  unfold live11277 coloured11277 at child
  try dsimp only [live11278, coloured11278]
  rw [child]
  dsimp only [result11277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11279_agree_conditional : tree11279 = literal11279 := by
  rw [tree11279_def]
  rfl
theorem node11279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11279 live11279 coloured11279 = result11279 := by
  rw [tree11279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11280_agree_conditional
    (child0 : tree11278 = literal11278)
    (child1 : tree11279 = literal11279) : tree11280 = literal11280 := by
  rw [tree11280_def, child0, child1]
  rfl
theorem node11280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11278 live11278 coloured11278 = result11278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11279 live11279 coloured11279 = result11279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11280 live11280 coloured11280 = result11280 := by
  rw [tree11280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11278 coloured11278 at child
  try dsimp only [live11280, coloured11280]
  rw [child]
  dsimp only [result11278]
  have child := child1
  unfold live11279 coloured11279 at child
  try dsimp only [live11280, coloured11280]
  rw [child]
  dsimp only [result11279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11281_agree_conditional : tree11281 = literal11281 := by
  rw [tree11281_def]
  rfl
theorem node11281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11281 live11281 coloured11281 = result11281 := by
  rw [tree11281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11282_agree_conditional
    (child0 : tree11280 = literal11280)
    (child1 : tree11281 = literal11281) : tree11282 = literal11282 := by
  rw [tree11282_def, child0, child1]
  rfl
theorem node11282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11280 live11280 coloured11280 = result11280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11281 live11281 coloured11281 = result11281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11282 live11282 coloured11282 = result11282 := by
  rw [tree11282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11280 coloured11280 at child
  try dsimp only [live11282, coloured11282]
  rw [child]
  dsimp only [result11280]
  have child := child1
  unfold live11281 coloured11281 at child
  try dsimp only [live11282, coloured11282]
  rw [child]
  dsimp only [result11281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11283_agree_conditional : tree11283 = literal11283 := by
  rw [tree11283_def]
  rfl
theorem node11283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11283 live11283 coloured11283 = result11283 := by
  rw [tree11283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11284_agree_conditional
    (child0 : tree11282 = literal11282)
    (child1 : tree11283 = literal11283) : tree11284 = literal11284 := by
  rw [tree11284_def, child0, child1]
  rfl
theorem node11284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11282 live11282 coloured11282 = result11282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11283 live11283 coloured11283 = result11283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11284 live11284 coloured11284 = result11284 := by
  rw [tree11284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11282 coloured11282 at child
  try dsimp only [live11284, coloured11284]
  rw [child]
  dsimp only [result11282]
  have child := child1
  unfold live11283 coloured11283 at child
  try dsimp only [live11284, coloured11284]
  rw [child]
  dsimp only [result11283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11285_agree_conditional : tree11285 = literal11285 := by
  rw [tree11285_def]
  rfl
theorem node11285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11285 live11285 coloured11285 = result11285 := by
  rw [tree11285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11286_agree_conditional
    (child0 : tree11284 = literal11284)
    (child1 : tree11285 = literal11285) : tree11286 = literal11286 := by
  rw [tree11286_def, child0, child1]
  rfl
theorem node11286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11284 live11284 coloured11284 = result11284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11285 live11285 coloured11285 = result11285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11286 live11286 coloured11286 = result11286 := by
  rw [tree11286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11284 coloured11284 at child
  try dsimp only [live11286, coloured11286]
  rw [child]
  dsimp only [result11284]
  have child := child1
  unfold live11285 coloured11285 at child
  try dsimp only [live11286, coloured11286]
  rw [child]
  dsimp only [result11285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11287_agree_conditional : tree11287 = literal11287 := by
  rw [tree11287_def]
  rfl
theorem node11287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11287 live11287 coloured11287 = result11287 := by
  rw [tree11287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11288_agree_conditional
    (child0 : tree11286 = literal11286)
    (child1 : tree11287 = literal11287) : tree11288 = literal11288 := by
  rw [tree11288_def, child0, child1]
  rfl
theorem node11288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11286 live11286 coloured11286 = result11286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11287 live11287 coloured11287 = result11287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11288 live11288 coloured11288 = result11288 := by
  rw [tree11288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11286 coloured11286 at child
  try dsimp only [live11288, coloured11288]
  rw [child]
  dsimp only [result11286]
  have child := child1
  unfold live11287 coloured11287 at child
  try dsimp only [live11288, coloured11288]
  rw [child]
  dsimp only [result11287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11289_agree_conditional : tree11289 = literal11289 := by
  rw [tree11289_def]
  rfl
theorem node11289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11289 live11289 coloured11289 = result11289 := by
  rw [tree11289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11290_agree_conditional
    (child0 : tree11288 = literal11288)
    (child1 : tree11289 = literal11289) : tree11290 = literal11290 := by
  rw [tree11290_def, child0, child1]
  rfl
theorem node11290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11288 live11288 coloured11288 = result11288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11289 live11289 coloured11289 = result11289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11290 live11290 coloured11290 = result11290 := by
  rw [tree11290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11288 coloured11288 at child
  try dsimp only [live11290, coloured11290]
  rw [child]
  dsimp only [result11288]
  have child := child1
  unfold live11289 coloured11289 at child
  try dsimp only [live11290, coloured11290]
  rw [child]
  dsimp only [result11289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11291_agree_conditional : tree11291 = literal11291 := by
  rw [tree11291_def]
  rfl
theorem node11291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11291 live11291 coloured11291 = result11291 := by
  rw [tree11291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11292_agree_conditional
    (child0 : tree11290 = literal11290)
    (child1 : tree11291 = literal11291) : tree11292 = literal11292 := by
  rw [tree11292_def, child0, child1]
  rfl
theorem node11292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11290 live11290 coloured11290 = result11290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11291 live11291 coloured11291 = result11291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11292 live11292 coloured11292 = result11292 := by
  rw [tree11292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11290 coloured11290 at child
  try dsimp only [live11292, coloured11292]
  rw [child]
  dsimp only [result11290]
  have child := child1
  unfold live11291 coloured11291 at child
  try dsimp only [live11292, coloured11292]
  rw [child]
  dsimp only [result11291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11293_agree_conditional : tree11293 = literal11293 := by
  rw [tree11293_def]
  rfl
theorem node11293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11293 live11293 coloured11293 = result11293 := by
  rw [tree11293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11294_agree_conditional
    (child0 : tree11292 = literal11292)
    (child1 : tree11293 = literal11293) : tree11294 = literal11294 := by
  rw [tree11294_def, child0, child1]
  rfl
theorem node11294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11292 live11292 coloured11292 = result11292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11293 live11293 coloured11293 = result11293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11294 live11294 coloured11294 = result11294 := by
  rw [tree11294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11292 coloured11292 at child
  try dsimp only [live11294, coloured11294]
  rw [child]
  dsimp only [result11292]
  have child := child1
  unfold live11293 coloured11293 at child
  try dsimp only [live11294, coloured11294]
  rw [child]
  dsimp only [result11293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11295_agree_conditional : tree11295 = literal11295 := by
  rw [tree11295_def]
  rfl
theorem node11295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11295 live11295 coloured11295 = result11295 := by
  rw [tree11295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11296_agree_conditional
    (child0 : tree11294 = literal11294)
    (child1 : tree11295 = literal11295) : tree11296 = literal11296 := by
  rw [tree11296_def, child0, child1]
  rfl
theorem node11296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11294 live11294 coloured11294 = result11294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11295 live11295 coloured11295 = result11295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11296 live11296 coloured11296 = result11296 := by
  rw [tree11296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11294 coloured11294 at child
  try dsimp only [live11296, coloured11296]
  rw [child]
  dsimp only [result11294]
  have child := child1
  unfold live11295 coloured11295 at child
  try dsimp only [live11296, coloured11296]
  rw [child]
  dsimp only [result11295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11297_agree_conditional : tree11297 = literal11297 := by
  rw [tree11297_def]
  rfl
theorem node11297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11297 live11297 coloured11297 = result11297 := by
  rw [tree11297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11298_agree_conditional
    (child0 : tree11296 = literal11296)
    (child1 : tree11297 = literal11297) : tree11298 = literal11298 := by
  rw [tree11298_def, child0, child1]
  rfl
theorem node11298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11296 live11296 coloured11296 = result11296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11297 live11297 coloured11297 = result11297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11298 live11298 coloured11298 = result11298 := by
  rw [tree11298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11296 coloured11296 at child
  try dsimp only [live11298, coloured11298]
  rw [child]
  dsimp only [result11296]
  have child := child1
  unfold live11297 coloured11297 at child
  try dsimp only [live11298, coloured11298]
  rw [child]
  dsimp only [result11297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11299_agree_conditional : tree11299 = literal11299 := by
  rw [tree11299_def]
  rfl
theorem node11299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11299 live11299 coloured11299 = result11299 := by
  rw [tree11299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11300_agree_conditional
    (child0 : tree11298 = literal11298)
    (child1 : tree11299 = literal11299) : tree11300 = literal11300 := by
  rw [tree11300_def, child0, child1]
  rfl
theorem node11300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11298 live11298 coloured11298 = result11298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11299 live11299 coloured11299 = result11299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11300 live11300 coloured11300 = result11300 := by
  rw [tree11300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11298 coloured11298 at child
  try dsimp only [live11300, coloured11300]
  rw [child]
  dsimp only [result11298]
  have child := child1
  unfold live11299 coloured11299 at child
  try dsimp only [live11300, coloured11300]
  rw [child]
  dsimp only [result11299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11301_agree_conditional : tree11301 = literal11301 := by
  rw [tree11301_def]
  rfl
theorem node11301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11301 live11301 coloured11301 = result11301 := by
  rw [tree11301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11302_agree_conditional
    (child0 : tree11300 = literal11300)
    (child1 : tree11301 = literal11301) : tree11302 = literal11302 := by
  rw [tree11302_def, child0, child1]
  rfl
theorem node11302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11300 live11300 coloured11300 = result11300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11301 live11301 coloured11301 = result11301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11302 live11302 coloured11302 = result11302 := by
  rw [tree11302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11300 coloured11300 at child
  try dsimp only [live11302, coloured11302]
  rw [child]
  dsimp only [result11300]
  have child := child1
  unfold live11301 coloured11301 at child
  try dsimp only [live11302, coloured11302]
  rw [child]
  dsimp only [result11301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11303_agree_conditional : tree11303 = literal11303 := by
  rw [tree11303_def]
  rfl
theorem node11303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11303 live11303 coloured11303 = result11303 := by
  rw [tree11303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11304_agree_conditional
    (child0 : tree11302 = literal11302)
    (child1 : tree11303 = literal11303) : tree11304 = literal11304 := by
  rw [tree11304_def, child0, child1]
  rfl
theorem node11304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11302 live11302 coloured11302 = result11302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11303 live11303 coloured11303 = result11303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11304 live11304 coloured11304 = result11304 := by
  rw [tree11304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11302 coloured11302 at child
  try dsimp only [live11304, coloured11304]
  rw [child]
  dsimp only [result11302]
  have child := child1
  unfold live11303 coloured11303 at child
  try dsimp only [live11304, coloured11304]
  rw [child]
  dsimp only [result11303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11305_agree_conditional : tree11305 = literal11305 := by
  rw [tree11305_def]
  rfl
theorem node11305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11305 live11305 coloured11305 = result11305 := by
  rw [tree11305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11306_agree_conditional
    (child0 : tree11304 = literal11304)
    (child1 : tree11305 = literal11305) : tree11306 = literal11306 := by
  rw [tree11306_def, child0, child1]
  rfl
theorem node11306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11304 live11304 coloured11304 = result11304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11305 live11305 coloured11305 = result11305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11306 live11306 coloured11306 = result11306 := by
  rw [tree11306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11304 coloured11304 at child
  try dsimp only [live11306, coloured11306]
  rw [child]
  dsimp only [result11304]
  have child := child1
  unfold live11305 coloured11305 at child
  try dsimp only [live11306, coloured11306]
  rw [child]
  dsimp only [result11305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11307_agree_conditional : tree11307 = literal11307 := by
  rw [tree11307_def]
  rfl
theorem node11307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11307 live11307 coloured11307 = result11307 := by
  rw [tree11307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11308_agree_conditional
    (child0 : tree11306 = literal11306)
    (child1 : tree11307 = literal11307) : tree11308 = literal11308 := by
  rw [tree11308_def, child0, child1]
  rfl
theorem node11308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11306 live11306 coloured11306 = result11306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11307 live11307 coloured11307 = result11307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11308 live11308 coloured11308 = result11308 := by
  rw [tree11308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11306 coloured11306 at child
  try dsimp only [live11308, coloured11308]
  rw [child]
  dsimp only [result11306]
  have child := child1
  unfold live11307 coloured11307 at child
  try dsimp only [live11308, coloured11308]
  rw [child]
  dsimp only [result11307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11309_agree_conditional : tree11309 = literal11309 := by
  rw [tree11309_def]
  rfl
theorem node11309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11309 live11309 coloured11309 = result11309 := by
  rw [tree11309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11310_agree_conditional
    (child0 : tree11308 = literal11308)
    (child1 : tree11309 = literal11309) : tree11310 = literal11310 := by
  rw [tree11310_def, child0, child1]
  rfl
theorem node11310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11308 live11308 coloured11308 = result11308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11309 live11309 coloured11309 = result11309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11310 live11310 coloured11310 = result11310 := by
  rw [tree11310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11308 coloured11308 at child
  try dsimp only [live11310, coloured11310]
  rw [child]
  dsimp only [result11308]
  have child := child1
  unfold live11309 coloured11309 at child
  try dsimp only [live11310, coloured11310]
  rw [child]
  dsimp only [result11309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11311_agree_conditional : tree11311 = literal11311 := by
  rw [tree11311_def]
  rfl
theorem node11311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11311 live11311 coloured11311 = result11311 := by
  rw [tree11311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11312_agree_conditional
    (child0 : tree11310 = literal11310)
    (child1 : tree11311 = literal11311) : tree11312 = literal11312 := by
  rw [tree11312_def, child0, child1]
  rfl
theorem node11312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11310 live11310 coloured11310 = result11310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11311 live11311 coloured11311 = result11311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11312 live11312 coloured11312 = result11312 := by
  rw [tree11312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11310 coloured11310 at child
  try dsimp only [live11312, coloured11312]
  rw [child]
  dsimp only [result11310]
  have child := child1
  unfold live11311 coloured11311 at child
  try dsimp only [live11312, coloured11312]
  rw [child]
  dsimp only [result11311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11313_agree_conditional : tree11313 = literal11313 := by
  rw [tree11313_def]
  rfl
theorem node11313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11313 live11313 coloured11313 = result11313 := by
  rw [tree11313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11314_agree_conditional
    (child0 : tree11312 = literal11312)
    (child1 : tree11313 = literal11313) : tree11314 = literal11314 := by
  rw [tree11314_def, child0, child1]
  rfl
theorem node11314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11312 live11312 coloured11312 = result11312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11313 live11313 coloured11313 = result11313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11314 live11314 coloured11314 = result11314 := by
  rw [tree11314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11312 coloured11312 at child
  try dsimp only [live11314, coloured11314]
  rw [child]
  dsimp only [result11312]
  have child := child1
  unfold live11313 coloured11313 at child
  try dsimp only [live11314, coloured11314]
  rw [child]
  dsimp only [result11313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11315_agree_conditional : tree11315 = literal11315 := by
  rw [tree11315_def]
  rfl
theorem node11315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11315 live11315 coloured11315 = result11315 := by
  rw [tree11315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11316_agree_conditional
    (child0 : tree11314 = literal11314)
    (child1 : tree11315 = literal11315) : tree11316 = literal11316 := by
  rw [tree11316_def, child0, child1]
  rfl
theorem node11316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11314 live11314 coloured11314 = result11314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11315 live11315 coloured11315 = result11315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11316 live11316 coloured11316 = result11316 := by
  rw [tree11316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11314 coloured11314 at child
  try dsimp only [live11316, coloured11316]
  rw [child]
  dsimp only [result11314]
  have child := child1
  unfold live11315 coloured11315 at child
  try dsimp only [live11316, coloured11316]
  rw [child]
  dsimp only [result11315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11317_agree_conditional : tree11317 = literal11317 := by
  rw [tree11317_def]
  rfl
theorem node11317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11317 live11317 coloured11317 = result11317 := by
  rw [tree11317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11318_agree_conditional
    (child0 : tree11316 = literal11316)
    (child1 : tree11317 = literal11317) : tree11318 = literal11318 := by
  rw [tree11318_def, child0, child1]
  rfl
theorem node11318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11316 live11316 coloured11316 = result11316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11317 live11317 coloured11317 = result11317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11318 live11318 coloured11318 = result11318 := by
  rw [tree11318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11316 coloured11316 at child
  try dsimp only [live11318, coloured11318]
  rw [child]
  dsimp only [result11316]
  have child := child1
  unfold live11317 coloured11317 at child
  try dsimp only [live11318, coloured11318]
  rw [child]
  dsimp only [result11317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11319_agree_conditional : tree11319 = literal11319 := by
  rw [tree11319_def]
  rfl
theorem node11319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11319 live11319 coloured11319 = result11319 := by
  rw [tree11319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11320_agree_conditional
    (child0 : tree11318 = literal11318)
    (child1 : tree11319 = literal11319) : tree11320 = literal11320 := by
  rw [tree11320_def, child0, child1]
  rfl
theorem node11320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11318 live11318 coloured11318 = result11318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11319 live11319 coloured11319 = result11319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11320 live11320 coloured11320 = result11320 := by
  rw [tree11320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11318 coloured11318 at child
  try dsimp only [live11320, coloured11320]
  rw [child]
  dsimp only [result11318]
  have child := child1
  unfold live11319 coloured11319 at child
  try dsimp only [live11320, coloured11320]
  rw [child]
  dsimp only [result11319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11321_agree_conditional : tree11321 = literal11321 := by
  rw [tree11321_def]
  rfl
theorem node11321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11321 live11321 coloured11321 = result11321 := by
  rw [tree11321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11322_agree_conditional
    (child0 : tree11320 = literal11320)
    (child1 : tree11321 = literal11321) : tree11322 = literal11322 := by
  rw [tree11322_def, child0, child1]
  rfl
theorem node11322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11320 live11320 coloured11320 = result11320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11321 live11321 coloured11321 = result11321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11322 live11322 coloured11322 = result11322 := by
  rw [tree11322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11320 coloured11320 at child
  try dsimp only [live11322, coloured11322]
  rw [child]
  dsimp only [result11320]
  have child := child1
  unfold live11321 coloured11321 at child
  try dsimp only [live11322, coloured11322]
  rw [child]
  dsimp only [result11321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11323_agree_conditional : tree11323 = literal11323 := by
  rw [tree11323_def]
  rfl
theorem node11323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11323 live11323 coloured11323 = result11323 := by
  rw [tree11323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11324_agree_conditional
    (child0 : tree11322 = literal11322)
    (child1 : tree11323 = literal11323) : tree11324 = literal11324 := by
  rw [tree11324_def, child0, child1]
  rfl
theorem node11324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11322 live11322 coloured11322 = result11322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11323 live11323 coloured11323 = result11323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11324 live11324 coloured11324 = result11324 := by
  rw [tree11324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11322 coloured11322 at child
  try dsimp only [live11324, coloured11324]
  rw [child]
  dsimp only [result11322]
  have child := child1
  unfold live11323 coloured11323 at child
  try dsimp only [live11324, coloured11324]
  rw [child]
  dsimp only [result11323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11325_agree_conditional : tree11325 = literal11325 := by
  rw [tree11325_def]
  rfl
theorem node11325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11325 live11325 coloured11325 = result11325 := by
  rw [tree11325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11326_agree_conditional
    (child0 : tree11324 = literal11324)
    (child1 : tree11325 = literal11325) : tree11326 = literal11326 := by
  rw [tree11326_def, child0, child1]
  rfl
theorem node11326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11324 live11324 coloured11324 = result11324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11325 live11325 coloured11325 = result11325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11326 live11326 coloured11326 = result11326 := by
  rw [tree11326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11324 coloured11324 at child
  try dsimp only [live11326, coloured11326]
  rw [child]
  dsimp only [result11324]
  have child := child1
  unfold live11325 coloured11325 at child
  try dsimp only [live11326, coloured11326]
  rw [child]
  dsimp only [result11325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11327_agree_conditional : tree11327 = literal11327 := by
  rw [tree11327_def]
  rfl
theorem node11327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11327 live11327 coloured11327 = result11327 := by
  rw [tree11327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
