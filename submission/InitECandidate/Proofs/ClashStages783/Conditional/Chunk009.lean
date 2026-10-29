import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages783.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages783
theorem tree864_agree_conditional : tree864 = literal864 := by
  rw [tree864_def]
  rfl
theorem node864_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree864 live864 coloured864 = result864 := by
  rw [tree864_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree865_agree_conditional
    (child0 : tree863 = literal863)
    (child1 : tree864 = literal864) : tree865 = literal865 := by
  rw [tree865_def, child0, child1]
  rfl
theorem node865_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree863 live863 coloured863 = result863)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree864 live864 coloured864 = result864) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree865 live865 coloured865 = result865 := by
  rw [tree865_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live863 coloured863 at child
  try dsimp only [live865, coloured865]
  rw [child]
  dsimp only [result863]
  have child := child1
  unfold live864 coloured864 at child
  try dsimp only [live865, coloured865]
  rw [child]
  dsimp only [result864]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree866_agree_conditional : tree866 = literal866 := by
  rw [tree866_def]
  rfl
theorem node866_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree866 live866 coloured866 = result866 := by
  rw [tree866_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree867_agree_conditional : tree867 = literal867 := by
  rw [tree867_def]
  rfl
theorem node867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree867 live867 coloured867 = result867 := by
  rw [tree867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree868_agree_conditional
    (child0 : tree866 = literal866)
    (child1 : tree867 = literal867) : tree868 = literal868 := by
  rw [tree868_def, child0, child1]
  rfl
theorem node868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree866 live866 coloured866 = result866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree867 live867 coloured867 = result867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree868 live868 coloured868 = result868 := by
  rw [tree868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live866 coloured866 at child
  try dsimp only [live868, coloured868]
  rw [child]
  dsimp only [result866]
  have child := child1
  unfold live867 coloured867 at child
  try dsimp only [live868, coloured868]
  rw [child]
  dsimp only [result867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree869_agree_conditional : tree869 = literal869 := by
  rw [tree869_def]
  rfl
theorem node869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree869 live869 coloured869 = result869 := by
  rw [tree869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree870_agree_conditional : tree870 = literal870 := by
  rw [tree870_def]
  rfl
theorem node870_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree870 live870 coloured870 = result870 := by
  rw [tree870_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree871_agree_conditional
    (child0 : tree869 = literal869)
    (child1 : tree870 = literal870) : tree871 = literal871 := by
  rw [tree871_def, child0, child1]
  rfl
theorem node871_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree869 live869 coloured869 = result869)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree870 live870 coloured870 = result870) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree871 live871 coloured871 = result871 := by
  rw [tree871_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live869 coloured869 at child
  try dsimp only [live871, coloured871]
  rw [child]
  dsimp only [result869]
  have child := child1
  unfold live870 coloured870 at child
  try dsimp only [live871, coloured871]
  rw [child]
  dsimp only [result870]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree872_agree_conditional : tree872 = literal872 := by
  rw [tree872_def]
  rfl
theorem node872_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree872 live872 coloured872 = result872 := by
  rw [tree872_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree873_agree_conditional
    (child0 : tree871 = literal871)
    (child1 : tree872 = literal872) : tree873 = literal873 := by
  rw [tree873_def, child0, child1]
  rfl
theorem node873_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree871 live871 coloured871 = result871)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree872 live872 coloured872 = result872) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree873 live873 coloured873 = result873 := by
  rw [tree873_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live871 coloured871 at child
  try dsimp only [live873, coloured873]
  rw [child]
  dsimp only [result871]
  have child := child1
  unfold live872 coloured872 at child
  try dsimp only [live873, coloured873]
  rw [child]
  dsimp only [result872]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree874_agree_conditional
    (child0 : tree868 = literal868)
    (child1 : tree873 = literal873) : tree874 = literal874 := by
  rw [tree874_def, child0, child1]
  rfl
theorem node874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree868 live868 coloured868 = result868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree873 live873 coloured873 = result873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree874 live874 coloured874 = result874 := by
  rw [tree874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live868 coloured868 at child
  try dsimp only [live874, coloured874]
  rw [child]
  dsimp only [result868]
  have child := child1
  unfold live873 coloured873 at child
  try dsimp only [live874, coloured874]
  rw [child]
  dsimp only [result873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree875_agree_conditional
    (child0 : tree865 = literal865)
    (child1 : tree874 = literal874) : tree875 = literal875 := by
  rw [tree875_def, child0, child1]
  rfl
theorem node875_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree865 live865 coloured865 = result865)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree874 live874 coloured874 = result874) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree875 live875 coloured875 = result875 := by
  rw [tree875_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live865 coloured865 at child
  try dsimp only [live875, coloured875]
  rw [child]
  dsimp only [result865]
  have child := child1
  unfold live874 coloured874 at child
  try dsimp only [live875, coloured875]
  rw [child]
  dsimp only [result874]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree876_agree_conditional : tree876 = literal876 := by
  rw [tree876_def]
  rfl
theorem node876_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree876 live876 coloured876 = result876 := by
  rw [tree876_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree877_agree_conditional
    (child0 : tree875 = literal875)
    (child1 : tree876 = literal876) : tree877 = literal877 := by
  rw [tree877_def, child0, child1]
  rfl
theorem node877_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree875 live875 coloured875 = result875)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree876 live876 coloured876 = result876) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree877 live877 coloured877 = result877 := by
  rw [tree877_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live875 coloured875 at child
  try dsimp only [live877, coloured877]
  rw [child]
  dsimp only [result875]
  have child := child1
  unfold live876 coloured876 at child
  try dsimp only [live877, coloured877]
  rw [child]
  dsimp only [result876]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree878_agree_conditional : tree878 = literal878 := by
  rw [tree878_def]
  rfl
theorem node878_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree878 live878 coloured878 = result878 := by
  rw [tree878_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree879_agree_conditional
    (child0 : tree877 = literal877)
    (child1 : tree878 = literal878) : tree879 = literal879 := by
  rw [tree879_def, child0, child1]
  rfl
theorem node879_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree877 live877 coloured877 = result877)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree878 live878 coloured878 = result878) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree879 live879 coloured879 = result879 := by
  rw [tree879_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live877 coloured877 at child
  try dsimp only [live879, coloured879]
  rw [child]
  dsimp only [result877]
  have child := child1
  unfold live878 coloured878 at child
  try dsimp only [live879, coloured879]
  rw [child]
  dsimp only [result878]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree880_agree_conditional : tree880 = literal880 := by
  rw [tree880_def]
  rfl
theorem node880_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree880 live880 coloured880 = result880 := by
  rw [tree880_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree881_agree_conditional
    (child0 : tree879 = literal879)
    (child1 : tree880 = literal880) : tree881 = literal881 := by
  rw [tree881_def, child0, child1]
  rfl
theorem node881_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree879 live879 coloured879 = result879)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree880 live880 coloured880 = result880) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree881 live881 coloured881 = result881 := by
  rw [tree881_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live879 coloured879 at child
  try dsimp only [live881, coloured881]
  rw [child]
  dsimp only [result879]
  have child := child1
  unfold live880 coloured880 at child
  try dsimp only [live881, coloured881]
  rw [child]
  dsimp only [result880]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree882_agree_conditional
    (child0 : tree476 = literal476)
    (child1 : tree881 = literal881) : tree882 = literal882 := by
  rw [tree882_def, child0, child1]
  rfl
theorem node882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree476 live476 coloured476 = result476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree881 live881 coloured881 = result881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree882 live882 coloured882 = result882 := by
  rw [tree882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live476 coloured476 at child
  try dsimp only [live882, coloured882]
  rw [child]
  dsimp only [result476]
  have child := child1
  unfold live881 coloured881 at child
  try dsimp only [live882, coloured882]
  rw [child]
  dsimp only [result881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree883_agree_conditional : tree883 = literal883 := by
  rw [tree883_def]
  rfl
theorem node883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree883 live883 coloured883 = result883 := by
  rw [tree883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree884_agree_conditional
    (child0 : tree882 = literal882)
    (child1 : tree883 = literal883) : tree884 = literal884 := by
  rw [tree884_def, child0, child1]
  rfl
theorem node884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree882 live882 coloured882 = result882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree883 live883 coloured883 = result883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree884 live884 coloured884 = result884 := by
  rw [tree884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live882 coloured882 at child
  try dsimp only [live884, coloured884]
  rw [child]
  dsimp only [result882]
  have child := child1
  unfold live883 coloured883 at child
  try dsimp only [live884, coloured884]
  rw [child]
  dsimp only [result883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree885_agree_conditional : tree885 = literal885 := by
  rw [tree885_def]
  rfl
theorem node885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree885 live885 coloured885 = result885 := by
  rw [tree885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree886_agree_conditional
    (child0 : tree884 = literal884)
    (child1 : tree885 = literal885) : tree886 = literal886 := by
  rw [tree886_def, child0, child1]
  rfl
theorem node886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree884 live884 coloured884 = result884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree885 live885 coloured885 = result885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree886 live886 coloured886 = result886 := by
  rw [tree886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live884 coloured884 at child
  try dsimp only [live886, coloured886]
  rw [child]
  dsimp only [result884]
  have child := child1
  unfold live885 coloured885 at child
  try dsimp only [live886, coloured886]
  rw [child]
  dsimp only [result885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree887_agree_conditional : tree887 = literal887 := by
  rw [tree887_def]
  rfl
theorem node887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree887 live887 coloured887 = result887 := by
  rw [tree887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree888_agree_conditional
    (child0 : tree886 = literal886)
    (child1 : tree887 = literal887) : tree888 = literal888 := by
  rw [tree888_def, child0, child1]
  rfl
theorem node888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree886 live886 coloured886 = result886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree887 live887 coloured887 = result887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree888 live888 coloured888 = result888 := by
  rw [tree888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live886 coloured886 at child
  try dsimp only [live888, coloured888]
  rw [child]
  dsimp only [result886]
  have child := child1
  unfold live887 coloured887 at child
  try dsimp only [live888, coloured888]
  rw [child]
  dsimp only [result887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree889_agree_conditional : tree889 = literal889 := by
  rw [tree889_def]
  rfl
theorem node889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree889 live889 coloured889 = result889 := by
  rw [tree889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree890_agree_conditional : tree890 = literal890 := by
  rw [tree890_def]
  rfl
theorem node890_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree890 live890 coloured890 = result890 := by
  rw [tree890_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree891_agree_conditional
    (child0 : tree889 = literal889)
    (child1 : tree890 = literal890) : tree891 = literal891 := by
  rw [tree891_def, child0, child1]
  rfl
theorem node891_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree889 live889 coloured889 = result889)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree890 live890 coloured890 = result890) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree891 live891 coloured891 = result891 := by
  rw [tree891_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live889 coloured889 at child
  try dsimp only [live891, coloured891]
  rw [child]
  dsimp only [result889]
  have child := child1
  unfold live890 coloured890 at child
  try dsimp only [live891, coloured891]
  rw [child]
  dsimp only [result890]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree892_agree_conditional : tree892 = literal892 := by
  rw [tree892_def]
  rfl
theorem node892_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree892 live892 coloured892 = result892 := by
  rw [tree892_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree893_agree_conditional
    (child0 : tree891 = literal891)
    (child1 : tree892 = literal892) : tree893 = literal893 := by
  rw [tree893_def, child0, child1]
  rfl
theorem node893_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree891 live891 coloured891 = result891)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree892 live892 coloured892 = result892) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree893 live893 coloured893 = result893 := by
  rw [tree893_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live891 coloured891 at child
  try dsimp only [live893, coloured893]
  rw [child]
  dsimp only [result891]
  have child := child1
  unfold live892 coloured892 at child
  try dsimp only [live893, coloured893]
  rw [child]
  dsimp only [result892]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree894_agree_conditional : tree894 = literal894 := by
  rw [tree894_def]
  rfl
theorem node894_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree894 live894 coloured894 = result894 := by
  rw [tree894_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree895_agree_conditional : tree895 = literal895 := by
  rw [tree895_def]
  rfl
theorem node895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree895 live895 coloured895 = result895 := by
  rw [tree895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree896_agree_conditional
    (child0 : tree894 = literal894)
    (child1 : tree895 = literal895) : tree896 = literal896 := by
  rw [tree896_def, child0, child1]
  rfl
theorem node896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree894 live894 coloured894 = result894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree895 live895 coloured895 = result895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree896 live896 coloured896 = result896 := by
  rw [tree896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live894 coloured894 at child
  try dsimp only [live896, coloured896]
  rw [child]
  dsimp only [result894]
  have child := child1
  unfold live895 coloured895 at child
  try dsimp only [live896, coloured896]
  rw [child]
  dsimp only [result895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree897_agree_conditional : tree897 = literal897 := by
  rw [tree897_def]
  rfl
theorem node897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree897 live897 coloured897 = result897 := by
  rw [tree897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree898_agree_conditional
    (child0 : tree896 = literal896)
    (child1 : tree897 = literal897) : tree898 = literal898 := by
  rw [tree898_def, child0, child1]
  rfl
theorem node898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree896 live896 coloured896 = result896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree897 live897 coloured897 = result897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree898 live898 coloured898 = result898 := by
  rw [tree898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live896 coloured896 at child
  try dsimp only [live898, coloured898]
  rw [child]
  dsimp only [result896]
  have child := child1
  unfold live897 coloured897 at child
  try dsimp only [live898, coloured898]
  rw [child]
  dsimp only [result897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree899_agree_conditional
    (child0 : tree893 = literal893)
    (child1 : tree898 = literal898) : tree899 = literal899 := by
  rw [tree899_def, child0, child1]
  rfl
theorem node899_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree893 live893 coloured893 = result893)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree898 live898 coloured898 = result898) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree899 live899 coloured899 = result899 := by
  rw [tree899_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live893 coloured893 at child
  try dsimp only [live899, coloured899]
  rw [child]
  dsimp only [result893]
  have child := child1
  unfold live898 coloured898 at child
  try dsimp only [live899, coloured899]
  rw [child]
  dsimp only [result898]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree900_agree_conditional : tree900 = literal900 := by
  rw [tree900_def]
  rfl
theorem node900_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree900 live900 coloured900 = result900 := by
  rw [tree900_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree901_agree_conditional
    (child0 : tree899 = literal899)
    (child1 : tree900 = literal900) : tree901 = literal901 := by
  rw [tree901_def, child0, child1]
  rfl
theorem node901_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree899 live899 coloured899 = result899)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree900 live900 coloured900 = result900) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree901 live901 coloured901 = result901 := by
  rw [tree901_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live899 coloured899 at child
  try dsimp only [live901, coloured901]
  rw [child]
  dsimp only [result899]
  have child := child1
  unfold live900 coloured900 at child
  try dsimp only [live901, coloured901]
  rw [child]
  dsimp only [result900]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree902_agree_conditional
    (child0 : tree888 = literal888)
    (child1 : tree901 = literal901) : tree902 = literal902 := by
  rw [tree902_def, child0, child1]
  rfl
theorem node902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree888 live888 coloured888 = result888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree901 live901 coloured901 = result901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree902 live902 coloured902 = result902 := by
  rw [tree902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live888 coloured888 at child
  try dsimp only [live902, coloured902]
  rw [child]
  dsimp only [result888]
  have child := child1
  unfold live901 coloured901 at child
  try dsimp only [live902, coloured902]
  rw [child]
  dsimp only [result901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree903_agree_conditional : tree903 = literal903 := by
  rw [tree903_def]
  rfl
theorem node903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree903 live903 coloured903 = result903 := by
  rw [tree903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree904_agree_conditional
    (child0 : tree902 = literal902)
    (child1 : tree903 = literal903) : tree904 = literal904 := by
  rw [tree904_def, child0, child1]
  rfl
theorem node904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree902 live902 coloured902 = result902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree903 live903 coloured903 = result903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree904 live904 coloured904 = result904 := by
  rw [tree904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live902 coloured902 at child
  try dsimp only [live904, coloured904]
  rw [child]
  dsimp only [result902]
  have child := child1
  unfold live903 coloured903 at child
  try dsimp only [live904, coloured904]
  rw [child]
  dsimp only [result903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree905_agree_conditional : tree905 = literal905 := by
  rw [tree905_def]
  rfl
theorem node905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree905 live905 coloured905 = result905 := by
  rw [tree905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree906_agree_conditional
    (child0 : tree904 = literal904)
    (child1 : tree905 = literal905) : tree906 = literal906 := by
  rw [tree906_def, child0, child1]
  rfl
theorem node906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree904 live904 coloured904 = result904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree905 live905 coloured905 = result905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree906 live906 coloured906 = result906 := by
  rw [tree906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live904 coloured904 at child
  try dsimp only [live906, coloured906]
  rw [child]
  dsimp only [result904]
  have child := child1
  unfold live905 coloured905 at child
  try dsimp only [live906, coloured906]
  rw [child]
  dsimp only [result905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree907_agree_conditional : tree907 = literal907 := by
  rw [tree907_def]
  rfl
theorem node907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree907 live907 coloured907 = result907 := by
  rw [tree907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree908_agree_conditional
    (child0 : tree906 = literal906)
    (child1 : tree907 = literal907) : tree908 = literal908 := by
  rw [tree908_def, child0, child1]
  rfl
theorem node908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree906 live906 coloured906 = result906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree907 live907 coloured907 = result907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree908 live908 coloured908 = result908 := by
  rw [tree908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live906 coloured906 at child
  try dsimp only [live908, coloured908]
  rw [child]
  dsimp only [result906]
  have child := child1
  unfold live907 coloured907 at child
  try dsimp only [live908, coloured908]
  rw [child]
  dsimp only [result907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree909_agree_conditional : tree909 = literal909 := by
  rw [tree909_def]
  rfl
theorem node909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree909 live909 coloured909 = result909 := by
  rw [tree909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree910_agree_conditional : tree910 = literal910 := by
  rw [tree910_def]
  rfl
theorem node910_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree910 live910 coloured910 = result910 := by
  rw [tree910_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree911_agree_conditional
    (child0 : tree909 = literal909)
    (child1 : tree910 = literal910) : tree911 = literal911 := by
  rw [tree911_def, child0, child1]
  rfl
theorem node911_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree909 live909 coloured909 = result909)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree910 live910 coloured910 = result910) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree911 live911 coloured911 = result911 := by
  rw [tree911_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live909 coloured909 at child
  try dsimp only [live911, coloured911]
  rw [child]
  dsimp only [result909]
  have child := child1
  unfold live910 coloured910 at child
  try dsimp only [live911, coloured911]
  rw [child]
  dsimp only [result910]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree912_agree_conditional : tree912 = literal912 := by
  rw [tree912_def]
  rfl
theorem node912_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree912 live912 coloured912 = result912 := by
  rw [tree912_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree913_agree_conditional
    (child0 : tree911 = literal911)
    (child1 : tree912 = literal912) : tree913 = literal913 := by
  rw [tree913_def, child0, child1]
  rfl
theorem node913_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree911 live911 coloured911 = result911)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree912 live912 coloured912 = result912) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree913 live913 coloured913 = result913 := by
  rw [tree913_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live911 coloured911 at child
  try dsimp only [live913, coloured913]
  rw [child]
  dsimp only [result911]
  have child := child1
  unfold live912 coloured912 at child
  try dsimp only [live913, coloured913]
  rw [child]
  dsimp only [result912]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree914_agree_conditional : tree914 = literal914 := by
  rw [tree914_def]
  rfl
theorem node914_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree914 live914 coloured914 = result914 := by
  rw [tree914_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree915_agree_conditional : tree915 = literal915 := by
  rw [tree915_def]
  rfl
theorem node915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree915 live915 coloured915 = result915 := by
  rw [tree915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree916_agree_conditional
    (child0 : tree914 = literal914)
    (child1 : tree915 = literal915) : tree916 = literal916 := by
  rw [tree916_def, child0, child1]
  rfl
theorem node916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree914 live914 coloured914 = result914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree915 live915 coloured915 = result915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree916 live916 coloured916 = result916 := by
  rw [tree916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live914 coloured914 at child
  try dsimp only [live916, coloured916]
  rw [child]
  dsimp only [result914]
  have child := child1
  unfold live915 coloured915 at child
  try dsimp only [live916, coloured916]
  rw [child]
  dsimp only [result915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree917_agree_conditional : tree917 = literal917 := by
  rw [tree917_def]
  rfl
theorem node917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree917 live917 coloured917 = result917 := by
  rw [tree917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree918_agree_conditional
    (child0 : tree916 = literal916)
    (child1 : tree917 = literal917) : tree918 = literal918 := by
  rw [tree918_def, child0, child1]
  rfl
theorem node918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree916 live916 coloured916 = result916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree917 live917 coloured917 = result917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree918 live918 coloured918 = result918 := by
  rw [tree918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live916 coloured916 at child
  try dsimp only [live918, coloured918]
  rw [child]
  dsimp only [result916]
  have child := child1
  unfold live917 coloured917 at child
  try dsimp only [live918, coloured918]
  rw [child]
  dsimp only [result917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree919_agree_conditional
    (child0 : tree913 = literal913)
    (child1 : tree918 = literal918) : tree919 = literal919 := by
  rw [tree919_def, child0, child1]
  rfl
theorem node919_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree913 live913 coloured913 = result913)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree918 live918 coloured918 = result918) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree919 live919 coloured919 = result919 := by
  rw [tree919_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live913 coloured913 at child
  try dsimp only [live919, coloured919]
  rw [child]
  dsimp only [result913]
  have child := child1
  unfold live918 coloured918 at child
  try dsimp only [live919, coloured919]
  rw [child]
  dsimp only [result918]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree920_agree_conditional : tree920 = literal920 := by
  rw [tree920_def]
  rfl
theorem node920_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree920 live920 coloured920 = result920 := by
  rw [tree920_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree921_agree_conditional
    (child0 : tree919 = literal919)
    (child1 : tree920 = literal920) : tree921 = literal921 := by
  rw [tree921_def, child0, child1]
  rfl
theorem node921_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree919 live919 coloured919 = result919)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree920 live920 coloured920 = result920) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree921 live921 coloured921 = result921 := by
  rw [tree921_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live919 coloured919 at child
  try dsimp only [live921, coloured921]
  rw [child]
  dsimp only [result919]
  have child := child1
  unfold live920 coloured920 at child
  try dsimp only [live921, coloured921]
  rw [child]
  dsimp only [result920]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree922_agree_conditional
    (child0 : tree908 = literal908)
    (child1 : tree921 = literal921) : tree922 = literal922 := by
  rw [tree922_def, child0, child1]
  rfl
theorem node922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree908 live908 coloured908 = result908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree921 live921 coloured921 = result921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree922 live922 coloured922 = result922 := by
  rw [tree922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live908 coloured908 at child
  try dsimp only [live922, coloured922]
  rw [child]
  dsimp only [result908]
  have child := child1
  unfold live921 coloured921 at child
  try dsimp only [live922, coloured922]
  rw [child]
  dsimp only [result921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree923_agree_conditional : tree923 = literal923 := by
  rw [tree923_def]
  rfl
theorem node923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree923 live923 coloured923 = result923 := by
  rw [tree923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree924_agree_conditional
    (child0 : tree922 = literal922)
    (child1 : tree923 = literal923) : tree924 = literal924 := by
  rw [tree924_def, child0, child1]
  rfl
theorem node924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree922 live922 coloured922 = result922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree923 live923 coloured923 = result923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree924 live924 coloured924 = result924 := by
  rw [tree924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live922 coloured922 at child
  try dsimp only [live924, coloured924]
  rw [child]
  dsimp only [result922]
  have child := child1
  unfold live923 coloured923 at child
  try dsimp only [live924, coloured924]
  rw [child]
  dsimp only [result923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree925_agree_conditional : tree925 = literal925 := by
  rw [tree925_def]
  rfl
theorem node925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree925 live925 coloured925 = result925 := by
  rw [tree925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree926_agree_conditional
    (child0 : tree924 = literal924)
    (child1 : tree925 = literal925) : tree926 = literal926 := by
  rw [tree926_def, child0, child1]
  rfl
theorem node926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree924 live924 coloured924 = result924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree925 live925 coloured925 = result925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree926 live926 coloured926 = result926 := by
  rw [tree926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live924 coloured924 at child
  try dsimp only [live926, coloured926]
  rw [child]
  dsimp only [result924]
  have child := child1
  unfold live925 coloured925 at child
  try dsimp only [live926, coloured926]
  rw [child]
  dsimp only [result925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree927_agree_conditional : tree927 = literal927 := by
  rw [tree927_def]
  rfl
theorem node927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree927 live927 coloured927 = result927 := by
  rw [tree927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree928_agree_conditional
    (child0 : tree926 = literal926)
    (child1 : tree927 = literal927) : tree928 = literal928 := by
  rw [tree928_def, child0, child1]
  rfl
theorem node928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree926 live926 coloured926 = result926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree927 live927 coloured927 = result927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree928 live928 coloured928 = result928 := by
  rw [tree928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live926 coloured926 at child
  try dsimp only [live928, coloured928]
  rw [child]
  dsimp only [result926]
  have child := child1
  unfold live927 coloured927 at child
  try dsimp only [live928, coloured928]
  rw [child]
  dsimp only [result927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree929_agree_conditional : tree929 = literal929 := by
  rw [tree929_def]
  rfl
theorem node929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree929 live929 coloured929 = result929 := by
  rw [tree929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree930_agree_conditional : tree930 = literal930 := by
  rw [tree930_def]
  rfl
theorem node930_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree930 live930 coloured930 = result930 := by
  rw [tree930_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree931_agree_conditional
    (child0 : tree929 = literal929)
    (child1 : tree930 = literal930) : tree931 = literal931 := by
  rw [tree931_def, child0, child1]
  rfl
theorem node931_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree929 live929 coloured929 = result929)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree930 live930 coloured930 = result930) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree931 live931 coloured931 = result931 := by
  rw [tree931_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live929 coloured929 at child
  try dsimp only [live931, coloured931]
  rw [child]
  dsimp only [result929]
  have child := child1
  unfold live930 coloured930 at child
  try dsimp only [live931, coloured931]
  rw [child]
  dsimp only [result930]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree932_agree_conditional : tree932 = literal932 := by
  rw [tree932_def]
  rfl
theorem node932_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree932 live932 coloured932 = result932 := by
  rw [tree932_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree933_agree_conditional : tree933 = literal933 := by
  rw [tree933_def]
  rfl
theorem node933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree933 live933 coloured933 = result933 := by
  rw [tree933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree934_agree_conditional
    (child0 : tree932 = literal932)
    (child1 : tree933 = literal933) : tree934 = literal934 := by
  rw [tree934_def, child0, child1]
  rfl
theorem node934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree932 live932 coloured932 = result932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree933 live933 coloured933 = result933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree934 live934 coloured934 = result934 := by
  rw [tree934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live932 coloured932 at child
  try dsimp only [live934, coloured934]
  rw [child]
  dsimp only [result932]
  have child := child1
  unfold live933 coloured933 at child
  try dsimp only [live934, coloured934]
  rw [child]
  dsimp only [result933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree935_agree_conditional : tree935 = literal935 := by
  rw [tree935_def]
  rfl
theorem node935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree935 live935 coloured935 = result935 := by
  rw [tree935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree936_agree_conditional
    (child0 : tree934 = literal934)
    (child1 : tree935 = literal935) : tree936 = literal936 := by
  rw [tree936_def, child0, child1]
  rfl
theorem node936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree934 live934 coloured934 = result934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree935 live935 coloured935 = result935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree936 live936 coloured936 = result936 := by
  rw [tree936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live934 coloured934 at child
  try dsimp only [live936, coloured936]
  rw [child]
  dsimp only [result934]
  have child := child1
  unfold live935 coloured935 at child
  try dsimp only [live936, coloured936]
  rw [child]
  dsimp only [result935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree937_agree_conditional
    (child0 : tree931 = literal931)
    (child1 : tree936 = literal936) : tree937 = literal937 := by
  rw [tree937_def, child0, child1]
  rfl
theorem node937_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree931 live931 coloured931 = result931)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree936 live936 coloured936 = result936) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree937 live937 coloured937 = result937 := by
  rw [tree937_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live931 coloured931 at child
  try dsimp only [live937, coloured937]
  rw [child]
  dsimp only [result931]
  have child := child1
  unfold live936 coloured936 at child
  try dsimp only [live937, coloured937]
  rw [child]
  dsimp only [result936]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree938_agree_conditional
    (child0 : tree928 = literal928)
    (child1 : tree937 = literal937) : tree938 = literal938 := by
  rw [tree938_def, child0, child1]
  rfl
theorem node938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree928 live928 coloured928 = result928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree937 live937 coloured937 = result937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree938 live938 coloured938 = result938 := by
  rw [tree938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live928 coloured928 at child
  try dsimp only [live938, coloured938]
  rw [child]
  dsimp only [result928]
  have child := child1
  unfold live937 coloured937 at child
  try dsimp only [live938, coloured938]
  rw [child]
  dsimp only [result937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree939_agree_conditional : tree939 = literal939 := by
  rw [tree939_def]
  rfl
theorem node939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree939 live939 coloured939 = result939 := by
  rw [tree939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree940_agree_conditional
    (child0 : tree938 = literal938)
    (child1 : tree939 = literal939) : tree940 = literal940 := by
  rw [tree940_def, child0, child1]
  rfl
theorem node940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree938 live938 coloured938 = result938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree939 live939 coloured939 = result939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree940 live940 coloured940 = result940 := by
  rw [tree940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live938 coloured938 at child
  try dsimp only [live940, coloured940]
  rw [child]
  dsimp only [result938]
  have child := child1
  unfold live939 coloured939 at child
  try dsimp only [live940, coloured940]
  rw [child]
  dsimp only [result939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree941_agree_conditional : tree941 = literal941 := by
  rw [tree941_def]
  rfl
theorem node941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree941 live941 coloured941 = result941 := by
  rw [tree941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree942_agree_conditional
    (child0 : tree940 = literal940)
    (child1 : tree941 = literal941) : tree942 = literal942 := by
  rw [tree942_def, child0, child1]
  rfl
theorem node942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree940 live940 coloured940 = result940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree941 live941 coloured941 = result941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree942 live942 coloured942 = result942 := by
  rw [tree942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live940 coloured940 at child
  try dsimp only [live942, coloured942]
  rw [child]
  dsimp only [result940]
  have child := child1
  unfold live941 coloured941 at child
  try dsimp only [live942, coloured942]
  rw [child]
  dsimp only [result941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree943_agree_conditional : tree943 = literal943 := by
  rw [tree943_def]
  rfl
theorem node943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree943 live943 coloured943 = result943 := by
  rw [tree943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree944_agree_conditional
    (child0 : tree942 = literal942)
    (child1 : tree943 = literal943) : tree944 = literal944 := by
  rw [tree944_def, child0, child1]
  rfl
theorem node944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree942 live942 coloured942 = result942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree943 live943 coloured943 = result943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree944 live944 coloured944 = result944 := by
  rw [tree944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live942 coloured942 at child
  try dsimp only [live944, coloured944]
  rw [child]
  dsimp only [result942]
  have child := child1
  unfold live943 coloured943 at child
  try dsimp only [live944, coloured944]
  rw [child]
  dsimp only [result943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree945_agree_conditional : tree945 = literal945 := by
  rw [tree945_def]
  rfl
theorem node945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree945 live945 coloured945 = result945 := by
  rw [tree945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree946_agree_conditional
    (child0 : tree944 = literal944)
    (child1 : tree945 = literal945) : tree946 = literal946 := by
  rw [tree946_def, child0, child1]
  rfl
theorem node946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree944 live944 coloured944 = result944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree945 live945 coloured945 = result945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree946 live946 coloured946 = result946 := by
  rw [tree946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live944 coloured944 at child
  try dsimp only [live946, coloured946]
  rw [child]
  dsimp only [result944]
  have child := child1
  unfold live945 coloured945 at child
  try dsimp only [live946, coloured946]
  rw [child]
  dsimp only [result945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree947_agree_conditional : tree947 = literal947 := by
  rw [tree947_def]
  rfl
theorem node947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree947 live947 coloured947 = result947 := by
  rw [tree947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree948_agree_conditional
    (child0 : tree946 = literal946)
    (child1 : tree947 = literal947) : tree948 = literal948 := by
  rw [tree948_def, child0, child1]
  rfl
theorem node948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree946 live946 coloured946 = result946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree947 live947 coloured947 = result947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree948 live948 coloured948 = result948 := by
  rw [tree948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live946 coloured946 at child
  try dsimp only [live948, coloured948]
  rw [child]
  dsimp only [result946]
  have child := child1
  unfold live947 coloured947 at child
  try dsimp only [live948, coloured948]
  rw [child]
  dsimp only [result947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree949_agree_conditional : tree949 = literal949 := by
  rw [tree949_def]
  rfl
theorem node949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree949 live949 coloured949 = result949 := by
  rw [tree949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree950_agree_conditional
    (child0 : tree948 = literal948)
    (child1 : tree949 = literal949) : tree950 = literal950 := by
  rw [tree950_def, child0, child1]
  rfl
theorem node950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree948 live948 coloured948 = result948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree949 live949 coloured949 = result949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree950 live950 coloured950 = result950 := by
  rw [tree950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live948 coloured948 at child
  try dsimp only [live950, coloured950]
  rw [child]
  dsimp only [result948]
  have child := child1
  unfold live949 coloured949 at child
  try dsimp only [live950, coloured950]
  rw [child]
  dsimp only [result949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree951_agree_conditional : tree951 = literal951 := by
  rw [tree951_def]
  rfl
theorem node951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree951 live951 coloured951 = result951 := by
  rw [tree951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree952_agree_conditional
    (child0 : tree950 = literal950)
    (child1 : tree951 = literal951) : tree952 = literal952 := by
  rw [tree952_def, child0, child1]
  rfl
theorem node952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree950 live950 coloured950 = result950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree951 live951 coloured951 = result951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree952 live952 coloured952 = result952 := by
  rw [tree952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live950 coloured950 at child
  try dsimp only [live952, coloured952]
  rw [child]
  dsimp only [result950]
  have child := child1
  unfold live951 coloured951 at child
  try dsimp only [live952, coloured952]
  rw [child]
  dsimp only [result951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree953_agree_conditional : tree953 = literal953 := by
  rw [tree953_def]
  rfl
theorem node953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree953 live953 coloured953 = result953 := by
  rw [tree953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree954_agree_conditional
    (child0 : tree952 = literal952)
    (child1 : tree953 = literal953) : tree954 = literal954 := by
  rw [tree954_def, child0, child1]
  rfl
theorem node954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree952 live952 coloured952 = result952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree953 live953 coloured953 = result953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree954 live954 coloured954 = result954 := by
  rw [tree954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live952 coloured952 at child
  try dsimp only [live954, coloured954]
  rw [child]
  dsimp only [result952]
  have child := child1
  unfold live953 coloured953 at child
  try dsimp only [live954, coloured954]
  rw [child]
  dsimp only [result953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree955_agree_conditional : tree955 = literal955 := by
  rw [tree955_def]
  rfl
theorem node955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree955 live955 coloured955 = result955 := by
  rw [tree955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree956_agree_conditional
    (child0 : tree954 = literal954)
    (child1 : tree955 = literal955) : tree956 = literal956 := by
  rw [tree956_def, child0, child1]
  rfl
theorem node956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree954 live954 coloured954 = result954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree955 live955 coloured955 = result955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree956 live956 coloured956 = result956 := by
  rw [tree956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live954 coloured954 at child
  try dsimp only [live956, coloured956]
  rw [child]
  dsimp only [result954]
  have child := child1
  unfold live955 coloured955 at child
  try dsimp only [live956, coloured956]
  rw [child]
  dsimp only [result955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree957_agree_conditional : tree957 = literal957 := by
  rw [tree957_def]
  rfl
theorem node957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree957 live957 coloured957 = result957 := by
  rw [tree957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree958_agree_conditional : tree958 = literal958 := by
  rw [tree958_def]
  rfl
theorem node958_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree958 live958 coloured958 = result958 := by
  rw [tree958_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree959_agree_conditional
    (child0 : tree957 = literal957)
    (child1 : tree958 = literal958) : tree959 = literal959 := by
  rw [tree959_def, child0, child1]
  rfl
theorem node959_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree957 live957 coloured957 = result957)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree958 live958 coloured958 = result958) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree959 live959 coloured959 = result959 := by
  rw [tree959_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live957 coloured957 at child
  try dsimp only [live959, coloured959]
  rw [child]
  dsimp only [result957]
  have child := child1
  unfold live958 coloured958 at child
  try dsimp only [live959, coloured959]
  rw [child]
  dsimp only [result958]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages783
