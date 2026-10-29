import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel808.Data2
import InitECandidate.Proofs.WordStages.Parallel808.Data3
import InitECandidate.Proofs.DeadStages808.Parallel.Data.Chunk004
import InitECandidate.Proofs.WordStages.Parallel808.AgreementsParallel.Chunk003

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel808.AgreementsParallel
theorem input1024_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1024 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_67 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1024_def]
  kernel_rfl

theorem output1024_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1024 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_67 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1024_def]
  kernel_rfl

theorem input1025_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1025 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_65 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1025_def]
  kernel_rfl

theorem output1025_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1025 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_65 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1025_def]
  kernel_rfl

theorem input1026_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1026 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_63 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1026_def]
  kernel_rfl

theorem output1026_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1026 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_63 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1026_def]
  kernel_rfl

theorem input1027_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1027 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_61 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1027_def]
  kernel_rfl

theorem output1027_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1027 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_61 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1027_def]
  kernel_rfl

theorem input1028_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1028 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_60 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1028_def]
  kernel_rfl

theorem output1028_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1028 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_60 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1028_def]
  kernel_rfl

theorem input1029_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1029 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_62 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1029_def]
  simp only [input1028_eq, input1027_eq]
  kernel_rfl

theorem output1029_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1029 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_62 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1029_def]
  simp only [output1028_eq, output1027_eq]
  kernel_rfl

theorem input1030_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1030 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_64 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1030_def]
  simp only [input1029_eq, input1026_eq]
  kernel_rfl

theorem output1030_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1030 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_64 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1030_def]
  simp only [output1029_eq, output1026_eq]
  kernel_rfl

theorem input1031_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1031 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_66 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1031_def]
  simp only [input1030_eq, input1025_eq]
  kernel_rfl

theorem output1031_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1031 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_66 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1031_def]
  simp only [output1030_eq, output1025_eq]
  kernel_rfl

theorem input1032_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1032 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_68 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1032_def]
  simp only [input1031_eq, input1024_eq]
  kernel_rfl

theorem output1032_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1032 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_68 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1032_def]
  simp only [output1031_eq, output1024_eq]
  kernel_rfl

theorem input1033_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1033 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_57 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1033_def]
  kernel_rfl

theorem output1033_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1033 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_57 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1033_def]
  kernel_rfl

theorem input1034_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1034 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_55 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1034_def]
  kernel_rfl

theorem output1034_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1034 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_55 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1034_def]
  kernel_rfl

theorem input1035_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1035 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_53 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1035_def]
  kernel_rfl

theorem output1035_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1035 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_53 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1035_def]
  kernel_rfl

theorem input1036_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1036 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_51 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1036_def]
  kernel_rfl

theorem output1036_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1036 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_51 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1036_def]
  kernel_rfl

theorem input1037_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1037 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_50 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1037_def]
  kernel_rfl

theorem output1037_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1037 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_50 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1037_def]
  kernel_rfl

theorem input1038_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1038 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_52 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1038_def]
  simp only [input1037_eq, input1036_eq]
  kernel_rfl

theorem output1038_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1038 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_52 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1038_def]
  simp only [output1037_eq, output1036_eq]
  kernel_rfl

theorem input1039_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1039 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_54 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1039_def]
  simp only [input1038_eq, input1035_eq]
  kernel_rfl

theorem output1039_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1039 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_54 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1039_def]
  simp only [output1038_eq, output1035_eq]
  kernel_rfl

theorem input1040_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1040 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_56 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1040_def]
  simp only [input1039_eq, input1034_eq]
  kernel_rfl

theorem output1040_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1040 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_56 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1040_def]
  simp only [output1039_eq, output1034_eq]
  kernel_rfl

theorem input1041_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1041 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_58 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1041_def]
  simp only [input1040_eq, input1033_eq]
  kernel_rfl

theorem output1041_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1041 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_58 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1041_def]
  simp only [output1040_eq, output1033_eq]
  kernel_rfl

theorem input1042_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1042 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_47 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1042_def]
  kernel_rfl

theorem output1042_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1042 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_47 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1042_def]
  kernel_rfl

theorem input1043_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1043 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_45 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1043_def]
  kernel_rfl

theorem output1043_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1043 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_45 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1043_def]
  kernel_rfl

theorem input1044_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1044 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_43 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1044_def]
  kernel_rfl

theorem output1044_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1044 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_43 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1044_def]
  kernel_rfl

theorem input1045_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1045 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_41 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1045_def]
  kernel_rfl

theorem output1045_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1045 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_41 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1045_def]
  kernel_rfl

theorem input1046_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1046 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_40 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1046_def]
  kernel_rfl

theorem output1046_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1046 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_40 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1046_def]
  kernel_rfl

theorem input1047_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1047 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_42 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1047_def]
  simp only [input1046_eq, input1045_eq]
  kernel_rfl

theorem output1047_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1047 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_42 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1047_def]
  simp only [output1046_eq, output1045_eq]
  kernel_rfl

theorem input1048_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1048 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_44 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1048_def]
  simp only [input1047_eq, input1044_eq]
  kernel_rfl

theorem output1048_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1048 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_44 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1048_def]
  simp only [output1047_eq, output1044_eq]
  kernel_rfl

theorem input1049_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1049 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_46 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1049_def]
  simp only [input1048_eq, input1043_eq]
  kernel_rfl

theorem output1049_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1049 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_46 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1049_def]
  simp only [output1048_eq, output1043_eq]
  kernel_rfl

theorem input1050_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1050 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_48 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1050_def]
  simp only [input1049_eq, input1042_eq]
  kernel_rfl

theorem output1050_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1050 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_48 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1050_def]
  simp only [output1049_eq, output1042_eq]
  kernel_rfl

theorem input1051_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1051 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_37 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1051_def]
  kernel_rfl

theorem output1051_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1051 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_37 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1051_def]
  kernel_rfl

theorem input1052_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1052 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_35 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1052_def]
  kernel_rfl

theorem output1052_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1052 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_35 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1052_def]
  kernel_rfl

theorem input1053_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1053 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_33 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1053_def]
  kernel_rfl

theorem output1053_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1053 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_33 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1053_def]
  kernel_rfl

theorem input1054_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1054 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_31 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1054_def]
  kernel_rfl

theorem output1054_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1054 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_31 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1054_def]
  kernel_rfl

theorem input1055_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1055 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_30 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1055_def]
  kernel_rfl

theorem output1055_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1055 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_30 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1055_def]
  kernel_rfl

theorem input1056_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1056 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_32 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1056_def]
  simp only [input1055_eq, input1054_eq]
  kernel_rfl

theorem output1056_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1056 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_32 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1056_def]
  simp only [output1055_eq, output1054_eq]
  kernel_rfl

theorem input1057_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1057 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_34 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1057_def]
  simp only [input1056_eq, input1053_eq]
  kernel_rfl

theorem output1057_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1057 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_34 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1057_def]
  simp only [output1056_eq, output1053_eq]
  kernel_rfl

theorem input1058_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1058 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_36 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1058_def]
  simp only [input1057_eq, input1052_eq]
  kernel_rfl

theorem output1058_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1058 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_36 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1058_def]
  simp only [output1057_eq, output1052_eq]
  kernel_rfl

theorem input1059_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1059 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_38 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1059_def]
  simp only [input1058_eq, input1051_eq]
  kernel_rfl

theorem output1059_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1059 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_38 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1059_def]
  simp only [output1058_eq, output1051_eq]
  kernel_rfl

theorem input1060_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1060 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_27 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1060_def]
  kernel_rfl

