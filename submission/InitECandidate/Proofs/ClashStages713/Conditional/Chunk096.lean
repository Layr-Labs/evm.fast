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
theorem tree9216_agree_conditional
    (child0 : tree9214 = literal9214)
    (child1 : tree9215 = literal9215) : tree9216 = literal9216 := by
  rw [tree9216_def, child0, child1]
  rfl
theorem node9216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9214 live9214 coloured9214 = result9214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9215 live9215 coloured9215 = result9215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9216 live9216 coloured9216 = result9216 := by
  rw [tree9216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9214 coloured9214 at child
  try dsimp only [live9216, coloured9216]
  rw [child]
  dsimp only [result9214]
  have child := child1
  unfold live9215 coloured9215 at child
  try dsimp only [live9216, coloured9216]
  rw [child]
  dsimp only [result9215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9217_agree_conditional : tree9217 = literal9217 := by
  rw [tree9217_def]
  rfl
theorem node9217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9217 live9217 coloured9217 = result9217 := by
  rw [tree9217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9218_agree_conditional
    (child0 : tree9216 = literal9216)
    (child1 : tree9217 = literal9217) : tree9218 = literal9218 := by
  rw [tree9218_def, child0, child1]
  rfl
theorem node9218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9216 live9216 coloured9216 = result9216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9217 live9217 coloured9217 = result9217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9218 live9218 coloured9218 = result9218 := by
  rw [tree9218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9216 coloured9216 at child
  try dsimp only [live9218, coloured9218]
  rw [child]
  dsimp only [result9216]
  have child := child1
  unfold live9217 coloured9217 at child
  try dsimp only [live9218, coloured9218]
  rw [child]
  dsimp only [result9217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9219_agree_conditional : tree9219 = literal9219 := by
  rw [tree9219_def]
  rfl
theorem node9219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9219 live9219 coloured9219 = result9219 := by
  rw [tree9219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9220_agree_conditional
    (child0 : tree9218 = literal9218)
    (child1 : tree9219 = literal9219) : tree9220 = literal9220 := by
  rw [tree9220_def, child0, child1]
  rfl
theorem node9220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9218 live9218 coloured9218 = result9218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9219 live9219 coloured9219 = result9219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9220 live9220 coloured9220 = result9220 := by
  rw [tree9220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9218 coloured9218 at child
  try dsimp only [live9220, coloured9220]
  rw [child]
  dsimp only [result9218]
  have child := child1
  unfold live9219 coloured9219 at child
  try dsimp only [live9220, coloured9220]
  rw [child]
  dsimp only [result9219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9221_agree_conditional : tree9221 = literal9221 := by
  rw [tree9221_def]
  rfl
theorem node9221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9221 live9221 coloured9221 = result9221 := by
  rw [tree9221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9222_agree_conditional
    (child0 : tree9220 = literal9220)
    (child1 : tree9221 = literal9221) : tree9222 = literal9222 := by
  rw [tree9222_def, child0, child1]
  rfl
theorem node9222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9220 live9220 coloured9220 = result9220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9221 live9221 coloured9221 = result9221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9222 live9222 coloured9222 = result9222 := by
  rw [tree9222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9220 coloured9220 at child
  try dsimp only [live9222, coloured9222]
  rw [child]
  dsimp only [result9220]
  have child := child1
  unfold live9221 coloured9221 at child
  try dsimp only [live9222, coloured9222]
  rw [child]
  dsimp only [result9221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9223_agree_conditional : tree9223 = literal9223 := by
  rw [tree9223_def]
  rfl
theorem node9223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9223 live9223 coloured9223 = result9223 := by
  rw [tree9223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9224_agree_conditional
    (child0 : tree9222 = literal9222)
    (child1 : tree9223 = literal9223) : tree9224 = literal9224 := by
  rw [tree9224_def, child0, child1]
  rfl
theorem node9224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9222 live9222 coloured9222 = result9222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9223 live9223 coloured9223 = result9223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9224 live9224 coloured9224 = result9224 := by
  rw [tree9224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9222 coloured9222 at child
  try dsimp only [live9224, coloured9224]
  rw [child]
  dsimp only [result9222]
  have child := child1
  unfold live9223 coloured9223 at child
  try dsimp only [live9224, coloured9224]
  rw [child]
  dsimp only [result9223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9225_agree_conditional : tree9225 = literal9225 := by
  rw [tree9225_def]
  rfl
theorem node9225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9225 live9225 coloured9225 = result9225 := by
  rw [tree9225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9226_agree_conditional
    (child0 : tree9224 = literal9224)
    (child1 : tree9225 = literal9225) : tree9226 = literal9226 := by
  rw [tree9226_def, child0, child1]
  rfl
theorem node9226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9224 live9224 coloured9224 = result9224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9225 live9225 coloured9225 = result9225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9226 live9226 coloured9226 = result9226 := by
  rw [tree9226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9224 coloured9224 at child
  try dsimp only [live9226, coloured9226]
  rw [child]
  dsimp only [result9224]
  have child := child1
  unfold live9225 coloured9225 at child
  try dsimp only [live9226, coloured9226]
  rw [child]
  dsimp only [result9225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9227_agree_conditional : tree9227 = literal9227 := by
  rw [tree9227_def]
  rfl
theorem node9227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9227 live9227 coloured9227 = result9227 := by
  rw [tree9227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9228_agree_conditional
    (child0 : tree9226 = literal9226)
    (child1 : tree9227 = literal9227) : tree9228 = literal9228 := by
  rw [tree9228_def, child0, child1]
  rfl
theorem node9228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9226 live9226 coloured9226 = result9226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9227 live9227 coloured9227 = result9227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9228 live9228 coloured9228 = result9228 := by
  rw [tree9228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9226 coloured9226 at child
  try dsimp only [live9228, coloured9228]
  rw [child]
  dsimp only [result9226]
  have child := child1
  unfold live9227 coloured9227 at child
  try dsimp only [live9228, coloured9228]
  rw [child]
  dsimp only [result9227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9229_agree_conditional : tree9229 = literal9229 := by
  rw [tree9229_def]
  rfl
theorem node9229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9229 live9229 coloured9229 = result9229 := by
  rw [tree9229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9230_agree_conditional
    (child0 : tree9228 = literal9228)
    (child1 : tree9229 = literal9229) : tree9230 = literal9230 := by
  rw [tree9230_def, child0, child1]
  rfl
theorem node9230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9228 live9228 coloured9228 = result9228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9229 live9229 coloured9229 = result9229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9230 live9230 coloured9230 = result9230 := by
  rw [tree9230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9228 coloured9228 at child
  try dsimp only [live9230, coloured9230]
  rw [child]
  dsimp only [result9228]
  have child := child1
  unfold live9229 coloured9229 at child
  try dsimp only [live9230, coloured9230]
  rw [child]
  dsimp only [result9229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9231_agree_conditional : tree9231 = literal9231 := by
  rw [tree9231_def]
  rfl
theorem node9231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9231 live9231 coloured9231 = result9231 := by
  rw [tree9231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9232_agree_conditional
    (child0 : tree9230 = literal9230)
    (child1 : tree9231 = literal9231) : tree9232 = literal9232 := by
  rw [tree9232_def, child0, child1]
  rfl
theorem node9232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9230 live9230 coloured9230 = result9230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9231 live9231 coloured9231 = result9231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9232 live9232 coloured9232 = result9232 := by
  rw [tree9232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9230 coloured9230 at child
  try dsimp only [live9232, coloured9232]
  rw [child]
  dsimp only [result9230]
  have child := child1
  unfold live9231 coloured9231 at child
  try dsimp only [live9232, coloured9232]
  rw [child]
  dsimp only [result9231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9233_agree_conditional : tree9233 = literal9233 := by
  rw [tree9233_def]
  rfl
theorem node9233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9233 live9233 coloured9233 = result9233 := by
  rw [tree9233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9234_agree_conditional
    (child0 : tree9232 = literal9232)
    (child1 : tree9233 = literal9233) : tree9234 = literal9234 := by
  rw [tree9234_def, child0, child1]
  rfl
theorem node9234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9232 live9232 coloured9232 = result9232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9233 live9233 coloured9233 = result9233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9234 live9234 coloured9234 = result9234 := by
  rw [tree9234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9232 coloured9232 at child
  try dsimp only [live9234, coloured9234]
  rw [child]
  dsimp only [result9232]
  have child := child1
  unfold live9233 coloured9233 at child
  try dsimp only [live9234, coloured9234]
  rw [child]
  dsimp only [result9233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9235_agree_conditional : tree9235 = literal9235 := by
  rw [tree9235_def]
  rfl
theorem node9235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9235 live9235 coloured9235 = result9235 := by
  rw [tree9235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9236_agree_conditional
    (child0 : tree9234 = literal9234)
    (child1 : tree9235 = literal9235) : tree9236 = literal9236 := by
  rw [tree9236_def, child0, child1]
  rfl
theorem node9236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9234 live9234 coloured9234 = result9234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9235 live9235 coloured9235 = result9235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9236 live9236 coloured9236 = result9236 := by
  rw [tree9236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9234 coloured9234 at child
  try dsimp only [live9236, coloured9236]
  rw [child]
  dsimp only [result9234]
  have child := child1
  unfold live9235 coloured9235 at child
  try dsimp only [live9236, coloured9236]
  rw [child]
  dsimp only [result9235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9237_agree_conditional : tree9237 = literal9237 := by
  rw [tree9237_def]
  rfl
theorem node9237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9237 live9237 coloured9237 = result9237 := by
  rw [tree9237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9238_agree_conditional
    (child0 : tree9236 = literal9236)
    (child1 : tree9237 = literal9237) : tree9238 = literal9238 := by
  rw [tree9238_def, child0, child1]
  rfl
theorem node9238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9236 live9236 coloured9236 = result9236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9237 live9237 coloured9237 = result9237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9238 live9238 coloured9238 = result9238 := by
  rw [tree9238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9236 coloured9236 at child
  try dsimp only [live9238, coloured9238]
  rw [child]
  dsimp only [result9236]
  have child := child1
  unfold live9237 coloured9237 at child
  try dsimp only [live9238, coloured9238]
  rw [child]
  dsimp only [result9237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9239_agree_conditional : tree9239 = literal9239 := by
  rw [tree9239_def]
  rfl
theorem node9239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9239 live9239 coloured9239 = result9239 := by
  rw [tree9239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9240_agree_conditional
    (child0 : tree9238 = literal9238)
    (child1 : tree9239 = literal9239) : tree9240 = literal9240 := by
  rw [tree9240_def, child0, child1]
  rfl
theorem node9240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9238 live9238 coloured9238 = result9238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9239 live9239 coloured9239 = result9239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9240 live9240 coloured9240 = result9240 := by
  rw [tree9240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9238 coloured9238 at child
  try dsimp only [live9240, coloured9240]
  rw [child]
  dsimp only [result9238]
  have child := child1
  unfold live9239 coloured9239 at child
  try dsimp only [live9240, coloured9240]
  rw [child]
  dsimp only [result9239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9241_agree_conditional : tree9241 = literal9241 := by
  rw [tree9241_def]
  rfl
theorem node9241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9241 live9241 coloured9241 = result9241 := by
  rw [tree9241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9242_agree_conditional
    (child0 : tree9240 = literal9240)
    (child1 : tree9241 = literal9241) : tree9242 = literal9242 := by
  rw [tree9242_def, child0, child1]
  rfl
theorem node9242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9240 live9240 coloured9240 = result9240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9241 live9241 coloured9241 = result9241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9242 live9242 coloured9242 = result9242 := by
  rw [tree9242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9240 coloured9240 at child
  try dsimp only [live9242, coloured9242]
  rw [child]
  dsimp only [result9240]
  have child := child1
  unfold live9241 coloured9241 at child
  try dsimp only [live9242, coloured9242]
  rw [child]
  dsimp only [result9241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9243_agree_conditional : tree9243 = literal9243 := by
  rw [tree9243_def]
  rfl
theorem node9243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9243 live9243 coloured9243 = result9243 := by
  rw [tree9243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9244_agree_conditional
    (child0 : tree9242 = literal9242)
    (child1 : tree9243 = literal9243) : tree9244 = literal9244 := by
  rw [tree9244_def, child0, child1]
  rfl
theorem node9244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9242 live9242 coloured9242 = result9242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9243 live9243 coloured9243 = result9243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9244 live9244 coloured9244 = result9244 := by
  rw [tree9244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9242 coloured9242 at child
  try dsimp only [live9244, coloured9244]
  rw [child]
  dsimp only [result9242]
  have child := child1
  unfold live9243 coloured9243 at child
  try dsimp only [live9244, coloured9244]
  rw [child]
  dsimp only [result9243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9245_agree_conditional : tree9245 = literal9245 := by
  rw [tree9245_def]
  rfl
theorem node9245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9245 live9245 coloured9245 = result9245 := by
  rw [tree9245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9246_agree_conditional
    (child0 : tree9244 = literal9244)
    (child1 : tree9245 = literal9245) : tree9246 = literal9246 := by
  rw [tree9246_def, child0, child1]
  rfl
theorem node9246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9244 live9244 coloured9244 = result9244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9245 live9245 coloured9245 = result9245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9246 live9246 coloured9246 = result9246 := by
  rw [tree9246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9244 coloured9244 at child
  try dsimp only [live9246, coloured9246]
  rw [child]
  dsimp only [result9244]
  have child := child1
  unfold live9245 coloured9245 at child
  try dsimp only [live9246, coloured9246]
  rw [child]
  dsimp only [result9245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9247_agree_conditional : tree9247 = literal9247 := by
  rw [tree9247_def]
  rfl
theorem node9247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9247 live9247 coloured9247 = result9247 := by
  rw [tree9247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9248_agree_conditional
    (child0 : tree9246 = literal9246)
    (child1 : tree9247 = literal9247) : tree9248 = literal9248 := by
  rw [tree9248_def, child0, child1]
  rfl
theorem node9248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9246 live9246 coloured9246 = result9246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9247 live9247 coloured9247 = result9247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9248 live9248 coloured9248 = result9248 := by
  rw [tree9248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9246 coloured9246 at child
  try dsimp only [live9248, coloured9248]
  rw [child]
  dsimp only [result9246]
  have child := child1
  unfold live9247 coloured9247 at child
  try dsimp only [live9248, coloured9248]
  rw [child]
  dsimp only [result9247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9249_agree_conditional : tree9249 = literal9249 := by
  rw [tree9249_def]
  rfl
theorem node9249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9249 live9249 coloured9249 = result9249 := by
  rw [tree9249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9250_agree_conditional
    (child0 : tree9248 = literal9248)
    (child1 : tree9249 = literal9249) : tree9250 = literal9250 := by
  rw [tree9250_def, child0, child1]
  rfl
theorem node9250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9248 live9248 coloured9248 = result9248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9249 live9249 coloured9249 = result9249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9250 live9250 coloured9250 = result9250 := by
  rw [tree9250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9248 coloured9248 at child
  try dsimp only [live9250, coloured9250]
  rw [child]
  dsimp only [result9248]
  have child := child1
  unfold live9249 coloured9249 at child
  try dsimp only [live9250, coloured9250]
  rw [child]
  dsimp only [result9249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9251_agree_conditional : tree9251 = literal9251 := by
  rw [tree9251_def]
  rfl
theorem node9251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9251 live9251 coloured9251 = result9251 := by
  rw [tree9251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9252_agree_conditional
    (child0 : tree9250 = literal9250)
    (child1 : tree9251 = literal9251) : tree9252 = literal9252 := by
  rw [tree9252_def, child0, child1]
  rfl
theorem node9252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9250 live9250 coloured9250 = result9250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9251 live9251 coloured9251 = result9251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9252 live9252 coloured9252 = result9252 := by
  rw [tree9252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9250 coloured9250 at child
  try dsimp only [live9252, coloured9252]
  rw [child]
  dsimp only [result9250]
  have child := child1
  unfold live9251 coloured9251 at child
  try dsimp only [live9252, coloured9252]
  rw [child]
  dsimp only [result9251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9253_agree_conditional : tree9253 = literal9253 := by
  rw [tree9253_def]
  rfl
theorem node9253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9253 live9253 coloured9253 = result9253 := by
  rw [tree9253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9254_agree_conditional
    (child0 : tree9252 = literal9252)
    (child1 : tree9253 = literal9253) : tree9254 = literal9254 := by
  rw [tree9254_def, child0, child1]
  rfl
theorem node9254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9252 live9252 coloured9252 = result9252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9253 live9253 coloured9253 = result9253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9254 live9254 coloured9254 = result9254 := by
  rw [tree9254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9252 coloured9252 at child
  try dsimp only [live9254, coloured9254]
  rw [child]
  dsimp only [result9252]
  have child := child1
  unfold live9253 coloured9253 at child
  try dsimp only [live9254, coloured9254]
  rw [child]
  dsimp only [result9253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9255_agree_conditional : tree9255 = literal9255 := by
  rw [tree9255_def]
  rfl
theorem node9255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9255 live9255 coloured9255 = result9255 := by
  rw [tree9255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9256_agree_conditional
    (child0 : tree9254 = literal9254)
    (child1 : tree9255 = literal9255) : tree9256 = literal9256 := by
  rw [tree9256_def, child0, child1]
  rfl
theorem node9256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9254 live9254 coloured9254 = result9254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9255 live9255 coloured9255 = result9255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9256 live9256 coloured9256 = result9256 := by
  rw [tree9256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9254 coloured9254 at child
  try dsimp only [live9256, coloured9256]
  rw [child]
  dsimp only [result9254]
  have child := child1
  unfold live9255 coloured9255 at child
  try dsimp only [live9256, coloured9256]
  rw [child]
  dsimp only [result9255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9257_agree_conditional : tree9257 = literal9257 := by
  rw [tree9257_def]
  rfl
theorem node9257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9257 live9257 coloured9257 = result9257 := by
  rw [tree9257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9258_agree_conditional
    (child0 : tree9256 = literal9256)
    (child1 : tree9257 = literal9257) : tree9258 = literal9258 := by
  rw [tree9258_def, child0, child1]
  rfl
theorem node9258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9256 live9256 coloured9256 = result9256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9257 live9257 coloured9257 = result9257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9258 live9258 coloured9258 = result9258 := by
  rw [tree9258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9256 coloured9256 at child
  try dsimp only [live9258, coloured9258]
  rw [child]
  dsimp only [result9256]
  have child := child1
  unfold live9257 coloured9257 at child
  try dsimp only [live9258, coloured9258]
  rw [child]
  dsimp only [result9257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9259_agree_conditional : tree9259 = literal9259 := by
  rw [tree9259_def]
  rfl
theorem node9259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9259 live9259 coloured9259 = result9259 := by
  rw [tree9259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9260_agree_conditional
    (child0 : tree9258 = literal9258)
    (child1 : tree9259 = literal9259) : tree9260 = literal9260 := by
  rw [tree9260_def, child0, child1]
  rfl
theorem node9260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9258 live9258 coloured9258 = result9258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9259 live9259 coloured9259 = result9259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9260 live9260 coloured9260 = result9260 := by
  rw [tree9260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9258 coloured9258 at child
  try dsimp only [live9260, coloured9260]
  rw [child]
  dsimp only [result9258]
  have child := child1
  unfold live9259 coloured9259 at child
  try dsimp only [live9260, coloured9260]
  rw [child]
  dsimp only [result9259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9261_agree_conditional : tree9261 = literal9261 := by
  rw [tree9261_def]
  rfl
theorem node9261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9261 live9261 coloured9261 = result9261 := by
  rw [tree9261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9262_agree_conditional
    (child0 : tree9260 = literal9260)
    (child1 : tree9261 = literal9261) : tree9262 = literal9262 := by
  rw [tree9262_def, child0, child1]
  rfl
theorem node9262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9260 live9260 coloured9260 = result9260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9261 live9261 coloured9261 = result9261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9262 live9262 coloured9262 = result9262 := by
  rw [tree9262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9260 coloured9260 at child
  try dsimp only [live9262, coloured9262]
  rw [child]
  dsimp only [result9260]
  have child := child1
  unfold live9261 coloured9261 at child
  try dsimp only [live9262, coloured9262]
  rw [child]
  dsimp only [result9261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9263_agree_conditional : tree9263 = literal9263 := by
  rw [tree9263_def]
  rfl
theorem node9263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9263 live9263 coloured9263 = result9263 := by
  rw [tree9263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9264_agree_conditional
    (child0 : tree9262 = literal9262)
    (child1 : tree9263 = literal9263) : tree9264 = literal9264 := by
  rw [tree9264_def, child0, child1]
  rfl
theorem node9264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9262 live9262 coloured9262 = result9262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9263 live9263 coloured9263 = result9263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9264 live9264 coloured9264 = result9264 := by
  rw [tree9264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9262 coloured9262 at child
  try dsimp only [live9264, coloured9264]
  rw [child]
  dsimp only [result9262]
  have child := child1
  unfold live9263 coloured9263 at child
  try dsimp only [live9264, coloured9264]
  rw [child]
  dsimp only [result9263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9265_agree_conditional : tree9265 = literal9265 := by
  rw [tree9265_def]
  rfl
theorem node9265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9265 live9265 coloured9265 = result9265 := by
  rw [tree9265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9266_agree_conditional
    (child0 : tree9264 = literal9264)
    (child1 : tree9265 = literal9265) : tree9266 = literal9266 := by
  rw [tree9266_def, child0, child1]
  rfl
theorem node9266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9264 live9264 coloured9264 = result9264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9265 live9265 coloured9265 = result9265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9266 live9266 coloured9266 = result9266 := by
  rw [tree9266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9264 coloured9264 at child
  try dsimp only [live9266, coloured9266]
  rw [child]
  dsimp only [result9264]
  have child := child1
  unfold live9265 coloured9265 at child
  try dsimp only [live9266, coloured9266]
  rw [child]
  dsimp only [result9265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9267_agree_conditional : tree9267 = literal9267 := by
  rw [tree9267_def]
  rfl
theorem node9267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9267 live9267 coloured9267 = result9267 := by
  rw [tree9267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9268_agree_conditional
    (child0 : tree9266 = literal9266)
    (child1 : tree9267 = literal9267) : tree9268 = literal9268 := by
  rw [tree9268_def, child0, child1]
  rfl
theorem node9268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9266 live9266 coloured9266 = result9266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9267 live9267 coloured9267 = result9267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9268 live9268 coloured9268 = result9268 := by
  rw [tree9268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9266 coloured9266 at child
  try dsimp only [live9268, coloured9268]
  rw [child]
  dsimp only [result9266]
  have child := child1
  unfold live9267 coloured9267 at child
  try dsimp only [live9268, coloured9268]
  rw [child]
  dsimp only [result9267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9269_agree_conditional : tree9269 = literal9269 := by
  rw [tree9269_def]
  rfl
theorem node9269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9269 live9269 coloured9269 = result9269 := by
  rw [tree9269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9270_agree_conditional
    (child0 : tree9268 = literal9268)
    (child1 : tree9269 = literal9269) : tree9270 = literal9270 := by
  rw [tree9270_def, child0, child1]
  rfl
theorem node9270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9268 live9268 coloured9268 = result9268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9269 live9269 coloured9269 = result9269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9270 live9270 coloured9270 = result9270 := by
  rw [tree9270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9268 coloured9268 at child
  try dsimp only [live9270, coloured9270]
  rw [child]
  dsimp only [result9268]
  have child := child1
  unfold live9269 coloured9269 at child
  try dsimp only [live9270, coloured9270]
  rw [child]
  dsimp only [result9269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9271_agree_conditional : tree9271 = literal9271 := by
  rw [tree9271_def]
  rfl
theorem node9271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9271 live9271 coloured9271 = result9271 := by
  rw [tree9271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9272_agree_conditional
    (child0 : tree9270 = literal9270)
    (child1 : tree9271 = literal9271) : tree9272 = literal9272 := by
  rw [tree9272_def, child0, child1]
  rfl
theorem node9272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9270 live9270 coloured9270 = result9270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9271 live9271 coloured9271 = result9271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9272 live9272 coloured9272 = result9272 := by
  rw [tree9272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9270 coloured9270 at child
  try dsimp only [live9272, coloured9272]
  rw [child]
  dsimp only [result9270]
  have child := child1
  unfold live9271 coloured9271 at child
  try dsimp only [live9272, coloured9272]
  rw [child]
  dsimp only [result9271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9273_agree_conditional : tree9273 = literal9273 := by
  rw [tree9273_def]
  rfl
theorem node9273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9273 live9273 coloured9273 = result9273 := by
  rw [tree9273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9274_agree_conditional
    (child0 : tree9272 = literal9272)
    (child1 : tree9273 = literal9273) : tree9274 = literal9274 := by
  rw [tree9274_def, child0, child1]
  rfl
theorem node9274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9272 live9272 coloured9272 = result9272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9273 live9273 coloured9273 = result9273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9274 live9274 coloured9274 = result9274 := by
  rw [tree9274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9272 coloured9272 at child
  try dsimp only [live9274, coloured9274]
  rw [child]
  dsimp only [result9272]
  have child := child1
  unfold live9273 coloured9273 at child
  try dsimp only [live9274, coloured9274]
  rw [child]
  dsimp only [result9273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9275_agree_conditional : tree9275 = literal9275 := by
  rw [tree9275_def]
  rfl
theorem node9275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9275 live9275 coloured9275 = result9275 := by
  rw [tree9275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9276_agree_conditional
    (child0 : tree9274 = literal9274)
    (child1 : tree9275 = literal9275) : tree9276 = literal9276 := by
  rw [tree9276_def, child0, child1]
  rfl
theorem node9276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9274 live9274 coloured9274 = result9274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9275 live9275 coloured9275 = result9275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9276 live9276 coloured9276 = result9276 := by
  rw [tree9276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9274 coloured9274 at child
  try dsimp only [live9276, coloured9276]
  rw [child]
  dsimp only [result9274]
  have child := child1
  unfold live9275 coloured9275 at child
  try dsimp only [live9276, coloured9276]
  rw [child]
  dsimp only [result9275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9277_agree_conditional : tree9277 = literal9277 := by
  rw [tree9277_def]
  rfl
theorem node9277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9277 live9277 coloured9277 = result9277 := by
  rw [tree9277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9278_agree_conditional
    (child0 : tree9276 = literal9276)
    (child1 : tree9277 = literal9277) : tree9278 = literal9278 := by
  rw [tree9278_def, child0, child1]
  rfl
theorem node9278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9276 live9276 coloured9276 = result9276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9277 live9277 coloured9277 = result9277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9278 live9278 coloured9278 = result9278 := by
  rw [tree9278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9276 coloured9276 at child
  try dsimp only [live9278, coloured9278]
  rw [child]
  dsimp only [result9276]
  have child := child1
  unfold live9277 coloured9277 at child
  try dsimp only [live9278, coloured9278]
  rw [child]
  dsimp only [result9277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9279_agree_conditional : tree9279 = literal9279 := by
  rw [tree9279_def]
  rfl
theorem node9279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9279 live9279 coloured9279 = result9279 := by
  rw [tree9279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9280_agree_conditional
    (child0 : tree9278 = literal9278)
    (child1 : tree9279 = literal9279) : tree9280 = literal9280 := by
  rw [tree9280_def, child0, child1]
  rfl
theorem node9280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9278 live9278 coloured9278 = result9278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9279 live9279 coloured9279 = result9279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9280 live9280 coloured9280 = result9280 := by
  rw [tree9280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9278 coloured9278 at child
  try dsimp only [live9280, coloured9280]
  rw [child]
  dsimp only [result9278]
  have child := child1
  unfold live9279 coloured9279 at child
  try dsimp only [live9280, coloured9280]
  rw [child]
  dsimp only [result9279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9281_agree_conditional : tree9281 = literal9281 := by
  rw [tree9281_def]
  rfl
theorem node9281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9281 live9281 coloured9281 = result9281 := by
  rw [tree9281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9282_agree_conditional
    (child0 : tree9280 = literal9280)
    (child1 : tree9281 = literal9281) : tree9282 = literal9282 := by
  rw [tree9282_def, child0, child1]
  rfl
theorem node9282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9280 live9280 coloured9280 = result9280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9281 live9281 coloured9281 = result9281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9282 live9282 coloured9282 = result9282 := by
  rw [tree9282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9280 coloured9280 at child
  try dsimp only [live9282, coloured9282]
  rw [child]
  dsimp only [result9280]
  have child := child1
  unfold live9281 coloured9281 at child
  try dsimp only [live9282, coloured9282]
  rw [child]
  dsimp only [result9281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9283_agree_conditional : tree9283 = literal9283 := by
  rw [tree9283_def]
  rfl
theorem node9283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9283 live9283 coloured9283 = result9283 := by
  rw [tree9283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9284_agree_conditional
    (child0 : tree9282 = literal9282)
    (child1 : tree9283 = literal9283) : tree9284 = literal9284 := by
  rw [tree9284_def, child0, child1]
  rfl
theorem node9284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9282 live9282 coloured9282 = result9282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9283 live9283 coloured9283 = result9283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9284 live9284 coloured9284 = result9284 := by
  rw [tree9284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9282 coloured9282 at child
  try dsimp only [live9284, coloured9284]
  rw [child]
  dsimp only [result9282]
  have child := child1
  unfold live9283 coloured9283 at child
  try dsimp only [live9284, coloured9284]
  rw [child]
  dsimp only [result9283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9285_agree_conditional : tree9285 = literal9285 := by
  rw [tree9285_def]
  rfl
theorem node9285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9285 live9285 coloured9285 = result9285 := by
  rw [tree9285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9286_agree_conditional
    (child0 : tree9284 = literal9284)
    (child1 : tree9285 = literal9285) : tree9286 = literal9286 := by
  rw [tree9286_def, child0, child1]
  rfl
theorem node9286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9284 live9284 coloured9284 = result9284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9285 live9285 coloured9285 = result9285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9286 live9286 coloured9286 = result9286 := by
  rw [tree9286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9284 coloured9284 at child
  try dsimp only [live9286, coloured9286]
  rw [child]
  dsimp only [result9284]
  have child := child1
  unfold live9285 coloured9285 at child
  try dsimp only [live9286, coloured9286]
  rw [child]
  dsimp only [result9285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9287_agree_conditional : tree9287 = literal9287 := by
  rw [tree9287_def]
  rfl
theorem node9287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9287 live9287 coloured9287 = result9287 := by
  rw [tree9287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9288_agree_conditional
    (child0 : tree9286 = literal9286)
    (child1 : tree9287 = literal9287) : tree9288 = literal9288 := by
  rw [tree9288_def, child0, child1]
  rfl
theorem node9288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9286 live9286 coloured9286 = result9286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9287 live9287 coloured9287 = result9287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9288 live9288 coloured9288 = result9288 := by
  rw [tree9288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9286 coloured9286 at child
  try dsimp only [live9288, coloured9288]
  rw [child]
  dsimp only [result9286]
  have child := child1
  unfold live9287 coloured9287 at child
  try dsimp only [live9288, coloured9288]
  rw [child]
  dsimp only [result9287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9289_agree_conditional : tree9289 = literal9289 := by
  rw [tree9289_def]
  rfl
theorem node9289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9289 live9289 coloured9289 = result9289 := by
  rw [tree9289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9290_agree_conditional
    (child0 : tree9288 = literal9288)
    (child1 : tree9289 = literal9289) : tree9290 = literal9290 := by
  rw [tree9290_def, child0, child1]
  rfl
theorem node9290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9288 live9288 coloured9288 = result9288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9289 live9289 coloured9289 = result9289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9290 live9290 coloured9290 = result9290 := by
  rw [tree9290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9288 coloured9288 at child
  try dsimp only [live9290, coloured9290]
  rw [child]
  dsimp only [result9288]
  have child := child1
  unfold live9289 coloured9289 at child
  try dsimp only [live9290, coloured9290]
  rw [child]
  dsimp only [result9289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9291_agree_conditional : tree9291 = literal9291 := by
  rw [tree9291_def]
  rfl
theorem node9291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9291 live9291 coloured9291 = result9291 := by
  rw [tree9291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9292_agree_conditional
    (child0 : tree9290 = literal9290)
    (child1 : tree9291 = literal9291) : tree9292 = literal9292 := by
  rw [tree9292_def, child0, child1]
  rfl
theorem node9292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9290 live9290 coloured9290 = result9290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9291 live9291 coloured9291 = result9291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9292 live9292 coloured9292 = result9292 := by
  rw [tree9292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9290 coloured9290 at child
  try dsimp only [live9292, coloured9292]
  rw [child]
  dsimp only [result9290]
  have child := child1
  unfold live9291 coloured9291 at child
  try dsimp only [live9292, coloured9292]
  rw [child]
  dsimp only [result9291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9293_agree_conditional : tree9293 = literal9293 := by
  rw [tree9293_def]
  rfl
theorem node9293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9293 live9293 coloured9293 = result9293 := by
  rw [tree9293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9294_agree_conditional
    (child0 : tree9292 = literal9292)
    (child1 : tree9293 = literal9293) : tree9294 = literal9294 := by
  rw [tree9294_def, child0, child1]
  rfl
theorem node9294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9292 live9292 coloured9292 = result9292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9293 live9293 coloured9293 = result9293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9294 live9294 coloured9294 = result9294 := by
  rw [tree9294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9292 coloured9292 at child
  try dsimp only [live9294, coloured9294]
  rw [child]
  dsimp only [result9292]
  have child := child1
  unfold live9293 coloured9293 at child
  try dsimp only [live9294, coloured9294]
  rw [child]
  dsimp only [result9293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9295_agree_conditional : tree9295 = literal9295 := by
  rw [tree9295_def]
  rfl
theorem node9295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9295 live9295 coloured9295 = result9295 := by
  rw [tree9295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9296_agree_conditional
    (child0 : tree9294 = literal9294)
    (child1 : tree9295 = literal9295) : tree9296 = literal9296 := by
  rw [tree9296_def, child0, child1]
  rfl
theorem node9296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9294 live9294 coloured9294 = result9294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9295 live9295 coloured9295 = result9295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9296 live9296 coloured9296 = result9296 := by
  rw [tree9296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9294 coloured9294 at child
  try dsimp only [live9296, coloured9296]
  rw [child]
  dsimp only [result9294]
  have child := child1
  unfold live9295 coloured9295 at child
  try dsimp only [live9296, coloured9296]
  rw [child]
  dsimp only [result9295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9297_agree_conditional : tree9297 = literal9297 := by
  rw [tree9297_def]
  rfl
theorem node9297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9297 live9297 coloured9297 = result9297 := by
  rw [tree9297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9298_agree_conditional
    (child0 : tree9296 = literal9296)
    (child1 : tree9297 = literal9297) : tree9298 = literal9298 := by
  rw [tree9298_def, child0, child1]
  rfl
theorem node9298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9296 live9296 coloured9296 = result9296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9297 live9297 coloured9297 = result9297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9298 live9298 coloured9298 = result9298 := by
  rw [tree9298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9296 coloured9296 at child
  try dsimp only [live9298, coloured9298]
  rw [child]
  dsimp only [result9296]
  have child := child1
  unfold live9297 coloured9297 at child
  try dsimp only [live9298, coloured9298]
  rw [child]
  dsimp only [result9297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9299_agree_conditional : tree9299 = literal9299 := by
  rw [tree9299_def]
  rfl
theorem node9299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9299 live9299 coloured9299 = result9299 := by
  rw [tree9299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9300_agree_conditional
    (child0 : tree9298 = literal9298)
    (child1 : tree9299 = literal9299) : tree9300 = literal9300 := by
  rw [tree9300_def, child0, child1]
  rfl
theorem node9300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9298 live9298 coloured9298 = result9298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9299 live9299 coloured9299 = result9299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9300 live9300 coloured9300 = result9300 := by
  rw [tree9300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9298 coloured9298 at child
  try dsimp only [live9300, coloured9300]
  rw [child]
  dsimp only [result9298]
  have child := child1
  unfold live9299 coloured9299 at child
  try dsimp only [live9300, coloured9300]
  rw [child]
  dsimp only [result9299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9301_agree_conditional : tree9301 = literal9301 := by
  rw [tree9301_def]
  rfl
theorem node9301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9301 live9301 coloured9301 = result9301 := by
  rw [tree9301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9302_agree_conditional
    (child0 : tree9300 = literal9300)
    (child1 : tree9301 = literal9301) : tree9302 = literal9302 := by
  rw [tree9302_def, child0, child1]
  rfl
theorem node9302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9300 live9300 coloured9300 = result9300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9301 live9301 coloured9301 = result9301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9302 live9302 coloured9302 = result9302 := by
  rw [tree9302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9300 coloured9300 at child
  try dsimp only [live9302, coloured9302]
  rw [child]
  dsimp only [result9300]
  have child := child1
  unfold live9301 coloured9301 at child
  try dsimp only [live9302, coloured9302]
  rw [child]
  dsimp only [result9301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9303_agree_conditional : tree9303 = literal9303 := by
  rw [tree9303_def]
  rfl
theorem node9303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9303 live9303 coloured9303 = result9303 := by
  rw [tree9303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9304_agree_conditional
    (child0 : tree9302 = literal9302)
    (child1 : tree9303 = literal9303) : tree9304 = literal9304 := by
  rw [tree9304_def, child0, child1]
  rfl
theorem node9304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9302 live9302 coloured9302 = result9302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9303 live9303 coloured9303 = result9303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9304 live9304 coloured9304 = result9304 := by
  rw [tree9304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9302 coloured9302 at child
  try dsimp only [live9304, coloured9304]
  rw [child]
  dsimp only [result9302]
  have child := child1
  unfold live9303 coloured9303 at child
  try dsimp only [live9304, coloured9304]
  rw [child]
  dsimp only [result9303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9305_agree_conditional : tree9305 = literal9305 := by
  rw [tree9305_def]
  rfl
theorem node9305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9305 live9305 coloured9305 = result9305 := by
  rw [tree9305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9306_agree_conditional
    (child0 : tree9304 = literal9304)
    (child1 : tree9305 = literal9305) : tree9306 = literal9306 := by
  rw [tree9306_def, child0, child1]
  rfl
theorem node9306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9304 live9304 coloured9304 = result9304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9305 live9305 coloured9305 = result9305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9306 live9306 coloured9306 = result9306 := by
  rw [tree9306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9304 coloured9304 at child
  try dsimp only [live9306, coloured9306]
  rw [child]
  dsimp only [result9304]
  have child := child1
  unfold live9305 coloured9305 at child
  try dsimp only [live9306, coloured9306]
  rw [child]
  dsimp only [result9305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9307_agree_conditional : tree9307 = literal9307 := by
  rw [tree9307_def]
  rfl
theorem node9307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9307 live9307 coloured9307 = result9307 := by
  rw [tree9307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9308_agree_conditional
    (child0 : tree9306 = literal9306)
    (child1 : tree9307 = literal9307) : tree9308 = literal9308 := by
  rw [tree9308_def, child0, child1]
  rfl
theorem node9308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9306 live9306 coloured9306 = result9306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9307 live9307 coloured9307 = result9307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9308 live9308 coloured9308 = result9308 := by
  rw [tree9308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9306 coloured9306 at child
  try dsimp only [live9308, coloured9308]
  rw [child]
  dsimp only [result9306]
  have child := child1
  unfold live9307 coloured9307 at child
  try dsimp only [live9308, coloured9308]
  rw [child]
  dsimp only [result9307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9309_agree_conditional : tree9309 = literal9309 := by
  rw [tree9309_def]
  rfl
theorem node9309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9309 live9309 coloured9309 = result9309 := by
  rw [tree9309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9310_agree_conditional
    (child0 : tree9308 = literal9308)
    (child1 : tree9309 = literal9309) : tree9310 = literal9310 := by
  rw [tree9310_def, child0, child1]
  rfl
theorem node9310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9308 live9308 coloured9308 = result9308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9309 live9309 coloured9309 = result9309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9310 live9310 coloured9310 = result9310 := by
  rw [tree9310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9308 coloured9308 at child
  try dsimp only [live9310, coloured9310]
  rw [child]
  dsimp only [result9308]
  have child := child1
  unfold live9309 coloured9309 at child
  try dsimp only [live9310, coloured9310]
  rw [child]
  dsimp only [result9309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9311_agree_conditional : tree9311 = literal9311 := by
  rw [tree9311_def]
  rfl
theorem node9311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9311 live9311 coloured9311 = result9311 := by
  rw [tree9311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
