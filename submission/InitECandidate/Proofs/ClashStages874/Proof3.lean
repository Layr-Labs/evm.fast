import InitECandidate.Proofs.ClashStages874.Proof2
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages874
theorem tree288_agree : tree288 = literal288 := by
  rw [tree288_def, tree270_agree, tree287_agree]
  rfl
theorem node288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree288 live288 coloured288 = result288 := by
  rw [tree288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node270_eq
  unfold live270 coloured270 at child
  try dsimp only [live288, coloured288]
  rw [child]
  dsimp only [result270]
  have child := node287_eq
  unfold live287 coloured287 at child
  try dsimp only [live288, coloured288]
  rw [child]
  dsimp only [result287]
  try dsimp only [colour, result288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree289_agree : tree289 = literal289 := by
  rw [tree289_def]
  rfl
theorem node289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree289 live289 coloured289 = result289 := by
  rw [tree289_def]
  try dsimp only [colour, result289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree290_agree : tree290 = literal290 := by
  rw [tree290_def, tree288_agree, tree289_agree]
  rfl
theorem node290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree290 live290 coloured290 = result290 := by
  rw [tree290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node288_eq
  unfold live288 coloured288 at child
  try dsimp only [live290, coloured290]
  rw [child]
  dsimp only [result288]
  have child := node289_eq
  unfold live289 coloured289 at child
  try dsimp only [live290, coloured290]
  rw [child]
  dsimp only [result289]
  try dsimp only [colour, result290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree291_agree : tree291 = literal291 := by
  rw [tree291_def]
  rfl
theorem node291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree291 live291 coloured291 = result291 := by
  rw [tree291_def]
  try dsimp only [colour, result291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree292_agree : tree292 = literal292 := by
  rw [tree292_def, tree290_agree, tree291_agree]
  rfl
theorem node292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree292 live292 coloured292 = result292 := by
  rw [tree292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node290_eq
  unfold live290 coloured290 at child
  try dsimp only [live292, coloured292]
  rw [child]
  dsimp only [result290]
  have child := node291_eq
  unfold live291 coloured291 at child
  try dsimp only [live292, coloured292]
  rw [child]
  dsimp only [result291]
  try dsimp only [colour, result292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree293_agree : tree293 = literal293 := by
  rw [tree293_def]
  rfl
theorem node293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree293 live293 coloured293 = result293 := by
  rw [tree293_def]
  try dsimp only [colour, result293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree294_agree : tree294 = literal294 := by
  rw [tree294_def, tree292_agree, tree293_agree]
  rfl
theorem node294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree294 live294 coloured294 = result294 := by
  rw [tree294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node292_eq
  unfold live292 coloured292 at child
  try dsimp only [live294, coloured294]
  rw [child]
  dsimp only [result292]
  have child := node293_eq
  unfold live293 coloured293 at child
  try dsimp only [live294, coloured294]
  rw [child]
  dsimp only [result293]
  try dsimp only [colour, result294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree295_agree : tree295 = literal295 := by
  rw [tree295_def]
  rfl
theorem node295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree295 live295 coloured295 = result295 := by
  rw [tree295_def]
  try dsimp only [colour, result295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree296_agree : tree296 = literal296 := by
  rw [tree296_def]
  rfl
theorem node296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree296 live296 coloured296 = result296 := by
  rw [tree296_def]
  try dsimp only [colour, result296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree297_agree : tree297 = literal297 := by
  rw [tree297_def, tree295_agree, tree296_agree]
  rfl
theorem node297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree297 live297 coloured297 = result297 := by
  rw [tree297_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node295_eq
  unfold live295 coloured295 at child
  try dsimp only [live297, coloured297]
  rw [child]
  dsimp only [result295]
  have child := node296_eq
  unfold live296 coloured296 at child
  try dsimp only [live297, coloured297]
  rw [child]
  dsimp only [result296]
  try dsimp only [colour, result297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree298_agree : tree298 = literal298 := by
  rw [tree298_def]
  rfl
theorem node298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree298 live298 coloured298 = result298 := by
  rw [tree298_def]
  try dsimp only [colour, result298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree299_agree : tree299 = literal299 := by
  rw [tree299_def, tree297_agree, tree298_agree]
  rfl
theorem node299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree299 live299 coloured299 = result299 := by
  rw [tree299_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node297_eq
  unfold live297 coloured297 at child
  try dsimp only [live299, coloured299]
  rw [child]
  dsimp only [result297]
  have child := node298_eq
  unfold live298 coloured298 at child
  try dsimp only [live299, coloured299]
  rw [child]
  dsimp only [result298]
  try dsimp only [colour, result299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree300_agree : tree300 = literal300 := by
  rw [tree300_def]
  rfl
theorem node300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree300 live300 coloured300 = result300 := by
  rw [tree300_def]
  try dsimp only [colour, result300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree301_agree : tree301 = literal301 := by
  rw [tree301_def, tree299_agree, tree300_agree]
  rfl
theorem node301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree301 live301 coloured301 = result301 := by
  rw [tree301_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node299_eq
  unfold live299 coloured299 at child
  try dsimp only [live301, coloured301]
  rw [child]
  dsimp only [result299]
  have child := node300_eq
  unfold live300 coloured300 at child
  try dsimp only [live301, coloured301]
  rw [child]
  dsimp only [result300]
  try dsimp only [colour, result301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree302_agree : tree302 = literal302 := by
  rw [tree302_def]
  rfl
theorem node302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree302 live302 coloured302 = result302 := by
  rw [tree302_def]
  try dsimp only [colour, result302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree303_agree : tree303 = literal303 := by
  rw [tree303_def, tree301_agree, tree302_agree]
  rfl
theorem node303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree303 live303 coloured303 = result303 := by
  rw [tree303_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node301_eq
  unfold live301 coloured301 at child
  try dsimp only [live303, coloured303]
  rw [child]
  dsimp only [result301]
  have child := node302_eq
  unfold live302 coloured302 at child
  try dsimp only [live303, coloured303]
  rw [child]
  dsimp only [result302]
  try dsimp only [colour, result303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree304_agree : tree304 = literal304 := by
  rw [tree304_def]
  rfl
theorem node304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree304 live304 coloured304 = result304 := by
  rw [tree304_def]
  try dsimp only [colour, result304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree305_agree : tree305 = literal305 := by
  rw [tree305_def, tree303_agree, tree304_agree]
  rfl
theorem node305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree305 live305 coloured305 = result305 := by
  rw [tree305_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node303_eq
  unfold live303 coloured303 at child
  try dsimp only [live305, coloured305]
  rw [child]
  dsimp only [result303]
  have child := node304_eq
  unfold live304 coloured304 at child
  try dsimp only [live305, coloured305]
  rw [child]
  dsimp only [result304]
  try dsimp only [colour, result305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree306_agree : tree306 = literal306 := by
  rw [tree306_def]
  rfl
theorem node306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree306 live306 coloured306 = result306 := by
  rw [tree306_def]
  try dsimp only [colour, result306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree307_agree : tree307 = literal307 := by
  rw [tree307_def, tree305_agree, tree306_agree]
  rfl
theorem node307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree307 live307 coloured307 = result307 := by
  rw [tree307_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node305_eq
  unfold live305 coloured305 at child
  try dsimp only [live307, coloured307]
  rw [child]
  dsimp only [result305]
  have child := node306_eq
  unfold live306 coloured306 at child
  try dsimp only [live307, coloured307]
  rw [child]
  dsimp only [result306]
  try dsimp only [colour, result307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree308_agree : tree308 = literal308 := by
  rw [tree308_def]
  rfl
theorem node308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree308 live308 coloured308 = result308 := by
  rw [tree308_def]
  try dsimp only [colour, result308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree309_agree : tree309 = literal309 := by
  rw [tree309_def, tree307_agree, tree308_agree]
  rfl
theorem node309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree309 live309 coloured309 = result309 := by
  rw [tree309_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node307_eq
  unfold live307 coloured307 at child
  try dsimp only [live309, coloured309]
  rw [child]
  dsimp only [result307]
  have child := node308_eq
  unfold live308 coloured308 at child
  try dsimp only [live309, coloured309]
  rw [child]
  dsimp only [result308]
  try dsimp only [colour, result309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree310_agree : tree310 = literal310 := by
  rw [tree310_def]
  rfl
theorem node310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree310 live310 coloured310 = result310 := by
  rw [tree310_def]
  try dsimp only [colour, result310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree311_agree : tree311 = literal311 := by
  rw [tree311_def, tree309_agree, tree310_agree]
  rfl
theorem node311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree311 live311 coloured311 = result311 := by
  rw [tree311_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node309_eq
  unfold live309 coloured309 at child
  try dsimp only [live311, coloured311]
  rw [child]
  dsimp only [result309]
  have child := node310_eq
  unfold live310 coloured310 at child
  try dsimp only [live311, coloured311]
  rw [child]
  dsimp only [result310]
  try dsimp only [colour, result311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree312_agree : tree312 = literal312 := by
  rw [tree312_def, tree294_agree, tree311_agree]
  rfl
theorem node312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree312 live312 coloured312 = result312 := by
  rw [tree312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node294_eq
  unfold live294 coloured294 at child
  try dsimp only [live312, coloured312]
  rw [child]
  dsimp only [result294]
  have child := node311_eq
  unfold live311 coloured311 at child
  try dsimp only [live312, coloured312]
  rw [child]
  dsimp only [result311]
  try dsimp only [colour, result312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree313_agree : tree313 = literal313 := by
  rw [tree313_def]
  rfl
theorem node313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree313 live313 coloured313 = result313 := by
  rw [tree313_def]
  try dsimp only [colour, result313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree314_agree : tree314 = literal314 := by
  rw [tree314_def, tree312_agree, tree313_agree]
  rfl
theorem node314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree314 live314 coloured314 = result314 := by
  rw [tree314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node312_eq
  unfold live312 coloured312 at child
  try dsimp only [live314, coloured314]
  rw [child]
  dsimp only [result312]
  have child := node313_eq
  unfold live313 coloured313 at child
  try dsimp only [live314, coloured314]
  rw [child]
  dsimp only [result313]
  try dsimp only [colour, result314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree315_agree : tree315 = literal315 := by
  rw [tree315_def]
  rfl
theorem node315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree315 live315 coloured315 = result315 := by
  rw [tree315_def]
  try dsimp only [colour, result315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree316_agree : tree316 = literal316 := by
  rw [tree316_def, tree314_agree, tree315_agree]
  rfl
theorem node316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree316 live316 coloured316 = result316 := by
  rw [tree316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node314_eq
  unfold live314 coloured314 at child
  try dsimp only [live316, coloured316]
  rw [child]
  dsimp only [result314]
  have child := node315_eq
  unfold live315 coloured315 at child
  try dsimp only [live316, coloured316]
  rw [child]
  dsimp only [result315]
  try dsimp only [colour, result316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree317_agree : tree317 = literal317 := by
  rw [tree317_def]
  rfl
theorem node317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree317 live317 coloured317 = result317 := by
  rw [tree317_def]
  try dsimp only [colour, result317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree318_agree : tree318 = literal318 := by
  rw [tree318_def, tree316_agree, tree317_agree]
  rfl
theorem node318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree318 live318 coloured318 = result318 := by
  rw [tree318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node316_eq
  unfold live316 coloured316 at child
  try dsimp only [live318, coloured318]
  rw [child]
  dsimp only [result316]
  have child := node317_eq
  unfold live317 coloured317 at child
  try dsimp only [live318, coloured318]
  rw [child]
  dsimp only [result317]
  try dsimp only [colour, result318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree319_agree : tree319 = literal319 := by
  rw [tree319_def]
  rfl
theorem node319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree319 live319 coloured319 = result319 := by
  rw [tree319_def]
  try dsimp only [colour, result319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree320_agree : tree320 = literal320 := by
  rw [tree320_def, tree318_agree, tree319_agree]
  rfl
theorem node320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree320 live320 coloured320 = result320 := by
  rw [tree320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node318_eq
  unfold live318 coloured318 at child
  try dsimp only [live320, coloured320]
  rw [child]
  dsimp only [result318]
  have child := node319_eq
  unfold live319 coloured319 at child
  try dsimp only [live320, coloured320]
  rw [child]
  dsimp only [result319]
  try dsimp only [colour, result320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree321_agree : tree321 = literal321 := by
  rw [tree321_def]
  rfl
theorem node321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree321 live321 coloured321 = result321 := by
  rw [tree321_def]
  try dsimp only [colour, result321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree322_agree : tree322 = literal322 := by
  rw [tree322_def, tree320_agree, tree321_agree]
  rfl
theorem node322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree322 live322 coloured322 = result322 := by
  rw [tree322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node320_eq
  unfold live320 coloured320 at child
  try dsimp only [live322, coloured322]
  rw [child]
  dsimp only [result320]
  have child := node321_eq
  unfold live321 coloured321 at child
  try dsimp only [live322, coloured322]
  rw [child]
  dsimp only [result321]
  try dsimp only [colour, result322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree323_agree : tree323 = literal323 := by
  rw [tree323_def]
  rfl
theorem node323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree323 live323 coloured323 = result323 := by
  rw [tree323_def]
  try dsimp only [colour, result323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree324_agree : tree324 = literal324 := by
  rw [tree324_def]
  rfl
theorem node324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree324 live324 coloured324 = result324 := by
  rw [tree324_def]
  try dsimp only [colour, result324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree325_agree : tree325 = literal325 := by
  rw [tree325_def, tree323_agree, tree324_agree]
  rfl
theorem node325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree325 live325 coloured325 = result325 := by
  rw [tree325_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node323_eq
  unfold live323 coloured323 at child
  try dsimp only [live325, coloured325]
  rw [child]
  dsimp only [result323]
  have child := node324_eq
  unfold live324 coloured324 at child
  try dsimp only [live325, coloured325]
  rw [child]
  dsimp only [result324]
  try dsimp only [colour, result325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree326_agree : tree326 = literal326 := by
  rw [tree326_def]
  rfl
theorem node326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree326 live326 coloured326 = result326 := by
  rw [tree326_def]
  try dsimp only [colour, result326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree327_agree : tree327 = literal327 := by
  rw [tree327_def]
  rfl
theorem node327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree327 live327 coloured327 = result327 := by
  rw [tree327_def]
  try dsimp only [colour, result327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree328_agree : tree328 = literal328 := by
  rw [tree328_def, tree326_agree, tree327_agree]
  rfl
theorem node328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree328 live328 coloured328 = result328 := by
  rw [tree328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node326_eq
  unfold live326 coloured326 at child
  try dsimp only [live328, coloured328]
  rw [child]
  dsimp only [result326]
  have child := node327_eq
  unfold live327 coloured327 at child
  try dsimp only [live328, coloured328]
  rw [child]
  dsimp only [result327]
  try dsimp only [colour, result328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree329_agree : tree329 = literal329 := by
  rw [tree329_def]
  rfl
theorem node329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree329 live329 coloured329 = result329 := by
  rw [tree329_def]
  try dsimp only [colour, result329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree330_agree : tree330 = literal330 := by
  rw [tree330_def, tree328_agree, tree329_agree]
  rfl
theorem node330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree330 live330 coloured330 = result330 := by
  rw [tree330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node328_eq
  unfold live328 coloured328 at child
  try dsimp only [live330, coloured330]
  rw [child]
  dsimp only [result328]
  have child := node329_eq
  unfold live329 coloured329 at child
  try dsimp only [live330, coloured330]
  rw [child]
  dsimp only [result329]
  try dsimp only [colour, result330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree331_agree : tree331 = literal331 := by
  rw [tree331_def, tree325_agree, tree330_agree]
  rfl
theorem node331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree331 live331 coloured331 = result331 := by
  rw [tree331_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node325_eq
  unfold live325 coloured325 at child
  try dsimp only [live331, coloured331]
  rw [child]
  dsimp only [result325]
  have child := node330_eq
  unfold live330 coloured330 at child
  try dsimp only [live331, coloured331]
  rw [child]
  dsimp only [result330]
  try dsimp only [colour, result331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree332_agree : tree332 = literal332 := by
  rw [tree332_def, tree322_agree, tree331_agree]
  rfl
theorem node332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree332 live332 coloured332 = result332 := by
  rw [tree332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node322_eq
  unfold live322 coloured322 at child
  try dsimp only [live332, coloured332]
  rw [child]
  dsimp only [result322]
  have child := node331_eq
  unfold live331 coloured331 at child
  try dsimp only [live332, coloured332]
  rw [child]
  dsimp only [result331]
  try dsimp only [colour, result332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree333_agree : tree333 = literal333 := by
  rw [tree333_def]
  rfl
theorem node333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree333 live333 coloured333 = result333 := by
  rw [tree333_def]
  try dsimp only [colour, result333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree334_agree : tree334 = literal334 := by
  rw [tree334_def, tree332_agree, tree333_agree]
  rfl
theorem node334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree334 live334 coloured334 = result334 := by
  rw [tree334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node332_eq
  unfold live332 coloured332 at child
  try dsimp only [live334, coloured334]
  rw [child]
  dsimp only [result332]
  have child := node333_eq
  unfold live333 coloured333 at child
  try dsimp only [live334, coloured334]
  rw [child]
  dsimp only [result333]
  try dsimp only [colour, result334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree335_agree : tree335 = literal335 := by
  rw [tree335_def]
  rfl
theorem node335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree335 live335 coloured335 = result335 := by
  rw [tree335_def]
  try dsimp only [colour, result335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree336_agree : tree336 = literal336 := by
  rw [tree336_def, tree334_agree, tree335_agree]
  rfl
theorem node336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree336 live336 coloured336 = result336 := by
  rw [tree336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node334_eq
  unfold live334 coloured334 at child
  try dsimp only [live336, coloured336]
  rw [child]
  dsimp only [result334]
  have child := node335_eq
  unfold live335 coloured335 at child
  try dsimp only [live336, coloured336]
  rw [child]
  dsimp only [result335]
  try dsimp only [colour, result336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree337_agree : tree337 = literal337 := by
  rw [tree337_def]
  rfl
theorem node337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree337 live337 coloured337 = result337 := by
  rw [tree337_def]
  try dsimp only [colour, result337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree338_agree : tree338 = literal338 := by
  rw [tree338_def, tree336_agree, tree337_agree]
  rfl
theorem node338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree338 live338 coloured338 = result338 := by
  rw [tree338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node336_eq
  unfold live336 coloured336 at child
  try dsimp only [live338, coloured338]
  rw [child]
  dsimp only [result336]
  have child := node337_eq
  unfold live337 coloured337 at child
  try dsimp only [live338, coloured338]
  rw [child]
  dsimp only [result337]
  try dsimp only [colour, result338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree339_agree : tree339 = literal339 := by
  rw [tree339_def]
  rfl
theorem node339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree339 live339 coloured339 = result339 := by
  rw [tree339_def]
  try dsimp only [colour, result339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree340_agree : tree340 = literal340 := by
  rw [tree340_def, tree338_agree, tree339_agree]
  rfl
theorem node340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree340 live340 coloured340 = result340 := by
  rw [tree340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node338_eq
  unfold live338 coloured338 at child
  try dsimp only [live340, coloured340]
  rw [child]
  dsimp only [result338]
  have child := node339_eq
  unfold live339 coloured339 at child
  try dsimp only [live340, coloured340]
  rw [child]
  dsimp only [result339]
  try dsimp only [colour, result340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree341_agree : tree341 = literal341 := by
  rw [tree341_def]
  rfl
theorem node341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree341 live341 coloured341 = result341 := by
  rw [tree341_def]
  try dsimp only [colour, result341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree342_agree : tree342 = literal342 := by
  rw [tree342_def, tree340_agree, tree341_agree]
  rfl
theorem node342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree342 live342 coloured342 = result342 := by
  rw [tree342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node340_eq
  unfold live340 coloured340 at child
  try dsimp only [live342, coloured342]
  rw [child]
  dsimp only [result340]
  have child := node341_eq
  unfold live341 coloured341 at child
  try dsimp only [live342, coloured342]
  rw [child]
  dsimp only [result341]
  try dsimp only [colour, result342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree343_agree : tree343 = literal343 := by
  rw [tree343_def]
  rfl
theorem node343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree343 live343 coloured343 = result343 := by
  rw [tree343_def]
  try dsimp only [colour, result343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree344_agree : tree344 = literal344 := by
  rw [tree344_def, tree342_agree, tree343_agree]
  rfl
theorem node344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree344 live344 coloured344 = result344 := by
  rw [tree344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node342_eq
  unfold live342 coloured342 at child
  try dsimp only [live344, coloured344]
  rw [child]
  dsimp only [result342]
  have child := node343_eq
  unfold live343 coloured343 at child
  try dsimp only [live344, coloured344]
  rw [child]
  dsimp only [result343]
  try dsimp only [colour, result344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree345_agree : tree345 = literal345 := by
  rw [tree345_def]
  rfl
theorem node345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree345 live345 coloured345 = result345 := by
  rw [tree345_def]
  try dsimp only [colour, result345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree346_agree : tree346 = literal346 := by
  rw [tree346_def, tree344_agree, tree345_agree]
  rfl
theorem node346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree346 live346 coloured346 = result346 := by
  rw [tree346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node344_eq
  unfold live344 coloured344 at child
  try dsimp only [live346, coloured346]
  rw [child]
  dsimp only [result344]
  have child := node345_eq
  unfold live345 coloured345 at child
  try dsimp only [live346, coloured346]
  rw [child]
  dsimp only [result345]
  try dsimp only [colour, result346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree347_agree : tree347 = literal347 := by
  rw [tree347_def]
  rfl
theorem node347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree347 live347 coloured347 = result347 := by
  rw [tree347_def]
  try dsimp only [colour, result347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree348_agree : tree348 = literal348 := by
  rw [tree348_def, tree346_agree, tree347_agree]
  rfl
theorem node348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree348 live348 coloured348 = result348 := by
  rw [tree348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node346_eq
  unfold live346 coloured346 at child
  try dsimp only [live348, coloured348]
  rw [child]
  dsimp only [result346]
  have child := node347_eq
  unfold live347 coloured347 at child
  try dsimp only [live348, coloured348]
  rw [child]
  dsimp only [result347]
  try dsimp only [colour, result348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree349_agree : tree349 = literal349 := by
  rw [tree349_def]
  rfl
theorem node349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree349 live349 coloured349 = result349 := by
  rw [tree349_def]
  try dsimp only [colour, result349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree350_agree : tree350 = literal350 := by
  rw [tree350_def, tree348_agree, tree349_agree]
  rfl
theorem node350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree350 live350 coloured350 = result350 := by
  rw [tree350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node348_eq
  unfold live348 coloured348 at child
  try dsimp only [live350, coloured350]
  rw [child]
  dsimp only [result348]
  have child := node349_eq
  unfold live349 coloured349 at child
  try dsimp only [live350, coloured350]
  rw [child]
  dsimp only [result349]
  try dsimp only [colour, result350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree351_agree : tree351 = literal351 := by
  rw [tree351_def]
  rfl
theorem node351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree351 live351 coloured351 = result351 := by
  rw [tree351_def]
  try dsimp only [colour, result351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree352_agree : tree352 = literal352 := by
  rw [tree352_def, tree350_agree, tree351_agree]
  rfl
theorem node352_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree352 live352 coloured352 = result352 := by
  rw [tree352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node350_eq
  unfold live350 coloured350 at child
  try dsimp only [live352, coloured352]
  rw [child]
  dsimp only [result350]
  have child := node351_eq
  unfold live351 coloured351 at child
  try dsimp only [live352, coloured352]
  rw [child]
  dsimp only [result351]
  try dsimp only [colour, result352]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree353_agree : tree353 = literal353 := by
  rw [tree353_def]
  rfl
theorem node353_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree353 live353 coloured353 = result353 := by
  rw [tree353_def]
  try dsimp only [colour, result353]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree354_agree : tree354 = literal354 := by
  rw [tree354_def]
  rfl
theorem node354_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree354 live354 coloured354 = result354 := by
  rw [tree354_def]
  try dsimp only [colour, result354]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree355_agree : tree355 = literal355 := by
  rw [tree355_def, tree353_agree, tree354_agree]
  rfl
theorem node355_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree355 live355 coloured355 = result355 := by
  rw [tree355_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node353_eq
  unfold live353 coloured353 at child
  try dsimp only [live355, coloured355]
  rw [child]
  dsimp only [result353]
  have child := node354_eq
  unfold live354 coloured354 at child
  try dsimp only [live355, coloured355]
  rw [child]
  dsimp only [result354]
  try dsimp only [colour, result355]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree356_agree : tree356 = literal356 := by
  rw [tree356_def]
  rfl
theorem node356_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree356 live356 coloured356 = result356 := by
  rw [tree356_def]
  try dsimp only [colour, result356]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree357_agree : tree357 = literal357 := by
  rw [tree357_def, tree355_agree, tree356_agree]
  rfl
theorem node357_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree357 live357 coloured357 = result357 := by
  rw [tree357_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node355_eq
  unfold live355 coloured355 at child
  try dsimp only [live357, coloured357]
  rw [child]
  dsimp only [result355]
  have child := node356_eq
  unfold live356 coloured356 at child
  try dsimp only [live357, coloured357]
  rw [child]
  dsimp only [result356]
  try dsimp only [colour, result357]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree358_agree : tree358 = literal358 := by
  rw [tree358_def]
  rfl
theorem node358_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree358 live358 coloured358 = result358 := by
  rw [tree358_def]
  try dsimp only [colour, result358]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree359_agree : tree359 = literal359 := by
  rw [tree359_def]
  rfl
theorem node359_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree359 live359 coloured359 = result359 := by
  rw [tree359_def]
  try dsimp only [colour, result359]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree360_agree : tree360 = literal360 := by
  rw [tree360_def, tree358_agree, tree359_agree]
  rfl
theorem node360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree360 live360 coloured360 = result360 := by
  rw [tree360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node358_eq
  unfold live358 coloured358 at child
  try dsimp only [live360, coloured360]
  rw [child]
  dsimp only [result358]
  have child := node359_eq
  unfold live359 coloured359 at child
  try dsimp only [live360, coloured360]
  rw [child]
  dsimp only [result359]
  try dsimp only [colour, result360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree361_agree : tree361 = literal361 := by
  rw [tree361_def]
  rfl
theorem node361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree361 live361 coloured361 = result361 := by
  rw [tree361_def]
  try dsimp only [colour, result361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree362_agree : tree362 = literal362 := by
  rw [tree362_def, tree360_agree, tree361_agree]
  rfl
theorem node362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree362 live362 coloured362 = result362 := by
  rw [tree362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node360_eq
  unfold live360 coloured360 at child
  try dsimp only [live362, coloured362]
  rw [child]
  dsimp only [result360]
  have child := node361_eq
  unfold live361 coloured361 at child
  try dsimp only [live362, coloured362]
  rw [child]
  dsimp only [result361]
  try dsimp only [colour, result362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree363_agree : tree363 = literal363 := by
  rw [tree363_def]
  rfl
theorem node363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree363 live363 coloured363 = result363 := by
  rw [tree363_def]
  try dsimp only [colour, result363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree364_agree : tree364 = literal364 := by
  rw [tree364_def, tree362_agree, tree363_agree]
  rfl
theorem node364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree364 live364 coloured364 = result364 := by
  rw [tree364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node362_eq
  unfold live362 coloured362 at child
  try dsimp only [live364, coloured364]
  rw [child]
  dsimp only [result362]
  have child := node363_eq
  unfold live363 coloured363 at child
  try dsimp only [live364, coloured364]
  rw [child]
  dsimp only [result363]
  try dsimp only [colour, result364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree365_agree : tree365 = literal365 := by
  rw [tree365_def]
  rfl
theorem node365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree365 live365 coloured365 = result365 := by
  rw [tree365_def]
  try dsimp only [colour, result365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree366_agree : tree366 = literal366 := by
  rw [tree366_def, tree364_agree, tree365_agree]
  rfl
theorem node366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree366 live366 coloured366 = result366 := by
  rw [tree366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node364_eq
  unfold live364 coloured364 at child
  try dsimp only [live366, coloured366]
  rw [child]
  dsimp only [result364]
  have child := node365_eq
  unfold live365 coloured365 at child
  try dsimp only [live366, coloured366]
  rw [child]
  dsimp only [result365]
  try dsimp only [colour, result366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree367_agree : tree367 = literal367 := by
  rw [tree367_def]
  rfl
theorem node367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree367 live367 coloured367 = result367 := by
  rw [tree367_def]
  try dsimp only [colour, result367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree368_agree : tree368 = literal368 := by
  rw [tree368_def, tree366_agree, tree367_agree]
  rfl
theorem node368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree368 live368 coloured368 = result368 := by
  rw [tree368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node366_eq
  unfold live366 coloured366 at child
  try dsimp only [live368, coloured368]
  rw [child]
  dsimp only [result366]
  have child := node367_eq
  unfold live367 coloured367 at child
  try dsimp only [live368, coloured368]
  rw [child]
  dsimp only [result367]
  try dsimp only [colour, result368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree369_agree : tree369 = literal369 := by
  rw [tree369_def]
  rfl
theorem node369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree369 live369 coloured369 = result369 := by
  rw [tree369_def]
  try dsimp only [colour, result369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree370_agree : tree370 = literal370 := by
  rw [tree370_def, tree368_agree, tree369_agree]
  rfl
theorem node370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree370 live370 coloured370 = result370 := by
  rw [tree370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node368_eq
  unfold live368 coloured368 at child
  try dsimp only [live370, coloured370]
  rw [child]
  dsimp only [result368]
  have child := node369_eq
  unfold live369 coloured369 at child
  try dsimp only [live370, coloured370]
  rw [child]
  dsimp only [result369]
  try dsimp only [colour, result370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree371_agree : tree371 = literal371 := by
  rw [tree371_def]
  rfl
theorem node371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree371 live371 coloured371 = result371 := by
  rw [tree371_def]
  try dsimp only [colour, result371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree372_agree : tree372 = literal372 := by
  rw [tree372_def, tree370_agree, tree371_agree]
  rfl
theorem node372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree372 live372 coloured372 = result372 := by
  rw [tree372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node370_eq
  unfold live370 coloured370 at child
  try dsimp only [live372, coloured372]
  rw [child]
  dsimp only [result370]
  have child := node371_eq
  unfold live371 coloured371 at child
  try dsimp only [live372, coloured372]
  rw [child]
  dsimp only [result371]
  try dsimp only [colour, result372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree373_agree : tree373 = literal373 := by
  rw [tree373_def]
  rfl
theorem node373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree373 live373 coloured373 = result373 := by
  rw [tree373_def]
  try dsimp only [colour, result373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree374_agree : tree374 = literal374 := by
  rw [tree374_def, tree372_agree, tree373_agree]
  rfl
theorem node374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree374 live374 coloured374 = result374 := by
  rw [tree374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node372_eq
  unfold live372 coloured372 at child
  try dsimp only [live374, coloured374]
  rw [child]
  dsimp only [result372]
  have child := node373_eq
  unfold live373 coloured373 at child
  try dsimp only [live374, coloured374]
  rw [child]
  dsimp only [result373]
  try dsimp only [colour, result374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree375_agree : tree375 = literal375 := by
  rw [tree375_def, tree357_agree, tree374_agree]
  rfl
theorem node375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree375 live375 coloured375 = result375 := by
  rw [tree375_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node357_eq
  unfold live357 coloured357 at child
  try dsimp only [live375, coloured375]
  rw [child]
  dsimp only [result357]
  have child := node374_eq
  unfold live374 coloured374 at child
  try dsimp only [live375, coloured375]
  rw [child]
  dsimp only [result374]
  try dsimp only [colour, result375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree376_agree : tree376 = literal376 := by
  rw [tree376_def]
  rfl
theorem node376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree376 live376 coloured376 = result376 := by
  rw [tree376_def]
  try dsimp only [colour, result376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree377_agree : tree377 = literal377 := by
  rw [tree377_def, tree375_agree, tree376_agree]
  rfl
theorem node377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree377 live377 coloured377 = result377 := by
  rw [tree377_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node375_eq
  unfold live375 coloured375 at child
  try dsimp only [live377, coloured377]
  rw [child]
  dsimp only [result375]
  have child := node376_eq
  unfold live376 coloured376 at child
  try dsimp only [live377, coloured377]
  rw [child]
  dsimp only [result376]
  try dsimp only [colour, result377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree378_agree : tree378 = literal378 := by
  rw [tree378_def]
  rfl
theorem node378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree378 live378 coloured378 = result378 := by
  rw [tree378_def]
  try dsimp only [colour, result378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree379_agree : tree379 = literal379 := by
  rw [tree379_def, tree377_agree, tree378_agree]
  rfl
theorem node379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree379 live379 coloured379 = result379 := by
  rw [tree379_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node377_eq
  unfold live377 coloured377 at child
  try dsimp only [live379, coloured379]
  rw [child]
  dsimp only [result377]
  have child := node378_eq
  unfold live378 coloured378 at child
  try dsimp only [live379, coloured379]
  rw [child]
  dsimp only [result378]
  try dsimp only [colour, result379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree380_agree : tree380 = literal380 := by
  rw [tree380_def]
  rfl
theorem node380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree380 live380 coloured380 = result380 := by
  rw [tree380_def]
  try dsimp only [colour, result380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree381_agree : tree381 = literal381 := by
  rw [tree381_def, tree379_agree, tree380_agree]
  rfl
theorem node381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree381 live381 coloured381 = result381 := by
  rw [tree381_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node379_eq
  unfold live379 coloured379 at child
  try dsimp only [live381, coloured381]
  rw [child]
  dsimp only [result379]
  have child := node380_eq
  unfold live380 coloured380 at child
  try dsimp only [live381, coloured381]
  rw [child]
  dsimp only [result380]
  try dsimp only [colour, result381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree382_agree : tree382 = literal382 := by
  rw [tree382_def]
  rfl
theorem node382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree382 live382 coloured382 = result382 := by
  rw [tree382_def]
  try dsimp only [colour, result382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree383_agree : tree383 = literal383 := by
  rw [tree383_def, tree381_agree, tree382_agree]
  rfl
theorem node383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree383 live383 coloured383 = result383 := by
  rw [tree383_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node381_eq
  unfold live381 coloured381 at child
  try dsimp only [live383, coloured383]
  rw [child]
  dsimp only [result381]
  have child := node382_eq
  unfold live382 coloured382 at child
  try dsimp only [live383, coloured383]
  rw [child]
  dsimp only [result382]
  try dsimp only [colour, result383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages874
