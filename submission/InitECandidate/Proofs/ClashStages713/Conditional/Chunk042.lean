import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree4032_agree_conditional
    (child0 : tree4030 = literal4030)
    (child1 : tree4031 = literal4031) : tree4032 = literal4032 := by
  rw [tree4032_def, child0, child1]
  rfl
theorem node4032_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4030 live4030 coloured4030 = result4030)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4031 live4031 coloured4031 = result4031) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4032 live4032 coloured4032 = result4032 := by
  rw [tree4032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4030 coloured4030 at child
  try dsimp only [live4032, coloured4032]
  rw [child]
  dsimp only [result4030]
  have child := child1
  unfold live4031 coloured4031 at child
  try dsimp only [live4032, coloured4032]
  rw [child]
  dsimp only [result4031]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4033_agree_conditional : tree4033 = literal4033 := by
  rw [tree4033_def]
  rfl
theorem node4033_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4033 live4033 coloured4033 = result4033 := by
  rw [tree4033_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4034_agree_conditional
    (child0 : tree4032 = literal4032)
    (child1 : tree4033 = literal4033) : tree4034 = literal4034 := by
  rw [tree4034_def, child0, child1]
  rfl
theorem node4034_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4032 live4032 coloured4032 = result4032)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4033 live4033 coloured4033 = result4033) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4034 live4034 coloured4034 = result4034 := by
  rw [tree4034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4032 coloured4032 at child
  try dsimp only [live4034, coloured4034]
  rw [child]
  dsimp only [result4032]
  have child := child1
  unfold live4033 coloured4033 at child
  try dsimp only [live4034, coloured4034]
  rw [child]
  dsimp only [result4033]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4035_agree_conditional : tree4035 = literal4035 := by
  rw [tree4035_def]
  rfl
theorem node4035_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4035 live4035 coloured4035 = result4035 := by
  rw [tree4035_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4036_agree_conditional
    (child0 : tree4034 = literal4034)
    (child1 : tree4035 = literal4035) : tree4036 = literal4036 := by
  rw [tree4036_def, child0, child1]
  rfl
theorem node4036_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4034 live4034 coloured4034 = result4034)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4035 live4035 coloured4035 = result4035) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4036 live4036 coloured4036 = result4036 := by
  rw [tree4036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4034 coloured4034 at child
  try dsimp only [live4036, coloured4036]
  rw [child]
  dsimp only [result4034]
  have child := child1
  unfold live4035 coloured4035 at child
  try dsimp only [live4036, coloured4036]
  rw [child]
  dsimp only [result4035]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4037_agree_conditional : tree4037 = literal4037 := by
  rw [tree4037_def]
  rfl
theorem node4037_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4037 live4037 coloured4037 = result4037 := by
  rw [tree4037_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4038_agree_conditional
    (child0 : tree4036 = literal4036)
    (child1 : tree4037 = literal4037) : tree4038 = literal4038 := by
  rw [tree4038_def, child0, child1]
  rfl
theorem node4038_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4036 live4036 coloured4036 = result4036)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4037 live4037 coloured4037 = result4037) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4038 live4038 coloured4038 = result4038 := by
  rw [tree4038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4036 coloured4036 at child
  try dsimp only [live4038, coloured4038]
  rw [child]
  dsimp only [result4036]
  have child := child1
  unfold live4037 coloured4037 at child
  try dsimp only [live4038, coloured4038]
  rw [child]
  dsimp only [result4037]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4039_agree_conditional : tree4039 = literal4039 := by
  rw [tree4039_def]
  rfl
theorem node4039_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4039 live4039 coloured4039 = result4039 := by
  rw [tree4039_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4040_agree_conditional
    (child0 : tree4038 = literal4038)
    (child1 : tree4039 = literal4039) : tree4040 = literal4040 := by
  rw [tree4040_def, child0, child1]
  rfl
theorem node4040_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4038 live4038 coloured4038 = result4038)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4039 live4039 coloured4039 = result4039) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4040 live4040 coloured4040 = result4040 := by
  rw [tree4040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4038 coloured4038 at child
  try dsimp only [live4040, coloured4040]
  rw [child]
  dsimp only [result4038]
  have child := child1
  unfold live4039 coloured4039 at child
  try dsimp only [live4040, coloured4040]
  rw [child]
  dsimp only [result4039]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4041_agree_conditional : tree4041 = literal4041 := by
  rw [tree4041_def]
  rfl
theorem node4041_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4041 live4041 coloured4041 = result4041 := by
  rw [tree4041_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4042_agree_conditional
    (child0 : tree4040 = literal4040)
    (child1 : tree4041 = literal4041) : tree4042 = literal4042 := by
  rw [tree4042_def, child0, child1]
  rfl
theorem node4042_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4040 live4040 coloured4040 = result4040)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4041 live4041 coloured4041 = result4041) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4042 live4042 coloured4042 = result4042 := by
  rw [tree4042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4040 coloured4040 at child
  try dsimp only [live4042, coloured4042]
  rw [child]
  dsimp only [result4040]
  have child := child1
  unfold live4041 coloured4041 at child
  try dsimp only [live4042, coloured4042]
  rw [child]
  dsimp only [result4041]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4043_agree_conditional : tree4043 = literal4043 := by
  rw [tree4043_def]
  rfl
theorem node4043_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4043 live4043 coloured4043 = result4043 := by
  rw [tree4043_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4044_agree_conditional
    (child0 : tree4042 = literal4042)
    (child1 : tree4043 = literal4043) : tree4044 = literal4044 := by
  rw [tree4044_def, child0, child1]
  rfl
theorem node4044_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4042 live4042 coloured4042 = result4042)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4043 live4043 coloured4043 = result4043) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4044 live4044 coloured4044 = result4044 := by
  rw [tree4044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4042 coloured4042 at child
  try dsimp only [live4044, coloured4044]
  rw [child]
  dsimp only [result4042]
  have child := child1
  unfold live4043 coloured4043 at child
  try dsimp only [live4044, coloured4044]
  rw [child]
  dsimp only [result4043]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4045_agree_conditional : tree4045 = literal4045 := by
  rw [tree4045_def]
  rfl
theorem node4045_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4045 live4045 coloured4045 = result4045 := by
  rw [tree4045_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4046_agree_conditional
    (child0 : tree4044 = literal4044)
    (child1 : tree4045 = literal4045) : tree4046 = literal4046 := by
  rw [tree4046_def, child0, child1]
  rfl
theorem node4046_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4044 live4044 coloured4044 = result4044)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4045 live4045 coloured4045 = result4045) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4046 live4046 coloured4046 = result4046 := by
  rw [tree4046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4044 coloured4044 at child
  try dsimp only [live4046, coloured4046]
  rw [child]
  dsimp only [result4044]
  have child := child1
  unfold live4045 coloured4045 at child
  try dsimp only [live4046, coloured4046]
  rw [child]
  dsimp only [result4045]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4047_agree_conditional : tree4047 = literal4047 := by
  rw [tree4047_def]
  rfl
theorem node4047_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4047 live4047 coloured4047 = result4047 := by
  rw [tree4047_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4048_agree_conditional
    (child0 : tree4046 = literal4046)
    (child1 : tree4047 = literal4047) : tree4048 = literal4048 := by
  rw [tree4048_def, child0, child1]
  rfl
theorem node4048_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4046 live4046 coloured4046 = result4046)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4047 live4047 coloured4047 = result4047) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4048 live4048 coloured4048 = result4048 := by
  rw [tree4048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4046 coloured4046 at child
  try dsimp only [live4048, coloured4048]
  rw [child]
  dsimp only [result4046]
  have child := child1
  unfold live4047 coloured4047 at child
  try dsimp only [live4048, coloured4048]
  rw [child]
  dsimp only [result4047]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4049_agree_conditional : tree4049 = literal4049 := by
  rw [tree4049_def]
  rfl
theorem node4049_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4049 live4049 coloured4049 = result4049 := by
  rw [tree4049_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4050_agree_conditional
    (child0 : tree4048 = literal4048)
    (child1 : tree4049 = literal4049) : tree4050 = literal4050 := by
  rw [tree4050_def, child0, child1]
  rfl
theorem node4050_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4048 live4048 coloured4048 = result4048)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4049 live4049 coloured4049 = result4049) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4050 live4050 coloured4050 = result4050 := by
  rw [tree4050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4048 coloured4048 at child
  try dsimp only [live4050, coloured4050]
  rw [child]
  dsimp only [result4048]
  have child := child1
  unfold live4049 coloured4049 at child
  try dsimp only [live4050, coloured4050]
  rw [child]
  dsimp only [result4049]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4051_agree_conditional : tree4051 = literal4051 := by
  rw [tree4051_def]
  rfl
theorem node4051_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4051 live4051 coloured4051 = result4051 := by
  rw [tree4051_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4052_agree_conditional
    (child0 : tree4050 = literal4050)
    (child1 : tree4051 = literal4051) : tree4052 = literal4052 := by
  rw [tree4052_def, child0, child1]
  rfl
theorem node4052_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4050 live4050 coloured4050 = result4050)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4051 live4051 coloured4051 = result4051) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4052 live4052 coloured4052 = result4052 := by
  rw [tree4052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4050 coloured4050 at child
  try dsimp only [live4052, coloured4052]
  rw [child]
  dsimp only [result4050]
  have child := child1
  unfold live4051 coloured4051 at child
  try dsimp only [live4052, coloured4052]
  rw [child]
  dsimp only [result4051]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4053_agree_conditional : tree4053 = literal4053 := by
  rw [tree4053_def]
  rfl
theorem node4053_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4053 live4053 coloured4053 = result4053 := by
  rw [tree4053_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4054_agree_conditional
    (child0 : tree4052 = literal4052)
    (child1 : tree4053 = literal4053) : tree4054 = literal4054 := by
  rw [tree4054_def, child0, child1]
  rfl
theorem node4054_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4052 live4052 coloured4052 = result4052)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4053 live4053 coloured4053 = result4053) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4054 live4054 coloured4054 = result4054 := by
  rw [tree4054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4052 coloured4052 at child
  try dsimp only [live4054, coloured4054]
  rw [child]
  dsimp only [result4052]
  have child := child1
  unfold live4053 coloured4053 at child
  try dsimp only [live4054, coloured4054]
  rw [child]
  dsimp only [result4053]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4055_agree_conditional : tree4055 = literal4055 := by
  rw [tree4055_def]
  rfl
theorem node4055_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4055 live4055 coloured4055 = result4055 := by
  rw [tree4055_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4056_agree_conditional
    (child0 : tree4054 = literal4054)
    (child1 : tree4055 = literal4055) : tree4056 = literal4056 := by
  rw [tree4056_def, child0, child1]
  rfl
theorem node4056_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4054 live4054 coloured4054 = result4054)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4055 live4055 coloured4055 = result4055) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4056 live4056 coloured4056 = result4056 := by
  rw [tree4056_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4054 coloured4054 at child
  try dsimp only [live4056, coloured4056]
  rw [child]
  dsimp only [result4054]
  have child := child1
  unfold live4055 coloured4055 at child
  try dsimp only [live4056, coloured4056]
  rw [child]
  dsimp only [result4055]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4057_agree_conditional : tree4057 = literal4057 := by
  rw [tree4057_def]
  rfl
theorem node4057_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4057 live4057 coloured4057 = result4057 := by
  rw [tree4057_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4058_agree_conditional
    (child0 : tree4056 = literal4056)
    (child1 : tree4057 = literal4057) : tree4058 = literal4058 := by
  rw [tree4058_def, child0, child1]
  rfl
theorem node4058_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4056 live4056 coloured4056 = result4056)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4057 live4057 coloured4057 = result4057) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4058 live4058 coloured4058 = result4058 := by
  rw [tree4058_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4056 coloured4056 at child
  try dsimp only [live4058, coloured4058]
  rw [child]
  dsimp only [result4056]
  have child := child1
  unfold live4057 coloured4057 at child
  try dsimp only [live4058, coloured4058]
  rw [child]
  dsimp only [result4057]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4059_agree_conditional : tree4059 = literal4059 := by
  rw [tree4059_def]
  rfl
theorem node4059_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4059 live4059 coloured4059 = result4059 := by
  rw [tree4059_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4060_agree_conditional
    (child0 : tree4058 = literal4058)
    (child1 : tree4059 = literal4059) : tree4060 = literal4060 := by
  rw [tree4060_def, child0, child1]
  rfl
theorem node4060_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4058 live4058 coloured4058 = result4058)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4059 live4059 coloured4059 = result4059) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4060 live4060 coloured4060 = result4060 := by
  rw [tree4060_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4058 coloured4058 at child
  try dsimp only [live4060, coloured4060]
  rw [child]
  dsimp only [result4058]
  have child := child1
  unfold live4059 coloured4059 at child
  try dsimp only [live4060, coloured4060]
  rw [child]
  dsimp only [result4059]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4061_agree_conditional : tree4061 = literal4061 := by
  rw [tree4061_def]
  rfl
theorem node4061_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4061 live4061 coloured4061 = result4061 := by
  rw [tree4061_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4062_agree_conditional
    (child0 : tree4060 = literal4060)
    (child1 : tree4061 = literal4061) : tree4062 = literal4062 := by
  rw [tree4062_def, child0, child1]
  rfl
theorem node4062_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4060 live4060 coloured4060 = result4060)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4061 live4061 coloured4061 = result4061) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4062 live4062 coloured4062 = result4062 := by
  rw [tree4062_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4060 coloured4060 at child
  try dsimp only [live4062, coloured4062]
  rw [child]
  dsimp only [result4060]
  have child := child1
  unfold live4061 coloured4061 at child
  try dsimp only [live4062, coloured4062]
  rw [child]
  dsimp only [result4061]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4063_agree_conditional : tree4063 = literal4063 := by
  rw [tree4063_def]
  rfl
theorem node4063_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4063 live4063 coloured4063 = result4063 := by
  rw [tree4063_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4064_agree_conditional
    (child0 : tree4062 = literal4062)
    (child1 : tree4063 = literal4063) : tree4064 = literal4064 := by
  rw [tree4064_def, child0, child1]
  rfl
theorem node4064_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4062 live4062 coloured4062 = result4062)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4063 live4063 coloured4063 = result4063) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4064 live4064 coloured4064 = result4064 := by
  rw [tree4064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4062 coloured4062 at child
  try dsimp only [live4064, coloured4064]
  rw [child]
  dsimp only [result4062]
  have child := child1
  unfold live4063 coloured4063 at child
  try dsimp only [live4064, coloured4064]
  rw [child]
  dsimp only [result4063]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4065_agree_conditional : tree4065 = literal4065 := by
  rw [tree4065_def]
  rfl
theorem node4065_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4065 live4065 coloured4065 = result4065 := by
  rw [tree4065_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4066_agree_conditional
    (child0 : tree4064 = literal4064)
    (child1 : tree4065 = literal4065) : tree4066 = literal4066 := by
  rw [tree4066_def, child0, child1]
  rfl
theorem node4066_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4064 live4064 coloured4064 = result4064)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4065 live4065 coloured4065 = result4065) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4066 live4066 coloured4066 = result4066 := by
  rw [tree4066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4064 coloured4064 at child
  try dsimp only [live4066, coloured4066]
  rw [child]
  dsimp only [result4064]
  have child := child1
  unfold live4065 coloured4065 at child
  try dsimp only [live4066, coloured4066]
  rw [child]
  dsimp only [result4065]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4067_agree_conditional : tree4067 = literal4067 := by
  rw [tree4067_def]
  rfl
theorem node4067_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4067 live4067 coloured4067 = result4067 := by
  rw [tree4067_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4068_agree_conditional
    (child0 : tree4066 = literal4066)
    (child1 : tree4067 = literal4067) : tree4068 = literal4068 := by
  rw [tree4068_def, child0, child1]
  rfl
theorem node4068_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4066 live4066 coloured4066 = result4066)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4067 live4067 coloured4067 = result4067) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4068 live4068 coloured4068 = result4068 := by
  rw [tree4068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4066 coloured4066 at child
  try dsimp only [live4068, coloured4068]
  rw [child]
  dsimp only [result4066]
  have child := child1
  unfold live4067 coloured4067 at child
  try dsimp only [live4068, coloured4068]
  rw [child]
  dsimp only [result4067]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4069_agree_conditional : tree4069 = literal4069 := by
  rw [tree4069_def]
  rfl
theorem node4069_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4069 live4069 coloured4069 = result4069 := by
  rw [tree4069_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4070_agree_conditional
    (child0 : tree4068 = literal4068)
    (child1 : tree4069 = literal4069) : tree4070 = literal4070 := by
  rw [tree4070_def, child0, child1]
  rfl
theorem node4070_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4068 live4068 coloured4068 = result4068)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4069 live4069 coloured4069 = result4069) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4070 live4070 coloured4070 = result4070 := by
  rw [tree4070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4068 coloured4068 at child
  try dsimp only [live4070, coloured4070]
  rw [child]
  dsimp only [result4068]
  have child := child1
  unfold live4069 coloured4069 at child
  try dsimp only [live4070, coloured4070]
  rw [child]
  dsimp only [result4069]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4071_agree_conditional : tree4071 = literal4071 := by
  rw [tree4071_def]
  rfl
theorem node4071_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4071 live4071 coloured4071 = result4071 := by
  rw [tree4071_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4072_agree_conditional
    (child0 : tree4070 = literal4070)
    (child1 : tree4071 = literal4071) : tree4072 = literal4072 := by
  rw [tree4072_def, child0, child1]
  rfl
theorem node4072_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4070 live4070 coloured4070 = result4070)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4071 live4071 coloured4071 = result4071) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4072 live4072 coloured4072 = result4072 := by
  rw [tree4072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4070 coloured4070 at child
  try dsimp only [live4072, coloured4072]
  rw [child]
  dsimp only [result4070]
  have child := child1
  unfold live4071 coloured4071 at child
  try dsimp only [live4072, coloured4072]
  rw [child]
  dsimp only [result4071]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4073_agree_conditional : tree4073 = literal4073 := by
  rw [tree4073_def]
  rfl
theorem node4073_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4073 live4073 coloured4073 = result4073 := by
  rw [tree4073_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4074_agree_conditional
    (child0 : tree4072 = literal4072)
    (child1 : tree4073 = literal4073) : tree4074 = literal4074 := by
  rw [tree4074_def, child0, child1]
  rfl
theorem node4074_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4072 live4072 coloured4072 = result4072)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4073 live4073 coloured4073 = result4073) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4074 live4074 coloured4074 = result4074 := by
  rw [tree4074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4072 coloured4072 at child
  try dsimp only [live4074, coloured4074]
  rw [child]
  dsimp only [result4072]
  have child := child1
  unfold live4073 coloured4073 at child
  try dsimp only [live4074, coloured4074]
  rw [child]
  dsimp only [result4073]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4075_agree_conditional : tree4075 = literal4075 := by
  rw [tree4075_def]
  rfl
theorem node4075_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4075 live4075 coloured4075 = result4075 := by
  rw [tree4075_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4076_agree_conditional
    (child0 : tree4074 = literal4074)
    (child1 : tree4075 = literal4075) : tree4076 = literal4076 := by
  rw [tree4076_def, child0, child1]
  rfl
theorem node4076_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4074 live4074 coloured4074 = result4074)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4075 live4075 coloured4075 = result4075) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4076 live4076 coloured4076 = result4076 := by
  rw [tree4076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4074 coloured4074 at child
  try dsimp only [live4076, coloured4076]
  rw [child]
  dsimp only [result4074]
  have child := child1
  unfold live4075 coloured4075 at child
  try dsimp only [live4076, coloured4076]
  rw [child]
  dsimp only [result4075]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4077_agree_conditional : tree4077 = literal4077 := by
  rw [tree4077_def]
  rfl
theorem node4077_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4077 live4077 coloured4077 = result4077 := by
  rw [tree4077_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4078_agree_conditional
    (child0 : tree4076 = literal4076)
    (child1 : tree4077 = literal4077) : tree4078 = literal4078 := by
  rw [tree4078_def, child0, child1]
  rfl
theorem node4078_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4076 live4076 coloured4076 = result4076)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4077 live4077 coloured4077 = result4077) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4078 live4078 coloured4078 = result4078 := by
  rw [tree4078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4076 coloured4076 at child
  try dsimp only [live4078, coloured4078]
  rw [child]
  dsimp only [result4076]
  have child := child1
  unfold live4077 coloured4077 at child
  try dsimp only [live4078, coloured4078]
  rw [child]
  dsimp only [result4077]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4079_agree_conditional : tree4079 = literal4079 := by
  rw [tree4079_def]
  rfl
theorem node4079_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4079 live4079 coloured4079 = result4079 := by
  rw [tree4079_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4080_agree_conditional
    (child0 : tree4078 = literal4078)
    (child1 : tree4079 = literal4079) : tree4080 = literal4080 := by
  rw [tree4080_def, child0, child1]
  rfl
theorem node4080_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4078 live4078 coloured4078 = result4078)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4079 live4079 coloured4079 = result4079) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4080 live4080 coloured4080 = result4080 := by
  rw [tree4080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4078 coloured4078 at child
  try dsimp only [live4080, coloured4080]
  rw [child]
  dsimp only [result4078]
  have child := child1
  unfold live4079 coloured4079 at child
  try dsimp only [live4080, coloured4080]
  rw [child]
  dsimp only [result4079]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4081_agree_conditional : tree4081 = literal4081 := by
  rw [tree4081_def]
  rfl
theorem node4081_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4081 live4081 coloured4081 = result4081 := by
  rw [tree4081_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4082_agree_conditional
    (child0 : tree4080 = literal4080)
    (child1 : tree4081 = literal4081) : tree4082 = literal4082 := by
  rw [tree4082_def, child0, child1]
  rfl
theorem node4082_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4080 live4080 coloured4080 = result4080)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4081 live4081 coloured4081 = result4081) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4082 live4082 coloured4082 = result4082 := by
  rw [tree4082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4080 coloured4080 at child
  try dsimp only [live4082, coloured4082]
  rw [child]
  dsimp only [result4080]
  have child := child1
  unfold live4081 coloured4081 at child
  try dsimp only [live4082, coloured4082]
  rw [child]
  dsimp only [result4081]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4083_agree_conditional : tree4083 = literal4083 := by
  rw [tree4083_def]
  rfl
theorem node4083_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4083 live4083 coloured4083 = result4083 := by
  rw [tree4083_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4084_agree_conditional
    (child0 : tree4082 = literal4082)
    (child1 : tree4083 = literal4083) : tree4084 = literal4084 := by
  rw [tree4084_def, child0, child1]
  rfl
theorem node4084_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4082 live4082 coloured4082 = result4082)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4083 live4083 coloured4083 = result4083) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4084 live4084 coloured4084 = result4084 := by
  rw [tree4084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4082 coloured4082 at child
  try dsimp only [live4084, coloured4084]
  rw [child]
  dsimp only [result4082]
  have child := child1
  unfold live4083 coloured4083 at child
  try dsimp only [live4084, coloured4084]
  rw [child]
  dsimp only [result4083]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4085_agree_conditional : tree4085 = literal4085 := by
  rw [tree4085_def]
  rfl
theorem node4085_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4085 live4085 coloured4085 = result4085 := by
  rw [tree4085_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4086_agree_conditional
    (child0 : tree4084 = literal4084)
    (child1 : tree4085 = literal4085) : tree4086 = literal4086 := by
  rw [tree4086_def, child0, child1]
  rfl
theorem node4086_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4084 live4084 coloured4084 = result4084)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4085 live4085 coloured4085 = result4085) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4086 live4086 coloured4086 = result4086 := by
  rw [tree4086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4084 coloured4084 at child
  try dsimp only [live4086, coloured4086]
  rw [child]
  dsimp only [result4084]
  have child := child1
  unfold live4085 coloured4085 at child
  try dsimp only [live4086, coloured4086]
  rw [child]
  dsimp only [result4085]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4087_agree_conditional : tree4087 = literal4087 := by
  rw [tree4087_def]
  rfl
theorem node4087_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4087 live4087 coloured4087 = result4087 := by
  rw [tree4087_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4088_agree_conditional
    (child0 : tree4086 = literal4086)
    (child1 : tree4087 = literal4087) : tree4088 = literal4088 := by
  rw [tree4088_def, child0, child1]
  rfl
theorem node4088_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4086 live4086 coloured4086 = result4086)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4087 live4087 coloured4087 = result4087) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4088 live4088 coloured4088 = result4088 := by
  rw [tree4088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4086 coloured4086 at child
  try dsimp only [live4088, coloured4088]
  rw [child]
  dsimp only [result4086]
  have child := child1
  unfold live4087 coloured4087 at child
  try dsimp only [live4088, coloured4088]
  rw [child]
  dsimp only [result4087]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4089_agree_conditional : tree4089 = literal4089 := by
  rw [tree4089_def]
  rfl
theorem node4089_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4089 live4089 coloured4089 = result4089 := by
  rw [tree4089_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4090_agree_conditional
    (child0 : tree4088 = literal4088)
    (child1 : tree4089 = literal4089) : tree4090 = literal4090 := by
  rw [tree4090_def, child0, child1]
  rfl
theorem node4090_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4088 live4088 coloured4088 = result4088)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4089 live4089 coloured4089 = result4089) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4090 live4090 coloured4090 = result4090 := by
  rw [tree4090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4088 coloured4088 at child
  try dsimp only [live4090, coloured4090]
  rw [child]
  dsimp only [result4088]
  have child := child1
  unfold live4089 coloured4089 at child
  try dsimp only [live4090, coloured4090]
  rw [child]
  dsimp only [result4089]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4091_agree_conditional : tree4091 = literal4091 := by
  rw [tree4091_def]
  rfl
theorem node4091_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4091 live4091 coloured4091 = result4091 := by
  rw [tree4091_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4092_agree_conditional
    (child0 : tree4090 = literal4090)
    (child1 : tree4091 = literal4091) : tree4092 = literal4092 := by
  rw [tree4092_def, child0, child1]
  rfl
theorem node4092_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4090 live4090 coloured4090 = result4090)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4091 live4091 coloured4091 = result4091) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4092 live4092 coloured4092 = result4092 := by
  rw [tree4092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4090 coloured4090 at child
  try dsimp only [live4092, coloured4092]
  rw [child]
  dsimp only [result4090]
  have child := child1
  unfold live4091 coloured4091 at child
  try dsimp only [live4092, coloured4092]
  rw [child]
  dsimp only [result4091]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4093_agree_conditional : tree4093 = literal4093 := by
  rw [tree4093_def]
  rfl
theorem node4093_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4093 live4093 coloured4093 = result4093 := by
  rw [tree4093_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4094_agree_conditional
    (child0 : tree4092 = literal4092)
    (child1 : tree4093 = literal4093) : tree4094 = literal4094 := by
  rw [tree4094_def, child0, child1]
  rfl
theorem node4094_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4092 live4092 coloured4092 = result4092)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4093 live4093 coloured4093 = result4093) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4094 live4094 coloured4094 = result4094 := by
  rw [tree4094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4092 coloured4092 at child
  try dsimp only [live4094, coloured4094]
  rw [child]
  dsimp only [result4092]
  have child := child1
  unfold live4093 coloured4093 at child
  try dsimp only [live4094, coloured4094]
  rw [child]
  dsimp only [result4093]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4095_agree_conditional : tree4095 = literal4095 := by
  rw [tree4095_def]
  rfl
theorem node4095_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4095 live4095 coloured4095 = result4095 := by
  rw [tree4095_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4096_agree_conditional
    (child0 : tree4094 = literal4094)
    (child1 : tree4095 = literal4095) : tree4096 = literal4096 := by
  rw [tree4096_def, child0, child1]
  rfl
theorem node4096_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4094 live4094 coloured4094 = result4094)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4095 live4095 coloured4095 = result4095) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4096 live4096 coloured4096 = result4096 := by
  rw [tree4096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4094 coloured4094 at child
  try dsimp only [live4096, coloured4096]
  rw [child]
  dsimp only [result4094]
  have child := child1
  unfold live4095 coloured4095 at child
  try dsimp only [live4096, coloured4096]
  rw [child]
  dsimp only [result4095]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4097_agree_conditional : tree4097 = literal4097 := by
  rw [tree4097_def]
  rfl
theorem node4097_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4097 live4097 coloured4097 = result4097 := by
  rw [tree4097_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4098_agree_conditional
    (child0 : tree4096 = literal4096)
    (child1 : tree4097 = literal4097) : tree4098 = literal4098 := by
  rw [tree4098_def, child0, child1]
  rfl
theorem node4098_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4096 live4096 coloured4096 = result4096)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4097 live4097 coloured4097 = result4097) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4098 live4098 coloured4098 = result4098 := by
  rw [tree4098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4096 coloured4096 at child
  try dsimp only [live4098, coloured4098]
  rw [child]
  dsimp only [result4096]
  have child := child1
  unfold live4097 coloured4097 at child
  try dsimp only [live4098, coloured4098]
  rw [child]
  dsimp only [result4097]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4099_agree_conditional : tree4099 = literal4099 := by
  rw [tree4099_def]
  rfl
theorem node4099_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4099 live4099 coloured4099 = result4099 := by
  rw [tree4099_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4100_agree_conditional
    (child0 : tree4098 = literal4098)
    (child1 : tree4099 = literal4099) : tree4100 = literal4100 := by
  rw [tree4100_def, child0, child1]
  rfl
theorem node4100_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4098 live4098 coloured4098 = result4098)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4099 live4099 coloured4099 = result4099) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4100 live4100 coloured4100 = result4100 := by
  rw [tree4100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4098 coloured4098 at child
  try dsimp only [live4100, coloured4100]
  rw [child]
  dsimp only [result4098]
  have child := child1
  unfold live4099 coloured4099 at child
  try dsimp only [live4100, coloured4100]
  rw [child]
  dsimp only [result4099]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4101_agree_conditional : tree4101 = literal4101 := by
  rw [tree4101_def]
  rfl
theorem node4101_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4101 live4101 coloured4101 = result4101 := by
  rw [tree4101_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4102_agree_conditional
    (child0 : tree4100 = literal4100)
    (child1 : tree4101 = literal4101) : tree4102 = literal4102 := by
  rw [tree4102_def, child0, child1]
  rfl
theorem node4102_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4100 live4100 coloured4100 = result4100)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4101 live4101 coloured4101 = result4101) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4102 live4102 coloured4102 = result4102 := by
  rw [tree4102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4100 coloured4100 at child
  try dsimp only [live4102, coloured4102]
  rw [child]
  dsimp only [result4100]
  have child := child1
  unfold live4101 coloured4101 at child
  try dsimp only [live4102, coloured4102]
  rw [child]
  dsimp only [result4101]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4103_agree_conditional : tree4103 = literal4103 := by
  rw [tree4103_def]
  rfl
theorem node4103_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4103 live4103 coloured4103 = result4103 := by
  rw [tree4103_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4104_agree_conditional
    (child0 : tree4102 = literal4102)
    (child1 : tree4103 = literal4103) : tree4104 = literal4104 := by
  rw [tree4104_def, child0, child1]
  rfl
theorem node4104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4102 live4102 coloured4102 = result4102)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4103 live4103 coloured4103 = result4103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4104 live4104 coloured4104 = result4104 := by
  rw [tree4104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4102 coloured4102 at child
  try dsimp only [live4104, coloured4104]
  rw [child]
  dsimp only [result4102]
  have child := child1
  unfold live4103 coloured4103 at child
  try dsimp only [live4104, coloured4104]
  rw [child]
  dsimp only [result4103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4105_agree_conditional : tree4105 = literal4105 := by
  rw [tree4105_def]
  rfl
theorem node4105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4105 live4105 coloured4105 = result4105 := by
  rw [tree4105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4106_agree_conditional
    (child0 : tree4104 = literal4104)
    (child1 : tree4105 = literal4105) : tree4106 = literal4106 := by
  rw [tree4106_def, child0, child1]
  rfl
theorem node4106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4104 live4104 coloured4104 = result4104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4105 live4105 coloured4105 = result4105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4106 live4106 coloured4106 = result4106 := by
  rw [tree4106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4104 coloured4104 at child
  try dsimp only [live4106, coloured4106]
  rw [child]
  dsimp only [result4104]
  have child := child1
  unfold live4105 coloured4105 at child
  try dsimp only [live4106, coloured4106]
  rw [child]
  dsimp only [result4105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4107_agree_conditional : tree4107 = literal4107 := by
  rw [tree4107_def]
  rfl
theorem node4107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4107 live4107 coloured4107 = result4107 := by
  rw [tree4107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4108_agree_conditional
    (child0 : tree4106 = literal4106)
    (child1 : tree4107 = literal4107) : tree4108 = literal4108 := by
  rw [tree4108_def, child0, child1]
  rfl
theorem node4108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4106 live4106 coloured4106 = result4106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4107 live4107 coloured4107 = result4107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4108 live4108 coloured4108 = result4108 := by
  rw [tree4108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4106 coloured4106 at child
  try dsimp only [live4108, coloured4108]
  rw [child]
  dsimp only [result4106]
  have child := child1
  unfold live4107 coloured4107 at child
  try dsimp only [live4108, coloured4108]
  rw [child]
  dsimp only [result4107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4109_agree_conditional : tree4109 = literal4109 := by
  rw [tree4109_def]
  rfl
theorem node4109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4109 live4109 coloured4109 = result4109 := by
  rw [tree4109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4110_agree_conditional
    (child0 : tree4108 = literal4108)
    (child1 : tree4109 = literal4109) : tree4110 = literal4110 := by
  rw [tree4110_def, child0, child1]
  rfl
theorem node4110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4108 live4108 coloured4108 = result4108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4109 live4109 coloured4109 = result4109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4110 live4110 coloured4110 = result4110 := by
  rw [tree4110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4108 coloured4108 at child
  try dsimp only [live4110, coloured4110]
  rw [child]
  dsimp only [result4108]
  have child := child1
  unfold live4109 coloured4109 at child
  try dsimp only [live4110, coloured4110]
  rw [child]
  dsimp only [result4109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4111_agree_conditional : tree4111 = literal4111 := by
  rw [tree4111_def]
  rfl
theorem node4111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4111 live4111 coloured4111 = result4111 := by
  rw [tree4111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4112_agree_conditional
    (child0 : tree4110 = literal4110)
    (child1 : tree4111 = literal4111) : tree4112 = literal4112 := by
  rw [tree4112_def, child0, child1]
  rfl
theorem node4112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4110 live4110 coloured4110 = result4110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4111 live4111 coloured4111 = result4111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4112 live4112 coloured4112 = result4112 := by
  rw [tree4112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4110 coloured4110 at child
  try dsimp only [live4112, coloured4112]
  rw [child]
  dsimp only [result4110]
  have child := child1
  unfold live4111 coloured4111 at child
  try dsimp only [live4112, coloured4112]
  rw [child]
  dsimp only [result4111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4113_agree_conditional : tree4113 = literal4113 := by
  rw [tree4113_def]
  rfl
theorem node4113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4113 live4113 coloured4113 = result4113 := by
  rw [tree4113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4114_agree_conditional
    (child0 : tree4112 = literal4112)
    (child1 : tree4113 = literal4113) : tree4114 = literal4114 := by
  rw [tree4114_def, child0, child1]
  rfl
theorem node4114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4112 live4112 coloured4112 = result4112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4113 live4113 coloured4113 = result4113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4114 live4114 coloured4114 = result4114 := by
  rw [tree4114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4112 coloured4112 at child
  try dsimp only [live4114, coloured4114]
  rw [child]
  dsimp only [result4112]
  have child := child1
  unfold live4113 coloured4113 at child
  try dsimp only [live4114, coloured4114]
  rw [child]
  dsimp only [result4113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4115_agree_conditional : tree4115 = literal4115 := by
  rw [tree4115_def]
  rfl
theorem node4115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4115 live4115 coloured4115 = result4115 := by
  rw [tree4115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4116_agree_conditional
    (child0 : tree4114 = literal4114)
    (child1 : tree4115 = literal4115) : tree4116 = literal4116 := by
  rw [tree4116_def, child0, child1]
  rfl
theorem node4116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4114 live4114 coloured4114 = result4114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4115 live4115 coloured4115 = result4115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4116 live4116 coloured4116 = result4116 := by
  rw [tree4116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4114 coloured4114 at child
  try dsimp only [live4116, coloured4116]
  rw [child]
  dsimp only [result4114]
  have child := child1
  unfold live4115 coloured4115 at child
  try dsimp only [live4116, coloured4116]
  rw [child]
  dsimp only [result4115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4117_agree_conditional : tree4117 = literal4117 := by
  rw [tree4117_def]
  rfl
theorem node4117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4117 live4117 coloured4117 = result4117 := by
  rw [tree4117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4118_agree_conditional
    (child0 : tree4116 = literal4116)
    (child1 : tree4117 = literal4117) : tree4118 = literal4118 := by
  rw [tree4118_def, child0, child1]
  rfl
theorem node4118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4116 live4116 coloured4116 = result4116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4117 live4117 coloured4117 = result4117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4118 live4118 coloured4118 = result4118 := by
  rw [tree4118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4116 coloured4116 at child
  try dsimp only [live4118, coloured4118]
  rw [child]
  dsimp only [result4116]
  have child := child1
  unfold live4117 coloured4117 at child
  try dsimp only [live4118, coloured4118]
  rw [child]
  dsimp only [result4117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4119_agree_conditional : tree4119 = literal4119 := by
  rw [tree4119_def]
  rfl
theorem node4119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4119 live4119 coloured4119 = result4119 := by
  rw [tree4119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4120_agree_conditional
    (child0 : tree4118 = literal4118)
    (child1 : tree4119 = literal4119) : tree4120 = literal4120 := by
  rw [tree4120_def, child0, child1]
  rfl
theorem node4120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4118 live4118 coloured4118 = result4118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4119 live4119 coloured4119 = result4119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4120 live4120 coloured4120 = result4120 := by
  rw [tree4120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4118 coloured4118 at child
  try dsimp only [live4120, coloured4120]
  rw [child]
  dsimp only [result4118]
  have child := child1
  unfold live4119 coloured4119 at child
  try dsimp only [live4120, coloured4120]
  rw [child]
  dsimp only [result4119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4121_agree_conditional : tree4121 = literal4121 := by
  rw [tree4121_def]
  rfl
theorem node4121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4121 live4121 coloured4121 = result4121 := by
  rw [tree4121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4122_agree_conditional
    (child0 : tree4120 = literal4120)
    (child1 : tree4121 = literal4121) : tree4122 = literal4122 := by
  rw [tree4122_def, child0, child1]
  rfl
theorem node4122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4120 live4120 coloured4120 = result4120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4121 live4121 coloured4121 = result4121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4122 live4122 coloured4122 = result4122 := by
  rw [tree4122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4120 coloured4120 at child
  try dsimp only [live4122, coloured4122]
  rw [child]
  dsimp only [result4120]
  have child := child1
  unfold live4121 coloured4121 at child
  try dsimp only [live4122, coloured4122]
  rw [child]
  dsimp only [result4121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4123_agree_conditional : tree4123 = literal4123 := by
  rw [tree4123_def]
  rfl
theorem node4123_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4123 live4123 coloured4123 = result4123 := by
  rw [tree4123_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4124_agree_conditional
    (child0 : tree4122 = literal4122)
    (child1 : tree4123 = literal4123) : tree4124 = literal4124 := by
  rw [tree4124_def, child0, child1]
  rfl
theorem node4124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4122 live4122 coloured4122 = result4122)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4123 live4123 coloured4123 = result4123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4124 live4124 coloured4124 = result4124 := by
  rw [tree4124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4122 coloured4122 at child
  try dsimp only [live4124, coloured4124]
  rw [child]
  dsimp only [result4122]
  have child := child1
  unfold live4123 coloured4123 at child
  try dsimp only [live4124, coloured4124]
  rw [child]
  dsimp only [result4123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4125_agree_conditional : tree4125 = literal4125 := by
  rw [tree4125_def]
  rfl
theorem node4125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4125 live4125 coloured4125 = result4125 := by
  rw [tree4125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4126_agree_conditional
    (child0 : tree4124 = literal4124)
    (child1 : tree4125 = literal4125) : tree4126 = literal4126 := by
  rw [tree4126_def, child0, child1]
  rfl
theorem node4126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4124 live4124 coloured4124 = result4124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4125 live4125 coloured4125 = result4125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4126 live4126 coloured4126 = result4126 := by
  rw [tree4126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4124 coloured4124 at child
  try dsimp only [live4126, coloured4126]
  rw [child]
  dsimp only [result4124]
  have child := child1
  unfold live4125 coloured4125 at child
  try dsimp only [live4126, coloured4126]
  rw [child]
  dsimp only [result4125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4127_agree_conditional : tree4127 = literal4127 := by
  rw [tree4127_def]
  rfl
theorem node4127_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4127 live4127 coloured4127 = result4127 := by
  rw [tree4127_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
