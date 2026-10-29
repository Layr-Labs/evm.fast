import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages233.Data
import InitECandidate.Proofs.ClashComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages233
theorem tree288_agree_conditional
    (child0 : tree286 = literal286)
    (child1 : tree287 = literal287) : tree288 = literal288 := by
  rw [tree288_def, child0, child1]
  rfl
theorem node288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree286 live286 coloured286 = result286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree287 live287 coloured287 = result287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree288 live288 coloured288 = result288 := by
  rw [tree288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live286 coloured286 at child
  try dsimp only [live288, coloured288]
  rw [child]
  dsimp only [result286]
  have child := child1
  unfold live287 coloured287 at child
  try dsimp only [live288, coloured288]
  rw [child]
  dsimp only [result287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree289_agree_conditional
    (child0 : tree283 = literal283)
    (child1 : tree288 = literal288) : tree289 = literal289 := by
  rw [tree289_def, child0, child1]
  rfl
theorem node289_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree283 live283 coloured283 = result283)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree288 live288 coloured288 = result288) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree289 live289 coloured289 = result289 := by
  rw [tree289_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live283 coloured283 at child
  try dsimp only [live289, coloured289]
  rw [child]
  dsimp only [result283]
  have child := child1
  unfold live288 coloured288 at child
  try dsimp only [live289, coloured289]
  rw [child]
  dsimp only [result288]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree290_agree_conditional
    (child0 : tree280 = literal280)
    (child1 : tree289 = literal289) : tree290 = literal290 := by
  rw [tree290_def, child0, child1]
  rfl
theorem node290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree280 live280 coloured280 = result280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree289 live289 coloured289 = result289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree290 live290 coloured290 = result290 := by
  rw [tree290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live280 coloured280 at child
  try dsimp only [live290, coloured290]
  rw [child]
  dsimp only [result280]
  have child := child1
  unfold live289 coloured289 at child
  try dsimp only [live290, coloured290]
  rw [child]
  dsimp only [result289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree291_agree_conditional : tree291 = literal291 := by
  rw [tree291_def]
  rfl
theorem node291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree291 live291 coloured291 = result291 := by
  rw [tree291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree292_agree_conditional
    (child0 : tree290 = literal290)
    (child1 : tree291 = literal291) : tree292 = literal292 := by
  rw [tree292_def, child0, child1]
  rfl
theorem node292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree290 live290 coloured290 = result290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree291 live291 coloured291 = result291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree292 live292 coloured292 = result292 := by
  rw [tree292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live290 coloured290 at child
  try dsimp only [live292, coloured292]
  rw [child]
  dsimp only [result290]
  have child := child1
  unfold live291 coloured291 at child
  try dsimp only [live292, coloured292]
  rw [child]
  dsimp only [result291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree293_agree_conditional : tree293 = literal293 := by
  rw [tree293_def]
  rfl
theorem node293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree293 live293 coloured293 = result293 := by
  rw [tree293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree294_agree_conditional
    (child0 : tree292 = literal292)
    (child1 : tree293 = literal293) : tree294 = literal294 := by
  rw [tree294_def, child0, child1]
  rfl
theorem node294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree292 live292 coloured292 = result292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree293 live293 coloured293 = result293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree294 live294 coloured294 = result294 := by
  rw [tree294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live292 coloured292 at child
  try dsimp only [live294, coloured294]
  rw [child]
  dsimp only [result292]
  have child := child1
  unfold live293 coloured293 at child
  try dsimp only [live294, coloured294]
  rw [child]
  dsimp only [result293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree295_agree_conditional : tree295 = literal295 := by
  rw [tree295_def]
  rfl
theorem node295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree295 live295 coloured295 = result295 := by
  rw [tree295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree296_agree_conditional
    (child0 : tree294 = literal294)
    (child1 : tree295 = literal295) : tree296 = literal296 := by
  rw [tree296_def, child0, child1]
  rfl
theorem node296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree294 live294 coloured294 = result294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree295 live295 coloured295 = result295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree296 live296 coloured296 = result296 := by
  rw [tree296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live294 coloured294 at child
  try dsimp only [live296, coloured296]
  rw [child]
  dsimp only [result294]
  have child := child1
  unfold live295 coloured295 at child
  try dsimp only [live296, coloured296]
  rw [child]
  dsimp only [result295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree297_agree_conditional : tree297 = literal297 := by
  rw [tree297_def]
  rfl
theorem node297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree297 live297 coloured297 = result297 := by
  rw [tree297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree298_agree_conditional
    (child0 : tree296 = literal296)
    (child1 : tree297 = literal297) : tree298 = literal298 := by
  rw [tree298_def, child0, child1]
  rfl
theorem node298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree296 live296 coloured296 = result296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree297 live297 coloured297 = result297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree298 live298 coloured298 = result298 := by
  rw [tree298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live296 coloured296 at child
  try dsimp only [live298, coloured298]
  rw [child]
  dsimp only [result296]
  have child := child1
  unfold live297 coloured297 at child
  try dsimp only [live298, coloured298]
  rw [child]
  dsimp only [result297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree299_agree_conditional : tree299 = literal299 := by
  rw [tree299_def]
  rfl
theorem node299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree299 live299 coloured299 = result299 := by
  rw [tree299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree300_agree_conditional
    (child0 : tree298 = literal298)
    (child1 : tree299 = literal299) : tree300 = literal300 := by
  rw [tree300_def, child0, child1]
  rfl
theorem node300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree298 live298 coloured298 = result298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree299 live299 coloured299 = result299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree300 live300 coloured300 = result300 := by
  rw [tree300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live298 coloured298 at child
  try dsimp only [live300, coloured300]
  rw [child]
  dsimp only [result298]
  have child := child1
  unfold live299 coloured299 at child
  try dsimp only [live300, coloured300]
  rw [child]
  dsimp only [result299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree301_agree_conditional : tree301 = literal301 := by
  rw [tree301_def]
  rfl
theorem node301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree301 live301 coloured301 = result301 := by
  rw [tree301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree302_agree_conditional
    (child0 : tree300 = literal300)
    (child1 : tree301 = literal301) : tree302 = literal302 := by
  rw [tree302_def, child0, child1]
  rfl
theorem node302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree300 live300 coloured300 = result300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree301 live301 coloured301 = result301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree302 live302 coloured302 = result302 := by
  rw [tree302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live300 coloured300 at child
  try dsimp only [live302, coloured302]
  rw [child]
  dsimp only [result300]
  have child := child1
  unfold live301 coloured301 at child
  try dsimp only [live302, coloured302]
  rw [child]
  dsimp only [result301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree303_agree_conditional : tree303 = literal303 := by
  rw [tree303_def]
  rfl
theorem node303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree303 live303 coloured303 = result303 := by
  rw [tree303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree304_agree_conditional
    (child0 : tree302 = literal302)
    (child1 : tree303 = literal303) : tree304 = literal304 := by
  rw [tree304_def, child0, child1]
  rfl
theorem node304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree302 live302 coloured302 = result302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree303 live303 coloured303 = result303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree304 live304 coloured304 = result304 := by
  rw [tree304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live302 coloured302 at child
  try dsimp only [live304, coloured304]
  rw [child]
  dsimp only [result302]
  have child := child1
  unfold live303 coloured303 at child
  try dsimp only [live304, coloured304]
  rw [child]
  dsimp only [result303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree305_agree_conditional : tree305 = literal305 := by
  rw [tree305_def]
  rfl
theorem node305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree305 live305 coloured305 = result305 := by
  rw [tree305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree306_agree_conditional
    (child0 : tree304 = literal304)
    (child1 : tree305 = literal305) : tree306 = literal306 := by
  rw [tree306_def, child0, child1]
  rfl
theorem node306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree304 live304 coloured304 = result304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree305 live305 coloured305 = result305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree306 live306 coloured306 = result306 := by
  rw [tree306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live304 coloured304 at child
  try dsimp only [live306, coloured306]
  rw [child]
  dsimp only [result304]
  have child := child1
  unfold live305 coloured305 at child
  try dsimp only [live306, coloured306]
  rw [child]
  dsimp only [result305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree307_agree_conditional : tree307 = literal307 := by
  rw [tree307_def]
  rfl
theorem node307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree307 live307 coloured307 = result307 := by
  rw [tree307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree308_agree_conditional
    (child0 : tree306 = literal306)
    (child1 : tree307 = literal307) : tree308 = literal308 := by
  rw [tree308_def, child0, child1]
  rfl
theorem node308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree306 live306 coloured306 = result306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree307 live307 coloured307 = result307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree308 live308 coloured308 = result308 := by
  rw [tree308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live306 coloured306 at child
  try dsimp only [live308, coloured308]
  rw [child]
  dsimp only [result306]
  have child := child1
  unfold live307 coloured307 at child
  try dsimp only [live308, coloured308]
  rw [child]
  dsimp only [result307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree309_agree_conditional : tree309 = literal309 := by
  rw [tree309_def]
  rfl
theorem node309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree309 live309 coloured309 = result309 := by
  rw [tree309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree310_agree_conditional
    (child0 : tree308 = literal308)
    (child1 : tree309 = literal309) : tree310 = literal310 := by
  rw [tree310_def, child0, child1]
  rfl
theorem node310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree308 live308 coloured308 = result308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree309 live309 coloured309 = result309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree310 live310 coloured310 = result310 := by
  rw [tree310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live308 coloured308 at child
  try dsimp only [live310, coloured310]
  rw [child]
  dsimp only [result308]
  have child := child1
  unfold live309 coloured309 at child
  try dsimp only [live310, coloured310]
  rw [child]
  dsimp only [result309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree311_agree_conditional : tree311 = literal311 := by
  rw [tree311_def]
  rfl
theorem node311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree311 live311 coloured311 = result311 := by
  rw [tree311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree312_agree_conditional
    (child0 : tree310 = literal310)
    (child1 : tree311 = literal311) : tree312 = literal312 := by
  rw [tree312_def, child0, child1]
  rfl
theorem node312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree310 live310 coloured310 = result310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree311 live311 coloured311 = result311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree312 live312 coloured312 = result312 := by
  rw [tree312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live310 coloured310 at child
  try dsimp only [live312, coloured312]
  rw [child]
  dsimp only [result310]
  have child := child1
  unfold live311 coloured311 at child
  try dsimp only [live312, coloured312]
  rw [child]
  dsimp only [result311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree313_agree_conditional : tree313 = literal313 := by
  rw [tree313_def]
  rfl
theorem node313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree313 live313 coloured313 = result313 := by
  rw [tree313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree314_agree_conditional
    (child0 : tree312 = literal312)
    (child1 : tree313 = literal313) : tree314 = literal314 := by
  rw [tree314_def, child0, child1]
  rfl
theorem node314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree312 live312 coloured312 = result312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree313 live313 coloured313 = result313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree314 live314 coloured314 = result314 := by
  rw [tree314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live312 coloured312 at child
  try dsimp only [live314, coloured314]
  rw [child]
  dsimp only [result312]
  have child := child1
  unfold live313 coloured313 at child
  try dsimp only [live314, coloured314]
  rw [child]
  dsimp only [result313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree315_agree_conditional : tree315 = literal315 := by
  rw [tree315_def]
  rfl
theorem node315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree315 live315 coloured315 = result315 := by
  rw [tree315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree316_agree_conditional
    (child0 : tree314 = literal314)
    (child1 : tree315 = literal315) : tree316 = literal316 := by
  rw [tree316_def, child0, child1]
  rfl
theorem node316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree314 live314 coloured314 = result314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree315 live315 coloured315 = result315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree316 live316 coloured316 = result316 := by
  rw [tree316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live314 coloured314 at child
  try dsimp only [live316, coloured316]
  rw [child]
  dsimp only [result314]
  have child := child1
  unfold live315 coloured315 at child
  try dsimp only [live316, coloured316]
  rw [child]
  dsimp only [result315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree317_agree_conditional : tree317 = literal317 := by
  rw [tree317_def]
  rfl
theorem node317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree317 live317 coloured317 = result317 := by
  rw [tree317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree318_agree_conditional
    (child0 : tree316 = literal316)
    (child1 : tree317 = literal317) : tree318 = literal318 := by
  rw [tree318_def, child0, child1]
  rfl
theorem node318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree316 live316 coloured316 = result316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree317 live317 coloured317 = result317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree318 live318 coloured318 = result318 := by
  rw [tree318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live316 coloured316 at child
  try dsimp only [live318, coloured318]
  rw [child]
  dsimp only [result316]
  have child := child1
  unfold live317 coloured317 at child
  try dsimp only [live318, coloured318]
  rw [child]
  dsimp only [result317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree319_agree_conditional : tree319 = literal319 := by
  rw [tree319_def]
  rfl
theorem node319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree319 live319 coloured319 = result319 := by
  rw [tree319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree320_agree_conditional
    (child0 : tree318 = literal318)
    (child1 : tree319 = literal319) : tree320 = literal320 := by
  rw [tree320_def, child0, child1]
  rfl
theorem node320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree318 live318 coloured318 = result318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree319 live319 coloured319 = result319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree320 live320 coloured320 = result320 := by
  rw [tree320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live318 coloured318 at child
  try dsimp only [live320, coloured320]
  rw [child]
  dsimp only [result318]
  have child := child1
  unfold live319 coloured319 at child
  try dsimp only [live320, coloured320]
  rw [child]
  dsimp only [result319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree321_agree_conditional : tree321 = literal321 := by
  rw [tree321_def]
  rfl
theorem node321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree321 live321 coloured321 = result321 := by
  rw [tree321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree322_agree_conditional
    (child0 : tree320 = literal320)
    (child1 : tree321 = literal321) : tree322 = literal322 := by
  rw [tree322_def, child0, child1]
  rfl
theorem node322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree320 live320 coloured320 = result320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree321 live321 coloured321 = result321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree322 live322 coloured322 = result322 := by
  rw [tree322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live320 coloured320 at child
  try dsimp only [live322, coloured322]
  rw [child]
  dsimp only [result320]
  have child := child1
  unfold live321 coloured321 at child
  try dsimp only [live322, coloured322]
  rw [child]
  dsimp only [result321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree323_agree_conditional : tree323 = literal323 := by
  rw [tree323_def]
  rfl
theorem node323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree323 live323 coloured323 = result323 := by
  rw [tree323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree324_agree_conditional
    (child0 : tree322 = literal322)
    (child1 : tree323 = literal323) : tree324 = literal324 := by
  rw [tree324_def, child0, child1]
  rfl
theorem node324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree322 live322 coloured322 = result322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree323 live323 coloured323 = result323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree324 live324 coloured324 = result324 := by
  rw [tree324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live322 coloured322 at child
  try dsimp only [live324, coloured324]
  rw [child]
  dsimp only [result322]
  have child := child1
  unfold live323 coloured323 at child
  try dsimp only [live324, coloured324]
  rw [child]
  dsimp only [result323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree325_agree_conditional : tree325 = literal325 := by
  rw [tree325_def]
  rfl
theorem node325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree325 live325 coloured325 = result325 := by
  rw [tree325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree326_agree_conditional
    (child0 : tree324 = literal324)
    (child1 : tree325 = literal325) : tree326 = literal326 := by
  rw [tree326_def, child0, child1]
  rfl
theorem node326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree324 live324 coloured324 = result324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree325 live325 coloured325 = result325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree326 live326 coloured326 = result326 := by
  rw [tree326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live324 coloured324 at child
  try dsimp only [live326, coloured326]
  rw [child]
  dsimp only [result324]
  have child := child1
  unfold live325 coloured325 at child
  try dsimp only [live326, coloured326]
  rw [child]
  dsimp only [result325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree327_agree_conditional : tree327 = literal327 := by
  rw [tree327_def]
  rfl
theorem node327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree327 live327 coloured327 = result327 := by
  rw [tree327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree328_agree_conditional
    (child0 : tree326 = literal326)
    (child1 : tree327 = literal327) : tree328 = literal328 := by
  rw [tree328_def, child0, child1]
  rfl
theorem node328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree326 live326 coloured326 = result326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree327 live327 coloured327 = result327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree328 live328 coloured328 = result328 := by
  rw [tree328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live326 coloured326 at child
  try dsimp only [live328, coloured328]
  rw [child]
  dsimp only [result326]
  have child := child1
  unfold live327 coloured327 at child
  try dsimp only [live328, coloured328]
  rw [child]
  dsimp only [result327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree329_agree_conditional : tree329 = literal329 := by
  rw [tree329_def]
  rfl
theorem node329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree329 live329 coloured329 = result329 := by
  rw [tree329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree330_agree_conditional
    (child0 : tree328 = literal328)
    (child1 : tree329 = literal329) : tree330 = literal330 := by
  rw [tree330_def, child0, child1]
  rfl
theorem node330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree328 live328 coloured328 = result328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree329 live329 coloured329 = result329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree330 live330 coloured330 = result330 := by
  rw [tree330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live328 coloured328 at child
  try dsimp only [live330, coloured330]
  rw [child]
  dsimp only [result328]
  have child := child1
  unfold live329 coloured329 at child
  try dsimp only [live330, coloured330]
  rw [child]
  dsimp only [result329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree331_agree_conditional : tree331 = literal331 := by
  rw [tree331_def]
  rfl
theorem node331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree331 live331 coloured331 = result331 := by
  rw [tree331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree332_agree_conditional : tree332 = literal332 := by
  rw [tree332_def]
  rfl
theorem node332_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree332 live332 coloured332 = result332 := by
  rw [tree332_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree333_agree_conditional
    (child0 : tree331 = literal331)
    (child1 : tree332 = literal332) : tree333 = literal333 := by
  rw [tree333_def, child0, child1]
  rfl
theorem node333_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree331 live331 coloured331 = result331)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree332 live332 coloured332 = result332) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree333 live333 coloured333 = result333 := by
  rw [tree333_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live331 coloured331 at child
  try dsimp only [live333, coloured333]
  rw [child]
  dsimp only [result331]
  have child := child1
  unfold live332 coloured332 at child
  try dsimp only [live333, coloured333]
  rw [child]
  dsimp only [result332]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree334_agree_conditional : tree334 = literal334 := by
  rw [tree334_def]
  rfl
theorem node334_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree334 live334 coloured334 = result334 := by
  rw [tree334_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree335_agree_conditional : tree335 = literal335 := by
  rw [tree335_def]
  rfl
theorem node335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree335 live335 coloured335 = result335 := by
  rw [tree335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree336_agree_conditional
    (child0 : tree334 = literal334)
    (child1 : tree335 = literal335) : tree336 = literal336 := by
  rw [tree336_def, child0, child1]
  rfl
theorem node336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree334 live334 coloured334 = result334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree335 live335 coloured335 = result335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree336 live336 coloured336 = result336 := by
  rw [tree336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live334 coloured334 at child
  try dsimp only [live336, coloured336]
  rw [child]
  dsimp only [result334]
  have child := child1
  unfold live335 coloured335 at child
  try dsimp only [live336, coloured336]
  rw [child]
  dsimp only [result335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree337_agree_conditional : tree337 = literal337 := by
  rw [tree337_def]
  rfl
theorem node337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree337 live337 coloured337 = result337 := by
  rw [tree337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree338_agree_conditional
    (child0 : tree336 = literal336)
    (child1 : tree337 = literal337) : tree338 = literal338 := by
  rw [tree338_def, child0, child1]
  rfl
theorem node338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree336 live336 coloured336 = result336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree337 live337 coloured337 = result337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree338 live338 coloured338 = result338 := by
  rw [tree338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live336 coloured336 at child
  try dsimp only [live338, coloured338]
  rw [child]
  dsimp only [result336]
  have child := child1
  unfold live337 coloured337 at child
  try dsimp only [live338, coloured338]
  rw [child]
  dsimp only [result337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree339_agree_conditional
    (child0 : tree333 = literal333)
    (child1 : tree338 = literal338) : tree339 = literal339 := by
  rw [tree339_def, child0, child1]
  rfl
theorem node339_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree333 live333 coloured333 = result333)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree338 live338 coloured338 = result338) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree339 live339 coloured339 = result339 := by
  rw [tree339_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live333 coloured333 at child
  try dsimp only [live339, coloured339]
  rw [child]
  dsimp only [result333]
  have child := child1
  unfold live338 coloured338 at child
  try dsimp only [live339, coloured339]
  rw [child]
  dsimp only [result338]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree340_agree_conditional
    (child0 : tree330 = literal330)
    (child1 : tree339 = literal339) : tree340 = literal340 := by
  rw [tree340_def, child0, child1]
  rfl
theorem node340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree330 live330 coloured330 = result330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree339 live339 coloured339 = result339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree340 live340 coloured340 = result340 := by
  rw [tree340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live330 coloured330 at child
  try dsimp only [live340, coloured340]
  rw [child]
  dsimp only [result330]
  have child := child1
  unfold live339 coloured339 at child
  try dsimp only [live340, coloured340]
  rw [child]
  dsimp only [result339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree341_agree_conditional : tree341 = literal341 := by
  rw [tree341_def]
  rfl
theorem node341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree341 live341 coloured341 = result341 := by
  rw [tree341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree342_agree_conditional
    (child0 : tree340 = literal340)
    (child1 : tree341 = literal341) : tree342 = literal342 := by
  rw [tree342_def, child0, child1]
  rfl
theorem node342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree340 live340 coloured340 = result340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree341 live341 coloured341 = result341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree342 live342 coloured342 = result342 := by
  rw [tree342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live340 coloured340 at child
  try dsimp only [live342, coloured342]
  rw [child]
  dsimp only [result340]
  have child := child1
  unfold live341 coloured341 at child
  try dsimp only [live342, coloured342]
  rw [child]
  dsimp only [result341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree343_agree_conditional : tree343 = literal343 := by
  rw [tree343_def]
  rfl
theorem node343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree343 live343 coloured343 = result343 := by
  rw [tree343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree344_agree_conditional
    (child0 : tree342 = literal342)
    (child1 : tree343 = literal343) : tree344 = literal344 := by
  rw [tree344_def, child0, child1]
  rfl
theorem node344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree342 live342 coloured342 = result342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree343 live343 coloured343 = result343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree344 live344 coloured344 = result344 := by
  rw [tree344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live342 coloured342 at child
  try dsimp only [live344, coloured344]
  rw [child]
  dsimp only [result342]
  have child := child1
  unfold live343 coloured343 at child
  try dsimp only [live344, coloured344]
  rw [child]
  dsimp only [result343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree345_agree_conditional : tree345 = literal345 := by
  rw [tree345_def]
  rfl
theorem node345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree345 live345 coloured345 = result345 := by
  rw [tree345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree346_agree_conditional
    (child0 : tree344 = literal344)
    (child1 : tree345 = literal345) : tree346 = literal346 := by
  rw [tree346_def, child0, child1]
  rfl
theorem node346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree344 live344 coloured344 = result344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree345 live345 coloured345 = result345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree346 live346 coloured346 = result346 := by
  rw [tree346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live344 coloured344 at child
  try dsimp only [live346, coloured346]
  rw [child]
  dsimp only [result344]
  have child := child1
  unfold live345 coloured345 at child
  try dsimp only [live346, coloured346]
  rw [child]
  dsimp only [result345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree347_agree_conditional : tree347 = literal347 := by
  rw [tree347_def]
  rfl
theorem node347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree347 live347 coloured347 = result347 := by
  rw [tree347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree348_agree_conditional
    (child0 : tree346 = literal346)
    (child1 : tree347 = literal347) : tree348 = literal348 := by
  rw [tree348_def, child0, child1]
  rfl
theorem node348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree346 live346 coloured346 = result346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree347 live347 coloured347 = result347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree348 live348 coloured348 = result348 := by
  rw [tree348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live346 coloured346 at child
  try dsimp only [live348, coloured348]
  rw [child]
  dsimp only [result346]
  have child := child1
  unfold live347 coloured347 at child
  try dsimp only [live348, coloured348]
  rw [child]
  dsimp only [result347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree349_agree_conditional : tree349 = literal349 := by
  rw [tree349_def]
  rfl
theorem node349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree349 live349 coloured349 = result349 := by
  rw [tree349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree350_agree_conditional
    (child0 : tree348 = literal348)
    (child1 : tree349 = literal349) : tree350 = literal350 := by
  rw [tree350_def, child0, child1]
  rfl
theorem node350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree348 live348 coloured348 = result348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree349 live349 coloured349 = result349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree350 live350 coloured350 = result350 := by
  rw [tree350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live348 coloured348 at child
  try dsimp only [live350, coloured350]
  rw [child]
  dsimp only [result348]
  have child := child1
  unfold live349 coloured349 at child
  try dsimp only [live350, coloured350]
  rw [child]
  dsimp only [result349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree351_agree_conditional : tree351 = literal351 := by
  rw [tree351_def]
  rfl
theorem node351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree351 live351 coloured351 = result351 := by
  rw [tree351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree352_agree_conditional
    (child0 : tree350 = literal350)
    (child1 : tree351 = literal351) : tree352 = literal352 := by
  rw [tree352_def, child0, child1]
  rfl
theorem node352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree350 live350 coloured350 = result350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree351 live351 coloured351 = result351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree352 live352 coloured352 = result352 := by
  rw [tree352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live350 coloured350 at child
  try dsimp only [live352, coloured352]
  rw [child]
  dsimp only [result350]
  have child := child1
  unfold live351 coloured351 at child
  try dsimp only [live352, coloured352]
  rw [child]
  dsimp only [result351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree353_agree_conditional : tree353 = literal353 := by
  rw [tree353_def]
  rfl
theorem node353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree353 live353 coloured353 = result353 := by
  rw [tree353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree354_agree_conditional
    (child0 : tree352 = literal352)
    (child1 : tree353 = literal353) : tree354 = literal354 := by
  rw [tree354_def, child0, child1]
  rfl
theorem node354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree352 live352 coloured352 = result352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree353 live353 coloured353 = result353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree354 live354 coloured354 = result354 := by
  rw [tree354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live352 coloured352 at child
  try dsimp only [live354, coloured354]
  rw [child]
  dsimp only [result352]
  have child := child1
  unfold live353 coloured353 at child
  try dsimp only [live354, coloured354]
  rw [child]
  dsimp only [result353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree355_agree_conditional : tree355 = literal355 := by
  rw [tree355_def]
  rfl
theorem node355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree355 live355 coloured355 = result355 := by
  rw [tree355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree356_agree_conditional
    (child0 : tree354 = literal354)
    (child1 : tree355 = literal355) : tree356 = literal356 := by
  rw [tree356_def, child0, child1]
  rfl
theorem node356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree354 live354 coloured354 = result354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree355 live355 coloured355 = result355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree356 live356 coloured356 = result356 := by
  rw [tree356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live354 coloured354 at child
  try dsimp only [live356, coloured356]
  rw [child]
  dsimp only [result354]
  have child := child1
  unfold live355 coloured355 at child
  try dsimp only [live356, coloured356]
  rw [child]
  dsimp only [result355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree357_agree_conditional : tree357 = literal357 := by
  rw [tree357_def]
  rfl
theorem node357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree357 live357 coloured357 = result357 := by
  rw [tree357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree358_agree_conditional
    (child0 : tree356 = literal356)
    (child1 : tree357 = literal357) : tree358 = literal358 := by
  rw [tree358_def, child0, child1]
  rfl
theorem node358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree356 live356 coloured356 = result356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree357 live357 coloured357 = result357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree358 live358 coloured358 = result358 := by
  rw [tree358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live356 coloured356 at child
  try dsimp only [live358, coloured358]
  rw [child]
  dsimp only [result356]
  have child := child1
  unfold live357 coloured357 at child
  try dsimp only [live358, coloured358]
  rw [child]
  dsimp only [result357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree359_agree_conditional : tree359 = literal359 := by
  rw [tree359_def]
  rfl
theorem node359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree359 live359 coloured359 = result359 := by
  rw [tree359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree360_agree_conditional
    (child0 : tree358 = literal358)
    (child1 : tree359 = literal359) : tree360 = literal360 := by
  rw [tree360_def, child0, child1]
  rfl
theorem node360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree358 live358 coloured358 = result358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree359 live359 coloured359 = result359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree360 live360 coloured360 = result360 := by
  rw [tree360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live358 coloured358 at child
  try dsimp only [live360, coloured360]
  rw [child]
  dsimp only [result358]
  have child := child1
  unfold live359 coloured359 at child
  try dsimp only [live360, coloured360]
  rw [child]
  dsimp only [result359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree361_agree_conditional : tree361 = literal361 := by
  rw [tree361_def]
  rfl
theorem node361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree361 live361 coloured361 = result361 := by
  rw [tree361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree362_agree_conditional
    (child0 : tree360 = literal360)
    (child1 : tree361 = literal361) : tree362 = literal362 := by
  rw [tree362_def, child0, child1]
  rfl
theorem node362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree360 live360 coloured360 = result360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree361 live361 coloured361 = result361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree362 live362 coloured362 = result362 := by
  rw [tree362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live360 coloured360 at child
  try dsimp only [live362, coloured362]
  rw [child]
  dsimp only [result360]
  have child := child1
  unfold live361 coloured361 at child
  try dsimp only [live362, coloured362]
  rw [child]
  dsimp only [result361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree363_agree_conditional : tree363 = literal363 := by
  rw [tree363_def]
  rfl
theorem node363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree363 live363 coloured363 = result363 := by
  rw [tree363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree364_agree_conditional
    (child0 : tree362 = literal362)
    (child1 : tree363 = literal363) : tree364 = literal364 := by
  rw [tree364_def, child0, child1]
  rfl
theorem node364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree362 live362 coloured362 = result362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree363 live363 coloured363 = result363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree364 live364 coloured364 = result364 := by
  rw [tree364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live362 coloured362 at child
  try dsimp only [live364, coloured364]
  rw [child]
  dsimp only [result362]
  have child := child1
  unfold live363 coloured363 at child
  try dsimp only [live364, coloured364]
  rw [child]
  dsimp only [result363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree365_agree_conditional : tree365 = literal365 := by
  rw [tree365_def]
  rfl
theorem node365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree365 live365 coloured365 = result365 := by
  rw [tree365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree366_agree_conditional
    (child0 : tree364 = literal364)
    (child1 : tree365 = literal365) : tree366 = literal366 := by
  rw [tree366_def, child0, child1]
  rfl
theorem node366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree364 live364 coloured364 = result364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree365 live365 coloured365 = result365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree366 live366 coloured366 = result366 := by
  rw [tree366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live364 coloured364 at child
  try dsimp only [live366, coloured366]
  rw [child]
  dsimp only [result364]
  have child := child1
  unfold live365 coloured365 at child
  try dsimp only [live366, coloured366]
  rw [child]
  dsimp only [result365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree367_agree_conditional : tree367 = literal367 := by
  rw [tree367_def]
  rfl
theorem node367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree367 live367 coloured367 = result367 := by
  rw [tree367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree368_agree_conditional
    (child0 : tree366 = literal366)
    (child1 : tree367 = literal367) : tree368 = literal368 := by
  rw [tree368_def, child0, child1]
  rfl
theorem node368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree366 live366 coloured366 = result366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree367 live367 coloured367 = result367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree368 live368 coloured368 = result368 := by
  rw [tree368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live366 coloured366 at child
  try dsimp only [live368, coloured368]
  rw [child]
  dsimp only [result366]
  have child := child1
  unfold live367 coloured367 at child
  try dsimp only [live368, coloured368]
  rw [child]
  dsimp only [result367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree369_agree_conditional : tree369 = literal369 := by
  rw [tree369_def]
  rfl
theorem node369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree369 live369 coloured369 = result369 := by
  rw [tree369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree370_agree_conditional
    (child0 : tree368 = literal368)
    (child1 : tree369 = literal369) : tree370 = literal370 := by
  rw [tree370_def, child0, child1]
  rfl
theorem node370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree368 live368 coloured368 = result368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree369 live369 coloured369 = result369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree370 live370 coloured370 = result370 := by
  rw [tree370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live368 coloured368 at child
  try dsimp only [live370, coloured370]
  rw [child]
  dsimp only [result368]
  have child := child1
  unfold live369 coloured369 at child
  try dsimp only [live370, coloured370]
  rw [child]
  dsimp only [result369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree371_agree_conditional : tree371 = literal371 := by
  rw [tree371_def]
  rfl
theorem node371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree371 live371 coloured371 = result371 := by
  rw [tree371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree372_agree_conditional
    (child0 : tree370 = literal370)
    (child1 : tree371 = literal371) : tree372 = literal372 := by
  rw [tree372_def, child0, child1]
  rfl
theorem node372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree370 live370 coloured370 = result370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree371 live371 coloured371 = result371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree372 live372 coloured372 = result372 := by
  rw [tree372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live370 coloured370 at child
  try dsimp only [live372, coloured372]
  rw [child]
  dsimp only [result370]
  have child := child1
  unfold live371 coloured371 at child
  try dsimp only [live372, coloured372]
  rw [child]
  dsimp only [result371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree373_agree_conditional : tree373 = literal373 := by
  rw [tree373_def]
  rfl
theorem node373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree373 live373 coloured373 = result373 := by
  rw [tree373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree374_agree_conditional
    (child0 : tree372 = literal372)
    (child1 : tree373 = literal373) : tree374 = literal374 := by
  rw [tree374_def, child0, child1]
  rfl
theorem node374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree372 live372 coloured372 = result372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree373 live373 coloured373 = result373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree374 live374 coloured374 = result374 := by
  rw [tree374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live372 coloured372 at child
  try dsimp only [live374, coloured374]
  rw [child]
  dsimp only [result372]
  have child := child1
  unfold live373 coloured373 at child
  try dsimp only [live374, coloured374]
  rw [child]
  dsimp only [result373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree375_agree_conditional : tree375 = literal375 := by
  rw [tree375_def]
  rfl
theorem node375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree375 live375 coloured375 = result375 := by
  rw [tree375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree376_agree_conditional
    (child0 : tree374 = literal374)
    (child1 : tree375 = literal375) : tree376 = literal376 := by
  rw [tree376_def, child0, child1]
  rfl
theorem node376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree374 live374 coloured374 = result374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree375 live375 coloured375 = result375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree376 live376 coloured376 = result376 := by
  rw [tree376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live374 coloured374 at child
  try dsimp only [live376, coloured376]
  rw [child]
  dsimp only [result374]
  have child := child1
  unfold live375 coloured375 at child
  try dsimp only [live376, coloured376]
  rw [child]
  dsimp only [result375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree377_agree_conditional : tree377 = literal377 := by
  rw [tree377_def]
  rfl
theorem node377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree377 live377 coloured377 = result377 := by
  rw [tree377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree378_agree_conditional
    (child0 : tree376 = literal376)
    (child1 : tree377 = literal377) : tree378 = literal378 := by
  rw [tree378_def, child0, child1]
  rfl
theorem node378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree376 live376 coloured376 = result376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree377 live377 coloured377 = result377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree378 live378 coloured378 = result378 := by
  rw [tree378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live376 coloured376 at child
  try dsimp only [live378, coloured378]
  rw [child]
  dsimp only [result376]
  have child := child1
  unfold live377 coloured377 at child
  try dsimp only [live378, coloured378]
  rw [child]
  dsimp only [result377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree379_agree_conditional : tree379 = literal379 := by
  rw [tree379_def]
  rfl
theorem node379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree379 live379 coloured379 = result379 := by
  rw [tree379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree380_agree_conditional
    (child0 : tree378 = literal378)
    (child1 : tree379 = literal379) : tree380 = literal380 := by
  rw [tree380_def, child0, child1]
  rfl
theorem node380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree378 live378 coloured378 = result378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree379 live379 coloured379 = result379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree380 live380 coloured380 = result380 := by
  rw [tree380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live378 coloured378 at child
  try dsimp only [live380, coloured380]
  rw [child]
  dsimp only [result378]
  have child := child1
  unfold live379 coloured379 at child
  try dsimp only [live380, coloured380]
  rw [child]
  dsimp only [result379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree381_agree_conditional : tree381 = literal381 := by
  rw [tree381_def]
  rfl
theorem node381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree381 live381 coloured381 = result381 := by
  rw [tree381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree382_agree_conditional : tree382 = literal382 := by
  rw [tree382_def]
  rfl
theorem node382_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree382 live382 coloured382 = result382 := by
  rw [tree382_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree383_agree_conditional
    (child0 : tree381 = literal381)
    (child1 : tree382 = literal382) : tree383 = literal383 := by
  rw [tree383_def, child0, child1]
  rfl
theorem node383_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree381 live381 coloured381 = result381)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree382 live382 coloured382 = result382) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree383 live383 coloured383 = result383 := by
  rw [tree383_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live381 coloured381 at child
  try dsimp only [live383, coloured383]
  rw [child]
  dsimp only [result381]
  have child := child1
  unfold live382 coloured382 at child
  try dsimp only [live383, coloured383]
  rw [child]
  dsimp only [result382]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages233
