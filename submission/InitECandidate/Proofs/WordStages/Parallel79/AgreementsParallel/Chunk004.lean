import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel79.Data2
import InitECandidate.Proofs.WordStages.Parallel79.Data3
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk004
import InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel.Chunk003

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
theorem input1024_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1024 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1024_def]
  kernel_rfl

theorem output1024_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1024 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1024_def]
  kernel_rfl

theorem input1025_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1025 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_774 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1025_def]
  kernel_rfl

theorem input1026_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1026 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_775 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1026_def]
  simp only [input1025_eq, input1024_eq]
  kernel_rfl

theorem output1026_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1026 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1026_def]
  simp only [output1024_eq]

theorem input1027_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1027 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1027_def]
  kernel_rfl

theorem input1028_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1028 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_776 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1028_def]
  simp only [input1027_eq, input1026_eq]
  kernel_rfl

theorem output1028_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1028 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1028_def]
  simp only [output1026_eq]

theorem input1029_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1029 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_777 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1029_def]
  simp only [input1023_eq, input1028_eq]
  kernel_rfl

theorem output1029_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1029 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_451 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1029_def]
  simp only [output1023_eq, output1028_eq]
  kernel_rfl

theorem input1030_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1030 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_782 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1030_def]
  simp only [input1029_eq, input1008_eq]
  kernel_rfl

theorem output1030_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1030 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_452 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1030_def]
  simp only [output1029_eq, output1008_eq]
  kernel_rfl

theorem input1031_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1031 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_760 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1031_def]
  kernel_rfl

theorem output1031_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1031 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_444 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1031_def]
  kernel_rfl

theorem input1032_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1032 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_758 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1032_def]
  kernel_rfl

theorem output1032_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1032 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_442 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1032_def]
  kernel_rfl

theorem input1033_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1033 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_756 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1033_def]
  kernel_rfl

theorem output1033_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1033 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_440 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1033_def]
  kernel_rfl

theorem input1034_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1034 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_753 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1034_def]
  kernel_rfl

theorem output1034_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1034 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_437 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1034_def]
  kernel_rfl

theorem input1035_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1035 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_752 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1035_def]
  kernel_rfl

theorem output1035_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1035 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_436 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1035_def]
  kernel_rfl

theorem input1036_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1036 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_754 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1036_def]
  simp only [input1035_eq, input1034_eq]
  kernel_rfl

theorem output1036_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1036 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_438 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1036_def]
  simp only [output1035_eq, output1034_eq]
  kernel_rfl

theorem input1037_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1037 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_750 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1037_def]
  kernel_rfl

theorem output1037_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1037 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_434 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1037_def]
  kernel_rfl

theorem input1038_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1038 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_747 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1038_def]
  kernel_rfl

theorem output1038_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1038 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_431 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1038_def]
  kernel_rfl

theorem input1039_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1039 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_746 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1039_def]
  kernel_rfl

theorem output1039_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1039 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_430 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1039_def]
  kernel_rfl

theorem input1040_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1040 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_748 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1040_def]
  simp only [input1039_eq, input1038_eq]
  kernel_rfl

theorem output1040_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1040 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_432 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1040_def]
  simp only [output1039_eq, output1038_eq]
  kernel_rfl

theorem input1041_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1041 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1041_def]
  kernel_rfl

theorem output1041_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1041 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1041_def]
  kernel_rfl

theorem input1042_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1042 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_741 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1042_def]
  kernel_rfl

theorem input1043_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1043 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1043_def]
  kernel_rfl

theorem output1043_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1043 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1043_def]
  kernel_rfl

theorem input1044_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1044 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_739 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1044_def]
  kernel_rfl

theorem input1045_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1045 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_740 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1045_def]
  simp only [input1044_eq, input1043_eq]
  kernel_rfl

theorem output1045_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1045 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1045_def]
  simp only [output1043_eq]

theorem input1046_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1046 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_742 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1046_def]
  simp only [input1045_eq, input1042_eq]
  kernel_rfl

theorem output1046_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1046 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1046_def]
  simp only [output1045_eq]

theorem input1047_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1047 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1047_def]
  kernel_rfl

theorem input1048_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1048 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_732 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1048_def]
  kernel_rfl

theorem input1049_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1049 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_733 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1049_def]
  simp only [input1048_eq, input1047_eq]
  kernel_rfl

theorem input1050_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1050 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1050_def]
  kernel_rfl

theorem output1050_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1050 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1050_def]
  kernel_rfl

theorem input1051_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1051 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_729 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1051_def]
  kernel_rfl

theorem output1051_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1051 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_423 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1051_def]
  kernel_rfl

theorem input1052_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1052 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_730 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1052_def]
  simp only [input1051_eq, input1050_eq]
  kernel_rfl

theorem output1052_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1052 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_424 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1052_def]
  simp only [output1051_eq, output1050_eq]
  kernel_rfl

theorem input1053_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1053 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_727 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1053_def]
  kernel_rfl

theorem output1053_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1053 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_421 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1053_def]
  kernel_rfl

theorem input1054_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1054 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_725 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1054_def]
  kernel_rfl

theorem input1055_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1055 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1055_def]
  kernel_rfl

theorem output1055_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1055 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1055_def]
  kernel_rfl