theorem output1060_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1060 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_27 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1060_def]
  kernel_rfl

theorem input1061_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1061 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_25 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1061_def]
  kernel_rfl

theorem output1061_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1061 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_25 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1061_def]
  kernel_rfl

theorem input1062_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1062 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_23 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1062_def]
  kernel_rfl

theorem output1062_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1062 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_23 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1062_def]
  kernel_rfl

theorem input1063_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1063 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_21 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1063_def]
  kernel_rfl

theorem output1063_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1063 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_21 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1063_def]
  kernel_rfl

theorem input1064_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1064 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_20 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1064_def]
  kernel_rfl

theorem output1064_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1064 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_20 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1064_def]
  kernel_rfl

theorem input1065_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1065 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_22 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1065_def]
  simp only [input1064_eq, input1063_eq]
  kernel_rfl

theorem output1065_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1065 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_22 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1065_def]
  simp only [output1064_eq, output1063_eq]
  kernel_rfl

theorem input1066_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1066 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_24 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1066_def]
  simp only [input1065_eq, input1062_eq]
  kernel_rfl

theorem output1066_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1066 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_24 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1066_def]
  simp only [output1065_eq, output1062_eq]
  kernel_rfl

theorem input1067_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1067 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_26 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1067_def]
  simp only [input1066_eq, input1061_eq]
  kernel_rfl

theorem output1067_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1067 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_26 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1067_def]
  simp only [output1066_eq, output1061_eq]
  kernel_rfl

theorem input1068_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1068 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_28 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1068_def]
  simp only [input1067_eq, input1060_eq]
  kernel_rfl

theorem output1068_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1068 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_28 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1068_def]
  simp only [output1067_eq, output1060_eq]
  kernel_rfl

theorem input1069_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1069 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_17 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1069_def]
  kernel_rfl

theorem output1069_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1069 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_17 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1069_def]
  kernel_rfl

theorem input1070_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1070 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_15 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1070_def]
  kernel_rfl

theorem output1070_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1070 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_15 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1070_def]
  kernel_rfl

theorem input1071_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1071 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_13 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1071_def]
  kernel_rfl

theorem output1071_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1071 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_13 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1071_def]
  kernel_rfl

theorem input1072_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1072 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_11 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1072_def]
  kernel_rfl

theorem output1072_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1072 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_11 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1072_def]
  kernel_rfl

theorem input1073_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1073 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_10 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1073_def]
  kernel_rfl

theorem output1073_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1073 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_10 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1073_def]
  kernel_rfl

theorem input1074_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1074 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_12 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1074_def]
  simp only [input1073_eq, input1072_eq]
  kernel_rfl

theorem output1074_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1074 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_12 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1074_def]
  simp only [output1073_eq, output1072_eq]
  kernel_rfl

theorem input1075_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1075 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_14 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1075_def]
  simp only [input1074_eq, input1071_eq]
  kernel_rfl

theorem output1075_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1075 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_14 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1075_def]
  simp only [output1074_eq, output1071_eq]
  kernel_rfl

theorem input1076_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1076 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_16 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1076_def]
  simp only [input1075_eq, input1070_eq]
  kernel_rfl

theorem output1076_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1076 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_16 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1076_def]
  simp only [output1075_eq, output1070_eq]
  kernel_rfl

theorem input1077_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1077 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_18 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1077_def]
  simp only [input1076_eq, input1069_eq]
  kernel_rfl

theorem output1077_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1077 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_18 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1077_def]
  simp only [output1076_eq, output1069_eq]
  kernel_rfl

theorem input1078_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1078 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_8 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1078_def]
  kernel_rfl

theorem output1078_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1078 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_8 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1078_def]
  kernel_rfl

theorem input1079_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1079 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_6 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1079_def]
  kernel_rfl

theorem output1079_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1079 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_6 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1079_def]
  kernel_rfl

theorem input1080_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1080 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_4 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1080_def]
  kernel_rfl

theorem output1080_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1080 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_4 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1080_def]
  kernel_rfl

theorem input1081_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1081 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_2 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1081_def]
  kernel_rfl

theorem output1081_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1081 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_2 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1081_def]
  kernel_rfl

theorem input1082_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1082 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1082_def]
  kernel_rfl

theorem output1082_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1082 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1082_def]
  kernel_rfl

theorem input1083_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1083 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_3 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1083_def]
  simp only [input1082_eq, input1081_eq]
  kernel_rfl

theorem output1083_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1083 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_3 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1083_def]
  simp only [output1082_eq, output1081_eq]
  kernel_rfl

theorem input1084_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1084 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_5 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1084_def]
  simp only [input1083_eq, input1080_eq]
  kernel_rfl

theorem output1084_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1084 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_5 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1084_def]
  simp only [output1083_eq, output1080_eq]
  kernel_rfl

theorem input1085_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1085 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_7 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1085_def]
  simp only [input1084_eq, input1079_eq]
  kernel_rfl

theorem output1085_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1085 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_7 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1085_def]
  simp only [output1084_eq, output1079_eq]
  kernel_rfl

theorem input1086_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1086 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_9 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1086_def]
  simp only [input1085_eq, input1078_eq]
  kernel_rfl

theorem output1086_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1086 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_9 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1086_def]
  simp only [output1085_eq, output1078_eq]
  kernel_rfl

theorem input1087_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1087 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_19 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1087_def]
  simp only [input1086_eq, input1077_eq]
  kernel_rfl

theorem output1087_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1087 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_19 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1087_def]
  simp only [output1086_eq, output1077_eq]
  kernel_rfl

theorem input1088_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1088 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_29 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1088_def]
  simp only [input1087_eq, input1068_eq]
  kernel_rfl

theorem output1088_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1088 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_29 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1088_def]
  simp only [output1087_eq, output1068_eq]
  kernel_rfl

theorem input1089_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1089 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_39 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1089_def]
  simp only [input1088_eq, input1059_eq]
  kernel_rfl

theorem output1089_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1089 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_39 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1089_def]
  simp only [output1088_eq, output1059_eq]
  kernel_rfl

theorem input1090_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1090 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_49 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1090_def]
  simp only [input1089_eq, input1050_eq]
  kernel_rfl

theorem output1090_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1090 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_49 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1090_def]
  simp only [output1089_eq, output1050_eq]
  kernel_rfl

theorem input1091_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1091 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_59 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1091_def]
  simp only [input1090_eq, input1041_eq]
  kernel_rfl

theorem output1091_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1091 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_59 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1091_def]
  simp only [output1090_eq, output1041_eq]
  kernel_rfl

theorem input1092_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1092 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_69 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1092_def]
  simp only [input1091_eq, input1032_eq]
  kernel_rfl

theorem output1092_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1092 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_69 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1092_def]
  simp only [output1091_eq, output1032_eq]
  kernel_rfl

theorem input1093_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1093 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_79 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1093_def]
  simp only [input1092_eq, input1023_eq]
  kernel_rfl

theorem output1093_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1093 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_79 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1093_def]
  simp only [output1092_eq, output1023_eq]
  kernel_rfl

theorem input1094_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1094 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_89 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1094_def]
  simp only [input1093_eq, input1014_eq]
  kernel_rfl

theorem output1094_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1094 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_89 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1094_def]
  simp only [output1093_eq, output1014_eq]
  kernel_rfl

theorem input1095_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1095 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_99 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1095_def]
  simp only [input1094_eq, input1005_eq]
  kernel_rfl

theorem output1095_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1095 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_99 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1095_def]
  simp only [output1094_eq, output1005_eq]
  kernel_rfl

