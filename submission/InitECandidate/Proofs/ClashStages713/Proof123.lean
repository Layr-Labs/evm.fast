import InitECandidate.Proofs.ClashStages713.Proof122
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree11808_agree : tree11808 = literal11808 := by
  rw [tree11808_def, tree11806_agree, tree11807_agree]
  rfl
theorem node11808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11808 live11808 coloured11808 = result11808 := by
  rw [tree11808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11806_eq
  unfold live11806 coloured11806 at child
  try dsimp only [live11808, coloured11808]
  rw [child]
  dsimp only [result11806]
  have child := node11807_eq
  unfold live11807 coloured11807 at child
  try dsimp only [live11808, coloured11808]
  rw [child]
  dsimp only [result11807]
  try dsimp only [colour, result11808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11809_agree : tree11809 = literal11809 := by
  rw [tree11809_def]
  rfl
theorem node11809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11809 live11809 coloured11809 = result11809 := by
  rw [tree11809_def]
  try dsimp only [colour, result11809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11810_agree : tree11810 = literal11810 := by
  rw [tree11810_def, tree11808_agree, tree11809_agree]
  rfl
theorem node11810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11810 live11810 coloured11810 = result11810 := by
  rw [tree11810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11808_eq
  unfold live11808 coloured11808 at child
  try dsimp only [live11810, coloured11810]
  rw [child]
  dsimp only [result11808]
  have child := node11809_eq
  unfold live11809 coloured11809 at child
  try dsimp only [live11810, coloured11810]
  rw [child]
  dsimp only [result11809]
  try dsimp only [colour, result11810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11811_agree : tree11811 = literal11811 := by
  rw [tree11811_def]
  rfl
theorem node11811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11811 live11811 coloured11811 = result11811 := by
  rw [tree11811_def]
  try dsimp only [colour, result11811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11812_agree : tree11812 = literal11812 := by
  rw [tree11812_def, tree11810_agree, tree11811_agree]
  rfl
theorem node11812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11812 live11812 coloured11812 = result11812 := by
  rw [tree11812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11810_eq
  unfold live11810 coloured11810 at child
  try dsimp only [live11812, coloured11812]
  rw [child]
  dsimp only [result11810]
  have child := node11811_eq
  unfold live11811 coloured11811 at child
  try dsimp only [live11812, coloured11812]
  rw [child]
  dsimp only [result11811]
  try dsimp only [colour, result11812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11813_agree : tree11813 = literal11813 := by
  rw [tree11813_def]
  rfl
theorem node11813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11813 live11813 coloured11813 = result11813 := by
  rw [tree11813_def]
  try dsimp only [colour, result11813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11814_agree : tree11814 = literal11814 := by
  rw [tree11814_def, tree11812_agree, tree11813_agree]
  rfl
theorem node11814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11814 live11814 coloured11814 = result11814 := by
  rw [tree11814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11812_eq
  unfold live11812 coloured11812 at child
  try dsimp only [live11814, coloured11814]
  rw [child]
  dsimp only [result11812]
  have child := node11813_eq
  unfold live11813 coloured11813 at child
  try dsimp only [live11814, coloured11814]
  rw [child]
  dsimp only [result11813]
  try dsimp only [colour, result11814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11815_agree : tree11815 = literal11815 := by
  rw [tree11815_def]
  rfl
theorem node11815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11815 live11815 coloured11815 = result11815 := by
  rw [tree11815_def]
  try dsimp only [colour, result11815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11816_agree : tree11816 = literal11816 := by
  rw [tree11816_def, tree11814_agree, tree11815_agree]
  rfl
theorem node11816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11816 live11816 coloured11816 = result11816 := by
  rw [tree11816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11814_eq
  unfold live11814 coloured11814 at child
  try dsimp only [live11816, coloured11816]
  rw [child]
  dsimp only [result11814]
  have child := node11815_eq
  unfold live11815 coloured11815 at child
  try dsimp only [live11816, coloured11816]
  rw [child]
  dsimp only [result11815]
  try dsimp only [colour, result11816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11817_agree : tree11817 = literal11817 := by
  rw [tree11817_def]
  rfl
theorem node11817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11817 live11817 coloured11817 = result11817 := by
  rw [tree11817_def]
  try dsimp only [colour, result11817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11818_agree : tree11818 = literal11818 := by
  rw [tree11818_def, tree11816_agree, tree11817_agree]
  rfl
theorem node11818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11818 live11818 coloured11818 = result11818 := by
  rw [tree11818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11816_eq
  unfold live11816 coloured11816 at child
  try dsimp only [live11818, coloured11818]
  rw [child]
  dsimp only [result11816]
  have child := node11817_eq
  unfold live11817 coloured11817 at child
  try dsimp only [live11818, coloured11818]
  rw [child]
  dsimp only [result11817]
  try dsimp only [colour, result11818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11819_agree : tree11819 = literal11819 := by
  rw [tree11819_def]
  rfl
theorem node11819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11819 live11819 coloured11819 = result11819 := by
  rw [tree11819_def]
  try dsimp only [colour, result11819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11820_agree : tree11820 = literal11820 := by
  rw [tree11820_def, tree11818_agree, tree11819_agree]
  rfl
theorem node11820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11820 live11820 coloured11820 = result11820 := by
  rw [tree11820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11818_eq
  unfold live11818 coloured11818 at child
  try dsimp only [live11820, coloured11820]
  rw [child]
  dsimp only [result11818]
  have child := node11819_eq
  unfold live11819 coloured11819 at child
  try dsimp only [live11820, coloured11820]
  rw [child]
  dsimp only [result11819]
  try dsimp only [colour, result11820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11821_agree : tree11821 = literal11821 := by
  rw [tree11821_def]
  rfl
theorem node11821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11821 live11821 coloured11821 = result11821 := by
  rw [tree11821_def]
  try dsimp only [colour, result11821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11822_agree : tree11822 = literal11822 := by
  rw [tree11822_def, tree11820_agree, tree11821_agree]
  rfl
theorem node11822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11822 live11822 coloured11822 = result11822 := by
  rw [tree11822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11820_eq
  unfold live11820 coloured11820 at child
  try dsimp only [live11822, coloured11822]
  rw [child]
  dsimp only [result11820]
  have child := node11821_eq
  unfold live11821 coloured11821 at child
  try dsimp only [live11822, coloured11822]
  rw [child]
  dsimp only [result11821]
  try dsimp only [colour, result11822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11823_agree : tree11823 = literal11823 := by
  rw [tree11823_def]
  rfl
theorem node11823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11823 live11823 coloured11823 = result11823 := by
  rw [tree11823_def]
  try dsimp only [colour, result11823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11824_agree : tree11824 = literal11824 := by
  rw [tree11824_def, tree11822_agree, tree11823_agree]
  rfl
theorem node11824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11824 live11824 coloured11824 = result11824 := by
  rw [tree11824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11822_eq
  unfold live11822 coloured11822 at child
  try dsimp only [live11824, coloured11824]
  rw [child]
  dsimp only [result11822]
  have child := node11823_eq
  unfold live11823 coloured11823 at child
  try dsimp only [live11824, coloured11824]
  rw [child]
  dsimp only [result11823]
  try dsimp only [colour, result11824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11825_agree : tree11825 = literal11825 := by
  rw [tree11825_def]
  rfl
theorem node11825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11825 live11825 coloured11825 = result11825 := by
  rw [tree11825_def]
  try dsimp only [colour, result11825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11826_agree : tree11826 = literal11826 := by
  rw [tree11826_def, tree11824_agree, tree11825_agree]
  rfl
theorem node11826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11826 live11826 coloured11826 = result11826 := by
  rw [tree11826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11824_eq
  unfold live11824 coloured11824 at child
  try dsimp only [live11826, coloured11826]
  rw [child]
  dsimp only [result11824]
  have child := node11825_eq
  unfold live11825 coloured11825 at child
  try dsimp only [live11826, coloured11826]
  rw [child]
  dsimp only [result11825]
  try dsimp only [colour, result11826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11827_agree : tree11827 = literal11827 := by
  rw [tree11827_def]
  rfl
theorem node11827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11827 live11827 coloured11827 = result11827 := by
  rw [tree11827_def]
  try dsimp only [colour, result11827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11828_agree : tree11828 = literal11828 := by
  rw [tree11828_def, tree11826_agree, tree11827_agree]
  rfl
theorem node11828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11828 live11828 coloured11828 = result11828 := by
  rw [tree11828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11826_eq
  unfold live11826 coloured11826 at child
  try dsimp only [live11828, coloured11828]
  rw [child]
  dsimp only [result11826]
  have child := node11827_eq
  unfold live11827 coloured11827 at child
  try dsimp only [live11828, coloured11828]
  rw [child]
  dsimp only [result11827]
  try dsimp only [colour, result11828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11829_agree : tree11829 = literal11829 := by
  rw [tree11829_def]
  rfl
theorem node11829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11829 live11829 coloured11829 = result11829 := by
  rw [tree11829_def]
  try dsimp only [colour, result11829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11830_agree : tree11830 = literal11830 := by
  rw [tree11830_def, tree11828_agree, tree11829_agree]
  rfl
theorem node11830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11830 live11830 coloured11830 = result11830 := by
  rw [tree11830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11828_eq
  unfold live11828 coloured11828 at child
  try dsimp only [live11830, coloured11830]
  rw [child]
  dsimp only [result11828]
  have child := node11829_eq
  unfold live11829 coloured11829 at child
  try dsimp only [live11830, coloured11830]
  rw [child]
  dsimp only [result11829]
  try dsimp only [colour, result11830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11831_agree : tree11831 = literal11831 := by
  rw [tree11831_def]
  rfl
theorem node11831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11831 live11831 coloured11831 = result11831 := by
  rw [tree11831_def]
  try dsimp only [colour, result11831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11832_agree : tree11832 = literal11832 := by
  rw [tree11832_def, tree11830_agree, tree11831_agree]
  rfl
theorem node11832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11832 live11832 coloured11832 = result11832 := by
  rw [tree11832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11830_eq
  unfold live11830 coloured11830 at child
  try dsimp only [live11832, coloured11832]
  rw [child]
  dsimp only [result11830]
  have child := node11831_eq
  unfold live11831 coloured11831 at child
  try dsimp only [live11832, coloured11832]
  rw [child]
  dsimp only [result11831]
  try dsimp only [colour, result11832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11833_agree : tree11833 = literal11833 := by
  rw [tree11833_def]
  rfl
theorem node11833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11833 live11833 coloured11833 = result11833 := by
  rw [tree11833_def]
  try dsimp only [colour, result11833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11834_agree : tree11834 = literal11834 := by
  rw [tree11834_def, tree11832_agree, tree11833_agree]
  rfl
theorem node11834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11834 live11834 coloured11834 = result11834 := by
  rw [tree11834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11832_eq
  unfold live11832 coloured11832 at child
  try dsimp only [live11834, coloured11834]
  rw [child]
  dsimp only [result11832]
  have child := node11833_eq
  unfold live11833 coloured11833 at child
  try dsimp only [live11834, coloured11834]
  rw [child]
  dsimp only [result11833]
  try dsimp only [colour, result11834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11835_agree : tree11835 = literal11835 := by
  rw [tree11835_def]
  rfl
theorem node11835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11835 live11835 coloured11835 = result11835 := by
  rw [tree11835_def]
  try dsimp only [colour, result11835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11836_agree : tree11836 = literal11836 := by
  rw [tree11836_def, tree11834_agree, tree11835_agree]
  rfl
theorem node11836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11836 live11836 coloured11836 = result11836 := by
  rw [tree11836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11834_eq
  unfold live11834 coloured11834 at child
  try dsimp only [live11836, coloured11836]
  rw [child]
  dsimp only [result11834]
  have child := node11835_eq
  unfold live11835 coloured11835 at child
  try dsimp only [live11836, coloured11836]
  rw [child]
  dsimp only [result11835]
  try dsimp only [colour, result11836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11837_agree : tree11837 = literal11837 := by
  rw [tree11837_def]
  rfl
theorem node11837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11837 live11837 coloured11837 = result11837 := by
  rw [tree11837_def]
  try dsimp only [colour, result11837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11838_agree : tree11838 = literal11838 := by
  rw [tree11838_def, tree11836_agree, tree11837_agree]
  rfl
theorem node11838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11838 live11838 coloured11838 = result11838 := by
  rw [tree11838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11836_eq
  unfold live11836 coloured11836 at child
  try dsimp only [live11838, coloured11838]
  rw [child]
  dsimp only [result11836]
  have child := node11837_eq
  unfold live11837 coloured11837 at child
  try dsimp only [live11838, coloured11838]
  rw [child]
  dsimp only [result11837]
  try dsimp only [colour, result11838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11839_agree : tree11839 = literal11839 := by
  rw [tree11839_def]
  rfl
theorem node11839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11839 live11839 coloured11839 = result11839 := by
  rw [tree11839_def]
  try dsimp only [colour, result11839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11840_agree : tree11840 = literal11840 := by
  rw [tree11840_def, tree11838_agree, tree11839_agree]
  rfl
theorem node11840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11840 live11840 coloured11840 = result11840 := by
  rw [tree11840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11838_eq
  unfold live11838 coloured11838 at child
  try dsimp only [live11840, coloured11840]
  rw [child]
  dsimp only [result11838]
  have child := node11839_eq
  unfold live11839 coloured11839 at child
  try dsimp only [live11840, coloured11840]
  rw [child]
  dsimp only [result11839]
  try dsimp only [colour, result11840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11841_agree : tree11841 = literal11841 := by
  rw [tree11841_def]
  rfl
theorem node11841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11841 live11841 coloured11841 = result11841 := by
  rw [tree11841_def]
  try dsimp only [colour, result11841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11842_agree : tree11842 = literal11842 := by
  rw [tree11842_def, tree11840_agree, tree11841_agree]
  rfl
theorem node11842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11842 live11842 coloured11842 = result11842 := by
  rw [tree11842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11840_eq
  unfold live11840 coloured11840 at child
  try dsimp only [live11842, coloured11842]
  rw [child]
  dsimp only [result11840]
  have child := node11841_eq
  unfold live11841 coloured11841 at child
  try dsimp only [live11842, coloured11842]
  rw [child]
  dsimp only [result11841]
  try dsimp only [colour, result11842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11843_agree : tree11843 = literal11843 := by
  rw [tree11843_def]
  rfl
theorem node11843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11843 live11843 coloured11843 = result11843 := by
  rw [tree11843_def]
  try dsimp only [colour, result11843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11844_agree : tree11844 = literal11844 := by
  rw [tree11844_def, tree11842_agree, tree11843_agree]
  rfl
theorem node11844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11844 live11844 coloured11844 = result11844 := by
  rw [tree11844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11842_eq
  unfold live11842 coloured11842 at child
  try dsimp only [live11844, coloured11844]
  rw [child]
  dsimp only [result11842]
  have child := node11843_eq
  unfold live11843 coloured11843 at child
  try dsimp only [live11844, coloured11844]
  rw [child]
  dsimp only [result11843]
  try dsimp only [colour, result11844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11845_agree : tree11845 = literal11845 := by
  rw [tree11845_def]
  rfl
theorem node11845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11845 live11845 coloured11845 = result11845 := by
  rw [tree11845_def]
  try dsimp only [colour, result11845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11846_agree : tree11846 = literal11846 := by
  rw [tree11846_def, tree11844_agree, tree11845_agree]
  rfl
theorem node11846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11846 live11846 coloured11846 = result11846 := by
  rw [tree11846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11844_eq
  unfold live11844 coloured11844 at child
  try dsimp only [live11846, coloured11846]
  rw [child]
  dsimp only [result11844]
  have child := node11845_eq
  unfold live11845 coloured11845 at child
  try dsimp only [live11846, coloured11846]
  rw [child]
  dsimp only [result11845]
  try dsimp only [colour, result11846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11847_agree : tree11847 = literal11847 := by
  rw [tree11847_def]
  rfl
theorem node11847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11847 live11847 coloured11847 = result11847 := by
  rw [tree11847_def]
  try dsimp only [colour, result11847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11848_agree : tree11848 = literal11848 := by
  rw [tree11848_def, tree11846_agree, tree11847_agree]
  rfl
theorem node11848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11848 live11848 coloured11848 = result11848 := by
  rw [tree11848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11846_eq
  unfold live11846 coloured11846 at child
  try dsimp only [live11848, coloured11848]
  rw [child]
  dsimp only [result11846]
  have child := node11847_eq
  unfold live11847 coloured11847 at child
  try dsimp only [live11848, coloured11848]
  rw [child]
  dsimp only [result11847]
  try dsimp only [colour, result11848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11849_agree : tree11849 = literal11849 := by
  rw [tree11849_def]
  rfl
theorem node11849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11849 live11849 coloured11849 = result11849 := by
  rw [tree11849_def]
  try dsimp only [colour, result11849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11850_agree : tree11850 = literal11850 := by
  rw [tree11850_def, tree11848_agree, tree11849_agree]
  rfl
theorem node11850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11850 live11850 coloured11850 = result11850 := by
  rw [tree11850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11848_eq
  unfold live11848 coloured11848 at child
  try dsimp only [live11850, coloured11850]
  rw [child]
  dsimp only [result11848]
  have child := node11849_eq
  unfold live11849 coloured11849 at child
  try dsimp only [live11850, coloured11850]
  rw [child]
  dsimp only [result11849]
  try dsimp only [colour, result11850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11851_agree : tree11851 = literal11851 := by
  rw [tree11851_def]
  rfl
theorem node11851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11851 live11851 coloured11851 = result11851 := by
  rw [tree11851_def]
  try dsimp only [colour, result11851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11852_agree : tree11852 = literal11852 := by
  rw [tree11852_def, tree11850_agree, tree11851_agree]
  rfl
theorem node11852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11852 live11852 coloured11852 = result11852 := by
  rw [tree11852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11850_eq
  unfold live11850 coloured11850 at child
  try dsimp only [live11852, coloured11852]
  rw [child]
  dsimp only [result11850]
  have child := node11851_eq
  unfold live11851 coloured11851 at child
  try dsimp only [live11852, coloured11852]
  rw [child]
  dsimp only [result11851]
  try dsimp only [colour, result11852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11853_agree : tree11853 = literal11853 := by
  rw [tree11853_def]
  rfl
theorem node11853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11853 live11853 coloured11853 = result11853 := by
  rw [tree11853_def]
  try dsimp only [colour, result11853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11854_agree : tree11854 = literal11854 := by
  rw [tree11854_def, tree11852_agree, tree11853_agree]
  rfl
theorem node11854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11854 live11854 coloured11854 = result11854 := by
  rw [tree11854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11852_eq
  unfold live11852 coloured11852 at child
  try dsimp only [live11854, coloured11854]
  rw [child]
  dsimp only [result11852]
  have child := node11853_eq
  unfold live11853 coloured11853 at child
  try dsimp only [live11854, coloured11854]
  rw [child]
  dsimp only [result11853]
  try dsimp only [colour, result11854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11855_agree : tree11855 = literal11855 := by
  rw [tree11855_def]
  rfl
theorem node11855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11855 live11855 coloured11855 = result11855 := by
  rw [tree11855_def]
  try dsimp only [colour, result11855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11856_agree : tree11856 = literal11856 := by
  rw [tree11856_def, tree11854_agree, tree11855_agree]
  rfl
theorem node11856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11856 live11856 coloured11856 = result11856 := by
  rw [tree11856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11854_eq
  unfold live11854 coloured11854 at child
  try dsimp only [live11856, coloured11856]
  rw [child]
  dsimp only [result11854]
  have child := node11855_eq
  unfold live11855 coloured11855 at child
  try dsimp only [live11856, coloured11856]
  rw [child]
  dsimp only [result11855]
  try dsimp only [colour, result11856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11857_agree : tree11857 = literal11857 := by
  rw [tree11857_def]
  rfl
theorem node11857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11857 live11857 coloured11857 = result11857 := by
  rw [tree11857_def]
  try dsimp only [colour, result11857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11858_agree : tree11858 = literal11858 := by
  rw [tree11858_def, tree11856_agree, tree11857_agree]
  rfl
theorem node11858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11858 live11858 coloured11858 = result11858 := by
  rw [tree11858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11856_eq
  unfold live11856 coloured11856 at child
  try dsimp only [live11858, coloured11858]
  rw [child]
  dsimp only [result11856]
  have child := node11857_eq
  unfold live11857 coloured11857 at child
  try dsimp only [live11858, coloured11858]
  rw [child]
  dsimp only [result11857]
  try dsimp only [colour, result11858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11859_agree : tree11859 = literal11859 := by
  rw [tree11859_def]
  rfl
theorem node11859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11859 live11859 coloured11859 = result11859 := by
  rw [tree11859_def]
  try dsimp only [colour, result11859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11860_agree : tree11860 = literal11860 := by
  rw [tree11860_def, tree11858_agree, tree11859_agree]
  rfl
theorem node11860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11860 live11860 coloured11860 = result11860 := by
  rw [tree11860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11858_eq
  unfold live11858 coloured11858 at child
  try dsimp only [live11860, coloured11860]
  rw [child]
  dsimp only [result11858]
  have child := node11859_eq
  unfold live11859 coloured11859 at child
  try dsimp only [live11860, coloured11860]
  rw [child]
  dsimp only [result11859]
  try dsimp only [colour, result11860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11861_agree : tree11861 = literal11861 := by
  rw [tree11861_def]
  rfl
theorem node11861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11861 live11861 coloured11861 = result11861 := by
  rw [tree11861_def]
  try dsimp only [colour, result11861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11862_agree : tree11862 = literal11862 := by
  rw [tree11862_def, tree11860_agree, tree11861_agree]
  rfl
theorem node11862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11862 live11862 coloured11862 = result11862 := by
  rw [tree11862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11860_eq
  unfold live11860 coloured11860 at child
  try dsimp only [live11862, coloured11862]
  rw [child]
  dsimp only [result11860]
  have child := node11861_eq
  unfold live11861 coloured11861 at child
  try dsimp only [live11862, coloured11862]
  rw [child]
  dsimp only [result11861]
  try dsimp only [colour, result11862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11863_agree : tree11863 = literal11863 := by
  rw [tree11863_def]
  rfl
theorem node11863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11863 live11863 coloured11863 = result11863 := by
  rw [tree11863_def]
  try dsimp only [colour, result11863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11864_agree : tree11864 = literal11864 := by
  rw [tree11864_def, tree11862_agree, tree11863_agree]
  rfl
theorem node11864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11864 live11864 coloured11864 = result11864 := by
  rw [tree11864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11862_eq
  unfold live11862 coloured11862 at child
  try dsimp only [live11864, coloured11864]
  rw [child]
  dsimp only [result11862]
  have child := node11863_eq
  unfold live11863 coloured11863 at child
  try dsimp only [live11864, coloured11864]
  rw [child]
  dsimp only [result11863]
  try dsimp only [colour, result11864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11865_agree : tree11865 = literal11865 := by
  rw [tree11865_def]
  rfl
theorem node11865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11865 live11865 coloured11865 = result11865 := by
  rw [tree11865_def]
  try dsimp only [colour, result11865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11866_agree : tree11866 = literal11866 := by
  rw [tree11866_def, tree11864_agree, tree11865_agree]
  rfl
theorem node11866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11866 live11866 coloured11866 = result11866 := by
  rw [tree11866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11864_eq
  unfold live11864 coloured11864 at child
  try dsimp only [live11866, coloured11866]
  rw [child]
  dsimp only [result11864]
  have child := node11865_eq
  unfold live11865 coloured11865 at child
  try dsimp only [live11866, coloured11866]
  rw [child]
  dsimp only [result11865]
  try dsimp only [colour, result11866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11867_agree : tree11867 = literal11867 := by
  rw [tree11867_def]
  rfl
theorem node11867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11867 live11867 coloured11867 = result11867 := by
  rw [tree11867_def]
  try dsimp only [colour, result11867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11868_agree : tree11868 = literal11868 := by
  rw [tree11868_def, tree11866_agree, tree11867_agree]
  rfl
theorem node11868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11868 live11868 coloured11868 = result11868 := by
  rw [tree11868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11866_eq
  unfold live11866 coloured11866 at child
  try dsimp only [live11868, coloured11868]
  rw [child]
  dsimp only [result11866]
  have child := node11867_eq
  unfold live11867 coloured11867 at child
  try dsimp only [live11868, coloured11868]
  rw [child]
  dsimp only [result11867]
  try dsimp only [colour, result11868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11869_agree : tree11869 = literal11869 := by
  rw [tree11869_def]
  rfl
theorem node11869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11869 live11869 coloured11869 = result11869 := by
  rw [tree11869_def]
  try dsimp only [colour, result11869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11870_agree : tree11870 = literal11870 := by
  rw [tree11870_def, tree11868_agree, tree11869_agree]
  rfl
theorem node11870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11870 live11870 coloured11870 = result11870 := by
  rw [tree11870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11868_eq
  unfold live11868 coloured11868 at child
  try dsimp only [live11870, coloured11870]
  rw [child]
  dsimp only [result11868]
  have child := node11869_eq
  unfold live11869 coloured11869 at child
  try dsimp only [live11870, coloured11870]
  rw [child]
  dsimp only [result11869]
  try dsimp only [colour, result11870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11871_agree : tree11871 = literal11871 := by
  rw [tree11871_def]
  rfl
theorem node11871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11871 live11871 coloured11871 = result11871 := by
  rw [tree11871_def]
  try dsimp only [colour, result11871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11872_agree : tree11872 = literal11872 := by
  rw [tree11872_def, tree11870_agree, tree11871_agree]
  rfl
theorem node11872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11872 live11872 coloured11872 = result11872 := by
  rw [tree11872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11870_eq
  unfold live11870 coloured11870 at child
  try dsimp only [live11872, coloured11872]
  rw [child]
  dsimp only [result11870]
  have child := node11871_eq
  unfold live11871 coloured11871 at child
  try dsimp only [live11872, coloured11872]
  rw [child]
  dsimp only [result11871]
  try dsimp only [colour, result11872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11873_agree : tree11873 = literal11873 := by
  rw [tree11873_def]
  rfl
theorem node11873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11873 live11873 coloured11873 = result11873 := by
  rw [tree11873_def]
  try dsimp only [colour, result11873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11874_agree : tree11874 = literal11874 := by
  rw [tree11874_def, tree11872_agree, tree11873_agree]
  rfl
theorem node11874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11874 live11874 coloured11874 = result11874 := by
  rw [tree11874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11872_eq
  unfold live11872 coloured11872 at child
  try dsimp only [live11874, coloured11874]
  rw [child]
  dsimp only [result11872]
  have child := node11873_eq
  unfold live11873 coloured11873 at child
  try dsimp only [live11874, coloured11874]
  rw [child]
  dsimp only [result11873]
  try dsimp only [colour, result11874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11875_agree : tree11875 = literal11875 := by
  rw [tree11875_def]
  rfl
theorem node11875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11875 live11875 coloured11875 = result11875 := by
  rw [tree11875_def]
  try dsimp only [colour, result11875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11876_agree : tree11876 = literal11876 := by
  rw [tree11876_def, tree11874_agree, tree11875_agree]
  rfl
theorem node11876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11876 live11876 coloured11876 = result11876 := by
  rw [tree11876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11874_eq
  unfold live11874 coloured11874 at child
  try dsimp only [live11876, coloured11876]
  rw [child]
  dsimp only [result11874]
  have child := node11875_eq
  unfold live11875 coloured11875 at child
  try dsimp only [live11876, coloured11876]
  rw [child]
  dsimp only [result11875]
  try dsimp only [colour, result11876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11877_agree : tree11877 = literal11877 := by
  rw [tree11877_def]
  rfl
theorem node11877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11877 live11877 coloured11877 = result11877 := by
  rw [tree11877_def]
  try dsimp only [colour, result11877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11878_agree : tree11878 = literal11878 := by
  rw [tree11878_def, tree11876_agree, tree11877_agree]
  rfl
theorem node11878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11878 live11878 coloured11878 = result11878 := by
  rw [tree11878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11876_eq
  unfold live11876 coloured11876 at child
  try dsimp only [live11878, coloured11878]
  rw [child]
  dsimp only [result11876]
  have child := node11877_eq
  unfold live11877 coloured11877 at child
  try dsimp only [live11878, coloured11878]
  rw [child]
  dsimp only [result11877]
  try dsimp only [colour, result11878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11879_agree : tree11879 = literal11879 := by
  rw [tree11879_def]
  rfl
theorem node11879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11879 live11879 coloured11879 = result11879 := by
  rw [tree11879_def]
  try dsimp only [colour, result11879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11880_agree : tree11880 = literal11880 := by
  rw [tree11880_def, tree11878_agree, tree11879_agree]
  rfl
theorem node11880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11880 live11880 coloured11880 = result11880 := by
  rw [tree11880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11878_eq
  unfold live11878 coloured11878 at child
  try dsimp only [live11880, coloured11880]
  rw [child]
  dsimp only [result11878]
  have child := node11879_eq
  unfold live11879 coloured11879 at child
  try dsimp only [live11880, coloured11880]
  rw [child]
  dsimp only [result11879]
  try dsimp only [colour, result11880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11881_agree : tree11881 = literal11881 := by
  rw [tree11881_def]
  rfl
theorem node11881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11881 live11881 coloured11881 = result11881 := by
  rw [tree11881_def]
  try dsimp only [colour, result11881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11882_agree : tree11882 = literal11882 := by
  rw [tree11882_def, tree11880_agree, tree11881_agree]
  rfl
theorem node11882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11882 live11882 coloured11882 = result11882 := by
  rw [tree11882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11880_eq
  unfold live11880 coloured11880 at child
  try dsimp only [live11882, coloured11882]
  rw [child]
  dsimp only [result11880]
  have child := node11881_eq
  unfold live11881 coloured11881 at child
  try dsimp only [live11882, coloured11882]
  rw [child]
  dsimp only [result11881]
  try dsimp only [colour, result11882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11883_agree : tree11883 = literal11883 := by
  rw [tree11883_def]
  rfl
theorem node11883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11883 live11883 coloured11883 = result11883 := by
  rw [tree11883_def]
  try dsimp only [colour, result11883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11884_agree : tree11884 = literal11884 := by
  rw [tree11884_def, tree11882_agree, tree11883_agree]
  rfl
theorem node11884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11884 live11884 coloured11884 = result11884 := by
  rw [tree11884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11882_eq
  unfold live11882 coloured11882 at child
  try dsimp only [live11884, coloured11884]
  rw [child]
  dsimp only [result11882]
  have child := node11883_eq
  unfold live11883 coloured11883 at child
  try dsimp only [live11884, coloured11884]
  rw [child]
  dsimp only [result11883]
  try dsimp only [colour, result11884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11885_agree : tree11885 = literal11885 := by
  rw [tree11885_def]
  rfl
theorem node11885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11885 live11885 coloured11885 = result11885 := by
  rw [tree11885_def]
  try dsimp only [colour, result11885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11886_agree : tree11886 = literal11886 := by
  rw [tree11886_def, tree11884_agree, tree11885_agree]
  rfl
theorem node11886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11886 live11886 coloured11886 = result11886 := by
  rw [tree11886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11884_eq
  unfold live11884 coloured11884 at child
  try dsimp only [live11886, coloured11886]
  rw [child]
  dsimp only [result11884]
  have child := node11885_eq
  unfold live11885 coloured11885 at child
  try dsimp only [live11886, coloured11886]
  rw [child]
  dsimp only [result11885]
  try dsimp only [colour, result11886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11887_agree : tree11887 = literal11887 := by
  rw [tree11887_def]
  rfl
theorem node11887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11887 live11887 coloured11887 = result11887 := by
  rw [tree11887_def]
  try dsimp only [colour, result11887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11888_agree : tree11888 = literal11888 := by
  rw [tree11888_def, tree11886_agree, tree11887_agree]
  rfl
theorem node11888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11888 live11888 coloured11888 = result11888 := by
  rw [tree11888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11886_eq
  unfold live11886 coloured11886 at child
  try dsimp only [live11888, coloured11888]
  rw [child]
  dsimp only [result11886]
  have child := node11887_eq
  unfold live11887 coloured11887 at child
  try dsimp only [live11888, coloured11888]
  rw [child]
  dsimp only [result11887]
  try dsimp only [colour, result11888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11889_agree : tree11889 = literal11889 := by
  rw [tree11889_def]
  rfl
theorem node11889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11889 live11889 coloured11889 = result11889 := by
  rw [tree11889_def]
  try dsimp only [colour, result11889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11890_agree : tree11890 = literal11890 := by
  rw [tree11890_def, tree11888_agree, tree11889_agree]
  rfl
theorem node11890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11890 live11890 coloured11890 = result11890 := by
  rw [tree11890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11888_eq
  unfold live11888 coloured11888 at child
  try dsimp only [live11890, coloured11890]
  rw [child]
  dsimp only [result11888]
  have child := node11889_eq
  unfold live11889 coloured11889 at child
  try dsimp only [live11890, coloured11890]
  rw [child]
  dsimp only [result11889]
  try dsimp only [colour, result11890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11891_agree : tree11891 = literal11891 := by
  rw [tree11891_def]
  rfl
theorem node11891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11891 live11891 coloured11891 = result11891 := by
  rw [tree11891_def]
  try dsimp only [colour, result11891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11892_agree : tree11892 = literal11892 := by
  rw [tree11892_def, tree11890_agree, tree11891_agree]
  rfl
theorem node11892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11892 live11892 coloured11892 = result11892 := by
  rw [tree11892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11890_eq
  unfold live11890 coloured11890 at child
  try dsimp only [live11892, coloured11892]
  rw [child]
  dsimp only [result11890]
  have child := node11891_eq
  unfold live11891 coloured11891 at child
  try dsimp only [live11892, coloured11892]
  rw [child]
  dsimp only [result11891]
  try dsimp only [colour, result11892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11893_agree : tree11893 = literal11893 := by
  rw [tree11893_def]
  rfl
theorem node11893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11893 live11893 coloured11893 = result11893 := by
  rw [tree11893_def]
  try dsimp only [colour, result11893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11894_agree : tree11894 = literal11894 := by
  rw [tree11894_def, tree11892_agree, tree11893_agree]
  rfl
theorem node11894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11894 live11894 coloured11894 = result11894 := by
  rw [tree11894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11892_eq
  unfold live11892 coloured11892 at child
  try dsimp only [live11894, coloured11894]
  rw [child]
  dsimp only [result11892]
  have child := node11893_eq
  unfold live11893 coloured11893 at child
  try dsimp only [live11894, coloured11894]
  rw [child]
  dsimp only [result11893]
  try dsimp only [colour, result11894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11895_agree : tree11895 = literal11895 := by
  rw [tree11895_def]
  rfl
theorem node11895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11895 live11895 coloured11895 = result11895 := by
  rw [tree11895_def]
  try dsimp only [colour, result11895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11896_agree : tree11896 = literal11896 := by
  rw [tree11896_def, tree11894_agree, tree11895_agree]
  rfl
theorem node11896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11896 live11896 coloured11896 = result11896 := by
  rw [tree11896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11894_eq
  unfold live11894 coloured11894 at child
  try dsimp only [live11896, coloured11896]
  rw [child]
  dsimp only [result11894]
  have child := node11895_eq
  unfold live11895 coloured11895 at child
  try dsimp only [live11896, coloured11896]
  rw [child]
  dsimp only [result11895]
  try dsimp only [colour, result11896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11897_agree : tree11897 = literal11897 := by
  rw [tree11897_def]
  rfl
theorem node11897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11897 live11897 coloured11897 = result11897 := by
  rw [tree11897_def]
  try dsimp only [colour, result11897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11898_agree : tree11898 = literal11898 := by
  rw [tree11898_def, tree11896_agree, tree11897_agree]
  rfl
theorem node11898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11898 live11898 coloured11898 = result11898 := by
  rw [tree11898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11896_eq
  unfold live11896 coloured11896 at child
  try dsimp only [live11898, coloured11898]
  rw [child]
  dsimp only [result11896]
  have child := node11897_eq
  unfold live11897 coloured11897 at child
  try dsimp only [live11898, coloured11898]
  rw [child]
  dsimp only [result11897]
  try dsimp only [colour, result11898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11899_agree : tree11899 = literal11899 := by
  rw [tree11899_def]
  rfl
theorem node11899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11899 live11899 coloured11899 = result11899 := by
  rw [tree11899_def]
  try dsimp only [colour, result11899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11900_agree : tree11900 = literal11900 := by
  rw [tree11900_def, tree11898_agree, tree11899_agree]
  rfl
theorem node11900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11900 live11900 coloured11900 = result11900 := by
  rw [tree11900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11898_eq
  unfold live11898 coloured11898 at child
  try dsimp only [live11900, coloured11900]
  rw [child]
  dsimp only [result11898]
  have child := node11899_eq
  unfold live11899 coloured11899 at child
  try dsimp only [live11900, coloured11900]
  rw [child]
  dsimp only [result11899]
  try dsimp only [colour, result11900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11901_agree : tree11901 = literal11901 := by
  rw [tree11901_def]
  rfl
theorem node11901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11901 live11901 coloured11901 = result11901 := by
  rw [tree11901_def]
  try dsimp only [colour, result11901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11902_agree : tree11902 = literal11902 := by
  rw [tree11902_def, tree11900_agree, tree11901_agree]
  rfl
theorem node11902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11902 live11902 coloured11902 = result11902 := by
  rw [tree11902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node11900_eq
  unfold live11900 coloured11900 at child
  try dsimp only [live11902, coloured11902]
  rw [child]
  dsimp only [result11900]
  have child := node11901_eq
  unfold live11901 coloured11901 at child
  try dsimp only [live11902, coloured11902]
  rw [child]
  dsimp only [result11901]
  try dsimp only [colour, result11902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree11903_agree : tree11903 = literal11903 := by
  rw [tree11903_def]
  rfl
theorem node11903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11903 live11903 coloured11903 = result11903 := by
  rw [tree11903_def]
  try dsimp only [colour, result11903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