theorem input1056_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1056 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_723 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1056_def]
  kernel_rfl

theorem input1057_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1057 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_724 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1057_def]
  simp only [input1056_eq, input1055_eq]
  kernel_rfl

theorem output1057_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1057 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1057_def]
  simp only [output1055_eq]

theorem input1058_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1058 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_726 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1058_def]
  simp only [input1057_eq, input1054_eq]
  kernel_rfl

theorem output1058_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1058 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1058_def]
  simp only [output1057_eq]

theorem input1059_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1059 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_728 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1059_def]
  simp only [input1058_eq, input1053_eq]
  kernel_rfl

theorem output1059_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1059 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_422 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1059_def]
  simp only [output1058_eq, output1053_eq]
  kernel_rfl

theorem input1060_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1060 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_731 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1060_def]
  simp only [input1059_eq, input1052_eq]
  kernel_rfl

theorem output1060_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1060 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_425 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1060_def]
  simp only [output1059_eq, output1052_eq]
  kernel_rfl

theorem input1061_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1061 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_734 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1061_def]
  simp only [input1060_eq, input1049_eq]
  kernel_rfl

theorem output1061_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1061 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_425 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1061_def]
  simp only [output1060_eq]

theorem input1062_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1062 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1062_def]
  kernel_rfl

theorem output1062_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1062 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1062_def]
  kernel_rfl

theorem input1063_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1063 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_735 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1063_def]
  kernel_rfl

theorem input1064_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1064 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_736 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1064_def]
  simp only [input1063_eq, input1062_eq]
  kernel_rfl

theorem output1064_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1064 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1064_def]
  simp only [output1062_eq]

theorem input1065_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1065 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1065_def]
  kernel_rfl

theorem input1066_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1066 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_737 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1066_def]
  simp only [input1065_eq, input1064_eq]
  kernel_rfl

theorem output1066_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1066 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1066_def]
  simp only [output1064_eq]

theorem input1067_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1067 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_738 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1067_def]
  simp only [input1061_eq, input1066_eq]
  kernel_rfl

theorem output1067_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1067 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_426 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1067_def]
  simp only [output1061_eq, output1066_eq]
  kernel_rfl

theorem input1068_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1068 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_743 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1068_def]
  simp only [input1067_eq, input1046_eq]
  kernel_rfl

theorem output1068_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1068 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_427 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1068_def]
  simp only [output1067_eq, output1046_eq]
  kernel_rfl

theorem input1069_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1069 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_721 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1069_def]
  kernel_rfl

theorem output1069_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1069 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_419 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1069_def]
  kernel_rfl

theorem input1070_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1070 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_719 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1070_def]
  kernel_rfl

theorem output1070_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1070 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_417 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1070_def]
  kernel_rfl

theorem input1071_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1071 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_717 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1071_def]
  kernel_rfl

theorem output1071_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1071 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_415 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1071_def]
  kernel_rfl

theorem input1072_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1072 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_714 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1072_def]
  kernel_rfl

theorem output1072_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1072 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_412 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1072_def]
  kernel_rfl

theorem input1073_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1073 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_713 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1073_def]
  kernel_rfl

theorem output1073_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1073 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_411 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1073_def]
  kernel_rfl

theorem input1074_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1074 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_715 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1074_def]
  simp only [input1073_eq, input1072_eq]
  kernel_rfl

theorem output1074_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1074 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_413 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1074_def]
  simp only [output1073_eq, output1072_eq]
  kernel_rfl

theorem input1075_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1075 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_711 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1075_def]
  kernel_rfl

theorem output1075_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1075 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_409 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1075_def]
  kernel_rfl

theorem input1076_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1076 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_708 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1076_def]
  kernel_rfl

theorem output1076_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1076 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_406 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1076_def]
  kernel_rfl

theorem input1077_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1077 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_707 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1077_def]
  kernel_rfl

theorem output1077_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1077 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_405 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1077_def]
  kernel_rfl

theorem input1078_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1078 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_709 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1078_def]
  simp only [input1077_eq, input1076_eq]
  kernel_rfl

theorem output1078_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1078 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_407 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1078_def]
  simp only [output1077_eq, output1076_eq]
  kernel_rfl

theorem input1079_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1079 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1079_def]
  kernel_rfl

theorem output1079_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1079 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1079_def]
  kernel_rfl

theorem input1080_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1080 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_702 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1080_def]
  kernel_rfl

theorem input1081_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1081 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1081_def]
  kernel_rfl

theorem output1081_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1081 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1081_def]
  kernel_rfl

theorem input1082_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1082 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_700 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1082_def]
  kernel_rfl

theorem input1083_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1083 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_701 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1083_def]
  simp only [input1082_eq, input1081_eq]
  kernel_rfl

theorem output1083_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1083 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1083_def]
  simp only [output1081_eq]

theorem input1084_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1084 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_703 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1084_def]
  simp only [input1083_eq, input1080_eq]
  kernel_rfl

theorem output1084_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1084 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1084_def]
  simp only [output1083_eq]

theorem input1085_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1085 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1085_def]
  kernel_rfl

theorem input1086_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1086 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_693 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1086_def]
  kernel_rfl

theorem input1087_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1087 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_694 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1087_def]
  simp only [input1086_eq, input1085_eq]
  kernel_rfl