theorem input1096_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1096 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_109 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1096_def]
  simp only [input1095_eq, input996_eq]
  kernel_rfl

theorem output1096_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1096 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_109 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1096_def]
  simp only [output1095_eq, output996_eq]
  kernel_rfl

theorem input1097_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1097 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_119 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1097_def]
  simp only [input1096_eq, input987_eq]
  kernel_rfl

theorem output1097_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1097 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_119 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1097_def]
  simp only [output1096_eq, output987_eq]
  kernel_rfl

theorem input1098_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1098 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_129 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1098_def]
  simp only [input1097_eq, input978_eq]
  kernel_rfl

theorem output1098_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1098 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_129 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1098_def]
  simp only [output1097_eq, output978_eq]
  kernel_rfl

theorem input1099_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1099 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_139 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1099_def]
  simp only [input1098_eq, input969_eq]
  kernel_rfl

theorem output1099_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1099 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_139 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1099_def]
  simp only [output1098_eq, output969_eq]
  kernel_rfl

theorem input1100_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1100 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_149 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1100_def]
  simp only [input1099_eq, input960_eq]
  kernel_rfl

theorem output1100_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1100 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_149 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1100_def]
  simp only [output1099_eq, output960_eq]
  kernel_rfl

theorem input1101_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1101 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_159 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1101_def]
  simp only [input1100_eq, input951_eq]
  kernel_rfl

theorem output1101_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1101 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_159 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1101_def]
  simp only [output1100_eq, output951_eq]
  kernel_rfl

theorem input1102_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1102 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_169 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1102_def]
  simp only [input1101_eq, input942_eq]
  kernel_rfl

theorem output1102_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1102 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_169 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1102_def]
  simp only [output1101_eq, output942_eq]
  kernel_rfl

theorem input1103_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1103 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_179 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1103_def]
  simp only [input1102_eq, input933_eq]
  kernel_rfl

theorem output1103_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1103 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_179 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1103_def]
  simp only [output1102_eq, output933_eq]
  kernel_rfl

theorem input1104_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1104 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_181 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1104_def]
  simp only [input1103_eq, input924_eq]
  kernel_rfl

theorem output1104_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1104 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_181 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1104_def]
  simp only [output1103_eq, output924_eq]
  kernel_rfl

theorem input1105_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1105 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_183 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1105_def]
  simp only [input1104_eq, input923_eq]
  kernel_rfl

theorem output1105_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1105 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_183 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1105_def]
  simp only [output1104_eq, output923_eq]
  kernel_rfl

theorem input1106_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1106 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_185 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1106_def]
  simp only [input1105_eq, input922_eq]
  kernel_rfl

theorem output1106_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1106 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_185 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1106_def]
  simp only [output1105_eq, output922_eq]
  kernel_rfl

theorem input1107_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1107 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_187 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1107_def]
  simp only [input1106_eq, input921_eq]
  kernel_rfl

theorem output1107_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1107 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_187 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1107_def]
  simp only [output1106_eq, output921_eq]
  kernel_rfl

theorem input1108_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1108 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_189 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1108_def]
  simp only [input1107_eq, input920_eq]
  kernel_rfl

theorem output1108_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1108 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_189 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1108_def]
  simp only [output1107_eq, output920_eq]
  kernel_rfl

theorem input1109_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1109 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_191 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1109_def]
  simp only [input1108_eq, input919_eq]
  kernel_rfl

theorem output1109_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1109 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_191 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1109_def]
  simp only [output1108_eq, output919_eq]
  kernel_rfl

theorem input1110_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1110 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_241 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1110_def]
  simp only [input1109_eq, input918_eq]
  kernel_rfl

theorem output1110_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1110 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_230 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1110_def]
  simp only [output1109_eq, output918_eq]
  kernel_rfl

theorem input1111_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1111 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_243 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1111_def]
  simp only [input1110_eq, input913_eq]
  kernel_rfl

theorem output1111_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1111 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_232 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1111_def]
  simp only [output1110_eq, output913_eq]
  kernel_rfl

theorem input1112_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1112 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_245 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1112_def]
  simp only [input1111_eq, input912_eq]
  kernel_rfl

theorem output1112_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1112 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_234 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1112_def]
  simp only [output1111_eq, output912_eq]
  kernel_rfl

theorem input1113_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1113 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_247 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1113_def]
  simp only [input1112_eq, input911_eq]
  kernel_rfl

theorem output1113_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1113 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_236 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1113_def]
  simp only [output1112_eq, output911_eq]
  kernel_rfl

theorem input1114_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1114 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_249 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1114_def]
  simp only [input1113_eq, input910_eq]
  kernel_rfl

theorem output1114_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1114 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_238 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1114_def]
  simp only [output1113_eq, output910_eq]
  kernel_rfl

theorem input1115_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1115 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_251 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1115_def]
  simp only [input1114_eq, input909_eq]
  kernel_rfl

theorem output1115_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1115 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_240 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1115_def]
  simp only [output1114_eq, output909_eq]
  kernel_rfl

theorem input1116_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1116 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_253 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1116_def]
  simp only [input1115_eq, input908_eq]
  kernel_rfl

theorem output1116_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1116 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1116_def]
  simp only [output1115_eq, output908_eq]
  kernel_rfl

theorem input1117_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1117 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_255 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1117_def]
  simp only [input1116_eq, input907_eq]
  kernel_rfl

theorem output1117_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1117 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_244 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1117_def]
  simp only [output1116_eq, output907_eq]
  kernel_rfl

theorem input1118_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1118 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_257 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1118_def]
  simp only [input1117_eq, input906_eq]
  kernel_rfl

theorem output1118_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1118 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_246 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1118_def]
  simp only [output1117_eq, output906_eq]
  kernel_rfl

theorem input1119_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1119 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_259 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1119_def]
  simp only [input1118_eq, input905_eq]
  kernel_rfl

theorem output1119_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1119 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_248 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1119_def]
  simp only [output1118_eq, output905_eq]
  kernel_rfl

theorem input1120_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1120 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_261 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1120_def]
  simp only [input1119_eq, input904_eq]
  kernel_rfl

theorem output1120_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1120 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_250 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1120_def]
  simp only [output1119_eq, output904_eq]
  kernel_rfl

theorem input1121_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1121 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_263 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1121_def]
  simp only [input1120_eq, input903_eq]
  kernel_rfl

theorem output1121_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1121 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_252 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1121_def]
  simp only [output1120_eq, output903_eq]
  kernel_rfl

theorem input1122_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1122 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_265 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1122_def]
  simp only [input1121_eq, input902_eq]
  kernel_rfl

theorem output1122_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1122 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_254 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1122_def]
  simp only [output1121_eq, output902_eq]
  kernel_rfl

theorem input1123_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1123 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_267 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1123_def]
  simp only [input1122_eq, input901_eq]
  kernel_rfl

theorem output1123_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1123 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_256 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1123_def]
  simp only [output1122_eq, output901_eq]
  kernel_rfl

theorem input1124_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1124 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_314 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1124_def]
  simp only [input1123_eq, input900_eq]
  kernel_rfl

theorem output1124_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1124 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_294 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1124_def]
  simp only [output1123_eq, output900_eq]
  kernel_rfl

theorem input1125_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1125 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_315 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1125_def]
  simp only [input1124_eq, input895_eq]
  kernel_rfl

theorem output1125_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1125 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_295 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1125_def]
  simp only [output1124_eq, output895_eq]
  kernel_rfl

theorem input1126_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1126 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_317 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1126_def]
  simp only [input1125_eq, input894_eq]
  kernel_rfl

