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
theorem tree8160_agree_conditional
    (child0 : tree8158 = literal8158)
    (child1 : tree8159 = literal8159) : tree8160 = literal8160 := by
  rw [tree8160_def, child0, child1]
  rfl
theorem node8160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8158 live8158 coloured8158 = result8158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8159 live8159 coloured8159 = result8159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8160 live8160 coloured8160 = result8160 := by
  rw [tree8160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8158 coloured8158 at child
  try dsimp only [live8160, coloured8160]
  rw [child]
  dsimp only [result8158]
  have child := child1
  unfold live8159 coloured8159 at child
  try dsimp only [live8160, coloured8160]
  rw [child]
  dsimp only [result8159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8161_agree_conditional : tree8161 = literal8161 := by
  rw [tree8161_def]
  rfl
theorem node8161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8161 live8161 coloured8161 = result8161 := by
  rw [tree8161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8162_agree_conditional
    (child0 : tree8160 = literal8160)
    (child1 : tree8161 = literal8161) : tree8162 = literal8162 := by
  rw [tree8162_def, child0, child1]
  rfl
theorem node8162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8160 live8160 coloured8160 = result8160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8161 live8161 coloured8161 = result8161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8162 live8162 coloured8162 = result8162 := by
  rw [tree8162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8160 coloured8160 at child
  try dsimp only [live8162, coloured8162]
  rw [child]
  dsimp only [result8160]
  have child := child1
  unfold live8161 coloured8161 at child
  try dsimp only [live8162, coloured8162]
  rw [child]
  dsimp only [result8161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8163_agree_conditional : tree8163 = literal8163 := by
  rw [tree8163_def]
  rfl
theorem node8163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8163 live8163 coloured8163 = result8163 := by
  rw [tree8163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8164_agree_conditional
    (child0 : tree8162 = literal8162)
    (child1 : tree8163 = literal8163) : tree8164 = literal8164 := by
  rw [tree8164_def, child0, child1]
  rfl
theorem node8164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8162 live8162 coloured8162 = result8162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8163 live8163 coloured8163 = result8163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8164 live8164 coloured8164 = result8164 := by
  rw [tree8164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8162 coloured8162 at child
  try dsimp only [live8164, coloured8164]
  rw [child]
  dsimp only [result8162]
  have child := child1
  unfold live8163 coloured8163 at child
  try dsimp only [live8164, coloured8164]
  rw [child]
  dsimp only [result8163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8165_agree_conditional : tree8165 = literal8165 := by
  rw [tree8165_def]
  rfl
theorem node8165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8165 live8165 coloured8165 = result8165 := by
  rw [tree8165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8166_agree_conditional
    (child0 : tree8164 = literal8164)
    (child1 : tree8165 = literal8165) : tree8166 = literal8166 := by
  rw [tree8166_def, child0, child1]
  rfl
theorem node8166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8164 live8164 coloured8164 = result8164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8165 live8165 coloured8165 = result8165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8166 live8166 coloured8166 = result8166 := by
  rw [tree8166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8164 coloured8164 at child
  try dsimp only [live8166, coloured8166]
  rw [child]
  dsimp only [result8164]
  have child := child1
  unfold live8165 coloured8165 at child
  try dsimp only [live8166, coloured8166]
  rw [child]
  dsimp only [result8165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8167_agree_conditional : tree8167 = literal8167 := by
  rw [tree8167_def]
  rfl
theorem node8167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8167 live8167 coloured8167 = result8167 := by
  rw [tree8167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8168_agree_conditional
    (child0 : tree8166 = literal8166)
    (child1 : tree8167 = literal8167) : tree8168 = literal8168 := by
  rw [tree8168_def, child0, child1]
  rfl
theorem node8168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8166 live8166 coloured8166 = result8166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8167 live8167 coloured8167 = result8167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8168 live8168 coloured8168 = result8168 := by
  rw [tree8168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8166 coloured8166 at child
  try dsimp only [live8168, coloured8168]
  rw [child]
  dsimp only [result8166]
  have child := child1
  unfold live8167 coloured8167 at child
  try dsimp only [live8168, coloured8168]
  rw [child]
  dsimp only [result8167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8169_agree_conditional : tree8169 = literal8169 := by
  rw [tree8169_def]
  rfl
theorem node8169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8169 live8169 coloured8169 = result8169 := by
  rw [tree8169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8170_agree_conditional
    (child0 : tree8168 = literal8168)
    (child1 : tree8169 = literal8169) : tree8170 = literal8170 := by
  rw [tree8170_def, child0, child1]
  rfl
theorem node8170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8168 live8168 coloured8168 = result8168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8169 live8169 coloured8169 = result8169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8170 live8170 coloured8170 = result8170 := by
  rw [tree8170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8168 coloured8168 at child
  try dsimp only [live8170, coloured8170]
  rw [child]
  dsimp only [result8168]
  have child := child1
  unfold live8169 coloured8169 at child
  try dsimp only [live8170, coloured8170]
  rw [child]
  dsimp only [result8169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8171_agree_conditional : tree8171 = literal8171 := by
  rw [tree8171_def]
  rfl
theorem node8171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8171 live8171 coloured8171 = result8171 := by
  rw [tree8171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8172_agree_conditional
    (child0 : tree8170 = literal8170)
    (child1 : tree8171 = literal8171) : tree8172 = literal8172 := by
  rw [tree8172_def, child0, child1]
  rfl
theorem node8172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8170 live8170 coloured8170 = result8170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8171 live8171 coloured8171 = result8171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8172 live8172 coloured8172 = result8172 := by
  rw [tree8172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8170 coloured8170 at child
  try dsimp only [live8172, coloured8172]
  rw [child]
  dsimp only [result8170]
  have child := child1
  unfold live8171 coloured8171 at child
  try dsimp only [live8172, coloured8172]
  rw [child]
  dsimp only [result8171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8173_agree_conditional : tree8173 = literal8173 := by
  rw [tree8173_def]
  rfl
theorem node8173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8173 live8173 coloured8173 = result8173 := by
  rw [tree8173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8174_agree_conditional
    (child0 : tree8172 = literal8172)
    (child1 : tree8173 = literal8173) : tree8174 = literal8174 := by
  rw [tree8174_def, child0, child1]
  rfl
theorem node8174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8172 live8172 coloured8172 = result8172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8173 live8173 coloured8173 = result8173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8174 live8174 coloured8174 = result8174 := by
  rw [tree8174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8172 coloured8172 at child
  try dsimp only [live8174, coloured8174]
  rw [child]
  dsimp only [result8172]
  have child := child1
  unfold live8173 coloured8173 at child
  try dsimp only [live8174, coloured8174]
  rw [child]
  dsimp only [result8173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8175_agree_conditional : tree8175 = literal8175 := by
  rw [tree8175_def]
  rfl
theorem node8175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8175 live8175 coloured8175 = result8175 := by
  rw [tree8175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8176_agree_conditional
    (child0 : tree8174 = literal8174)
    (child1 : tree8175 = literal8175) : tree8176 = literal8176 := by
  rw [tree8176_def, child0, child1]
  rfl
theorem node8176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8174 live8174 coloured8174 = result8174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8175 live8175 coloured8175 = result8175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8176 live8176 coloured8176 = result8176 := by
  rw [tree8176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8174 coloured8174 at child
  try dsimp only [live8176, coloured8176]
  rw [child]
  dsimp only [result8174]
  have child := child1
  unfold live8175 coloured8175 at child
  try dsimp only [live8176, coloured8176]
  rw [child]
  dsimp only [result8175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8177_agree_conditional : tree8177 = literal8177 := by
  rw [tree8177_def]
  rfl
theorem node8177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8177 live8177 coloured8177 = result8177 := by
  rw [tree8177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8178_agree_conditional
    (child0 : tree8176 = literal8176)
    (child1 : tree8177 = literal8177) : tree8178 = literal8178 := by
  rw [tree8178_def, child0, child1]
  rfl
theorem node8178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8176 live8176 coloured8176 = result8176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8177 live8177 coloured8177 = result8177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8178 live8178 coloured8178 = result8178 := by
  rw [tree8178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8176 coloured8176 at child
  try dsimp only [live8178, coloured8178]
  rw [child]
  dsimp only [result8176]
  have child := child1
  unfold live8177 coloured8177 at child
  try dsimp only [live8178, coloured8178]
  rw [child]
  dsimp only [result8177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8179_agree_conditional : tree8179 = literal8179 := by
  rw [tree8179_def]
  rfl
theorem node8179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8179 live8179 coloured8179 = result8179 := by
  rw [tree8179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8180_agree_conditional
    (child0 : tree8178 = literal8178)
    (child1 : tree8179 = literal8179) : tree8180 = literal8180 := by
  rw [tree8180_def, child0, child1]
  rfl
theorem node8180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8178 live8178 coloured8178 = result8178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8179 live8179 coloured8179 = result8179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8180 live8180 coloured8180 = result8180 := by
  rw [tree8180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8178 coloured8178 at child
  try dsimp only [live8180, coloured8180]
  rw [child]
  dsimp only [result8178]
  have child := child1
  unfold live8179 coloured8179 at child
  try dsimp only [live8180, coloured8180]
  rw [child]
  dsimp only [result8179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8181_agree_conditional : tree8181 = literal8181 := by
  rw [tree8181_def]
  rfl
theorem node8181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8181 live8181 coloured8181 = result8181 := by
  rw [tree8181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8182_agree_conditional
    (child0 : tree8180 = literal8180)
    (child1 : tree8181 = literal8181) : tree8182 = literal8182 := by
  rw [tree8182_def, child0, child1]
  rfl
theorem node8182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8180 live8180 coloured8180 = result8180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8181 live8181 coloured8181 = result8181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8182 live8182 coloured8182 = result8182 := by
  rw [tree8182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8180 coloured8180 at child
  try dsimp only [live8182, coloured8182]
  rw [child]
  dsimp only [result8180]
  have child := child1
  unfold live8181 coloured8181 at child
  try dsimp only [live8182, coloured8182]
  rw [child]
  dsimp only [result8181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8183_agree_conditional : tree8183 = literal8183 := by
  rw [tree8183_def]
  rfl
theorem node8183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8183 live8183 coloured8183 = result8183 := by
  rw [tree8183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8184_agree_conditional
    (child0 : tree8182 = literal8182)
    (child1 : tree8183 = literal8183) : tree8184 = literal8184 := by
  rw [tree8184_def, child0, child1]
  rfl
theorem node8184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8182 live8182 coloured8182 = result8182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8183 live8183 coloured8183 = result8183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8184 live8184 coloured8184 = result8184 := by
  rw [tree8184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8182 coloured8182 at child
  try dsimp only [live8184, coloured8184]
  rw [child]
  dsimp only [result8182]
  have child := child1
  unfold live8183 coloured8183 at child
  try dsimp only [live8184, coloured8184]
  rw [child]
  dsimp only [result8183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8185_agree_conditional : tree8185 = literal8185 := by
  rw [tree8185_def]
  rfl
theorem node8185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8185 live8185 coloured8185 = result8185 := by
  rw [tree8185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8186_agree_conditional
    (child0 : tree8184 = literal8184)
    (child1 : tree8185 = literal8185) : tree8186 = literal8186 := by
  rw [tree8186_def, child0, child1]
  rfl
theorem node8186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8184 live8184 coloured8184 = result8184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8185 live8185 coloured8185 = result8185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8186 live8186 coloured8186 = result8186 := by
  rw [tree8186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8184 coloured8184 at child
  try dsimp only [live8186, coloured8186]
  rw [child]
  dsimp only [result8184]
  have child := child1
  unfold live8185 coloured8185 at child
  try dsimp only [live8186, coloured8186]
  rw [child]
  dsimp only [result8185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8187_agree_conditional : tree8187 = literal8187 := by
  rw [tree8187_def]
  rfl
theorem node8187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8187 live8187 coloured8187 = result8187 := by
  rw [tree8187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8188_agree_conditional
    (child0 : tree8186 = literal8186)
    (child1 : tree8187 = literal8187) : tree8188 = literal8188 := by
  rw [tree8188_def, child0, child1]
  rfl
theorem node8188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8186 live8186 coloured8186 = result8186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8187 live8187 coloured8187 = result8187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8188 live8188 coloured8188 = result8188 := by
  rw [tree8188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8186 coloured8186 at child
  try dsimp only [live8188, coloured8188]
  rw [child]
  dsimp only [result8186]
  have child := child1
  unfold live8187 coloured8187 at child
  try dsimp only [live8188, coloured8188]
  rw [child]
  dsimp only [result8187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8189_agree_conditional : tree8189 = literal8189 := by
  rw [tree8189_def]
  rfl
theorem node8189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8189 live8189 coloured8189 = result8189 := by
  rw [tree8189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8190_agree_conditional
    (child0 : tree8188 = literal8188)
    (child1 : tree8189 = literal8189) : tree8190 = literal8190 := by
  rw [tree8190_def, child0, child1]
  rfl
theorem node8190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8188 live8188 coloured8188 = result8188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8189 live8189 coloured8189 = result8189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8190 live8190 coloured8190 = result8190 := by
  rw [tree8190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8188 coloured8188 at child
  try dsimp only [live8190, coloured8190]
  rw [child]
  dsimp only [result8188]
  have child := child1
  unfold live8189 coloured8189 at child
  try dsimp only [live8190, coloured8190]
  rw [child]
  dsimp only [result8189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8191_agree_conditional : tree8191 = literal8191 := by
  rw [tree8191_def]
  rfl
theorem node8191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8191 live8191 coloured8191 = result8191 := by
  rw [tree8191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8192_agree_conditional
    (child0 : tree8190 = literal8190)
    (child1 : tree8191 = literal8191) : tree8192 = literal8192 := by
  rw [tree8192_def, child0, child1]
  rfl
theorem node8192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8190 live8190 coloured8190 = result8190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8191 live8191 coloured8191 = result8191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8192 live8192 coloured8192 = result8192 := by
  rw [tree8192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8190 coloured8190 at child
  try dsimp only [live8192, coloured8192]
  rw [child]
  dsimp only [result8190]
  have child := child1
  unfold live8191 coloured8191 at child
  try dsimp only [live8192, coloured8192]
  rw [child]
  dsimp only [result8191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8193_agree_conditional : tree8193 = literal8193 := by
  rw [tree8193_def]
  rfl
theorem node8193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8193 live8193 coloured8193 = result8193 := by
  rw [tree8193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8194_agree_conditional
    (child0 : tree8192 = literal8192)
    (child1 : tree8193 = literal8193) : tree8194 = literal8194 := by
  rw [tree8194_def, child0, child1]
  rfl
theorem node8194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8192 live8192 coloured8192 = result8192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8193 live8193 coloured8193 = result8193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8194 live8194 coloured8194 = result8194 := by
  rw [tree8194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8192 coloured8192 at child
  try dsimp only [live8194, coloured8194]
  rw [child]
  dsimp only [result8192]
  have child := child1
  unfold live8193 coloured8193 at child
  try dsimp only [live8194, coloured8194]
  rw [child]
  dsimp only [result8193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8195_agree_conditional : tree8195 = literal8195 := by
  rw [tree8195_def]
  rfl
theorem node8195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8195 live8195 coloured8195 = result8195 := by
  rw [tree8195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8196_agree_conditional
    (child0 : tree8194 = literal8194)
    (child1 : tree8195 = literal8195) : tree8196 = literal8196 := by
  rw [tree8196_def, child0, child1]
  rfl
theorem node8196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8194 live8194 coloured8194 = result8194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8195 live8195 coloured8195 = result8195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8196 live8196 coloured8196 = result8196 := by
  rw [tree8196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8194 coloured8194 at child
  try dsimp only [live8196, coloured8196]
  rw [child]
  dsimp only [result8194]
  have child := child1
  unfold live8195 coloured8195 at child
  try dsimp only [live8196, coloured8196]
  rw [child]
  dsimp only [result8195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8197_agree_conditional : tree8197 = literal8197 := by
  rw [tree8197_def]
  rfl
theorem node8197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8197 live8197 coloured8197 = result8197 := by
  rw [tree8197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8198_agree_conditional
    (child0 : tree8196 = literal8196)
    (child1 : tree8197 = literal8197) : tree8198 = literal8198 := by
  rw [tree8198_def, child0, child1]
  rfl
theorem node8198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8196 live8196 coloured8196 = result8196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8197 live8197 coloured8197 = result8197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8198 live8198 coloured8198 = result8198 := by
  rw [tree8198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8196 coloured8196 at child
  try dsimp only [live8198, coloured8198]
  rw [child]
  dsimp only [result8196]
  have child := child1
  unfold live8197 coloured8197 at child
  try dsimp only [live8198, coloured8198]
  rw [child]
  dsimp only [result8197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8199_agree_conditional : tree8199 = literal8199 := by
  rw [tree8199_def]
  rfl
theorem node8199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8199 live8199 coloured8199 = result8199 := by
  rw [tree8199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8200_agree_conditional
    (child0 : tree8198 = literal8198)
    (child1 : tree8199 = literal8199) : tree8200 = literal8200 := by
  rw [tree8200_def, child0, child1]
  rfl
theorem node8200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8198 live8198 coloured8198 = result8198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8199 live8199 coloured8199 = result8199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8200 live8200 coloured8200 = result8200 := by
  rw [tree8200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8198 coloured8198 at child
  try dsimp only [live8200, coloured8200]
  rw [child]
  dsimp only [result8198]
  have child := child1
  unfold live8199 coloured8199 at child
  try dsimp only [live8200, coloured8200]
  rw [child]
  dsimp only [result8199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8201_agree_conditional : tree8201 = literal8201 := by
  rw [tree8201_def]
  rfl
theorem node8201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8201 live8201 coloured8201 = result8201 := by
  rw [tree8201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8202_agree_conditional
    (child0 : tree8200 = literal8200)
    (child1 : tree8201 = literal8201) : tree8202 = literal8202 := by
  rw [tree8202_def, child0, child1]
  rfl
theorem node8202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8200 live8200 coloured8200 = result8200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8201 live8201 coloured8201 = result8201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8202 live8202 coloured8202 = result8202 := by
  rw [tree8202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8200 coloured8200 at child
  try dsimp only [live8202, coloured8202]
  rw [child]
  dsimp only [result8200]
  have child := child1
  unfold live8201 coloured8201 at child
  try dsimp only [live8202, coloured8202]
  rw [child]
  dsimp only [result8201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8203_agree_conditional : tree8203 = literal8203 := by
  rw [tree8203_def]
  rfl
theorem node8203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8203 live8203 coloured8203 = result8203 := by
  rw [tree8203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8204_agree_conditional
    (child0 : tree8202 = literal8202)
    (child1 : tree8203 = literal8203) : tree8204 = literal8204 := by
  rw [tree8204_def, child0, child1]
  rfl
theorem node8204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8202 live8202 coloured8202 = result8202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8203 live8203 coloured8203 = result8203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8204 live8204 coloured8204 = result8204 := by
  rw [tree8204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8202 coloured8202 at child
  try dsimp only [live8204, coloured8204]
  rw [child]
  dsimp only [result8202]
  have child := child1
  unfold live8203 coloured8203 at child
  try dsimp only [live8204, coloured8204]
  rw [child]
  dsimp only [result8203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8205_agree_conditional : tree8205 = literal8205 := by
  rw [tree8205_def]
  rfl
theorem node8205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8205 live8205 coloured8205 = result8205 := by
  rw [tree8205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8206_agree_conditional
    (child0 : tree8204 = literal8204)
    (child1 : tree8205 = literal8205) : tree8206 = literal8206 := by
  rw [tree8206_def, child0, child1]
  rfl
theorem node8206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8204 live8204 coloured8204 = result8204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8205 live8205 coloured8205 = result8205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8206 live8206 coloured8206 = result8206 := by
  rw [tree8206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8204 coloured8204 at child
  try dsimp only [live8206, coloured8206]
  rw [child]
  dsimp only [result8204]
  have child := child1
  unfold live8205 coloured8205 at child
  try dsimp only [live8206, coloured8206]
  rw [child]
  dsimp only [result8205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8207_agree_conditional : tree8207 = literal8207 := by
  rw [tree8207_def]
  rfl
theorem node8207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8207 live8207 coloured8207 = result8207 := by
  rw [tree8207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8208_agree_conditional
    (child0 : tree8206 = literal8206)
    (child1 : tree8207 = literal8207) : tree8208 = literal8208 := by
  rw [tree8208_def, child0, child1]
  rfl
theorem node8208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8206 live8206 coloured8206 = result8206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8207 live8207 coloured8207 = result8207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8208 live8208 coloured8208 = result8208 := by
  rw [tree8208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8206 coloured8206 at child
  try dsimp only [live8208, coloured8208]
  rw [child]
  dsimp only [result8206]
  have child := child1
  unfold live8207 coloured8207 at child
  try dsimp only [live8208, coloured8208]
  rw [child]
  dsimp only [result8207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8209_agree_conditional : tree8209 = literal8209 := by
  rw [tree8209_def]
  rfl
theorem node8209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8209 live8209 coloured8209 = result8209 := by
  rw [tree8209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8210_agree_conditional
    (child0 : tree8208 = literal8208)
    (child1 : tree8209 = literal8209) : tree8210 = literal8210 := by
  rw [tree8210_def, child0, child1]
  rfl
theorem node8210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8208 live8208 coloured8208 = result8208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8209 live8209 coloured8209 = result8209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8210 live8210 coloured8210 = result8210 := by
  rw [tree8210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8208 coloured8208 at child
  try dsimp only [live8210, coloured8210]
  rw [child]
  dsimp only [result8208]
  have child := child1
  unfold live8209 coloured8209 at child
  try dsimp only [live8210, coloured8210]
  rw [child]
  dsimp only [result8209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8211_agree_conditional : tree8211 = literal8211 := by
  rw [tree8211_def]
  rfl
theorem node8211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8211 live8211 coloured8211 = result8211 := by
  rw [tree8211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8212_agree_conditional
    (child0 : tree8210 = literal8210)
    (child1 : tree8211 = literal8211) : tree8212 = literal8212 := by
  rw [tree8212_def, child0, child1]
  rfl
theorem node8212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8210 live8210 coloured8210 = result8210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8211 live8211 coloured8211 = result8211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8212 live8212 coloured8212 = result8212 := by
  rw [tree8212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8210 coloured8210 at child
  try dsimp only [live8212, coloured8212]
  rw [child]
  dsimp only [result8210]
  have child := child1
  unfold live8211 coloured8211 at child
  try dsimp only [live8212, coloured8212]
  rw [child]
  dsimp only [result8211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8213_agree_conditional : tree8213 = literal8213 := by
  rw [tree8213_def]
  rfl
theorem node8213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8213 live8213 coloured8213 = result8213 := by
  rw [tree8213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8214_agree_conditional
    (child0 : tree8212 = literal8212)
    (child1 : tree8213 = literal8213) : tree8214 = literal8214 := by
  rw [tree8214_def, child0, child1]
  rfl
theorem node8214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8212 live8212 coloured8212 = result8212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8213 live8213 coloured8213 = result8213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8214 live8214 coloured8214 = result8214 := by
  rw [tree8214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8212 coloured8212 at child
  try dsimp only [live8214, coloured8214]
  rw [child]
  dsimp only [result8212]
  have child := child1
  unfold live8213 coloured8213 at child
  try dsimp only [live8214, coloured8214]
  rw [child]
  dsimp only [result8213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8215_agree_conditional : tree8215 = literal8215 := by
  rw [tree8215_def]
  rfl
theorem node8215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8215 live8215 coloured8215 = result8215 := by
  rw [tree8215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8216_agree_conditional
    (child0 : tree8214 = literal8214)
    (child1 : tree8215 = literal8215) : tree8216 = literal8216 := by
  rw [tree8216_def, child0, child1]
  rfl
theorem node8216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8214 live8214 coloured8214 = result8214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8215 live8215 coloured8215 = result8215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8216 live8216 coloured8216 = result8216 := by
  rw [tree8216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8214 coloured8214 at child
  try dsimp only [live8216, coloured8216]
  rw [child]
  dsimp only [result8214]
  have child := child1
  unfold live8215 coloured8215 at child
  try dsimp only [live8216, coloured8216]
  rw [child]
  dsimp only [result8215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8217_agree_conditional : tree8217 = literal8217 := by
  rw [tree8217_def]
  rfl
theorem node8217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8217 live8217 coloured8217 = result8217 := by
  rw [tree8217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8218_agree_conditional
    (child0 : tree8216 = literal8216)
    (child1 : tree8217 = literal8217) : tree8218 = literal8218 := by
  rw [tree8218_def, child0, child1]
  rfl
theorem node8218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8216 live8216 coloured8216 = result8216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8217 live8217 coloured8217 = result8217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8218 live8218 coloured8218 = result8218 := by
  rw [tree8218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8216 coloured8216 at child
  try dsimp only [live8218, coloured8218]
  rw [child]
  dsimp only [result8216]
  have child := child1
  unfold live8217 coloured8217 at child
  try dsimp only [live8218, coloured8218]
  rw [child]
  dsimp only [result8217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8219_agree_conditional : tree8219 = literal8219 := by
  rw [tree8219_def]
  rfl
theorem node8219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8219 live8219 coloured8219 = result8219 := by
  rw [tree8219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8220_agree_conditional
    (child0 : tree8218 = literal8218)
    (child1 : tree8219 = literal8219) : tree8220 = literal8220 := by
  rw [tree8220_def, child0, child1]
  rfl
theorem node8220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8218 live8218 coloured8218 = result8218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8219 live8219 coloured8219 = result8219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8220 live8220 coloured8220 = result8220 := by
  rw [tree8220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8218 coloured8218 at child
  try dsimp only [live8220, coloured8220]
  rw [child]
  dsimp only [result8218]
  have child := child1
  unfold live8219 coloured8219 at child
  try dsimp only [live8220, coloured8220]
  rw [child]
  dsimp only [result8219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8221_agree_conditional : tree8221 = literal8221 := by
  rw [tree8221_def]
  rfl
theorem node8221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8221 live8221 coloured8221 = result8221 := by
  rw [tree8221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8222_agree_conditional
    (child0 : tree8220 = literal8220)
    (child1 : tree8221 = literal8221) : tree8222 = literal8222 := by
  rw [tree8222_def, child0, child1]
  rfl
theorem node8222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8220 live8220 coloured8220 = result8220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8221 live8221 coloured8221 = result8221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8222 live8222 coloured8222 = result8222 := by
  rw [tree8222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8220 coloured8220 at child
  try dsimp only [live8222, coloured8222]
  rw [child]
  dsimp only [result8220]
  have child := child1
  unfold live8221 coloured8221 at child
  try dsimp only [live8222, coloured8222]
  rw [child]
  dsimp only [result8221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8223_agree_conditional : tree8223 = literal8223 := by
  rw [tree8223_def]
  rfl
theorem node8223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8223 live8223 coloured8223 = result8223 := by
  rw [tree8223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8224_agree_conditional
    (child0 : tree8222 = literal8222)
    (child1 : tree8223 = literal8223) : tree8224 = literal8224 := by
  rw [tree8224_def, child0, child1]
  rfl
theorem node8224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8222 live8222 coloured8222 = result8222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8223 live8223 coloured8223 = result8223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8224 live8224 coloured8224 = result8224 := by
  rw [tree8224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8222 coloured8222 at child
  try dsimp only [live8224, coloured8224]
  rw [child]
  dsimp only [result8222]
  have child := child1
  unfold live8223 coloured8223 at child
  try dsimp only [live8224, coloured8224]
  rw [child]
  dsimp only [result8223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8225_agree_conditional : tree8225 = literal8225 := by
  rw [tree8225_def]
  rfl
theorem node8225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8225 live8225 coloured8225 = result8225 := by
  rw [tree8225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8226_agree_conditional
    (child0 : tree8224 = literal8224)
    (child1 : tree8225 = literal8225) : tree8226 = literal8226 := by
  rw [tree8226_def, child0, child1]
  rfl
theorem node8226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8224 live8224 coloured8224 = result8224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8225 live8225 coloured8225 = result8225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8226 live8226 coloured8226 = result8226 := by
  rw [tree8226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8224 coloured8224 at child
  try dsimp only [live8226, coloured8226]
  rw [child]
  dsimp only [result8224]
  have child := child1
  unfold live8225 coloured8225 at child
  try dsimp only [live8226, coloured8226]
  rw [child]
  dsimp only [result8225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8227_agree_conditional : tree8227 = literal8227 := by
  rw [tree8227_def]
  rfl
theorem node8227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8227 live8227 coloured8227 = result8227 := by
  rw [tree8227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8228_agree_conditional
    (child0 : tree8226 = literal8226)
    (child1 : tree8227 = literal8227) : tree8228 = literal8228 := by
  rw [tree8228_def, child0, child1]
  rfl
theorem node8228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8226 live8226 coloured8226 = result8226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8227 live8227 coloured8227 = result8227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8228 live8228 coloured8228 = result8228 := by
  rw [tree8228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8226 coloured8226 at child
  try dsimp only [live8228, coloured8228]
  rw [child]
  dsimp only [result8226]
  have child := child1
  unfold live8227 coloured8227 at child
  try dsimp only [live8228, coloured8228]
  rw [child]
  dsimp only [result8227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8229_agree_conditional : tree8229 = literal8229 := by
  rw [tree8229_def]
  rfl
theorem node8229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8229 live8229 coloured8229 = result8229 := by
  rw [tree8229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8230_agree_conditional
    (child0 : tree8228 = literal8228)
    (child1 : tree8229 = literal8229) : tree8230 = literal8230 := by
  rw [tree8230_def, child0, child1]
  rfl
theorem node8230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8228 live8228 coloured8228 = result8228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8229 live8229 coloured8229 = result8229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8230 live8230 coloured8230 = result8230 := by
  rw [tree8230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8228 coloured8228 at child
  try dsimp only [live8230, coloured8230]
  rw [child]
  dsimp only [result8228]
  have child := child1
  unfold live8229 coloured8229 at child
  try dsimp only [live8230, coloured8230]
  rw [child]
  dsimp only [result8229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8231_agree_conditional : tree8231 = literal8231 := by
  rw [tree8231_def]
  rfl
theorem node8231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8231 live8231 coloured8231 = result8231 := by
  rw [tree8231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8232_agree_conditional
    (child0 : tree8230 = literal8230)
    (child1 : tree8231 = literal8231) : tree8232 = literal8232 := by
  rw [tree8232_def, child0, child1]
  rfl
theorem node8232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8230 live8230 coloured8230 = result8230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8231 live8231 coloured8231 = result8231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8232 live8232 coloured8232 = result8232 := by
  rw [tree8232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8230 coloured8230 at child
  try dsimp only [live8232, coloured8232]
  rw [child]
  dsimp only [result8230]
  have child := child1
  unfold live8231 coloured8231 at child
  try dsimp only [live8232, coloured8232]
  rw [child]
  dsimp only [result8231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8233_agree_conditional : tree8233 = literal8233 := by
  rw [tree8233_def]
  rfl
theorem node8233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8233 live8233 coloured8233 = result8233 := by
  rw [tree8233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8234_agree_conditional
    (child0 : tree8232 = literal8232)
    (child1 : tree8233 = literal8233) : tree8234 = literal8234 := by
  rw [tree8234_def, child0, child1]
  rfl
theorem node8234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8232 live8232 coloured8232 = result8232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8233 live8233 coloured8233 = result8233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8234 live8234 coloured8234 = result8234 := by
  rw [tree8234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8232 coloured8232 at child
  try dsimp only [live8234, coloured8234]
  rw [child]
  dsimp only [result8232]
  have child := child1
  unfold live8233 coloured8233 at child
  try dsimp only [live8234, coloured8234]
  rw [child]
  dsimp only [result8233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8235_agree_conditional : tree8235 = literal8235 := by
  rw [tree8235_def]
  rfl
theorem node8235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8235 live8235 coloured8235 = result8235 := by
  rw [tree8235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8236_agree_conditional
    (child0 : tree8234 = literal8234)
    (child1 : tree8235 = literal8235) : tree8236 = literal8236 := by
  rw [tree8236_def, child0, child1]
  rfl
theorem node8236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8234 live8234 coloured8234 = result8234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8235 live8235 coloured8235 = result8235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8236 live8236 coloured8236 = result8236 := by
  rw [tree8236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8234 coloured8234 at child
  try dsimp only [live8236, coloured8236]
  rw [child]
  dsimp only [result8234]
  have child := child1
  unfold live8235 coloured8235 at child
  try dsimp only [live8236, coloured8236]
  rw [child]
  dsimp only [result8235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8237_agree_conditional : tree8237 = literal8237 := by
  rw [tree8237_def]
  rfl
theorem node8237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8237 live8237 coloured8237 = result8237 := by
  rw [tree8237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8238_agree_conditional
    (child0 : tree8236 = literal8236)
    (child1 : tree8237 = literal8237) : tree8238 = literal8238 := by
  rw [tree8238_def, child0, child1]
  rfl
theorem node8238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8236 live8236 coloured8236 = result8236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8237 live8237 coloured8237 = result8237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8238 live8238 coloured8238 = result8238 := by
  rw [tree8238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8236 coloured8236 at child
  try dsimp only [live8238, coloured8238]
  rw [child]
  dsimp only [result8236]
  have child := child1
  unfold live8237 coloured8237 at child
  try dsimp only [live8238, coloured8238]
  rw [child]
  dsimp only [result8237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8239_agree_conditional : tree8239 = literal8239 := by
  rw [tree8239_def]
  rfl
theorem node8239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8239 live8239 coloured8239 = result8239 := by
  rw [tree8239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8240_agree_conditional
    (child0 : tree8238 = literal8238)
    (child1 : tree8239 = literal8239) : tree8240 = literal8240 := by
  rw [tree8240_def, child0, child1]
  rfl
theorem node8240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8238 live8238 coloured8238 = result8238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8239 live8239 coloured8239 = result8239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8240 live8240 coloured8240 = result8240 := by
  rw [tree8240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8238 coloured8238 at child
  try dsimp only [live8240, coloured8240]
  rw [child]
  dsimp only [result8238]
  have child := child1
  unfold live8239 coloured8239 at child
  try dsimp only [live8240, coloured8240]
  rw [child]
  dsimp only [result8239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8241_agree_conditional : tree8241 = literal8241 := by
  rw [tree8241_def]
  rfl
theorem node8241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8241 live8241 coloured8241 = result8241 := by
  rw [tree8241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8242_agree_conditional
    (child0 : tree8240 = literal8240)
    (child1 : tree8241 = literal8241) : tree8242 = literal8242 := by
  rw [tree8242_def, child0, child1]
  rfl
theorem node8242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8240 live8240 coloured8240 = result8240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8241 live8241 coloured8241 = result8241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8242 live8242 coloured8242 = result8242 := by
  rw [tree8242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8240 coloured8240 at child
  try dsimp only [live8242, coloured8242]
  rw [child]
  dsimp only [result8240]
  have child := child1
  unfold live8241 coloured8241 at child
  try dsimp only [live8242, coloured8242]
  rw [child]
  dsimp only [result8241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8243_agree_conditional : tree8243 = literal8243 := by
  rw [tree8243_def]
  rfl
theorem node8243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8243 live8243 coloured8243 = result8243 := by
  rw [tree8243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8244_agree_conditional
    (child0 : tree8242 = literal8242)
    (child1 : tree8243 = literal8243) : tree8244 = literal8244 := by
  rw [tree8244_def, child0, child1]
  rfl
theorem node8244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8242 live8242 coloured8242 = result8242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8243 live8243 coloured8243 = result8243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8244 live8244 coloured8244 = result8244 := by
  rw [tree8244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8242 coloured8242 at child
  try dsimp only [live8244, coloured8244]
  rw [child]
  dsimp only [result8242]
  have child := child1
  unfold live8243 coloured8243 at child
  try dsimp only [live8244, coloured8244]
  rw [child]
  dsimp only [result8243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8245_agree_conditional : tree8245 = literal8245 := by
  rw [tree8245_def]
  rfl
theorem node8245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8245 live8245 coloured8245 = result8245 := by
  rw [tree8245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8246_agree_conditional
    (child0 : tree8244 = literal8244)
    (child1 : tree8245 = literal8245) : tree8246 = literal8246 := by
  rw [tree8246_def, child0, child1]
  rfl
theorem node8246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8244 live8244 coloured8244 = result8244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8245 live8245 coloured8245 = result8245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8246 live8246 coloured8246 = result8246 := by
  rw [tree8246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8244 coloured8244 at child
  try dsimp only [live8246, coloured8246]
  rw [child]
  dsimp only [result8244]
  have child := child1
  unfold live8245 coloured8245 at child
  try dsimp only [live8246, coloured8246]
  rw [child]
  dsimp only [result8245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8247_agree_conditional : tree8247 = literal8247 := by
  rw [tree8247_def]
  rfl
theorem node8247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8247 live8247 coloured8247 = result8247 := by
  rw [tree8247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8248_agree_conditional
    (child0 : tree8246 = literal8246)
    (child1 : tree8247 = literal8247) : tree8248 = literal8248 := by
  rw [tree8248_def, child0, child1]
  rfl
theorem node8248_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8246 live8246 coloured8246 = result8246)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8247 live8247 coloured8247 = result8247) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8248 live8248 coloured8248 = result8248 := by
  rw [tree8248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8246 coloured8246 at child
  try dsimp only [live8248, coloured8248]
  rw [child]
  dsimp only [result8246]
  have child := child1
  unfold live8247 coloured8247 at child
  try dsimp only [live8248, coloured8248]
  rw [child]
  dsimp only [result8247]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8249_agree_conditional : tree8249 = literal8249 := by
  rw [tree8249_def]
  rfl
theorem node8249_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8249 live8249 coloured8249 = result8249 := by
  rw [tree8249_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8250_agree_conditional
    (child0 : tree8248 = literal8248)
    (child1 : tree8249 = literal8249) : tree8250 = literal8250 := by
  rw [tree8250_def, child0, child1]
  rfl
theorem node8250_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8248 live8248 coloured8248 = result8248)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8249 live8249 coloured8249 = result8249) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8250 live8250 coloured8250 = result8250 := by
  rw [tree8250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8248 coloured8248 at child
  try dsimp only [live8250, coloured8250]
  rw [child]
  dsimp only [result8248]
  have child := child1
  unfold live8249 coloured8249 at child
  try dsimp only [live8250, coloured8250]
  rw [child]
  dsimp only [result8249]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8251_agree_conditional : tree8251 = literal8251 := by
  rw [tree8251_def]
  rfl
theorem node8251_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8251 live8251 coloured8251 = result8251 := by
  rw [tree8251_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8252_agree_conditional
    (child0 : tree8250 = literal8250)
    (child1 : tree8251 = literal8251) : tree8252 = literal8252 := by
  rw [tree8252_def, child0, child1]
  rfl
theorem node8252_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8250 live8250 coloured8250 = result8250)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8251 live8251 coloured8251 = result8251) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8252 live8252 coloured8252 = result8252 := by
  rw [tree8252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8250 coloured8250 at child
  try dsimp only [live8252, coloured8252]
  rw [child]
  dsimp only [result8250]
  have child := child1
  unfold live8251 coloured8251 at child
  try dsimp only [live8252, coloured8252]
  rw [child]
  dsimp only [result8251]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8253_agree_conditional : tree8253 = literal8253 := by
  rw [tree8253_def]
  rfl
theorem node8253_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8253 live8253 coloured8253 = result8253 := by
  rw [tree8253_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8254_agree_conditional
    (child0 : tree8252 = literal8252)
    (child1 : tree8253 = literal8253) : tree8254 = literal8254 := by
  rw [tree8254_def, child0, child1]
  rfl
theorem node8254_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8252 live8252 coloured8252 = result8252)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8253 live8253 coloured8253 = result8253) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8254 live8254 coloured8254 = result8254 := by
  rw [tree8254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8252 coloured8252 at child
  try dsimp only [live8254, coloured8254]
  rw [child]
  dsimp only [result8252]
  have child := child1
  unfold live8253 coloured8253 at child
  try dsimp only [live8254, coloured8254]
  rw [child]
  dsimp only [result8253]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8255_agree_conditional : tree8255 = literal8255 := by
  rw [tree8255_def]
  rfl
theorem node8255_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8255 live8255 coloured8255 = result8255 := by
  rw [tree8255_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
