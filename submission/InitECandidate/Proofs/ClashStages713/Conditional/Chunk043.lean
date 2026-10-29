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
theorem tree4128_agree_conditional
    (child0 : tree4126 = literal4126)
    (child1 : tree4127 = literal4127) : tree4128 = literal4128 := by
  rw [tree4128_def, child0, child1]
  rfl
theorem node4128_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4126 live4126 coloured4126 = result4126)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4127 live4127 coloured4127 = result4127) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4128 live4128 coloured4128 = result4128 := by
  rw [tree4128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4126 coloured4126 at child
  try dsimp only [live4128, coloured4128]
  rw [child]
  dsimp only [result4126]
  have child := child1
  unfold live4127 coloured4127 at child
  try dsimp only [live4128, coloured4128]
  rw [child]
  dsimp only [result4127]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4129_agree_conditional : tree4129 = literal4129 := by
  rw [tree4129_def]
  rfl
theorem node4129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4129 live4129 coloured4129 = result4129 := by
  rw [tree4129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4130_agree_conditional
    (child0 : tree4128 = literal4128)
    (child1 : tree4129 = literal4129) : tree4130 = literal4130 := by
  rw [tree4130_def, child0, child1]
  rfl
theorem node4130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4128 live4128 coloured4128 = result4128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4129 live4129 coloured4129 = result4129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4130 live4130 coloured4130 = result4130 := by
  rw [tree4130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4128 coloured4128 at child
  try dsimp only [live4130, coloured4130]
  rw [child]
  dsimp only [result4128]
  have child := child1
  unfold live4129 coloured4129 at child
  try dsimp only [live4130, coloured4130]
  rw [child]
  dsimp only [result4129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4131_agree_conditional : tree4131 = literal4131 := by
  rw [tree4131_def]
  rfl
theorem node4131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4131 live4131 coloured4131 = result4131 := by
  rw [tree4131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4132_agree_conditional
    (child0 : tree4130 = literal4130)
    (child1 : tree4131 = literal4131) : tree4132 = literal4132 := by
  rw [tree4132_def, child0, child1]
  rfl
theorem node4132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4130 live4130 coloured4130 = result4130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4131 live4131 coloured4131 = result4131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4132 live4132 coloured4132 = result4132 := by
  rw [tree4132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4130 coloured4130 at child
  try dsimp only [live4132, coloured4132]
  rw [child]
  dsimp only [result4130]
  have child := child1
  unfold live4131 coloured4131 at child
  try dsimp only [live4132, coloured4132]
  rw [child]
  dsimp only [result4131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4133_agree_conditional : tree4133 = literal4133 := by
  rw [tree4133_def]
  rfl
theorem node4133_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4133 live4133 coloured4133 = result4133 := by
  rw [tree4133_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4134_agree_conditional
    (child0 : tree4132 = literal4132)
    (child1 : tree4133 = literal4133) : tree4134 = literal4134 := by
  rw [tree4134_def, child0, child1]
  rfl
theorem node4134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4132 live4132 coloured4132 = result4132)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4133 live4133 coloured4133 = result4133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4134 live4134 coloured4134 = result4134 := by
  rw [tree4134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4132 coloured4132 at child
  try dsimp only [live4134, coloured4134]
  rw [child]
  dsimp only [result4132]
  have child := child1
  unfold live4133 coloured4133 at child
  try dsimp only [live4134, coloured4134]
  rw [child]
  dsimp only [result4133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4135_agree_conditional : tree4135 = literal4135 := by
  rw [tree4135_def]
  rfl
theorem node4135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4135 live4135 coloured4135 = result4135 := by
  rw [tree4135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4136_agree_conditional
    (child0 : tree4134 = literal4134)
    (child1 : tree4135 = literal4135) : tree4136 = literal4136 := by
  rw [tree4136_def, child0, child1]
  rfl
theorem node4136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4134 live4134 coloured4134 = result4134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4135 live4135 coloured4135 = result4135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4136 live4136 coloured4136 = result4136 := by
  rw [tree4136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4134 coloured4134 at child
  try dsimp only [live4136, coloured4136]
  rw [child]
  dsimp only [result4134]
  have child := child1
  unfold live4135 coloured4135 at child
  try dsimp only [live4136, coloured4136]
  rw [child]
  dsimp only [result4135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4137_agree_conditional : tree4137 = literal4137 := by
  rw [tree4137_def]
  rfl
theorem node4137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4137 live4137 coloured4137 = result4137 := by
  rw [tree4137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4138_agree_conditional
    (child0 : tree4136 = literal4136)
    (child1 : tree4137 = literal4137) : tree4138 = literal4138 := by
  rw [tree4138_def, child0, child1]
  rfl
theorem node4138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4136 live4136 coloured4136 = result4136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4137 live4137 coloured4137 = result4137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4138 live4138 coloured4138 = result4138 := by
  rw [tree4138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4136 coloured4136 at child
  try dsimp only [live4138, coloured4138]
  rw [child]
  dsimp only [result4136]
  have child := child1
  unfold live4137 coloured4137 at child
  try dsimp only [live4138, coloured4138]
  rw [child]
  dsimp only [result4137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4139_agree_conditional : tree4139 = literal4139 := by
  rw [tree4139_def]
  rfl
theorem node4139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4139 live4139 coloured4139 = result4139 := by
  rw [tree4139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4140_agree_conditional
    (child0 : tree4138 = literal4138)
    (child1 : tree4139 = literal4139) : tree4140 = literal4140 := by
  rw [tree4140_def, child0, child1]
  rfl
theorem node4140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4138 live4138 coloured4138 = result4138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4139 live4139 coloured4139 = result4139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4140 live4140 coloured4140 = result4140 := by
  rw [tree4140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4138 coloured4138 at child
  try dsimp only [live4140, coloured4140]
  rw [child]
  dsimp only [result4138]
  have child := child1
  unfold live4139 coloured4139 at child
  try dsimp only [live4140, coloured4140]
  rw [child]
  dsimp only [result4139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4141_agree_conditional : tree4141 = literal4141 := by
  rw [tree4141_def]
  rfl
theorem node4141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4141 live4141 coloured4141 = result4141 := by
  rw [tree4141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4142_agree_conditional
    (child0 : tree4140 = literal4140)
    (child1 : tree4141 = literal4141) : tree4142 = literal4142 := by
  rw [tree4142_def, child0, child1]
  rfl
theorem node4142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4140 live4140 coloured4140 = result4140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4141 live4141 coloured4141 = result4141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4142 live4142 coloured4142 = result4142 := by
  rw [tree4142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4140 coloured4140 at child
  try dsimp only [live4142, coloured4142]
  rw [child]
  dsimp only [result4140]
  have child := child1
  unfold live4141 coloured4141 at child
  try dsimp only [live4142, coloured4142]
  rw [child]
  dsimp only [result4141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4143_agree_conditional : tree4143 = literal4143 := by
  rw [tree4143_def]
  rfl
theorem node4143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4143 live4143 coloured4143 = result4143 := by
  rw [tree4143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4144_agree_conditional
    (child0 : tree4142 = literal4142)
    (child1 : tree4143 = literal4143) : tree4144 = literal4144 := by
  rw [tree4144_def, child0, child1]
  rfl
theorem node4144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4142 live4142 coloured4142 = result4142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4143 live4143 coloured4143 = result4143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4144 live4144 coloured4144 = result4144 := by
  rw [tree4144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4142 coloured4142 at child
  try dsimp only [live4144, coloured4144]
  rw [child]
  dsimp only [result4142]
  have child := child1
  unfold live4143 coloured4143 at child
  try dsimp only [live4144, coloured4144]
  rw [child]
  dsimp only [result4143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4145_agree_conditional : tree4145 = literal4145 := by
  rw [tree4145_def]
  rfl
theorem node4145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4145 live4145 coloured4145 = result4145 := by
  rw [tree4145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4146_agree_conditional
    (child0 : tree4144 = literal4144)
    (child1 : tree4145 = literal4145) : tree4146 = literal4146 := by
  rw [tree4146_def, child0, child1]
  rfl
theorem node4146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4144 live4144 coloured4144 = result4144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4145 live4145 coloured4145 = result4145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4146 live4146 coloured4146 = result4146 := by
  rw [tree4146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4144 coloured4144 at child
  try dsimp only [live4146, coloured4146]
  rw [child]
  dsimp only [result4144]
  have child := child1
  unfold live4145 coloured4145 at child
  try dsimp only [live4146, coloured4146]
  rw [child]
  dsimp only [result4145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4147_agree_conditional : tree4147 = literal4147 := by
  rw [tree4147_def]
  rfl
theorem node4147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4147 live4147 coloured4147 = result4147 := by
  rw [tree4147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4148_agree_conditional
    (child0 : tree4146 = literal4146)
    (child1 : tree4147 = literal4147) : tree4148 = literal4148 := by
  rw [tree4148_def, child0, child1]
  rfl
theorem node4148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4146 live4146 coloured4146 = result4146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4147 live4147 coloured4147 = result4147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4148 live4148 coloured4148 = result4148 := by
  rw [tree4148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4146 coloured4146 at child
  try dsimp only [live4148, coloured4148]
  rw [child]
  dsimp only [result4146]
  have child := child1
  unfold live4147 coloured4147 at child
  try dsimp only [live4148, coloured4148]
  rw [child]
  dsimp only [result4147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4149_agree_conditional : tree4149 = literal4149 := by
  rw [tree4149_def]
  rfl
theorem node4149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4149 live4149 coloured4149 = result4149 := by
  rw [tree4149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4150_agree_conditional
    (child0 : tree4148 = literal4148)
    (child1 : tree4149 = literal4149) : tree4150 = literal4150 := by
  rw [tree4150_def, child0, child1]
  rfl
theorem node4150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4148 live4148 coloured4148 = result4148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4149 live4149 coloured4149 = result4149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4150 live4150 coloured4150 = result4150 := by
  rw [tree4150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4148 coloured4148 at child
  try dsimp only [live4150, coloured4150]
  rw [child]
  dsimp only [result4148]
  have child := child1
  unfold live4149 coloured4149 at child
  try dsimp only [live4150, coloured4150]
  rw [child]
  dsimp only [result4149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4151_agree_conditional : tree4151 = literal4151 := by
  rw [tree4151_def]
  rfl
theorem node4151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4151 live4151 coloured4151 = result4151 := by
  rw [tree4151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4152_agree_conditional
    (child0 : tree4150 = literal4150)
    (child1 : tree4151 = literal4151) : tree4152 = literal4152 := by
  rw [tree4152_def, child0, child1]
  rfl
theorem node4152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4150 live4150 coloured4150 = result4150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4151 live4151 coloured4151 = result4151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4152 live4152 coloured4152 = result4152 := by
  rw [tree4152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4150 coloured4150 at child
  try dsimp only [live4152, coloured4152]
  rw [child]
  dsimp only [result4150]
  have child := child1
  unfold live4151 coloured4151 at child
  try dsimp only [live4152, coloured4152]
  rw [child]
  dsimp only [result4151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4153_agree_conditional : tree4153 = literal4153 := by
  rw [tree4153_def]
  rfl
theorem node4153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4153 live4153 coloured4153 = result4153 := by
  rw [tree4153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4154_agree_conditional
    (child0 : tree4152 = literal4152)
    (child1 : tree4153 = literal4153) : tree4154 = literal4154 := by
  rw [tree4154_def, child0, child1]
  rfl
theorem node4154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4152 live4152 coloured4152 = result4152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4153 live4153 coloured4153 = result4153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4154 live4154 coloured4154 = result4154 := by
  rw [tree4154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4152 coloured4152 at child
  try dsimp only [live4154, coloured4154]
  rw [child]
  dsimp only [result4152]
  have child := child1
  unfold live4153 coloured4153 at child
  try dsimp only [live4154, coloured4154]
  rw [child]
  dsimp only [result4153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4155_agree_conditional : tree4155 = literal4155 := by
  rw [tree4155_def]
  rfl
theorem node4155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4155 live4155 coloured4155 = result4155 := by
  rw [tree4155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4156_agree_conditional
    (child0 : tree4154 = literal4154)
    (child1 : tree4155 = literal4155) : tree4156 = literal4156 := by
  rw [tree4156_def, child0, child1]
  rfl
theorem node4156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4154 live4154 coloured4154 = result4154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4155 live4155 coloured4155 = result4155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4156 live4156 coloured4156 = result4156 := by
  rw [tree4156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4154 coloured4154 at child
  try dsimp only [live4156, coloured4156]
  rw [child]
  dsimp only [result4154]
  have child := child1
  unfold live4155 coloured4155 at child
  try dsimp only [live4156, coloured4156]
  rw [child]
  dsimp only [result4155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4157_agree_conditional : tree4157 = literal4157 := by
  rw [tree4157_def]
  rfl
theorem node4157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4157 live4157 coloured4157 = result4157 := by
  rw [tree4157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4158_agree_conditional
    (child0 : tree4156 = literal4156)
    (child1 : tree4157 = literal4157) : tree4158 = literal4158 := by
  rw [tree4158_def, child0, child1]
  rfl
theorem node4158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4156 live4156 coloured4156 = result4156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4157 live4157 coloured4157 = result4157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4158 live4158 coloured4158 = result4158 := by
  rw [tree4158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4156 coloured4156 at child
  try dsimp only [live4158, coloured4158]
  rw [child]
  dsimp only [result4156]
  have child := child1
  unfold live4157 coloured4157 at child
  try dsimp only [live4158, coloured4158]
  rw [child]
  dsimp only [result4157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4159_agree_conditional : tree4159 = literal4159 := by
  rw [tree4159_def]
  rfl
theorem node4159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4159 live4159 coloured4159 = result4159 := by
  rw [tree4159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4160_agree_conditional
    (child0 : tree4158 = literal4158)
    (child1 : tree4159 = literal4159) : tree4160 = literal4160 := by
  rw [tree4160_def, child0, child1]
  rfl
theorem node4160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4158 live4158 coloured4158 = result4158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4159 live4159 coloured4159 = result4159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4160 live4160 coloured4160 = result4160 := by
  rw [tree4160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4158 coloured4158 at child
  try dsimp only [live4160, coloured4160]
  rw [child]
  dsimp only [result4158]
  have child := child1
  unfold live4159 coloured4159 at child
  try dsimp only [live4160, coloured4160]
  rw [child]
  dsimp only [result4159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4161_agree_conditional : tree4161 = literal4161 := by
  rw [tree4161_def]
  rfl
theorem node4161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4161 live4161 coloured4161 = result4161 := by
  rw [tree4161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4162_agree_conditional
    (child0 : tree4160 = literal4160)
    (child1 : tree4161 = literal4161) : tree4162 = literal4162 := by
  rw [tree4162_def, child0, child1]
  rfl
theorem node4162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4160 live4160 coloured4160 = result4160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4161 live4161 coloured4161 = result4161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4162 live4162 coloured4162 = result4162 := by
  rw [tree4162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4160 coloured4160 at child
  try dsimp only [live4162, coloured4162]
  rw [child]
  dsimp only [result4160]
  have child := child1
  unfold live4161 coloured4161 at child
  try dsimp only [live4162, coloured4162]
  rw [child]
  dsimp only [result4161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4163_agree_conditional : tree4163 = literal4163 := by
  rw [tree4163_def]
  rfl
theorem node4163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4163 live4163 coloured4163 = result4163 := by
  rw [tree4163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4164_agree_conditional
    (child0 : tree4162 = literal4162)
    (child1 : tree4163 = literal4163) : tree4164 = literal4164 := by
  rw [tree4164_def, child0, child1]
  rfl
theorem node4164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4162 live4162 coloured4162 = result4162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4163 live4163 coloured4163 = result4163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4164 live4164 coloured4164 = result4164 := by
  rw [tree4164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4162 coloured4162 at child
  try dsimp only [live4164, coloured4164]
  rw [child]
  dsimp only [result4162]
  have child := child1
  unfold live4163 coloured4163 at child
  try dsimp only [live4164, coloured4164]
  rw [child]
  dsimp only [result4163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4165_agree_conditional : tree4165 = literal4165 := by
  rw [tree4165_def]
  rfl
theorem node4165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4165 live4165 coloured4165 = result4165 := by
  rw [tree4165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4166_agree_conditional
    (child0 : tree4164 = literal4164)
    (child1 : tree4165 = literal4165) : tree4166 = literal4166 := by
  rw [tree4166_def, child0, child1]
  rfl
theorem node4166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4164 live4164 coloured4164 = result4164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4165 live4165 coloured4165 = result4165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4166 live4166 coloured4166 = result4166 := by
  rw [tree4166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4164 coloured4164 at child
  try dsimp only [live4166, coloured4166]
  rw [child]
  dsimp only [result4164]
  have child := child1
  unfold live4165 coloured4165 at child
  try dsimp only [live4166, coloured4166]
  rw [child]
  dsimp only [result4165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4167_agree_conditional : tree4167 = literal4167 := by
  rw [tree4167_def]
  rfl
theorem node4167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4167 live4167 coloured4167 = result4167 := by
  rw [tree4167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4168_agree_conditional
    (child0 : tree4166 = literal4166)
    (child1 : tree4167 = literal4167) : tree4168 = literal4168 := by
  rw [tree4168_def, child0, child1]
  rfl
theorem node4168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4166 live4166 coloured4166 = result4166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4167 live4167 coloured4167 = result4167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4168 live4168 coloured4168 = result4168 := by
  rw [tree4168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4166 coloured4166 at child
  try dsimp only [live4168, coloured4168]
  rw [child]
  dsimp only [result4166]
  have child := child1
  unfold live4167 coloured4167 at child
  try dsimp only [live4168, coloured4168]
  rw [child]
  dsimp only [result4167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4169_agree_conditional : tree4169 = literal4169 := by
  rw [tree4169_def]
  rfl
theorem node4169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4169 live4169 coloured4169 = result4169 := by
  rw [tree4169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4170_agree_conditional
    (child0 : tree4168 = literal4168)
    (child1 : tree4169 = literal4169) : tree4170 = literal4170 := by
  rw [tree4170_def, child0, child1]
  rfl
theorem node4170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4168 live4168 coloured4168 = result4168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4169 live4169 coloured4169 = result4169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4170 live4170 coloured4170 = result4170 := by
  rw [tree4170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4168 coloured4168 at child
  try dsimp only [live4170, coloured4170]
  rw [child]
  dsimp only [result4168]
  have child := child1
  unfold live4169 coloured4169 at child
  try dsimp only [live4170, coloured4170]
  rw [child]
  dsimp only [result4169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4171_agree_conditional : tree4171 = literal4171 := by
  rw [tree4171_def]
  rfl
theorem node4171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4171 live4171 coloured4171 = result4171 := by
  rw [tree4171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4172_agree_conditional
    (child0 : tree4170 = literal4170)
    (child1 : tree4171 = literal4171) : tree4172 = literal4172 := by
  rw [tree4172_def, child0, child1]
  rfl
theorem node4172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4170 live4170 coloured4170 = result4170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4171 live4171 coloured4171 = result4171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4172 live4172 coloured4172 = result4172 := by
  rw [tree4172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4170 coloured4170 at child
  try dsimp only [live4172, coloured4172]
  rw [child]
  dsimp only [result4170]
  have child := child1
  unfold live4171 coloured4171 at child
  try dsimp only [live4172, coloured4172]
  rw [child]
  dsimp only [result4171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4173_agree_conditional : tree4173 = literal4173 := by
  rw [tree4173_def]
  rfl
theorem node4173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4173 live4173 coloured4173 = result4173 := by
  rw [tree4173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4174_agree_conditional
    (child0 : tree4172 = literal4172)
    (child1 : tree4173 = literal4173) : tree4174 = literal4174 := by
  rw [tree4174_def, child0, child1]
  rfl
theorem node4174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4172 live4172 coloured4172 = result4172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4173 live4173 coloured4173 = result4173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4174 live4174 coloured4174 = result4174 := by
  rw [tree4174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4172 coloured4172 at child
  try dsimp only [live4174, coloured4174]
  rw [child]
  dsimp only [result4172]
  have child := child1
  unfold live4173 coloured4173 at child
  try dsimp only [live4174, coloured4174]
  rw [child]
  dsimp only [result4173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4175_agree_conditional : tree4175 = literal4175 := by
  rw [tree4175_def]
  rfl
theorem node4175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4175 live4175 coloured4175 = result4175 := by
  rw [tree4175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4176_agree_conditional
    (child0 : tree4174 = literal4174)
    (child1 : tree4175 = literal4175) : tree4176 = literal4176 := by
  rw [tree4176_def, child0, child1]
  rfl
theorem node4176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4174 live4174 coloured4174 = result4174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4175 live4175 coloured4175 = result4175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4176 live4176 coloured4176 = result4176 := by
  rw [tree4176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4174 coloured4174 at child
  try dsimp only [live4176, coloured4176]
  rw [child]
  dsimp only [result4174]
  have child := child1
  unfold live4175 coloured4175 at child
  try dsimp only [live4176, coloured4176]
  rw [child]
  dsimp only [result4175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4177_agree_conditional : tree4177 = literal4177 := by
  rw [tree4177_def]
  rfl
theorem node4177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4177 live4177 coloured4177 = result4177 := by
  rw [tree4177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4178_agree_conditional
    (child0 : tree4176 = literal4176)
    (child1 : tree4177 = literal4177) : tree4178 = literal4178 := by
  rw [tree4178_def, child0, child1]
  rfl
theorem node4178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4176 live4176 coloured4176 = result4176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4177 live4177 coloured4177 = result4177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4178 live4178 coloured4178 = result4178 := by
  rw [tree4178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4176 coloured4176 at child
  try dsimp only [live4178, coloured4178]
  rw [child]
  dsimp only [result4176]
  have child := child1
  unfold live4177 coloured4177 at child
  try dsimp only [live4178, coloured4178]
  rw [child]
  dsimp only [result4177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4179_agree_conditional : tree4179 = literal4179 := by
  rw [tree4179_def]
  rfl
theorem node4179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4179 live4179 coloured4179 = result4179 := by
  rw [tree4179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4180_agree_conditional
    (child0 : tree4178 = literal4178)
    (child1 : tree4179 = literal4179) : tree4180 = literal4180 := by
  rw [tree4180_def, child0, child1]
  rfl
theorem node4180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4178 live4178 coloured4178 = result4178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4179 live4179 coloured4179 = result4179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4180 live4180 coloured4180 = result4180 := by
  rw [tree4180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4178 coloured4178 at child
  try dsimp only [live4180, coloured4180]
  rw [child]
  dsimp only [result4178]
  have child := child1
  unfold live4179 coloured4179 at child
  try dsimp only [live4180, coloured4180]
  rw [child]
  dsimp only [result4179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4181_agree_conditional : tree4181 = literal4181 := by
  rw [tree4181_def]
  rfl
theorem node4181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4181 live4181 coloured4181 = result4181 := by
  rw [tree4181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4182_agree_conditional
    (child0 : tree4180 = literal4180)
    (child1 : tree4181 = literal4181) : tree4182 = literal4182 := by
  rw [tree4182_def, child0, child1]
  rfl
theorem node4182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4180 live4180 coloured4180 = result4180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4181 live4181 coloured4181 = result4181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4182 live4182 coloured4182 = result4182 := by
  rw [tree4182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4180 coloured4180 at child
  try dsimp only [live4182, coloured4182]
  rw [child]
  dsimp only [result4180]
  have child := child1
  unfold live4181 coloured4181 at child
  try dsimp only [live4182, coloured4182]
  rw [child]
  dsimp only [result4181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4183_agree_conditional : tree4183 = literal4183 := by
  rw [tree4183_def]
  rfl
theorem node4183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4183 live4183 coloured4183 = result4183 := by
  rw [tree4183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4184_agree_conditional
    (child0 : tree4182 = literal4182)
    (child1 : tree4183 = literal4183) : tree4184 = literal4184 := by
  rw [tree4184_def, child0, child1]
  rfl
theorem node4184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4182 live4182 coloured4182 = result4182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4183 live4183 coloured4183 = result4183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4184 live4184 coloured4184 = result4184 := by
  rw [tree4184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4182 coloured4182 at child
  try dsimp only [live4184, coloured4184]
  rw [child]
  dsimp only [result4182]
  have child := child1
  unfold live4183 coloured4183 at child
  try dsimp only [live4184, coloured4184]
  rw [child]
  dsimp only [result4183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4185_agree_conditional : tree4185 = literal4185 := by
  rw [tree4185_def]
  rfl
theorem node4185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4185 live4185 coloured4185 = result4185 := by
  rw [tree4185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4186_agree_conditional
    (child0 : tree4184 = literal4184)
    (child1 : tree4185 = literal4185) : tree4186 = literal4186 := by
  rw [tree4186_def, child0, child1]
  rfl
theorem node4186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4184 live4184 coloured4184 = result4184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4185 live4185 coloured4185 = result4185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4186 live4186 coloured4186 = result4186 := by
  rw [tree4186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4184 coloured4184 at child
  try dsimp only [live4186, coloured4186]
  rw [child]
  dsimp only [result4184]
  have child := child1
  unfold live4185 coloured4185 at child
  try dsimp only [live4186, coloured4186]
  rw [child]
  dsimp only [result4185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4187_agree_conditional : tree4187 = literal4187 := by
  rw [tree4187_def]
  rfl
theorem node4187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4187 live4187 coloured4187 = result4187 := by
  rw [tree4187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4188_agree_conditional
    (child0 : tree4186 = literal4186)
    (child1 : tree4187 = literal4187) : tree4188 = literal4188 := by
  rw [tree4188_def, child0, child1]
  rfl
theorem node4188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4186 live4186 coloured4186 = result4186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4187 live4187 coloured4187 = result4187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4188 live4188 coloured4188 = result4188 := by
  rw [tree4188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4186 coloured4186 at child
  try dsimp only [live4188, coloured4188]
  rw [child]
  dsimp only [result4186]
  have child := child1
  unfold live4187 coloured4187 at child
  try dsimp only [live4188, coloured4188]
  rw [child]
  dsimp only [result4187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4189_agree_conditional : tree4189 = literal4189 := by
  rw [tree4189_def]
  rfl
theorem node4189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4189 live4189 coloured4189 = result4189 := by
  rw [tree4189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4190_agree_conditional
    (child0 : tree4188 = literal4188)
    (child1 : tree4189 = literal4189) : tree4190 = literal4190 := by
  rw [tree4190_def, child0, child1]
  rfl
theorem node4190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4188 live4188 coloured4188 = result4188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4189 live4189 coloured4189 = result4189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4190 live4190 coloured4190 = result4190 := by
  rw [tree4190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4188 coloured4188 at child
  try dsimp only [live4190, coloured4190]
  rw [child]
  dsimp only [result4188]
  have child := child1
  unfold live4189 coloured4189 at child
  try dsimp only [live4190, coloured4190]
  rw [child]
  dsimp only [result4189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4191_agree_conditional : tree4191 = literal4191 := by
  rw [tree4191_def]
  rfl
theorem node4191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4191 live4191 coloured4191 = result4191 := by
  rw [tree4191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4192_agree_conditional
    (child0 : tree4190 = literal4190)
    (child1 : tree4191 = literal4191) : tree4192 = literal4192 := by
  rw [tree4192_def, child0, child1]
  rfl
theorem node4192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4190 live4190 coloured4190 = result4190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4191 live4191 coloured4191 = result4191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4192 live4192 coloured4192 = result4192 := by
  rw [tree4192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4190 coloured4190 at child
  try dsimp only [live4192, coloured4192]
  rw [child]
  dsimp only [result4190]
  have child := child1
  unfold live4191 coloured4191 at child
  try dsimp only [live4192, coloured4192]
  rw [child]
  dsimp only [result4191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4193_agree_conditional : tree4193 = literal4193 := by
  rw [tree4193_def]
  rfl
theorem node4193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4193 live4193 coloured4193 = result4193 := by
  rw [tree4193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4194_agree_conditional
    (child0 : tree4192 = literal4192)
    (child1 : tree4193 = literal4193) : tree4194 = literal4194 := by
  rw [tree4194_def, child0, child1]
  rfl
theorem node4194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4192 live4192 coloured4192 = result4192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4193 live4193 coloured4193 = result4193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4194 live4194 coloured4194 = result4194 := by
  rw [tree4194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4192 coloured4192 at child
  try dsimp only [live4194, coloured4194]
  rw [child]
  dsimp only [result4192]
  have child := child1
  unfold live4193 coloured4193 at child
  try dsimp only [live4194, coloured4194]
  rw [child]
  dsimp only [result4193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4195_agree_conditional : tree4195 = literal4195 := by
  rw [tree4195_def]
  rfl
theorem node4195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4195 live4195 coloured4195 = result4195 := by
  rw [tree4195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4196_agree_conditional
    (child0 : tree4194 = literal4194)
    (child1 : tree4195 = literal4195) : tree4196 = literal4196 := by
  rw [tree4196_def, child0, child1]
  rfl
theorem node4196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4194 live4194 coloured4194 = result4194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4195 live4195 coloured4195 = result4195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4196 live4196 coloured4196 = result4196 := by
  rw [tree4196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4194 coloured4194 at child
  try dsimp only [live4196, coloured4196]
  rw [child]
  dsimp only [result4194]
  have child := child1
  unfold live4195 coloured4195 at child
  try dsimp only [live4196, coloured4196]
  rw [child]
  dsimp only [result4195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4197_agree_conditional : tree4197 = literal4197 := by
  rw [tree4197_def]
  rfl
theorem node4197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4197 live4197 coloured4197 = result4197 := by
  rw [tree4197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4198_agree_conditional
    (child0 : tree4196 = literal4196)
    (child1 : tree4197 = literal4197) : tree4198 = literal4198 := by
  rw [tree4198_def, child0, child1]
  rfl
theorem node4198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4196 live4196 coloured4196 = result4196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4197 live4197 coloured4197 = result4197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4198 live4198 coloured4198 = result4198 := by
  rw [tree4198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4196 coloured4196 at child
  try dsimp only [live4198, coloured4198]
  rw [child]
  dsimp only [result4196]
  have child := child1
  unfold live4197 coloured4197 at child
  try dsimp only [live4198, coloured4198]
  rw [child]
  dsimp only [result4197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4199_agree_conditional : tree4199 = literal4199 := by
  rw [tree4199_def]
  rfl
theorem node4199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4199 live4199 coloured4199 = result4199 := by
  rw [tree4199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4200_agree_conditional
    (child0 : tree4198 = literal4198)
    (child1 : tree4199 = literal4199) : tree4200 = literal4200 := by
  rw [tree4200_def, child0, child1]
  rfl
theorem node4200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4198 live4198 coloured4198 = result4198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4199 live4199 coloured4199 = result4199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4200 live4200 coloured4200 = result4200 := by
  rw [tree4200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4198 coloured4198 at child
  try dsimp only [live4200, coloured4200]
  rw [child]
  dsimp only [result4198]
  have child := child1
  unfold live4199 coloured4199 at child
  try dsimp only [live4200, coloured4200]
  rw [child]
  dsimp only [result4199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4201_agree_conditional : tree4201 = literal4201 := by
  rw [tree4201_def]
  rfl
theorem node4201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4201 live4201 coloured4201 = result4201 := by
  rw [tree4201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4202_agree_conditional
    (child0 : tree4200 = literal4200)
    (child1 : tree4201 = literal4201) : tree4202 = literal4202 := by
  rw [tree4202_def, child0, child1]
  rfl
theorem node4202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4200 live4200 coloured4200 = result4200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4201 live4201 coloured4201 = result4201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4202 live4202 coloured4202 = result4202 := by
  rw [tree4202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4200 coloured4200 at child
  try dsimp only [live4202, coloured4202]
  rw [child]
  dsimp only [result4200]
  have child := child1
  unfold live4201 coloured4201 at child
  try dsimp only [live4202, coloured4202]
  rw [child]
  dsimp only [result4201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4203_agree_conditional : tree4203 = literal4203 := by
  rw [tree4203_def]
  rfl
theorem node4203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4203 live4203 coloured4203 = result4203 := by
  rw [tree4203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4204_agree_conditional
    (child0 : tree4202 = literal4202)
    (child1 : tree4203 = literal4203) : tree4204 = literal4204 := by
  rw [tree4204_def, child0, child1]
  rfl
theorem node4204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4202 live4202 coloured4202 = result4202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4203 live4203 coloured4203 = result4203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4204 live4204 coloured4204 = result4204 := by
  rw [tree4204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4202 coloured4202 at child
  try dsimp only [live4204, coloured4204]
  rw [child]
  dsimp only [result4202]
  have child := child1
  unfold live4203 coloured4203 at child
  try dsimp only [live4204, coloured4204]
  rw [child]
  dsimp only [result4203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4205_agree_conditional : tree4205 = literal4205 := by
  rw [tree4205_def]
  rfl
theorem node4205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4205 live4205 coloured4205 = result4205 := by
  rw [tree4205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4206_agree_conditional
    (child0 : tree4204 = literal4204)
    (child1 : tree4205 = literal4205) : tree4206 = literal4206 := by
  rw [tree4206_def, child0, child1]
  rfl
theorem node4206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4204 live4204 coloured4204 = result4204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4205 live4205 coloured4205 = result4205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4206 live4206 coloured4206 = result4206 := by
  rw [tree4206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4204 coloured4204 at child
  try dsimp only [live4206, coloured4206]
  rw [child]
  dsimp only [result4204]
  have child := child1
  unfold live4205 coloured4205 at child
  try dsimp only [live4206, coloured4206]
  rw [child]
  dsimp only [result4205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4207_agree_conditional : tree4207 = literal4207 := by
  rw [tree4207_def]
  rfl
theorem node4207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4207 live4207 coloured4207 = result4207 := by
  rw [tree4207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4208_agree_conditional
    (child0 : tree4206 = literal4206)
    (child1 : tree4207 = literal4207) : tree4208 = literal4208 := by
  rw [tree4208_def, child0, child1]
  rfl
theorem node4208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4206 live4206 coloured4206 = result4206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4207 live4207 coloured4207 = result4207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4208 live4208 coloured4208 = result4208 := by
  rw [tree4208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4206 coloured4206 at child
  try dsimp only [live4208, coloured4208]
  rw [child]
  dsimp only [result4206]
  have child := child1
  unfold live4207 coloured4207 at child
  try dsimp only [live4208, coloured4208]
  rw [child]
  dsimp only [result4207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4209_agree_conditional : tree4209 = literal4209 := by
  rw [tree4209_def]
  rfl
theorem node4209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4209 live4209 coloured4209 = result4209 := by
  rw [tree4209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4210_agree_conditional
    (child0 : tree4208 = literal4208)
    (child1 : tree4209 = literal4209) : tree4210 = literal4210 := by
  rw [tree4210_def, child0, child1]
  rfl
theorem node4210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4208 live4208 coloured4208 = result4208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4209 live4209 coloured4209 = result4209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4210 live4210 coloured4210 = result4210 := by
  rw [tree4210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4208 coloured4208 at child
  try dsimp only [live4210, coloured4210]
  rw [child]
  dsimp only [result4208]
  have child := child1
  unfold live4209 coloured4209 at child
  try dsimp only [live4210, coloured4210]
  rw [child]
  dsimp only [result4209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4211_agree_conditional : tree4211 = literal4211 := by
  rw [tree4211_def]
  rfl
theorem node4211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4211 live4211 coloured4211 = result4211 := by
  rw [tree4211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4212_agree_conditional
    (child0 : tree4210 = literal4210)
    (child1 : tree4211 = literal4211) : tree4212 = literal4212 := by
  rw [tree4212_def, child0, child1]
  rfl
theorem node4212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4210 live4210 coloured4210 = result4210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4211 live4211 coloured4211 = result4211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4212 live4212 coloured4212 = result4212 := by
  rw [tree4212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4210 coloured4210 at child
  try dsimp only [live4212, coloured4212]
  rw [child]
  dsimp only [result4210]
  have child := child1
  unfold live4211 coloured4211 at child
  try dsimp only [live4212, coloured4212]
  rw [child]
  dsimp only [result4211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4213_agree_conditional : tree4213 = literal4213 := by
  rw [tree4213_def]
  rfl
theorem node4213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4213 live4213 coloured4213 = result4213 := by
  rw [tree4213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4214_agree_conditional
    (child0 : tree4212 = literal4212)
    (child1 : tree4213 = literal4213) : tree4214 = literal4214 := by
  rw [tree4214_def, child0, child1]
  rfl
theorem node4214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4212 live4212 coloured4212 = result4212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4213 live4213 coloured4213 = result4213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4214 live4214 coloured4214 = result4214 := by
  rw [tree4214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4212 coloured4212 at child
  try dsimp only [live4214, coloured4214]
  rw [child]
  dsimp only [result4212]
  have child := child1
  unfold live4213 coloured4213 at child
  try dsimp only [live4214, coloured4214]
  rw [child]
  dsimp only [result4213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4215_agree_conditional : tree4215 = literal4215 := by
  rw [tree4215_def]
  rfl
theorem node4215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4215 live4215 coloured4215 = result4215 := by
  rw [tree4215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4216_agree_conditional
    (child0 : tree4214 = literal4214)
    (child1 : tree4215 = literal4215) : tree4216 = literal4216 := by
  rw [tree4216_def, child0, child1]
  rfl
theorem node4216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4214 live4214 coloured4214 = result4214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4215 live4215 coloured4215 = result4215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4216 live4216 coloured4216 = result4216 := by
  rw [tree4216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4214 coloured4214 at child
  try dsimp only [live4216, coloured4216]
  rw [child]
  dsimp only [result4214]
  have child := child1
  unfold live4215 coloured4215 at child
  try dsimp only [live4216, coloured4216]
  rw [child]
  dsimp only [result4215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4217_agree_conditional : tree4217 = literal4217 := by
  rw [tree4217_def]
  rfl
theorem node4217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4217 live4217 coloured4217 = result4217 := by
  rw [tree4217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4218_agree_conditional
    (child0 : tree4216 = literal4216)
    (child1 : tree4217 = literal4217) : tree4218 = literal4218 := by
  rw [tree4218_def, child0, child1]
  rfl
theorem node4218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4216 live4216 coloured4216 = result4216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4217 live4217 coloured4217 = result4217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4218 live4218 coloured4218 = result4218 := by
  rw [tree4218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4216 coloured4216 at child
  try dsimp only [live4218, coloured4218]
  rw [child]
  dsimp only [result4216]
  have child := child1
  unfold live4217 coloured4217 at child
  try dsimp only [live4218, coloured4218]
  rw [child]
  dsimp only [result4217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4219_agree_conditional : tree4219 = literal4219 := by
  rw [tree4219_def]
  rfl
theorem node4219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4219 live4219 coloured4219 = result4219 := by
  rw [tree4219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4220_agree_conditional
    (child0 : tree4218 = literal4218)
    (child1 : tree4219 = literal4219) : tree4220 = literal4220 := by
  rw [tree4220_def, child0, child1]
  rfl
theorem node4220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4218 live4218 coloured4218 = result4218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4219 live4219 coloured4219 = result4219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4220 live4220 coloured4220 = result4220 := by
  rw [tree4220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4218 coloured4218 at child
  try dsimp only [live4220, coloured4220]
  rw [child]
  dsimp only [result4218]
  have child := child1
  unfold live4219 coloured4219 at child
  try dsimp only [live4220, coloured4220]
  rw [child]
  dsimp only [result4219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4221_agree_conditional : tree4221 = literal4221 := by
  rw [tree4221_def]
  rfl
theorem node4221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4221 live4221 coloured4221 = result4221 := by
  rw [tree4221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4222_agree_conditional
    (child0 : tree4220 = literal4220)
    (child1 : tree4221 = literal4221) : tree4222 = literal4222 := by
  rw [tree4222_def, child0, child1]
  rfl
theorem node4222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4220 live4220 coloured4220 = result4220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4221 live4221 coloured4221 = result4221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4222 live4222 coloured4222 = result4222 := by
  rw [tree4222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4220 coloured4220 at child
  try dsimp only [live4222, coloured4222]
  rw [child]
  dsimp only [result4220]
  have child := child1
  unfold live4221 coloured4221 at child
  try dsimp only [live4222, coloured4222]
  rw [child]
  dsimp only [result4221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4223_agree_conditional : tree4223 = literal4223 := by
  rw [tree4223_def]
  rfl
theorem node4223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4223 live4223 coloured4223 = result4223 := by
  rw [tree4223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
