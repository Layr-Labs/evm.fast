import InitECandidate.Proofs.ClashStages874.Proof8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages874
theorem tree864_agree : tree864 = literal864 := by
  rw [tree864_def]
  rfl
theorem node864_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree864 live864 coloured864 = result864 := by
  rw [tree864_def]
  try dsimp only [colour, result864]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree865_agree : tree865 = literal865 := by
  rw [tree865_def, tree863_agree, tree864_agree]
  rfl
theorem node865_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree865 live865 coloured865 = result865 := by
  rw [tree865_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node863_eq
  unfold live863 coloured863 at child
  try dsimp only [live865, coloured865]
  rw [child]
  dsimp only [result863]
  have child := node864_eq
  unfold live864 coloured864 at child
  try dsimp only [live865, coloured865]
  rw [child]
  dsimp only [result864]
  try dsimp only [colour, result865]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree866_agree : tree866 = literal866 := by
  rw [tree866_def]
  rfl
theorem node866_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree866 live866 coloured866 = result866 := by
  rw [tree866_def]
  try dsimp only [colour, result866]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree867_agree : tree867 = literal867 := by
  rw [tree867_def, tree865_agree, tree866_agree]
  rfl
theorem node867_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree867 live867 coloured867 = result867 := by
  rw [tree867_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node865_eq
  unfold live865 coloured865 at child
  try dsimp only [live867, coloured867]
  rw [child]
  dsimp only [result865]
  have child := node866_eq
  unfold live866 coloured866 at child
  try dsimp only [live867, coloured867]
  rw [child]
  dsimp only [result866]
  try dsimp only [colour, result867]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree868_agree : tree868 = literal868 := by
  rw [tree868_def]
  rfl
theorem node868_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree868 live868 coloured868 = result868 := by
  rw [tree868_def]
  try dsimp only [colour, result868]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree869_agree : tree869 = literal869 := by
  rw [tree869_def, tree867_agree, tree868_agree]
  rfl
theorem node869_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree869 live869 coloured869 = result869 := by
  rw [tree869_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node867_eq
  unfold live867 coloured867 at child
  try dsimp only [live869, coloured869]
  rw [child]
  dsimp only [result867]
  have child := node868_eq
  unfold live868 coloured868 at child
  try dsimp only [live869, coloured869]
  rw [child]
  dsimp only [result868]
  try dsimp only [colour, result869]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree870_agree : tree870 = literal870 := by
  rw [tree870_def]
  rfl
theorem node870_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree870 live870 coloured870 = result870 := by
  rw [tree870_def]
  try dsimp only [colour, result870]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree871_agree : tree871 = literal871 := by
  rw [tree871_def, tree869_agree, tree870_agree]
  rfl
theorem node871_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree871 live871 coloured871 = result871 := by
  rw [tree871_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node869_eq
  unfold live869 coloured869 at child
  try dsimp only [live871, coloured871]
  rw [child]
  dsimp only [result869]
  have child := node870_eq
  unfold live870 coloured870 at child
  try dsimp only [live871, coloured871]
  rw [child]
  dsimp only [result870]
  try dsimp only [colour, result871]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree872_agree : tree872 = literal872 := by
  rw [tree872_def]
  rfl
theorem node872_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree872 live872 coloured872 = result872 := by
  rw [tree872_def]
  try dsimp only [colour, result872]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree873_agree : tree873 = literal873 := by
  rw [tree873_def, tree871_agree, tree872_agree]
  rfl
theorem node873_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree873 live873 coloured873 = result873 := by
  rw [tree873_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node871_eq
  unfold live871 coloured871 at child
  try dsimp only [live873, coloured873]
  rw [child]
  dsimp only [result871]
  have child := node872_eq
  unfold live872 coloured872 at child
  try dsimp only [live873, coloured873]
  rw [child]
  dsimp only [result872]
  try dsimp only [colour, result873]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree874_agree : tree874 = literal874 := by
  rw [tree874_def]
  rfl
theorem node874_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree874 live874 coloured874 = result874 := by
  rw [tree874_def]
  try dsimp only [colour, result874]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree875_agree : tree875 = literal875 := by
  rw [tree875_def, tree873_agree, tree874_agree]
  rfl
theorem node875_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree875 live875 coloured875 = result875 := by
  rw [tree875_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node873_eq
  unfold live873 coloured873 at child
  try dsimp only [live875, coloured875]
  rw [child]
  dsimp only [result873]
  have child := node874_eq
  unfold live874 coloured874 at child
  try dsimp only [live875, coloured875]
  rw [child]
  dsimp only [result874]
  try dsimp only [colour, result875]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree876_agree : tree876 = literal876 := by
  rw [tree876_def]
  rfl
theorem node876_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree876 live876 coloured876 = result876 := by
  rw [tree876_def]
  try dsimp only [colour, result876]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree877_agree : tree877 = literal877 := by
  rw [tree877_def, tree875_agree, tree876_agree]
  rfl
theorem node877_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree877 live877 coloured877 = result877 := by
  rw [tree877_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node875_eq
  unfold live875 coloured875 at child
  try dsimp only [live877, coloured877]
  rw [child]
  dsimp only [result875]
  have child := node876_eq
  unfold live876 coloured876 at child
  try dsimp only [live877, coloured877]
  rw [child]
  dsimp only [result876]
  try dsimp only [colour, result877]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree878_agree : tree878 = literal878 := by
  rw [tree878_def]
  rfl
theorem node878_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree878 live878 coloured878 = result878 := by
  rw [tree878_def]
  try dsimp only [colour, result878]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree879_agree : tree879 = literal879 := by
  rw [tree879_def, tree877_agree, tree878_agree]
  rfl
theorem node879_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree879 live879 coloured879 = result879 := by
  rw [tree879_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node877_eq
  unfold live877 coloured877 at child
  try dsimp only [live879, coloured879]
  rw [child]
  dsimp only [result877]
  have child := node878_eq
  unfold live878 coloured878 at child
  try dsimp only [live879, coloured879]
  rw [child]
  dsimp only [result878]
  try dsimp only [colour, result879]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree880_agree : tree880 = literal880 := by
  rw [tree880_def, tree862_agree, tree879_agree]
  rfl
theorem node880_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree880 live880 coloured880 = result880 := by
  rw [tree880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node862_eq
  unfold live862 coloured862 at child
  try dsimp only [live880, coloured880]
  rw [child]
  dsimp only [result862]
  have child := node879_eq
  unfold live879 coloured879 at child
  try dsimp only [live880, coloured880]
  rw [child]
  dsimp only [result879]
  try dsimp only [colour, result880]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree881_agree : tree881 = literal881 := by
  rw [tree881_def]
  rfl
theorem node881_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree881 live881 coloured881 = result881 := by
  rw [tree881_def]
  try dsimp only [colour, result881]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree882_agree : tree882 = literal882 := by
  rw [tree882_def, tree880_agree, tree881_agree]
  rfl
theorem node882_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree882 live882 coloured882 = result882 := by
  rw [tree882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node880_eq
  unfold live880 coloured880 at child
  try dsimp only [live882, coloured882]
  rw [child]
  dsimp only [result880]
  have child := node881_eq
  unfold live881 coloured881 at child
  try dsimp only [live882, coloured882]
  rw [child]
  dsimp only [result881]
  try dsimp only [colour, result882]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree883_agree : tree883 = literal883 := by
  rw [tree883_def]
  rfl
theorem node883_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree883 live883 coloured883 = result883 := by
  rw [tree883_def]
  try dsimp only [colour, result883]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree884_agree : tree884 = literal884 := by
  rw [tree884_def, tree882_agree, tree883_agree]
  rfl
theorem node884_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree884 live884 coloured884 = result884 := by
  rw [tree884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node882_eq
  unfold live882 coloured882 at child
  try dsimp only [live884, coloured884]
  rw [child]
  dsimp only [result882]
  have child := node883_eq
  unfold live883 coloured883 at child
  try dsimp only [live884, coloured884]
  rw [child]
  dsimp only [result883]
  try dsimp only [colour, result884]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree885_agree : tree885 = literal885 := by
  rw [tree885_def]
  rfl
theorem node885_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree885 live885 coloured885 = result885 := by
  rw [tree885_def]
  try dsimp only [colour, result885]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree886_agree : tree886 = literal886 := by
  rw [tree886_def, tree884_agree, tree885_agree]
  rfl
theorem node886_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree886 live886 coloured886 = result886 := by
  rw [tree886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node884_eq
  unfold live884 coloured884 at child
  try dsimp only [live886, coloured886]
  rw [child]
  dsimp only [result884]
  have child := node885_eq
  unfold live885 coloured885 at child
  try dsimp only [live886, coloured886]
  rw [child]
  dsimp only [result885]
  try dsimp only [colour, result886]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree887_agree : tree887 = literal887 := by
  rw [tree887_def]
  rfl
theorem node887_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree887 live887 coloured887 = result887 := by
  rw [tree887_def]
  try dsimp only [colour, result887]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree888_agree : tree888 = literal888 := by
  rw [tree888_def]
  rfl
theorem node888_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree888 live888 coloured888 = result888 := by
  rw [tree888_def]
  try dsimp only [colour, result888]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree889_agree : tree889 = literal889 := by
  rw [tree889_def, tree887_agree, tree888_agree]
  rfl
theorem node889_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree889 live889 coloured889 = result889 := by
  rw [tree889_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node887_eq
  unfold live887 coloured887 at child
  try dsimp only [live889, coloured889]
  rw [child]
  dsimp only [result887]
  have child := node888_eq
  unfold live888 coloured888 at child
  try dsimp only [live889, coloured889]
  rw [child]
  dsimp only [result888]
  try dsimp only [colour, result889]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree890_agree : tree890 = literal890 := by
  rw [tree890_def]
  rfl
theorem node890_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree890 live890 coloured890 = result890 := by
  rw [tree890_def]
  try dsimp only [colour, result890]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree891_agree : tree891 = literal891 := by
  rw [tree891_def]
  rfl
theorem node891_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree891 live891 coloured891 = result891 := by
  rw [tree891_def]
  try dsimp only [colour, result891]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree892_agree : tree892 = literal892 := by
  rw [tree892_def, tree890_agree, tree891_agree]
  rfl
theorem node892_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree892 live892 coloured892 = result892 := by
  rw [tree892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node890_eq
  unfold live890 coloured890 at child
  try dsimp only [live892, coloured892]
  rw [child]
  dsimp only [result890]
  have child := node891_eq
  unfold live891 coloured891 at child
  try dsimp only [live892, coloured892]
  rw [child]
  dsimp only [result891]
  try dsimp only [colour, result892]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree893_agree : tree893 = literal893 := by
  rw [tree893_def]
  rfl
theorem node893_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree893 live893 coloured893 = result893 := by
  rw [tree893_def]
  try dsimp only [colour, result893]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree894_agree : tree894 = literal894 := by
  rw [tree894_def, tree892_agree, tree893_agree]
  rfl
theorem node894_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree894 live894 coloured894 = result894 := by
  rw [tree894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node892_eq
  unfold live892 coloured892 at child
  try dsimp only [live894, coloured894]
  rw [child]
  dsimp only [result892]
  have child := node893_eq
  unfold live893 coloured893 at child
  try dsimp only [live894, coloured894]
  rw [child]
  dsimp only [result893]
  try dsimp only [colour, result894]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree895_agree : tree895 = literal895 := by
  rw [tree895_def, tree889_agree, tree894_agree]
  rfl
theorem node895_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree895 live895 coloured895 = result895 := by
  rw [tree895_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node889_eq
  unfold live889 coloured889 at child
  try dsimp only [live895, coloured895]
  rw [child]
  dsimp only [result889]
  have child := node894_eq
  unfold live894 coloured894 at child
  try dsimp only [live895, coloured895]
  rw [child]
  dsimp only [result894]
  try dsimp only [colour, result895]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree896_agree : tree896 = literal896 := by
  rw [tree896_def, tree886_agree, tree895_agree]
  rfl
theorem node896_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree896 live896 coloured896 = result896 := by
  rw [tree896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node886_eq
  unfold live886 coloured886 at child
  try dsimp only [live896, coloured896]
  rw [child]
  dsimp only [result886]
  have child := node895_eq
  unfold live895 coloured895 at child
  try dsimp only [live896, coloured896]
  rw [child]
  dsimp only [result895]
  try dsimp only [colour, result896]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree897_agree : tree897 = literal897 := by
  rw [tree897_def]
  rfl
theorem node897_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree897 live897 coloured897 = result897 := by
  rw [tree897_def]
  try dsimp only [colour, result897]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree898_agree : tree898 = literal898 := by
  rw [tree898_def, tree896_agree, tree897_agree]
  rfl
theorem node898_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree898 live898 coloured898 = result898 := by
  rw [tree898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node896_eq
  unfold live896 coloured896 at child
  try dsimp only [live898, coloured898]
  rw [child]
  dsimp only [result896]
  have child := node897_eq
  unfold live897 coloured897 at child
  try dsimp only [live898, coloured898]
  rw [child]
  dsimp only [result897]
  try dsimp only [colour, result898]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree899_agree : tree899 = literal899 := by
  rw [tree899_def]
  rfl
theorem node899_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree899 live899 coloured899 = result899 := by
  rw [tree899_def]
  try dsimp only [colour, result899]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree900_agree : tree900 = literal900 := by
  rw [tree900_def, tree898_agree, tree899_agree]
  rfl
theorem node900_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree900 live900 coloured900 = result900 := by
  rw [tree900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node898_eq
  unfold live898 coloured898 at child
  try dsimp only [live900, coloured900]
  rw [child]
  dsimp only [result898]
  have child := node899_eq
  unfold live899 coloured899 at child
  try dsimp only [live900, coloured900]
  rw [child]
  dsimp only [result899]
  try dsimp only [colour, result900]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree901_agree : tree901 = literal901 := by
  rw [tree901_def]
  rfl
theorem node901_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree901 live901 coloured901 = result901 := by
  rw [tree901_def]
  try dsimp only [colour, result901]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree902_agree : tree902 = literal902 := by
  rw [tree902_def, tree900_agree, tree901_agree]
  rfl
theorem node902_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree902 live902 coloured902 = result902 := by
  rw [tree902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node900_eq
  unfold live900 coloured900 at child
  try dsimp only [live902, coloured902]
  rw [child]
  dsimp only [result900]
  have child := node901_eq
  unfold live901 coloured901 at child
  try dsimp only [live902, coloured902]
  rw [child]
  dsimp only [result901]
  try dsimp only [colour, result902]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree903_agree : tree903 = literal903 := by
  rw [tree903_def]
  rfl
theorem node903_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree903 live903 coloured903 = result903 := by
  rw [tree903_def]
  try dsimp only [colour, result903]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree904_agree : tree904 = literal904 := by
  rw [tree904_def, tree902_agree, tree903_agree]
  rfl
theorem node904_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree904 live904 coloured904 = result904 := by
  rw [tree904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node902_eq
  unfold live902 coloured902 at child
  try dsimp only [live904, coloured904]
  rw [child]
  dsimp only [result902]
  have child := node903_eq
  unfold live903 coloured903 at child
  try dsimp only [live904, coloured904]
  rw [child]
  dsimp only [result903]
  try dsimp only [colour, result904]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree905_agree : tree905 = literal905 := by
  rw [tree905_def]
  rfl
theorem node905_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree905 live905 coloured905 = result905 := by
  rw [tree905_def]
  try dsimp only [colour, result905]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree906_agree : tree906 = literal906 := by
  rw [tree906_def, tree904_agree, tree905_agree]
  rfl
theorem node906_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree906 live906 coloured906 = result906 := by
  rw [tree906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node904_eq
  unfold live904 coloured904 at child
  try dsimp only [live906, coloured906]
  rw [child]
  dsimp only [result904]
  have child := node905_eq
  unfold live905 coloured905 at child
  try dsimp only [live906, coloured906]
  rw [child]
  dsimp only [result905]
  try dsimp only [colour, result906]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree907_agree : tree907 = literal907 := by
  rw [tree907_def]
  rfl
theorem node907_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree907 live907 coloured907 = result907 := by
  rw [tree907_def]
  try dsimp only [colour, result907]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree908_agree : tree908 = literal908 := by
  rw [tree908_def, tree906_agree, tree907_agree]
  rfl
theorem node908_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree908 live908 coloured908 = result908 := by
  rw [tree908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node906_eq
  unfold live906 coloured906 at child
  try dsimp only [live908, coloured908]
  rw [child]
  dsimp only [result906]
  have child := node907_eq
  unfold live907 coloured907 at child
  try dsimp only [live908, coloured908]
  rw [child]
  dsimp only [result907]
  try dsimp only [colour, result908]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree909_agree : tree909 = literal909 := by
  rw [tree909_def]
  rfl
theorem node909_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree909 live909 coloured909 = result909 := by
  rw [tree909_def]
  try dsimp only [colour, result909]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree910_agree : tree910 = literal910 := by
  rw [tree910_def, tree908_agree, tree909_agree]
  rfl
theorem node910_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree910 live910 coloured910 = result910 := by
  rw [tree910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node908_eq
  unfold live908 coloured908 at child
  try dsimp only [live910, coloured910]
  rw [child]
  dsimp only [result908]
  have child := node909_eq
  unfold live909 coloured909 at child
  try dsimp only [live910, coloured910]
  rw [child]
  dsimp only [result909]
  try dsimp only [colour, result910]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree911_agree : tree911 = literal911 := by
  rw [tree911_def]
  rfl
theorem node911_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree911 live911 coloured911 = result911 := by
  rw [tree911_def]
  try dsimp only [colour, result911]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree912_agree : tree912 = literal912 := by
  rw [tree912_def, tree910_agree, tree911_agree]
  rfl
theorem node912_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree912 live912 coloured912 = result912 := by
  rw [tree912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node910_eq
  unfold live910 coloured910 at child
  try dsimp only [live912, coloured912]
  rw [child]
  dsimp only [result910]
  have child := node911_eq
  unfold live911 coloured911 at child
  try dsimp only [live912, coloured912]
  rw [child]
  dsimp only [result911]
  try dsimp only [colour, result912]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree913_agree : tree913 = literal913 := by
  rw [tree913_def]
  rfl
theorem node913_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree913 live913 coloured913 = result913 := by
  rw [tree913_def]
  try dsimp only [colour, result913]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree914_agree : tree914 = literal914 := by
  rw [tree914_def, tree912_agree, tree913_agree]
  rfl
theorem node914_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree914 live914 coloured914 = result914 := by
  rw [tree914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node912_eq
  unfold live912 coloured912 at child
  try dsimp only [live914, coloured914]
  rw [child]
  dsimp only [result912]
  have child := node913_eq
  unfold live913 coloured913 at child
  try dsimp only [live914, coloured914]
  rw [child]
  dsimp only [result913]
  try dsimp only [colour, result914]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree915_agree : tree915 = literal915 := by
  rw [tree915_def]
  rfl
theorem node915_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree915 live915 coloured915 = result915 := by
  rw [tree915_def]
  try dsimp only [colour, result915]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree916_agree : tree916 = literal916 := by
  rw [tree916_def, tree914_agree, tree915_agree]
  rfl
theorem node916_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree916 live916 coloured916 = result916 := by
  rw [tree916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node914_eq
  unfold live914 coloured914 at child
  try dsimp only [live916, coloured916]
  rw [child]
  dsimp only [result914]
  have child := node915_eq
  unfold live915 coloured915 at child
  try dsimp only [live916, coloured916]
  rw [child]
  dsimp only [result915]
  try dsimp only [colour, result916]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree917_agree : tree917 = literal917 := by
  rw [tree917_def]
  rfl
theorem node917_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree917 live917 coloured917 = result917 := by
  rw [tree917_def]
  try dsimp only [colour, result917]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree918_agree : tree918 = literal918 := by
  rw [tree918_def, tree916_agree, tree917_agree]
  rfl
theorem node918_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree918 live918 coloured918 = result918 := by
  rw [tree918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node916_eq
  unfold live916 coloured916 at child
  try dsimp only [live918, coloured918]
  rw [child]
  dsimp only [result916]
  have child := node917_eq
  unfold live917 coloured917 at child
  try dsimp only [live918, coloured918]
  rw [child]
  dsimp only [result917]
  try dsimp only [colour, result918]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree919_agree : tree919 = literal919 := by
  rw [tree919_def]
  rfl
theorem node919_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree919 live919 coloured919 = result919 := by
  rw [tree919_def]
  try dsimp only [colour, result919]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree920_agree : tree920 = literal920 := by
  rw [tree920_def, tree918_agree, tree919_agree]
  rfl
theorem node920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree920 live920 coloured920 = result920 := by
  rw [tree920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node918_eq
  unfold live918 coloured918 at child
  try dsimp only [live920, coloured920]
  rw [child]
  dsimp only [result918]
  have child := node919_eq
  unfold live919 coloured919 at child
  try dsimp only [live920, coloured920]
  rw [child]
  dsimp only [result919]
  try dsimp only [colour, result920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree921_agree : tree921 = literal921 := by
  rw [tree921_def]
  rfl
theorem node921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree921 live921 coloured921 = result921 := by
  rw [tree921_def]
  try dsimp only [colour, result921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree922_agree : tree922 = literal922 := by
  rw [tree922_def, tree920_agree, tree921_agree]
  rfl
theorem node922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree922 live922 coloured922 = result922 := by
  rw [tree922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node920_eq
  unfold live920 coloured920 at child
  try dsimp only [live922, coloured922]
  rw [child]
  dsimp only [result920]
  have child := node921_eq
  unfold live921 coloured921 at child
  try dsimp only [live922, coloured922]
  rw [child]
  dsimp only [result921]
  try dsimp only [colour, result922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree923_agree : tree923 = literal923 := by
  rw [tree923_def]
  rfl
theorem node923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree923 live923 coloured923 = result923 := by
  rw [tree923_def]
  try dsimp only [colour, result923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree924_agree : tree924 = literal924 := by
  rw [tree924_def, tree922_agree, tree923_agree]
  rfl
theorem node924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree924 live924 coloured924 = result924 := by
  rw [tree924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node922_eq
  unfold live922 coloured922 at child
  try dsimp only [live924, coloured924]
  rw [child]
  dsimp only [result922]
  have child := node923_eq
  unfold live923 coloured923 at child
  try dsimp only [live924, coloured924]
  rw [child]
  dsimp only [result923]
  try dsimp only [colour, result924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree925_agree : tree925 = literal925 := by
  rw [tree925_def]
  rfl
theorem node925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree925 live925 coloured925 = result925 := by
  rw [tree925_def]
  try dsimp only [colour, result925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree926_agree : tree926 = literal926 := by
  rw [tree926_def, tree924_agree, tree925_agree]
  rfl
theorem node926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree926 live926 coloured926 = result926 := by
  rw [tree926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node924_eq
  unfold live924 coloured924 at child
  try dsimp only [live926, coloured926]
  rw [child]
  dsimp only [result924]
  have child := node925_eq
  unfold live925 coloured925 at child
  try dsimp only [live926, coloured926]
  rw [child]
  dsimp only [result925]
  try dsimp only [colour, result926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree927_agree : tree927 = literal927 := by
  rw [tree927_def]
  rfl
theorem node927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree927 live927 coloured927 = result927 := by
  rw [tree927_def]
  try dsimp only [colour, result927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree928_agree : tree928 = literal928 := by
  rw [tree928_def, tree926_agree, tree927_agree]
  rfl
theorem node928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree928 live928 coloured928 = result928 := by
  rw [tree928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node926_eq
  unfold live926 coloured926 at child
  try dsimp only [live928, coloured928]
  rw [child]
  dsimp only [result926]
  have child := node927_eq
  unfold live927 coloured927 at child
  try dsimp only [live928, coloured928]
  rw [child]
  dsimp only [result927]
  try dsimp only [colour, result928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree929_agree : tree929 = literal929 := by
  rw [tree929_def]
  rfl
theorem node929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree929 live929 coloured929 = result929 := by
  rw [tree929_def]
  try dsimp only [colour, result929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree930_agree : tree930 = literal930 := by
  rw [tree930_def, tree928_agree, tree929_agree]
  rfl
theorem node930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree930 live930 coloured930 = result930 := by
  rw [tree930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node928_eq
  unfold live928 coloured928 at child
  try dsimp only [live930, coloured930]
  rw [child]
  dsimp only [result928]
  have child := node929_eq
  unfold live929 coloured929 at child
  try dsimp only [live930, coloured930]
  rw [child]
  dsimp only [result929]
  try dsimp only [colour, result930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree931_agree : tree931 = literal931 := by
  rw [tree931_def]
  rfl
theorem node931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree931 live931 coloured931 = result931 := by
  rw [tree931_def]
  try dsimp only [colour, result931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree932_agree : tree932 = literal932 := by
  rw [tree932_def, tree930_agree, tree931_agree]
  rfl
theorem node932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree932 live932 coloured932 = result932 := by
  rw [tree932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node930_eq
  unfold live930 coloured930 at child
  try dsimp only [live932, coloured932]
  rw [child]
  dsimp only [result930]
  have child := node931_eq
  unfold live931 coloured931 at child
  try dsimp only [live932, coloured932]
  rw [child]
  dsimp only [result931]
  try dsimp only [colour, result932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree933_agree : tree933 = literal933 := by
  rw [tree933_def, tree759_agree, tree932_agree]
  rfl
theorem node933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree933 live933 coloured933 = result933 := by
  rw [tree933_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node759_eq
  unfold live759 coloured759 at child
  try dsimp only [live933, coloured933]
  rw [child]
  dsimp only [result759]
  have child := node932_eq
  unfold live932 coloured932 at child
  try dsimp only [live933, coloured933]
  rw [child]
  dsimp only [result932]
  try dsimp only [colour, result933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree934_agree : tree934 = literal934 := by
  rw [tree934_def]
  rfl
theorem node934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree934 live934 coloured934 = result934 := by
  rw [tree934_def]
  try dsimp only [colour, result934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree935_agree : tree935 = literal935 := by
  rw [tree935_def, tree933_agree, tree934_agree]
  rfl
theorem node935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree935 live935 coloured935 = result935 := by
  rw [tree935_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node933_eq
  unfold live933 coloured933 at child
  try dsimp only [live935, coloured935]
  rw [child]
  dsimp only [result933]
  have child := node934_eq
  unfold live934 coloured934 at child
  try dsimp only [live935, coloured935]
  rw [child]
  dsimp only [result934]
  try dsimp only [colour, result935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree936_agree : tree936 = literal936 := by
  rw [tree936_def, tree700_agree, tree935_agree]
  rfl
theorem node936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree936 live936 coloured936 = result936 := by
  rw [tree936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node700_eq
  unfold live700 coloured700 at child
  try dsimp only [live936, coloured936]
  rw [child]
  dsimp only [result700]
  have child := node935_eq
  unfold live935 coloured935 at child
  try dsimp only [live936, coloured936]
  rw [child]
  dsimp only [result935]
  try dsimp only [colour, result936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree937_agree : tree937 = literal937 := by
  rw [tree937_def]
  rfl
theorem node937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree937 live937 coloured937 = result937 := by
  rw [tree937_def]
  try dsimp only [colour, result937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree938_agree : tree938 = literal938 := by
  rw [tree938_def, tree936_agree, tree937_agree]
  rfl
theorem node938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree938 live938 coloured938 = result938 := by
  rw [tree938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node936_eq
  unfold live936 coloured936 at child
  try dsimp only [live938, coloured938]
  rw [child]
  dsimp only [result936]
  have child := node937_eq
  unfold live937 coloured937 at child
  try dsimp only [live938, coloured938]
  rw [child]
  dsimp only [result937]
  try dsimp only [colour, result938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree939_agree : tree939 = literal939 := by
  rw [tree939_def]
  rfl
theorem node939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree939 live939 coloured939 = result939 := by
  rw [tree939_def]
  try dsimp only [colour, result939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree940_agree : tree940 = literal940 := by
  rw [tree940_def, tree938_agree, tree939_agree]
  rfl
theorem node940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree940 live940 coloured940 = result940 := by
  rw [tree940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node938_eq
  unfold live938 coloured938 at child
  try dsimp only [live940, coloured940]
  rw [child]
  dsimp only [result938]
  have child := node939_eq
  unfold live939 coloured939 at child
  try dsimp only [live940, coloured940]
  rw [child]
  dsimp only [result939]
  try dsimp only [colour, result940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree941_agree : tree941 = literal941 := by
  rw [tree941_def]
  rfl
theorem node941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree941 live941 coloured941 = result941 := by
  rw [tree941_def]
  try dsimp only [colour, result941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree942_agree : tree942 = literal942 := by
  rw [tree942_def, tree940_agree, tree941_agree]
  rfl
theorem node942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree942 live942 coloured942 = result942 := by
  rw [tree942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node940_eq
  unfold live940 coloured940 at child
  try dsimp only [live942, coloured942]
  rw [child]
  dsimp only [result940]
  have child := node941_eq
  unfold live941 coloured941 at child
  try dsimp only [live942, coloured942]
  rw [child]
  dsimp only [result941]
  try dsimp only [colour, result942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree943_agree : tree943 = literal943 := by
  rw [tree943_def]
  rfl
theorem node943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree943 live943 coloured943 = result943 := by
  rw [tree943_def]
  try dsimp only [colour, result943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree944_agree : tree944 = literal944 := by
  rw [tree944_def, tree942_agree, tree943_agree]
  rfl
theorem node944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree944 live944 coloured944 = result944 := by
  rw [tree944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node942_eq
  unfold live942 coloured942 at child
  try dsimp only [live944, coloured944]
  rw [child]
  dsimp only [result942]
  have child := node943_eq
  unfold live943 coloured943 at child
  try dsimp only [live944, coloured944]
  rw [child]
  dsimp only [result943]
  try dsimp only [colour, result944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree945_agree : tree945 = literal945 := by
  rw [tree945_def]
  rfl
theorem node945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree945 live945 coloured945 = result945 := by
  rw [tree945_def]
  try dsimp only [colour, result945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree946_agree : tree946 = literal946 := by
  rw [tree946_def]
  rfl
theorem node946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree946 live946 coloured946 = result946 := by
  rw [tree946_def]
  try dsimp only [colour, result946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree947_agree : tree947 = literal947 := by
  rw [tree947_def, tree945_agree, tree946_agree]
  rfl
theorem node947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree947 live947 coloured947 = result947 := by
  rw [tree947_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node945_eq
  unfold live945 coloured945 at child
  try dsimp only [live947, coloured947]
  rw [child]
  dsimp only [result945]
  have child := node946_eq
  unfold live946 coloured946 at child
  try dsimp only [live947, coloured947]
  rw [child]
  dsimp only [result946]
  try dsimp only [colour, result947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree948_agree : tree948 = literal948 := by
  rw [tree948_def]
  rfl
theorem node948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree948 live948 coloured948 = result948 := by
  rw [tree948_def]
  try dsimp only [colour, result948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree949_agree : tree949 = literal949 := by
  rw [tree949_def]
  rfl
theorem node949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree949 live949 coloured949 = result949 := by
  rw [tree949_def]
  try dsimp only [colour, result949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree950_agree : tree950 = literal950 := by
  rw [tree950_def, tree948_agree, tree949_agree]
  rfl
theorem node950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree950 live950 coloured950 = result950 := by
  rw [tree950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node948_eq
  unfold live948 coloured948 at child
  try dsimp only [live950, coloured950]
  rw [child]
  dsimp only [result948]
  have child := node949_eq
  unfold live949 coloured949 at child
  try dsimp only [live950, coloured950]
  rw [child]
  dsimp only [result949]
  try dsimp only [colour, result950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree951_agree : tree951 = literal951 := by
  rw [tree951_def, tree947_agree, tree950_agree]
  rfl
theorem node951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree951 live951 coloured951 = result951 := by
  rw [tree951_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node947_eq
  unfold live947 coloured947 at child
  try dsimp only [live951, coloured951]
  rw [child]
  dsimp only [result947]
  have child := node950_eq
  unfold live950 coloured950 at child
  try dsimp only [live951, coloured951]
  rw [child]
  dsimp only [result950]
  try dsimp only [colour, result951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree952_agree : tree952 = literal952 := by
  rw [tree952_def]
  rfl
theorem node952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree952 live952 coloured952 = result952 := by
  rw [tree952_def]
  try dsimp only [colour, result952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree953_agree : tree953 = literal953 := by
  rw [tree953_def, tree951_agree, tree952_agree]
  rfl
theorem node953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree953 live953 coloured953 = result953 := by
  rw [tree953_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node951_eq
  unfold live951 coloured951 at child
  try dsimp only [live953, coloured953]
  rw [child]
  dsimp only [result951]
  have child := node952_eq
  unfold live952 coloured952 at child
  try dsimp only [live953, coloured953]
  rw [child]
  dsimp only [result952]
  try dsimp only [colour, result953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree954_agree : tree954 = literal954 := by
  rw [tree954_def, tree944_agree, tree953_agree]
  rfl
theorem node954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree954 live954 coloured954 = result954 := by
  rw [tree954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node944_eq
  unfold live944 coloured944 at child
  try dsimp only [live954, coloured954]
  rw [child]
  dsimp only [result944]
  have child := node953_eq
  unfold live953 coloured953 at child
  try dsimp only [live954, coloured954]
  rw [child]
  dsimp only [result953]
  try dsimp only [colour, result954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree955_agree : tree955 = literal955 := by
  rw [tree955_def]
  rfl
theorem node955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree955 live955 coloured955 = result955 := by
  rw [tree955_def]
  try dsimp only [colour, result955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree956_agree : tree956 = literal956 := by
  rw [tree956_def, tree954_agree, tree955_agree]
  rfl
theorem node956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree956 live956 coloured956 = result956 := by
  rw [tree956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node954_eq
  unfold live954 coloured954 at child
  try dsimp only [live956, coloured956]
  rw [child]
  dsimp only [result954]
  have child := node955_eq
  unfold live955 coloured955 at child
  try dsimp only [live956, coloured956]
  rw [child]
  dsimp only [result955]
  try dsimp only [colour, result956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree957_agree : tree957 = literal957 := by
  rw [tree957_def]
  rfl
theorem node957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree957 live957 coloured957 = result957 := by
  rw [tree957_def]
  try dsimp only [colour, result957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree958_agree : tree958 = literal958 := by
  rw [tree958_def, tree956_agree, tree957_agree]
  rfl
theorem node958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree958 live958 coloured958 = result958 := by
  rw [tree958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node956_eq
  unfold live956 coloured956 at child
  try dsimp only [live958, coloured958]
  rw [child]
  dsimp only [result956]
  have child := node957_eq
  unfold live957 coloured957 at child
  try dsimp only [live958, coloured958]
  rw [child]
  dsimp only [result957]
  try dsimp only [colour, result958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree959_agree : tree959 = literal959 := by
  rw [tree959_def]
  rfl
theorem node959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree959 live959 coloured959 = result959 := by
  rw [tree959_def]
  try dsimp only [colour, result959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages874