theorem input1088_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1088 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1088_def]
  kernel_rfl

theorem output1088_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1088 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1088_def]
  kernel_rfl

theorem input1089_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1089 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_690 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1089_def]
  kernel_rfl

theorem output1089_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1089 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_398 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1089_def]
  kernel_rfl

theorem input1090_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1090 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_691 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1090_def]
  simp only [input1089_eq, input1088_eq]
  kernel_rfl

theorem output1090_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1090 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_399 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1090_def]
  simp only [output1089_eq, output1088_eq]
  kernel_rfl

theorem input1091_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1091 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_688 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1091_def]
  kernel_rfl

theorem output1091_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1091 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_396 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1091_def]
  kernel_rfl

theorem input1092_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1092 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_686 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1092_def]
  kernel_rfl

theorem input1093_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1093 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1093_def]
  kernel_rfl

theorem output1093_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1093 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1093_def]
  kernel_rfl

theorem input1094_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1094 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_684 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1094_def]
  kernel_rfl

theorem input1095_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1095 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_685 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1095_def]
  simp only [input1094_eq, input1093_eq]
  kernel_rfl

theorem output1095_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1095 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1095_def]
  simp only [output1093_eq]

theorem input1096_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1096 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_687 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1096_def]
  simp only [input1095_eq, input1092_eq]
  kernel_rfl

theorem output1096_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1096 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1096_def]
  simp only [output1095_eq]

theorem input1097_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1097 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_689 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1097_def]
  simp only [input1096_eq, input1091_eq]
  kernel_rfl

theorem output1097_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1097 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_397 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1097_def]
  simp only [output1096_eq, output1091_eq]
  kernel_rfl

theorem input1098_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1098 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_692 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1098_def]
  simp only [input1097_eq, input1090_eq]
  kernel_rfl

theorem output1098_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1098 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_400 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1098_def]
  simp only [output1097_eq, output1090_eq]
  kernel_rfl

theorem input1099_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1099 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_695 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1099_def]
  simp only [input1098_eq, input1087_eq]
  kernel_rfl

theorem output1099_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1099 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_400 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1099_def]
  simp only [output1098_eq]

theorem input1100_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1100 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1100_def]
  kernel_rfl

theorem output1100_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1100 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1100_def]
  kernel_rfl

theorem input1101_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1101 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_696 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1101_def]
  kernel_rfl

theorem input1102_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1102 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1102_def]
  simp only [input1101_eq, input1100_eq]
  kernel_rfl

theorem output1102_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1102 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1102_def]
  simp only [output1100_eq]

theorem input1103_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1103 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1103_def]
  kernel_rfl

theorem input1104_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1104 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_698 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1104_def]
  simp only [input1103_eq, input1102_eq]
  kernel_rfl

theorem output1104_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1104 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1104_def]
  simp only [output1102_eq]

theorem input1105_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1105 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_699 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1105_def]
  simp only [input1099_eq, input1104_eq]
  kernel_rfl

theorem output1105_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1105 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_401 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1105_def]
  simp only [output1099_eq, output1104_eq]
  kernel_rfl

theorem input1106_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1106 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_704 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1106_def]
  simp only [input1105_eq, input1084_eq]
  kernel_rfl

theorem output1106_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1106 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_402 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1106_def]
  simp only [output1105_eq, output1084_eq]
  kernel_rfl

theorem input1107_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1107 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_682 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1107_def]
  kernel_rfl

theorem output1107_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1107 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_394 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1107_def]
  kernel_rfl

theorem input1108_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1108 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_680 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1108_def]
  kernel_rfl

theorem output1108_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1108 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_392 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1108_def]
  kernel_rfl

theorem input1109_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1109 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_678 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1109_def]
  kernel_rfl

theorem output1109_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1109 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_390 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1109_def]
  kernel_rfl

theorem input1110_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1110 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_675 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1110_def]
  kernel_rfl

theorem output1110_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1110 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_387 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1110_def]
  kernel_rfl

theorem input1111_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1111 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_674 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1111_def]
  kernel_rfl

theorem output1111_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1111 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_386 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1111_def]
  kernel_rfl

theorem input1112_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1112 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_676 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1112_def]
  simp only [input1111_eq, input1110_eq]
  kernel_rfl

theorem output1112_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1112 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_388 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1112_def]
  simp only [output1111_eq, output1110_eq]
  kernel_rfl

theorem input1113_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1113 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_672 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1113_def]
  kernel_rfl

theorem output1113_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1113 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_384 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1113_def]
  kernel_rfl

theorem input1114_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1114 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_669 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1114_def]
  kernel_rfl

theorem output1114_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1114 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_381 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1114_def]
  kernel_rfl

theorem input1115_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1115 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_668 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1115_def]
  kernel_rfl

theorem output1115_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1115 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_380 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1115_def]
  kernel_rfl

theorem input1116_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1116 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_670 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1116_def]
  simp only [input1115_eq, input1114_eq]
  kernel_rfl

theorem output1116_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1116 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_382 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1116_def]
  simp only [output1115_eq, output1114_eq]
  kernel_rfl

theorem input1117_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1117 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1117_def]
  kernel_rfl

theorem output1117_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1117 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1117_def]
  kernel_rfl