theorem output1126_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1126 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_297 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1126_def]
  simp only [output1125_eq, output894_eq]
  kernel_rfl

theorem input1127_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1127 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_319 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1127_def]
  simp only [input1126_eq, input893_eq]
  kernel_rfl

theorem output1127_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1127 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_299 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1127_def]
  simp only [output1126_eq, output893_eq]
  kernel_rfl

theorem input1128_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1128 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_321 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1128_def]
  simp only [input1127_eq, input892_eq]
  kernel_rfl

theorem output1128_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1128 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_301 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1128_def]
  simp only [output1127_eq, output892_eq]
  kernel_rfl

theorem input1129_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1129 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_323 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1129_def]
  simp only [input1128_eq, input891_eq]
  kernel_rfl

theorem output1129_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1129 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_303 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1129_def]
  simp only [output1128_eq, output891_eq]
  kernel_rfl

theorem input1130_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1130 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_325 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1130_def]
  simp only [input1129_eq, input890_eq]
  kernel_rfl

theorem output1130_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1130 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_305 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1130_def]
  simp only [output1129_eq, output890_eq]
  kernel_rfl

theorem input1131_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1131 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_327 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1131_def]
  simp only [input1130_eq, input889_eq]
  kernel_rfl

theorem output1131_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1131 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_307 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1131_def]
  simp only [output1130_eq, output889_eq]
  kernel_rfl

theorem input1132_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1132 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_374 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1132_def]
  simp only [input1131_eq, input888_eq]
  kernel_rfl

theorem output1132_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1132 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_345 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1132_def]
  simp only [output1131_eq, output888_eq]
  kernel_rfl

theorem input1133_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1133 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_375 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1133_def]
  simp only [input1132_eq, input883_eq]
  kernel_rfl

theorem output1133_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1133 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_346 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1133_def]
  simp only [output1132_eq, output883_eq]
  kernel_rfl

theorem input1134_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1134 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_377 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1134_def]
  simp only [input1133_eq, input882_eq]
  kernel_rfl

theorem output1134_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1134 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_348 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1134_def]
  simp only [output1133_eq, output882_eq]
  kernel_rfl

theorem input1135_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1135 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_379 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1135_def]
  simp only [input1134_eq, input881_eq]
  kernel_rfl

theorem output1135_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1135 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_350 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1135_def]
  simp only [output1134_eq, output881_eq]
  kernel_rfl

theorem input1136_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1136 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_381 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1136_def]
  simp only [input1135_eq, input880_eq]
  kernel_rfl

theorem output1136_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1136 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_352 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1136_def]
  simp only [output1135_eq, output880_eq]
  kernel_rfl

theorem input1137_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1137 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_383 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1137_def]
  simp only [input1136_eq, input879_eq]
  kernel_rfl

theorem output1137_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1137 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_354 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1137_def]
  simp only [output1136_eq, output879_eq]
  kernel_rfl

theorem input1138_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1138 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_385 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1138_def]
  simp only [input1137_eq, input878_eq]
  kernel_rfl

theorem output1138_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1138 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_356 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1138_def]
  simp only [output1137_eq, output878_eq]
  kernel_rfl

theorem input1139_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1139 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_387 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1139_def]
  simp only [input1138_eq, input877_eq]
  kernel_rfl

theorem output1139_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1139 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_358 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1139_def]
  simp only [output1138_eq, output877_eq]
  kernel_rfl

theorem input1140_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1140 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_389 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1140_def]
  simp only [input1139_eq, input876_eq]
  kernel_rfl

theorem output1140_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1140 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_360 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1140_def]
  simp only [output1139_eq, output876_eq]
  kernel_rfl

theorem input1141_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1141 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_391 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1141_def]
  simp only [input1140_eq, input875_eq]
  kernel_rfl

theorem output1141_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1141 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_362 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1141_def]
  simp only [output1140_eq, output875_eq]
  kernel_rfl

theorem input1142_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1142 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_393 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1142_def]
  simp only [input1141_eq, input874_eq]
  kernel_rfl

theorem output1142_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1142 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_364 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1142_def]
  simp only [output1141_eq, output874_eq]
  kernel_rfl

theorem input1143_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1143 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_395 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1143_def]
  simp only [input1142_eq, input873_eq]
  kernel_rfl

theorem output1143_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1143 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_366 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1143_def]
  simp only [output1142_eq, output873_eq]
  kernel_rfl

theorem input1144_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1144 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_397 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1144_def]
  simp only [input1143_eq, input872_eq]
  kernel_rfl

theorem output1144_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1144 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_368 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1144_def]
  simp only [output1143_eq, output872_eq]
  kernel_rfl

theorem input1145_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1145 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_399 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1145_def]
  simp only [input1144_eq, input871_eq]
  kernel_rfl

theorem output1145_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1145 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_370 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1145_def]
  simp only [output1144_eq, output871_eq]
  kernel_rfl

theorem input1146_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1146 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_446 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1146_def]
  simp only [input1145_eq, input870_eq]
  kernel_rfl

theorem output1146_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1146 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_408 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1146_def]
  simp only [output1145_eq, output870_eq]
  kernel_rfl

theorem input1147_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1147 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_447 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1147_def]
  simp only [input1146_eq, input865_eq]
  kernel_rfl

theorem output1147_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1147 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_409 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1147_def]
  simp only [output1146_eq, output865_eq]
  kernel_rfl

theorem input1148_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1148 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_449 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1148_def]
  simp only [input1147_eq, input864_eq]
  kernel_rfl

theorem output1148_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1148 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_411 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1148_def]
  simp only [output1147_eq, output864_eq]
  kernel_rfl

theorem input1149_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1149 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_451 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1149_def]
  simp only [input1148_eq, input863_eq]
  kernel_rfl

theorem output1149_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1149 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_413 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1149_def]
  simp only [output1148_eq, output863_eq]
  kernel_rfl

theorem input1150_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1150 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_453 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1150_def]
  simp only [input1149_eq, input862_eq]
  kernel_rfl

theorem output1150_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1150 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_415 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1150_def]
  simp only [output1149_eq, output862_eq]
  kernel_rfl

theorem input1151_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1151 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_455 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1151_def]
  simp only [input1150_eq, input861_eq]
  kernel_rfl

theorem output1151_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1151 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_417 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1151_def]
  simp only [output1150_eq, output861_eq]
  kernel_rfl

theorem input1152_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1152 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_457 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1152_def]
  simp only [input1151_eq, input860_eq]
  kernel_rfl

theorem output1152_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1152 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_419 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1152_def]
  simp only [output1151_eq, output860_eq]
  kernel_rfl

theorem input1153_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1153 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_459 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1153_def]
  simp only [input1152_eq, input859_eq]
  kernel_rfl

theorem output1153_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1153 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_421 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1153_def]
  simp only [output1152_eq, output859_eq]
  kernel_rfl

theorem input1154_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1154 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_461 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1154_def]
  simp only [input1153_eq, input858_eq]
  kernel_rfl

theorem output1154_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1154 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_423 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1154_def]
  simp only [output1153_eq, output858_eq]
  kernel_rfl

theorem input1155_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1155 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_463 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1155_def]
  simp only [input1154_eq, input857_eq]
  kernel_rfl

theorem output1155_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1155 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_425 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1155_def]
  simp only [output1154_eq, output857_eq]
  kernel_rfl

theorem input1156_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1156 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_465 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1156_def]
  simp only [input1155_eq, input856_eq]
  kernel_rfl

theorem output1156_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1156 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_427 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1156_def]
  simp only [output1155_eq, output856_eq]
  kernel_rfl

