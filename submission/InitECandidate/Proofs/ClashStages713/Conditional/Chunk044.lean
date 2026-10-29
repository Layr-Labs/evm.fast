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
theorem tree4224_agree_conditional
    (child0 : tree4222 = literal4222)
    (child1 : tree4223 = literal4223) : tree4224 = literal4224 := by
  rw [tree4224_def, child0, child1]
  rfl
theorem node4224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4222 live4222 coloured4222 = result4222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4223 live4223 coloured4223 = result4223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4224 live4224 coloured4224 = result4224 := by
  rw [tree4224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4222 coloured4222 at child
  try dsimp only [live4224, coloured4224]
  rw [child]
  dsimp only [result4222]
  have child := child1
  unfold live4223 coloured4223 at child
  try dsimp only [live4224, coloured4224]
  rw [child]
  dsimp only [result4223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4225_agree_conditional : tree4225 = literal4225 := by
  rw [tree4225_def]
  rfl
theorem node4225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4225 live4225 coloured4225 = result4225 := by
  rw [tree4225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4226_agree_conditional
    (child0 : tree4224 = literal4224)
    (child1 : tree4225 = literal4225) : tree4226 = literal4226 := by
  rw [tree4226_def, child0, child1]
  rfl
theorem node4226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4224 live4224 coloured4224 = result4224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4225 live4225 coloured4225 = result4225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4226 live4226 coloured4226 = result4226 := by
  rw [tree4226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4224 coloured4224 at child
  try dsimp only [live4226, coloured4226]
  rw [child]
  dsimp only [result4224]
  have child := child1
  unfold live4225 coloured4225 at child
  try dsimp only [live4226, coloured4226]
  rw [child]
  dsimp only [result4225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4227_agree_conditional : tree4227 = literal4227 := by
  rw [tree4227_def]
  rfl
theorem node4227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4227 live4227 coloured4227 = result4227 := by
  rw [tree4227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4228_agree_conditional
    (child0 : tree4226 = literal4226)
    (child1 : tree4227 = literal4227) : tree4228 = literal4228 := by
  rw [tree4228_def, child0, child1]
  rfl
theorem node4228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4226 live4226 coloured4226 = result4226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4227 live4227 coloured4227 = result4227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4228 live4228 coloured4228 = result4228 := by
  rw [tree4228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4226 coloured4226 at child
  try dsimp only [live4228, coloured4228]
  rw [child]
  dsimp only [result4226]
  have child := child1
  unfold live4227 coloured4227 at child
  try dsimp only [live4228, coloured4228]
  rw [child]
  dsimp only [result4227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4229_agree_conditional : tree4229 = literal4229 := by
  rw [tree4229_def]
  rfl
theorem node4229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4229 live4229 coloured4229 = result4229 := by
  rw [tree4229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4230_agree_conditional
    (child0 : tree4228 = literal4228)
    (child1 : tree4229 = literal4229) : tree4230 = literal4230 := by
  rw [tree4230_def, child0, child1]
  rfl
theorem node4230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4228 live4228 coloured4228 = result4228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4229 live4229 coloured4229 = result4229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4230 live4230 coloured4230 = result4230 := by
  rw [tree4230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4228 coloured4228 at child
  try dsimp only [live4230, coloured4230]
  rw [child]
  dsimp only [result4228]
  have child := child1
  unfold live4229 coloured4229 at child
  try dsimp only [live4230, coloured4230]
  rw [child]
  dsimp only [result4229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4231_agree_conditional : tree4231 = literal4231 := by
  rw [tree4231_def]
  rfl
theorem node4231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4231 live4231 coloured4231 = result4231 := by
  rw [tree4231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4232_agree_conditional
    (child0 : tree4230 = literal4230)
    (child1 : tree4231 = literal4231) : tree4232 = literal4232 := by
  rw [tree4232_def, child0, child1]
  rfl
theorem node4232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4230 live4230 coloured4230 = result4230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4231 live4231 coloured4231 = result4231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4232 live4232 coloured4232 = result4232 := by
  rw [tree4232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4230 coloured4230 at child
  try dsimp only [live4232, coloured4232]
  rw [child]
  dsimp only [result4230]
  have child := child1
  unfold live4231 coloured4231 at child
  try dsimp only [live4232, coloured4232]
  rw [child]
  dsimp only [result4231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4233_agree_conditional : tree4233 = literal4233 := by
  rw [tree4233_def]
  rfl
theorem node4233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4233 live4233 coloured4233 = result4233 := by
  rw [tree4233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4234_agree_conditional
    (child0 : tree4232 = literal4232)
    (child1 : tree4233 = literal4233) : tree4234 = literal4234 := by
  rw [tree4234_def, child0, child1]
  rfl
theorem node4234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4232 live4232 coloured4232 = result4232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4233 live4233 coloured4233 = result4233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4234 live4234 coloured4234 = result4234 := by
  rw [tree4234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4232 coloured4232 at child
  try dsimp only [live4234, coloured4234]
  rw [child]
  dsimp only [result4232]
  have child := child1
  unfold live4233 coloured4233 at child
  try dsimp only [live4234, coloured4234]
  rw [child]
  dsimp only [result4233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4235_agree_conditional : tree4235 = literal4235 := by
  rw [tree4235_def]
  rfl
theorem node4235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4235 live4235 coloured4235 = result4235 := by
  rw [tree4235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4236_agree_conditional
    (child0 : tree4234 = literal4234)
    (child1 : tree4235 = literal4235) : tree4236 = literal4236 := by
  rw [tree4236_def, child0, child1]
  rfl
theorem node4236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4234 live4234 coloured4234 = result4234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4235 live4235 coloured4235 = result4235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4236 live4236 coloured4236 = result4236 := by
  rw [tree4236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4234 coloured4234 at child
  try dsimp only [live4236, coloured4236]
  rw [child]
  dsimp only [result4234]
  have child := child1
  unfold live4235 coloured4235 at child
  try dsimp only [live4236, coloured4236]
  rw [child]
  dsimp only [result4235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4237_agree_conditional : tree4237 = literal4237 := by
  rw [tree4237_def]
  rfl
theorem node4237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4237 live4237 coloured4237 = result4237 := by
  rw [tree4237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4238_agree_conditional
    (child0 : tree4236 = literal4236)
    (child1 : tree4237 = literal4237) : tree4238 = literal4238 := by
  rw [tree4238_def, child0, child1]
  rfl
theorem node4238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4236 live4236 coloured4236 = result4236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4237 live4237 coloured4237 = result4237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4238 live4238 coloured4238 = result4238 := by
  rw [tree4238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4236 coloured4236 at child
  try dsimp only [live4238, coloured4238]
  rw [child]
  dsimp only [result4236]
  have child := child1
  unfold live4237 coloured4237 at child
  try dsimp only [live4238, coloured4238]
  rw [child]
  dsimp only [result4237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4239_agree_conditional : tree4239 = literal4239 := by
  rw [tree4239_def]
  rfl
theorem node4239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4239 live4239 coloured4239 = result4239 := by
  rw [tree4239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4240_agree_conditional
    (child0 : tree4238 = literal4238)
    (child1 : tree4239 = literal4239) : tree4240 = literal4240 := by
  rw [tree4240_def, child0, child1]
  rfl
theorem node4240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4238 live4238 coloured4238 = result4238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4239 live4239 coloured4239 = result4239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4240 live4240 coloured4240 = result4240 := by
  rw [tree4240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4238 coloured4238 at child
  try dsimp only [live4240, coloured4240]
  rw [child]
  dsimp only [result4238]
  have child := child1
  unfold live4239 coloured4239 at child
  try dsimp only [live4240, coloured4240]
  rw [child]
  dsimp only [result4239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4241_agree_conditional : tree4241 = literal4241 := by
  rw [tree4241_def]
  rfl
theorem node4241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4241 live4241 coloured4241 = result4241 := by
  rw [tree4241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4242_agree_conditional
    (child0 : tree4240 = literal4240)
    (child1 : tree4241 = literal4241) : tree4242 = literal4242 := by
  rw [tree4242_def, child0, child1]
  rfl
theorem node4242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4240 live4240 coloured4240 = result4240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4241 live4241 coloured4241 = result4241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4242 live4242 coloured4242 = result4242 := by
  rw [tree4242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4240 coloured4240 at child
  try dsimp only [live4242, coloured4242]
  rw [child]
  dsimp only [result4240]
  have child := child1
  unfold live4241 coloured4241 at child
  try dsimp only [live4242, coloured4242]
  rw [child]
  dsimp only [result4241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4243_agree_conditional : tree4243 = literal4243 := by
  rw [tree4243_def]
  rfl
theorem node4243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4243 live4243 coloured4243 = result4243 := by
  rw [tree4243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4244_agree_conditional
    (child0 : tree4242 = literal4242)
    (child1 : tree4243 = literal4243) : tree4244 = literal4244 := by
  rw [tree4244_def, child0, child1]
  rfl
theorem node4244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4242 live4242 coloured4242 = result4242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4243 live4243 coloured4243 = result4243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4244 live4244 coloured4244 = result4244 := by
  rw [tree4244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4242 coloured4242 at child
  try dsimp only [live4244, coloured4244]
  rw [child]
  dsimp only [result4242]
  have child := child1
  unfold live4243 coloured4243 at child
  try dsimp only [live4244, coloured4244]
  rw [child]
  dsimp only [result4243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4245_agree_conditional : tree4245 = literal4245 := by
  rw [tree4245_def]
  rfl
theorem node4245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4245 live4245 coloured4245 = result4245 := by
  rw [tree4245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4246_agree_conditional
    (child0 : tree4244 = literal4244)
    (child1 : tree4245 = literal4245) : tree4246 = literal4246 := by
  rw [tree4246_def, child0, child1]
  rfl
theorem node4246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4244 live4244 coloured4244 = result4244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4245 live4245 coloured4245 = result4245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4246 live4246 coloured4246 = result4246 := by
  rw [tree4246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4244 coloured4244 at child
  try dsimp only [live4246, coloured4246]
  rw [child]
  dsimp only [result4244]
  have child := child1
  unfold live4245 coloured4245 at child
  try dsimp only [live4246, coloured4246]
  rw [child]
  dsimp only [result4245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4247_agree_conditional : tree4247 = literal4247 := by
  rw [tree4247_def]
  rfl
theorem node4247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4247 live4247 coloured4247 = result4247 := by
  rw [tree4247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4248_agree_conditional
    (child0 : tree4246 = literal4246)
    (child1 : tree4247 = literal4247) : tree4248 = literal4248 := by
  rw [tree4248_def, child0, child1]
  rfl
theorem node4248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4246 live4246 coloured4246 = result4246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4247 live4247 coloured4247 = result4247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4248 live4248 coloured4248 = result4248 := by
  rw [tree4248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4246 coloured4246 at child
  try dsimp only [live4248, coloured4248]
  rw [child]
  dsimp only [result4246]
  have child := child1
  unfold live4247 coloured4247 at child
  try dsimp only [live4248, coloured4248]
  rw [child]
  dsimp only [result4247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4249_agree_conditional : tree4249 = literal4249 := by
  rw [tree4249_def]
  rfl
theorem node4249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4249 live4249 coloured4249 = result4249 := by
  rw [tree4249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4250_agree_conditional
    (child0 : tree4248 = literal4248)
    (child1 : tree4249 = literal4249) : tree4250 = literal4250 := by
  rw [tree4250_def, child0, child1]
  rfl
theorem node4250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4248 live4248 coloured4248 = result4248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4249 live4249 coloured4249 = result4249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4250 live4250 coloured4250 = result4250 := by
  rw [tree4250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4248 coloured4248 at child
  try dsimp only [live4250, coloured4250]
  rw [child]
  dsimp only [result4248]
  have child := child1
  unfold live4249 coloured4249 at child
  try dsimp only [live4250, coloured4250]
  rw [child]
  dsimp only [result4249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4251_agree_conditional : tree4251 = literal4251 := by
  rw [tree4251_def]
  rfl
theorem node4251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4251 live4251 coloured4251 = result4251 := by
  rw [tree4251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4252_agree_conditional
    (child0 : tree4250 = literal4250)
    (child1 : tree4251 = literal4251) : tree4252 = literal4252 := by
  rw [tree4252_def, child0, child1]
  rfl
theorem node4252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4250 live4250 coloured4250 = result4250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4251 live4251 coloured4251 = result4251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4252 live4252 coloured4252 = result4252 := by
  rw [tree4252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4250 coloured4250 at child
  try dsimp only [live4252, coloured4252]
  rw [child]
  dsimp only [result4250]
  have child := child1
  unfold live4251 coloured4251 at child
  try dsimp only [live4252, coloured4252]
  rw [child]
  dsimp only [result4251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4253_agree_conditional : tree4253 = literal4253 := by
  rw [tree4253_def]
  rfl
theorem node4253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4253 live4253 coloured4253 = result4253 := by
  rw [tree4253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4254_agree_conditional
    (child0 : tree4252 = literal4252)
    (child1 : tree4253 = literal4253) : tree4254 = literal4254 := by
  rw [tree4254_def, child0, child1]
  rfl
theorem node4254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4252 live4252 coloured4252 = result4252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4253 live4253 coloured4253 = result4253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4254 live4254 coloured4254 = result4254 := by
  rw [tree4254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4252 coloured4252 at child
  try dsimp only [live4254, coloured4254]
  rw [child]
  dsimp only [result4252]
  have child := child1
  unfold live4253 coloured4253 at child
  try dsimp only [live4254, coloured4254]
  rw [child]
  dsimp only [result4253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4255_agree_conditional : tree4255 = literal4255 := by
  rw [tree4255_def]
  rfl
theorem node4255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4255 live4255 coloured4255 = result4255 := by
  rw [tree4255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4256_agree_conditional
    (child0 : tree4254 = literal4254)
    (child1 : tree4255 = literal4255) : tree4256 = literal4256 := by
  rw [tree4256_def, child0, child1]
  rfl
theorem node4256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4254 live4254 coloured4254 = result4254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4255 live4255 coloured4255 = result4255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4256 live4256 coloured4256 = result4256 := by
  rw [tree4256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4254 coloured4254 at child
  try dsimp only [live4256, coloured4256]
  rw [child]
  dsimp only [result4254]
  have child := child1
  unfold live4255 coloured4255 at child
  try dsimp only [live4256, coloured4256]
  rw [child]
  dsimp only [result4255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4257_agree_conditional : tree4257 = literal4257 := by
  rw [tree4257_def]
  rfl
theorem node4257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4257 live4257 coloured4257 = result4257 := by
  rw [tree4257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4258_agree_conditional
    (child0 : tree4256 = literal4256)
    (child1 : tree4257 = literal4257) : tree4258 = literal4258 := by
  rw [tree4258_def, child0, child1]
  rfl
theorem node4258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4256 live4256 coloured4256 = result4256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4257 live4257 coloured4257 = result4257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4258 live4258 coloured4258 = result4258 := by
  rw [tree4258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4256 coloured4256 at child
  try dsimp only [live4258, coloured4258]
  rw [child]
  dsimp only [result4256]
  have child := child1
  unfold live4257 coloured4257 at child
  try dsimp only [live4258, coloured4258]
  rw [child]
  dsimp only [result4257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4259_agree_conditional : tree4259 = literal4259 := by
  rw [tree4259_def]
  rfl
theorem node4259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4259 live4259 coloured4259 = result4259 := by
  rw [tree4259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4260_agree_conditional
    (child0 : tree4258 = literal4258)
    (child1 : tree4259 = literal4259) : tree4260 = literal4260 := by
  rw [tree4260_def, child0, child1]
  rfl
theorem node4260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4258 live4258 coloured4258 = result4258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4259 live4259 coloured4259 = result4259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4260 live4260 coloured4260 = result4260 := by
  rw [tree4260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4258 coloured4258 at child
  try dsimp only [live4260, coloured4260]
  rw [child]
  dsimp only [result4258]
  have child := child1
  unfold live4259 coloured4259 at child
  try dsimp only [live4260, coloured4260]
  rw [child]
  dsimp only [result4259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4261_agree_conditional : tree4261 = literal4261 := by
  rw [tree4261_def]
  rfl
theorem node4261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4261 live4261 coloured4261 = result4261 := by
  rw [tree4261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4262_agree_conditional
    (child0 : tree4260 = literal4260)
    (child1 : tree4261 = literal4261) : tree4262 = literal4262 := by
  rw [tree4262_def, child0, child1]
  rfl
theorem node4262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4260 live4260 coloured4260 = result4260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4261 live4261 coloured4261 = result4261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4262 live4262 coloured4262 = result4262 := by
  rw [tree4262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4260 coloured4260 at child
  try dsimp only [live4262, coloured4262]
  rw [child]
  dsimp only [result4260]
  have child := child1
  unfold live4261 coloured4261 at child
  try dsimp only [live4262, coloured4262]
  rw [child]
  dsimp only [result4261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4263_agree_conditional : tree4263 = literal4263 := by
  rw [tree4263_def]
  rfl
theorem node4263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4263 live4263 coloured4263 = result4263 := by
  rw [tree4263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4264_agree_conditional
    (child0 : tree4262 = literal4262)
    (child1 : tree4263 = literal4263) : tree4264 = literal4264 := by
  rw [tree4264_def, child0, child1]
  rfl
theorem node4264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4262 live4262 coloured4262 = result4262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4263 live4263 coloured4263 = result4263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4264 live4264 coloured4264 = result4264 := by
  rw [tree4264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4262 coloured4262 at child
  try dsimp only [live4264, coloured4264]
  rw [child]
  dsimp only [result4262]
  have child := child1
  unfold live4263 coloured4263 at child
  try dsimp only [live4264, coloured4264]
  rw [child]
  dsimp only [result4263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4265_agree_conditional : tree4265 = literal4265 := by
  rw [tree4265_def]
  rfl
theorem node4265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4265 live4265 coloured4265 = result4265 := by
  rw [tree4265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4266_agree_conditional
    (child0 : tree4264 = literal4264)
    (child1 : tree4265 = literal4265) : tree4266 = literal4266 := by
  rw [tree4266_def, child0, child1]
  rfl
theorem node4266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4264 live4264 coloured4264 = result4264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4265 live4265 coloured4265 = result4265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4266 live4266 coloured4266 = result4266 := by
  rw [tree4266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4264 coloured4264 at child
  try dsimp only [live4266, coloured4266]
  rw [child]
  dsimp only [result4264]
  have child := child1
  unfold live4265 coloured4265 at child
  try dsimp only [live4266, coloured4266]
  rw [child]
  dsimp only [result4265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4267_agree_conditional : tree4267 = literal4267 := by
  rw [tree4267_def]
  rfl
theorem node4267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4267 live4267 coloured4267 = result4267 := by
  rw [tree4267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4268_agree_conditional
    (child0 : tree4266 = literal4266)
    (child1 : tree4267 = literal4267) : tree4268 = literal4268 := by
  rw [tree4268_def, child0, child1]
  rfl
theorem node4268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4266 live4266 coloured4266 = result4266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4267 live4267 coloured4267 = result4267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4268 live4268 coloured4268 = result4268 := by
  rw [tree4268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4266 coloured4266 at child
  try dsimp only [live4268, coloured4268]
  rw [child]
  dsimp only [result4266]
  have child := child1
  unfold live4267 coloured4267 at child
  try dsimp only [live4268, coloured4268]
  rw [child]
  dsimp only [result4267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4269_agree_conditional : tree4269 = literal4269 := by
  rw [tree4269_def]
  rfl
theorem node4269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4269 live4269 coloured4269 = result4269 := by
  rw [tree4269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4270_agree_conditional
    (child0 : tree4268 = literal4268)
    (child1 : tree4269 = literal4269) : tree4270 = literal4270 := by
  rw [tree4270_def, child0, child1]
  rfl
theorem node4270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4268 live4268 coloured4268 = result4268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4269 live4269 coloured4269 = result4269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4270 live4270 coloured4270 = result4270 := by
  rw [tree4270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4268 coloured4268 at child
  try dsimp only [live4270, coloured4270]
  rw [child]
  dsimp only [result4268]
  have child := child1
  unfold live4269 coloured4269 at child
  try dsimp only [live4270, coloured4270]
  rw [child]
  dsimp only [result4269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4271_agree_conditional : tree4271 = literal4271 := by
  rw [tree4271_def]
  rfl
theorem node4271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4271 live4271 coloured4271 = result4271 := by
  rw [tree4271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4272_agree_conditional
    (child0 : tree4270 = literal4270)
    (child1 : tree4271 = literal4271) : tree4272 = literal4272 := by
  rw [tree4272_def, child0, child1]
  rfl
theorem node4272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4270 live4270 coloured4270 = result4270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4271 live4271 coloured4271 = result4271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4272 live4272 coloured4272 = result4272 := by
  rw [tree4272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4270 coloured4270 at child
  try dsimp only [live4272, coloured4272]
  rw [child]
  dsimp only [result4270]
  have child := child1
  unfold live4271 coloured4271 at child
  try dsimp only [live4272, coloured4272]
  rw [child]
  dsimp only [result4271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4273_agree_conditional : tree4273 = literal4273 := by
  rw [tree4273_def]
  rfl
theorem node4273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4273 live4273 coloured4273 = result4273 := by
  rw [tree4273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4274_agree_conditional
    (child0 : tree4272 = literal4272)
    (child1 : tree4273 = literal4273) : tree4274 = literal4274 := by
  rw [tree4274_def, child0, child1]
  rfl
theorem node4274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4272 live4272 coloured4272 = result4272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4273 live4273 coloured4273 = result4273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4274 live4274 coloured4274 = result4274 := by
  rw [tree4274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4272 coloured4272 at child
  try dsimp only [live4274, coloured4274]
  rw [child]
  dsimp only [result4272]
  have child := child1
  unfold live4273 coloured4273 at child
  try dsimp only [live4274, coloured4274]
  rw [child]
  dsimp only [result4273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4275_agree_conditional : tree4275 = literal4275 := by
  rw [tree4275_def]
  rfl
theorem node4275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4275 live4275 coloured4275 = result4275 := by
  rw [tree4275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4276_agree_conditional
    (child0 : tree4274 = literal4274)
    (child1 : tree4275 = literal4275) : tree4276 = literal4276 := by
  rw [tree4276_def, child0, child1]
  rfl
theorem node4276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4274 live4274 coloured4274 = result4274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4275 live4275 coloured4275 = result4275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4276 live4276 coloured4276 = result4276 := by
  rw [tree4276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4274 coloured4274 at child
  try dsimp only [live4276, coloured4276]
  rw [child]
  dsimp only [result4274]
  have child := child1
  unfold live4275 coloured4275 at child
  try dsimp only [live4276, coloured4276]
  rw [child]
  dsimp only [result4275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4277_agree_conditional : tree4277 = literal4277 := by
  rw [tree4277_def]
  rfl
theorem node4277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4277 live4277 coloured4277 = result4277 := by
  rw [tree4277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4278_agree_conditional
    (child0 : tree4276 = literal4276)
    (child1 : tree4277 = literal4277) : tree4278 = literal4278 := by
  rw [tree4278_def, child0, child1]
  rfl
theorem node4278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4276 live4276 coloured4276 = result4276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4277 live4277 coloured4277 = result4277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4278 live4278 coloured4278 = result4278 := by
  rw [tree4278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4276 coloured4276 at child
  try dsimp only [live4278, coloured4278]
  rw [child]
  dsimp only [result4276]
  have child := child1
  unfold live4277 coloured4277 at child
  try dsimp only [live4278, coloured4278]
  rw [child]
  dsimp only [result4277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4279_agree_conditional : tree4279 = literal4279 := by
  rw [tree4279_def]
  rfl
theorem node4279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4279 live4279 coloured4279 = result4279 := by
  rw [tree4279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4280_agree_conditional
    (child0 : tree4278 = literal4278)
    (child1 : tree4279 = literal4279) : tree4280 = literal4280 := by
  rw [tree4280_def, child0, child1]
  rfl
theorem node4280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4278 live4278 coloured4278 = result4278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4279 live4279 coloured4279 = result4279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4280 live4280 coloured4280 = result4280 := by
  rw [tree4280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4278 coloured4278 at child
  try dsimp only [live4280, coloured4280]
  rw [child]
  dsimp only [result4278]
  have child := child1
  unfold live4279 coloured4279 at child
  try dsimp only [live4280, coloured4280]
  rw [child]
  dsimp only [result4279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4281_agree_conditional : tree4281 = literal4281 := by
  rw [tree4281_def]
  rfl
theorem node4281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4281 live4281 coloured4281 = result4281 := by
  rw [tree4281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4282_agree_conditional
    (child0 : tree4280 = literal4280)
    (child1 : tree4281 = literal4281) : tree4282 = literal4282 := by
  rw [tree4282_def, child0, child1]
  rfl
theorem node4282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4280 live4280 coloured4280 = result4280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4281 live4281 coloured4281 = result4281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4282 live4282 coloured4282 = result4282 := by
  rw [tree4282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4280 coloured4280 at child
  try dsimp only [live4282, coloured4282]
  rw [child]
  dsimp only [result4280]
  have child := child1
  unfold live4281 coloured4281 at child
  try dsimp only [live4282, coloured4282]
  rw [child]
  dsimp only [result4281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4283_agree_conditional : tree4283 = literal4283 := by
  rw [tree4283_def]
  rfl
theorem node4283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4283 live4283 coloured4283 = result4283 := by
  rw [tree4283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4284_agree_conditional
    (child0 : tree4282 = literal4282)
    (child1 : tree4283 = literal4283) : tree4284 = literal4284 := by
  rw [tree4284_def, child0, child1]
  rfl
theorem node4284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4282 live4282 coloured4282 = result4282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4283 live4283 coloured4283 = result4283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4284 live4284 coloured4284 = result4284 := by
  rw [tree4284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4282 coloured4282 at child
  try dsimp only [live4284, coloured4284]
  rw [child]
  dsimp only [result4282]
  have child := child1
  unfold live4283 coloured4283 at child
  try dsimp only [live4284, coloured4284]
  rw [child]
  dsimp only [result4283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4285_agree_conditional : tree4285 = literal4285 := by
  rw [tree4285_def]
  rfl
theorem node4285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4285 live4285 coloured4285 = result4285 := by
  rw [tree4285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4286_agree_conditional
    (child0 : tree4284 = literal4284)
    (child1 : tree4285 = literal4285) : tree4286 = literal4286 := by
  rw [tree4286_def, child0, child1]
  rfl
theorem node4286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4284 live4284 coloured4284 = result4284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4285 live4285 coloured4285 = result4285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4286 live4286 coloured4286 = result4286 := by
  rw [tree4286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4284 coloured4284 at child
  try dsimp only [live4286, coloured4286]
  rw [child]
  dsimp only [result4284]
  have child := child1
  unfold live4285 coloured4285 at child
  try dsimp only [live4286, coloured4286]
  rw [child]
  dsimp only [result4285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4287_agree_conditional : tree4287 = literal4287 := by
  rw [tree4287_def]
  rfl
theorem node4287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4287 live4287 coloured4287 = result4287 := by
  rw [tree4287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4288_agree_conditional
    (child0 : tree4286 = literal4286)
    (child1 : tree4287 = literal4287) : tree4288 = literal4288 := by
  rw [tree4288_def, child0, child1]
  rfl
theorem node4288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4286 live4286 coloured4286 = result4286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4287 live4287 coloured4287 = result4287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4288 live4288 coloured4288 = result4288 := by
  rw [tree4288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4286 coloured4286 at child
  try dsimp only [live4288, coloured4288]
  rw [child]
  dsimp only [result4286]
  have child := child1
  unfold live4287 coloured4287 at child
  try dsimp only [live4288, coloured4288]
  rw [child]
  dsimp only [result4287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4289_agree_conditional : tree4289 = literal4289 := by
  rw [tree4289_def]
  rfl
theorem node4289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4289 live4289 coloured4289 = result4289 := by
  rw [tree4289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4290_agree_conditional
    (child0 : tree4288 = literal4288)
    (child1 : tree4289 = literal4289) : tree4290 = literal4290 := by
  rw [tree4290_def, child0, child1]
  rfl
theorem node4290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4288 live4288 coloured4288 = result4288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4289 live4289 coloured4289 = result4289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4290 live4290 coloured4290 = result4290 := by
  rw [tree4290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4288 coloured4288 at child
  try dsimp only [live4290, coloured4290]
  rw [child]
  dsimp only [result4288]
  have child := child1
  unfold live4289 coloured4289 at child
  try dsimp only [live4290, coloured4290]
  rw [child]
  dsimp only [result4289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4291_agree_conditional : tree4291 = literal4291 := by
  rw [tree4291_def]
  rfl
theorem node4291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4291 live4291 coloured4291 = result4291 := by
  rw [tree4291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4292_agree_conditional
    (child0 : tree4290 = literal4290)
    (child1 : tree4291 = literal4291) : tree4292 = literal4292 := by
  rw [tree4292_def, child0, child1]
  rfl
theorem node4292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4290 live4290 coloured4290 = result4290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4291 live4291 coloured4291 = result4291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4292 live4292 coloured4292 = result4292 := by
  rw [tree4292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4290 coloured4290 at child
  try dsimp only [live4292, coloured4292]
  rw [child]
  dsimp only [result4290]
  have child := child1
  unfold live4291 coloured4291 at child
  try dsimp only [live4292, coloured4292]
  rw [child]
  dsimp only [result4291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4293_agree_conditional : tree4293 = literal4293 := by
  rw [tree4293_def]
  rfl
theorem node4293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4293 live4293 coloured4293 = result4293 := by
  rw [tree4293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4294_agree_conditional
    (child0 : tree4292 = literal4292)
    (child1 : tree4293 = literal4293) : tree4294 = literal4294 := by
  rw [tree4294_def, child0, child1]
  rfl
theorem node4294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4292 live4292 coloured4292 = result4292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4293 live4293 coloured4293 = result4293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4294 live4294 coloured4294 = result4294 := by
  rw [tree4294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4292 coloured4292 at child
  try dsimp only [live4294, coloured4294]
  rw [child]
  dsimp only [result4292]
  have child := child1
  unfold live4293 coloured4293 at child
  try dsimp only [live4294, coloured4294]
  rw [child]
  dsimp only [result4293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4295_agree_conditional : tree4295 = literal4295 := by
  rw [tree4295_def]
  rfl
theorem node4295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4295 live4295 coloured4295 = result4295 := by
  rw [tree4295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4296_agree_conditional
    (child0 : tree4294 = literal4294)
    (child1 : tree4295 = literal4295) : tree4296 = literal4296 := by
  rw [tree4296_def, child0, child1]
  rfl
theorem node4296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4294 live4294 coloured4294 = result4294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4295 live4295 coloured4295 = result4295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4296 live4296 coloured4296 = result4296 := by
  rw [tree4296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4294 coloured4294 at child
  try dsimp only [live4296, coloured4296]
  rw [child]
  dsimp only [result4294]
  have child := child1
  unfold live4295 coloured4295 at child
  try dsimp only [live4296, coloured4296]
  rw [child]
  dsimp only [result4295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4297_agree_conditional : tree4297 = literal4297 := by
  rw [tree4297_def]
  rfl
theorem node4297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4297 live4297 coloured4297 = result4297 := by
  rw [tree4297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4298_agree_conditional
    (child0 : tree4296 = literal4296)
    (child1 : tree4297 = literal4297) : tree4298 = literal4298 := by
  rw [tree4298_def, child0, child1]
  rfl
theorem node4298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4296 live4296 coloured4296 = result4296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4297 live4297 coloured4297 = result4297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4298 live4298 coloured4298 = result4298 := by
  rw [tree4298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4296 coloured4296 at child
  try dsimp only [live4298, coloured4298]
  rw [child]
  dsimp only [result4296]
  have child := child1
  unfold live4297 coloured4297 at child
  try dsimp only [live4298, coloured4298]
  rw [child]
  dsimp only [result4297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4299_agree_conditional : tree4299 = literal4299 := by
  rw [tree4299_def]
  rfl
theorem node4299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4299 live4299 coloured4299 = result4299 := by
  rw [tree4299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4300_agree_conditional
    (child0 : tree4298 = literal4298)
    (child1 : tree4299 = literal4299) : tree4300 = literal4300 := by
  rw [tree4300_def, child0, child1]
  rfl
theorem node4300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4298 live4298 coloured4298 = result4298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4299 live4299 coloured4299 = result4299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4300 live4300 coloured4300 = result4300 := by
  rw [tree4300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4298 coloured4298 at child
  try dsimp only [live4300, coloured4300]
  rw [child]
  dsimp only [result4298]
  have child := child1
  unfold live4299 coloured4299 at child
  try dsimp only [live4300, coloured4300]
  rw [child]
  dsimp only [result4299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4301_agree_conditional : tree4301 = literal4301 := by
  rw [tree4301_def]
  rfl
theorem node4301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4301 live4301 coloured4301 = result4301 := by
  rw [tree4301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4302_agree_conditional
    (child0 : tree4300 = literal4300)
    (child1 : tree4301 = literal4301) : tree4302 = literal4302 := by
  rw [tree4302_def, child0, child1]
  rfl
theorem node4302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4300 live4300 coloured4300 = result4300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4301 live4301 coloured4301 = result4301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4302 live4302 coloured4302 = result4302 := by
  rw [tree4302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4300 coloured4300 at child
  try dsimp only [live4302, coloured4302]
  rw [child]
  dsimp only [result4300]
  have child := child1
  unfold live4301 coloured4301 at child
  try dsimp only [live4302, coloured4302]
  rw [child]
  dsimp only [result4301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4303_agree_conditional : tree4303 = literal4303 := by
  rw [tree4303_def]
  rfl
theorem node4303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4303 live4303 coloured4303 = result4303 := by
  rw [tree4303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4304_agree_conditional
    (child0 : tree4302 = literal4302)
    (child1 : tree4303 = literal4303) : tree4304 = literal4304 := by
  rw [tree4304_def, child0, child1]
  rfl
theorem node4304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4302 live4302 coloured4302 = result4302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4303 live4303 coloured4303 = result4303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4304 live4304 coloured4304 = result4304 := by
  rw [tree4304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4302 coloured4302 at child
  try dsimp only [live4304, coloured4304]
  rw [child]
  dsimp only [result4302]
  have child := child1
  unfold live4303 coloured4303 at child
  try dsimp only [live4304, coloured4304]
  rw [child]
  dsimp only [result4303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4305_agree_conditional : tree4305 = literal4305 := by
  rw [tree4305_def]
  rfl
theorem node4305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4305 live4305 coloured4305 = result4305 := by
  rw [tree4305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4306_agree_conditional
    (child0 : tree4304 = literal4304)
    (child1 : tree4305 = literal4305) : tree4306 = literal4306 := by
  rw [tree4306_def, child0, child1]
  rfl
theorem node4306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4304 live4304 coloured4304 = result4304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4305 live4305 coloured4305 = result4305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4306 live4306 coloured4306 = result4306 := by
  rw [tree4306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4304 coloured4304 at child
  try dsimp only [live4306, coloured4306]
  rw [child]
  dsimp only [result4304]
  have child := child1
  unfold live4305 coloured4305 at child
  try dsimp only [live4306, coloured4306]
  rw [child]
  dsimp only [result4305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4307_agree_conditional : tree4307 = literal4307 := by
  rw [tree4307_def]
  rfl
theorem node4307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4307 live4307 coloured4307 = result4307 := by
  rw [tree4307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4308_agree_conditional
    (child0 : tree4306 = literal4306)
    (child1 : tree4307 = literal4307) : tree4308 = literal4308 := by
  rw [tree4308_def, child0, child1]
  rfl
theorem node4308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4306 live4306 coloured4306 = result4306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4307 live4307 coloured4307 = result4307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4308 live4308 coloured4308 = result4308 := by
  rw [tree4308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4306 coloured4306 at child
  try dsimp only [live4308, coloured4308]
  rw [child]
  dsimp only [result4306]
  have child := child1
  unfold live4307 coloured4307 at child
  try dsimp only [live4308, coloured4308]
  rw [child]
  dsimp only [result4307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4309_agree_conditional : tree4309 = literal4309 := by
  rw [tree4309_def]
  rfl
theorem node4309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4309 live4309 coloured4309 = result4309 := by
  rw [tree4309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4310_agree_conditional
    (child0 : tree4308 = literal4308)
    (child1 : tree4309 = literal4309) : tree4310 = literal4310 := by
  rw [tree4310_def, child0, child1]
  rfl
theorem node4310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4308 live4308 coloured4308 = result4308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4309 live4309 coloured4309 = result4309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4310 live4310 coloured4310 = result4310 := by
  rw [tree4310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4308 coloured4308 at child
  try dsimp only [live4310, coloured4310]
  rw [child]
  dsimp only [result4308]
  have child := child1
  unfold live4309 coloured4309 at child
  try dsimp only [live4310, coloured4310]
  rw [child]
  dsimp only [result4309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4311_agree_conditional : tree4311 = literal4311 := by
  rw [tree4311_def]
  rfl
theorem node4311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4311 live4311 coloured4311 = result4311 := by
  rw [tree4311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4312_agree_conditional
    (child0 : tree4310 = literal4310)
    (child1 : tree4311 = literal4311) : tree4312 = literal4312 := by
  rw [tree4312_def, child0, child1]
  rfl
theorem node4312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4310 live4310 coloured4310 = result4310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4311 live4311 coloured4311 = result4311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4312 live4312 coloured4312 = result4312 := by
  rw [tree4312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4310 coloured4310 at child
  try dsimp only [live4312, coloured4312]
  rw [child]
  dsimp only [result4310]
  have child := child1
  unfold live4311 coloured4311 at child
  try dsimp only [live4312, coloured4312]
  rw [child]
  dsimp only [result4311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4313_agree_conditional : tree4313 = literal4313 := by
  rw [tree4313_def]
  rfl
theorem node4313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4313 live4313 coloured4313 = result4313 := by
  rw [tree4313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4314_agree_conditional
    (child0 : tree4312 = literal4312)
    (child1 : tree4313 = literal4313) : tree4314 = literal4314 := by
  rw [tree4314_def, child0, child1]
  rfl
theorem node4314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4312 live4312 coloured4312 = result4312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4313 live4313 coloured4313 = result4313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4314 live4314 coloured4314 = result4314 := by
  rw [tree4314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4312 coloured4312 at child
  try dsimp only [live4314, coloured4314]
  rw [child]
  dsimp only [result4312]
  have child := child1
  unfold live4313 coloured4313 at child
  try dsimp only [live4314, coloured4314]
  rw [child]
  dsimp only [result4313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4315_agree_conditional : tree4315 = literal4315 := by
  rw [tree4315_def]
  rfl
theorem node4315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4315 live4315 coloured4315 = result4315 := by
  rw [tree4315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4316_agree_conditional
    (child0 : tree4314 = literal4314)
    (child1 : tree4315 = literal4315) : tree4316 = literal4316 := by
  rw [tree4316_def, child0, child1]
  rfl
theorem node4316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4314 live4314 coloured4314 = result4314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4315 live4315 coloured4315 = result4315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4316 live4316 coloured4316 = result4316 := by
  rw [tree4316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4314 coloured4314 at child
  try dsimp only [live4316, coloured4316]
  rw [child]
  dsimp only [result4314]
  have child := child1
  unfold live4315 coloured4315 at child
  try dsimp only [live4316, coloured4316]
  rw [child]
  dsimp only [result4315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4317_agree_conditional : tree4317 = literal4317 := by
  rw [tree4317_def]
  rfl
theorem node4317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4317 live4317 coloured4317 = result4317 := by
  rw [tree4317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4318_agree_conditional
    (child0 : tree4316 = literal4316)
    (child1 : tree4317 = literal4317) : tree4318 = literal4318 := by
  rw [tree4318_def, child0, child1]
  rfl
theorem node4318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4316 live4316 coloured4316 = result4316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4317 live4317 coloured4317 = result4317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4318 live4318 coloured4318 = result4318 := by
  rw [tree4318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4316 coloured4316 at child
  try dsimp only [live4318, coloured4318]
  rw [child]
  dsimp only [result4316]
  have child := child1
  unfold live4317 coloured4317 at child
  try dsimp only [live4318, coloured4318]
  rw [child]
  dsimp only [result4317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4319_agree_conditional : tree4319 = literal4319 := by
  rw [tree4319_def]
  rfl
theorem node4319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4319 live4319 coloured4319 = result4319 := by
  rw [tree4319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