theorem input1118_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1118 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_663 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1118_def]
  kernel_rfl

theorem input1119_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1119 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1119_def]
  kernel_rfl

theorem output1119_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1119 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1119_def]
  kernel_rfl

theorem input1120_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1120 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_661 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1120_def]
  kernel_rfl

theorem input1121_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1121 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_662 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1121_def]
  simp only [input1120_eq, input1119_eq]
  kernel_rfl

theorem output1121_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1121 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1121_def]
  simp only [output1119_eq]

theorem input1122_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1122 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_664 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1122_def]
  simp only [input1121_eq, input1118_eq]
  kernel_rfl

theorem output1122_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1122 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1122_def]
  simp only [output1121_eq]

theorem input1123_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1123 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1123_def]
  kernel_rfl

theorem input1124_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1124 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_654 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1124_def]
  kernel_rfl

theorem input1125_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1125 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_655 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1125_def]
  simp only [input1124_eq, input1123_eq]
  kernel_rfl

theorem input1126_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1126 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1126_def]
  kernel_rfl

theorem output1126_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1126 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1126_def]
  kernel_rfl

theorem input1127_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1127 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_651 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1127_def]
  kernel_rfl

theorem output1127_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1127 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_373 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1127_def]
  kernel_rfl

theorem input1128_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1128 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_652 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1128_def]
  simp only [input1127_eq, input1126_eq]
  kernel_rfl

theorem output1128_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1128 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_374 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1128_def]
  simp only [output1127_eq, output1126_eq]
  kernel_rfl

theorem input1129_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1129 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_649 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1129_def]
  kernel_rfl

theorem output1129_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1129 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_371 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1129_def]
  kernel_rfl

theorem input1130_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1130 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_647 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1130_def]
  kernel_rfl

theorem input1131_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1131 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1131_def]
  kernel_rfl

theorem output1131_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1131 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1131_def]
  kernel_rfl

theorem input1132_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1132 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_645 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1132_def]
  kernel_rfl

theorem input1133_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1133 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_646 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1133_def]
  simp only [input1132_eq, input1131_eq]
  kernel_rfl

theorem output1133_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1133 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1133_def]
  simp only [output1131_eq]

theorem input1134_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1134 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_648 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1134_def]
  simp only [input1133_eq, input1130_eq]
  kernel_rfl

theorem output1134_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1134 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1134_def]
  simp only [output1133_eq]

theorem input1135_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1135 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_650 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1135_def]
  simp only [input1134_eq, input1129_eq]
  kernel_rfl

theorem output1135_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1135 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_372 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1135_def]
  simp only [output1134_eq, output1129_eq]
  kernel_rfl

theorem input1136_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1136 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_653 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1136_def]
  simp only [input1135_eq, input1128_eq]
  kernel_rfl

theorem output1136_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1136 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_375 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1136_def]
  simp only [output1135_eq, output1128_eq]
  kernel_rfl

theorem input1137_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1137 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_656 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1137_def]
  simp only [input1136_eq, input1125_eq]
  kernel_rfl

theorem output1137_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1137 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_375 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1137_def]
  simp only [output1136_eq]

theorem input1138_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1138 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1138_def]
  kernel_rfl

theorem output1138_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1138 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1138_def]
  kernel_rfl

theorem input1139_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1139 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_657 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1139_def]
  kernel_rfl

theorem input1140_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1140 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_658 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1140_def]
  simp only [input1139_eq, input1138_eq]
  kernel_rfl

theorem output1140_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1140 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1140_def]
  simp only [output1138_eq]

theorem input1141_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1141 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1141_def]
  kernel_rfl

theorem input1142_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1142 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_659 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1142_def]
  simp only [input1141_eq, input1140_eq]
  kernel_rfl

theorem output1142_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1142 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1142_def]
  simp only [output1140_eq]

theorem input1143_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1143 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_660 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1143_def]
  simp only [input1137_eq, input1142_eq]
  kernel_rfl

theorem output1143_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1143 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_376 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1143_def]
  simp only [output1137_eq, output1142_eq]
  kernel_rfl

theorem input1144_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1144 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_665 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1144_def]
  simp only [input1143_eq, input1122_eq]
  kernel_rfl

theorem output1144_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1144 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_377 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1144_def]
  simp only [output1143_eq, output1122_eq]
  kernel_rfl

theorem input1145_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1145 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_643 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1145_def]
  kernel_rfl

theorem output1145_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1145 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_369 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1145_def]
  kernel_rfl

theorem input1146_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1146 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_641 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1146_def]
  kernel_rfl

theorem output1146_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1146 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_367 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1146_def]
  kernel_rfl

theorem input1147_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1147 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_639 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1147_def]
  kernel_rfl

theorem output1147_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1147 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_365 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1147_def]
  kernel_rfl

theorem input1148_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1148 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_636 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1148_def]
  kernel_rfl

theorem output1148_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1148 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_362 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1148_def]
  kernel_rfl

theorem input1149_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1149 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_635 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1149_def]
  kernel_rfl

theorem output1149_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1149 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_361 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1149_def]
  kernel_rfl

theorem input1150_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1150 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_637 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1150_def]
  simp only [input1149_eq, input1148_eq]
  kernel_rfl