theorem input1157_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1157 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_467 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1157_def]
  simp only [input1156_eq, input855_eq]
  kernel_rfl

theorem output1157_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1157 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_429 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1157_def]
  simp only [output1156_eq, output855_eq]
  kernel_rfl

theorem input1158_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1158 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_469 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1158_def]
  simp only [input1157_eq, input854_eq]
  kernel_rfl

theorem output1158_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1158 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_431 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1158_def]
  simp only [output1157_eq, output854_eq]
  kernel_rfl

theorem input1159_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1159 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_471 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1159_def]
  simp only [input1158_eq, input853_eq]
  kernel_rfl

theorem output1159_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1159 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_433 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1159_def]
  simp only [output1158_eq, output853_eq]
  kernel_rfl

theorem input1160_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1160 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_518 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1160_def]
  simp only [input1159_eq, input852_eq]
  kernel_rfl

theorem output1160_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1160 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_471 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1160_def]
  simp only [output1159_eq, output852_eq]
  kernel_rfl

theorem input1161_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1161 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_519 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1161_def]
  simp only [input1160_eq, input847_eq]
  kernel_rfl

theorem output1161_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1161 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_472 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1161_def]
  simp only [output1160_eq, output847_eq]
  kernel_rfl

theorem input1162_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1162 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_521 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1162_def]
  simp only [input1161_eq, input846_eq]
  kernel_rfl

theorem output1162_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1162 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_474 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1162_def]
  simp only [output1161_eq, output846_eq]
  kernel_rfl

theorem input1163_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1163 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_523 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1163_def]
  simp only [input1162_eq, input845_eq]
  kernel_rfl

theorem output1163_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1163 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_476 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1163_def]
  simp only [output1162_eq, output845_eq]
  kernel_rfl

theorem input1164_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1164 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_525 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1164_def]
  simp only [input1163_eq, input844_eq]
  kernel_rfl

theorem output1164_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1164 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_478 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1164_def]
  simp only [output1163_eq, output844_eq]
  kernel_rfl

theorem input1165_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1165 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_527 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1165_def]
  simp only [input1164_eq, input843_eq]
  kernel_rfl

theorem output1165_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1165 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_480 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1165_def]
  simp only [output1164_eq, output843_eq]
  kernel_rfl

theorem input1166_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1166 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_529 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1166_def]
  simp only [input1165_eq, input842_eq]
  kernel_rfl

theorem output1166_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1166 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_482 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1166_def]
  simp only [output1165_eq, output842_eq]
  kernel_rfl

theorem input1167_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1167 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_531 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1167_def]
  simp only [input1166_eq, input841_eq]
  kernel_rfl

theorem output1167_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1167 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_484 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1167_def]
  simp only [output1166_eq, output841_eq]
  kernel_rfl

theorem input1168_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1168 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_578 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1168_def]
  simp only [input1167_eq, input840_eq]
  kernel_rfl

theorem output1168_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1168 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_522 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1168_def]
  simp only [output1167_eq, output840_eq]
  kernel_rfl

theorem input1169_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1169 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_579 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1169_def]
  simp only [input1168_eq, input835_eq]
  kernel_rfl

theorem output1169_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1169 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_523 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1169_def]
  simp only [output1168_eq, output835_eq]
  kernel_rfl

theorem input1170_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1170 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_581 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1170_def]
  simp only [input1169_eq, input834_eq]
  kernel_rfl

theorem output1170_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1170 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_523 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1170_def]
  simp only [output1169_eq]

theorem input1171_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1171 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_583 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1171_def]
  simp only [input1170_eq, input833_eq]
  kernel_rfl

theorem output1171_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1171 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_523 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1171_def]
  simp only [output1170_eq]

theorem input1172_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1172 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_585 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1172_def]
  simp only [input1171_eq, input832_eq]
  kernel_rfl

theorem output1172_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1172 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_523 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1172_def]
  simp only [output1171_eq]

theorem input1173_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1173 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_587 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1173_def]
  simp only [input1172_eq, input831_eq]
  kernel_rfl

theorem output1173_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1173 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_523 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1173_def]
  simp only [output1172_eq]

theorem input1174_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1174 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_589 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1174_def]
  simp only [input1173_eq, input830_eq]
  kernel_rfl

theorem output1174_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1174 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_523 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1174_def]
  simp only [output1173_eq]

theorem input1175_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1175 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_591 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1175_def]
  simp only [input1174_eq, input829_eq]
  kernel_rfl

theorem output1175_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1175 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_523 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1175_def]
  simp only [output1174_eq]

theorem input1176_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1176 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_593 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1176_def]
  simp only [input1175_eq, input828_eq]
  kernel_rfl

theorem output1176_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1176 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_525 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1176_def]
  simp only [output1175_eq, output828_eq]
  kernel_rfl

theorem input1177_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1177 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_595 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1177_def]
  simp only [input1176_eq, input827_eq]
  kernel_rfl

theorem output1177_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1177 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_527 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1177_def]
  simp only [output1176_eq, output827_eq]
  kernel_rfl

theorem input1178_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1178 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_597 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1178_def]
  simp only [input1177_eq, input826_eq]
  kernel_rfl

theorem output1178_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1178 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_529 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1178_def]
  simp only [output1177_eq, output826_eq]
  kernel_rfl

theorem input1179_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1179 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_599 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1179_def]
  simp only [input1178_eq, input825_eq]
  kernel_rfl

theorem output1179_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1179 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_531 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1179_def]
  simp only [output1178_eq, output825_eq]
  kernel_rfl

theorem input1180_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1180 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_601 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1180_def]
  simp only [input1179_eq, input824_eq]
  kernel_rfl

theorem output1180_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1180 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_533 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1180_def]
  simp only [output1179_eq, output824_eq]
  kernel_rfl

theorem input1181_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1181 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_603 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1181_def]
  simp only [input1180_eq, input823_eq]
  kernel_rfl

theorem output1181_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1181 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_535 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1181_def]
  simp only [output1180_eq, output823_eq]
  kernel_rfl

theorem input1182_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1182 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_605 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1182_def]
  simp only [input1181_eq, input822_eq]
  kernel_rfl

theorem output1182_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1182 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_535 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1182_def]
  simp only [output1181_eq]

theorem input1183_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1183 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_607 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1183_def]
  simp only [input1182_eq, input821_eq]
  kernel_rfl

theorem output1183_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1183 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_535 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1183_def]
  simp only [output1182_eq]

theorem input1184_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1184 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_609 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1184_def]
  simp only [input1183_eq, input820_eq]
  kernel_rfl

theorem output1184_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1184 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_535 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1184_def]
  simp only [output1183_eq]

theorem input1185_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1185 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_611 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1185_def]
  simp only [input1184_eq, input819_eq]
  kernel_rfl

theorem output1185_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1185 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_535 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1185_def]
  simp only [output1184_eq]

theorem input1186_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1186 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_613 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1186_def]
  simp only [input1185_eq, input818_eq]
  kernel_rfl

theorem output1186_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1186 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_535 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1186_def]
  simp only [output1185_eq]

theorem input1187_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1187 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_615 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1187_def]
  simp only [input1186_eq, input817_eq]
  kernel_rfl

theorem output1187_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1187 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_535 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1187_def]
  simp only [output1186_eq]

theorem input1188_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1188 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_617 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1188_def]
  simp only [input1187_eq, input816_eq]
  kernel_rfl

theorem output1188_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1188 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_537 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1188_def]
  simp only [output1187_eq, output816_eq]
  kernel_rfl

