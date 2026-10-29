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
theorem tree7296_agree_conditional
    (child0 : tree7294 = literal7294)
    (child1 : tree7295 = literal7295) : tree7296 = literal7296 := by
  rw [tree7296_def, child0, child1]
  rfl
theorem node7296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7294 live7294 coloured7294 = result7294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7295 live7295 coloured7295 = result7295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7296 live7296 coloured7296 = result7296 := by
  rw [tree7296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7294 coloured7294 at child
  try dsimp only [live7296, coloured7296]
  rw [child]
  dsimp only [result7294]
  have child := child1
  unfold live7295 coloured7295 at child
  try dsimp only [live7296, coloured7296]
  rw [child]
  dsimp only [result7295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7297_agree_conditional : tree7297 = literal7297 := by
  rw [tree7297_def]
  rfl
theorem node7297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7297 live7297 coloured7297 = result7297 := by
  rw [tree7297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7298_agree_conditional
    (child0 : tree7296 = literal7296)
    (child1 : tree7297 = literal7297) : tree7298 = literal7298 := by
  rw [tree7298_def, child0, child1]
  rfl
theorem node7298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7296 live7296 coloured7296 = result7296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7297 live7297 coloured7297 = result7297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7298 live7298 coloured7298 = result7298 := by
  rw [tree7298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7296 coloured7296 at child
  try dsimp only [live7298, coloured7298]
  rw [child]
  dsimp only [result7296]
  have child := child1
  unfold live7297 coloured7297 at child
  try dsimp only [live7298, coloured7298]
  rw [child]
  dsimp only [result7297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7299_agree_conditional : tree7299 = literal7299 := by
  rw [tree7299_def]
  rfl
theorem node7299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7299 live7299 coloured7299 = result7299 := by
  rw [tree7299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7300_agree_conditional
    (child0 : tree7298 = literal7298)
    (child1 : tree7299 = literal7299) : tree7300 = literal7300 := by
  rw [tree7300_def, child0, child1]
  rfl
theorem node7300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7298 live7298 coloured7298 = result7298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7299 live7299 coloured7299 = result7299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7300 live7300 coloured7300 = result7300 := by
  rw [tree7300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7298 coloured7298 at child
  try dsimp only [live7300, coloured7300]
  rw [child]
  dsimp only [result7298]
  have child := child1
  unfold live7299 coloured7299 at child
  try dsimp only [live7300, coloured7300]
  rw [child]
  dsimp only [result7299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7301_agree_conditional : tree7301 = literal7301 := by
  rw [tree7301_def]
  rfl
theorem node7301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7301 live7301 coloured7301 = result7301 := by
  rw [tree7301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7302_agree_conditional
    (child0 : tree7300 = literal7300)
    (child1 : tree7301 = literal7301) : tree7302 = literal7302 := by
  rw [tree7302_def, child0, child1]
  rfl
theorem node7302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7300 live7300 coloured7300 = result7300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7301 live7301 coloured7301 = result7301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7302 live7302 coloured7302 = result7302 := by
  rw [tree7302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7300 coloured7300 at child
  try dsimp only [live7302, coloured7302]
  rw [child]
  dsimp only [result7300]
  have child := child1
  unfold live7301 coloured7301 at child
  try dsimp only [live7302, coloured7302]
  rw [child]
  dsimp only [result7301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7303_agree_conditional : tree7303 = literal7303 := by
  rw [tree7303_def]
  rfl
theorem node7303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7303 live7303 coloured7303 = result7303 := by
  rw [tree7303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7304_agree_conditional
    (child0 : tree7302 = literal7302)
    (child1 : tree7303 = literal7303) : tree7304 = literal7304 := by
  rw [tree7304_def, child0, child1]
  rfl
theorem node7304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7302 live7302 coloured7302 = result7302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7303 live7303 coloured7303 = result7303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7304 live7304 coloured7304 = result7304 := by
  rw [tree7304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7302 coloured7302 at child
  try dsimp only [live7304, coloured7304]
  rw [child]
  dsimp only [result7302]
  have child := child1
  unfold live7303 coloured7303 at child
  try dsimp only [live7304, coloured7304]
  rw [child]
  dsimp only [result7303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7305_agree_conditional : tree7305 = literal7305 := by
  rw [tree7305_def]
  rfl
theorem node7305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7305 live7305 coloured7305 = result7305 := by
  rw [tree7305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7306_agree_conditional
    (child0 : tree7304 = literal7304)
    (child1 : tree7305 = literal7305) : tree7306 = literal7306 := by
  rw [tree7306_def, child0, child1]
  rfl
theorem node7306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7304 live7304 coloured7304 = result7304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7305 live7305 coloured7305 = result7305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7306 live7306 coloured7306 = result7306 := by
  rw [tree7306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7304 coloured7304 at child
  try dsimp only [live7306, coloured7306]
  rw [child]
  dsimp only [result7304]
  have child := child1
  unfold live7305 coloured7305 at child
  try dsimp only [live7306, coloured7306]
  rw [child]
  dsimp only [result7305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7307_agree_conditional : tree7307 = literal7307 := by
  rw [tree7307_def]
  rfl
theorem node7307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7307 live7307 coloured7307 = result7307 := by
  rw [tree7307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7308_agree_conditional
    (child0 : tree7306 = literal7306)
    (child1 : tree7307 = literal7307) : tree7308 = literal7308 := by
  rw [tree7308_def, child0, child1]
  rfl
theorem node7308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7306 live7306 coloured7306 = result7306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7307 live7307 coloured7307 = result7307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7308 live7308 coloured7308 = result7308 := by
  rw [tree7308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7306 coloured7306 at child
  try dsimp only [live7308, coloured7308]
  rw [child]
  dsimp only [result7306]
  have child := child1
  unfold live7307 coloured7307 at child
  try dsimp only [live7308, coloured7308]
  rw [child]
  dsimp only [result7307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7309_agree_conditional : tree7309 = literal7309 := by
  rw [tree7309_def]
  rfl
theorem node7309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7309 live7309 coloured7309 = result7309 := by
  rw [tree7309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7310_agree_conditional
    (child0 : tree7308 = literal7308)
    (child1 : tree7309 = literal7309) : tree7310 = literal7310 := by
  rw [tree7310_def, child0, child1]
  rfl
theorem node7310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7308 live7308 coloured7308 = result7308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7309 live7309 coloured7309 = result7309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7310 live7310 coloured7310 = result7310 := by
  rw [tree7310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7308 coloured7308 at child
  try dsimp only [live7310, coloured7310]
  rw [child]
  dsimp only [result7308]
  have child := child1
  unfold live7309 coloured7309 at child
  try dsimp only [live7310, coloured7310]
  rw [child]
  dsimp only [result7309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7311_agree_conditional : tree7311 = literal7311 := by
  rw [tree7311_def]
  rfl
theorem node7311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7311 live7311 coloured7311 = result7311 := by
  rw [tree7311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7312_agree_conditional
    (child0 : tree7310 = literal7310)
    (child1 : tree7311 = literal7311) : tree7312 = literal7312 := by
  rw [tree7312_def, child0, child1]
  rfl
theorem node7312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7310 live7310 coloured7310 = result7310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7311 live7311 coloured7311 = result7311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7312 live7312 coloured7312 = result7312 := by
  rw [tree7312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7310 coloured7310 at child
  try dsimp only [live7312, coloured7312]
  rw [child]
  dsimp only [result7310]
  have child := child1
  unfold live7311 coloured7311 at child
  try dsimp only [live7312, coloured7312]
  rw [child]
  dsimp only [result7311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7313_agree_conditional : tree7313 = literal7313 := by
  rw [tree7313_def]
  rfl
theorem node7313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7313 live7313 coloured7313 = result7313 := by
  rw [tree7313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7314_agree_conditional
    (child0 : tree7312 = literal7312)
    (child1 : tree7313 = literal7313) : tree7314 = literal7314 := by
  rw [tree7314_def, child0, child1]
  rfl
theorem node7314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7312 live7312 coloured7312 = result7312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7313 live7313 coloured7313 = result7313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7314 live7314 coloured7314 = result7314 := by
  rw [tree7314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7312 coloured7312 at child
  try dsimp only [live7314, coloured7314]
  rw [child]
  dsimp only [result7312]
  have child := child1
  unfold live7313 coloured7313 at child
  try dsimp only [live7314, coloured7314]
  rw [child]
  dsimp only [result7313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7315_agree_conditional : tree7315 = literal7315 := by
  rw [tree7315_def]
  rfl
theorem node7315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7315 live7315 coloured7315 = result7315 := by
  rw [tree7315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7316_agree_conditional
    (child0 : tree7314 = literal7314)
    (child1 : tree7315 = literal7315) : tree7316 = literal7316 := by
  rw [tree7316_def, child0, child1]
  rfl
theorem node7316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7314 live7314 coloured7314 = result7314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7315 live7315 coloured7315 = result7315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7316 live7316 coloured7316 = result7316 := by
  rw [tree7316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7314 coloured7314 at child
  try dsimp only [live7316, coloured7316]
  rw [child]
  dsimp only [result7314]
  have child := child1
  unfold live7315 coloured7315 at child
  try dsimp only [live7316, coloured7316]
  rw [child]
  dsimp only [result7315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7317_agree_conditional : tree7317 = literal7317 := by
  rw [tree7317_def]
  rfl
theorem node7317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7317 live7317 coloured7317 = result7317 := by
  rw [tree7317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7318_agree_conditional
    (child0 : tree7316 = literal7316)
    (child1 : tree7317 = literal7317) : tree7318 = literal7318 := by
  rw [tree7318_def, child0, child1]
  rfl
theorem node7318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7316 live7316 coloured7316 = result7316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7317 live7317 coloured7317 = result7317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7318 live7318 coloured7318 = result7318 := by
  rw [tree7318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7316 coloured7316 at child
  try dsimp only [live7318, coloured7318]
  rw [child]
  dsimp only [result7316]
  have child := child1
  unfold live7317 coloured7317 at child
  try dsimp only [live7318, coloured7318]
  rw [child]
  dsimp only [result7317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7319_agree_conditional : tree7319 = literal7319 := by
  rw [tree7319_def]
  rfl
theorem node7319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7319 live7319 coloured7319 = result7319 := by
  rw [tree7319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7320_agree_conditional
    (child0 : tree7318 = literal7318)
    (child1 : tree7319 = literal7319) : tree7320 = literal7320 := by
  rw [tree7320_def, child0, child1]
  rfl
theorem node7320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7318 live7318 coloured7318 = result7318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7319 live7319 coloured7319 = result7319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7320 live7320 coloured7320 = result7320 := by
  rw [tree7320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7318 coloured7318 at child
  try dsimp only [live7320, coloured7320]
  rw [child]
  dsimp only [result7318]
  have child := child1
  unfold live7319 coloured7319 at child
  try dsimp only [live7320, coloured7320]
  rw [child]
  dsimp only [result7319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7321_agree_conditional : tree7321 = literal7321 := by
  rw [tree7321_def]
  rfl
theorem node7321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7321 live7321 coloured7321 = result7321 := by
  rw [tree7321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7322_agree_conditional
    (child0 : tree7320 = literal7320)
    (child1 : tree7321 = literal7321) : tree7322 = literal7322 := by
  rw [tree7322_def, child0, child1]
  rfl
theorem node7322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7320 live7320 coloured7320 = result7320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7321 live7321 coloured7321 = result7321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7322 live7322 coloured7322 = result7322 := by
  rw [tree7322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7320 coloured7320 at child
  try dsimp only [live7322, coloured7322]
  rw [child]
  dsimp only [result7320]
  have child := child1
  unfold live7321 coloured7321 at child
  try dsimp only [live7322, coloured7322]
  rw [child]
  dsimp only [result7321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7323_agree_conditional : tree7323 = literal7323 := by
  rw [tree7323_def]
  rfl
theorem node7323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7323 live7323 coloured7323 = result7323 := by
  rw [tree7323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7324_agree_conditional
    (child0 : tree7322 = literal7322)
    (child1 : tree7323 = literal7323) : tree7324 = literal7324 := by
  rw [tree7324_def, child0, child1]
  rfl
theorem node7324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7322 live7322 coloured7322 = result7322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7323 live7323 coloured7323 = result7323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7324 live7324 coloured7324 = result7324 := by
  rw [tree7324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7322 coloured7322 at child
  try dsimp only [live7324, coloured7324]
  rw [child]
  dsimp only [result7322]
  have child := child1
  unfold live7323 coloured7323 at child
  try dsimp only [live7324, coloured7324]
  rw [child]
  dsimp only [result7323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7325_agree_conditional : tree7325 = literal7325 := by
  rw [tree7325_def]
  rfl
theorem node7325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7325 live7325 coloured7325 = result7325 := by
  rw [tree7325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7326_agree_conditional
    (child0 : tree7324 = literal7324)
    (child1 : tree7325 = literal7325) : tree7326 = literal7326 := by
  rw [tree7326_def, child0, child1]
  rfl
theorem node7326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7324 live7324 coloured7324 = result7324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7325 live7325 coloured7325 = result7325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7326 live7326 coloured7326 = result7326 := by
  rw [tree7326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7324 coloured7324 at child
  try dsimp only [live7326, coloured7326]
  rw [child]
  dsimp only [result7324]
  have child := child1
  unfold live7325 coloured7325 at child
  try dsimp only [live7326, coloured7326]
  rw [child]
  dsimp only [result7325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7327_agree_conditional : tree7327 = literal7327 := by
  rw [tree7327_def]
  rfl
theorem node7327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7327 live7327 coloured7327 = result7327 := by
  rw [tree7327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7328_agree_conditional
    (child0 : tree7326 = literal7326)
    (child1 : tree7327 = literal7327) : tree7328 = literal7328 := by
  rw [tree7328_def, child0, child1]
  rfl
theorem node7328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7326 live7326 coloured7326 = result7326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7327 live7327 coloured7327 = result7327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7328 live7328 coloured7328 = result7328 := by
  rw [tree7328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7326 coloured7326 at child
  try dsimp only [live7328, coloured7328]
  rw [child]
  dsimp only [result7326]
  have child := child1
  unfold live7327 coloured7327 at child
  try dsimp only [live7328, coloured7328]
  rw [child]
  dsimp only [result7327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7329_agree_conditional : tree7329 = literal7329 := by
  rw [tree7329_def]
  rfl
theorem node7329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7329 live7329 coloured7329 = result7329 := by
  rw [tree7329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7330_agree_conditional
    (child0 : tree7328 = literal7328)
    (child1 : tree7329 = literal7329) : tree7330 = literal7330 := by
  rw [tree7330_def, child0, child1]
  rfl
theorem node7330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7328 live7328 coloured7328 = result7328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7329 live7329 coloured7329 = result7329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7330 live7330 coloured7330 = result7330 := by
  rw [tree7330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7328 coloured7328 at child
  try dsimp only [live7330, coloured7330]
  rw [child]
  dsimp only [result7328]
  have child := child1
  unfold live7329 coloured7329 at child
  try dsimp only [live7330, coloured7330]
  rw [child]
  dsimp only [result7329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7331_agree_conditional : tree7331 = literal7331 := by
  rw [tree7331_def]
  rfl
theorem node7331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7331 live7331 coloured7331 = result7331 := by
  rw [tree7331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7332_agree_conditional
    (child0 : tree7330 = literal7330)
    (child1 : tree7331 = literal7331) : tree7332 = literal7332 := by
  rw [tree7332_def, child0, child1]
  rfl
theorem node7332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7330 live7330 coloured7330 = result7330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7331 live7331 coloured7331 = result7331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7332 live7332 coloured7332 = result7332 := by
  rw [tree7332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7330 coloured7330 at child
  try dsimp only [live7332, coloured7332]
  rw [child]
  dsimp only [result7330]
  have child := child1
  unfold live7331 coloured7331 at child
  try dsimp only [live7332, coloured7332]
  rw [child]
  dsimp only [result7331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7333_agree_conditional : tree7333 = literal7333 := by
  rw [tree7333_def]
  rfl
theorem node7333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7333 live7333 coloured7333 = result7333 := by
  rw [tree7333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7334_agree_conditional
    (child0 : tree7332 = literal7332)
    (child1 : tree7333 = literal7333) : tree7334 = literal7334 := by
  rw [tree7334_def, child0, child1]
  rfl
theorem node7334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7332 live7332 coloured7332 = result7332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7333 live7333 coloured7333 = result7333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7334 live7334 coloured7334 = result7334 := by
  rw [tree7334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7332 coloured7332 at child
  try dsimp only [live7334, coloured7334]
  rw [child]
  dsimp only [result7332]
  have child := child1
  unfold live7333 coloured7333 at child
  try dsimp only [live7334, coloured7334]
  rw [child]
  dsimp only [result7333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7335_agree_conditional : tree7335 = literal7335 := by
  rw [tree7335_def]
  rfl
theorem node7335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7335 live7335 coloured7335 = result7335 := by
  rw [tree7335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7336_agree_conditional
    (child0 : tree7334 = literal7334)
    (child1 : tree7335 = literal7335) : tree7336 = literal7336 := by
  rw [tree7336_def, child0, child1]
  rfl
theorem node7336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7334 live7334 coloured7334 = result7334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7335 live7335 coloured7335 = result7335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7336 live7336 coloured7336 = result7336 := by
  rw [tree7336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7334 coloured7334 at child
  try dsimp only [live7336, coloured7336]
  rw [child]
  dsimp only [result7334]
  have child := child1
  unfold live7335 coloured7335 at child
  try dsimp only [live7336, coloured7336]
  rw [child]
  dsimp only [result7335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7337_agree_conditional : tree7337 = literal7337 := by
  rw [tree7337_def]
  rfl
theorem node7337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7337 live7337 coloured7337 = result7337 := by
  rw [tree7337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7338_agree_conditional
    (child0 : tree7336 = literal7336)
    (child1 : tree7337 = literal7337) : tree7338 = literal7338 := by
  rw [tree7338_def, child0, child1]
  rfl
theorem node7338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7336 live7336 coloured7336 = result7336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7337 live7337 coloured7337 = result7337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7338 live7338 coloured7338 = result7338 := by
  rw [tree7338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7336 coloured7336 at child
  try dsimp only [live7338, coloured7338]
  rw [child]
  dsimp only [result7336]
  have child := child1
  unfold live7337 coloured7337 at child
  try dsimp only [live7338, coloured7338]
  rw [child]
  dsimp only [result7337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7339_agree_conditional : tree7339 = literal7339 := by
  rw [tree7339_def]
  rfl
theorem node7339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7339 live7339 coloured7339 = result7339 := by
  rw [tree7339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7340_agree_conditional
    (child0 : tree7338 = literal7338)
    (child1 : tree7339 = literal7339) : tree7340 = literal7340 := by
  rw [tree7340_def, child0, child1]
  rfl
theorem node7340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7338 live7338 coloured7338 = result7338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7339 live7339 coloured7339 = result7339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7340 live7340 coloured7340 = result7340 := by
  rw [tree7340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7338 coloured7338 at child
  try dsimp only [live7340, coloured7340]
  rw [child]
  dsimp only [result7338]
  have child := child1
  unfold live7339 coloured7339 at child
  try dsimp only [live7340, coloured7340]
  rw [child]
  dsimp only [result7339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7341_agree_conditional : tree7341 = literal7341 := by
  rw [tree7341_def]
  rfl
theorem node7341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7341 live7341 coloured7341 = result7341 := by
  rw [tree7341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7342_agree_conditional
    (child0 : tree7340 = literal7340)
    (child1 : tree7341 = literal7341) : tree7342 = literal7342 := by
  rw [tree7342_def, child0, child1]
  rfl
theorem node7342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7340 live7340 coloured7340 = result7340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7341 live7341 coloured7341 = result7341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7342 live7342 coloured7342 = result7342 := by
  rw [tree7342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7340 coloured7340 at child
  try dsimp only [live7342, coloured7342]
  rw [child]
  dsimp only [result7340]
  have child := child1
  unfold live7341 coloured7341 at child
  try dsimp only [live7342, coloured7342]
  rw [child]
  dsimp only [result7341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7343_agree_conditional : tree7343 = literal7343 := by
  rw [tree7343_def]
  rfl
theorem node7343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7343 live7343 coloured7343 = result7343 := by
  rw [tree7343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7344_agree_conditional
    (child0 : tree7342 = literal7342)
    (child1 : tree7343 = literal7343) : tree7344 = literal7344 := by
  rw [tree7344_def, child0, child1]
  rfl
theorem node7344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7342 live7342 coloured7342 = result7342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7343 live7343 coloured7343 = result7343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7344 live7344 coloured7344 = result7344 := by
  rw [tree7344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7342 coloured7342 at child
  try dsimp only [live7344, coloured7344]
  rw [child]
  dsimp only [result7342]
  have child := child1
  unfold live7343 coloured7343 at child
  try dsimp only [live7344, coloured7344]
  rw [child]
  dsimp only [result7343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7345_agree_conditional : tree7345 = literal7345 := by
  rw [tree7345_def]
  rfl
theorem node7345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7345 live7345 coloured7345 = result7345 := by
  rw [tree7345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7346_agree_conditional
    (child0 : tree7344 = literal7344)
    (child1 : tree7345 = literal7345) : tree7346 = literal7346 := by
  rw [tree7346_def, child0, child1]
  rfl
theorem node7346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7344 live7344 coloured7344 = result7344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7345 live7345 coloured7345 = result7345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7346 live7346 coloured7346 = result7346 := by
  rw [tree7346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7344 coloured7344 at child
  try dsimp only [live7346, coloured7346]
  rw [child]
  dsimp only [result7344]
  have child := child1
  unfold live7345 coloured7345 at child
  try dsimp only [live7346, coloured7346]
  rw [child]
  dsimp only [result7345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7347_agree_conditional : tree7347 = literal7347 := by
  rw [tree7347_def]
  rfl
theorem node7347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7347 live7347 coloured7347 = result7347 := by
  rw [tree7347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7348_agree_conditional
    (child0 : tree7346 = literal7346)
    (child1 : tree7347 = literal7347) : tree7348 = literal7348 := by
  rw [tree7348_def, child0, child1]
  rfl
theorem node7348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7346 live7346 coloured7346 = result7346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7347 live7347 coloured7347 = result7347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7348 live7348 coloured7348 = result7348 := by
  rw [tree7348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7346 coloured7346 at child
  try dsimp only [live7348, coloured7348]
  rw [child]
  dsimp only [result7346]
  have child := child1
  unfold live7347 coloured7347 at child
  try dsimp only [live7348, coloured7348]
  rw [child]
  dsimp only [result7347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7349_agree_conditional : tree7349 = literal7349 := by
  rw [tree7349_def]
  rfl
theorem node7349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7349 live7349 coloured7349 = result7349 := by
  rw [tree7349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7350_agree_conditional
    (child0 : tree7348 = literal7348)
    (child1 : tree7349 = literal7349) : tree7350 = literal7350 := by
  rw [tree7350_def, child0, child1]
  rfl
theorem node7350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7348 live7348 coloured7348 = result7348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7349 live7349 coloured7349 = result7349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7350 live7350 coloured7350 = result7350 := by
  rw [tree7350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7348 coloured7348 at child
  try dsimp only [live7350, coloured7350]
  rw [child]
  dsimp only [result7348]
  have child := child1
  unfold live7349 coloured7349 at child
  try dsimp only [live7350, coloured7350]
  rw [child]
  dsimp only [result7349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7351_agree_conditional : tree7351 = literal7351 := by
  rw [tree7351_def]
  rfl
theorem node7351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7351 live7351 coloured7351 = result7351 := by
  rw [tree7351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7352_agree_conditional
    (child0 : tree7350 = literal7350)
    (child1 : tree7351 = literal7351) : tree7352 = literal7352 := by
  rw [tree7352_def, child0, child1]
  rfl
theorem node7352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7350 live7350 coloured7350 = result7350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7351 live7351 coloured7351 = result7351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7352 live7352 coloured7352 = result7352 := by
  rw [tree7352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7350 coloured7350 at child
  try dsimp only [live7352, coloured7352]
  rw [child]
  dsimp only [result7350]
  have child := child1
  unfold live7351 coloured7351 at child
  try dsimp only [live7352, coloured7352]
  rw [child]
  dsimp only [result7351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7353_agree_conditional : tree7353 = literal7353 := by
  rw [tree7353_def]
  rfl
theorem node7353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7353 live7353 coloured7353 = result7353 := by
  rw [tree7353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7354_agree_conditional
    (child0 : tree7352 = literal7352)
    (child1 : tree7353 = literal7353) : tree7354 = literal7354 := by
  rw [tree7354_def, child0, child1]
  rfl
theorem node7354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7352 live7352 coloured7352 = result7352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7353 live7353 coloured7353 = result7353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7354 live7354 coloured7354 = result7354 := by
  rw [tree7354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7352 coloured7352 at child
  try dsimp only [live7354, coloured7354]
  rw [child]
  dsimp only [result7352]
  have child := child1
  unfold live7353 coloured7353 at child
  try dsimp only [live7354, coloured7354]
  rw [child]
  dsimp only [result7353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7355_agree_conditional : tree7355 = literal7355 := by
  rw [tree7355_def]
  rfl
theorem node7355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7355 live7355 coloured7355 = result7355 := by
  rw [tree7355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7356_agree_conditional
    (child0 : tree7354 = literal7354)
    (child1 : tree7355 = literal7355) : tree7356 = literal7356 := by
  rw [tree7356_def, child0, child1]
  rfl
theorem node7356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7354 live7354 coloured7354 = result7354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7355 live7355 coloured7355 = result7355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7356 live7356 coloured7356 = result7356 := by
  rw [tree7356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7354 coloured7354 at child
  try dsimp only [live7356, coloured7356]
  rw [child]
  dsimp only [result7354]
  have child := child1
  unfold live7355 coloured7355 at child
  try dsimp only [live7356, coloured7356]
  rw [child]
  dsimp only [result7355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7357_agree_conditional : tree7357 = literal7357 := by
  rw [tree7357_def]
  rfl
theorem node7357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7357 live7357 coloured7357 = result7357 := by
  rw [tree7357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7358_agree_conditional
    (child0 : tree7356 = literal7356)
    (child1 : tree7357 = literal7357) : tree7358 = literal7358 := by
  rw [tree7358_def, child0, child1]
  rfl
theorem node7358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7356 live7356 coloured7356 = result7356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7357 live7357 coloured7357 = result7357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7358 live7358 coloured7358 = result7358 := by
  rw [tree7358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7356 coloured7356 at child
  try dsimp only [live7358, coloured7358]
  rw [child]
  dsimp only [result7356]
  have child := child1
  unfold live7357 coloured7357 at child
  try dsimp only [live7358, coloured7358]
  rw [child]
  dsimp only [result7357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7359_agree_conditional : tree7359 = literal7359 := by
  rw [tree7359_def]
  rfl
theorem node7359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7359 live7359 coloured7359 = result7359 := by
  rw [tree7359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7360_agree_conditional
    (child0 : tree7358 = literal7358)
    (child1 : tree7359 = literal7359) : tree7360 = literal7360 := by
  rw [tree7360_def, child0, child1]
  rfl
theorem node7360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7358 live7358 coloured7358 = result7358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7359 live7359 coloured7359 = result7359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7360 live7360 coloured7360 = result7360 := by
  rw [tree7360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7358 coloured7358 at child
  try dsimp only [live7360, coloured7360]
  rw [child]
  dsimp only [result7358]
  have child := child1
  unfold live7359 coloured7359 at child
  try dsimp only [live7360, coloured7360]
  rw [child]
  dsimp only [result7359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7361_agree_conditional : tree7361 = literal7361 := by
  rw [tree7361_def]
  rfl
theorem node7361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7361 live7361 coloured7361 = result7361 := by
  rw [tree7361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7362_agree_conditional
    (child0 : tree7360 = literal7360)
    (child1 : tree7361 = literal7361) : tree7362 = literal7362 := by
  rw [tree7362_def, child0, child1]
  rfl
theorem node7362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7360 live7360 coloured7360 = result7360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7361 live7361 coloured7361 = result7361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7362 live7362 coloured7362 = result7362 := by
  rw [tree7362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7360 coloured7360 at child
  try dsimp only [live7362, coloured7362]
  rw [child]
  dsimp only [result7360]
  have child := child1
  unfold live7361 coloured7361 at child
  try dsimp only [live7362, coloured7362]
  rw [child]
  dsimp only [result7361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7363_agree_conditional : tree7363 = literal7363 := by
  rw [tree7363_def]
  rfl
theorem node7363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7363 live7363 coloured7363 = result7363 := by
  rw [tree7363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7364_agree_conditional
    (child0 : tree7362 = literal7362)
    (child1 : tree7363 = literal7363) : tree7364 = literal7364 := by
  rw [tree7364_def, child0, child1]
  rfl
theorem node7364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7362 live7362 coloured7362 = result7362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7363 live7363 coloured7363 = result7363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7364 live7364 coloured7364 = result7364 := by
  rw [tree7364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7362 coloured7362 at child
  try dsimp only [live7364, coloured7364]
  rw [child]
  dsimp only [result7362]
  have child := child1
  unfold live7363 coloured7363 at child
  try dsimp only [live7364, coloured7364]
  rw [child]
  dsimp only [result7363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7365_agree_conditional : tree7365 = literal7365 := by
  rw [tree7365_def]
  rfl
theorem node7365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7365 live7365 coloured7365 = result7365 := by
  rw [tree7365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7366_agree_conditional
    (child0 : tree7364 = literal7364)
    (child1 : tree7365 = literal7365) : tree7366 = literal7366 := by
  rw [tree7366_def, child0, child1]
  rfl
theorem node7366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7364 live7364 coloured7364 = result7364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7365 live7365 coloured7365 = result7365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7366 live7366 coloured7366 = result7366 := by
  rw [tree7366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7364 coloured7364 at child
  try dsimp only [live7366, coloured7366]
  rw [child]
  dsimp only [result7364]
  have child := child1
  unfold live7365 coloured7365 at child
  try dsimp only [live7366, coloured7366]
  rw [child]
  dsimp only [result7365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7367_agree_conditional : tree7367 = literal7367 := by
  rw [tree7367_def]
  rfl
theorem node7367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7367 live7367 coloured7367 = result7367 := by
  rw [tree7367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7368_agree_conditional
    (child0 : tree7366 = literal7366)
    (child1 : tree7367 = literal7367) : tree7368 = literal7368 := by
  rw [tree7368_def, child0, child1]
  rfl
theorem node7368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7366 live7366 coloured7366 = result7366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7367 live7367 coloured7367 = result7367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7368 live7368 coloured7368 = result7368 := by
  rw [tree7368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7366 coloured7366 at child
  try dsimp only [live7368, coloured7368]
  rw [child]
  dsimp only [result7366]
  have child := child1
  unfold live7367 coloured7367 at child
  try dsimp only [live7368, coloured7368]
  rw [child]
  dsimp only [result7367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7369_agree_conditional : tree7369 = literal7369 := by
  rw [tree7369_def]
  rfl
theorem node7369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7369 live7369 coloured7369 = result7369 := by
  rw [tree7369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7370_agree_conditional
    (child0 : tree7368 = literal7368)
    (child1 : tree7369 = literal7369) : tree7370 = literal7370 := by
  rw [tree7370_def, child0, child1]
  rfl
theorem node7370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7368 live7368 coloured7368 = result7368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7369 live7369 coloured7369 = result7369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7370 live7370 coloured7370 = result7370 := by
  rw [tree7370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7368 coloured7368 at child
  try dsimp only [live7370, coloured7370]
  rw [child]
  dsimp only [result7368]
  have child := child1
  unfold live7369 coloured7369 at child
  try dsimp only [live7370, coloured7370]
  rw [child]
  dsimp only [result7369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7371_agree_conditional : tree7371 = literal7371 := by
  rw [tree7371_def]
  rfl
theorem node7371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7371 live7371 coloured7371 = result7371 := by
  rw [tree7371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7372_agree_conditional
    (child0 : tree7370 = literal7370)
    (child1 : tree7371 = literal7371) : tree7372 = literal7372 := by
  rw [tree7372_def, child0, child1]
  rfl
theorem node7372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7370 live7370 coloured7370 = result7370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7371 live7371 coloured7371 = result7371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7372 live7372 coloured7372 = result7372 := by
  rw [tree7372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7370 coloured7370 at child
  try dsimp only [live7372, coloured7372]
  rw [child]
  dsimp only [result7370]
  have child := child1
  unfold live7371 coloured7371 at child
  try dsimp only [live7372, coloured7372]
  rw [child]
  dsimp only [result7371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7373_agree_conditional : tree7373 = literal7373 := by
  rw [tree7373_def]
  rfl
theorem node7373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7373 live7373 coloured7373 = result7373 := by
  rw [tree7373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7374_agree_conditional
    (child0 : tree7372 = literal7372)
    (child1 : tree7373 = literal7373) : tree7374 = literal7374 := by
  rw [tree7374_def, child0, child1]
  rfl
theorem node7374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7372 live7372 coloured7372 = result7372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7373 live7373 coloured7373 = result7373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7374 live7374 coloured7374 = result7374 := by
  rw [tree7374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7372 coloured7372 at child
  try dsimp only [live7374, coloured7374]
  rw [child]
  dsimp only [result7372]
  have child := child1
  unfold live7373 coloured7373 at child
  try dsimp only [live7374, coloured7374]
  rw [child]
  dsimp only [result7373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7375_agree_conditional : tree7375 = literal7375 := by
  rw [tree7375_def]
  rfl
theorem node7375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7375 live7375 coloured7375 = result7375 := by
  rw [tree7375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7376_agree_conditional
    (child0 : tree7374 = literal7374)
    (child1 : tree7375 = literal7375) : tree7376 = literal7376 := by
  rw [tree7376_def, child0, child1]
  rfl
theorem node7376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7374 live7374 coloured7374 = result7374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7375 live7375 coloured7375 = result7375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7376 live7376 coloured7376 = result7376 := by
  rw [tree7376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7374 coloured7374 at child
  try dsimp only [live7376, coloured7376]
  rw [child]
  dsimp only [result7374]
  have child := child1
  unfold live7375 coloured7375 at child
  try dsimp only [live7376, coloured7376]
  rw [child]
  dsimp only [result7375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7377_agree_conditional : tree7377 = literal7377 := by
  rw [tree7377_def]
  rfl
theorem node7377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7377 live7377 coloured7377 = result7377 := by
  rw [tree7377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7378_agree_conditional
    (child0 : tree7376 = literal7376)
    (child1 : tree7377 = literal7377) : tree7378 = literal7378 := by
  rw [tree7378_def, child0, child1]
  rfl
theorem node7378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7376 live7376 coloured7376 = result7376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7377 live7377 coloured7377 = result7377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7378 live7378 coloured7378 = result7378 := by
  rw [tree7378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7376 coloured7376 at child
  try dsimp only [live7378, coloured7378]
  rw [child]
  dsimp only [result7376]
  have child := child1
  unfold live7377 coloured7377 at child
  try dsimp only [live7378, coloured7378]
  rw [child]
  dsimp only [result7377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7379_agree_conditional : tree7379 = literal7379 := by
  rw [tree7379_def]
  rfl
theorem node7379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7379 live7379 coloured7379 = result7379 := by
  rw [tree7379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7380_agree_conditional
    (child0 : tree7378 = literal7378)
    (child1 : tree7379 = literal7379) : tree7380 = literal7380 := by
  rw [tree7380_def, child0, child1]
  rfl
theorem node7380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7378 live7378 coloured7378 = result7378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7379 live7379 coloured7379 = result7379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7380 live7380 coloured7380 = result7380 := by
  rw [tree7380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7378 coloured7378 at child
  try dsimp only [live7380, coloured7380]
  rw [child]
  dsimp only [result7378]
  have child := child1
  unfold live7379 coloured7379 at child
  try dsimp only [live7380, coloured7380]
  rw [child]
  dsimp only [result7379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7381_agree_conditional : tree7381 = literal7381 := by
  rw [tree7381_def]
  rfl
theorem node7381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7381 live7381 coloured7381 = result7381 := by
  rw [tree7381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7382_agree_conditional
    (child0 : tree7380 = literal7380)
    (child1 : tree7381 = literal7381) : tree7382 = literal7382 := by
  rw [tree7382_def, child0, child1]
  rfl
theorem node7382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7380 live7380 coloured7380 = result7380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7381 live7381 coloured7381 = result7381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7382 live7382 coloured7382 = result7382 := by
  rw [tree7382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7380 coloured7380 at child
  try dsimp only [live7382, coloured7382]
  rw [child]
  dsimp only [result7380]
  have child := child1
  unfold live7381 coloured7381 at child
  try dsimp only [live7382, coloured7382]
  rw [child]
  dsimp only [result7381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7383_agree_conditional : tree7383 = literal7383 := by
  rw [tree7383_def]
  rfl
theorem node7383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7383 live7383 coloured7383 = result7383 := by
  rw [tree7383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7384_agree_conditional
    (child0 : tree7382 = literal7382)
    (child1 : tree7383 = literal7383) : tree7384 = literal7384 := by
  rw [tree7384_def, child0, child1]
  rfl
theorem node7384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7382 live7382 coloured7382 = result7382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7383 live7383 coloured7383 = result7383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7384 live7384 coloured7384 = result7384 := by
  rw [tree7384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7382 coloured7382 at child
  try dsimp only [live7384, coloured7384]
  rw [child]
  dsimp only [result7382]
  have child := child1
  unfold live7383 coloured7383 at child
  try dsimp only [live7384, coloured7384]
  rw [child]
  dsimp only [result7383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7385_agree_conditional : tree7385 = literal7385 := by
  rw [tree7385_def]
  rfl
theorem node7385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7385 live7385 coloured7385 = result7385 := by
  rw [tree7385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7386_agree_conditional
    (child0 : tree7384 = literal7384)
    (child1 : tree7385 = literal7385) : tree7386 = literal7386 := by
  rw [tree7386_def, child0, child1]
  rfl
theorem node7386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7384 live7384 coloured7384 = result7384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7385 live7385 coloured7385 = result7385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7386 live7386 coloured7386 = result7386 := by
  rw [tree7386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7384 coloured7384 at child
  try dsimp only [live7386, coloured7386]
  rw [child]
  dsimp only [result7384]
  have child := child1
  unfold live7385 coloured7385 at child
  try dsimp only [live7386, coloured7386]
  rw [child]
  dsimp only [result7385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7387_agree_conditional : tree7387 = literal7387 := by
  rw [tree7387_def]
  rfl
theorem node7387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7387 live7387 coloured7387 = result7387 := by
  rw [tree7387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7388_agree_conditional
    (child0 : tree7386 = literal7386)
    (child1 : tree7387 = literal7387) : tree7388 = literal7388 := by
  rw [tree7388_def, child0, child1]
  rfl
theorem node7388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7386 live7386 coloured7386 = result7386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7387 live7387 coloured7387 = result7387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7388 live7388 coloured7388 = result7388 := by
  rw [tree7388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7386 coloured7386 at child
  try dsimp only [live7388, coloured7388]
  rw [child]
  dsimp only [result7386]
  have child := child1
  unfold live7387 coloured7387 at child
  try dsimp only [live7388, coloured7388]
  rw [child]
  dsimp only [result7387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7389_agree_conditional : tree7389 = literal7389 := by
  rw [tree7389_def]
  rfl
theorem node7389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7389 live7389 coloured7389 = result7389 := by
  rw [tree7389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7390_agree_conditional
    (child0 : tree7388 = literal7388)
    (child1 : tree7389 = literal7389) : tree7390 = literal7390 := by
  rw [tree7390_def, child0, child1]
  rfl
theorem node7390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7388 live7388 coloured7388 = result7388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7389 live7389 coloured7389 = result7389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7390 live7390 coloured7390 = result7390 := by
  rw [tree7390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7388 coloured7388 at child
  try dsimp only [live7390, coloured7390]
  rw [child]
  dsimp only [result7388]
  have child := child1
  unfold live7389 coloured7389 at child
  try dsimp only [live7390, coloured7390]
  rw [child]
  dsimp only [result7389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7391_agree_conditional : tree7391 = literal7391 := by
  rw [tree7391_def]
  rfl
theorem node7391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7391 live7391 coloured7391 = result7391 := by
  rw [tree7391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