theorem output1150_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1150 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_363 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1150_def]
  simp only [output1149_eq, output1148_eq]
  kernel_rfl

theorem input1151_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1151 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_633 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1151_def]
  kernel_rfl

theorem output1151_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1151 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_359 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1151_def]
  kernel_rfl

theorem input1152_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1152 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_630 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1152_def]
  kernel_rfl

theorem output1152_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1152 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_356 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1152_def]
  kernel_rfl

theorem input1153_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1153 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_629 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1153_def]
  kernel_rfl

theorem output1153_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1153 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_355 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1153_def]
  kernel_rfl

theorem input1154_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1154 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_631 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1154_def]
  simp only [input1153_eq, input1152_eq]
  kernel_rfl

theorem output1154_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1154 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_357 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1154_def]
  simp only [output1153_eq, output1152_eq]
  kernel_rfl

theorem input1155_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1155 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1155_def]
  kernel_rfl

theorem output1155_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1155 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1155_def]
  kernel_rfl

theorem input1156_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1156 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_624 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1156_def]
  kernel_rfl

theorem input1157_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1157 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1157_def]
  kernel_rfl

theorem output1157_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1157 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1157_def]
  kernel_rfl

theorem input1158_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1158 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_622 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1158_def]
  kernel_rfl

theorem input1159_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1159 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_623 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1159_def]
  simp only [input1158_eq, input1157_eq]
  kernel_rfl

theorem output1159_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1159 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1159_def]
  simp only [output1157_eq]

theorem input1160_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1160 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_625 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1160_def]
  simp only [input1159_eq, input1156_eq]
  kernel_rfl

theorem output1160_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1160 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1160_def]
  simp only [output1159_eq]

theorem input1161_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1161 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1161_def]
  kernel_rfl

theorem input1162_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1162 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_615 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1162_def]
  kernel_rfl

theorem input1163_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1163 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_616 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1163_def]
  simp only [input1162_eq, input1161_eq]
  kernel_rfl

theorem input1164_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1164 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1164_def]
  kernel_rfl

theorem output1164_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1164 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1164_def]
  kernel_rfl

theorem input1165_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1165 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_612 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1165_def]
  kernel_rfl

theorem output1165_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1165 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_348 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1165_def]
  kernel_rfl

theorem input1166_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1166 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_613 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1166_def]
  simp only [input1165_eq, input1164_eq]
  kernel_rfl

theorem output1166_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1166 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_349 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1166_def]
  simp only [output1165_eq, output1164_eq]
  kernel_rfl

theorem input1167_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1167 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_610 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1167_def]
  kernel_rfl

theorem output1167_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1167 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_346 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1167_def]
  kernel_rfl

theorem input1168_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1168 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_608 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1168_def]
  kernel_rfl

theorem input1169_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1169 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1169_def]
  kernel_rfl

theorem output1169_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1169 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1169_def]
  kernel_rfl

theorem input1170_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1170 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_606 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1170_def]
  kernel_rfl

theorem input1171_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1171 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_607 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1171_def]
  simp only [input1170_eq, input1169_eq]
  kernel_rfl

theorem output1171_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1171 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1171_def]
  simp only [output1169_eq]

theorem input1172_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1172 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_609 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1172_def]
  simp only [input1171_eq, input1168_eq]
  kernel_rfl

theorem output1172_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1172 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1172_def]
  simp only [output1171_eq]

theorem input1173_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1173 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_611 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1173_def]
  simp only [input1172_eq, input1167_eq]
  kernel_rfl

theorem output1173_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1173 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_347 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1173_def]
  simp only [output1172_eq, output1167_eq]
  kernel_rfl

theorem input1174_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1174 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_614 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1174_def]
  simp only [input1173_eq, input1166_eq]
  kernel_rfl

theorem output1174_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1174 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_350 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1174_def]
  simp only [output1173_eq, output1166_eq]
  kernel_rfl

theorem input1175_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1175 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_617 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1175_def]
  simp only [input1174_eq, input1163_eq]
  kernel_rfl

theorem output1175_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1175 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_350 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1175_def]
  simp only [output1174_eq]

theorem input1176_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1176 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1176_def]
  kernel_rfl

theorem output1176_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1176 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1176_def]
  kernel_rfl

theorem input1177_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1177 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_618 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1177_def]
  kernel_rfl

theorem input1178_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1178 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_619 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1178_def]
  simp only [input1177_eq, input1176_eq]
  kernel_rfl

theorem output1178_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1178 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1178_def]
  simp only [output1176_eq]

theorem input1179_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1179 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1179_def]
  kernel_rfl

theorem input1180_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1180 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_620 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1180_def]
  simp only [input1179_eq, input1178_eq]
  kernel_rfl

theorem output1180_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1180 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1180_def]
  simp only [output1178_eq]

theorem input1181_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1181 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_621 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1181_def]
  simp only [input1175_eq, input1180_eq]
  kernel_rfl

theorem output1181_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1181 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_351 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1181_def]
  simp only [output1175_eq, output1180_eq]
  kernel_rfl

theorem input1182_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1182 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_626 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1182_def]
  simp only [input1181_eq, input1160_eq]
  kernel_rfl

theorem output1182_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1182 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_352 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1182_def]
  simp only [output1181_eq, output1160_eq]
  kernel_rfl