theorem input1189_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1189 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_619 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1189_def]
  simp only [input1188_eq, input815_eq]
  kernel_rfl

theorem output1189_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1189 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_539 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1189_def]
  simp only [output1188_eq, output815_eq]
  kernel_rfl

theorem input1190_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1190 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_621 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1190_def]
  simp only [input1189_eq, input814_eq]
  kernel_rfl

theorem output1190_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1190 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_541 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1190_def]
  simp only [output1189_eq, output814_eq]
  kernel_rfl

theorem input1191_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1191 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_623 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1191_def]
  simp only [input1190_eq, input813_eq]
  kernel_rfl

theorem output1191_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1191 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_543 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1191_def]
  simp only [output1190_eq, output813_eq]
  kernel_rfl

theorem input1192_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1192 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_625 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1192_def]
  simp only [input1191_eq, input812_eq]
  kernel_rfl

theorem output1192_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1192 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_545 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1192_def]
  simp only [output1191_eq, output812_eq]
  kernel_rfl

theorem input1193_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1193 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_627 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1193_def]
  simp only [input1192_eq, input811_eq]
  kernel_rfl

theorem output1193_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1193 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_547 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1193_def]
  simp only [output1192_eq, output811_eq]
  kernel_rfl

theorem input1194_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1194 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_674 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1194_def]
  simp only [input1193_eq, input810_eq]
  kernel_rfl

theorem output1194_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1194 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_585 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1194_def]
  simp only [output1193_eq, output810_eq]
  kernel_rfl

theorem input1195_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1195 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_675 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1195_def]
  simp only [input1194_eq, input805_eq]
  kernel_rfl

theorem output1195_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1195 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_586 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1195_def]
  simp only [output1194_eq, output805_eq]
  kernel_rfl

theorem input1196_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1196 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_677 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1196_def]
  simp only [input1195_eq, input804_eq]
  kernel_rfl

theorem output1196_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1196 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_588 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1196_def]
  simp only [output1195_eq, output804_eq]
  kernel_rfl

theorem input1197_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1197 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_679 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1197_def]
  simp only [input1196_eq, input803_eq]
  kernel_rfl

theorem output1197_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1197 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_590 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1197_def]
  simp only [output1196_eq, output803_eq]
  kernel_rfl

theorem input1198_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1198 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_681 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1198_def]
  simp only [input1197_eq, input802_eq]
  kernel_rfl

theorem output1198_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1198 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_592 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1198_def]
  simp only [output1197_eq, output802_eq]
  kernel_rfl

theorem input1199_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1199 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_683 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1199_def]
  simp only [input1198_eq, input801_eq]
  kernel_rfl

theorem output1199_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1199 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_594 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1199_def]
  simp only [output1198_eq, output801_eq]
  kernel_rfl

theorem input1200_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1200 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_685 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1200_def]
  simp only [input1199_eq, input800_eq]
  kernel_rfl

theorem output1200_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1200 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_596 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1200_def]
  simp only [output1199_eq, output800_eq]
  kernel_rfl

theorem input1201_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1201 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_687 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1201_def]
  simp only [input1200_eq, input799_eq]
  kernel_rfl

theorem output1201_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1201 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_598 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1201_def]
  simp only [output1200_eq, output799_eq]
  kernel_rfl

theorem input1202_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1202 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_689 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1202_def]
  simp only [input1201_eq, input798_eq]
  kernel_rfl

theorem output1202_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1202 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_600 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1202_def]
  simp only [output1201_eq, output798_eq]
  kernel_rfl

theorem input1203_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1203 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_691 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1203_def]
  simp only [input1202_eq, input797_eq]
  kernel_rfl

theorem output1203_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1203 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_602 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1203_def]
  simp only [output1202_eq, output797_eq]
  kernel_rfl

theorem input1204_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1204 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_693 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1204_def]
  simp only [input1203_eq, input796_eq]
  kernel_rfl

theorem output1204_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1204 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_604 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1204_def]
  simp only [output1203_eq, output796_eq]
  kernel_rfl

theorem input1205_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1205 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_695 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1205_def]
  simp only [input1204_eq, input795_eq]
  kernel_rfl

theorem output1205_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1205 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_606 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1205_def]
  simp only [output1204_eq, output795_eq]
  kernel_rfl

theorem input1206_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1206 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_697 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1206_def]
  simp only [input1205_eq, input794_eq]
  kernel_rfl

theorem output1206_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1206 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_608 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1206_def]
  simp only [output1205_eq, output794_eq]
  kernel_rfl

theorem input1207_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1207 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_699 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1207_def]
  simp only [input1206_eq, input793_eq]
  kernel_rfl

theorem output1207_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1207 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_610 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1207_def]
  simp only [output1206_eq, output793_eq]
  kernel_rfl

theorem input1208_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1208 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_746 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1208_def]
  simp only [input1207_eq, input792_eq]
  kernel_rfl

theorem output1208_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1208 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_648 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1208_def]
  simp only [output1207_eq, output792_eq]
  kernel_rfl

theorem input1209_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1209 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_747 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1209_def]
  simp only [input1208_eq, input787_eq]
  kernel_rfl

theorem output1209_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1209 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_649 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1209_def]
  simp only [output1208_eq, output787_eq]
  kernel_rfl

theorem input1210_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1210 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_749 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1210_def]
  simp only [input1209_eq, input786_eq]
  kernel_rfl

theorem output1210_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1210 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_651 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1210_def]
  simp only [output1209_eq, output786_eq]
  kernel_rfl

theorem input1211_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1211 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_751 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1211_def]
  simp only [input1210_eq, input785_eq]
  kernel_rfl

theorem output1211_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1211 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_653 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1211_def]
  simp only [output1210_eq, output785_eq]
  kernel_rfl

theorem input1212_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1212 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_753 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1212_def]
  simp only [input1211_eq, input784_eq]
  kernel_rfl

theorem output1212_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1212 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_655 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1212_def]
  simp only [output1211_eq, output784_eq]
  kernel_rfl

theorem input1213_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1213 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_755 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1213_def]
  simp only [input1212_eq, input783_eq]
  kernel_rfl

theorem output1213_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1213 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_657 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1213_def]
  simp only [output1212_eq, output783_eq]
  kernel_rfl

theorem input1214_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1214 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_757 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1214_def]
  simp only [input1213_eq, input782_eq]
  kernel_rfl

theorem output1214_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1214 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_659 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1214_def]
  simp only [output1213_eq, output782_eq]
  kernel_rfl

theorem input1215_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1215 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_759 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1215_def]
  simp only [input1214_eq, input781_eq]
  kernel_rfl

theorem output1215_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1215 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_661 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1215_def]
  simp only [output1214_eq, output781_eq]
  kernel_rfl

theorem input1216_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1216 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_786 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1216_def]
  simp only [input1215_eq, input780_eq]
  kernel_rfl

theorem output1216_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1216 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_679 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1216_def]
  simp only [output1215_eq, output780_eq]
  kernel_rfl

theorem input1217_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1217 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_787 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1217_def]
  simp only [input1216_eq, input775_eq]
  kernel_rfl

theorem output1217_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1217 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_680 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1217_def]
  simp only [output1216_eq, output775_eq]
  kernel_rfl

theorem input1218_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1218 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_789 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1218_def]
  simp only [input1217_eq, input774_eq]
  kernel_rfl

theorem output1218_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1218 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_682 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1218_def]
  simp only [output1217_eq, output774_eq]
  kernel_rfl

theorem input1219_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1219 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_791 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1219_def]
  simp only [input1218_eq, input773_eq]
  kernel_rfl

