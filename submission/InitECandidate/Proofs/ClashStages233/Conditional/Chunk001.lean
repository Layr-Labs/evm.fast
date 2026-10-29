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
theorem tree96_agree_conditional : tree96 = literal96 := by
  rw [tree96_def]
  rfl
theorem node96_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree96 live96 coloured96 = result96 := by
  rw [tree96_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree97_agree_conditional
    (child0 : tree95 = literal95)
    (child1 : tree96 = literal96) : tree97 = literal97 := by
  rw [tree97_def, child0, child1]
  rfl
theorem node97_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree95 live95 coloured95 = result95)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree96 live96 coloured96 = result96) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree97 live97 coloured97 = result97 := by
  rw [tree97_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live95 coloured95 at child
  try dsimp only [live97, coloured97]
  rw [child]
  dsimp only [result95]
  have child := child1
  unfold live96 coloured96 at child
  try dsimp only [live97, coloured97]
  rw [child]
  dsimp only [result96]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree98_agree_conditional : tree98 = literal98 := by
  rw [tree98_def]
  rfl
theorem node98_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree98 live98 coloured98 = result98 := by
  rw [tree98_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree99_agree_conditional : tree99 = literal99 := by
  rw [tree99_def]
  rfl
theorem node99_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree99 live99 coloured99 = result99 := by
  rw [tree99_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree100_agree_conditional
    (child0 : tree98 = literal98)
    (child1 : tree99 = literal99) : tree100 = literal100 := by
  rw [tree100_def, child0, child1]
  rfl
theorem node100_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree98 live98 coloured98 = result98)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree99 live99 coloured99 = result99) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree100 live100 coloured100 = result100 := by
  rw [tree100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live98 coloured98 at child
  try dsimp only [live100, coloured100]
  rw [child]
  dsimp only [result98]
  have child := child1
  unfold live99 coloured99 at child
  try dsimp only [live100, coloured100]
  rw [child]
  dsimp only [result99]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree101_agree_conditional : tree101 = literal101 := by
  rw [tree101_def]
  rfl
theorem node101_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree101 live101 coloured101 = result101 := by
  rw [tree101_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree102_agree_conditional
    (child0 : tree100 = literal100)
    (child1 : tree101 = literal101) : tree102 = literal102 := by
  rw [tree102_def, child0, child1]
  rfl
theorem node102_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree100 live100 coloured100 = result100)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree101 live101 coloured101 = result101) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree102 live102 coloured102 = result102 := by
  rw [tree102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live100 coloured100 at child
  try dsimp only [live102, coloured102]
  rw [child]
  dsimp only [result100]
  have child := child1
  unfold live101 coloured101 at child
  try dsimp only [live102, coloured102]
  rw [child]
  dsimp only [result101]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree103_agree_conditional
    (child0 : tree97 = literal97)
    (child1 : tree102 = literal102) : tree103 = literal103 := by
  rw [tree103_def, child0, child1]
  rfl
theorem node103_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree97 live97 coloured97 = result97)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree102 live102 coloured102 = result102) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree103 live103 coloured103 = result103 := by
  rw [tree103_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live97 coloured97 at child
  try dsimp only [live103, coloured103]
  rw [child]
  dsimp only [result97]
  have child := child1
  unfold live102 coloured102 at child
  try dsimp only [live103, coloured103]
  rw [child]
  dsimp only [result102]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree104_agree_conditional
    (child0 : tree94 = literal94)
    (child1 : tree103 = literal103) : tree104 = literal104 := by
  rw [tree104_def, child0, child1]
  rfl
theorem node104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree94 live94 coloured94 = result94)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree103 live103 coloured103 = result103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree104 live104 coloured104 = result104 := by
  rw [tree104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live94 coloured94 at child
  try dsimp only [live104, coloured104]
  rw [child]
  dsimp only [result94]
  have child := child1
  unfold live103 coloured103 at child
  try dsimp only [live104, coloured104]
  rw [child]
  dsimp only [result103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree105_agree_conditional : tree105 = literal105 := by
  rw [tree105_def]
  rfl
theorem node105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree105 live105 coloured105 = result105 := by
  rw [tree105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree106_agree_conditional
    (child0 : tree104 = literal104)
    (child1 : tree105 = literal105) : tree106 = literal106 := by
  rw [tree106_def, child0, child1]
  rfl
theorem node106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree104 live104 coloured104 = result104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree105 live105 coloured105 = result105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree106 live106 coloured106 = result106 := by
  rw [tree106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live104 coloured104 at child
  try dsimp only [live106, coloured106]
  rw [child]
  dsimp only [result104]
  have child := child1
  unfold live105 coloured105 at child
  try dsimp only [live106, coloured106]
  rw [child]
  dsimp only [result105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree107_agree_conditional : tree107 = literal107 := by
  rw [tree107_def]
  rfl
theorem node107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree107 live107 coloured107 = result107 := by
  rw [tree107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree108_agree_conditional
    (child0 : tree106 = literal106)
    (child1 : tree107 = literal107) : tree108 = literal108 := by
  rw [tree108_def, child0, child1]
  rfl
theorem node108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree106 live106 coloured106 = result106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree107 live107 coloured107 = result107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree108 live108 coloured108 = result108 := by
  rw [tree108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live106 coloured106 at child
  try dsimp only [live108, coloured108]
  rw [child]
  dsimp only [result106]
  have child := child1
  unfold live107 coloured107 at child
  try dsimp only [live108, coloured108]
  rw [child]
  dsimp only [result107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree109_agree_conditional : tree109 = literal109 := by
  rw [tree109_def]
  rfl
theorem node109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree109 live109 coloured109 = result109 := by
  rw [tree109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree110_agree_conditional
    (child0 : tree108 = literal108)
    (child1 : tree109 = literal109) : tree110 = literal110 := by
  rw [tree110_def, child0, child1]
  rfl
theorem node110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree108 live108 coloured108 = result108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree109 live109 coloured109 = result109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree110 live110 coloured110 = result110 := by
  rw [tree110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live108 coloured108 at child
  try dsimp only [live110, coloured110]
  rw [child]
  dsimp only [result108]
  have child := child1
  unfold live109 coloured109 at child
  try dsimp only [live110, coloured110]
  rw [child]
  dsimp only [result109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree111_agree_conditional : tree111 = literal111 := by
  rw [tree111_def]
  rfl
theorem node111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree111 live111 coloured111 = result111 := by
  rw [tree111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree112_agree_conditional
    (child0 : tree110 = literal110)
    (child1 : tree111 = literal111) : tree112 = literal112 := by
  rw [tree112_def, child0, child1]
  rfl
theorem node112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree110 live110 coloured110 = result110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree111 live111 coloured111 = result111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree112 live112 coloured112 = result112 := by
  rw [tree112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live110 coloured110 at child
  try dsimp only [live112, coloured112]
  rw [child]
  dsimp only [result110]
  have child := child1
  unfold live111 coloured111 at child
  try dsimp only [live112, coloured112]
  rw [child]
  dsimp only [result111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree113_agree_conditional : tree113 = literal113 := by
  rw [tree113_def]
  rfl
theorem node113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree113 live113 coloured113 = result113 := by
  rw [tree113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree114_agree_conditional
    (child0 : tree112 = literal112)
    (child1 : tree113 = literal113) : tree114 = literal114 := by
  rw [tree114_def, child0, child1]
  rfl
theorem node114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree112 live112 coloured112 = result112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree113 live113 coloured113 = result113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree114 live114 coloured114 = result114 := by
  rw [tree114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live112 coloured112 at child
  try dsimp only [live114, coloured114]
  rw [child]
  dsimp only [result112]
  have child := child1
  unfold live113 coloured113 at child
  try dsimp only [live114, coloured114]
  rw [child]
  dsimp only [result113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree115_agree_conditional : tree115 = literal115 := by
  rw [tree115_def]
  rfl
theorem node115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree115 live115 coloured115 = result115 := by
  rw [tree115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree116_agree_conditional
    (child0 : tree114 = literal114)
    (child1 : tree115 = literal115) : tree116 = literal116 := by
  rw [tree116_def, child0, child1]
  rfl
theorem node116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree114 live114 coloured114 = result114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree115 live115 coloured115 = result115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree116 live116 coloured116 = result116 := by
  rw [tree116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live114 coloured114 at child
  try dsimp only [live116, coloured116]
  rw [child]
  dsimp only [result114]
  have child := child1
  unfold live115 coloured115 at child
  try dsimp only [live116, coloured116]
  rw [child]
  dsimp only [result115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree117_agree_conditional : tree117 = literal117 := by
  rw [tree117_def]
  rfl
theorem node117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree117 live117 coloured117 = result117 := by
  rw [tree117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree118_agree_conditional
    (child0 : tree116 = literal116)
    (child1 : tree117 = literal117) : tree118 = literal118 := by
  rw [tree118_def, child0, child1]
  rfl
theorem node118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree116 live116 coloured116 = result116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree117 live117 coloured117 = result117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree118 live118 coloured118 = result118 := by
  rw [tree118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live116 coloured116 at child
  try dsimp only [live118, coloured118]
  rw [child]
  dsimp only [result116]
  have child := child1
  unfold live117 coloured117 at child
  try dsimp only [live118, coloured118]
  rw [child]
  dsimp only [result117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree119_agree_conditional : tree119 = literal119 := by
  rw [tree119_def]
  rfl
theorem node119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree119 live119 coloured119 = result119 := by
  rw [tree119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree120_agree_conditional
    (child0 : tree118 = literal118)
    (child1 : tree119 = literal119) : tree120 = literal120 := by
  rw [tree120_def, child0, child1]
  rfl
theorem node120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree118 live118 coloured118 = result118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree119 live119 coloured119 = result119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree120 live120 coloured120 = result120 := by
  rw [tree120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live118 coloured118 at child
  try dsimp only [live120, coloured120]
  rw [child]
  dsimp only [result118]
  have child := child1
  unfold live119 coloured119 at child
  try dsimp only [live120, coloured120]
  rw [child]
  dsimp only [result119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree121_agree_conditional : tree121 = literal121 := by
  rw [tree121_def]
  rfl
theorem node121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree121 live121 coloured121 = result121 := by
  rw [tree121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree122_agree_conditional : tree122 = literal122 := by
  rw [tree122_def]
  rfl
theorem node122_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree122 live122 coloured122 = result122 := by
  rw [tree122_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree123_agree_conditional
    (child0 : tree121 = literal121)
    (child1 : tree122 = literal122) : tree123 = literal123 := by
  rw [tree123_def, child0, child1]
  rfl
theorem node123_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree121 live121 coloured121 = result121)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree122 live122 coloured122 = result122) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree123 live123 coloured123 = result123 := by
  rw [tree123_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live121 coloured121 at child
  try dsimp only [live123, coloured123]
  rw [child]
  dsimp only [result121]
  have child := child1
  unfold live122 coloured122 at child
  try dsimp only [live123, coloured123]
  rw [child]
  dsimp only [result122]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree124_agree_conditional
    (child0 : tree120 = literal120)
    (child1 : tree123 = literal123) : tree124 = literal124 := by
  rw [tree124_def, child0, child1]
  rfl
theorem node124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree120 live120 coloured120 = result120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree123 live123 coloured123 = result123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree124 live124 coloured124 = result124 := by
  rw [tree124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live120 coloured120 at child
  try dsimp only [live124, coloured124]
  rw [child]
  dsimp only [result120]
  have child := child1
  unfold live123 coloured123 at child
  try dsimp only [live124, coloured124]
  rw [child]
  dsimp only [result123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree125_agree_conditional : tree125 = literal125 := by
  rw [tree125_def]
  rfl
theorem node125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree125 live125 coloured125 = result125 := by
  rw [tree125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree126_agree_conditional
    (child0 : tree124 = literal124)
    (child1 : tree125 = literal125) : tree126 = literal126 := by
  rw [tree126_def, child0, child1]
  rfl
theorem node126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree124 live124 coloured124 = result124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree125 live125 coloured125 = result125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree126 live126 coloured126 = result126 := by
  rw [tree126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live124 coloured124 at child
  try dsimp only [live126, coloured126]
  rw [child]
  dsimp only [result124]
  have child := child1
  unfold live125 coloured125 at child
  try dsimp only [live126, coloured126]
  rw [child]
  dsimp only [result125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree127_agree_conditional
    (child0 : tree29 = literal29)
    (child1 : tree126 = literal126) : tree127 = literal127 := by
  rw [tree127_def, child0, child1]
  rfl
theorem node127_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree29 live29 coloured29 = result29)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree126 live126 coloured126 = result126) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree127 live127 coloured127 = result127 := by
  rw [tree127_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live29 coloured29 at child
  try dsimp only [live127, coloured127]
  rw [child]
  dsimp only [result29]
  have child := child1
  unfold live126 coloured126 at child
  try dsimp only [live127, coloured127]
  rw [child]
  dsimp only [result126]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree128_agree_conditional : tree128 = literal128 := by
  rw [tree128_def]
  rfl
theorem node128_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree128 live128 coloured128 = result128 := by
  rw [tree128_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree129_agree_conditional
    (child0 : tree127 = literal127)
    (child1 : tree128 = literal128) : tree129 = literal129 := by
  rw [tree129_def, child0, child1]
  rfl
theorem node129_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree127 live127 coloured127 = result127)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree128 live128 coloured128 = result128) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree129 live129 coloured129 = result129 := by
  rw [tree129_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live127 coloured127 at child
  try dsimp only [live129, coloured129]
  rw [child]
  dsimp only [result127]
  have child := child1
  unfold live128 coloured128 at child
  try dsimp only [live129, coloured129]
  rw [child]
  dsimp only [result128]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree130_agree_conditional : tree130 = literal130 := by
  rw [tree130_def]
  rfl
theorem node130_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree130 live130 coloured130 = result130 := by
  rw [tree130_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree131_agree_conditional
    (child0 : tree129 = literal129)
    (child1 : tree130 = literal130) : tree131 = literal131 := by
  rw [tree131_def, child0, child1]
  rfl
theorem node131_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree129 live129 coloured129 = result129)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree130 live130 coloured130 = result130) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree131 live131 coloured131 = result131 := by
  rw [tree131_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live129 coloured129 at child
  try dsimp only [live131, coloured131]
  rw [child]
  dsimp only [result129]
  have child := child1
  unfold live130 coloured130 at child
  try dsimp only [live131, coloured131]
  rw [child]
  dsimp only [result130]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree132_agree_conditional : tree132 = literal132 := by
  rw [tree132_def]
  rfl
theorem node132_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree132 live132 coloured132 = result132 := by
  rw [tree132_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree133_agree_conditional
    (child0 : tree131 = literal131)
    (child1 : tree132 = literal132) : tree133 = literal133 := by
  rw [tree133_def, child0, child1]
  rfl
theorem node133_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree131 live131 coloured131 = result131)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree132 live132 coloured132 = result132) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree133 live133 coloured133 = result133 := by
  rw [tree133_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live131 coloured131 at child
  try dsimp only [live133, coloured133]
  rw [child]
  dsimp only [result131]
  have child := child1
  unfold live132 coloured132 at child
  try dsimp only [live133, coloured133]
  rw [child]
  dsimp only [result132]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree134_agree_conditional : tree134 = literal134 := by
  rw [tree134_def]
  rfl
theorem node134_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree134 live134 coloured134 = result134 := by
  rw [tree134_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree135_agree_conditional
    (child0 : tree133 = literal133)
    (child1 : tree134 = literal134) : tree135 = literal135 := by
  rw [tree135_def, child0, child1]
  rfl
theorem node135_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree133 live133 coloured133 = result133)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree134 live134 coloured134 = result134) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree135 live135 coloured135 = result135 := by
  rw [tree135_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live133 coloured133 at child
  try dsimp only [live135, coloured135]
  rw [child]
  dsimp only [result133]
  have child := child1
  unfold live134 coloured134 at child
  try dsimp only [live135, coloured135]
  rw [child]
  dsimp only [result134]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree136_agree_conditional : tree136 = literal136 := by
  rw [tree136_def]
  rfl
theorem node136_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree136 live136 coloured136 = result136 := by
  rw [tree136_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree137_agree_conditional
    (child0 : tree135 = literal135)
    (child1 : tree136 = literal136) : tree137 = literal137 := by
  rw [tree137_def, child0, child1]
  rfl
theorem node137_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree135 live135 coloured135 = result135)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree136 live136 coloured136 = result136) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree137 live137 coloured137 = result137 := by
  rw [tree137_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live135 coloured135 at child
  try dsimp only [live137, coloured137]
  rw [child]
  dsimp only [result135]
  have child := child1
  unfold live136 coloured136 at child
  try dsimp only [live137, coloured137]
  rw [child]
  dsimp only [result136]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree138_agree_conditional : tree138 = literal138 := by
  rw [tree138_def]
  rfl
theorem node138_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree138 live138 coloured138 = result138 := by
  rw [tree138_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree139_agree_conditional
    (child0 : tree137 = literal137)
    (child1 : tree138 = literal138) : tree139 = literal139 := by
  rw [tree139_def, child0, child1]
  rfl
theorem node139_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree137 live137 coloured137 = result137)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree138 live138 coloured138 = result138) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree139 live139 coloured139 = result139 := by
  rw [tree139_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live137 coloured137 at child
  try dsimp only [live139, coloured139]
  rw [child]
  dsimp only [result137]
  have child := child1
  unfold live138 coloured138 at child
  try dsimp only [live139, coloured139]
  rw [child]
  dsimp only [result138]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree140_agree_conditional : tree140 = literal140 := by
  rw [tree140_def]
  rfl
theorem node140_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree140 live140 coloured140 = result140 := by
  rw [tree140_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree141_agree_conditional
    (child0 : tree139 = literal139)
    (child1 : tree140 = literal140) : tree141 = literal141 := by
  rw [tree141_def, child0, child1]
  rfl
theorem node141_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree139 live139 coloured139 = result139)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree140 live140 coloured140 = result140) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree141 live141 coloured141 = result141 := by
  rw [tree141_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live139 coloured139 at child
  try dsimp only [live141, coloured141]
  rw [child]
  dsimp only [result139]
  have child := child1
  unfold live140 coloured140 at child
  try dsimp only [live141, coloured141]
  rw [child]
  dsimp only [result140]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree142_agree_conditional : tree142 = literal142 := by
  rw [tree142_def]
  rfl
theorem node142_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree142 live142 coloured142 = result142 := by
  rw [tree142_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree143_agree_conditional
    (child0 : tree141 = literal141)
    (child1 : tree142 = literal142) : tree143 = literal143 := by
  rw [tree143_def, child0, child1]
  rfl
theorem node143_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree141 live141 coloured141 = result141)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree142 live142 coloured142 = result142) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree143 live143 coloured143 = result143 := by
  rw [tree143_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live141 coloured141 at child
  try dsimp only [live143, coloured143]
  rw [child]
  dsimp only [result141]
  have child := child1
  unfold live142 coloured142 at child
  try dsimp only [live143, coloured143]
  rw [child]
  dsimp only [result142]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree144_agree_conditional : tree144 = literal144 := by
  rw [tree144_def]
  rfl
theorem node144_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree144 live144 coloured144 = result144 := by
  rw [tree144_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree145_agree_conditional : tree145 = literal145 := by
  rw [tree145_def]
  rfl
theorem node145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree145 live145 coloured145 = result145 := by
  rw [tree145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree146_agree_conditional
    (child0 : tree144 = literal144)
    (child1 : tree145 = literal145) : tree146 = literal146 := by
  rw [tree146_def, child0, child1]
  rfl
theorem node146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree144 live144 coloured144 = result144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree145 live145 coloured145 = result145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree146 live146 coloured146 = result146 := by
  rw [tree146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live144 coloured144 at child
  try dsimp only [live146, coloured146]
  rw [child]
  dsimp only [result144]
  have child := child1
  unfold live145 coloured145 at child
  try dsimp only [live146, coloured146]
  rw [child]
  dsimp only [result145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree147_agree_conditional : tree147 = literal147 := by
  rw [tree147_def]
  rfl
theorem node147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree147 live147 coloured147 = result147 := by
  rw [tree147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree148_agree_conditional : tree148 = literal148 := by
  rw [tree148_def]
  rfl
theorem node148_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree148 live148 coloured148 = result148 := by
  rw [tree148_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree149_agree_conditional
    (child0 : tree147 = literal147)
    (child1 : tree148 = literal148) : tree149 = literal149 := by
  rw [tree149_def, child0, child1]
  rfl
theorem node149_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree147 live147 coloured147 = result147)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree148 live148 coloured148 = result148) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree149 live149 coloured149 = result149 := by
  rw [tree149_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live147 coloured147 at child
  try dsimp only [live149, coloured149]
  rw [child]
  dsimp only [result147]
  have child := child1
  unfold live148 coloured148 at child
  try dsimp only [live149, coloured149]
  rw [child]
  dsimp only [result148]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree150_agree_conditional : tree150 = literal150 := by
  rw [tree150_def]
  rfl
theorem node150_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree150 live150 coloured150 = result150 := by
  rw [tree150_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree151_agree_conditional
    (child0 : tree149 = literal149)
    (child1 : tree150 = literal150) : tree151 = literal151 := by
  rw [tree151_def, child0, child1]
  rfl
theorem node151_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree149 live149 coloured149 = result149)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree150 live150 coloured150 = result150) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree151 live151 coloured151 = result151 := by
  rw [tree151_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live149 coloured149 at child
  try dsimp only [live151, coloured151]
  rw [child]
  dsimp only [result149]
  have child := child1
  unfold live150 coloured150 at child
  try dsimp only [live151, coloured151]
  rw [child]
  dsimp only [result150]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree152_agree_conditional
    (child0 : tree146 = literal146)
    (child1 : tree151 = literal151) : tree152 = literal152 := by
  rw [tree152_def, child0, child1]
  rfl
theorem node152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree146 live146 coloured146 = result146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree151 live151 coloured151 = result151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree152 live152 coloured152 = result152 := by
  rw [tree152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live146 coloured146 at child
  try dsimp only [live152, coloured152]
  rw [child]
  dsimp only [result146]
  have child := child1
  unfold live151 coloured151 at child
  try dsimp only [live152, coloured152]
  rw [child]
  dsimp only [result151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree153_agree_conditional
    (child0 : tree143 = literal143)
    (child1 : tree152 = literal152) : tree153 = literal153 := by
  rw [tree153_def, child0, child1]
  rfl
theorem node153_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree143 live143 coloured143 = result143)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree152 live152 coloured152 = result152) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree153 live153 coloured153 = result153 := by
  rw [tree153_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live143 coloured143 at child
  try dsimp only [live153, coloured153]
  rw [child]
  dsimp only [result143]
  have child := child1
  unfold live152 coloured152 at child
  try dsimp only [live153, coloured153]
  rw [child]
  dsimp only [result152]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree154_agree_conditional : tree154 = literal154 := by
  rw [tree154_def]
  rfl
theorem node154_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree154 live154 coloured154 = result154 := by
  rw [tree154_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree155_agree_conditional
    (child0 : tree153 = literal153)
    (child1 : tree154 = literal154) : tree155 = literal155 := by
  rw [tree155_def, child0, child1]
  rfl
theorem node155_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree153 live153 coloured153 = result153)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree154 live154 coloured154 = result154) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree155 live155 coloured155 = result155 := by
  rw [tree155_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live153 coloured153 at child
  try dsimp only [live155, coloured155]
  rw [child]
  dsimp only [result153]
  have child := child1
  unfold live154 coloured154 at child
  try dsimp only [live155, coloured155]
  rw [child]
  dsimp only [result154]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree156_agree_conditional : tree156 = literal156 := by
  rw [tree156_def]
  rfl
theorem node156_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree156 live156 coloured156 = result156 := by
  rw [tree156_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree157_agree_conditional
    (child0 : tree155 = literal155)
    (child1 : tree156 = literal156) : tree157 = literal157 := by
  rw [tree157_def, child0, child1]
  rfl
theorem node157_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree155 live155 coloured155 = result155)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree156 live156 coloured156 = result156) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree157 live157 coloured157 = result157 := by
  rw [tree157_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live155 coloured155 at child
  try dsimp only [live157, coloured157]
  rw [child]
  dsimp only [result155]
  have child := child1
  unfold live156 coloured156 at child
  try dsimp only [live157, coloured157]
  rw [child]
  dsimp only [result156]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree158_agree_conditional : tree158 = literal158 := by
  rw [tree158_def]
  rfl
theorem node158_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree158 live158 coloured158 = result158 := by
  rw [tree158_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree159_agree_conditional
    (child0 : tree157 = literal157)
    (child1 : tree158 = literal158) : tree159 = literal159 := by
  rw [tree159_def, child0, child1]
  rfl
theorem node159_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree157 live157 coloured157 = result157)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree158 live158 coloured158 = result158) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree159 live159 coloured159 = result159 := by
  rw [tree159_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live157 coloured157 at child
  try dsimp only [live159, coloured159]
  rw [child]
  dsimp only [result157]
  have child := child1
  unfold live158 coloured158 at child
  try dsimp only [live159, coloured159]
  rw [child]
  dsimp only [result158]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree160_agree_conditional : tree160 = literal160 := by
  rw [tree160_def]
  rfl
theorem node160_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree160 live160 coloured160 = result160 := by
  rw [tree160_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree161_agree_conditional
    (child0 : tree159 = literal159)
    (child1 : tree160 = literal160) : tree161 = literal161 := by
  rw [tree161_def, child0, child1]
  rfl
theorem node161_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree159 live159 coloured159 = result159)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree160 live160 coloured160 = result160) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree161 live161 coloured161 = result161 := by
  rw [tree161_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live159 coloured159 at child
  try dsimp only [live161, coloured161]
  rw [child]
  dsimp only [result159]
  have child := child1
  unfold live160 coloured160 at child
  try dsimp only [live161, coloured161]
  rw [child]
  dsimp only [result160]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree162_agree_conditional : tree162 = literal162 := by
  rw [tree162_def]
  rfl
theorem node162_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree162 live162 coloured162 = result162 := by
  rw [tree162_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree163_agree_conditional : tree163 = literal163 := by
  rw [tree163_def]
  rfl
theorem node163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree163 live163 coloured163 = result163 := by
  rw [tree163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree164_agree_conditional
    (child0 : tree162 = literal162)
    (child1 : tree163 = literal163) : tree164 = literal164 := by
  rw [tree164_def, child0, child1]
  rfl
theorem node164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree162 live162 coloured162 = result162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree163 live163 coloured163 = result163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree164 live164 coloured164 = result164 := by
  rw [tree164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live162 coloured162 at child
  try dsimp only [live164, coloured164]
  rw [child]
  dsimp only [result162]
  have child := child1
  unfold live163 coloured163 at child
  try dsimp only [live164, coloured164]
  rw [child]
  dsimp only [result163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree165_agree_conditional : tree165 = literal165 := by
  rw [tree165_def]
  rfl
theorem node165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree165 live165 coloured165 = result165 := by
  rw [tree165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree166_agree_conditional : tree166 = literal166 := by
  rw [tree166_def]
  rfl
theorem node166_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree166 live166 coloured166 = result166 := by
  rw [tree166_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree167_agree_conditional
    (child0 : tree165 = literal165)
    (child1 : tree166 = literal166) : tree167 = literal167 := by
  rw [tree167_def, child0, child1]
  rfl
theorem node167_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree165 live165 coloured165 = result165)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree166 live166 coloured166 = result166) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree167 live167 coloured167 = result167 := by
  rw [tree167_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live165 coloured165 at child
  try dsimp only [live167, coloured167]
  rw [child]
  dsimp only [result165]
  have child := child1
  unfold live166 coloured166 at child
  try dsimp only [live167, coloured167]
  rw [child]
  dsimp only [result166]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree168_agree_conditional : tree168 = literal168 := by
  rw [tree168_def]
  rfl
theorem node168_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree168 live168 coloured168 = result168 := by
  rw [tree168_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree169_agree_conditional
    (child0 : tree167 = literal167)
    (child1 : tree168 = literal168) : tree169 = literal169 := by
  rw [tree169_def, child0, child1]
  rfl
theorem node169_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree167 live167 coloured167 = result167)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree168 live168 coloured168 = result168) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree169 live169 coloured169 = result169 := by
  rw [tree169_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live167 coloured167 at child
  try dsimp only [live169, coloured169]
  rw [child]
  dsimp only [result167]
  have child := child1
  unfold live168 coloured168 at child
  try dsimp only [live169, coloured169]
  rw [child]
  dsimp only [result168]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree170_agree_conditional
    (child0 : tree164 = literal164)
    (child1 : tree169 = literal169) : tree170 = literal170 := by
  rw [tree170_def, child0, child1]
  rfl
theorem node170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree164 live164 coloured164 = result164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree169 live169 coloured169 = result169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree170 live170 coloured170 = result170 := by
  rw [tree170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live164 coloured164 at child
  try dsimp only [live170, coloured170]
  rw [child]
  dsimp only [result164]
  have child := child1
  unfold live169 coloured169 at child
  try dsimp only [live170, coloured170]
  rw [child]
  dsimp only [result169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree171_agree_conditional
    (child0 : tree161 = literal161)
    (child1 : tree170 = literal170) : tree171 = literal171 := by
  rw [tree171_def, child0, child1]
  rfl
theorem node171_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree161 live161 coloured161 = result161)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree170 live170 coloured170 = result170) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree171 live171 coloured171 = result171 := by
  rw [tree171_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live161 coloured161 at child
  try dsimp only [live171, coloured171]
  rw [child]
  dsimp only [result161]
  have child := child1
  unfold live170 coloured170 at child
  try dsimp only [live171, coloured171]
  rw [child]
  dsimp only [result170]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree172_agree_conditional : tree172 = literal172 := by
  rw [tree172_def]
  rfl
theorem node172_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree172 live172 coloured172 = result172 := by
  rw [tree172_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree173_agree_conditional
    (child0 : tree171 = literal171)
    (child1 : tree172 = literal172) : tree173 = literal173 := by
  rw [tree173_def, child0, child1]
  rfl
theorem node173_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree171 live171 coloured171 = result171)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree172 live172 coloured172 = result172) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree173 live173 coloured173 = result173 := by
  rw [tree173_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live171 coloured171 at child
  try dsimp only [live173, coloured173]
  rw [child]
  dsimp only [result171]
  have child := child1
  unfold live172 coloured172 at child
  try dsimp only [live173, coloured173]
  rw [child]
  dsimp only [result172]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree174_agree_conditional : tree174 = literal174 := by
  rw [tree174_def]
  rfl
theorem node174_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree174 live174 coloured174 = result174 := by
  rw [tree174_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree175_agree_conditional
    (child0 : tree173 = literal173)
    (child1 : tree174 = literal174) : tree175 = literal175 := by
  rw [tree175_def, child0, child1]
  rfl
theorem node175_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree173 live173 coloured173 = result173)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree174 live174 coloured174 = result174) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree175 live175 coloured175 = result175 := by
  rw [tree175_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live173 coloured173 at child
  try dsimp only [live175, coloured175]
  rw [child]
  dsimp only [result173]
  have child := child1
  unfold live174 coloured174 at child
  try dsimp only [live175, coloured175]
  rw [child]
  dsimp only [result174]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree176_agree_conditional : tree176 = literal176 := by
  rw [tree176_def]
  rfl
theorem node176_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree176 live176 coloured176 = result176 := by
  rw [tree176_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree177_agree_conditional
    (child0 : tree175 = literal175)
    (child1 : tree176 = literal176) : tree177 = literal177 := by
  rw [tree177_def, child0, child1]
  rfl
theorem node177_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree175 live175 coloured175 = result175)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree176 live176 coloured176 = result176) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree177 live177 coloured177 = result177 := by
  rw [tree177_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live175 coloured175 at child
  try dsimp only [live177, coloured177]
  rw [child]
  dsimp only [result175]
  have child := child1
  unfold live176 coloured176 at child
  try dsimp only [live177, coloured177]
  rw [child]
  dsimp only [result176]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree178_agree_conditional : tree178 = literal178 := by
  rw [tree178_def]
  rfl
theorem node178_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree178 live178 coloured178 = result178 := by
  rw [tree178_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree179_agree_conditional
    (child0 : tree177 = literal177)
    (child1 : tree178 = literal178) : tree179 = literal179 := by
  rw [tree179_def, child0, child1]
  rfl
theorem node179_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree177 live177 coloured177 = result177)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree178 live178 coloured178 = result178) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree179 live179 coloured179 = result179 := by
  rw [tree179_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live177 coloured177 at child
  try dsimp only [live179, coloured179]
  rw [child]
  dsimp only [result177]
  have child := child1
  unfold live178 coloured178 at child
  try dsimp only [live179, coloured179]
  rw [child]
  dsimp only [result178]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree180_agree_conditional : tree180 = literal180 := by
  rw [tree180_def]
  rfl
theorem node180_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree180 live180 coloured180 = result180 := by
  rw [tree180_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree181_agree_conditional
    (child0 : tree179 = literal179)
    (child1 : tree180 = literal180) : tree181 = literal181 := by
  rw [tree181_def, child0, child1]
  rfl
theorem node181_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree179 live179 coloured179 = result179)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree180 live180 coloured180 = result180) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree181 live181 coloured181 = result181 := by
  rw [tree181_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live179 coloured179 at child
  try dsimp only [live181, coloured181]
  rw [child]
  dsimp only [result179]
  have child := child1
  unfold live180 coloured180 at child
  try dsimp only [live181, coloured181]
  rw [child]
  dsimp only [result180]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree182_agree_conditional : tree182 = literal182 := by
  rw [tree182_def]
  rfl
theorem node182_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree182 live182 coloured182 = result182 := by
  rw [tree182_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree183_agree_conditional
    (child0 : tree181 = literal181)
    (child1 : tree182 = literal182) : tree183 = literal183 := by
  rw [tree183_def, child0, child1]
  rfl
theorem node183_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree181 live181 coloured181 = result181)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree182 live182 coloured182 = result182) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree183 live183 coloured183 = result183 := by
  rw [tree183_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live181 coloured181 at child
  try dsimp only [live183, coloured183]
  rw [child]
  dsimp only [result181]
  have child := child1
  unfold live182 coloured182 at child
  try dsimp only [live183, coloured183]
  rw [child]
  dsimp only [result182]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree184_agree_conditional : tree184 = literal184 := by
  rw [tree184_def]
  rfl
theorem node184_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree184 live184 coloured184 = result184 := by
  rw [tree184_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree185_agree_conditional : tree185 = literal185 := by
  rw [tree185_def]
  rfl
theorem node185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree185 live185 coloured185 = result185 := by
  rw [tree185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree186_agree_conditional
    (child0 : tree184 = literal184)
    (child1 : tree185 = literal185) : tree186 = literal186 := by
  rw [tree186_def, child0, child1]
  rfl
theorem node186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree184 live184 coloured184 = result184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree185 live185 coloured185 = result185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree186 live186 coloured186 = result186 := by
  rw [tree186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live184 coloured184 at child
  try dsimp only [live186, coloured186]
  rw [child]
  dsimp only [result184]
  have child := child1
  unfold live185 coloured185 at child
  try dsimp only [live186, coloured186]
  rw [child]
  dsimp only [result185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree187_agree_conditional : tree187 = literal187 := by
  rw [tree187_def]
  rfl
theorem node187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree187 live187 coloured187 = result187 := by
  rw [tree187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree188_agree_conditional : tree188 = literal188 := by
  rw [tree188_def]
  rfl
theorem node188_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree188 live188 coloured188 = result188 := by
  rw [tree188_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree189_agree_conditional
    (child0 : tree187 = literal187)
    (child1 : tree188 = literal188) : tree189 = literal189 := by
  rw [tree189_def, child0, child1]
  rfl
theorem node189_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree187 live187 coloured187 = result187)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree188 live188 coloured188 = result188) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree189 live189 coloured189 = result189 := by
  rw [tree189_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live187 coloured187 at child
  try dsimp only [live189, coloured189]
  rw [child]
  dsimp only [result187]
  have child := child1
  unfold live188 coloured188 at child
  try dsimp only [live189, coloured189]
  rw [child]
  dsimp only [result188]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree190_agree_conditional : tree190 = literal190 := by
  rw [tree190_def]
  rfl
theorem node190_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree190 live190 coloured190 = result190 := by
  rw [tree190_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree191_agree_conditional
    (child0 : tree189 = literal189)
    (child1 : tree190 = literal190) : tree191 = literal191 := by
  rw [tree191_def, child0, child1]
  rfl
theorem node191_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree189 live189 coloured189 = result189)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree190 live190 coloured190 = result190) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree191 live191 coloured191 = result191 := by
  rw [tree191_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live189 coloured189 at child
  try dsimp only [live191, coloured191]
  rw [child]
  dsimp only [result189]
  have child := child1
  unfold live190 coloured190 at child
  try dsimp only [live191, coloured191]
  rw [child]
  dsimp only [result190]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages233