theorem input1183_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1183 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_603 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1183_def]
  kernel_rfl

theorem output1183_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1183 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_343 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1183_def]
  kernel_rfl

theorem input1184_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1184 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_602 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1184_def]
  kernel_rfl

theorem output1184_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1184 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_342 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1184_def]
  kernel_rfl

theorem input1185_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1185 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_604 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1185_def]
  simp only [input1184_eq, input1183_eq]
  kernel_rfl

theorem output1185_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1185 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_344 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1185_def]
  simp only [output1184_eq, output1183_eq]
  kernel_rfl

theorem input1186_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1186 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_599 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1186_def]
  kernel_rfl

theorem output1186_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1186 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_339 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1186_def]
  kernel_rfl

theorem input1187_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1187 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_598 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1187_def]
  kernel_rfl

theorem output1187_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1187 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_338 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1187_def]
  kernel_rfl

theorem input1188_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1188 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_600 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1188_def]
  simp only [input1187_eq, input1186_eq]
  kernel_rfl

theorem output1188_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1188 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_340 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1188_def]
  simp only [output1187_eq, output1186_eq]
  kernel_rfl

theorem input1189_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1189 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1189_def]
  kernel_rfl

theorem output1189_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1189 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1189_def]
  kernel_rfl

theorem input1190_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1190 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_593 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1190_def]
  kernel_rfl

theorem input1191_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1191 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1191_def]
  kernel_rfl

theorem output1191_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1191 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1191_def]
  kernel_rfl

theorem input1192_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1192 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_591 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1192_def]
  kernel_rfl

theorem input1193_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1193 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_592 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1193_def]
  simp only [input1192_eq, input1191_eq]
  kernel_rfl

theorem output1193_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1193 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1193_def]
  simp only [output1191_eq]

theorem input1194_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1194 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_594 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1194_def]
  simp only [input1193_eq, input1190_eq]
  kernel_rfl

theorem output1194_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1194 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1194_def]
  simp only [output1193_eq]

theorem input1195_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1195 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1195_def]
  kernel_rfl

theorem input1196_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1196 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_584 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1196_def]
  kernel_rfl

theorem input1197_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1197 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_585 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1197_def]
  simp only [input1196_eq, input1195_eq]
  kernel_rfl

theorem input1198_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1198 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1198_def]
  kernel_rfl

theorem output1198_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1198 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1198_def]
  kernel_rfl

theorem input1199_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1199 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_581 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1199_def]
  kernel_rfl

theorem output1199_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1199 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_331 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1199_def]
  kernel_rfl

theorem input1200_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1200 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_582 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1200_def]
  simp only [input1199_eq, input1198_eq]
  kernel_rfl

theorem output1200_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1200 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_332 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1200_def]
  simp only [output1199_eq, output1198_eq]
  kernel_rfl

theorem input1201_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1201 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_579 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1201_def]
  kernel_rfl

theorem output1201_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1201 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_329 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1201_def]
  kernel_rfl

theorem input1202_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1202 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_577 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1202_def]
  kernel_rfl

theorem input1203_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1203 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1203_def]
  kernel_rfl

theorem output1203_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1203 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1203_def]
  kernel_rfl

theorem input1204_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1204 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_575 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1204_def]
  kernel_rfl

theorem input1205_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1205 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_576 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1205_def]
  simp only [input1204_eq, input1203_eq]
  kernel_rfl

theorem output1205_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1205 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1205_def]
  simp only [output1203_eq]

theorem input1206_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1206 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_578 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1206_def]
  simp only [input1205_eq, input1202_eq]
  kernel_rfl

theorem output1206_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1206 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1206_def]
  simp only [output1205_eq]

theorem input1207_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1207 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_580 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1207_def]
  simp only [input1206_eq, input1201_eq]
  kernel_rfl

theorem output1207_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1207 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_330 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1207_def]
  simp only [output1206_eq, output1201_eq]
  kernel_rfl

theorem input1208_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1208 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_583 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1208_def]
  simp only [input1207_eq, input1200_eq]
  kernel_rfl

theorem output1208_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1208 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_333 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1208_def]
  simp only [output1207_eq, output1200_eq]
  kernel_rfl

theorem input1209_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1209 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_586 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1209_def]
  simp only [input1208_eq, input1197_eq]
  kernel_rfl

theorem output1209_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1209 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_333 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1209_def]
  simp only [output1208_eq]

theorem input1210_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1210 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1210_def]
  kernel_rfl

theorem output1210_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1210 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1210_def]
  kernel_rfl

theorem input1211_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1211 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_587 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1211_def]
  kernel_rfl

theorem input1212_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1212 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_588 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1212_def]
  simp only [input1211_eq, input1210_eq]
  kernel_rfl

theorem output1212_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1212 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1212_def]
  simp only [output1210_eq]

theorem input1213_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1213 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1213_def]
  kernel_rfl

theorem input1214_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1214 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_589 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1214_def]
  simp only [input1213_eq, input1212_eq]
  kernel_rfl

theorem output1214_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1214 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1214_def]
  simp only [output1212_eq]

theorem input1215_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1215 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_590 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1215_def]
  simp only [input1209_eq, input1214_eq]
  kernel_rfl

theorem output1215_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1215 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_334 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1215_def]
  simp only [output1209_eq, output1214_eq]
  kernel_rfl