theorem output1219_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1219 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_684 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1219_def]
  simp only [output1218_eq, output773_eq]
  kernel_rfl

theorem input1220_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1220 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_919 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1220_def]
  simp only [input1219_eq, input772_eq]
  kernel_rfl

theorem output1220_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1220 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_753 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1220_def]
  simp only [output1219_eq, output772_eq]
  kernel_rfl

theorem input1221_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1221 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_920 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1221_def]
  simp only [input1220_eq, input681_eq]
  kernel_rfl

theorem output1221_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1221 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_754 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1221_def]
  simp only [output1220_eq, output681_eq]
  kernel_rfl

theorem input1222_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1222 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_922 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1222_def]
  simp only [input1221_eq, input680_eq]
  kernel_rfl

theorem output1222_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1222 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_756 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1222_def]
  simp only [output1221_eq, output680_eq]
  kernel_rfl

theorem input1223_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1223 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_924 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1223_def]
  simp only [input1222_eq, input679_eq]
  kernel_rfl

theorem output1223_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1223 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_758 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1223_def]
  simp only [output1222_eq, output679_eq]
  kernel_rfl

theorem input1224_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1224 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_926 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1224_def]
  simp only [input1223_eq, input678_eq]
  kernel_rfl

theorem output1224_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1224 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_760 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1224_def]
  simp only [output1223_eq, output678_eq]
  kernel_rfl

theorem input1225_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1225 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_928 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1225_def]
  simp only [input1224_eq, input677_eq]
  kernel_rfl

theorem output1225_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1225 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_762 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1225_def]
  simp only [output1224_eq, output677_eq]
  kernel_rfl

theorem input1226_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1226 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_930 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1226_def]
  simp only [input1225_eq, input676_eq]
  kernel_rfl

theorem output1226_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1226 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_764 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1226_def]
  simp only [output1225_eq, output676_eq]
  kernel_rfl

theorem input1227_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1227 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_932 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1227_def]
  simp only [input1226_eq, input675_eq]
  kernel_rfl

theorem output1227_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1227 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_766 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1227_def]
  simp only [output1226_eq, output675_eq]
  kernel_rfl

theorem input1228_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1228 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_979 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1228_def]
  simp only [input1227_eq, input674_eq]
  kernel_rfl

theorem output1228_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1228 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_804 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1228_def]
  simp only [output1227_eq, output674_eq]
  kernel_rfl

theorem input1229_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1229 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_980 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1229_def]
  simp only [input1228_eq, input669_eq]
  kernel_rfl

theorem output1229_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1229 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_805 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1229_def]
  simp only [output1228_eq, output669_eq]
  kernel_rfl

theorem input1230_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1230 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_982 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1230_def]
  simp only [input1229_eq, input668_eq]
  kernel_rfl

theorem output1230_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1230 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_807 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1230_def]
  simp only [output1229_eq, output668_eq]
  kernel_rfl

theorem input1231_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1231 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_984 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1231_def]
  simp only [input1230_eq, input667_eq]
  kernel_rfl

theorem output1231_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1231 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_809 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1231_def]
  simp only [output1230_eq, output667_eq]
  kernel_rfl

theorem input1232_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1232 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_986 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1232_def]
  simp only [input1231_eq, input666_eq]
  kernel_rfl

theorem output1232_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1232 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_811 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1232_def]
  simp only [output1231_eq, output666_eq]
  kernel_rfl

theorem input1233_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1233 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_988 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1233_def]
  simp only [input1232_eq, input665_eq]
  kernel_rfl

theorem output1233_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1233 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_813 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1233_def]
  simp only [output1232_eq, output665_eq]
  kernel_rfl

theorem input1234_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1234 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_990 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1234_def]
  simp only [input1233_eq, input664_eq]
  kernel_rfl

theorem output1234_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1234 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_815 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1234_def]
  simp only [output1233_eq, output664_eq]
  kernel_rfl

theorem input1235_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1235 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_992 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1235_def]
  simp only [input1234_eq, input663_eq]
  kernel_rfl

theorem output1235_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1235 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_817 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1235_def]
  simp only [output1234_eq, output663_eq]
  kernel_rfl

theorem input1236_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1236 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_994 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1236_def]
  simp only [input1235_eq, input662_eq]
  kernel_rfl

theorem output1236_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1236 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_819 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1236_def]
  simp only [output1235_eq, output662_eq]
  kernel_rfl

theorem input1237_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1237 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_996 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1237_def]
  simp only [input1236_eq, input661_eq]
  kernel_rfl

theorem output1237_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1237 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_821 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1237_def]
  simp only [output1236_eq, output661_eq]
  kernel_rfl

theorem input1238_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1238 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_998 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1238_def]
  simp only [input1237_eq, input660_eq]
  kernel_rfl

theorem output1238_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1238 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_823 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1238_def]
  simp only [output1237_eq, output660_eq]
  kernel_rfl

theorem input1239_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1239 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1000 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1239_def]
  simp only [input1238_eq, input659_eq]
  kernel_rfl

theorem output1239_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1239 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_825 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1239_def]
  simp only [output1238_eq, output659_eq]
  kernel_rfl

theorem input1240_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1240 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1002 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1240_def]
  simp only [input1239_eq, input658_eq]
  kernel_rfl

theorem output1240_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1240 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_827 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1240_def]
  simp only [output1239_eq, output658_eq]
  kernel_rfl

theorem input1241_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1241 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1004 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1241_def]
  simp only [input1240_eq, input657_eq]
  kernel_rfl

theorem output1241_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1241 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_829 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1241_def]
  simp only [output1240_eq, output657_eq]
  kernel_rfl

theorem input1242_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1242 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1051 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1242_def]
  simp only [input1241_eq, input656_eq]
  kernel_rfl

theorem output1242_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1242 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_867 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1242_def]
  simp only [output1241_eq, output656_eq]
  kernel_rfl

theorem input1243_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1243 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1052 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1243_def]
  simp only [input1242_eq, input651_eq]
  kernel_rfl

theorem output1243_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1243 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_868 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1243_def]
  simp only [output1242_eq, output651_eq]
  kernel_rfl

theorem input1244_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1244 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1054 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1244_def]
  simp only [input1243_eq, input650_eq]
  kernel_rfl

theorem output1244_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1244 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_870 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1244_def]
  simp only [output1243_eq, output650_eq]
  kernel_rfl

theorem input1245_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1245 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1056 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1245_def]
  simp only [input1244_eq, input649_eq]
  kernel_rfl

theorem output1245_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1245 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_872 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1245_def]
  simp only [output1244_eq, output649_eq]
  kernel_rfl

theorem input1246_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1246 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1058 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1246_def]
  simp only [input1245_eq, input648_eq]
  kernel_rfl

theorem output1246_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1246 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_874 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1246_def]
  simp only [output1245_eq, output648_eq]
  kernel_rfl

theorem input1247_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1247 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1060 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1247_def]
  simp only [input1246_eq, input647_eq]
  kernel_rfl

theorem output1247_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1247 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_876 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1247_def]
  simp only [output1246_eq, output647_eq]
  kernel_rfl

theorem input1248_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1248 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1062 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1248_def]
  simp only [input1247_eq, input646_eq]
  kernel_rfl

theorem output1248_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1248 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_878 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1248_def]
  simp only [output1247_eq, output646_eq]
  kernel_rfl

theorem input1249_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1249 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1064 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1249_def]
  simp only [input1248_eq, input645_eq]
  kernel_rfl

theorem output1249_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1249 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_880 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1249_def]
  simp only [output1248_eq, output645_eq]
  kernel_rfl

