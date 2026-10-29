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
theorem tree7200_agree_conditional
    (child0 : tree7198 = literal7198)
    (child1 : tree7199 = literal7199) : tree7200 = literal7200 := by
  rw [tree7200_def, child0, child1]
  rfl
theorem node7200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7198 live7198 coloured7198 = result7198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7199 live7199 coloured7199 = result7199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7200 live7200 coloured7200 = result7200 := by
  rw [tree7200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7198 coloured7198 at child
  try dsimp only [live7200, coloured7200]
  rw [child]
  dsimp only [result7198]
  have child := child1
  unfold live7199 coloured7199 at child
  try dsimp only [live7200, coloured7200]
  rw [child]
  dsimp only [result7199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7201_agree_conditional : tree7201 = literal7201 := by
  rw [tree7201_def]
  rfl
theorem node7201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7201 live7201 coloured7201 = result7201 := by
  rw [tree7201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7202_agree_conditional
    (child0 : tree7200 = literal7200)
    (child1 : tree7201 = literal7201) : tree7202 = literal7202 := by
  rw [tree7202_def, child0, child1]
  rfl
theorem node7202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7200 live7200 coloured7200 = result7200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7201 live7201 coloured7201 = result7201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7202 live7202 coloured7202 = result7202 := by
  rw [tree7202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7200 coloured7200 at child
  try dsimp only [live7202, coloured7202]
  rw [child]
  dsimp only [result7200]
  have child := child1
  unfold live7201 coloured7201 at child
  try dsimp only [live7202, coloured7202]
  rw [child]
  dsimp only [result7201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7203_agree_conditional : tree7203 = literal7203 := by
  rw [tree7203_def]
  rfl
theorem node7203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7203 live7203 coloured7203 = result7203 := by
  rw [tree7203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7204_agree_conditional
    (child0 : tree7202 = literal7202)
    (child1 : tree7203 = literal7203) : tree7204 = literal7204 := by
  rw [tree7204_def, child0, child1]
  rfl
theorem node7204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7202 live7202 coloured7202 = result7202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7203 live7203 coloured7203 = result7203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7204 live7204 coloured7204 = result7204 := by
  rw [tree7204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7202 coloured7202 at child
  try dsimp only [live7204, coloured7204]
  rw [child]
  dsimp only [result7202]
  have child := child1
  unfold live7203 coloured7203 at child
  try dsimp only [live7204, coloured7204]
  rw [child]
  dsimp only [result7203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7205_agree_conditional : tree7205 = literal7205 := by
  rw [tree7205_def]
  rfl
theorem node7205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7205 live7205 coloured7205 = result7205 := by
  rw [tree7205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7206_agree_conditional
    (child0 : tree7204 = literal7204)
    (child1 : tree7205 = literal7205) : tree7206 = literal7206 := by
  rw [tree7206_def, child0, child1]
  rfl
theorem node7206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7204 live7204 coloured7204 = result7204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7205 live7205 coloured7205 = result7205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7206 live7206 coloured7206 = result7206 := by
  rw [tree7206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7204 coloured7204 at child
  try dsimp only [live7206, coloured7206]
  rw [child]
  dsimp only [result7204]
  have child := child1
  unfold live7205 coloured7205 at child
  try dsimp only [live7206, coloured7206]
  rw [child]
  dsimp only [result7205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7207_agree_conditional : tree7207 = literal7207 := by
  rw [tree7207_def]
  rfl
theorem node7207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7207 live7207 coloured7207 = result7207 := by
  rw [tree7207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7208_agree_conditional
    (child0 : tree7206 = literal7206)
    (child1 : tree7207 = literal7207) : tree7208 = literal7208 := by
  rw [tree7208_def, child0, child1]
  rfl
theorem node7208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7206 live7206 coloured7206 = result7206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7207 live7207 coloured7207 = result7207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7208 live7208 coloured7208 = result7208 := by
  rw [tree7208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7206 coloured7206 at child
  try dsimp only [live7208, coloured7208]
  rw [child]
  dsimp only [result7206]
  have child := child1
  unfold live7207 coloured7207 at child
  try dsimp only [live7208, coloured7208]
  rw [child]
  dsimp only [result7207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7209_agree_conditional : tree7209 = literal7209 := by
  rw [tree7209_def]
  rfl
theorem node7209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7209 live7209 coloured7209 = result7209 := by
  rw [tree7209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7210_agree_conditional
    (child0 : tree7208 = literal7208)
    (child1 : tree7209 = literal7209) : tree7210 = literal7210 := by
  rw [tree7210_def, child0, child1]
  rfl
theorem node7210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7208 live7208 coloured7208 = result7208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7209 live7209 coloured7209 = result7209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7210 live7210 coloured7210 = result7210 := by
  rw [tree7210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7208 coloured7208 at child
  try dsimp only [live7210, coloured7210]
  rw [child]
  dsimp only [result7208]
  have child := child1
  unfold live7209 coloured7209 at child
  try dsimp only [live7210, coloured7210]
  rw [child]
  dsimp only [result7209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7211_agree_conditional : tree7211 = literal7211 := by
  rw [tree7211_def]
  rfl
theorem node7211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7211 live7211 coloured7211 = result7211 := by
  rw [tree7211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7212_agree_conditional
    (child0 : tree7210 = literal7210)
    (child1 : tree7211 = literal7211) : tree7212 = literal7212 := by
  rw [tree7212_def, child0, child1]
  rfl
theorem node7212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7210 live7210 coloured7210 = result7210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7211 live7211 coloured7211 = result7211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7212 live7212 coloured7212 = result7212 := by
  rw [tree7212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7210 coloured7210 at child
  try dsimp only [live7212, coloured7212]
  rw [child]
  dsimp only [result7210]
  have child := child1
  unfold live7211 coloured7211 at child
  try dsimp only [live7212, coloured7212]
  rw [child]
  dsimp only [result7211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7213_agree_conditional : tree7213 = literal7213 := by
  rw [tree7213_def]
  rfl
theorem node7213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7213 live7213 coloured7213 = result7213 := by
  rw [tree7213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7214_agree_conditional
    (child0 : tree7212 = literal7212)
    (child1 : tree7213 = literal7213) : tree7214 = literal7214 := by
  rw [tree7214_def, child0, child1]
  rfl
theorem node7214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7212 live7212 coloured7212 = result7212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7213 live7213 coloured7213 = result7213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7214 live7214 coloured7214 = result7214 := by
  rw [tree7214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7212 coloured7212 at child
  try dsimp only [live7214, coloured7214]
  rw [child]
  dsimp only [result7212]
  have child := child1
  unfold live7213 coloured7213 at child
  try dsimp only [live7214, coloured7214]
  rw [child]
  dsimp only [result7213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7215_agree_conditional : tree7215 = literal7215 := by
  rw [tree7215_def]
  rfl
theorem node7215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7215 live7215 coloured7215 = result7215 := by
  rw [tree7215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7216_agree_conditional
    (child0 : tree7214 = literal7214)
    (child1 : tree7215 = literal7215) : tree7216 = literal7216 := by
  rw [tree7216_def, child0, child1]
  rfl
theorem node7216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7214 live7214 coloured7214 = result7214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7215 live7215 coloured7215 = result7215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7216 live7216 coloured7216 = result7216 := by
  rw [tree7216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7214 coloured7214 at child
  try dsimp only [live7216, coloured7216]
  rw [child]
  dsimp only [result7214]
  have child := child1
  unfold live7215 coloured7215 at child
  try dsimp only [live7216, coloured7216]
  rw [child]
  dsimp only [result7215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7217_agree_conditional : tree7217 = literal7217 := by
  rw [tree7217_def]
  rfl
theorem node7217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7217 live7217 coloured7217 = result7217 := by
  rw [tree7217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7218_agree_conditional
    (child0 : tree7216 = literal7216)
    (child1 : tree7217 = literal7217) : tree7218 = literal7218 := by
  rw [tree7218_def, child0, child1]
  rfl
theorem node7218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7216 live7216 coloured7216 = result7216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7217 live7217 coloured7217 = result7217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7218 live7218 coloured7218 = result7218 := by
  rw [tree7218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7216 coloured7216 at child
  try dsimp only [live7218, coloured7218]
  rw [child]
  dsimp only [result7216]
  have child := child1
  unfold live7217 coloured7217 at child
  try dsimp only [live7218, coloured7218]
  rw [child]
  dsimp only [result7217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7219_agree_conditional : tree7219 = literal7219 := by
  rw [tree7219_def]
  rfl
theorem node7219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7219 live7219 coloured7219 = result7219 := by
  rw [tree7219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7220_agree_conditional
    (child0 : tree7218 = literal7218)
    (child1 : tree7219 = literal7219) : tree7220 = literal7220 := by
  rw [tree7220_def, child0, child1]
  rfl
theorem node7220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7218 live7218 coloured7218 = result7218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7219 live7219 coloured7219 = result7219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7220 live7220 coloured7220 = result7220 := by
  rw [tree7220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7218 coloured7218 at child
  try dsimp only [live7220, coloured7220]
  rw [child]
  dsimp only [result7218]
  have child := child1
  unfold live7219 coloured7219 at child
  try dsimp only [live7220, coloured7220]
  rw [child]
  dsimp only [result7219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7221_agree_conditional : tree7221 = literal7221 := by
  rw [tree7221_def]
  rfl
theorem node7221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7221 live7221 coloured7221 = result7221 := by
  rw [tree7221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7222_agree_conditional
    (child0 : tree7220 = literal7220)
    (child1 : tree7221 = literal7221) : tree7222 = literal7222 := by
  rw [tree7222_def, child0, child1]
  rfl
theorem node7222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7220 live7220 coloured7220 = result7220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7221 live7221 coloured7221 = result7221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7222 live7222 coloured7222 = result7222 := by
  rw [tree7222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7220 coloured7220 at child
  try dsimp only [live7222, coloured7222]
  rw [child]
  dsimp only [result7220]
  have child := child1
  unfold live7221 coloured7221 at child
  try dsimp only [live7222, coloured7222]
  rw [child]
  dsimp only [result7221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7223_agree_conditional : tree7223 = literal7223 := by
  rw [tree7223_def]
  rfl
theorem node7223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7223 live7223 coloured7223 = result7223 := by
  rw [tree7223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7224_agree_conditional
    (child0 : tree7222 = literal7222)
    (child1 : tree7223 = literal7223) : tree7224 = literal7224 := by
  rw [tree7224_def, child0, child1]
  rfl
theorem node7224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7222 live7222 coloured7222 = result7222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7223 live7223 coloured7223 = result7223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7224 live7224 coloured7224 = result7224 := by
  rw [tree7224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7222 coloured7222 at child
  try dsimp only [live7224, coloured7224]
  rw [child]
  dsimp only [result7222]
  have child := child1
  unfold live7223 coloured7223 at child
  try dsimp only [live7224, coloured7224]
  rw [child]
  dsimp only [result7223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7225_agree_conditional : tree7225 = literal7225 := by
  rw [tree7225_def]
  rfl
theorem node7225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7225 live7225 coloured7225 = result7225 := by
  rw [tree7225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7226_agree_conditional
    (child0 : tree7224 = literal7224)
    (child1 : tree7225 = literal7225) : tree7226 = literal7226 := by
  rw [tree7226_def, child0, child1]
  rfl
theorem node7226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7224 live7224 coloured7224 = result7224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7225 live7225 coloured7225 = result7225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7226 live7226 coloured7226 = result7226 := by
  rw [tree7226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7224 coloured7224 at child
  try dsimp only [live7226, coloured7226]
  rw [child]
  dsimp only [result7224]
  have child := child1
  unfold live7225 coloured7225 at child
  try dsimp only [live7226, coloured7226]
  rw [child]
  dsimp only [result7225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7227_agree_conditional : tree7227 = literal7227 := by
  rw [tree7227_def]
  rfl
theorem node7227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7227 live7227 coloured7227 = result7227 := by
  rw [tree7227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7228_agree_conditional
    (child0 : tree7226 = literal7226)
    (child1 : tree7227 = literal7227) : tree7228 = literal7228 := by
  rw [tree7228_def, child0, child1]
  rfl
theorem node7228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7226 live7226 coloured7226 = result7226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7227 live7227 coloured7227 = result7227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7228 live7228 coloured7228 = result7228 := by
  rw [tree7228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7226 coloured7226 at child
  try dsimp only [live7228, coloured7228]
  rw [child]
  dsimp only [result7226]
  have child := child1
  unfold live7227 coloured7227 at child
  try dsimp only [live7228, coloured7228]
  rw [child]
  dsimp only [result7227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7229_agree_conditional : tree7229 = literal7229 := by
  rw [tree7229_def]
  rfl
theorem node7229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7229 live7229 coloured7229 = result7229 := by
  rw [tree7229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7230_agree_conditional
    (child0 : tree7228 = literal7228)
    (child1 : tree7229 = literal7229) : tree7230 = literal7230 := by
  rw [tree7230_def, child0, child1]
  rfl
theorem node7230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7228 live7228 coloured7228 = result7228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7229 live7229 coloured7229 = result7229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7230 live7230 coloured7230 = result7230 := by
  rw [tree7230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7228 coloured7228 at child
  try dsimp only [live7230, coloured7230]
  rw [child]
  dsimp only [result7228]
  have child := child1
  unfold live7229 coloured7229 at child
  try dsimp only [live7230, coloured7230]
  rw [child]
  dsimp only [result7229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7231_agree_conditional : tree7231 = literal7231 := by
  rw [tree7231_def]
  rfl
theorem node7231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7231 live7231 coloured7231 = result7231 := by
  rw [tree7231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7232_agree_conditional
    (child0 : tree7230 = literal7230)
    (child1 : tree7231 = literal7231) : tree7232 = literal7232 := by
  rw [tree7232_def, child0, child1]
  rfl
theorem node7232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7230 live7230 coloured7230 = result7230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7231 live7231 coloured7231 = result7231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7232 live7232 coloured7232 = result7232 := by
  rw [tree7232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7230 coloured7230 at child
  try dsimp only [live7232, coloured7232]
  rw [child]
  dsimp only [result7230]
  have child := child1
  unfold live7231 coloured7231 at child
  try dsimp only [live7232, coloured7232]
  rw [child]
  dsimp only [result7231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7233_agree_conditional : tree7233 = literal7233 := by
  rw [tree7233_def]
  rfl
theorem node7233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7233 live7233 coloured7233 = result7233 := by
  rw [tree7233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7234_agree_conditional
    (child0 : tree7232 = literal7232)
    (child1 : tree7233 = literal7233) : tree7234 = literal7234 := by
  rw [tree7234_def, child0, child1]
  rfl
theorem node7234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7232 live7232 coloured7232 = result7232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7233 live7233 coloured7233 = result7233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7234 live7234 coloured7234 = result7234 := by
  rw [tree7234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7232 coloured7232 at child
  try dsimp only [live7234, coloured7234]
  rw [child]
  dsimp only [result7232]
  have child := child1
  unfold live7233 coloured7233 at child
  try dsimp only [live7234, coloured7234]
  rw [child]
  dsimp only [result7233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7235_agree_conditional : tree7235 = literal7235 := by
  rw [tree7235_def]
  rfl
theorem node7235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7235 live7235 coloured7235 = result7235 := by
  rw [tree7235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7236_agree_conditional
    (child0 : tree7234 = literal7234)
    (child1 : tree7235 = literal7235) : tree7236 = literal7236 := by
  rw [tree7236_def, child0, child1]
  rfl
theorem node7236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7234 live7234 coloured7234 = result7234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7235 live7235 coloured7235 = result7235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7236 live7236 coloured7236 = result7236 := by
  rw [tree7236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7234 coloured7234 at child
  try dsimp only [live7236, coloured7236]
  rw [child]
  dsimp only [result7234]
  have child := child1
  unfold live7235 coloured7235 at child
  try dsimp only [live7236, coloured7236]
  rw [child]
  dsimp only [result7235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7237_agree_conditional : tree7237 = literal7237 := by
  rw [tree7237_def]
  rfl
theorem node7237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7237 live7237 coloured7237 = result7237 := by
  rw [tree7237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7238_agree_conditional
    (child0 : tree7236 = literal7236)
    (child1 : tree7237 = literal7237) : tree7238 = literal7238 := by
  rw [tree7238_def, child0, child1]
  rfl
theorem node7238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7236 live7236 coloured7236 = result7236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7237 live7237 coloured7237 = result7237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7238 live7238 coloured7238 = result7238 := by
  rw [tree7238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7236 coloured7236 at child
  try dsimp only [live7238, coloured7238]
  rw [child]
  dsimp only [result7236]
  have child := child1
  unfold live7237 coloured7237 at child
  try dsimp only [live7238, coloured7238]
  rw [child]
  dsimp only [result7237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7239_agree_conditional : tree7239 = literal7239 := by
  rw [tree7239_def]
  rfl
theorem node7239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7239 live7239 coloured7239 = result7239 := by
  rw [tree7239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7240_agree_conditional
    (child0 : tree7238 = literal7238)
    (child1 : tree7239 = literal7239) : tree7240 = literal7240 := by
  rw [tree7240_def, child0, child1]
  rfl
theorem node7240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7238 live7238 coloured7238 = result7238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7239 live7239 coloured7239 = result7239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7240 live7240 coloured7240 = result7240 := by
  rw [tree7240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7238 coloured7238 at child
  try dsimp only [live7240, coloured7240]
  rw [child]
  dsimp only [result7238]
  have child := child1
  unfold live7239 coloured7239 at child
  try dsimp only [live7240, coloured7240]
  rw [child]
  dsimp only [result7239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7241_agree_conditional : tree7241 = literal7241 := by
  rw [tree7241_def]
  rfl
theorem node7241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7241 live7241 coloured7241 = result7241 := by
  rw [tree7241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7242_agree_conditional
    (child0 : tree7240 = literal7240)
    (child1 : tree7241 = literal7241) : tree7242 = literal7242 := by
  rw [tree7242_def, child0, child1]
  rfl
theorem node7242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7240 live7240 coloured7240 = result7240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7241 live7241 coloured7241 = result7241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7242 live7242 coloured7242 = result7242 := by
  rw [tree7242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7240 coloured7240 at child
  try dsimp only [live7242, coloured7242]
  rw [child]
  dsimp only [result7240]
  have child := child1
  unfold live7241 coloured7241 at child
  try dsimp only [live7242, coloured7242]
  rw [child]
  dsimp only [result7241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7243_agree_conditional : tree7243 = literal7243 := by
  rw [tree7243_def]
  rfl
theorem node7243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7243 live7243 coloured7243 = result7243 := by
  rw [tree7243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7244_agree_conditional
    (child0 : tree7242 = literal7242)
    (child1 : tree7243 = literal7243) : tree7244 = literal7244 := by
  rw [tree7244_def, child0, child1]
  rfl
theorem node7244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7242 live7242 coloured7242 = result7242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7243 live7243 coloured7243 = result7243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7244 live7244 coloured7244 = result7244 := by
  rw [tree7244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7242 coloured7242 at child
  try dsimp only [live7244, coloured7244]
  rw [child]
  dsimp only [result7242]
  have child := child1
  unfold live7243 coloured7243 at child
  try dsimp only [live7244, coloured7244]
  rw [child]
  dsimp only [result7243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7245_agree_conditional : tree7245 = literal7245 := by
  rw [tree7245_def]
  rfl
theorem node7245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7245 live7245 coloured7245 = result7245 := by
  rw [tree7245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7246_agree_conditional
    (child0 : tree7244 = literal7244)
    (child1 : tree7245 = literal7245) : tree7246 = literal7246 := by
  rw [tree7246_def, child0, child1]
  rfl
theorem node7246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7244 live7244 coloured7244 = result7244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7245 live7245 coloured7245 = result7245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7246 live7246 coloured7246 = result7246 := by
  rw [tree7246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7244 coloured7244 at child
  try dsimp only [live7246, coloured7246]
  rw [child]
  dsimp only [result7244]
  have child := child1
  unfold live7245 coloured7245 at child
  try dsimp only [live7246, coloured7246]
  rw [child]
  dsimp only [result7245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7247_agree_conditional : tree7247 = literal7247 := by
  rw [tree7247_def]
  rfl
theorem node7247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7247 live7247 coloured7247 = result7247 := by
  rw [tree7247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7248_agree_conditional
    (child0 : tree7246 = literal7246)
    (child1 : tree7247 = literal7247) : tree7248 = literal7248 := by
  rw [tree7248_def, child0, child1]
  rfl
theorem node7248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7246 live7246 coloured7246 = result7246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7247 live7247 coloured7247 = result7247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7248 live7248 coloured7248 = result7248 := by
  rw [tree7248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7246 coloured7246 at child
  try dsimp only [live7248, coloured7248]
  rw [child]
  dsimp only [result7246]
  have child := child1
  unfold live7247 coloured7247 at child
  try dsimp only [live7248, coloured7248]
  rw [child]
  dsimp only [result7247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7249_agree_conditional : tree7249 = literal7249 := by
  rw [tree7249_def]
  rfl
theorem node7249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7249 live7249 coloured7249 = result7249 := by
  rw [tree7249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7250_agree_conditional
    (child0 : tree7248 = literal7248)
    (child1 : tree7249 = literal7249) : tree7250 = literal7250 := by
  rw [tree7250_def, child0, child1]
  rfl
theorem node7250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7248 live7248 coloured7248 = result7248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7249 live7249 coloured7249 = result7249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7250 live7250 coloured7250 = result7250 := by
  rw [tree7250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7248 coloured7248 at child
  try dsimp only [live7250, coloured7250]
  rw [child]
  dsimp only [result7248]
  have child := child1
  unfold live7249 coloured7249 at child
  try dsimp only [live7250, coloured7250]
  rw [child]
  dsimp only [result7249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7251_agree_conditional : tree7251 = literal7251 := by
  rw [tree7251_def]
  rfl
theorem node7251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7251 live7251 coloured7251 = result7251 := by
  rw [tree7251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7252_agree_conditional
    (child0 : tree7250 = literal7250)
    (child1 : tree7251 = literal7251) : tree7252 = literal7252 := by
  rw [tree7252_def, child0, child1]
  rfl
theorem node7252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7250 live7250 coloured7250 = result7250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7251 live7251 coloured7251 = result7251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7252 live7252 coloured7252 = result7252 := by
  rw [tree7252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7250 coloured7250 at child
  try dsimp only [live7252, coloured7252]
  rw [child]
  dsimp only [result7250]
  have child := child1
  unfold live7251 coloured7251 at child
  try dsimp only [live7252, coloured7252]
  rw [child]
  dsimp only [result7251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7253_agree_conditional : tree7253 = literal7253 := by
  rw [tree7253_def]
  rfl
theorem node7253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7253 live7253 coloured7253 = result7253 := by
  rw [tree7253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7254_agree_conditional
    (child0 : tree7252 = literal7252)
    (child1 : tree7253 = literal7253) : tree7254 = literal7254 := by
  rw [tree7254_def, child0, child1]
  rfl
theorem node7254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7252 live7252 coloured7252 = result7252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7253 live7253 coloured7253 = result7253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7254 live7254 coloured7254 = result7254 := by
  rw [tree7254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7252 coloured7252 at child
  try dsimp only [live7254, coloured7254]
  rw [child]
  dsimp only [result7252]
  have child := child1
  unfold live7253 coloured7253 at child
  try dsimp only [live7254, coloured7254]
  rw [child]
  dsimp only [result7253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7255_agree_conditional : tree7255 = literal7255 := by
  rw [tree7255_def]
  rfl
theorem node7255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7255 live7255 coloured7255 = result7255 := by
  rw [tree7255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7256_agree_conditional
    (child0 : tree7254 = literal7254)
    (child1 : tree7255 = literal7255) : tree7256 = literal7256 := by
  rw [tree7256_def, child0, child1]
  rfl
theorem node7256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7254 live7254 coloured7254 = result7254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7255 live7255 coloured7255 = result7255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7256 live7256 coloured7256 = result7256 := by
  rw [tree7256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7254 coloured7254 at child
  try dsimp only [live7256, coloured7256]
  rw [child]
  dsimp only [result7254]
  have child := child1
  unfold live7255 coloured7255 at child
  try dsimp only [live7256, coloured7256]
  rw [child]
  dsimp only [result7255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7257_agree_conditional : tree7257 = literal7257 := by
  rw [tree7257_def]
  rfl
theorem node7257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7257 live7257 coloured7257 = result7257 := by
  rw [tree7257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7258_agree_conditional
    (child0 : tree7256 = literal7256)
    (child1 : tree7257 = literal7257) : tree7258 = literal7258 := by
  rw [tree7258_def, child0, child1]
  rfl
theorem node7258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7256 live7256 coloured7256 = result7256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7257 live7257 coloured7257 = result7257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7258 live7258 coloured7258 = result7258 := by
  rw [tree7258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7256 coloured7256 at child
  try dsimp only [live7258, coloured7258]
  rw [child]
  dsimp only [result7256]
  have child := child1
  unfold live7257 coloured7257 at child
  try dsimp only [live7258, coloured7258]
  rw [child]
  dsimp only [result7257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7259_agree_conditional : tree7259 = literal7259 := by
  rw [tree7259_def]
  rfl
theorem node7259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7259 live7259 coloured7259 = result7259 := by
  rw [tree7259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7260_agree_conditional
    (child0 : tree7258 = literal7258)
    (child1 : tree7259 = literal7259) : tree7260 = literal7260 := by
  rw [tree7260_def, child0, child1]
  rfl
theorem node7260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7258 live7258 coloured7258 = result7258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7259 live7259 coloured7259 = result7259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7260 live7260 coloured7260 = result7260 := by
  rw [tree7260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7258 coloured7258 at child
  try dsimp only [live7260, coloured7260]
  rw [child]
  dsimp only [result7258]
  have child := child1
  unfold live7259 coloured7259 at child
  try dsimp only [live7260, coloured7260]
  rw [child]
  dsimp only [result7259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7261_agree_conditional : tree7261 = literal7261 := by
  rw [tree7261_def]
  rfl
theorem node7261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7261 live7261 coloured7261 = result7261 := by
  rw [tree7261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7262_agree_conditional
    (child0 : tree7260 = literal7260)
    (child1 : tree7261 = literal7261) : tree7262 = literal7262 := by
  rw [tree7262_def, child0, child1]
  rfl
theorem node7262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7260 live7260 coloured7260 = result7260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7261 live7261 coloured7261 = result7261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7262 live7262 coloured7262 = result7262 := by
  rw [tree7262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7260 coloured7260 at child
  try dsimp only [live7262, coloured7262]
  rw [child]
  dsimp only [result7260]
  have child := child1
  unfold live7261 coloured7261 at child
  try dsimp only [live7262, coloured7262]
  rw [child]
  dsimp only [result7261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7263_agree_conditional : tree7263 = literal7263 := by
  rw [tree7263_def]
  rfl
theorem node7263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7263 live7263 coloured7263 = result7263 := by
  rw [tree7263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7264_agree_conditional
    (child0 : tree7262 = literal7262)
    (child1 : tree7263 = literal7263) : tree7264 = literal7264 := by
  rw [tree7264_def, child0, child1]
  rfl
theorem node7264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7262 live7262 coloured7262 = result7262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7263 live7263 coloured7263 = result7263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7264 live7264 coloured7264 = result7264 := by
  rw [tree7264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7262 coloured7262 at child
  try dsimp only [live7264, coloured7264]
  rw [child]
  dsimp only [result7262]
  have child := child1
  unfold live7263 coloured7263 at child
  try dsimp only [live7264, coloured7264]
  rw [child]
  dsimp only [result7263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7265_agree_conditional : tree7265 = literal7265 := by
  rw [tree7265_def]
  rfl
theorem node7265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7265 live7265 coloured7265 = result7265 := by
  rw [tree7265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7266_agree_conditional
    (child0 : tree7264 = literal7264)
    (child1 : tree7265 = literal7265) : tree7266 = literal7266 := by
  rw [tree7266_def, child0, child1]
  rfl
theorem node7266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7264 live7264 coloured7264 = result7264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7265 live7265 coloured7265 = result7265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7266 live7266 coloured7266 = result7266 := by
  rw [tree7266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7264 coloured7264 at child
  try dsimp only [live7266, coloured7266]
  rw [child]
  dsimp only [result7264]
  have child := child1
  unfold live7265 coloured7265 at child
  try dsimp only [live7266, coloured7266]
  rw [child]
  dsimp only [result7265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7267_agree_conditional : tree7267 = literal7267 := by
  rw [tree7267_def]
  rfl
theorem node7267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7267 live7267 coloured7267 = result7267 := by
  rw [tree7267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7268_agree_conditional
    (child0 : tree7266 = literal7266)
    (child1 : tree7267 = literal7267) : tree7268 = literal7268 := by
  rw [tree7268_def, child0, child1]
  rfl
theorem node7268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7266 live7266 coloured7266 = result7266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7267 live7267 coloured7267 = result7267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7268 live7268 coloured7268 = result7268 := by
  rw [tree7268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7266 coloured7266 at child
  try dsimp only [live7268, coloured7268]
  rw [child]
  dsimp only [result7266]
  have child := child1
  unfold live7267 coloured7267 at child
  try dsimp only [live7268, coloured7268]
  rw [child]
  dsimp only [result7267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7269_agree_conditional : tree7269 = literal7269 := by
  rw [tree7269_def]
  rfl
theorem node7269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7269 live7269 coloured7269 = result7269 := by
  rw [tree7269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7270_agree_conditional
    (child0 : tree7268 = literal7268)
    (child1 : tree7269 = literal7269) : tree7270 = literal7270 := by
  rw [tree7270_def, child0, child1]
  rfl
theorem node7270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7268 live7268 coloured7268 = result7268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7269 live7269 coloured7269 = result7269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7270 live7270 coloured7270 = result7270 := by
  rw [tree7270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7268 coloured7268 at child
  try dsimp only [live7270, coloured7270]
  rw [child]
  dsimp only [result7268]
  have child := child1
  unfold live7269 coloured7269 at child
  try dsimp only [live7270, coloured7270]
  rw [child]
  dsimp only [result7269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7271_agree_conditional : tree7271 = literal7271 := by
  rw [tree7271_def]
  rfl
theorem node7271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7271 live7271 coloured7271 = result7271 := by
  rw [tree7271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7272_agree_conditional
    (child0 : tree7270 = literal7270)
    (child1 : tree7271 = literal7271) : tree7272 = literal7272 := by
  rw [tree7272_def, child0, child1]
  rfl
theorem node7272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7270 live7270 coloured7270 = result7270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7271 live7271 coloured7271 = result7271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7272 live7272 coloured7272 = result7272 := by
  rw [tree7272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7270 coloured7270 at child
  try dsimp only [live7272, coloured7272]
  rw [child]
  dsimp only [result7270]
  have child := child1
  unfold live7271 coloured7271 at child
  try dsimp only [live7272, coloured7272]
  rw [child]
  dsimp only [result7271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7273_agree_conditional : tree7273 = literal7273 := by
  rw [tree7273_def]
  rfl
theorem node7273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7273 live7273 coloured7273 = result7273 := by
  rw [tree7273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7274_agree_conditional
    (child0 : tree7272 = literal7272)
    (child1 : tree7273 = literal7273) : tree7274 = literal7274 := by
  rw [tree7274_def, child0, child1]
  rfl
theorem node7274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7272 live7272 coloured7272 = result7272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7273 live7273 coloured7273 = result7273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7274 live7274 coloured7274 = result7274 := by
  rw [tree7274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7272 coloured7272 at child
  try dsimp only [live7274, coloured7274]
  rw [child]
  dsimp only [result7272]
  have child := child1
  unfold live7273 coloured7273 at child
  try dsimp only [live7274, coloured7274]
  rw [child]
  dsimp only [result7273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7275_agree_conditional : tree7275 = literal7275 := by
  rw [tree7275_def]
  rfl
theorem node7275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7275 live7275 coloured7275 = result7275 := by
  rw [tree7275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7276_agree_conditional
    (child0 : tree7274 = literal7274)
    (child1 : tree7275 = literal7275) : tree7276 = literal7276 := by
  rw [tree7276_def, child0, child1]
  rfl
theorem node7276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7274 live7274 coloured7274 = result7274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7275 live7275 coloured7275 = result7275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7276 live7276 coloured7276 = result7276 := by
  rw [tree7276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7274 coloured7274 at child
  try dsimp only [live7276, coloured7276]
  rw [child]
  dsimp only [result7274]
  have child := child1
  unfold live7275 coloured7275 at child
  try dsimp only [live7276, coloured7276]
  rw [child]
  dsimp only [result7275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7277_agree_conditional : tree7277 = literal7277 := by
  rw [tree7277_def]
  rfl
theorem node7277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7277 live7277 coloured7277 = result7277 := by
  rw [tree7277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7278_agree_conditional
    (child0 : tree7276 = literal7276)
    (child1 : tree7277 = literal7277) : tree7278 = literal7278 := by
  rw [tree7278_def, child0, child1]
  rfl
theorem node7278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7276 live7276 coloured7276 = result7276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7277 live7277 coloured7277 = result7277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7278 live7278 coloured7278 = result7278 := by
  rw [tree7278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7276 coloured7276 at child
  try dsimp only [live7278, coloured7278]
  rw [child]
  dsimp only [result7276]
  have child := child1
  unfold live7277 coloured7277 at child
  try dsimp only [live7278, coloured7278]
  rw [child]
  dsimp only [result7277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7279_agree_conditional : tree7279 = literal7279 := by
  rw [tree7279_def]
  rfl
theorem node7279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7279 live7279 coloured7279 = result7279 := by
  rw [tree7279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7280_agree_conditional
    (child0 : tree7278 = literal7278)
    (child1 : tree7279 = literal7279) : tree7280 = literal7280 := by
  rw [tree7280_def, child0, child1]
  rfl
theorem node7280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7278 live7278 coloured7278 = result7278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7279 live7279 coloured7279 = result7279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7280 live7280 coloured7280 = result7280 := by
  rw [tree7280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7278 coloured7278 at child
  try dsimp only [live7280, coloured7280]
  rw [child]
  dsimp only [result7278]
  have child := child1
  unfold live7279 coloured7279 at child
  try dsimp only [live7280, coloured7280]
  rw [child]
  dsimp only [result7279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7281_agree_conditional : tree7281 = literal7281 := by
  rw [tree7281_def]
  rfl
theorem node7281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7281 live7281 coloured7281 = result7281 := by
  rw [tree7281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7282_agree_conditional
    (child0 : tree7280 = literal7280)
    (child1 : tree7281 = literal7281) : tree7282 = literal7282 := by
  rw [tree7282_def, child0, child1]
  rfl
theorem node7282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7280 live7280 coloured7280 = result7280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7281 live7281 coloured7281 = result7281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7282 live7282 coloured7282 = result7282 := by
  rw [tree7282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7280 coloured7280 at child
  try dsimp only [live7282, coloured7282]
  rw [child]
  dsimp only [result7280]
  have child := child1
  unfold live7281 coloured7281 at child
  try dsimp only [live7282, coloured7282]
  rw [child]
  dsimp only [result7281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7283_agree_conditional : tree7283 = literal7283 := by
  rw [tree7283_def]
  rfl
theorem node7283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7283 live7283 coloured7283 = result7283 := by
  rw [tree7283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7284_agree_conditional
    (child0 : tree7282 = literal7282)
    (child1 : tree7283 = literal7283) : tree7284 = literal7284 := by
  rw [tree7284_def, child0, child1]
  rfl
theorem node7284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7282 live7282 coloured7282 = result7282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7283 live7283 coloured7283 = result7283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7284 live7284 coloured7284 = result7284 := by
  rw [tree7284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7282 coloured7282 at child
  try dsimp only [live7284, coloured7284]
  rw [child]
  dsimp only [result7282]
  have child := child1
  unfold live7283 coloured7283 at child
  try dsimp only [live7284, coloured7284]
  rw [child]
  dsimp only [result7283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7285_agree_conditional : tree7285 = literal7285 := by
  rw [tree7285_def]
  rfl
theorem node7285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7285 live7285 coloured7285 = result7285 := by
  rw [tree7285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7286_agree_conditional
    (child0 : tree7284 = literal7284)
    (child1 : tree7285 = literal7285) : tree7286 = literal7286 := by
  rw [tree7286_def, child0, child1]
  rfl
theorem node7286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7284 live7284 coloured7284 = result7284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7285 live7285 coloured7285 = result7285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7286 live7286 coloured7286 = result7286 := by
  rw [tree7286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7284 coloured7284 at child
  try dsimp only [live7286, coloured7286]
  rw [child]
  dsimp only [result7284]
  have child := child1
  unfold live7285 coloured7285 at child
  try dsimp only [live7286, coloured7286]
  rw [child]
  dsimp only [result7285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7287_agree_conditional : tree7287 = literal7287 := by
  rw [tree7287_def]
  rfl
theorem node7287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7287 live7287 coloured7287 = result7287 := by
  rw [tree7287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7288_agree_conditional
    (child0 : tree7286 = literal7286)
    (child1 : tree7287 = literal7287) : tree7288 = literal7288 := by
  rw [tree7288_def, child0, child1]
  rfl
theorem node7288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7286 live7286 coloured7286 = result7286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7287 live7287 coloured7287 = result7287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7288 live7288 coloured7288 = result7288 := by
  rw [tree7288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7286 coloured7286 at child
  try dsimp only [live7288, coloured7288]
  rw [child]
  dsimp only [result7286]
  have child := child1
  unfold live7287 coloured7287 at child
  try dsimp only [live7288, coloured7288]
  rw [child]
  dsimp only [result7287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7289_agree_conditional : tree7289 = literal7289 := by
  rw [tree7289_def]
  rfl
theorem node7289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7289 live7289 coloured7289 = result7289 := by
  rw [tree7289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7290_agree_conditional
    (child0 : tree7288 = literal7288)
    (child1 : tree7289 = literal7289) : tree7290 = literal7290 := by
  rw [tree7290_def, child0, child1]
  rfl
theorem node7290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7288 live7288 coloured7288 = result7288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7289 live7289 coloured7289 = result7289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7290 live7290 coloured7290 = result7290 := by
  rw [tree7290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7288 coloured7288 at child
  try dsimp only [live7290, coloured7290]
  rw [child]
  dsimp only [result7288]
  have child := child1
  unfold live7289 coloured7289 at child
  try dsimp only [live7290, coloured7290]
  rw [child]
  dsimp only [result7289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7291_agree_conditional : tree7291 = literal7291 := by
  rw [tree7291_def]
  rfl
theorem node7291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7291 live7291 coloured7291 = result7291 := by
  rw [tree7291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7292_agree_conditional
    (child0 : tree7290 = literal7290)
    (child1 : tree7291 = literal7291) : tree7292 = literal7292 := by
  rw [tree7292_def, child0, child1]
  rfl
theorem node7292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7290 live7290 coloured7290 = result7290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7291 live7291 coloured7291 = result7291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7292 live7292 coloured7292 = result7292 := by
  rw [tree7292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7290 coloured7290 at child
  try dsimp only [live7292, coloured7292]
  rw [child]
  dsimp only [result7290]
  have child := child1
  unfold live7291 coloured7291 at child
  try dsimp only [live7292, coloured7292]
  rw [child]
  dsimp only [result7291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7293_agree_conditional : tree7293 = literal7293 := by
  rw [tree7293_def]
  rfl
theorem node7293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7293 live7293 coloured7293 = result7293 := by
  rw [tree7293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7294_agree_conditional
    (child0 : tree7292 = literal7292)
    (child1 : tree7293 = literal7293) : tree7294 = literal7294 := by
  rw [tree7294_def, child0, child1]
  rfl
theorem node7294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7292 live7292 coloured7292 = result7292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7293 live7293 coloured7293 = result7293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7294 live7294 coloured7294 = result7294 := by
  rw [tree7294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7292 coloured7292 at child
  try dsimp only [live7294, coloured7294]
  rw [child]
  dsimp only [result7292]
  have child := child1
  unfold live7293 coloured7293 at child
  try dsimp only [live7294, coloured7294]
  rw [child]
  dsimp only [result7293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7295_agree_conditional : tree7295 = literal7295 := by
  rw [tree7295_def]
  rfl
theorem node7295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7295 live7295 coloured7295 = result7295 := by
  rw [tree7295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