theorem input1216_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1216 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_595 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1216_def]
  simp only [input1215_eq, input1194_eq]
  kernel_rfl

theorem output1216_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1216 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_335 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1216_def]
  simp only [output1215_eq, output1194_eq]
  kernel_rfl

theorem input1217_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1217 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_572 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1217_def]
  kernel_rfl

theorem output1217_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1217 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_326 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1217_def]
  kernel_rfl

theorem input1218_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1218 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_571 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1218_def]
  kernel_rfl

theorem output1218_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1218 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_325 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1218_def]
  kernel_rfl

theorem input1219_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1219 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_573 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1219_def]
  simp only [input1218_eq, input1217_eq]
  kernel_rfl

theorem output1219_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1219 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_327 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1219_def]
  simp only [output1218_eq, output1217_eq]
  kernel_rfl

theorem input1220_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1220 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_568 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1220_def]
  kernel_rfl

theorem output1220_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1220 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_322 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1220_def]
  kernel_rfl

theorem input1221_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1221 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_567 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1221_def]
  kernel_rfl

theorem output1221_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1221 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_321 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1221_def]
  kernel_rfl

theorem input1222_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1222 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_569 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1222_def]
  simp only [input1221_eq, input1220_eq]
  kernel_rfl

theorem output1222_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1222 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_323 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1222_def]
  simp only [output1221_eq, output1220_eq]
  kernel_rfl

theorem input1223_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1223 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1223_def]
  kernel_rfl

theorem output1223_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1223 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1223_def]
  kernel_rfl

theorem input1224_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1224 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_562 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1224_def]
  kernel_rfl

theorem input1225_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1225 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1225_def]
  kernel_rfl

theorem output1225_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1225 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1225_def]
  kernel_rfl

theorem input1226_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1226 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_560 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1226_def]
  kernel_rfl

theorem input1227_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1227 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_561 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1227_def]
  simp only [input1226_eq, input1225_eq]
  kernel_rfl

theorem output1227_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1227 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1227_def]
  simp only [output1225_eq]

theorem input1228_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1228 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_563 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1228_def]
  simp only [input1227_eq, input1224_eq]
  kernel_rfl

theorem output1228_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1228 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1228_def]
  simp only [output1227_eq]

theorem input1229_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1229 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1229_def]
  kernel_rfl

theorem input1230_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1230 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_553 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1230_def]
  kernel_rfl

theorem input1231_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1231 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_554 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1231_def]
  simp only [input1230_eq, input1229_eq]
  kernel_rfl

theorem input1232_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1232 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1232_def]
  kernel_rfl

theorem output1232_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1232 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1232_def]
  kernel_rfl

theorem input1233_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1233 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_550 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1233_def]
  kernel_rfl

theorem output1233_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1233 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_314 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1233_def]
  kernel_rfl

theorem input1234_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1234 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_551 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1234_def]
  simp only [input1233_eq, input1232_eq]
  kernel_rfl

theorem output1234_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1234 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_315 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1234_def]
  simp only [output1233_eq, output1232_eq]
  kernel_rfl

theorem input1235_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1235 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_548 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1235_def]
  kernel_rfl

theorem output1235_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1235 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_312 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1235_def]
  kernel_rfl

theorem input1236_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1236 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_546 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1236_def]
  kernel_rfl

theorem input1237_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1237 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1237_def]
  kernel_rfl

theorem output1237_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1237 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1237_def]
  kernel_rfl

theorem input1238_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1238 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_544 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1238_def]
  kernel_rfl

theorem input1239_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1239 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_545 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1239_def]
  simp only [input1238_eq, input1237_eq]
  kernel_rfl

theorem output1239_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1239 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1239_def]
  simp only [output1237_eq]

theorem input1240_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1240 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_547 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1240_def]
  simp only [input1239_eq, input1236_eq]
  kernel_rfl

theorem output1240_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1240 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1240_def]
  simp only [output1239_eq]

theorem input1241_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1241 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_549 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1241_def]
  simp only [input1240_eq, input1235_eq]
  kernel_rfl

theorem output1241_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1241 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_313 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1241_def]
  simp only [output1240_eq, output1235_eq]
  kernel_rfl

theorem input1242_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1242 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_552 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1242_def]
  simp only [input1241_eq, input1234_eq]
  kernel_rfl

theorem output1242_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1242 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_316 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1242_def]
  simp only [output1241_eq, output1234_eq]
  kernel_rfl

theorem input1243_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1243 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_555 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1243_def]
  simp only [input1242_eq, input1231_eq]
  kernel_rfl

theorem output1243_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1243 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_316 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1243_def]
  simp only [output1242_eq]

theorem input1244_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1244 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1244_def]
  kernel_rfl

theorem output1244_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1244 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1244_def]
  kernel_rfl

theorem input1245_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1245 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_556 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1245_def]
  kernel_rfl

theorem input1246_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1246 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_557 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1246_def]
  simp only [input1245_eq, input1244_eq]
  kernel_rfl

theorem output1246_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1246 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1246_def]
  simp only [output1244_eq]

theorem input1247_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1247 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1247_def]
  kernel_rfl

theorem input1248_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1248 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_558 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1248_def]
  simp only [input1247_eq, input1246_eq]
  kernel_rfl