theorem input1250_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1250 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1111 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1250_def]
  simp only [input1249_eq, input644_eq]
  kernel_rfl

theorem output1250_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1250 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_918 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1250_def]
  simp only [output1249_eq, output644_eq]
  kernel_rfl

theorem input1251_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1251 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1112 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1251_def]
  simp only [input1250_eq, input639_eq]
  kernel_rfl

theorem output1251_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1251 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_919 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1251_def]
  simp only [output1250_eq, output639_eq]
  kernel_rfl

theorem input1252_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1252 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1114 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1252_def]
  simp only [input1251_eq, input638_eq]
  kernel_rfl

theorem output1252_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1252 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_921 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1252_def]
  simp only [output1251_eq, output638_eq]
  kernel_rfl

theorem input1253_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1253 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1116 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1253_def]
  simp only [input1252_eq, input637_eq]
  kernel_rfl

theorem output1253_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1253 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_923 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1253_def]
  simp only [output1252_eq, output637_eq]
  kernel_rfl

theorem input1254_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1254 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1118 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1254_def]
  simp only [input1253_eq, input636_eq]
  kernel_rfl

theorem output1254_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1254 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_925 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1254_def]
  simp only [output1253_eq, output636_eq]
  kernel_rfl

theorem input1255_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1255 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1120 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1255_def]
  simp only [input1254_eq, input635_eq]
  kernel_rfl

theorem output1255_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1255 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_927 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1255_def]
  simp only [output1254_eq, output635_eq]
  kernel_rfl

theorem input1256_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1256 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1122 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1256_def]
  simp only [input1255_eq, input634_eq]
  kernel_rfl

theorem output1256_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1256 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_929 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1256_def]
  simp only [output1255_eq, output634_eq]
  kernel_rfl

theorem input1257_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1257 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1124 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1257_def]
  simp only [input1256_eq, input633_eq]
  kernel_rfl

theorem output1257_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1257 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_931 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1257_def]
  simp only [output1256_eq, output633_eq]
  kernel_rfl

theorem input1258_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1258 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1126 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1258_def]
  simp only [input1257_eq, input632_eq]
  kernel_rfl

theorem output1258_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1258 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_933 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1258_def]
  simp only [output1257_eq, output632_eq]
  kernel_rfl

theorem input1259_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1259 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1128 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1259_def]
  simp only [input1258_eq, input631_eq]
  kernel_rfl

theorem output1259_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1259 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_935 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1259_def]
  simp only [output1258_eq, output631_eq]
  kernel_rfl

theorem input1260_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1260 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1130 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1260_def]
  simp only [input1259_eq, input630_eq]
  kernel_rfl

theorem output1260_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1260 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_937 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1260_def]
  simp only [output1259_eq, output630_eq]
  kernel_rfl

theorem input1261_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1261 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1132 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1261_def]
  simp only [input1260_eq, input629_eq]
  kernel_rfl

theorem output1261_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1261 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_939 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1261_def]
  simp only [output1260_eq, output629_eq]
  kernel_rfl

theorem input1262_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1262 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1134 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1262_def]
  simp only [input1261_eq, input628_eq]
  kernel_rfl

theorem output1262_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1262 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_941 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1262_def]
  simp only [output1261_eq, output628_eq]
  kernel_rfl

theorem input1263_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1263 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1136 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1263_def]
  simp only [input1262_eq, input627_eq]
  kernel_rfl

theorem output1263_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1263 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_943 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1263_def]
  simp only [output1262_eq, output627_eq]
  kernel_rfl

theorem input1264_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1264 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1183 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1264_def]
  simp only [input1263_eq, input626_eq]
  kernel_rfl

theorem output1264_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1264 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_981 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1264_def]
  simp only [output1263_eq, output626_eq]
  kernel_rfl

theorem input1265_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1265 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1184 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1265_def]
  simp only [input1264_eq, input621_eq]
  kernel_rfl

theorem output1265_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1265 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_982 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1265_def]
  simp only [output1264_eq, output621_eq]
  kernel_rfl

theorem input1266_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1266 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1186 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1266_def]
  simp only [input1265_eq, input620_eq]
  kernel_rfl

theorem output1266_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1266 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_984 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1266_def]
  simp only [output1265_eq, output620_eq]
  kernel_rfl

theorem input1267_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1267 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1188 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1267_def]
  simp only [input1266_eq, input619_eq]
  kernel_rfl

theorem output1267_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1267 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_986 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1267_def]
  simp only [output1266_eq, output619_eq]
  kernel_rfl

theorem input1268_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1268 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1190 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1268_def]
  simp only [input1267_eq, input618_eq]
  kernel_rfl

theorem output1268_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1268 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_988 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1268_def]
  simp only [output1267_eq, output618_eq]
  kernel_rfl

theorem input1269_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1269 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1192 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1269_def]
  simp only [input1268_eq, input617_eq]
  kernel_rfl

theorem output1269_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1269 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_990 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1269_def]
  simp only [output1268_eq, output617_eq]
  kernel_rfl

theorem input1270_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1270 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1194 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1270_def]
  simp only [input1269_eq, input616_eq]
  kernel_rfl

theorem output1270_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1270 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_992 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1270_def]
  simp only [output1269_eq, output616_eq]
  kernel_rfl

theorem input1271_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1271 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1196 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1271_def]
  simp only [input1270_eq, input615_eq]
  kernel_rfl

theorem output1271_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1271 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_994 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1271_def]
  simp only [output1270_eq, output615_eq]
  kernel_rfl

theorem input1272_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1272 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1198 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1272_def]
  simp only [input1271_eq, input614_eq]
  kernel_rfl

theorem output1272_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1272 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_996 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1272_def]
  simp only [output1271_eq, output614_eq]
  kernel_rfl

theorem input1273_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1273 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1200 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1273_def]
  simp only [input1272_eq, input613_eq]
  kernel_rfl

theorem output1273_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1273 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_998 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1273_def]
  simp only [output1272_eq, output613_eq]
  kernel_rfl

theorem input1274_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1274 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1202 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1274_def]
  simp only [input1273_eq, input612_eq]
  kernel_rfl

theorem output1274_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1274 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1000 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1274_def]
  simp only [output1273_eq, output612_eq]
  kernel_rfl

theorem input1275_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1275 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1204 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1275_def]
  simp only [input1274_eq, input611_eq]
  kernel_rfl

theorem output1275_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1275 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1002 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1275_def]
  simp only [output1274_eq, output611_eq]
  kernel_rfl

theorem input1276_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1276 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1206 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1276_def]
  simp only [input1275_eq, input610_eq]
  kernel_rfl

theorem output1276_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1276 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1004 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1276_def]
  simp only [output1275_eq, output610_eq]
  kernel_rfl

theorem input1277_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1277 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1208 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1277_def]
  simp only [input1276_eq, input609_eq]
  kernel_rfl

theorem output1277_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1277 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1006 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1277_def]
  simp only [output1276_eq, output609_eq]
  kernel_rfl

theorem input1278_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1278 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1255 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1278_def]
  simp only [input1277_eq, input608_eq]
  kernel_rfl

theorem output1278_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1278 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1044 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1278_def]
  simp only [output1277_eq, output608_eq]
  kernel_rfl

theorem input1279_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1279 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_1256 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1279_def]
  simp only [input1278_eq, input603_eq]
  kernel_rfl

theorem output1279_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1279 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_1045 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1279_def]
  simp only [output1278_eq, output603_eq]
  kernel_rfl

#print axioms output1279_eq
end InitECandidate.Proofs.WordStages.Parallel808.AgreementsParallel
