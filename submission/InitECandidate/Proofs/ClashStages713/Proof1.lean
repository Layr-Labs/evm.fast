import InitECandidate.Proofs.ClashStages713.Proof0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree96_agree : tree96 = literal96 := by
  rw [tree96_def, tree94_agree, tree95_agree]
  rfl
theorem node96_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree96 live96 coloured96 = result96 := by
  rw [tree96_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node94_eq
  unfold live94 coloured94 at child
  try dsimp only [live96, coloured96]
  rw [child]
  dsimp only [result94]
  have child := node95_eq
  unfold live95 coloured95 at child
  try dsimp only [live96, coloured96]
  rw [child]
  dsimp only [result95]
  try dsimp only [colour, result96]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree97_agree : tree97 = literal97 := by
  rw [tree97_def]
  rfl
theorem node97_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree97 live97 coloured97 = result97 := by
  rw [tree97_def]
  try dsimp only [colour, result97]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree98_agree : tree98 = literal98 := by
  rw [tree98_def, tree96_agree, tree97_agree]
  rfl
theorem node98_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree98 live98 coloured98 = result98 := by
  rw [tree98_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node96_eq
  unfold live96 coloured96 at child
  try dsimp only [live98, coloured98]
  rw [child]
  dsimp only [result96]
  have child := node97_eq
  unfold live97 coloured97 at child
  try dsimp only [live98, coloured98]
  rw [child]
  dsimp only [result97]
  try dsimp only [colour, result98]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree99_agree : tree99 = literal99 := by
  rw [tree99_def]
  rfl
theorem node99_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree99 live99 coloured99 = result99 := by
  rw [tree99_def]
  try dsimp only [colour, result99]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree100_agree : tree100 = literal100 := by
  rw [tree100_def, tree98_agree, tree99_agree]
  rfl
theorem node100_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree100 live100 coloured100 = result100 := by
  rw [tree100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node98_eq
  unfold live98 coloured98 at child
  try dsimp only [live100, coloured100]
  rw [child]
  dsimp only [result98]
  have child := node99_eq
  unfold live99 coloured99 at child
  try dsimp only [live100, coloured100]
  rw [child]
  dsimp only [result99]
  try dsimp only [colour, result100]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree101_agree : tree101 = literal101 := by
  rw [tree101_def]
  rfl
theorem node101_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree101 live101 coloured101 = result101 := by
  rw [tree101_def]
  try dsimp only [colour, result101]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree102_agree : tree102 = literal102 := by
  rw [tree102_def, tree100_agree, tree101_agree]
  rfl
theorem node102_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree102 live102 coloured102 = result102 := by
  rw [tree102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node100_eq
  unfold live100 coloured100 at child
  try dsimp only [live102, coloured102]
  rw [child]
  dsimp only [result100]
  have child := node101_eq
  unfold live101 coloured101 at child
  try dsimp only [live102, coloured102]
  rw [child]
  dsimp only [result101]
  try dsimp only [colour, result102]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree103_agree : tree103 = literal103 := by
  rw [tree103_def]
  rfl
theorem node103_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree103 live103 coloured103 = result103 := by
  rw [tree103_def]
  try dsimp only [colour, result103]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree104_agree : tree104 = literal104 := by
  rw [tree104_def, tree102_agree, tree103_agree]
  rfl
theorem node104_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree104 live104 coloured104 = result104 := by
  rw [tree104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node102_eq
  unfold live102 coloured102 at child
  try dsimp only [live104, coloured104]
  rw [child]
  dsimp only [result102]
  have child := node103_eq
  unfold live103 coloured103 at child
  try dsimp only [live104, coloured104]
  rw [child]
  dsimp only [result103]
  try dsimp only [colour, result104]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree105_agree : tree105 = literal105 := by
  rw [tree105_def]
  rfl
theorem node105_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree105 live105 coloured105 = result105 := by
  rw [tree105_def]
  try dsimp only [colour, result105]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree106_agree : tree106 = literal106 := by
  rw [tree106_def, tree104_agree, tree105_agree]
  rfl
theorem node106_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree106 live106 coloured106 = result106 := by
  rw [tree106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node104_eq
  unfold live104 coloured104 at child
  try dsimp only [live106, coloured106]
  rw [child]
  dsimp only [result104]
  have child := node105_eq
  unfold live105 coloured105 at child
  try dsimp only [live106, coloured106]
  rw [child]
  dsimp only [result105]
  try dsimp only [colour, result106]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree107_agree : tree107 = literal107 := by
  rw [tree107_def]
  rfl
theorem node107_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree107 live107 coloured107 = result107 := by
  rw [tree107_def]
  try dsimp only [colour, result107]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree108_agree : tree108 = literal108 := by
  rw [tree108_def, tree106_agree, tree107_agree]
  rfl
theorem node108_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree108 live108 coloured108 = result108 := by
  rw [tree108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node106_eq
  unfold live106 coloured106 at child
  try dsimp only [live108, coloured108]
  rw [child]
  dsimp only [result106]
  have child := node107_eq
  unfold live107 coloured107 at child
  try dsimp only [live108, coloured108]
  rw [child]
  dsimp only [result107]
  try dsimp only [colour, result108]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree109_agree : tree109 = literal109 := by
  rw [tree109_def]
  rfl
theorem node109_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree109 live109 coloured109 = result109 := by
  rw [tree109_def]
  try dsimp only [colour, result109]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree110_agree : tree110 = literal110 := by
  rw [tree110_def, tree108_agree, tree109_agree]
  rfl
theorem node110_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree110 live110 coloured110 = result110 := by
  rw [tree110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node108_eq
  unfold live108 coloured108 at child
  try dsimp only [live110, coloured110]
  rw [child]
  dsimp only [result108]
  have child := node109_eq
  unfold live109 coloured109 at child
  try dsimp only [live110, coloured110]
  rw [child]
  dsimp only [result109]
  try dsimp only [colour, result110]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree111_agree : tree111 = literal111 := by
  rw [tree111_def]
  rfl
theorem node111_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree111 live111 coloured111 = result111 := by
  rw [tree111_def]
  try dsimp only [colour, result111]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree112_agree : tree112 = literal112 := by
  rw [tree112_def, tree110_agree, tree111_agree]
  rfl
theorem node112_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree112 live112 coloured112 = result112 := by
  rw [tree112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node110_eq
  unfold live110 coloured110 at child
  try dsimp only [live112, coloured112]
  rw [child]
  dsimp only [result110]
  have child := node111_eq
  unfold live111 coloured111 at child
  try dsimp only [live112, coloured112]
  rw [child]
  dsimp only [result111]
  try dsimp only [colour, result112]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree113_agree : tree113 = literal113 := by
  rw [tree113_def]
  rfl
theorem node113_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree113 live113 coloured113 = result113 := by
  rw [tree113_def]
  try dsimp only [colour, result113]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree114_agree : tree114 = literal114 := by
  rw [tree114_def, tree112_agree, tree113_agree]
  rfl
theorem node114_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree114 live114 coloured114 = result114 := by
  rw [tree114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node112_eq
  unfold live112 coloured112 at child
  try dsimp only [live114, coloured114]
  rw [child]
  dsimp only [result112]
  have child := node113_eq
  unfold live113 coloured113 at child
  try dsimp only [live114, coloured114]
  rw [child]
  dsimp only [result113]
  try dsimp only [colour, result114]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree115_agree : tree115 = literal115 := by
  rw [tree115_def]
  rfl
theorem node115_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree115 live115 coloured115 = result115 := by
  rw [tree115_def]
  try dsimp only [colour, result115]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree116_agree : tree116 = literal116 := by
  rw [tree116_def, tree114_agree, tree115_agree]
  rfl
theorem node116_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree116 live116 coloured116 = result116 := by
  rw [tree116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node114_eq
  unfold live114 coloured114 at child
  try dsimp only [live116, coloured116]
  rw [child]
  dsimp only [result114]
  have child := node115_eq
  unfold live115 coloured115 at child
  try dsimp only [live116, coloured116]
  rw [child]
  dsimp only [result115]
  try dsimp only [colour, result116]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree117_agree : tree117 = literal117 := by
  rw [tree117_def]
  rfl
theorem node117_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree117 live117 coloured117 = result117 := by
  rw [tree117_def]
  try dsimp only [colour, result117]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree118_agree : tree118 = literal118 := by
  rw [tree118_def, tree116_agree, tree117_agree]
  rfl
theorem node118_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree118 live118 coloured118 = result118 := by
  rw [tree118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node116_eq
  unfold live116 coloured116 at child
  try dsimp only [live118, coloured118]
  rw [child]
  dsimp only [result116]
  have child := node117_eq
  unfold live117 coloured117 at child
  try dsimp only [live118, coloured118]
  rw [child]
  dsimp only [result117]
  try dsimp only [colour, result118]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree119_agree : tree119 = literal119 := by
  rw [tree119_def]
  rfl
theorem node119_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree119 live119 coloured119 = result119 := by
  rw [tree119_def]
  try dsimp only [colour, result119]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree120_agree : tree120 = literal120 := by
  rw [tree120_def, tree118_agree, tree119_agree]
  rfl
theorem node120_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree120 live120 coloured120 = result120 := by
  rw [tree120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node118_eq
  unfold live118 coloured118 at child
  try dsimp only [live120, coloured120]
  rw [child]
  dsimp only [result118]
  have child := node119_eq
  unfold live119 coloured119 at child
  try dsimp only [live120, coloured120]
  rw [child]
  dsimp only [result119]
  try dsimp only [colour, result120]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree121_agree : tree121 = literal121 := by
  rw [tree121_def]
  rfl
theorem node121_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree121 live121 coloured121 = result121 := by
  rw [tree121_def]
  try dsimp only [colour, result121]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree122_agree : tree122 = literal122 := by
  rw [tree122_def, tree120_agree, tree121_agree]
  rfl
theorem node122_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree122 live122 coloured122 = result122 := by
  rw [tree122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node120_eq
  unfold live120 coloured120 at child
  try dsimp only [live122, coloured122]
  rw [child]
  dsimp only [result120]
  have child := node121_eq
  unfold live121 coloured121 at child
  try dsimp only [live122, coloured122]
  rw [child]
  dsimp only [result121]
  try dsimp only [colour, result122]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree123_agree : tree123 = literal123 := by
  rw [tree123_def]
  rfl
theorem node123_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree123 live123 coloured123 = result123 := by
  rw [tree123_def]
  try dsimp only [colour, result123]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree124_agree : tree124 = literal124 := by
  rw [tree124_def, tree122_agree, tree123_agree]
  rfl
theorem node124_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree124 live124 coloured124 = result124 := by
  rw [tree124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node122_eq
  unfold live122 coloured122 at child
  try dsimp only [live124, coloured124]
  rw [child]
  dsimp only [result122]
  have child := node123_eq
  unfold live123 coloured123 at child
  try dsimp only [live124, coloured124]
  rw [child]
  dsimp only [result123]
  try dsimp only [colour, result124]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree125_agree : tree125 = literal125 := by
  rw [tree125_def]
  rfl
theorem node125_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree125 live125 coloured125 = result125 := by
  rw [tree125_def]
  try dsimp only [colour, result125]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree126_agree : tree126 = literal126 := by
  rw [tree126_def, tree124_agree, tree125_agree]
  rfl
theorem node126_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree126 live126 coloured126 = result126 := by
  rw [tree126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node124_eq
  unfold live124 coloured124 at child
  try dsimp only [live126, coloured126]
  rw [child]
  dsimp only [result124]
  have child := node125_eq
  unfold live125 coloured125 at child
  try dsimp only [live126, coloured126]
  rw [child]
  dsimp only [result125]
  try dsimp only [colour, result126]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree127_agree : tree127 = literal127 := by
  rw [tree127_def]
  rfl
theorem node127_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree127 live127 coloured127 = result127 := by
  rw [tree127_def]
  try dsimp only [colour, result127]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree128_agree : tree128 = literal128 := by
  rw [tree128_def, tree126_agree, tree127_agree]
  rfl
theorem node128_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree128 live128 coloured128 = result128 := by
  rw [tree128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node126_eq
  unfold live126 coloured126 at child
  try dsimp only [live128, coloured128]
  rw [child]
  dsimp only [result126]
  have child := node127_eq
  unfold live127 coloured127 at child
  try dsimp only [live128, coloured128]
  rw [child]
  dsimp only [result127]
  try dsimp only [colour, result128]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree129_agree : tree129 = literal129 := by
  rw [tree129_def]
  rfl
theorem node129_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree129 live129 coloured129 = result129 := by
  rw [tree129_def]
  try dsimp only [colour, result129]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree130_agree : tree130 = literal130 := by
  rw [tree130_def, tree128_agree, tree129_agree]
  rfl
theorem node130_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree130 live130 coloured130 = result130 := by
  rw [tree130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node128_eq
  unfold live128 coloured128 at child
  try dsimp only [live130, coloured130]
  rw [child]
  dsimp only [result128]
  have child := node129_eq
  unfold live129 coloured129 at child
  try dsimp only [live130, coloured130]
  rw [child]
  dsimp only [result129]
  try dsimp only [colour, result130]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree131_agree : tree131 = literal131 := by
  rw [tree131_def]
  rfl
theorem node131_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree131 live131 coloured131 = result131 := by
  rw [tree131_def]
  try dsimp only [colour, result131]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree132_agree : tree132 = literal132 := by
  rw [tree132_def, tree130_agree, tree131_agree]
  rfl
theorem node132_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree132 live132 coloured132 = result132 := by
  rw [tree132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node130_eq
  unfold live130 coloured130 at child
  try dsimp only [live132, coloured132]
  rw [child]
  dsimp only [result130]
  have child := node131_eq
  unfold live131 coloured131 at child
  try dsimp only [live132, coloured132]
  rw [child]
  dsimp only [result131]
  try dsimp only [colour, result132]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree133_agree : tree133 = literal133 := by
  rw [tree133_def]
  rfl
theorem node133_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree133 live133 coloured133 = result133 := by
  rw [tree133_def]
  try dsimp only [colour, result133]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree134_agree : tree134 = literal134 := by
  rw [tree134_def, tree132_agree, tree133_agree]
  rfl
theorem node134_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree134 live134 coloured134 = result134 := by
  rw [tree134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node132_eq
  unfold live132 coloured132 at child
  try dsimp only [live134, coloured134]
  rw [child]
  dsimp only [result132]
  have child := node133_eq
  unfold live133 coloured133 at child
  try dsimp only [live134, coloured134]
  rw [child]
  dsimp only [result133]
  try dsimp only [colour, result134]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree135_agree : tree135 = literal135 := by
  rw [tree135_def]
  rfl
theorem node135_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree135 live135 coloured135 = result135 := by
  rw [tree135_def]
  try dsimp only [colour, result135]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree136_agree : tree136 = literal136 := by
  rw [tree136_def, tree134_agree, tree135_agree]
  rfl
theorem node136_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree136 live136 coloured136 = result136 := by
  rw [tree136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node134_eq
  unfold live134 coloured134 at child
  try dsimp only [live136, coloured136]
  rw [child]
  dsimp only [result134]
  have child := node135_eq
  unfold live135 coloured135 at child
  try dsimp only [live136, coloured136]
  rw [child]
  dsimp only [result135]
  try dsimp only [colour, result136]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree137_agree : tree137 = literal137 := by
  rw [tree137_def]
  rfl
theorem node137_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree137 live137 coloured137 = result137 := by
  rw [tree137_def]
  try dsimp only [colour, result137]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree138_agree : tree138 = literal138 := by
  rw [tree138_def, tree136_agree, tree137_agree]
  rfl
theorem node138_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree138 live138 coloured138 = result138 := by
  rw [tree138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node136_eq
  unfold live136 coloured136 at child
  try dsimp only [live138, coloured138]
  rw [child]
  dsimp only [result136]
  have child := node137_eq
  unfold live137 coloured137 at child
  try dsimp only [live138, coloured138]
  rw [child]
  dsimp only [result137]
  try dsimp only [colour, result138]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree139_agree : tree139 = literal139 := by
  rw [tree139_def]
  rfl
theorem node139_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree139 live139 coloured139 = result139 := by
  rw [tree139_def]
  try dsimp only [colour, result139]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree140_agree : tree140 = literal140 := by
  rw [tree140_def, tree138_agree, tree139_agree]
  rfl
theorem node140_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree140 live140 coloured140 = result140 := by
  rw [tree140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node138_eq
  unfold live138 coloured138 at child
  try dsimp only [live140, coloured140]
  rw [child]
  dsimp only [result138]
  have child := node139_eq
  unfold live139 coloured139 at child
  try dsimp only [live140, coloured140]
  rw [child]
  dsimp only [result139]
  try dsimp only [colour, result140]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree141_agree : tree141 = literal141 := by
  rw [tree141_def]
  rfl
theorem node141_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree141 live141 coloured141 = result141 := by
  rw [tree141_def]
  try dsimp only [colour, result141]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree142_agree : tree142 = literal142 := by
  rw [tree142_def, tree140_agree, tree141_agree]
  rfl
theorem node142_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree142 live142 coloured142 = result142 := by
  rw [tree142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node140_eq
  unfold live140 coloured140 at child
  try dsimp only [live142, coloured142]
  rw [child]
  dsimp only [result140]
  have child := node141_eq
  unfold live141 coloured141 at child
  try dsimp only [live142, coloured142]
  rw [child]
  dsimp only [result141]
  try dsimp only [colour, result142]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree143_agree : tree143 = literal143 := by
  rw [tree143_def]
  rfl
theorem node143_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree143 live143 coloured143 = result143 := by
  rw [tree143_def]
  try dsimp only [colour, result143]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree144_agree : tree144 = literal144 := by
  rw [tree144_def, tree142_agree, tree143_agree]
  rfl
theorem node144_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree144 live144 coloured144 = result144 := by
  rw [tree144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node142_eq
  unfold live142 coloured142 at child
  try dsimp only [live144, coloured144]
  rw [child]
  dsimp only [result142]
  have child := node143_eq
  unfold live143 coloured143 at child
  try dsimp only [live144, coloured144]
  rw [child]
  dsimp only [result143]
  try dsimp only [colour, result144]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree145_agree : tree145 = literal145 := by
  rw [tree145_def]
  rfl
theorem node145_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree145 live145 coloured145 = result145 := by
  rw [tree145_def]
  try dsimp only [colour, result145]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree146_agree : tree146 = literal146 := by
  rw [tree146_def, tree144_agree, tree145_agree]
  rfl
theorem node146_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree146 live146 coloured146 = result146 := by
  rw [tree146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node144_eq
  unfold live144 coloured144 at child
  try dsimp only [live146, coloured146]
  rw [child]
  dsimp only [result144]
  have child := node145_eq
  unfold live145 coloured145 at child
  try dsimp only [live146, coloured146]
  rw [child]
  dsimp only [result145]
  try dsimp only [colour, result146]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree147_agree : tree147 = literal147 := by
  rw [tree147_def]
  rfl
theorem node147_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree147 live147 coloured147 = result147 := by
  rw [tree147_def]
  try dsimp only [colour, result147]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree148_agree : tree148 = literal148 := by
  rw [tree148_def, tree146_agree, tree147_agree]
  rfl
theorem node148_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree148 live148 coloured148 = result148 := by
  rw [tree148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node146_eq
  unfold live146 coloured146 at child
  try dsimp only [live148, coloured148]
  rw [child]
  dsimp only [result146]
  have child := node147_eq
  unfold live147 coloured147 at child
  try dsimp only [live148, coloured148]
  rw [child]
  dsimp only [result147]
  try dsimp only [colour, result148]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree149_agree : tree149 = literal149 := by
  rw [tree149_def]
  rfl
theorem node149_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree149 live149 coloured149 = result149 := by
  rw [tree149_def]
  try dsimp only [colour, result149]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree150_agree : tree150 = literal150 := by
  rw [tree150_def, tree148_agree, tree149_agree]
  rfl
theorem node150_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree150 live150 coloured150 = result150 := by
  rw [tree150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node148_eq
  unfold live148 coloured148 at child
  try dsimp only [live150, coloured150]
  rw [child]
  dsimp only [result148]
  have child := node149_eq
  unfold live149 coloured149 at child
  try dsimp only [live150, coloured150]
  rw [child]
  dsimp only [result149]
  try dsimp only [colour, result150]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree151_agree : tree151 = literal151 := by
  rw [tree151_def]
  rfl
theorem node151_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree151 live151 coloured151 = result151 := by
  rw [tree151_def]
  try dsimp only [colour, result151]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree152_agree : tree152 = literal152 := by
  rw [tree152_def, tree150_agree, tree151_agree]
  rfl
theorem node152_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree152 live152 coloured152 = result152 := by
  rw [tree152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node150_eq
  unfold live150 coloured150 at child
  try dsimp only [live152, coloured152]
  rw [child]
  dsimp only [result150]
  have child := node151_eq
  unfold live151 coloured151 at child
  try dsimp only [live152, coloured152]
  rw [child]
  dsimp only [result151]
  try dsimp only [colour, result152]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree153_agree : tree153 = literal153 := by
  rw [tree153_def]
  rfl
theorem node153_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree153 live153 coloured153 = result153 := by
  rw [tree153_def]
  try dsimp only [colour, result153]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree154_agree : tree154 = literal154 := by
  rw [tree154_def, tree152_agree, tree153_agree]
  rfl
theorem node154_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree154 live154 coloured154 = result154 := by
  rw [tree154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node152_eq
  unfold live152 coloured152 at child
  try dsimp only [live154, coloured154]
  rw [child]
  dsimp only [result152]
  have child := node153_eq
  unfold live153 coloured153 at child
  try dsimp only [live154, coloured154]
  rw [child]
  dsimp only [result153]
  try dsimp only [colour, result154]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree155_agree : tree155 = literal155 := by
  rw [tree155_def]
  rfl
theorem node155_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree155 live155 coloured155 = result155 := by
  rw [tree155_def]
  try dsimp only [colour, result155]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree156_agree : tree156 = literal156 := by
  rw [tree156_def, tree154_agree, tree155_agree]
  rfl
theorem node156_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree156 live156 coloured156 = result156 := by
  rw [tree156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node154_eq
  unfold live154 coloured154 at child
  try dsimp only [live156, coloured156]
  rw [child]
  dsimp only [result154]
  have child := node155_eq
  unfold live155 coloured155 at child
  try dsimp only [live156, coloured156]
  rw [child]
  dsimp only [result155]
  try dsimp only [colour, result156]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree157_agree : tree157 = literal157 := by
  rw [tree157_def]
  rfl
theorem node157_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree157 live157 coloured157 = result157 := by
  rw [tree157_def]
  try dsimp only [colour, result157]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree158_agree : tree158 = literal158 := by
  rw [tree158_def, tree156_agree, tree157_agree]
  rfl
theorem node158_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree158 live158 coloured158 = result158 := by
  rw [tree158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node156_eq
  unfold live156 coloured156 at child
  try dsimp only [live158, coloured158]
  rw [child]
  dsimp only [result156]
  have child := node157_eq
  unfold live157 coloured157 at child
  try dsimp only [live158, coloured158]
  rw [child]
  dsimp only [result157]
  try dsimp only [colour, result158]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree159_agree : tree159 = literal159 := by
  rw [tree159_def]
  rfl
theorem node159_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree159 live159 coloured159 = result159 := by
  rw [tree159_def]
  try dsimp only [colour, result159]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree160_agree : tree160 = literal160 := by
  rw [tree160_def, tree158_agree, tree159_agree]
  rfl
theorem node160_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree160 live160 coloured160 = result160 := by
  rw [tree160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node158_eq
  unfold live158 coloured158 at child
  try dsimp only [live160, coloured160]
  rw [child]
  dsimp only [result158]
  have child := node159_eq
  unfold live159 coloured159 at child
  try dsimp only [live160, coloured160]
  rw [child]
  dsimp only [result159]
  try dsimp only [colour, result160]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree161_agree : tree161 = literal161 := by
  rw [tree161_def]
  rfl
theorem node161_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree161 live161 coloured161 = result161 := by
  rw [tree161_def]
  try dsimp only [colour, result161]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree162_agree : tree162 = literal162 := by
  rw [tree162_def, tree160_agree, tree161_agree]
  rfl
theorem node162_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree162 live162 coloured162 = result162 := by
  rw [tree162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node160_eq
  unfold live160 coloured160 at child
  try dsimp only [live162, coloured162]
  rw [child]
  dsimp only [result160]
  have child := node161_eq
  unfold live161 coloured161 at child
  try dsimp only [live162, coloured162]
  rw [child]
  dsimp only [result161]
  try dsimp only [colour, result162]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree163_agree : tree163 = literal163 := by
  rw [tree163_def]
  rfl
theorem node163_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree163 live163 coloured163 = result163 := by
  rw [tree163_def]
  try dsimp only [colour, result163]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree164_agree : tree164 = literal164 := by
  rw [tree164_def, tree162_agree, tree163_agree]
  rfl
theorem node164_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree164 live164 coloured164 = result164 := by
  rw [tree164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node162_eq
  unfold live162 coloured162 at child
  try dsimp only [live164, coloured164]
  rw [child]
  dsimp only [result162]
  have child := node163_eq
  unfold live163 coloured163 at child
  try dsimp only [live164, coloured164]
  rw [child]
  dsimp only [result163]
  try dsimp only [colour, result164]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree165_agree : tree165 = literal165 := by
  rw [tree165_def]
  rfl
theorem node165_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree165 live165 coloured165 = result165 := by
  rw [tree165_def]
  try dsimp only [colour, result165]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree166_agree : tree166 = literal166 := by
  rw [tree166_def, tree164_agree, tree165_agree]
  rfl
theorem node166_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree166 live166 coloured166 = result166 := by
  rw [tree166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node164_eq
  unfold live164 coloured164 at child
  try dsimp only [live166, coloured166]
  rw [child]
  dsimp only [result164]
  have child := node165_eq
  unfold live165 coloured165 at child
  try dsimp only [live166, coloured166]
  rw [child]
  dsimp only [result165]
  try dsimp only [colour, result166]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree167_agree : tree167 = literal167 := by
  rw [tree167_def]
  rfl
theorem node167_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree167 live167 coloured167 = result167 := by
  rw [tree167_def]
  try dsimp only [colour, result167]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree168_agree : tree168 = literal168 := by
  rw [tree168_def, tree166_agree, tree167_agree]
  rfl
theorem node168_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree168 live168 coloured168 = result168 := by
  rw [tree168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node166_eq
  unfold live166 coloured166 at child
  try dsimp only [live168, coloured168]
  rw [child]
  dsimp only [result166]
  have child := node167_eq
  unfold live167 coloured167 at child
  try dsimp only [live168, coloured168]
  rw [child]
  dsimp only [result167]
  try dsimp only [colour, result168]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree169_agree : tree169 = literal169 := by
  rw [tree169_def]
  rfl
theorem node169_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree169 live169 coloured169 = result169 := by
  rw [tree169_def]
  try dsimp only [colour, result169]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree170_agree : tree170 = literal170 := by
  rw [tree170_def, tree168_agree, tree169_agree]
  rfl
theorem node170_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree170 live170 coloured170 = result170 := by
  rw [tree170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node168_eq
  unfold live168 coloured168 at child
  try dsimp only [live170, coloured170]
  rw [child]
  dsimp only [result168]
  have child := node169_eq
  unfold live169 coloured169 at child
  try dsimp only [live170, coloured170]
  rw [child]
  dsimp only [result169]
  try dsimp only [colour, result170]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree171_agree : tree171 = literal171 := by
  rw [tree171_def]
  rfl
theorem node171_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree171 live171 coloured171 = result171 := by
  rw [tree171_def]
  try dsimp only [colour, result171]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree172_agree : tree172 = literal172 := by
  rw [tree172_def, tree170_agree, tree171_agree]
  rfl
theorem node172_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree172 live172 coloured172 = result172 := by
  rw [tree172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node170_eq
  unfold live170 coloured170 at child
  try dsimp only [live172, coloured172]
  rw [child]
  dsimp only [result170]
  have child := node171_eq
  unfold live171 coloured171 at child
  try dsimp only [live172, coloured172]
  rw [child]
  dsimp only [result171]
  try dsimp only [colour, result172]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree173_agree : tree173 = literal173 := by
  rw [tree173_def]
  rfl
theorem node173_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree173 live173 coloured173 = result173 := by
  rw [tree173_def]
  try dsimp only [colour, result173]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree174_agree : tree174 = literal174 := by
  rw [tree174_def, tree172_agree, tree173_agree]
  rfl
theorem node174_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree174 live174 coloured174 = result174 := by
  rw [tree174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node172_eq
  unfold live172 coloured172 at child
  try dsimp only [live174, coloured174]
  rw [child]
  dsimp only [result172]
  have child := node173_eq
  unfold live173 coloured173 at child
  try dsimp only [live174, coloured174]
  rw [child]
  dsimp only [result173]
  try dsimp only [colour, result174]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree175_agree : tree175 = literal175 := by
  rw [tree175_def]
  rfl
theorem node175_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree175 live175 coloured175 = result175 := by
  rw [tree175_def]
  try dsimp only [colour, result175]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree176_agree : tree176 = literal176 := by
  rw [tree176_def, tree174_agree, tree175_agree]
  rfl
theorem node176_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree176 live176 coloured176 = result176 := by
  rw [tree176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node174_eq
  unfold live174 coloured174 at child
  try dsimp only [live176, coloured176]
  rw [child]
  dsimp only [result174]
  have child := node175_eq
  unfold live175 coloured175 at child
  try dsimp only [live176, coloured176]
  rw [child]
  dsimp only [result175]
  try dsimp only [colour, result176]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree177_agree : tree177 = literal177 := by
  rw [tree177_def]
  rfl
theorem node177_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree177 live177 coloured177 = result177 := by
  rw [tree177_def]
  try dsimp only [colour, result177]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree178_agree : tree178 = literal178 := by
  rw [tree178_def, tree176_agree, tree177_agree]
  rfl
theorem node178_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree178 live178 coloured178 = result178 := by
  rw [tree178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node176_eq
  unfold live176 coloured176 at child
  try dsimp only [live178, coloured178]
  rw [child]
  dsimp only [result176]
  have child := node177_eq
  unfold live177 coloured177 at child
  try dsimp only [live178, coloured178]
  rw [child]
  dsimp only [result177]
  try dsimp only [colour, result178]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree179_agree : tree179 = literal179 := by
  rw [tree179_def]
  rfl
theorem node179_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree179 live179 coloured179 = result179 := by
  rw [tree179_def]
  try dsimp only [colour, result179]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree180_agree : tree180 = literal180 := by
  rw [tree180_def, tree178_agree, tree179_agree]
  rfl
theorem node180_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree180 live180 coloured180 = result180 := by
  rw [tree180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node178_eq
  unfold live178 coloured178 at child
  try dsimp only [live180, coloured180]
  rw [child]
  dsimp only [result178]
  have child := node179_eq
  unfold live179 coloured179 at child
  try dsimp only [live180, coloured180]
  rw [child]
  dsimp only [result179]
  try dsimp only [colour, result180]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree181_agree : tree181 = literal181 := by
  rw [tree181_def]
  rfl
theorem node181_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree181 live181 coloured181 = result181 := by
  rw [tree181_def]
  try dsimp only [colour, result181]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree182_agree : tree182 = literal182 := by
  rw [tree182_def, tree180_agree, tree181_agree]
  rfl
theorem node182_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree182 live182 coloured182 = result182 := by
  rw [tree182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node180_eq
  unfold live180 coloured180 at child
  try dsimp only [live182, coloured182]
  rw [child]
  dsimp only [result180]
  have child := node181_eq
  unfold live181 coloured181 at child
  try dsimp only [live182, coloured182]
  rw [child]
  dsimp only [result181]
  try dsimp only [colour, result182]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree183_agree : tree183 = literal183 := by
  rw [tree183_def]
  rfl
theorem node183_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree183 live183 coloured183 = result183 := by
  rw [tree183_def]
  try dsimp only [colour, result183]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree184_agree : tree184 = literal184 := by
  rw [tree184_def, tree182_agree, tree183_agree]
  rfl
theorem node184_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree184 live184 coloured184 = result184 := by
  rw [tree184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node182_eq
  unfold live182 coloured182 at child
  try dsimp only [live184, coloured184]
  rw [child]
  dsimp only [result182]
  have child := node183_eq
  unfold live183 coloured183 at child
  try dsimp only [live184, coloured184]
  rw [child]
  dsimp only [result183]
  try dsimp only [colour, result184]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree185_agree : tree185 = literal185 := by
  rw [tree185_def]
  rfl
theorem node185_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree185 live185 coloured185 = result185 := by
  rw [tree185_def]
  try dsimp only [colour, result185]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree186_agree : tree186 = literal186 := by
  rw [tree186_def, tree184_agree, tree185_agree]
  rfl
theorem node186_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree186 live186 coloured186 = result186 := by
  rw [tree186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node184_eq
  unfold live184 coloured184 at child
  try dsimp only [live186, coloured186]
  rw [child]
  dsimp only [result184]
  have child := node185_eq
  unfold live185 coloured185 at child
  try dsimp only [live186, coloured186]
  rw [child]
  dsimp only [result185]
  try dsimp only [colour, result186]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree187_agree : tree187 = literal187 := by
  rw [tree187_def]
  rfl
theorem node187_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree187 live187 coloured187 = result187 := by
  rw [tree187_def]
  try dsimp only [colour, result187]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree188_agree : tree188 = literal188 := by
  rw [tree188_def, tree186_agree, tree187_agree]
  rfl
theorem node188_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree188 live188 coloured188 = result188 := by
  rw [tree188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node186_eq
  unfold live186 coloured186 at child
  try dsimp only [live188, coloured188]
  rw [child]
  dsimp only [result186]
  have child := node187_eq
  unfold live187 coloured187 at child
  try dsimp only [live188, coloured188]
  rw [child]
  dsimp only [result187]
  try dsimp only [colour, result188]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree189_agree : tree189 = literal189 := by
  rw [tree189_def]
  rfl
theorem node189_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree189 live189 coloured189 = result189 := by
  rw [tree189_def]
  try dsimp only [colour, result189]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree190_agree : tree190 = literal190 := by
  rw [tree190_def, tree188_agree, tree189_agree]
  rfl
theorem node190_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree190 live190 coloured190 = result190 := by
  rw [tree190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node188_eq
  unfold live188 coloured188 at child
  try dsimp only [live190, coloured190]
  rw [child]
  dsimp only [result188]
  have child := node189_eq
  unfold live189 coloured189 at child
  try dsimp only [live190, coloured190]
  rw [child]
  dsimp only [result189]
  try dsimp only [colour, result190]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree191_agree : tree191 = literal191 := by
  rw [tree191_def]
  rfl
theorem node191_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree191 live191 coloured191 = result191 := by
  rw [tree191_def]
  try dsimp only [colour, result191]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