theorem output1248_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1248 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1248_def]
  simp only [output1246_eq]

theorem input1249_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1249 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_559 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1249_def]
  simp only [input1243_eq, input1248_eq]
  kernel_rfl

theorem output1249_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1249 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_317 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1249_def]
  simp only [output1243_eq, output1248_eq]
  kernel_rfl

theorem input1250_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1250 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_564 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1250_def]
  simp only [input1249_eq, input1228_eq]
  kernel_rfl

theorem output1250_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1250 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_318 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1250_def]
  simp only [output1249_eq, output1228_eq]
  kernel_rfl

theorem input1251_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1251 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_541 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1251_def]
  kernel_rfl

theorem output1251_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1251 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_309 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1251_def]
  kernel_rfl

theorem input1252_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1252 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_540 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1252_def]
  kernel_rfl

theorem output1252_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1252 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_308 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1252_def]
  kernel_rfl

theorem input1253_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1253 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_542 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1253_def]
  simp only [input1252_eq, input1251_eq]
  kernel_rfl

theorem output1253_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1253 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_310 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1253_def]
  simp only [output1252_eq, output1251_eq]
  kernel_rfl

theorem input1254_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1254 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_537 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1254_def]
  kernel_rfl

theorem output1254_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1254 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_305 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1254_def]
  kernel_rfl

theorem input1255_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1255 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_536 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1255_def]
  kernel_rfl

theorem output1255_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1255 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_304 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1255_def]
  kernel_rfl

theorem input1256_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1256 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_538 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1256_def]
  simp only [input1255_eq, input1254_eq]
  kernel_rfl

theorem output1256_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1256 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_306 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1256_def]
  simp only [output1255_eq, output1254_eq]
  kernel_rfl

theorem input1257_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1257 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1257_def]
  kernel_rfl

theorem output1257_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1257 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1257_def]
  kernel_rfl

theorem input1258_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1258 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_531 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1258_def]
  kernel_rfl

theorem input1259_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1259 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1259_def]
  kernel_rfl

theorem output1259_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1259 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1259_def]
  kernel_rfl

theorem input1260_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1260 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_529 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1260_def]
  kernel_rfl

theorem input1261_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1261 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_530 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1261_def]
  simp only [input1260_eq, input1259_eq]
  kernel_rfl

theorem output1261_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1261 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1261_def]
  simp only [output1259_eq]

theorem input1262_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1262 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_532 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1262_def]
  simp only [input1261_eq, input1258_eq]
  kernel_rfl

theorem output1262_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1262 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1262_def]
  simp only [output1261_eq]

theorem input1263_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1263 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1263_def]
  kernel_rfl

theorem input1264_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1264 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_522 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1264_def]
  kernel_rfl

theorem input1265_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1265 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_523 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1265_def]
  simp only [input1264_eq, input1263_eq]
  kernel_rfl

theorem input1266_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1266 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1266_def]
  kernel_rfl

theorem output1266_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1266 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1266_def]
  kernel_rfl

theorem input1267_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1267 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_519 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1267_def]
  kernel_rfl

theorem output1267_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1267 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_297 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1267_def]
  kernel_rfl

theorem input1268_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1268 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_520 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1268_def]
  simp only [input1267_eq, input1266_eq]
  kernel_rfl

theorem output1268_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1268 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_298 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1268_def]
  simp only [output1267_eq, output1266_eq]
  kernel_rfl

theorem input1269_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1269 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_517 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1269_def]
  kernel_rfl

theorem output1269_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1269 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_295 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1269_def]
  kernel_rfl

theorem input1270_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1270 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_515 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1270_def]
  kernel_rfl

theorem input1271_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1271 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1271_def]
  kernel_rfl

theorem output1271_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1271 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1271_def]
  kernel_rfl

theorem input1272_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1272 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_513 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1272_def]
  kernel_rfl

theorem input1273_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1273 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_514 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1273_def]
  simp only [input1272_eq, input1271_eq]
  kernel_rfl

theorem output1273_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1273 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1273_def]
  simp only [output1271_eq]

theorem input1274_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1274 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_516 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1274_def]
  simp only [input1273_eq, input1270_eq]
  kernel_rfl

theorem output1274_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1274 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1274_def]
  simp only [output1273_eq]

theorem input1275_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1275 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_518 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1275_def]
  simp only [input1274_eq, input1269_eq]
  kernel_rfl

theorem output1275_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1275 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_296 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1275_def]
  simp only [output1274_eq, output1269_eq]
  kernel_rfl

theorem input1276_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1276 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_521 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1276_def]
  simp only [input1275_eq, input1268_eq]
  kernel_rfl

theorem output1276_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1276 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_299 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1276_def]
  simp only [output1275_eq, output1268_eq]
  kernel_rfl

theorem input1277_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1277 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_524 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1277_def]
  simp only [input1276_eq, input1265_eq]
  kernel_rfl

theorem output1277_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1277 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_299 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1277_def]
  simp only [output1276_eq]

theorem input1278_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1278 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1278_def]
  kernel_rfl

theorem output1278_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1278 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1278_def]
  kernel_rfl

theorem input1279_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1279 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_525 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1279_def]
  kernel_rfl

#print axioms input1279_eq
end InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
