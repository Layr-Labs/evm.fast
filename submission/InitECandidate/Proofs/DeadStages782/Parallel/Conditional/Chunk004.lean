import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages782.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages782.Parallel
theorem node1024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1024 value704 value1 value2 = (output1024, value705, value1) := by
  rw [input1024_def, output1024_def]
  kernel_rfl

theorem node1025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1025 value705 value1 value2 = (output1025, value706, value1) := by
  rw [input1025_def, output1025_def]
  kernel_rfl

theorem node1026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1026 value706 value1 value2 = (output1026, value706, value1) := by
  rw [input1026_def, output1026_def]
  kernel_rfl

theorem node1027_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1027 value706 value1 value2 = (output1027, value706, value1) := by
  rw [input1027_def, output1027_def]
  kernel_rfl

theorem node1028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1028 value706 value1 value2 = (output1028, value706, value1) := by
  rw [input1028_def, output1028_def]
  kernel_rfl

theorem node1029_cond_eq
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value706 value1 value2 = (output1027, value706, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value706 value1 value2 = (output1028, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value706 value1 value2 = (output1029, value706, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1027]
  try dsimp only
  rw [child1028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1027_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value706 value1 value2 = (output1026, value706, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value706 value1 value2 = (output1029, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value706 value1 value2 = (output1030, value706, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1026]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1026_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value705 value1 value2 = (output1025, value706, value1))
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value706 value1 value2 = (output1030, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1031 value705 value1 value2 = (output1031, value706, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1025]
  try dsimp only
  rw [child1030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1025_skip, output1030_skip]
  kernel_rfl

theorem node1032_cond_eq
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value704 value1 value2 = (output1024, value705, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value705 value1 value2 = (output1031, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value704 value1 value2 = (output1032, value706, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1024]
  try dsimp only
  rw [child1031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1024_skip, output1031_skip]
  kernel_rfl

theorem node1033_cond_eq
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value703 value1 value2 = (output1023, value704, value1))
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value704 value1 value2 = (output1032, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1033 value703 value1 value2 = (output1033, value706, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1023]
  try dsimp only
  rw [child1032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1023_skip, output1032_skip]
  kernel_rfl

theorem node1034_cond_eq
    (child1022 : Flapjack.WordAlloc.removeDeadStructural input1022 value702 value1 value2 = (output1022, value703, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value703 value1 value2 = (output1033, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value702 value1 value2 = (output1034, value706, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1022]
  try dsimp only
  rw [child1033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1022_skip, output1033_skip]
  kernel_rfl

theorem node1035_cond_eq
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value701 value1 value2 = (output1021, value702, value1))
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value702 value1 value2 = (output1034, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1035 value701 value1 value2 = (output1035, value706, value1) := by
  rw [input1035_def, output1035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1021]
  try dsimp only
  rw [child1034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1021_skip, output1034_skip]
  kernel_rfl

theorem node1036_cond_eq
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value700 value1 value2 = (output1020, value701, value1))
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value701 value1 value2 = (output1035, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1036 value700 value1 value2 = (output1036, value706, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1020]
  try dsimp only
  rw [child1035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1020_skip, output1035_skip]
  kernel_rfl

theorem node1037_cond_eq
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value697 value1 value2 = (output1019, value700, value1))
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value700 value1 value2 = (output1036, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1037 value697 value1 value2 = (output1037, value706, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1019]
  try dsimp only
  rw [child1036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1019_skip, output1036_skip]
  kernel_rfl

theorem node1038_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value697 value1 value2 = (output1014, value697, value1))
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value697 value1 value2 = (output1037, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1038 value697 value1 value2 = (output1038, value706, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child1037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output1037_skip]
  kernel_rfl

theorem node1039_cond_eq
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value696 value1 value2 = (output1013, value697, value1))
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value697 value1 value2 = (output1038, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1039 value696 value1 value2 = (output1039, value706, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1013]
  try dsimp only
  rw [child1038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1013_skip, output1038_skip]
  kernel_rfl

theorem node1040_cond_eq
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value695 value1 value2 = (output1012, value696, value1))
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value696 value1 value2 = (output1039, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1040 value695 value1 value2 = (output1040, value706, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1012]
  try dsimp only
  rw [child1039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1012_skip, output1039_skip]
  kernel_rfl

theorem node1041_cond_eq
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value658 value1 value2 = (output1011, value695, value1))
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value695 value1 value2 = (output1040, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1041 value658 value1 value2 = (output1041, value706, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1011]
  try dsimp only
  rw [child1040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1011_skip, output1040_skip]
  kernel_rfl

theorem node1042_cond_eq
    (child914 : Flapjack.WordAlloc.removeDeadStructural input914 value658 value1 value2 = (output914, value658, value1))
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value658 value1 value2 = (output1041, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1042 value658 value1 value2 = (output1042, value706, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child914]
  try dsimp only
  rw [child1041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output914_skip, output1041_skip]
  kernel_rfl

theorem node1043_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value656 value1 value2 = (output913, value658, value1))
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value658 value1 value2 = (output1042, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1043 value656 value1 value2 = (output1043, value706, value1) := by
  rw [input1043_def, output1043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child1042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output1042_skip]
  kernel_rfl

theorem node1044_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value656 value1 value2 = (output908, value656, value1))
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value656 value1 value2 = (output1043, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1044 value656 value1 value2 = (output1044, value706, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child1043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output1043_skip]
  kernel_rfl

theorem node1045_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value652 value1 value2 = (output907, value656, value1))
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value656 value1 value2 = (output1044, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1045 value652 value1 value2 = (output1045, value706, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  try dsimp only
  rw [child1044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output1044_skip]
  kernel_rfl

theorem node1046_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value651 value1 value2 = (output900, value652, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value652 value1 value2 = (output1045, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value651 value1 value2 = (output1046, value706, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child1045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output1045_skip]
  kernel_rfl

theorem node1047_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value650 value1 value2 = (output899, value651, value1))
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value651 value1 value2 = (output1046, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1047 value650 value1 value2 = (output1047, value706, value1) := by
  rw [input1047_def, output1047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child1046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output1046_skip]
  kernel_rfl

theorem node1048_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value649 value1 value2 = (output898, value650, value1))
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value650 value1 value2 = (output1047, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1048 value649 value1 value2 = (output1048, value706, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child1047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output1047_skip]
  kernel_rfl

theorem node1049_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value648 value1 value2 = (output897, value649, value1))
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value649 value1 value2 = (output1048, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1049 value648 value1 value2 = (output1049, value706, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child1048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output1048_skip]
  kernel_rfl

theorem node1050_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value647 value1 value2 = (output896, value648, value1))
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value648 value1 value2 = (output1049, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1050 value647 value1 value2 = (output1050, value706, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child1049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output1049_skip]
  kernel_rfl

theorem node1051_cond_eq
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value646 value1 value2 = (output895, value647, value1))
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value647 value1 value2 = (output1050, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1051 value646 value1 value2 = (output1051, value706, value1) := by
  rw [input1051_def, output1051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child895]
  try dsimp only
  rw [child1050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output895_skip, output1050_skip]
  kernel_rfl

theorem node1052_cond_eq
    (child894 : Flapjack.WordAlloc.removeDeadStructural input894 value645 value1 value2 = (output894, value646, value1))
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value646 value1 value2 = (output1051, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1052 value645 value1 value2 = (output1052, value706, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child894]
  try dsimp only
  rw [child1051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output894_skip, output1051_skip]
  kernel_rfl

theorem node1053_cond_eq
    (child893 : Flapjack.WordAlloc.removeDeadStructural input893 value643 value1 value2 = (output893, value645, value1))
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value645 value1 value2 = (output1052, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1053 value643 value1 value2 = (output1053, value706, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child893]
  try dsimp only
  rw [child1052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output893_skip, output1052_skip]
  kernel_rfl

theorem node1054_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value642 value1 value2 = (output890, value643, value1))
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value643 value1 value2 = (output1053, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1054 value642 value1 value2 = (output1054, value706, value1) := by
  rw [input1054_def, output1054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child1053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output1053_skip]
  kernel_rfl

theorem node1055_cond_eq
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value640 value1 value2 = (output889, value642, value1))
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value642 value1 value2 = (output1054, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1055 value640 value1 value2 = (output1055, value706, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child889]
  try dsimp only
  rw [child1054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output889_skip, output1054_skip]
  kernel_rfl

theorem node1056_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value639 value1 value2 = (output886, value640, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value640 value1 value2 = (output1055, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value639 value1 value2 = (output1056, value706, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child1055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output1055_skip]
  kernel_rfl

theorem node1057_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value637 value1 value2 = (output885, value639, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value639 value1 value2 = (output1056, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value637 value1 value2 = (output1057, value706, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child1056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output1056_skip]
  kernel_rfl

theorem node1058_cond_eq
    (child882 : Flapjack.WordAlloc.removeDeadStructural input882 value636 value1 value2 = (output882, value637, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value637 value1 value2 = (output1057, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value636 value1 value2 = (output1058, value706, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child882]
  try dsimp only
  rw [child1057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output882_skip, output1057_skip]
  kernel_rfl

theorem node1059_cond_eq
    (child881 : Flapjack.WordAlloc.removeDeadStructural input881 value634 value1 value2 = (output881, value636, value1))
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value636 value1 value2 = (output1058, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1059 value634 value1 value2 = (output1059, value706, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child881]
  try dsimp only
  rw [child1058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output881_skip, output1058_skip]
  kernel_rfl

theorem node1060_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value633 value1 value2 = (output878, value634, value1))
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value634 value1 value2 = (output1059, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1060 value633 value1 value2 = (output1060, value706, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child1059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output1059_skip]
  kernel_rfl

theorem node1061_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value631 value1 value2 = (output877, value633, value1))
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value633 value1 value2 = (output1060, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1061 value631 value1 value2 = (output1061, value706, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child1060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output1060_skip]
  kernel_rfl

theorem node1062_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value630 value1 value2 = (output874, value631, value1))
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value631 value1 value2 = (output1061, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1062 value630 value1 value2 = (output1062, value706, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child1061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output1061_skip]
  kernel_rfl

theorem node1063_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value628 value1 value2 = (output873, value630, value1))
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value630 value1 value2 = (output1062, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1063 value628 value1 value2 = (output1063, value706, value1) := by
  rw [input1063_def, output1063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  try dsimp only
  rw [child1062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output873_skip, output1062_skip]
  kernel_rfl

theorem node1064_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value623 value1 value2 = (output870, value628, value1))
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value628 value1 value2 = (output1063, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1064 value623 value1 value2 = (output1064, value706, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child1063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output1063_skip]
  kernel_rfl

theorem node1065_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value622 value1 value2 = (output861, value623, value1))
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value623 value1 value2 = (output1064, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1065 value622 value1 value2 = (output1065, value706, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child1064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output1064_skip]
  kernel_rfl

theorem node1066_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value621 value1 value2 = (output860, value622, value1))
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value622 value1 value2 = (output1065, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1066 value621 value1 value2 = (output1066, value706, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child1065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output1065_skip]
  kernel_rfl

theorem node1067_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value620 value1 value2 = (output859, value621, value1))
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value621 value1 value2 = (output1066, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1067 value620 value1 value2 = (output1067, value706, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child1066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output1066_skip]
  kernel_rfl

theorem node1068_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value619 value1 value2 = (output858, value620, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value620 value1 value2 = (output1067, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value619 value1 value2 = (output1068, value706, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value618 value1 value2 = (output857, value619, value1))
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value619 value1 value2 = (output1068, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1069 value618 value1 value2 = (output1069, value706, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child1068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output1068_skip]
  kernel_rfl

theorem node1070_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value617 value1 value2 = (output856, value618, value1))
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value618 value1 value2 = (output1069, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1070 value617 value1 value2 = (output1070, value706, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child1069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output1069_skip]
  kernel_rfl

theorem node1071_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value616 value1 value2 = (output855, value617, value1))
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value617 value1 value2 = (output1070, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1071 value616 value1 value2 = (output1071, value706, value1) := by
  rw [input1071_def, output1071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child1070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output1070_skip]
  kernel_rfl

theorem node1072_cond_eq
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value614 value1 value2 = (output854, value616, value1))
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value616 value1 value2 = (output1071, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1072 value614 value1 value2 = (output1072, value706, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child854]
  try dsimp only
  rw [child1071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output854_skip, output1071_skip]
  kernel_rfl

theorem node1073_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value613 value1 value2 = (output851, value614, value1))
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value614 value1 value2 = (output1072, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1073 value613 value1 value2 = (output1073, value706, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child1072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output1072_skip]
  kernel_rfl

theorem node1074_cond_eq
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value611 value1 value2 = (output850, value613, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value613 value1 value2 = (output1073, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value611 value1 value2 = (output1074, value706, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child850]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output850_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value610 value1 value2 = (output847, value611, value1))
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value611 value1 value2 = (output1074, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1075 value610 value1 value2 = (output1075, value706, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child1074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output1074_skip]
  kernel_rfl

theorem node1076_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value608 value1 value2 = (output846, value610, value1))
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value610 value1 value2 = (output1075, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1076 value608 value1 value2 = (output1076, value706, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child1075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output1075_skip]
  kernel_rfl

theorem node1077_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value607 value1 value2 = (output843, value608, value1))
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value608 value1 value2 = (output1076, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1077 value607 value1 value2 = (output1077, value706, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  try dsimp only
  rw [child1076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output1076_skip]
  kernel_rfl

theorem node1078_cond_eq
    (child842 : Flapjack.WordAlloc.removeDeadStructural input842 value605 value1 value2 = (output842, value607, value1))
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value607 value1 value2 = (output1077, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1078 value605 value1 value2 = (output1078, value706, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child842]
  try dsimp only
  rw [child1077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output842_skip, output1077_skip]
  kernel_rfl

theorem node1079_cond_eq
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value604 value1 value2 = (output839, value605, value1))
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value605 value1 value2 = (output1078, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1079 value604 value1 value2 = (output1079, value706, value1) := by
  rw [input1079_def, output1079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child839]
  try dsimp only
  rw [child1078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output839_skip, output1078_skip]
  kernel_rfl

theorem node1080_cond_eq
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value602 value1 value2 = (output838, value604, value1))
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value604 value1 value2 = (output1079, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1080 value602 value1 value2 = (output1080, value706, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child838]
  try dsimp only
  rw [child1079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output838_skip, output1079_skip]
  kernel_rfl

theorem node1081_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value601 value1 value2 = (output835, value602, value1))
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value602 value1 value2 = (output1080, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1081 value601 value1 value2 = (output1081, value706, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  try dsimp only
  rw [child1080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output1080_skip]
  kernel_rfl

theorem node1082_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value599 value1 value2 = (output834, value601, value1))
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value601 value1 value2 = (output1081, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1082 value599 value1 value2 = (output1082, value706, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child1081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output1081_skip]
  kernel_rfl

theorem node1083_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value595 value1 value2 = (output831, value599, value1))
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value599 value1 value2 = (output1082, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1083 value595 value1 value2 = (output1083, value706, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  try dsimp only
  rw [child1082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output831_skip, output1082_skip]
  kernel_rfl

theorem node1084_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value595 value1 value2 = (output824, value595, value1))
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value595 value1 value2 = (output1083, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1084 value595 value1 value2 = (output1084, value706, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child1083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output1083_skip]
  kernel_rfl

theorem node1085_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value591 value1 value2 = (output823, value595, value1))
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value595 value1 value2 = (output1084, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1085 value591 value1 value2 = (output1085, value706, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child823]
  try dsimp only
  rw [child1084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output823_skip, output1084_skip]
  kernel_rfl

theorem node1086_cond_eq
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value591 value1 value2 = (output816, value591, value1))
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value591 value1 value2 = (output1085, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1086 value591 value1 value2 = (output1086, value706, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child816]
  try dsimp only
  rw [child1085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output816_skip, output1085_skip]
  kernel_rfl

theorem node1087_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value591 value1 value2 = (output815, value591, value1))
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value591 value1 value2 = (output1086, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1087 value591 value1 value2 = (output1087, value706, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child1086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output1086_skip]
  kernel_rfl

theorem node1088_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value591 value1 value2 = (output814, value591, value1))
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value591 value1 value2 = (output1087, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1088 value591 value1 value2 = (output1088, value706, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  try dsimp only
  rw [child1087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output814_skip, output1087_skip]
  kernel_rfl

theorem node1089_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value590 value1 value2 = (output813, value591, value1))
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value591 value1 value2 = (output1088, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1089 value590 value1 value2 = (output1089, value706, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child1088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output1088_skip]
  kernel_rfl

theorem node1090_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value589 value1 value2 = (output812, value590, value1))
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value590 value1 value2 = (output1089, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1090 value589 value1 value2 = (output1090, value706, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  try dsimp only
  rw [child1089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output812_skip, output1089_skip]
  kernel_rfl

theorem node1091_cond_eq
    (child811 : Flapjack.WordAlloc.removeDeadStructural input811 value585 value1 value2 = (output811, value589, value1))
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value589 value1 value2 = (output1090, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1091 value585 value1 value2 = (output1091, value706, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child811]
  try dsimp only
  rw [child1090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output811_skip, output1090_skip]
  kernel_rfl

theorem node1092_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value537 value1 value2 = (output804, value585, value1))
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value585 value1 value2 = (output1091, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1092 value537 value1 value2 = (output1092, value706, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child1091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output1091_skip]
  kernel_rfl

theorem node1093_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value580 value1 value2 = (output803, value537, value1))
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value537 value1 value2 = (output1092, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1093 value580 value1 value2 = (output1093, value706, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child1092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output1092_skip]
  kernel_rfl

theorem node1094_cond_eq
    (child794 : Flapjack.WordAlloc.removeDeadStructural input794 value575 value1 value2 = (output794, value580, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value580 value1 value2 = (output1093, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value575 value1 value2 = (output1094, value706, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child794]
  try dsimp only
  rw [child1093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output794_skip, output1093_skip]
  kernel_rfl

theorem node1095_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value570 value1 value2 = (output785, value575, value1))
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value575 value1 value2 = (output1094, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1095 value570 value1 value2 = (output1095, value706, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child1094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output1094_skip]
  kernel_rfl

theorem node1096_cond_eq
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value565 value1 value2 = (output776, value570, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value570 value1 value2 = (output1095, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value565 value1 value2 = (output1096, value706, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child776]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output776_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value560 value1 value2 = (output767, value565, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value565 value1 value2 = (output1096, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value560 value1 value2 = (output1097, value706, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child767]
  try dsimp only
  rw [child1096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output767_skip, output1096_skip]
  kernel_rfl

theorem node1098_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value555 value1 value2 = (output758, value560, value1))
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value560 value1 value2 = (output1097, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1098 value555 value1 value2 = (output1098, value706, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child1097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output1097_skip]
  kernel_rfl

theorem node1099_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value554 value1 value2 = (output749, value555, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value555 value1 value2 = (output1098, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value554 value1 value2 = (output1099, value706, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output749_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value552 value1 value2 = (output748, value554, value1))
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value554 value1 value2 = (output1099, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1100 value552 value1 value2 = (output1100, value706, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child1099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output1099_skip]
  kernel_rfl

theorem node1101_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value551 value1 value2 = (output745, value552, value1))
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value552 value1 value2 = (output1100, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1101 value551 value1 value2 = (output1101, value706, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child1100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output1100_skip]
  kernel_rfl

theorem node1102_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value549 value1 value2 = (output744, value551, value1))
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value551 value1 value2 = (output1101, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1102 value549 value1 value2 = (output1102, value706, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child1101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output1101_skip]
  kernel_rfl

theorem node1103_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value548 value1 value2 = (output741, value549, value1))
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value549 value1 value2 = (output1102, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1103 value548 value1 value2 = (output1103, value706, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  try dsimp only
  rw [child1102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output741_skip, output1102_skip]
  kernel_rfl

theorem node1104_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value546 value1 value2 = (output740, value548, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value548 value1 value2 = (output1103, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value546 value1 value2 = (output1104, value706, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  try dsimp only
  rw [child1103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output1103_skip]
  kernel_rfl

theorem node1105_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value545 value1 value2 = (output737, value546, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value546 value1 value2 = (output1104, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value545 value1 value2 = (output1105, value706, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child737]
  try dsimp only
  rw [child1104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output737_skip, output1104_skip]
  kernel_rfl

theorem node1106_cond_eq
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value543 value1 value2 = (output736, value545, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value545 value1 value2 = (output1105, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value543 value1 value2 = (output1106, value706, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child736]
  try dsimp only
  rw [child1105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output736_skip, output1105_skip]
  kernel_rfl

theorem node1107_cond_eq
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value542 value1 value2 = (output733, value543, value1))
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value543 value1 value2 = (output1106, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1107 value542 value1 value2 = (output1107, value706, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child733]
  try dsimp only
  rw [child1106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output733_skip, output1106_skip]
  kernel_rfl

theorem node1108_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value540 value1 value2 = (output732, value542, value1))
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value542 value1 value2 = (output1107, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1108 value540 value1 value2 = (output1108, value706, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child1107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output1107_skip]
  kernel_rfl

theorem node1109_cond_eq
    (child729 : Flapjack.WordAlloc.removeDeadStructural input729 value539 value1 value2 = (output729, value540, value1))
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value540 value1 value2 = (output1108, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1109 value539 value1 value2 = (output1109, value706, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child729]
  try dsimp only
  rw [child1108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output729_skip, output1108_skip]
  kernel_rfl

theorem node1110_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value537 value1 value2 = (output728, value539, value1))
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value539 value1 value2 = (output1109, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1110 value537 value1 value2 = (output1110, value706, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child1109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output1109_skip]
  kernel_rfl

theorem node1111_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value536 value1 value2 = (output725, value537, value1))
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value537 value1 value2 = (output1110, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1111 value536 value1 value2 = (output1111, value706, value1) := by
  rw [input1111_def, output1111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  try dsimp only
  rw [child1110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output725_skip, output1110_skip]
  kernel_rfl

theorem node1112_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value531 value1 value2 = (output722, value536, value1))
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value536 value1 value2 = (output1111, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1112 value531 value1 value2 = (output1112, value706, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child1111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output1111_skip]
  kernel_rfl

theorem node1113_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value526 value1 value2 = (output713, value531, value1))
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value531 value1 value2 = (output1112, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1113 value526 value1 value2 = (output1113, value706, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  try dsimp only
  rw [child1112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output1112_skip]
  kernel_rfl

theorem node1114_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value521 value1 value2 = (output704, value526, value1))
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value526 value1 value2 = (output1113, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1114 value521 value1 value2 = (output1114, value706, value1) := by
  rw [input1114_def, output1114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child1113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output1113_skip]
  kernel_rfl

theorem node1115_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value516 value1 value2 = (output695, value521, value1))
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value521 value1 value2 = (output1114, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1115 value516 value1 value2 = (output1115, value706, value1) := by
  rw [input1115_def, output1115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child1114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output1114_skip]
  kernel_rfl

theorem node1116_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value511 value1 value2 = (output686, value516, value1))
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value516 value1 value2 = (output1115, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1116 value511 value1 value2 = (output1116, value706, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child1115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output1115_skip]
  kernel_rfl

theorem node1117_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value506 value1 value2 = (output677, value511, value1))
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value511 value1 value2 = (output1116, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1117 value506 value1 value2 = (output1117, value706, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child1116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output1116_skip]
  kernel_rfl

theorem node1118_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value505 value1 value2 = (output668, value506, value1))
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value506 value1 value2 = (output1117, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1118 value505 value1 value2 = (output1118, value706, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child1117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output1117_skip]
  kernel_rfl

theorem node1119_cond_eq
    (child667 : Flapjack.WordAlloc.removeDeadStructural input667 value503 value1 value2 = (output667, value505, value1))
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value505 value1 value2 = (output1118, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1119 value503 value1 value2 = (output1119, value706, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child667]
  try dsimp only
  rw [child1118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output667_skip, output1118_skip]
  kernel_rfl

theorem node1120_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value502 value1 value2 = (output664, value503, value1))
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value503 value1 value2 = (output1119, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1120 value502 value1 value2 = (output1120, value706, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child1119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output1119_skip]
  kernel_rfl

theorem node1121_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value500 value1 value2 = (output663, value502, value1))
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value502 value1 value2 = (output1120, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1121 value500 value1 value2 = (output1121, value706, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child1120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output1120_skip]
  kernel_rfl

theorem node1122_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value499 value1 value2 = (output660, value500, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value500 value1 value2 = (output1121, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value499 value1 value2 = (output1122, value706, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child1121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output1121_skip]
  kernel_rfl

theorem node1123_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value497 value1 value2 = (output659, value499, value1))
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value499 value1 value2 = (output1122, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1123 value497 value1 value2 = (output1123, value706, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child1122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output1122_skip]
  kernel_rfl

theorem node1124_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value496 value1 value2 = (output656, value497, value1))
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value497 value1 value2 = (output1123, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1124 value496 value1 value2 = (output1124, value706, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child1123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output1123_skip]
  kernel_rfl

theorem node1125_cond_eq
    (child655 : Flapjack.WordAlloc.removeDeadStructural input655 value494 value1 value2 = (output655, value496, value1))
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value496 value1 value2 = (output1124, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1125 value494 value1 value2 = (output1125, value706, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child655]
  try dsimp only
  rw [child1124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output655_skip, output1124_skip]
  kernel_rfl

theorem node1126_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value493 value1 value2 = (output652, value494, value1))
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value494 value1 value2 = (output1125, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1126 value493 value1 value2 = (output1126, value706, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child1125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output1125_skip]
  kernel_rfl

theorem node1127_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value491 value1 value2 = (output651, value493, value1))
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value493 value1 value2 = (output1126, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1127 value491 value1 value2 = (output1127, value706, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child1126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output1126_skip]
  kernel_rfl

theorem node1128_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value490 value1 value2 = (output648, value491, value1))
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value491 value1 value2 = (output1127, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1128 value490 value1 value2 = (output1128, value706, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child1127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output1127_skip]
  kernel_rfl

theorem node1129_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value488 value1 value2 = (output647, value490, value1))
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value490 value1 value2 = (output1128, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1129 value488 value1 value2 = (output1129, value706, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child1128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output1128_skip]
  kernel_rfl

theorem node1130_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value487 value1 value2 = (output644, value488, value1))
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value488 value1 value2 = (output1129, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1130 value487 value1 value2 = (output1130, value706, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child1129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output1129_skip]
  kernel_rfl

theorem node1131_cond_eq
    (child641 : Flapjack.WordAlloc.removeDeadStructural input641 value487 value1 value2 = (output641, value487, value1))
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value487 value1 value2 = (output1130, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1131 value487 value1 value2 = (output1131, value706, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child641]
  try dsimp only
  rw [child1130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output641_skip, output1130_skip]
  kernel_rfl

theorem node1132_cond_eq
    (child640 : Flapjack.WordAlloc.removeDeadStructural input640 value487 value1 value2 = (output640, value487, value1))
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value487 value1 value2 = (output1131, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1132 value487 value1 value2 = (output1132, value706, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child640]
  try dsimp only
  rw [child1131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output640_skip, output1131_skip]
  kernel_rfl

theorem node1133_cond_eq
    (child639 : Flapjack.WordAlloc.removeDeadStructural input639 value487 value1 value2 = (output639, value487, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value487 value1 value2 = (output1132, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value487 value1 value2 = (output1133, value706, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child639]
  try dsimp only
  rw [child1132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output639_skip, output1132_skip]
  kernel_rfl

theorem node1134_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value487 value1 value2 = (output638, value487, value1))
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value487 value1 value2 = (output1133, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1134 value487 value1 value2 = (output1134, value706, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child1133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output1133_skip]
  kernel_rfl

theorem node1135_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value487 value1 value2 = (output637, value487, value1))
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value487 value1 value2 = (output1134, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1135 value487 value1 value2 = (output1135, value706, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child1134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output1134_skip]
  kernel_rfl

theorem node1136_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value487 value1 value2 = (output636, value487, value1))
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value487 value1 value2 = (output1135, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1136 value487 value1 value2 = (output1136, value706, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child1135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output1135_skip]
  kernel_rfl

theorem node1137_cond_eq
    (child635 : Flapjack.WordAlloc.removeDeadStructural input635 value486 value1 value2 = (output635, value487, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value487 value1 value2 = (output1136, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value486 value1 value2 = (output1137, value706, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child635]
  try dsimp only
  rw [child1136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output635_skip, output1136_skip]
  kernel_rfl

theorem node1138_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value484 value1 value2 = (output634, value486, value1))
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value486 value1 value2 = (output1137, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1138 value484 value1 value2 = (output1138, value706, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  try dsimp only
  rw [child1137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output634_skip, output1137_skip]
  kernel_rfl

theorem node1139_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value483 value1 value2 = (output631, value484, value1))
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value484 value1 value2 = (output1138, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1139 value483 value1 value2 = (output1139, value706, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child1138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output1138_skip]
  kernel_rfl

theorem node1140_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value481 value1 value2 = (output630, value483, value1))
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value483 value1 value2 = (output1139, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1140 value481 value1 value2 = (output1140, value706, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child1139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output1139_skip]
  kernel_rfl

theorem node1141_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value480 value1 value2 = (output627, value481, value1))
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value481 value1 value2 = (output1140, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1141 value480 value1 value2 = (output1141, value706, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child1140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output1140_skip]
  kernel_rfl

theorem node1142_cond_eq
    (child626 : Flapjack.WordAlloc.removeDeadStructural input626 value478 value1 value2 = (output626, value480, value1))
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value480 value1 value2 = (output1141, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1142 value478 value1 value2 = (output1142, value706, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child626]
  try dsimp only
  rw [child1141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output626_skip, output1141_skip]
  kernel_rfl

theorem node1143_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value477 value1 value2 = (output623, value478, value1))
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value478 value1 value2 = (output1142, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1143 value477 value1 value2 = (output1143, value706, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child1142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output1142_skip]
  kernel_rfl

theorem node1144_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value475 value1 value2 = (output622, value477, value1))
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value477 value1 value2 = (output1143, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1144 value475 value1 value2 = (output1144, value706, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child1143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output1143_skip]
  kernel_rfl

theorem node1145_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value474 value1 value2 = (output619, value475, value1))
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value475 value1 value2 = (output1144, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1145 value474 value1 value2 = (output1145, value706, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child1144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output1144_skip]
  kernel_rfl

theorem node1146_cond_eq
    (child618 : Flapjack.WordAlloc.removeDeadStructural input618 value472 value1 value2 = (output618, value474, value1))
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value474 value1 value2 = (output1145, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1146 value472 value1 value2 = (output1146, value706, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child618]
  try dsimp only
  rw [child1145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output618_skip, output1145_skip]
  kernel_rfl

theorem node1147_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value471 value1 value2 = (output615, value472, value1))
    (child1146 : Flapjack.WordAlloc.removeDeadStructural input1146 value472 value1 value2 = (output1146, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1147 value471 value1 value2 = (output1147, value706, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child1146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output1146_skip]
  kernel_rfl

theorem node1148_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value467 value1 value2 = (output614, value471, value1))
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value471 value1 value2 = (output1147, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1148 value467 value1 value2 = (output1148, value706, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child1147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output1147_skip]
  kernel_rfl

theorem node1149_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value469 value1 value2 = (output611, value467, value1))
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value467 value1 value2 = (output1148, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1149 value469 value1 value2 = (output1149, value706, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child1148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output1148_skip]
  kernel_rfl

theorem node1150_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value467 value1 value2 = (output610, value469, value1))
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value469 value1 value2 = (output1149, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1150 value467 value1 value2 = (output1150, value706, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child1149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output1149_skip]
  kernel_rfl

theorem node1151_cond_eq
    (child607 : Flapjack.WordAlloc.removeDeadStructural input607 value448 value1 value2 = (output607, value467, value1))
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value467 value1 value2 = (output1150, value706, value1)) : Flapjack.WordAlloc.removeDeadStructural input1151 value448 value1 value2 = (output1151, value706, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child607]
  try dsimp only
  rw [child1150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output607_skip, output1150_skip]
  kernel_rfl

theorem node1152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1152 value448 value1 value2 = (output1152, value448, value1) := by
  rw [input1152_def, output1152_def]
  kernel_rfl

theorem node1153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1153 value448 value1 value2 = (output1153, value707, value1) := by
  rw [input1153_def, output1153_def]
  kernel_rfl

theorem node1154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1154 value707 value1 value2 = (output1154, value707, value1) := by
  rw [input1154_def, output1154_def]
  kernel_rfl

theorem node1155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1155 value707 value1 value2 = (output1155, value708, value1) := by
  rw [input1155_def, output1155_def]
  kernel_rfl

theorem node1156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1156 value708 value1 value2 = (output1156, value709, value1) := by
  rw [input1156_def, output1156_def]
  kernel_rfl

theorem node1157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1157 value709 value1 value2 = (output1157, value710, value1) := by
  rw [input1157_def, output1157_def]
  kernel_rfl

theorem node1158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1158 value710 value1 value2 = (output1158, value711, value1) := by
  rw [input1158_def, output1158_def]
  kernel_rfl

theorem node1159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1159 value711 value1 value2 = (output1159, value712, value1) := by
  rw [input1159_def, output1159_def]
  kernel_rfl

theorem node1160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1160 value712 value1 value2 = (output1160, value713, value1) := by
  rw [input1160_def, output1160_def]
  kernel_rfl

theorem node1161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1161 value713 value1 value2 = (output1161, value714, value1) := by
  rw [input1161_def, output1161_def]
  kernel_rfl

theorem node1162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1162 value714 value1 value2 = (output1162, value714, value1) := by
  rw [input1162_def, output1162_def]
  kernel_rfl

theorem node1163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1163 value714 value1 value2 = (output1163, value715, value1) := by
  rw [input1163_def, output1163_def]
  kernel_rfl

theorem node1164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1164 value715 value1 value2 = (output1164, value716, value1) := by
  rw [input1164_def, output1164_def]
  kernel_rfl

theorem node1165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1165 value716 value1 value2 = (output1165, value716, value1) := by
  rw [input1165_def, output1165_def]
  kernel_rfl

theorem node1166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1166 value716 value1 value2 = (output1166, value717, value1) := by
  rw [input1166_def, output1166_def]
  kernel_rfl

theorem node1167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1167 value717 value1 value2 = (output1167, value717, value1) := by
  rw [input1167_def, output1167_def]
  kernel_rfl

theorem node1168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1168 value717 value1 value2 = (output1168, value718, value1) := by
  rw [input1168_def, output1168_def]
  kernel_rfl

theorem node1169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1169 value718 value1 value2 = (output1169, value719, value1) := by
  rw [input1169_def, output1169_def]
  kernel_rfl

theorem node1170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1170 value719 value1 value2 = (output1170, value720, value1) := by
  rw [input1170_def, output1170_def]
  kernel_rfl

theorem node1171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1171 value720 value1 value2 = (output1171, value720, value1) := by
  rw [input1171_def, output1171_def]
  kernel_rfl

theorem node1172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1172 value720 value1 value2 = (output1172, value721, value1) := by
  rw [input1172_def, output1172_def]
  kernel_rfl

theorem node1173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1173 value721 value1 value2 = (output1173, value721, value1) := by
  rw [input1173_def, output1173_def]
  kernel_rfl

theorem node1174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1174 value721 value1 value2 = (output1174, value722, value1) := by
  rw [input1174_def, output1174_def]
  kernel_rfl

theorem node1175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1175 value722 value1 value2 = (output1175, value723, value1) := by
  rw [input1175_def, output1175_def]
  kernel_rfl

theorem node1176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1176 value723 value1 value2 = (output1176, value723, value1) := by
  rw [input1176_def, output1176_def]
  kernel_rfl

theorem node1177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1177 value723 value1 value2 = (output1177, value723, value1) := by
  rw [input1177_def, output1177_def]
  kernel_rfl

theorem node1178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1178 value723 value1 value2 = (output1178, value724, value1) := by
  rw [input1178_def, output1178_def]
  kernel_rfl

theorem node1179_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1179 value724 value1 value2 = (output1179, value724, value1) := by
  rw [input1179_def, output1179_def]
  kernel_rfl

theorem node1180_cond_eq
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value723 value1 value2 = (output1178, value724, value1))
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value724 value1 value2 = (output1179, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1180 value723 value1 value2 = (output1180, value724, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1178]
  try dsimp only
  rw [child1179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1178_skip, output1179_skip]
  kernel_rfl

theorem node1181_cond_eq
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value723 value1 value2 = (output1177, value723, value1))
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value723 value1 value2 = (output1180, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1181 value723 value1 value2 = (output1181, value724, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1177]
  try dsimp only
  rw [child1180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1177_skip, output1180_skip]
  kernel_rfl

theorem node1182_cond_eq
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value723 value1 value2 = (output1176, value723, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value723 value1 value2 = (output1181, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value723 value1 value2 = (output1182, value724, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1176]
  try dsimp only
  rw [child1181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1176_skip, output1181_skip]
  kernel_rfl

theorem node1183_cond_eq
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value722 value1 value2 = (output1175, value723, value1))
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value723 value1 value2 = (output1182, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1183 value722 value1 value2 = (output1183, value724, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1175]
  try dsimp only
  rw [child1182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1175_skip, output1182_skip]
  kernel_rfl

theorem node1184_cond_eq
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value721 value1 value2 = (output1174, value722, value1))
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value722 value1 value2 = (output1183, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1184 value721 value1 value2 = (output1184, value724, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1174]
  try dsimp only
  rw [child1183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1174_skip, output1183_skip]
  kernel_rfl

theorem node1185_cond_eq
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value721 value1 value2 = (output1173, value721, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value721 value1 value2 = (output1184, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value721 value1 value2 = (output1185, value724, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1173]
  try dsimp only
  rw [child1184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1173_skip, output1184_skip]
  kernel_rfl

theorem node1186_cond_eq
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value720 value1 value2 = (output1172, value721, value1))
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value721 value1 value2 = (output1185, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1186 value720 value1 value2 = (output1186, value724, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1172]
  try dsimp only
  rw [child1185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1172_skip, output1185_skip]
  kernel_rfl

theorem node1187_cond_eq
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value720 value1 value2 = (output1171, value720, value1))
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value720 value1 value2 = (output1186, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1187 value720 value1 value2 = (output1187, value724, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1171]
  try dsimp only
  rw [child1186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1171_skip, output1186_skip]
  kernel_rfl

theorem node1188_cond_eq
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value719 value1 value2 = (output1170, value720, value1))
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value720 value1 value2 = (output1187, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1188 value719 value1 value2 = (output1188, value724, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1170]
  try dsimp only
  rw [child1187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1170_skip, output1187_skip]
  kernel_rfl

theorem node1189_cond_eq
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value718 value1 value2 = (output1169, value719, value1))
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value719 value1 value2 = (output1188, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1189 value718 value1 value2 = (output1189, value724, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1169]
  try dsimp only
  rw [child1188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1169_skip, output1188_skip]
  kernel_rfl

theorem node1190_cond_eq
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value717 value1 value2 = (output1168, value718, value1))
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value718 value1 value2 = (output1189, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1190 value717 value1 value2 = (output1190, value724, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1168]
  try dsimp only
  rw [child1189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1168_skip, output1189_skip]
  kernel_rfl

theorem node1191_cond_eq
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value717 value1 value2 = (output1167, value717, value1))
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value717 value1 value2 = (output1190, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1191 value717 value1 value2 = (output1191, value724, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1167]
  try dsimp only
  rw [child1190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1167_skip, output1190_skip]
  kernel_rfl

theorem node1192_cond_eq
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value716 value1 value2 = (output1166, value717, value1))
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value717 value1 value2 = (output1191, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1192 value716 value1 value2 = (output1192, value724, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1166]
  try dsimp only
  rw [child1191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1166_skip, output1191_skip]
  kernel_rfl

theorem node1193_cond_eq
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value716 value1 value2 = (output1165, value716, value1))
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value716 value1 value2 = (output1192, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1193 value716 value1 value2 = (output1193, value724, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1165]
  try dsimp only
  rw [child1192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1165_skip, output1192_skip]
  kernel_rfl

theorem node1194_cond_eq
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value715 value1 value2 = (output1164, value716, value1))
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value716 value1 value2 = (output1193, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1194 value715 value1 value2 = (output1194, value724, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1164]
  try dsimp only
  rw [child1193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1164_skip, output1193_skip]
  kernel_rfl

theorem node1195_cond_eq
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value714 value1 value2 = (output1163, value715, value1))
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value715 value1 value2 = (output1194, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1195 value714 value1 value2 = (output1195, value724, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1163]
  try dsimp only
  rw [child1194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1163_skip, output1194_skip]
  kernel_rfl

theorem node1196_cond_eq
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value714 value1 value2 = (output1162, value714, value1))
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value714 value1 value2 = (output1195, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1196 value714 value1 value2 = (output1196, value724, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1162]
  try dsimp only
  rw [child1195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1162_skip, output1195_skip]
  kernel_rfl

theorem node1197_cond_eq
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value713 value1 value2 = (output1161, value714, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value714 value1 value2 = (output1196, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value713 value1 value2 = (output1197, value724, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1161]
  try dsimp only
  rw [child1196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1161_skip, output1196_skip]
  kernel_rfl

theorem node1198_cond_eq
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value712 value1 value2 = (output1160, value713, value1))
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value713 value1 value2 = (output1197, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1198 value712 value1 value2 = (output1198, value724, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1160]
  try dsimp only
  rw [child1197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1160_skip, output1197_skip]
  kernel_rfl

theorem node1199_cond_eq
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value711 value1 value2 = (output1159, value712, value1))
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value712 value1 value2 = (output1198, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1199 value711 value1 value2 = (output1199, value724, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1159]
  try dsimp only
  rw [child1198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1159_skip, output1198_skip]
  kernel_rfl

theorem node1200_cond_eq
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value710 value1 value2 = (output1158, value711, value1))
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value711 value1 value2 = (output1199, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1200 value710 value1 value2 = (output1200, value724, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1158]
  try dsimp only
  rw [child1199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1158_skip, output1199_skip]
  kernel_rfl

theorem node1201_cond_eq
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value709 value1 value2 = (output1157, value710, value1))
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value710 value1 value2 = (output1200, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1201 value709 value1 value2 = (output1201, value724, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1157]
  try dsimp only
  rw [child1200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1157_skip, output1200_skip]
  kernel_rfl

theorem node1202_cond_eq
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value708 value1 value2 = (output1156, value709, value1))
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value709 value1 value2 = (output1201, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1202 value708 value1 value2 = (output1202, value724, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1156]
  try dsimp only
  rw [child1201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1156_skip, output1201_skip]
  kernel_rfl

theorem node1203_cond_eq
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value707 value1 value2 = (output1155, value708, value1))
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value708 value1 value2 = (output1202, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1203 value707 value1 value2 = (output1203, value724, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1155]
  try dsimp only
  rw [child1202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1155_skip, output1202_skip]
  kernel_rfl

theorem node1204_cond_eq
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value707 value1 value2 = (output1154, value707, value1))
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value707 value1 value2 = (output1203, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1204 value707 value1 value2 = (output1204, value724, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1154]
  try dsimp only
  rw [child1203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1154_skip, output1203_skip]
  kernel_rfl

theorem node1205_cond_eq
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value448 value1 value2 = (output1153, value707, value1))
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value707 value1 value2 = (output1204, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1205 value448 value1 value2 = (output1205, value724, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1153]
  try dsimp only
  rw [child1204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1153_skip, output1204_skip]
  kernel_rfl

theorem node1206_cond_eq
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value448 value1 value2 = (output1152, value448, value1))
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value448 value1 value2 = (output1205, value724, value1)) : Flapjack.WordAlloc.removeDeadStructural input1206 value448 value1 value2 = (output1206, value724, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1152]
  try dsimp only
  rw [child1205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1152_skip, output1205_skip]
  kernel_rfl

theorem node1207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1207 value724 value1 value2 = (output1207, value725, value1) := by
  rw [input1207_def, output1207_def]
  kernel_rfl

theorem node1208_cond_eq
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value448 value1 value2 = (output1206, value724, value1))
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value724 value1 value2 = (output1207, value725, value1)) : Flapjack.WordAlloc.removeDeadStructural input1208 value448 value1 value2 = (output1208, value725, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1206]
  try dsimp only
  rw [child1207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1206_skip, output1207_skip]
  kernel_rfl

theorem node1209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1209 value725 value1 value2 = (output1209, value725, value1) := by
  rw [input1209_def, output1209_def]
  kernel_rfl

theorem node1210_cond_eq
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value448 value1 value2 = (output1208, value725, value1))
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value725 value1 value2 = (output1209, value725, value1)) : Flapjack.WordAlloc.removeDeadStructural input1210 value448 value1 value2 = (output1210, value725, value1) := by
  rw [input1210_def, output1210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1208]
  try dsimp only
  rw [child1209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1208_skip, output1209_skip]
  kernel_rfl

theorem node1211_cond_eq
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value448 value1 value2 = (output1151, value706, value1))
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value448 value1 value2 = (output1210, value725, value1)) : Flapjack.WordAlloc.removeDeadStructural input1211 value448 value1 value2 = (output1211, value727, value1) := by
  rw [input1211_def, output1211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child1151]
  try dsimp only
  rw [child1210]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1151_skip, output1210_skip]
  kernel_rfl

theorem node1212_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value448 value1 value2 = (output550, value448, value1))
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value448 value1 value2 = (output1211, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input1212 value448 value1 value2 = (output1212, value727, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child1211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output1211_skip]
  kernel_rfl

theorem node1213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1213 value727 value1 value2 = (output1213, value728, value1) := by
  rw [input1213_def, output1213_def]
  kernel_rfl

theorem node1214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1214 value728 value1 value2 = (output1214, value729, value1) := by
  rw [input1214_def, output1214_def]
  kernel_rfl

theorem node1215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1215 value729 value1 value2 = (output1215, value729, value1) := by
  rw [input1215_def, output1215_def]
  kernel_rfl

theorem node1216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1216 value729 value1 value2 = (output1216, value730, value1) := by
  rw [input1216_def, output1216_def]
  kernel_rfl

theorem node1217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1217 value730 value1 value2 = (output1217, value731, value1) := by
  rw [input1217_def, output1217_def]
  kernel_rfl

theorem node1218_cond_eq
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value729 value1 value2 = (output1216, value730, value1))
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value730 value1 value2 = (output1217, value731, value1)) : Flapjack.WordAlloc.removeDeadStructural input1218 value729 value1 value2 = (output1218, value731, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1216]
  try dsimp only
  rw [child1217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1216_skip, output1217_skip]
  kernel_rfl

theorem node1219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1219 value731 value1 value2 = (output1219, value732, value1) := by
  rw [input1219_def, output1219_def]
  kernel_rfl

theorem node1220_cond_eq
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value729 value1 value2 = (output1218, value731, value1))
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value731 value1 value2 = (output1219, value732, value1)) : Flapjack.WordAlloc.removeDeadStructural input1220 value729 value1 value2 = (output1220, value732, value1) := by
  rw [input1220_def, output1220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1218]
  try dsimp only
  rw [child1219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1218_skip, output1219_skip]
  kernel_rfl

theorem node1221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1221 value732 value1 value2 = (output1221, value733, value1) := by
  rw [input1221_def, output1221_def]
  kernel_rfl

theorem node1222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1222 value733 value1 value2 = (output1222, value734, value1) := by
  rw [input1222_def, output1222_def]
  kernel_rfl

theorem node1223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1223 value734 value1 value2 = (output1223, value735, value1) := by
  rw [input1223_def, output1223_def]
  kernel_rfl

theorem node1224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1224 value735 value1 value2 = (output1224, value736, value1) := by
  rw [input1224_def, output1224_def]
  kernel_rfl

theorem node1225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1225 value736 value1 value2 = (output1225, value737, value1) := by
  rw [input1225_def, output1225_def]
  kernel_rfl

theorem node1226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1226 value737 value1 value2 = (output1226, value738, value1) := by
  rw [input1226_def, output1226_def]
  kernel_rfl

theorem node1227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1227 value738 value1 value2 = (output1227, value738, value1) := by
  rw [input1227_def, output1227_def]
  kernel_rfl

theorem node1228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1228 value738 value1 value2 = (output1228, value738, value1) := by
  rw [input1228_def, output1228_def]
  kernel_rfl

theorem node1229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1229 value738 value1 value2 = (output1229, value738, value1) := by
  rw [input1229_def, output1229_def]
  kernel_rfl

theorem node1230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1230 value738 value1 value2 = (output1230, value738, value1) := by
  rw [input1230_def, output1230_def]
  kernel_rfl

theorem node1231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1231 value738 value1 value2 = (output1231, value738, value1) := by
  rw [input1231_def, output1231_def]
  kernel_rfl

theorem node1232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1232 value738 value1 value2 = (output1232, value738, value1) := by
  rw [input1232_def, output1232_def]
  kernel_rfl

theorem node1233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1233 value738 value1 value2 = (output1233, value739, value1) := by
  rw [input1233_def, output1233_def]
  kernel_rfl

theorem node1234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1234 value739 value1 value2 = (output1234, value740, value1) := by
  rw [input1234_def, output1234_def]
  kernel_rfl

theorem node1235_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1235 value740 value1 value2 = (output1235, value741, value1) := by
  rw [input1235_def, output1235_def]
  kernel_rfl

theorem node1236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1236 value741 value1 value2 = (output1236, value742, value1) := by
  rw [input1236_def, output1236_def]
  kernel_rfl

theorem node1237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1237 value742 value1 value2 = (output1237, value743, value1) := by
  rw [input1237_def, output1237_def]
  kernel_rfl

theorem node1238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1238 value743 value1 value2 = (output1238, value744, value1) := by
  rw [input1238_def, output1238_def]
  kernel_rfl

theorem node1239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1239 value744 value1 value2 = (output1239, value745, value1) := by
  rw [input1239_def, output1239_def]
  kernel_rfl

theorem node1240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1240 value745 value1 value2 = (output1240, value746, value1) := by
  rw [input1240_def, output1240_def]
  kernel_rfl

theorem node1241_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value744 value1 value2 = (output1239, value745, value1))
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value745 value1 value2 = (output1240, value746, value1)) : Flapjack.WordAlloc.removeDeadStructural input1241 value744 value1 value2 = (output1241, value746, value1) := by
  rw [input1241_def, output1241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child1240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output1240_skip]
  kernel_rfl

theorem node1242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1242 value746 value1 value2 = (output1242, value747, value1) := by
  rw [input1242_def, output1242_def]
  kernel_rfl

theorem node1243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1243 value747 value1 value2 = (output1243, value748, value1) := by
  rw [input1243_def, output1243_def]
  kernel_rfl

theorem node1244_cond_eq
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value746 value1 value2 = (output1242, value747, value1))
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value747 value1 value2 = (output1243, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input1244 value746 value1 value2 = (output1244, value748, value1) := by
  rw [input1244_def, output1244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1242]
  try dsimp only
  rw [child1243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1242_skip, output1243_skip]
  kernel_rfl

theorem node1245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1245 value748 value1 value2 = (output1245, value749, value1) := by
  rw [input1245_def, output1245_def]
  kernel_rfl

theorem node1246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1246 value749 value1 value2 = (output1246, value750, value1) := by
  rw [input1246_def, output1246_def]
  kernel_rfl

theorem node1247_cond_eq
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value748 value1 value2 = (output1245, value749, value1))
    (child1246 : Flapjack.WordAlloc.removeDeadStructural input1246 value749 value1 value2 = (output1246, value750, value1)) : Flapjack.WordAlloc.removeDeadStructural input1247 value748 value1 value2 = (output1247, value750, value1) := by
  rw [input1247_def, output1247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1245]
  try dsimp only
  rw [child1246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1245_skip, output1246_skip]
  kernel_rfl

theorem node1248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1248 value750 value1 value2 = (output1248, value751, value1) := by
  rw [input1248_def, output1248_def]
  kernel_rfl

theorem node1249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1249 value751 value1 value2 = (output1249, value752, value1) := by
  rw [input1249_def, output1249_def]
  kernel_rfl

theorem node1250_cond_eq
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value750 value1 value2 = (output1248, value751, value1))
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value751 value1 value2 = (output1249, value752, value1)) : Flapjack.WordAlloc.removeDeadStructural input1250 value750 value1 value2 = (output1250, value752, value1) := by
  rw [input1250_def, output1250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1248]
  try dsimp only
  rw [child1249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1248_skip, output1249_skip]
  kernel_rfl

theorem node1251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1251 value752 value1 value2 = (output1251, value753, value1) := by
  rw [input1251_def, output1251_def]
  kernel_rfl

theorem node1252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1252 value753 value1 value2 = (output1252, value754, value1) := by
  rw [input1252_def, output1252_def]
  kernel_rfl

theorem node1253_cond_eq
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value752 value1 value2 = (output1251, value753, value1))
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value753 value1 value2 = (output1252, value754, value1)) : Flapjack.WordAlloc.removeDeadStructural input1253 value752 value1 value2 = (output1253, value754, value1) := by
  rw [input1253_def, output1253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1251]
  try dsimp only
  rw [child1252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1251_skip, output1252_skip]
  kernel_rfl

theorem node1254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1254 value754 value1 value2 = (output1254, value755, value1) := by
  rw [input1254_def, output1254_def]
  kernel_rfl

theorem node1255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1255 value755 value1 value2 = (output1255, value756, value1) := by
  rw [input1255_def, output1255_def]
  kernel_rfl

theorem node1256_cond_eq
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value754 value1 value2 = (output1254, value755, value1))
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value755 value1 value2 = (output1255, value756, value1)) : Flapjack.WordAlloc.removeDeadStructural input1256 value754 value1 value2 = (output1256, value756, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1254]
  try dsimp only
  rw [child1255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1254_skip, output1255_skip]
  kernel_rfl

theorem node1257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1257 value756 value1 value2 = (output1257, value757, value1) := by
  rw [input1257_def, output1257_def]
  kernel_rfl

theorem node1258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1258 value757 value1 value2 = (output1258, value758, value1) := by
  rw [input1258_def, output1258_def]
  kernel_rfl

theorem node1259_cond_eq
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value756 value1 value2 = (output1257, value757, value1))
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value757 value1 value2 = (output1258, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input1259 value756 value1 value2 = (output1259, value758, value1) := by
  rw [input1259_def, output1259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1257]
  try dsimp only
  rw [child1258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1257_skip, output1258_skip]
  kernel_rfl

theorem node1260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1260 value758 value1 value2 = (output1260, value759, value1) := by
  rw [input1260_def, output1260_def]
  kernel_rfl

theorem node1261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1261 value759 value1 value2 = (output1261, value760, value1) := by
  rw [input1261_def, output1261_def]
  kernel_rfl

theorem node1262_cond_eq
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value758 value1 value2 = (output1260, value759, value1))
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value759 value1 value2 = (output1261, value760, value1)) : Flapjack.WordAlloc.removeDeadStructural input1262 value758 value1 value2 = (output1262, value760, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1260]
  try dsimp only
  rw [child1261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1260_skip, output1261_skip]
  kernel_rfl

theorem node1263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1263 value760 value1 value2 = (output1263, value761, value1) := by
  rw [input1263_def, output1263_def]
  kernel_rfl

theorem node1264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1264 value761 value1 value2 = (output1264, value762, value1) := by
  rw [input1264_def, output1264_def]
  kernel_rfl

theorem node1265_cond_eq
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value760 value1 value2 = (output1263, value761, value1))
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value761 value1 value2 = (output1264, value762, value1)) : Flapjack.WordAlloc.removeDeadStructural input1265 value760 value1 value2 = (output1265, value762, value1) := by
  rw [input1265_def, output1265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1263]
  try dsimp only
  rw [child1264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1263_skip, output1264_skip]
  kernel_rfl

theorem node1266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1266 value762 value1 value2 = (output1266, value763, value1) := by
  rw [input1266_def, output1266_def]
  kernel_rfl

theorem node1267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1267 value763 value1 value2 = (output1267, value764, value1) := by
  rw [input1267_def, output1267_def]
  kernel_rfl

theorem node1268_cond_eq
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value762 value1 value2 = (output1266, value763, value1))
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value763 value1 value2 = (output1267, value764, value1)) : Flapjack.WordAlloc.removeDeadStructural input1268 value762 value1 value2 = (output1268, value764, value1) := by
  rw [input1268_def, output1268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1266]
  try dsimp only
  rw [child1267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1266_skip, output1267_skip]
  kernel_rfl

theorem node1269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1269 value764 value1 value2 = (output1269, value765, value1) := by
  rw [input1269_def, output1269_def]
  kernel_rfl

theorem node1270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1270 value765 value1 value2 = (output1270, value766, value1) := by
  rw [input1270_def, output1270_def]
  kernel_rfl

theorem node1271_cond_eq
    (child1269 : Flapjack.WordAlloc.removeDeadStructural input1269 value764 value1 value2 = (output1269, value765, value1))
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value765 value1 value2 = (output1270, value766, value1)) : Flapjack.WordAlloc.removeDeadStructural input1271 value764 value1 value2 = (output1271, value766, value1) := by
  rw [input1271_def, output1271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1269]
  try dsimp only
  rw [child1270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1269_skip, output1270_skip]
  kernel_rfl

theorem node1272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1272 value766 value1 value2 = (output1272, value767, value1) := by
  rw [input1272_def, output1272_def]
  kernel_rfl

theorem node1273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1273 value767 value1 value2 = (output1273, value768, value1) := by
  rw [input1273_def, output1273_def]
  kernel_rfl

theorem node1274_cond_eq
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value766 value1 value2 = (output1272, value767, value1))
    (child1273 : Flapjack.WordAlloc.removeDeadStructural input1273 value767 value1 value2 = (output1273, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input1274 value766 value1 value2 = (output1274, value768, value1) := by
  rw [input1274_def, output1274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1272]
  try dsimp only
  rw [child1273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1272_skip, output1273_skip]
  kernel_rfl

theorem node1275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1275 value768 value1 value2 = (output1275, value769, value1) := by
  rw [input1275_def, output1275_def]
  kernel_rfl

theorem node1276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1276 value769 value1 value2 = (output1276, value770, value1) := by
  rw [input1276_def, output1276_def]
  kernel_rfl

theorem node1277_cond_eq
    (child1275 : Flapjack.WordAlloc.removeDeadStructural input1275 value768 value1 value2 = (output1275, value769, value1))
    (child1276 : Flapjack.WordAlloc.removeDeadStructural input1276 value769 value1 value2 = (output1276, value770, value1)) : Flapjack.WordAlloc.removeDeadStructural input1277 value768 value1 value2 = (output1277, value770, value1) := by
  rw [input1277_def, output1277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1275]
  try dsimp only
  rw [child1276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1275_skip, output1276_skip]
  kernel_rfl

theorem node1278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1278 value770 value1 value2 = (output1278, value771, value1) := by
  rw [input1278_def, output1278_def]
  kernel_rfl

theorem node1279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1279 value771 value1 value2 = (output1279, value772, value1) := by
  rw [input1279_def, output1279_def]
  kernel_rfl

#print axioms node1279_cond_eq
end InitECandidate.Proofs.DeadStages782.Parallel
