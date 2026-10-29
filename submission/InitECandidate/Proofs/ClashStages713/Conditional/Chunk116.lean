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
theorem tree11136_agree_conditional
    (child0 : tree11134 = literal11134)
    (child1 : tree11135 = literal11135) : tree11136 = literal11136 := by
  rw [tree11136_def, child0, child1]
  rfl
theorem node11136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11134 live11134 coloured11134 = result11134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11135 live11135 coloured11135 = result11135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11136 live11136 coloured11136 = result11136 := by
  rw [tree11136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11134 coloured11134 at child
  try dsimp only [live11136, coloured11136]
  rw [child]
  dsimp only [result11134]
  have child := child1
  unfold live11135 coloured11135 at child
  try dsimp only [live11136, coloured11136]
  rw [child]
  dsimp only [result11135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11137_agree_conditional : tree11137 = literal11137 := by
  rw [tree11137_def]
  rfl
theorem node11137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11137 live11137 coloured11137 = result11137 := by
  rw [tree11137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11138_agree_conditional
    (child0 : tree11136 = literal11136)
    (child1 : tree11137 = literal11137) : tree11138 = literal11138 := by
  rw [tree11138_def, child0, child1]
  rfl
theorem node11138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11136 live11136 coloured11136 = result11136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11137 live11137 coloured11137 = result11137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11138 live11138 coloured11138 = result11138 := by
  rw [tree11138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11136 coloured11136 at child
  try dsimp only [live11138, coloured11138]
  rw [child]
  dsimp only [result11136]
  have child := child1
  unfold live11137 coloured11137 at child
  try dsimp only [live11138, coloured11138]
  rw [child]
  dsimp only [result11137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11139_agree_conditional : tree11139 = literal11139 := by
  rw [tree11139_def]
  rfl
theorem node11139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11139 live11139 coloured11139 = result11139 := by
  rw [tree11139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11140_agree_conditional
    (child0 : tree11138 = literal11138)
    (child1 : tree11139 = literal11139) : tree11140 = literal11140 := by
  rw [tree11140_def, child0, child1]
  rfl
theorem node11140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11138 live11138 coloured11138 = result11138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11139 live11139 coloured11139 = result11139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11140 live11140 coloured11140 = result11140 := by
  rw [tree11140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11138 coloured11138 at child
  try dsimp only [live11140, coloured11140]
  rw [child]
  dsimp only [result11138]
  have child := child1
  unfold live11139 coloured11139 at child
  try dsimp only [live11140, coloured11140]
  rw [child]
  dsimp only [result11139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11141_agree_conditional : tree11141 = literal11141 := by
  rw [tree11141_def]
  rfl
theorem node11141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11141 live11141 coloured11141 = result11141 := by
  rw [tree11141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11142_agree_conditional
    (child0 : tree11140 = literal11140)
    (child1 : tree11141 = literal11141) : tree11142 = literal11142 := by
  rw [tree11142_def, child0, child1]
  rfl
theorem node11142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11140 live11140 coloured11140 = result11140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11141 live11141 coloured11141 = result11141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11142 live11142 coloured11142 = result11142 := by
  rw [tree11142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11140 coloured11140 at child
  try dsimp only [live11142, coloured11142]
  rw [child]
  dsimp only [result11140]
  have child := child1
  unfold live11141 coloured11141 at child
  try dsimp only [live11142, coloured11142]
  rw [child]
  dsimp only [result11141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11143_agree_conditional : tree11143 = literal11143 := by
  rw [tree11143_def]
  rfl
theorem node11143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11143 live11143 coloured11143 = result11143 := by
  rw [tree11143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11144_agree_conditional
    (child0 : tree11142 = literal11142)
    (child1 : tree11143 = literal11143) : tree11144 = literal11144 := by
  rw [tree11144_def, child0, child1]
  rfl
theorem node11144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11142 live11142 coloured11142 = result11142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11143 live11143 coloured11143 = result11143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11144 live11144 coloured11144 = result11144 := by
  rw [tree11144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11142 coloured11142 at child
  try dsimp only [live11144, coloured11144]
  rw [child]
  dsimp only [result11142]
  have child := child1
  unfold live11143 coloured11143 at child
  try dsimp only [live11144, coloured11144]
  rw [child]
  dsimp only [result11143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11145_agree_conditional : tree11145 = literal11145 := by
  rw [tree11145_def]
  rfl
theorem node11145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11145 live11145 coloured11145 = result11145 := by
  rw [tree11145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11146_agree_conditional
    (child0 : tree11144 = literal11144)
    (child1 : tree11145 = literal11145) : tree11146 = literal11146 := by
  rw [tree11146_def, child0, child1]
  rfl
theorem node11146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11144 live11144 coloured11144 = result11144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11145 live11145 coloured11145 = result11145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11146 live11146 coloured11146 = result11146 := by
  rw [tree11146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11144 coloured11144 at child
  try dsimp only [live11146, coloured11146]
  rw [child]
  dsimp only [result11144]
  have child := child1
  unfold live11145 coloured11145 at child
  try dsimp only [live11146, coloured11146]
  rw [child]
  dsimp only [result11145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11147_agree_conditional : tree11147 = literal11147 := by
  rw [tree11147_def]
  rfl
theorem node11147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11147 live11147 coloured11147 = result11147 := by
  rw [tree11147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11148_agree_conditional
    (child0 : tree11146 = literal11146)
    (child1 : tree11147 = literal11147) : tree11148 = literal11148 := by
  rw [tree11148_def, child0, child1]
  rfl
theorem node11148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11146 live11146 coloured11146 = result11146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11147 live11147 coloured11147 = result11147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11148 live11148 coloured11148 = result11148 := by
  rw [tree11148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11146 coloured11146 at child
  try dsimp only [live11148, coloured11148]
  rw [child]
  dsimp only [result11146]
  have child := child1
  unfold live11147 coloured11147 at child
  try dsimp only [live11148, coloured11148]
  rw [child]
  dsimp only [result11147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11149_agree_conditional : tree11149 = literal11149 := by
  rw [tree11149_def]
  rfl
theorem node11149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11149 live11149 coloured11149 = result11149 := by
  rw [tree11149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11150_agree_conditional
    (child0 : tree11148 = literal11148)
    (child1 : tree11149 = literal11149) : tree11150 = literal11150 := by
  rw [tree11150_def, child0, child1]
  rfl
theorem node11150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11148 live11148 coloured11148 = result11148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11149 live11149 coloured11149 = result11149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11150 live11150 coloured11150 = result11150 := by
  rw [tree11150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11148 coloured11148 at child
  try dsimp only [live11150, coloured11150]
  rw [child]
  dsimp only [result11148]
  have child := child1
  unfold live11149 coloured11149 at child
  try dsimp only [live11150, coloured11150]
  rw [child]
  dsimp only [result11149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11151_agree_conditional : tree11151 = literal11151 := by
  rw [tree11151_def]
  rfl
theorem node11151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11151 live11151 coloured11151 = result11151 := by
  rw [tree11151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11152_agree_conditional
    (child0 : tree11150 = literal11150)
    (child1 : tree11151 = literal11151) : tree11152 = literal11152 := by
  rw [tree11152_def, child0, child1]
  rfl
theorem node11152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11150 live11150 coloured11150 = result11150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11151 live11151 coloured11151 = result11151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11152 live11152 coloured11152 = result11152 := by
  rw [tree11152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11150 coloured11150 at child
  try dsimp only [live11152, coloured11152]
  rw [child]
  dsimp only [result11150]
  have child := child1
  unfold live11151 coloured11151 at child
  try dsimp only [live11152, coloured11152]
  rw [child]
  dsimp only [result11151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11153_agree_conditional : tree11153 = literal11153 := by
  rw [tree11153_def]
  rfl
theorem node11153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11153 live11153 coloured11153 = result11153 := by
  rw [tree11153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11154_agree_conditional
    (child0 : tree11152 = literal11152)
    (child1 : tree11153 = literal11153) : tree11154 = literal11154 := by
  rw [tree11154_def, child0, child1]
  rfl
theorem node11154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11152 live11152 coloured11152 = result11152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11153 live11153 coloured11153 = result11153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11154 live11154 coloured11154 = result11154 := by
  rw [tree11154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11152 coloured11152 at child
  try dsimp only [live11154, coloured11154]
  rw [child]
  dsimp only [result11152]
  have child := child1
  unfold live11153 coloured11153 at child
  try dsimp only [live11154, coloured11154]
  rw [child]
  dsimp only [result11153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11155_agree_conditional : tree11155 = literal11155 := by
  rw [tree11155_def]
  rfl
theorem node11155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11155 live11155 coloured11155 = result11155 := by
  rw [tree11155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11156_agree_conditional
    (child0 : tree11154 = literal11154)
    (child1 : tree11155 = literal11155) : tree11156 = literal11156 := by
  rw [tree11156_def, child0, child1]
  rfl
theorem node11156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11154 live11154 coloured11154 = result11154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11155 live11155 coloured11155 = result11155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11156 live11156 coloured11156 = result11156 := by
  rw [tree11156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11154 coloured11154 at child
  try dsimp only [live11156, coloured11156]
  rw [child]
  dsimp only [result11154]
  have child := child1
  unfold live11155 coloured11155 at child
  try dsimp only [live11156, coloured11156]
  rw [child]
  dsimp only [result11155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11157_agree_conditional : tree11157 = literal11157 := by
  rw [tree11157_def]
  rfl
theorem node11157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11157 live11157 coloured11157 = result11157 := by
  rw [tree11157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11158_agree_conditional
    (child0 : tree11156 = literal11156)
    (child1 : tree11157 = literal11157) : tree11158 = literal11158 := by
  rw [tree11158_def, child0, child1]
  rfl
theorem node11158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11156 live11156 coloured11156 = result11156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11157 live11157 coloured11157 = result11157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11158 live11158 coloured11158 = result11158 := by
  rw [tree11158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11156 coloured11156 at child
  try dsimp only [live11158, coloured11158]
  rw [child]
  dsimp only [result11156]
  have child := child1
  unfold live11157 coloured11157 at child
  try dsimp only [live11158, coloured11158]
  rw [child]
  dsimp only [result11157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11159_agree_conditional : tree11159 = literal11159 := by
  rw [tree11159_def]
  rfl
theorem node11159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11159 live11159 coloured11159 = result11159 := by
  rw [tree11159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11160_agree_conditional
    (child0 : tree11158 = literal11158)
    (child1 : tree11159 = literal11159) : tree11160 = literal11160 := by
  rw [tree11160_def, child0, child1]
  rfl
theorem node11160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11158 live11158 coloured11158 = result11158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11159 live11159 coloured11159 = result11159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11160 live11160 coloured11160 = result11160 := by
  rw [tree11160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11158 coloured11158 at child
  try dsimp only [live11160, coloured11160]
  rw [child]
  dsimp only [result11158]
  have child := child1
  unfold live11159 coloured11159 at child
  try dsimp only [live11160, coloured11160]
  rw [child]
  dsimp only [result11159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11161_agree_conditional : tree11161 = literal11161 := by
  rw [tree11161_def]
  rfl
theorem node11161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11161 live11161 coloured11161 = result11161 := by
  rw [tree11161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11162_agree_conditional
    (child0 : tree11160 = literal11160)
    (child1 : tree11161 = literal11161) : tree11162 = literal11162 := by
  rw [tree11162_def, child0, child1]
  rfl
theorem node11162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11160 live11160 coloured11160 = result11160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11161 live11161 coloured11161 = result11161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11162 live11162 coloured11162 = result11162 := by
  rw [tree11162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11160 coloured11160 at child
  try dsimp only [live11162, coloured11162]
  rw [child]
  dsimp only [result11160]
  have child := child1
  unfold live11161 coloured11161 at child
  try dsimp only [live11162, coloured11162]
  rw [child]
  dsimp only [result11161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11163_agree_conditional : tree11163 = literal11163 := by
  rw [tree11163_def]
  rfl
theorem node11163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11163 live11163 coloured11163 = result11163 := by
  rw [tree11163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11164_agree_conditional
    (child0 : tree11162 = literal11162)
    (child1 : tree11163 = literal11163) : tree11164 = literal11164 := by
  rw [tree11164_def, child0, child1]
  rfl
theorem node11164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11162 live11162 coloured11162 = result11162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11163 live11163 coloured11163 = result11163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11164 live11164 coloured11164 = result11164 := by
  rw [tree11164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11162 coloured11162 at child
  try dsimp only [live11164, coloured11164]
  rw [child]
  dsimp only [result11162]
  have child := child1
  unfold live11163 coloured11163 at child
  try dsimp only [live11164, coloured11164]
  rw [child]
  dsimp only [result11163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11165_agree_conditional : tree11165 = literal11165 := by
  rw [tree11165_def]
  rfl
theorem node11165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11165 live11165 coloured11165 = result11165 := by
  rw [tree11165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11166_agree_conditional
    (child0 : tree11164 = literal11164)
    (child1 : tree11165 = literal11165) : tree11166 = literal11166 := by
  rw [tree11166_def, child0, child1]
  rfl
theorem node11166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11164 live11164 coloured11164 = result11164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11165 live11165 coloured11165 = result11165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11166 live11166 coloured11166 = result11166 := by
  rw [tree11166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11164 coloured11164 at child
  try dsimp only [live11166, coloured11166]
  rw [child]
  dsimp only [result11164]
  have child := child1
  unfold live11165 coloured11165 at child
  try dsimp only [live11166, coloured11166]
  rw [child]
  dsimp only [result11165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11167_agree_conditional : tree11167 = literal11167 := by
  rw [tree11167_def]
  rfl
theorem node11167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11167 live11167 coloured11167 = result11167 := by
  rw [tree11167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11168_agree_conditional
    (child0 : tree11166 = literal11166)
    (child1 : tree11167 = literal11167) : tree11168 = literal11168 := by
  rw [tree11168_def, child0, child1]
  rfl
theorem node11168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11166 live11166 coloured11166 = result11166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11167 live11167 coloured11167 = result11167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11168 live11168 coloured11168 = result11168 := by
  rw [tree11168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11166 coloured11166 at child
  try dsimp only [live11168, coloured11168]
  rw [child]
  dsimp only [result11166]
  have child := child1
  unfold live11167 coloured11167 at child
  try dsimp only [live11168, coloured11168]
  rw [child]
  dsimp only [result11167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11169_agree_conditional : tree11169 = literal11169 := by
  rw [tree11169_def]
  rfl
theorem node11169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11169 live11169 coloured11169 = result11169 := by
  rw [tree11169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11170_agree_conditional
    (child0 : tree11168 = literal11168)
    (child1 : tree11169 = literal11169) : tree11170 = literal11170 := by
  rw [tree11170_def, child0, child1]
  rfl
theorem node11170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11168 live11168 coloured11168 = result11168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11169 live11169 coloured11169 = result11169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11170 live11170 coloured11170 = result11170 := by
  rw [tree11170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11168 coloured11168 at child
  try dsimp only [live11170, coloured11170]
  rw [child]
  dsimp only [result11168]
  have child := child1
  unfold live11169 coloured11169 at child
  try dsimp only [live11170, coloured11170]
  rw [child]
  dsimp only [result11169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11171_agree_conditional : tree11171 = literal11171 := by
  rw [tree11171_def]
  rfl
theorem node11171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11171 live11171 coloured11171 = result11171 := by
  rw [tree11171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11172_agree_conditional
    (child0 : tree11170 = literal11170)
    (child1 : tree11171 = literal11171) : tree11172 = literal11172 := by
  rw [tree11172_def, child0, child1]
  rfl
theorem node11172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11170 live11170 coloured11170 = result11170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11171 live11171 coloured11171 = result11171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11172 live11172 coloured11172 = result11172 := by
  rw [tree11172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11170 coloured11170 at child
  try dsimp only [live11172, coloured11172]
  rw [child]
  dsimp only [result11170]
  have child := child1
  unfold live11171 coloured11171 at child
  try dsimp only [live11172, coloured11172]
  rw [child]
  dsimp only [result11171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11173_agree_conditional : tree11173 = literal11173 := by
  rw [tree11173_def]
  rfl
theorem node11173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11173 live11173 coloured11173 = result11173 := by
  rw [tree11173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11174_agree_conditional
    (child0 : tree11172 = literal11172)
    (child1 : tree11173 = literal11173) : tree11174 = literal11174 := by
  rw [tree11174_def, child0, child1]
  rfl
theorem node11174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11172 live11172 coloured11172 = result11172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11173 live11173 coloured11173 = result11173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11174 live11174 coloured11174 = result11174 := by
  rw [tree11174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11172 coloured11172 at child
  try dsimp only [live11174, coloured11174]
  rw [child]
  dsimp only [result11172]
  have child := child1
  unfold live11173 coloured11173 at child
  try dsimp only [live11174, coloured11174]
  rw [child]
  dsimp only [result11173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11175_agree_conditional : tree11175 = literal11175 := by
  rw [tree11175_def]
  rfl
theorem node11175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11175 live11175 coloured11175 = result11175 := by
  rw [tree11175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11176_agree_conditional
    (child0 : tree11174 = literal11174)
    (child1 : tree11175 = literal11175) : tree11176 = literal11176 := by
  rw [tree11176_def, child0, child1]
  rfl
theorem node11176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11174 live11174 coloured11174 = result11174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11175 live11175 coloured11175 = result11175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11176 live11176 coloured11176 = result11176 := by
  rw [tree11176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11174 coloured11174 at child
  try dsimp only [live11176, coloured11176]
  rw [child]
  dsimp only [result11174]
  have child := child1
  unfold live11175 coloured11175 at child
  try dsimp only [live11176, coloured11176]
  rw [child]
  dsimp only [result11175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11177_agree_conditional : tree11177 = literal11177 := by
  rw [tree11177_def]
  rfl
theorem node11177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11177 live11177 coloured11177 = result11177 := by
  rw [tree11177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11178_agree_conditional
    (child0 : tree11176 = literal11176)
    (child1 : tree11177 = literal11177) : tree11178 = literal11178 := by
  rw [tree11178_def, child0, child1]
  rfl
theorem node11178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11176 live11176 coloured11176 = result11176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11177 live11177 coloured11177 = result11177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11178 live11178 coloured11178 = result11178 := by
  rw [tree11178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11176 coloured11176 at child
  try dsimp only [live11178, coloured11178]
  rw [child]
  dsimp only [result11176]
  have child := child1
  unfold live11177 coloured11177 at child
  try dsimp only [live11178, coloured11178]
  rw [child]
  dsimp only [result11177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11179_agree_conditional : tree11179 = literal11179 := by
  rw [tree11179_def]
  rfl
theorem node11179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11179 live11179 coloured11179 = result11179 := by
  rw [tree11179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11180_agree_conditional
    (child0 : tree11178 = literal11178)
    (child1 : tree11179 = literal11179) : tree11180 = literal11180 := by
  rw [tree11180_def, child0, child1]
  rfl
theorem node11180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11178 live11178 coloured11178 = result11178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11179 live11179 coloured11179 = result11179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11180 live11180 coloured11180 = result11180 := by
  rw [tree11180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11178 coloured11178 at child
  try dsimp only [live11180, coloured11180]
  rw [child]
  dsimp only [result11178]
  have child := child1
  unfold live11179 coloured11179 at child
  try dsimp only [live11180, coloured11180]
  rw [child]
  dsimp only [result11179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11181_agree_conditional : tree11181 = literal11181 := by
  rw [tree11181_def]
  rfl
theorem node11181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11181 live11181 coloured11181 = result11181 := by
  rw [tree11181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11182_agree_conditional
    (child0 : tree11180 = literal11180)
    (child1 : tree11181 = literal11181) : tree11182 = literal11182 := by
  rw [tree11182_def, child0, child1]
  rfl
theorem node11182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11180 live11180 coloured11180 = result11180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11181 live11181 coloured11181 = result11181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11182 live11182 coloured11182 = result11182 := by
  rw [tree11182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11180 coloured11180 at child
  try dsimp only [live11182, coloured11182]
  rw [child]
  dsimp only [result11180]
  have child := child1
  unfold live11181 coloured11181 at child
  try dsimp only [live11182, coloured11182]
  rw [child]
  dsimp only [result11181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11183_agree_conditional : tree11183 = literal11183 := by
  rw [tree11183_def]
  rfl
theorem node11183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11183 live11183 coloured11183 = result11183 := by
  rw [tree11183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11184_agree_conditional
    (child0 : tree11182 = literal11182)
    (child1 : tree11183 = literal11183) : tree11184 = literal11184 := by
  rw [tree11184_def, child0, child1]
  rfl
theorem node11184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11182 live11182 coloured11182 = result11182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11183 live11183 coloured11183 = result11183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11184 live11184 coloured11184 = result11184 := by
  rw [tree11184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11182 coloured11182 at child
  try dsimp only [live11184, coloured11184]
  rw [child]
  dsimp only [result11182]
  have child := child1
  unfold live11183 coloured11183 at child
  try dsimp only [live11184, coloured11184]
  rw [child]
  dsimp only [result11183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11185_agree_conditional : tree11185 = literal11185 := by
  rw [tree11185_def]
  rfl
theorem node11185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11185 live11185 coloured11185 = result11185 := by
  rw [tree11185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11186_agree_conditional
    (child0 : tree11184 = literal11184)
    (child1 : tree11185 = literal11185) : tree11186 = literal11186 := by
  rw [tree11186_def, child0, child1]
  rfl
theorem node11186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11184 live11184 coloured11184 = result11184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11185 live11185 coloured11185 = result11185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11186 live11186 coloured11186 = result11186 := by
  rw [tree11186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11184 coloured11184 at child
  try dsimp only [live11186, coloured11186]
  rw [child]
  dsimp only [result11184]
  have child := child1
  unfold live11185 coloured11185 at child
  try dsimp only [live11186, coloured11186]
  rw [child]
  dsimp only [result11185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11187_agree_conditional : tree11187 = literal11187 := by
  rw [tree11187_def]
  rfl
theorem node11187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11187 live11187 coloured11187 = result11187 := by
  rw [tree11187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11188_agree_conditional
    (child0 : tree11186 = literal11186)
    (child1 : tree11187 = literal11187) : tree11188 = literal11188 := by
  rw [tree11188_def, child0, child1]
  rfl
theorem node11188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11186 live11186 coloured11186 = result11186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11187 live11187 coloured11187 = result11187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11188 live11188 coloured11188 = result11188 := by
  rw [tree11188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11186 coloured11186 at child
  try dsimp only [live11188, coloured11188]
  rw [child]
  dsimp only [result11186]
  have child := child1
  unfold live11187 coloured11187 at child
  try dsimp only [live11188, coloured11188]
  rw [child]
  dsimp only [result11187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11189_agree_conditional : tree11189 = literal11189 := by
  rw [tree11189_def]
  rfl
theorem node11189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11189 live11189 coloured11189 = result11189 := by
  rw [tree11189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11190_agree_conditional
    (child0 : tree11188 = literal11188)
    (child1 : tree11189 = literal11189) : tree11190 = literal11190 := by
  rw [tree11190_def, child0, child1]
  rfl
theorem node11190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11188 live11188 coloured11188 = result11188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11189 live11189 coloured11189 = result11189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11190 live11190 coloured11190 = result11190 := by
  rw [tree11190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11188 coloured11188 at child
  try dsimp only [live11190, coloured11190]
  rw [child]
  dsimp only [result11188]
  have child := child1
  unfold live11189 coloured11189 at child
  try dsimp only [live11190, coloured11190]
  rw [child]
  dsimp only [result11189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11191_agree_conditional : tree11191 = literal11191 := by
  rw [tree11191_def]
  rfl
theorem node11191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11191 live11191 coloured11191 = result11191 := by
  rw [tree11191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11192_agree_conditional
    (child0 : tree11190 = literal11190)
    (child1 : tree11191 = literal11191) : tree11192 = literal11192 := by
  rw [tree11192_def, child0, child1]
  rfl
theorem node11192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11190 live11190 coloured11190 = result11190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11191 live11191 coloured11191 = result11191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11192 live11192 coloured11192 = result11192 := by
  rw [tree11192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11190 coloured11190 at child
  try dsimp only [live11192, coloured11192]
  rw [child]
  dsimp only [result11190]
  have child := child1
  unfold live11191 coloured11191 at child
  try dsimp only [live11192, coloured11192]
  rw [child]
  dsimp only [result11191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11193_agree_conditional : tree11193 = literal11193 := by
  rw [tree11193_def]
  rfl
theorem node11193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11193 live11193 coloured11193 = result11193 := by
  rw [tree11193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11194_agree_conditional
    (child0 : tree11192 = literal11192)
    (child1 : tree11193 = literal11193) : tree11194 = literal11194 := by
  rw [tree11194_def, child0, child1]
  rfl
theorem node11194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11192 live11192 coloured11192 = result11192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11193 live11193 coloured11193 = result11193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11194 live11194 coloured11194 = result11194 := by
  rw [tree11194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11192 coloured11192 at child
  try dsimp only [live11194, coloured11194]
  rw [child]
  dsimp only [result11192]
  have child := child1
  unfold live11193 coloured11193 at child
  try dsimp only [live11194, coloured11194]
  rw [child]
  dsimp only [result11193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11195_agree_conditional : tree11195 = literal11195 := by
  rw [tree11195_def]
  rfl
theorem node11195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11195 live11195 coloured11195 = result11195 := by
  rw [tree11195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11196_agree_conditional
    (child0 : tree11194 = literal11194)
    (child1 : tree11195 = literal11195) : tree11196 = literal11196 := by
  rw [tree11196_def, child0, child1]
  rfl
theorem node11196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11194 live11194 coloured11194 = result11194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11195 live11195 coloured11195 = result11195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11196 live11196 coloured11196 = result11196 := by
  rw [tree11196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11194 coloured11194 at child
  try dsimp only [live11196, coloured11196]
  rw [child]
  dsimp only [result11194]
  have child := child1
  unfold live11195 coloured11195 at child
  try dsimp only [live11196, coloured11196]
  rw [child]
  dsimp only [result11195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11197_agree_conditional : tree11197 = literal11197 := by
  rw [tree11197_def]
  rfl
theorem node11197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11197 live11197 coloured11197 = result11197 := by
  rw [tree11197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11198_agree_conditional
    (child0 : tree11196 = literal11196)
    (child1 : tree11197 = literal11197) : tree11198 = literal11198 := by
  rw [tree11198_def, child0, child1]
  rfl
theorem node11198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11196 live11196 coloured11196 = result11196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11197 live11197 coloured11197 = result11197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11198 live11198 coloured11198 = result11198 := by
  rw [tree11198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11196 coloured11196 at child
  try dsimp only [live11198, coloured11198]
  rw [child]
  dsimp only [result11196]
  have child := child1
  unfold live11197 coloured11197 at child
  try dsimp only [live11198, coloured11198]
  rw [child]
  dsimp only [result11197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11199_agree_conditional : tree11199 = literal11199 := by
  rw [tree11199_def]
  rfl
theorem node11199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11199 live11199 coloured11199 = result11199 := by
  rw [tree11199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11200_agree_conditional
    (child0 : tree11198 = literal11198)
    (child1 : tree11199 = literal11199) : tree11200 = literal11200 := by
  rw [tree11200_def, child0, child1]
  rfl
theorem node11200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11198 live11198 coloured11198 = result11198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11199 live11199 coloured11199 = result11199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11200 live11200 coloured11200 = result11200 := by
  rw [tree11200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11198 coloured11198 at child
  try dsimp only [live11200, coloured11200]
  rw [child]
  dsimp only [result11198]
  have child := child1
  unfold live11199 coloured11199 at child
  try dsimp only [live11200, coloured11200]
  rw [child]
  dsimp only [result11199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11201_agree_conditional : tree11201 = literal11201 := by
  rw [tree11201_def]
  rfl
theorem node11201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11201 live11201 coloured11201 = result11201 := by
  rw [tree11201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11202_agree_conditional
    (child0 : tree11200 = literal11200)
    (child1 : tree11201 = literal11201) : tree11202 = literal11202 := by
  rw [tree11202_def, child0, child1]
  rfl
theorem node11202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11200 live11200 coloured11200 = result11200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11201 live11201 coloured11201 = result11201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11202 live11202 coloured11202 = result11202 := by
  rw [tree11202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11200 coloured11200 at child
  try dsimp only [live11202, coloured11202]
  rw [child]
  dsimp only [result11200]
  have child := child1
  unfold live11201 coloured11201 at child
  try dsimp only [live11202, coloured11202]
  rw [child]
  dsimp only [result11201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11203_agree_conditional : tree11203 = literal11203 := by
  rw [tree11203_def]
  rfl
theorem node11203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11203 live11203 coloured11203 = result11203 := by
  rw [tree11203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11204_agree_conditional
    (child0 : tree11202 = literal11202)
    (child1 : tree11203 = literal11203) : tree11204 = literal11204 := by
  rw [tree11204_def, child0, child1]
  rfl
theorem node11204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11202 live11202 coloured11202 = result11202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11203 live11203 coloured11203 = result11203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11204 live11204 coloured11204 = result11204 := by
  rw [tree11204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11202 coloured11202 at child
  try dsimp only [live11204, coloured11204]
  rw [child]
  dsimp only [result11202]
  have child := child1
  unfold live11203 coloured11203 at child
  try dsimp only [live11204, coloured11204]
  rw [child]
  dsimp only [result11203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11205_agree_conditional : tree11205 = literal11205 := by
  rw [tree11205_def]
  rfl
theorem node11205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11205 live11205 coloured11205 = result11205 := by
  rw [tree11205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11206_agree_conditional
    (child0 : tree11204 = literal11204)
    (child1 : tree11205 = literal11205) : tree11206 = literal11206 := by
  rw [tree11206_def, child0, child1]
  rfl
theorem node11206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11204 live11204 coloured11204 = result11204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11205 live11205 coloured11205 = result11205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11206 live11206 coloured11206 = result11206 := by
  rw [tree11206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11204 coloured11204 at child
  try dsimp only [live11206, coloured11206]
  rw [child]
  dsimp only [result11204]
  have child := child1
  unfold live11205 coloured11205 at child
  try dsimp only [live11206, coloured11206]
  rw [child]
  dsimp only [result11205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11207_agree_conditional : tree11207 = literal11207 := by
  rw [tree11207_def]
  rfl
theorem node11207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11207 live11207 coloured11207 = result11207 := by
  rw [tree11207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11208_agree_conditional
    (child0 : tree11206 = literal11206)
    (child1 : tree11207 = literal11207) : tree11208 = literal11208 := by
  rw [tree11208_def, child0, child1]
  rfl
theorem node11208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11206 live11206 coloured11206 = result11206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11207 live11207 coloured11207 = result11207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11208 live11208 coloured11208 = result11208 := by
  rw [tree11208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11206 coloured11206 at child
  try dsimp only [live11208, coloured11208]
  rw [child]
  dsimp only [result11206]
  have child := child1
  unfold live11207 coloured11207 at child
  try dsimp only [live11208, coloured11208]
  rw [child]
  dsimp only [result11207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11209_agree_conditional : tree11209 = literal11209 := by
  rw [tree11209_def]
  rfl
theorem node11209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11209 live11209 coloured11209 = result11209 := by
  rw [tree11209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11210_agree_conditional
    (child0 : tree11208 = literal11208)
    (child1 : tree11209 = literal11209) : tree11210 = literal11210 := by
  rw [tree11210_def, child0, child1]
  rfl
theorem node11210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11208 live11208 coloured11208 = result11208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11209 live11209 coloured11209 = result11209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11210 live11210 coloured11210 = result11210 := by
  rw [tree11210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11208 coloured11208 at child
  try dsimp only [live11210, coloured11210]
  rw [child]
  dsimp only [result11208]
  have child := child1
  unfold live11209 coloured11209 at child
  try dsimp only [live11210, coloured11210]
  rw [child]
  dsimp only [result11209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11211_agree_conditional : tree11211 = literal11211 := by
  rw [tree11211_def]
  rfl
theorem node11211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11211 live11211 coloured11211 = result11211 := by
  rw [tree11211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11212_agree_conditional
    (child0 : tree11210 = literal11210)
    (child1 : tree11211 = literal11211) : tree11212 = literal11212 := by
  rw [tree11212_def, child0, child1]
  rfl
theorem node11212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11210 live11210 coloured11210 = result11210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11211 live11211 coloured11211 = result11211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11212 live11212 coloured11212 = result11212 := by
  rw [tree11212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11210 coloured11210 at child
  try dsimp only [live11212, coloured11212]
  rw [child]
  dsimp only [result11210]
  have child := child1
  unfold live11211 coloured11211 at child
  try dsimp only [live11212, coloured11212]
  rw [child]
  dsimp only [result11211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11213_agree_conditional : tree11213 = literal11213 := by
  rw [tree11213_def]
  rfl
theorem node11213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11213 live11213 coloured11213 = result11213 := by
  rw [tree11213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11214_agree_conditional
    (child0 : tree11212 = literal11212)
    (child1 : tree11213 = literal11213) : tree11214 = literal11214 := by
  rw [tree11214_def, child0, child1]
  rfl
theorem node11214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11212 live11212 coloured11212 = result11212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11213 live11213 coloured11213 = result11213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11214 live11214 coloured11214 = result11214 := by
  rw [tree11214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11212 coloured11212 at child
  try dsimp only [live11214, coloured11214]
  rw [child]
  dsimp only [result11212]
  have child := child1
  unfold live11213 coloured11213 at child
  try dsimp only [live11214, coloured11214]
  rw [child]
  dsimp only [result11213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11215_agree_conditional : tree11215 = literal11215 := by
  rw [tree11215_def]
  rfl
theorem node11215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11215 live11215 coloured11215 = result11215 := by
  rw [tree11215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11216_agree_conditional
    (child0 : tree11214 = literal11214)
    (child1 : tree11215 = literal11215) : tree11216 = literal11216 := by
  rw [tree11216_def, child0, child1]
  rfl
theorem node11216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11214 live11214 coloured11214 = result11214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11215 live11215 coloured11215 = result11215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11216 live11216 coloured11216 = result11216 := by
  rw [tree11216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11214 coloured11214 at child
  try dsimp only [live11216, coloured11216]
  rw [child]
  dsimp only [result11214]
  have child := child1
  unfold live11215 coloured11215 at child
  try dsimp only [live11216, coloured11216]
  rw [child]
  dsimp only [result11215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11217_agree_conditional : tree11217 = literal11217 := by
  rw [tree11217_def]
  rfl
theorem node11217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11217 live11217 coloured11217 = result11217 := by
  rw [tree11217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11218_agree_conditional
    (child0 : tree11216 = literal11216)
    (child1 : tree11217 = literal11217) : tree11218 = literal11218 := by
  rw [tree11218_def, child0, child1]
  rfl
theorem node11218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11216 live11216 coloured11216 = result11216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11217 live11217 coloured11217 = result11217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11218 live11218 coloured11218 = result11218 := by
  rw [tree11218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11216 coloured11216 at child
  try dsimp only [live11218, coloured11218]
  rw [child]
  dsimp only [result11216]
  have child := child1
  unfold live11217 coloured11217 at child
  try dsimp only [live11218, coloured11218]
  rw [child]
  dsimp only [result11217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11219_agree_conditional : tree11219 = literal11219 := by
  rw [tree11219_def]
  rfl
theorem node11219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11219 live11219 coloured11219 = result11219 := by
  rw [tree11219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11220_agree_conditional
    (child0 : tree11218 = literal11218)
    (child1 : tree11219 = literal11219) : tree11220 = literal11220 := by
  rw [tree11220_def, child0, child1]
  rfl
theorem node11220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11218 live11218 coloured11218 = result11218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11219 live11219 coloured11219 = result11219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11220 live11220 coloured11220 = result11220 := by
  rw [tree11220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11218 coloured11218 at child
  try dsimp only [live11220, coloured11220]
  rw [child]
  dsimp only [result11218]
  have child := child1
  unfold live11219 coloured11219 at child
  try dsimp only [live11220, coloured11220]
  rw [child]
  dsimp only [result11219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11221_agree_conditional : tree11221 = literal11221 := by
  rw [tree11221_def]
  rfl
theorem node11221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11221 live11221 coloured11221 = result11221 := by
  rw [tree11221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11222_agree_conditional
    (child0 : tree11220 = literal11220)
    (child1 : tree11221 = literal11221) : tree11222 = literal11222 := by
  rw [tree11222_def, child0, child1]
  rfl
theorem node11222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11220 live11220 coloured11220 = result11220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11221 live11221 coloured11221 = result11221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11222 live11222 coloured11222 = result11222 := by
  rw [tree11222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11220 coloured11220 at child
  try dsimp only [live11222, coloured11222]
  rw [child]
  dsimp only [result11220]
  have child := child1
  unfold live11221 coloured11221 at child
  try dsimp only [live11222, coloured11222]
  rw [child]
  dsimp only [result11221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11223_agree_conditional : tree11223 = literal11223 := by
  rw [tree11223_def]
  rfl
theorem node11223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11223 live11223 coloured11223 = result11223 := by
  rw [tree11223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11224_agree_conditional
    (child0 : tree11222 = literal11222)
    (child1 : tree11223 = literal11223) : tree11224 = literal11224 := by
  rw [tree11224_def, child0, child1]
  rfl
theorem node11224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11222 live11222 coloured11222 = result11222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11223 live11223 coloured11223 = result11223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11224 live11224 coloured11224 = result11224 := by
  rw [tree11224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11222 coloured11222 at child
  try dsimp only [live11224, coloured11224]
  rw [child]
  dsimp only [result11222]
  have child := child1
  unfold live11223 coloured11223 at child
  try dsimp only [live11224, coloured11224]
  rw [child]
  dsimp only [result11223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11225_agree_conditional : tree11225 = literal11225 := by
  rw [tree11225_def]
  rfl
theorem node11225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11225 live11225 coloured11225 = result11225 := by
  rw [tree11225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11226_agree_conditional
    (child0 : tree11224 = literal11224)
    (child1 : tree11225 = literal11225) : tree11226 = literal11226 := by
  rw [tree11226_def, child0, child1]
  rfl
theorem node11226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11224 live11224 coloured11224 = result11224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11225 live11225 coloured11225 = result11225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11226 live11226 coloured11226 = result11226 := by
  rw [tree11226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11224 coloured11224 at child
  try dsimp only [live11226, coloured11226]
  rw [child]
  dsimp only [result11224]
  have child := child1
  unfold live11225 coloured11225 at child
  try dsimp only [live11226, coloured11226]
  rw [child]
  dsimp only [result11225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11227_agree_conditional : tree11227 = literal11227 := by
  rw [tree11227_def]
  rfl
theorem node11227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11227 live11227 coloured11227 = result11227 := by
  rw [tree11227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11228_agree_conditional
    (child0 : tree11226 = literal11226)
    (child1 : tree11227 = literal11227) : tree11228 = literal11228 := by
  rw [tree11228_def, child0, child1]
  rfl
theorem node11228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11226 live11226 coloured11226 = result11226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11227 live11227 coloured11227 = result11227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11228 live11228 coloured11228 = result11228 := by
  rw [tree11228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11226 coloured11226 at child
  try dsimp only [live11228, coloured11228]
  rw [child]
  dsimp only [result11226]
  have child := child1
  unfold live11227 coloured11227 at child
  try dsimp only [live11228, coloured11228]
  rw [child]
  dsimp only [result11227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11229_agree_conditional : tree11229 = literal11229 := by
  rw [tree11229_def]
  rfl
theorem node11229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11229 live11229 coloured11229 = result11229 := by
  rw [tree11229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11230_agree_conditional
    (child0 : tree11228 = literal11228)
    (child1 : tree11229 = literal11229) : tree11230 = literal11230 := by
  rw [tree11230_def, child0, child1]
  rfl
theorem node11230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11228 live11228 coloured11228 = result11228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11229 live11229 coloured11229 = result11229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11230 live11230 coloured11230 = result11230 := by
  rw [tree11230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11228 coloured11228 at child
  try dsimp only [live11230, coloured11230]
  rw [child]
  dsimp only [result11228]
  have child := child1
  unfold live11229 coloured11229 at child
  try dsimp only [live11230, coloured11230]
  rw [child]
  dsimp only [result11229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11231_agree_conditional : tree11231 = literal11231 := by
  rw [tree11231_def]
  rfl
theorem node11231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11231 live11231 coloured11231 = result11231 := by
  rw [tree11231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
