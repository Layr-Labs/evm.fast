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
theorem tree6144_agree_conditional
    (child0 : tree6142 = literal6142)
    (child1 : tree6143 = literal6143) : tree6144 = literal6144 := by
  rw [tree6144_def, child0, child1]
  rfl
theorem node6144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6142 live6142 coloured6142 = result6142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6143 live6143 coloured6143 = result6143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6144 live6144 coloured6144 = result6144 := by
  rw [tree6144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6142 coloured6142 at child
  try dsimp only [live6144, coloured6144]
  rw [child]
  dsimp only [result6142]
  have child := child1
  unfold live6143 coloured6143 at child
  try dsimp only [live6144, coloured6144]
  rw [child]
  dsimp only [result6143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6145_agree_conditional : tree6145 = literal6145 := by
  rw [tree6145_def]
  rfl
theorem node6145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6145 live6145 coloured6145 = result6145 := by
  rw [tree6145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6146_agree_conditional
    (child0 : tree6144 = literal6144)
    (child1 : tree6145 = literal6145) : tree6146 = literal6146 := by
  rw [tree6146_def, child0, child1]
  rfl
theorem node6146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6144 live6144 coloured6144 = result6144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6145 live6145 coloured6145 = result6145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6146 live6146 coloured6146 = result6146 := by
  rw [tree6146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6144 coloured6144 at child
  try dsimp only [live6146, coloured6146]
  rw [child]
  dsimp only [result6144]
  have child := child1
  unfold live6145 coloured6145 at child
  try dsimp only [live6146, coloured6146]
  rw [child]
  dsimp only [result6145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6147_agree_conditional : tree6147 = literal6147 := by
  rw [tree6147_def]
  rfl
theorem node6147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6147 live6147 coloured6147 = result6147 := by
  rw [tree6147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6148_agree_conditional
    (child0 : tree6146 = literal6146)
    (child1 : tree6147 = literal6147) : tree6148 = literal6148 := by
  rw [tree6148_def, child0, child1]
  rfl
theorem node6148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6146 live6146 coloured6146 = result6146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6147 live6147 coloured6147 = result6147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6148 live6148 coloured6148 = result6148 := by
  rw [tree6148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6146 coloured6146 at child
  try dsimp only [live6148, coloured6148]
  rw [child]
  dsimp only [result6146]
  have child := child1
  unfold live6147 coloured6147 at child
  try dsimp only [live6148, coloured6148]
  rw [child]
  dsimp only [result6147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6149_agree_conditional : tree6149 = literal6149 := by
  rw [tree6149_def]
  rfl
theorem node6149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6149 live6149 coloured6149 = result6149 := by
  rw [tree6149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6150_agree_conditional
    (child0 : tree6148 = literal6148)
    (child1 : tree6149 = literal6149) : tree6150 = literal6150 := by
  rw [tree6150_def, child0, child1]
  rfl
theorem node6150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6148 live6148 coloured6148 = result6148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6149 live6149 coloured6149 = result6149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6150 live6150 coloured6150 = result6150 := by
  rw [tree6150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6148 coloured6148 at child
  try dsimp only [live6150, coloured6150]
  rw [child]
  dsimp only [result6148]
  have child := child1
  unfold live6149 coloured6149 at child
  try dsimp only [live6150, coloured6150]
  rw [child]
  dsimp only [result6149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6151_agree_conditional : tree6151 = literal6151 := by
  rw [tree6151_def]
  rfl
theorem node6151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6151 live6151 coloured6151 = result6151 := by
  rw [tree6151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6152_agree_conditional
    (child0 : tree6150 = literal6150)
    (child1 : tree6151 = literal6151) : tree6152 = literal6152 := by
  rw [tree6152_def, child0, child1]
  rfl
theorem node6152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6150 live6150 coloured6150 = result6150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6151 live6151 coloured6151 = result6151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6152 live6152 coloured6152 = result6152 := by
  rw [tree6152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6150 coloured6150 at child
  try dsimp only [live6152, coloured6152]
  rw [child]
  dsimp only [result6150]
  have child := child1
  unfold live6151 coloured6151 at child
  try dsimp only [live6152, coloured6152]
  rw [child]
  dsimp only [result6151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6153_agree_conditional : tree6153 = literal6153 := by
  rw [tree6153_def]
  rfl
theorem node6153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6153 live6153 coloured6153 = result6153 := by
  rw [tree6153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6154_agree_conditional
    (child0 : tree6152 = literal6152)
    (child1 : tree6153 = literal6153) : tree6154 = literal6154 := by
  rw [tree6154_def, child0, child1]
  rfl
theorem node6154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6152 live6152 coloured6152 = result6152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6153 live6153 coloured6153 = result6153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6154 live6154 coloured6154 = result6154 := by
  rw [tree6154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6152 coloured6152 at child
  try dsimp only [live6154, coloured6154]
  rw [child]
  dsimp only [result6152]
  have child := child1
  unfold live6153 coloured6153 at child
  try dsimp only [live6154, coloured6154]
  rw [child]
  dsimp only [result6153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6155_agree_conditional : tree6155 = literal6155 := by
  rw [tree6155_def]
  rfl
theorem node6155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6155 live6155 coloured6155 = result6155 := by
  rw [tree6155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6156_agree_conditional
    (child0 : tree6154 = literal6154)
    (child1 : tree6155 = literal6155) : tree6156 = literal6156 := by
  rw [tree6156_def, child0, child1]
  rfl
theorem node6156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6154 live6154 coloured6154 = result6154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6155 live6155 coloured6155 = result6155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6156 live6156 coloured6156 = result6156 := by
  rw [tree6156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6154 coloured6154 at child
  try dsimp only [live6156, coloured6156]
  rw [child]
  dsimp only [result6154]
  have child := child1
  unfold live6155 coloured6155 at child
  try dsimp only [live6156, coloured6156]
  rw [child]
  dsimp only [result6155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6157_agree_conditional : tree6157 = literal6157 := by
  rw [tree6157_def]
  rfl
theorem node6157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6157 live6157 coloured6157 = result6157 := by
  rw [tree6157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6158_agree_conditional
    (child0 : tree6156 = literal6156)
    (child1 : tree6157 = literal6157) : tree6158 = literal6158 := by
  rw [tree6158_def, child0, child1]
  rfl
theorem node6158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6156 live6156 coloured6156 = result6156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6157 live6157 coloured6157 = result6157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6158 live6158 coloured6158 = result6158 := by
  rw [tree6158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6156 coloured6156 at child
  try dsimp only [live6158, coloured6158]
  rw [child]
  dsimp only [result6156]
  have child := child1
  unfold live6157 coloured6157 at child
  try dsimp only [live6158, coloured6158]
  rw [child]
  dsimp only [result6157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6159_agree_conditional : tree6159 = literal6159 := by
  rw [tree6159_def]
  rfl
theorem node6159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6159 live6159 coloured6159 = result6159 := by
  rw [tree6159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6160_agree_conditional
    (child0 : tree6158 = literal6158)
    (child1 : tree6159 = literal6159) : tree6160 = literal6160 := by
  rw [tree6160_def, child0, child1]
  rfl
theorem node6160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6158 live6158 coloured6158 = result6158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6159 live6159 coloured6159 = result6159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6160 live6160 coloured6160 = result6160 := by
  rw [tree6160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6158 coloured6158 at child
  try dsimp only [live6160, coloured6160]
  rw [child]
  dsimp only [result6158]
  have child := child1
  unfold live6159 coloured6159 at child
  try dsimp only [live6160, coloured6160]
  rw [child]
  dsimp only [result6159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6161_agree_conditional : tree6161 = literal6161 := by
  rw [tree6161_def]
  rfl
theorem node6161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6161 live6161 coloured6161 = result6161 := by
  rw [tree6161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6162_agree_conditional
    (child0 : tree6160 = literal6160)
    (child1 : tree6161 = literal6161) : tree6162 = literal6162 := by
  rw [tree6162_def, child0, child1]
  rfl
theorem node6162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6160 live6160 coloured6160 = result6160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6161 live6161 coloured6161 = result6161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6162 live6162 coloured6162 = result6162 := by
  rw [tree6162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6160 coloured6160 at child
  try dsimp only [live6162, coloured6162]
  rw [child]
  dsimp only [result6160]
  have child := child1
  unfold live6161 coloured6161 at child
  try dsimp only [live6162, coloured6162]
  rw [child]
  dsimp only [result6161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6163_agree_conditional : tree6163 = literal6163 := by
  rw [tree6163_def]
  rfl
theorem node6163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6163 live6163 coloured6163 = result6163 := by
  rw [tree6163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6164_agree_conditional
    (child0 : tree6162 = literal6162)
    (child1 : tree6163 = literal6163) : tree6164 = literal6164 := by
  rw [tree6164_def, child0, child1]
  rfl
theorem node6164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6162 live6162 coloured6162 = result6162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6163 live6163 coloured6163 = result6163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6164 live6164 coloured6164 = result6164 := by
  rw [tree6164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6162 coloured6162 at child
  try dsimp only [live6164, coloured6164]
  rw [child]
  dsimp only [result6162]
  have child := child1
  unfold live6163 coloured6163 at child
  try dsimp only [live6164, coloured6164]
  rw [child]
  dsimp only [result6163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6165_agree_conditional : tree6165 = literal6165 := by
  rw [tree6165_def]
  rfl
theorem node6165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6165 live6165 coloured6165 = result6165 := by
  rw [tree6165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6166_agree_conditional
    (child0 : tree6164 = literal6164)
    (child1 : tree6165 = literal6165) : tree6166 = literal6166 := by
  rw [tree6166_def, child0, child1]
  rfl
theorem node6166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6164 live6164 coloured6164 = result6164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6165 live6165 coloured6165 = result6165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6166 live6166 coloured6166 = result6166 := by
  rw [tree6166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6164 coloured6164 at child
  try dsimp only [live6166, coloured6166]
  rw [child]
  dsimp only [result6164]
  have child := child1
  unfold live6165 coloured6165 at child
  try dsimp only [live6166, coloured6166]
  rw [child]
  dsimp only [result6165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6167_agree_conditional : tree6167 = literal6167 := by
  rw [tree6167_def]
  rfl
theorem node6167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6167 live6167 coloured6167 = result6167 := by
  rw [tree6167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6168_agree_conditional
    (child0 : tree6166 = literal6166)
    (child1 : tree6167 = literal6167) : tree6168 = literal6168 := by
  rw [tree6168_def, child0, child1]
  rfl
theorem node6168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6166 live6166 coloured6166 = result6166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6167 live6167 coloured6167 = result6167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6168 live6168 coloured6168 = result6168 := by
  rw [tree6168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6166 coloured6166 at child
  try dsimp only [live6168, coloured6168]
  rw [child]
  dsimp only [result6166]
  have child := child1
  unfold live6167 coloured6167 at child
  try dsimp only [live6168, coloured6168]
  rw [child]
  dsimp only [result6167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6169_agree_conditional : tree6169 = literal6169 := by
  rw [tree6169_def]
  rfl
theorem node6169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6169 live6169 coloured6169 = result6169 := by
  rw [tree6169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6170_agree_conditional
    (child0 : tree6168 = literal6168)
    (child1 : tree6169 = literal6169) : tree6170 = literal6170 := by
  rw [tree6170_def, child0, child1]
  rfl
theorem node6170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6168 live6168 coloured6168 = result6168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6169 live6169 coloured6169 = result6169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6170 live6170 coloured6170 = result6170 := by
  rw [tree6170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6168 coloured6168 at child
  try dsimp only [live6170, coloured6170]
  rw [child]
  dsimp only [result6168]
  have child := child1
  unfold live6169 coloured6169 at child
  try dsimp only [live6170, coloured6170]
  rw [child]
  dsimp only [result6169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6171_agree_conditional : tree6171 = literal6171 := by
  rw [tree6171_def]
  rfl
theorem node6171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6171 live6171 coloured6171 = result6171 := by
  rw [tree6171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6172_agree_conditional
    (child0 : tree6170 = literal6170)
    (child1 : tree6171 = literal6171) : tree6172 = literal6172 := by
  rw [tree6172_def, child0, child1]
  rfl
theorem node6172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6170 live6170 coloured6170 = result6170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6171 live6171 coloured6171 = result6171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6172 live6172 coloured6172 = result6172 := by
  rw [tree6172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6170 coloured6170 at child
  try dsimp only [live6172, coloured6172]
  rw [child]
  dsimp only [result6170]
  have child := child1
  unfold live6171 coloured6171 at child
  try dsimp only [live6172, coloured6172]
  rw [child]
  dsimp only [result6171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6173_agree_conditional : tree6173 = literal6173 := by
  rw [tree6173_def]
  rfl
theorem node6173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6173 live6173 coloured6173 = result6173 := by
  rw [tree6173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6174_agree_conditional
    (child0 : tree6172 = literal6172)
    (child1 : tree6173 = literal6173) : tree6174 = literal6174 := by
  rw [tree6174_def, child0, child1]
  rfl
theorem node6174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6172 live6172 coloured6172 = result6172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6173 live6173 coloured6173 = result6173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6174 live6174 coloured6174 = result6174 := by
  rw [tree6174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6172 coloured6172 at child
  try dsimp only [live6174, coloured6174]
  rw [child]
  dsimp only [result6172]
  have child := child1
  unfold live6173 coloured6173 at child
  try dsimp only [live6174, coloured6174]
  rw [child]
  dsimp only [result6173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6175_agree_conditional : tree6175 = literal6175 := by
  rw [tree6175_def]
  rfl
theorem node6175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6175 live6175 coloured6175 = result6175 := by
  rw [tree6175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6176_agree_conditional
    (child0 : tree6174 = literal6174)
    (child1 : tree6175 = literal6175) : tree6176 = literal6176 := by
  rw [tree6176_def, child0, child1]
  rfl
theorem node6176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6174 live6174 coloured6174 = result6174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6175 live6175 coloured6175 = result6175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6176 live6176 coloured6176 = result6176 := by
  rw [tree6176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6174 coloured6174 at child
  try dsimp only [live6176, coloured6176]
  rw [child]
  dsimp only [result6174]
  have child := child1
  unfold live6175 coloured6175 at child
  try dsimp only [live6176, coloured6176]
  rw [child]
  dsimp only [result6175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6177_agree_conditional : tree6177 = literal6177 := by
  rw [tree6177_def]
  rfl
theorem node6177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6177 live6177 coloured6177 = result6177 := by
  rw [tree6177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6178_agree_conditional
    (child0 : tree6176 = literal6176)
    (child1 : tree6177 = literal6177) : tree6178 = literal6178 := by
  rw [tree6178_def, child0, child1]
  rfl
theorem node6178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6176 live6176 coloured6176 = result6176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6177 live6177 coloured6177 = result6177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6178 live6178 coloured6178 = result6178 := by
  rw [tree6178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6176 coloured6176 at child
  try dsimp only [live6178, coloured6178]
  rw [child]
  dsimp only [result6176]
  have child := child1
  unfold live6177 coloured6177 at child
  try dsimp only [live6178, coloured6178]
  rw [child]
  dsimp only [result6177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6179_agree_conditional : tree6179 = literal6179 := by
  rw [tree6179_def]
  rfl
theorem node6179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6179 live6179 coloured6179 = result6179 := by
  rw [tree6179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6180_agree_conditional
    (child0 : tree6178 = literal6178)
    (child1 : tree6179 = literal6179) : tree6180 = literal6180 := by
  rw [tree6180_def, child0, child1]
  rfl
theorem node6180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6178 live6178 coloured6178 = result6178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6179 live6179 coloured6179 = result6179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6180 live6180 coloured6180 = result6180 := by
  rw [tree6180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6178 coloured6178 at child
  try dsimp only [live6180, coloured6180]
  rw [child]
  dsimp only [result6178]
  have child := child1
  unfold live6179 coloured6179 at child
  try dsimp only [live6180, coloured6180]
  rw [child]
  dsimp only [result6179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6181_agree_conditional : tree6181 = literal6181 := by
  rw [tree6181_def]
  rfl
theorem node6181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6181 live6181 coloured6181 = result6181 := by
  rw [tree6181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6182_agree_conditional
    (child0 : tree6180 = literal6180)
    (child1 : tree6181 = literal6181) : tree6182 = literal6182 := by
  rw [tree6182_def, child0, child1]
  rfl
theorem node6182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6180 live6180 coloured6180 = result6180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6181 live6181 coloured6181 = result6181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6182 live6182 coloured6182 = result6182 := by
  rw [tree6182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6180 coloured6180 at child
  try dsimp only [live6182, coloured6182]
  rw [child]
  dsimp only [result6180]
  have child := child1
  unfold live6181 coloured6181 at child
  try dsimp only [live6182, coloured6182]
  rw [child]
  dsimp only [result6181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6183_agree_conditional : tree6183 = literal6183 := by
  rw [tree6183_def]
  rfl
theorem node6183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6183 live6183 coloured6183 = result6183 := by
  rw [tree6183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6184_agree_conditional
    (child0 : tree6182 = literal6182)
    (child1 : tree6183 = literal6183) : tree6184 = literal6184 := by
  rw [tree6184_def, child0, child1]
  rfl
theorem node6184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6182 live6182 coloured6182 = result6182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6183 live6183 coloured6183 = result6183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6184 live6184 coloured6184 = result6184 := by
  rw [tree6184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6182 coloured6182 at child
  try dsimp only [live6184, coloured6184]
  rw [child]
  dsimp only [result6182]
  have child := child1
  unfold live6183 coloured6183 at child
  try dsimp only [live6184, coloured6184]
  rw [child]
  dsimp only [result6183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6185_agree_conditional : tree6185 = literal6185 := by
  rw [tree6185_def]
  rfl
theorem node6185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6185 live6185 coloured6185 = result6185 := by
  rw [tree6185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6186_agree_conditional
    (child0 : tree6184 = literal6184)
    (child1 : tree6185 = literal6185) : tree6186 = literal6186 := by
  rw [tree6186_def, child0, child1]
  rfl
theorem node6186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6184 live6184 coloured6184 = result6184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6185 live6185 coloured6185 = result6185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6186 live6186 coloured6186 = result6186 := by
  rw [tree6186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6184 coloured6184 at child
  try dsimp only [live6186, coloured6186]
  rw [child]
  dsimp only [result6184]
  have child := child1
  unfold live6185 coloured6185 at child
  try dsimp only [live6186, coloured6186]
  rw [child]
  dsimp only [result6185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6187_agree_conditional : tree6187 = literal6187 := by
  rw [tree6187_def]
  rfl
theorem node6187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6187 live6187 coloured6187 = result6187 := by
  rw [tree6187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6188_agree_conditional
    (child0 : tree6186 = literal6186)
    (child1 : tree6187 = literal6187) : tree6188 = literal6188 := by
  rw [tree6188_def, child0, child1]
  rfl
theorem node6188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6186 live6186 coloured6186 = result6186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6187 live6187 coloured6187 = result6187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6188 live6188 coloured6188 = result6188 := by
  rw [tree6188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6186 coloured6186 at child
  try dsimp only [live6188, coloured6188]
  rw [child]
  dsimp only [result6186]
  have child := child1
  unfold live6187 coloured6187 at child
  try dsimp only [live6188, coloured6188]
  rw [child]
  dsimp only [result6187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6189_agree_conditional : tree6189 = literal6189 := by
  rw [tree6189_def]
  rfl
theorem node6189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6189 live6189 coloured6189 = result6189 := by
  rw [tree6189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6190_agree_conditional
    (child0 : tree6188 = literal6188)
    (child1 : tree6189 = literal6189) : tree6190 = literal6190 := by
  rw [tree6190_def, child0, child1]
  rfl
theorem node6190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6188 live6188 coloured6188 = result6188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6189 live6189 coloured6189 = result6189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6190 live6190 coloured6190 = result6190 := by
  rw [tree6190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6188 coloured6188 at child
  try dsimp only [live6190, coloured6190]
  rw [child]
  dsimp only [result6188]
  have child := child1
  unfold live6189 coloured6189 at child
  try dsimp only [live6190, coloured6190]
  rw [child]
  dsimp only [result6189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6191_agree_conditional : tree6191 = literal6191 := by
  rw [tree6191_def]
  rfl
theorem node6191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6191 live6191 coloured6191 = result6191 := by
  rw [tree6191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6192_agree_conditional
    (child0 : tree6190 = literal6190)
    (child1 : tree6191 = literal6191) : tree6192 = literal6192 := by
  rw [tree6192_def, child0, child1]
  rfl
theorem node6192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6190 live6190 coloured6190 = result6190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6191 live6191 coloured6191 = result6191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6192 live6192 coloured6192 = result6192 := by
  rw [tree6192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6190 coloured6190 at child
  try dsimp only [live6192, coloured6192]
  rw [child]
  dsimp only [result6190]
  have child := child1
  unfold live6191 coloured6191 at child
  try dsimp only [live6192, coloured6192]
  rw [child]
  dsimp only [result6191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6193_agree_conditional : tree6193 = literal6193 := by
  rw [tree6193_def]
  rfl
theorem node6193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6193 live6193 coloured6193 = result6193 := by
  rw [tree6193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6194_agree_conditional
    (child0 : tree6192 = literal6192)
    (child1 : tree6193 = literal6193) : tree6194 = literal6194 := by
  rw [tree6194_def, child0, child1]
  rfl
theorem node6194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6192 live6192 coloured6192 = result6192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6193 live6193 coloured6193 = result6193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6194 live6194 coloured6194 = result6194 := by
  rw [tree6194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6192 coloured6192 at child
  try dsimp only [live6194, coloured6194]
  rw [child]
  dsimp only [result6192]
  have child := child1
  unfold live6193 coloured6193 at child
  try dsimp only [live6194, coloured6194]
  rw [child]
  dsimp only [result6193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6195_agree_conditional : tree6195 = literal6195 := by
  rw [tree6195_def]
  rfl
theorem node6195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6195 live6195 coloured6195 = result6195 := by
  rw [tree6195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6196_agree_conditional
    (child0 : tree6194 = literal6194)
    (child1 : tree6195 = literal6195) : tree6196 = literal6196 := by
  rw [tree6196_def, child0, child1]
  rfl
theorem node6196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6194 live6194 coloured6194 = result6194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6195 live6195 coloured6195 = result6195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6196 live6196 coloured6196 = result6196 := by
  rw [tree6196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6194 coloured6194 at child
  try dsimp only [live6196, coloured6196]
  rw [child]
  dsimp only [result6194]
  have child := child1
  unfold live6195 coloured6195 at child
  try dsimp only [live6196, coloured6196]
  rw [child]
  dsimp only [result6195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6197_agree_conditional : tree6197 = literal6197 := by
  rw [tree6197_def]
  rfl
theorem node6197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6197 live6197 coloured6197 = result6197 := by
  rw [tree6197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6198_agree_conditional
    (child0 : tree6196 = literal6196)
    (child1 : tree6197 = literal6197) : tree6198 = literal6198 := by
  rw [tree6198_def, child0, child1]
  rfl
theorem node6198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6196 live6196 coloured6196 = result6196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6197 live6197 coloured6197 = result6197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6198 live6198 coloured6198 = result6198 := by
  rw [tree6198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6196 coloured6196 at child
  try dsimp only [live6198, coloured6198]
  rw [child]
  dsimp only [result6196]
  have child := child1
  unfold live6197 coloured6197 at child
  try dsimp only [live6198, coloured6198]
  rw [child]
  dsimp only [result6197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6199_agree_conditional : tree6199 = literal6199 := by
  rw [tree6199_def]
  rfl
theorem node6199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6199 live6199 coloured6199 = result6199 := by
  rw [tree6199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6200_agree_conditional
    (child0 : tree6198 = literal6198)
    (child1 : tree6199 = literal6199) : tree6200 = literal6200 := by
  rw [tree6200_def, child0, child1]
  rfl
theorem node6200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6198 live6198 coloured6198 = result6198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6199 live6199 coloured6199 = result6199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6200 live6200 coloured6200 = result6200 := by
  rw [tree6200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6198 coloured6198 at child
  try dsimp only [live6200, coloured6200]
  rw [child]
  dsimp only [result6198]
  have child := child1
  unfold live6199 coloured6199 at child
  try dsimp only [live6200, coloured6200]
  rw [child]
  dsimp only [result6199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6201_agree_conditional : tree6201 = literal6201 := by
  rw [tree6201_def]
  rfl
theorem node6201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6201 live6201 coloured6201 = result6201 := by
  rw [tree6201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6202_agree_conditional
    (child0 : tree6200 = literal6200)
    (child1 : tree6201 = literal6201) : tree6202 = literal6202 := by
  rw [tree6202_def, child0, child1]
  rfl
theorem node6202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6200 live6200 coloured6200 = result6200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6201 live6201 coloured6201 = result6201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6202 live6202 coloured6202 = result6202 := by
  rw [tree6202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6200 coloured6200 at child
  try dsimp only [live6202, coloured6202]
  rw [child]
  dsimp only [result6200]
  have child := child1
  unfold live6201 coloured6201 at child
  try dsimp only [live6202, coloured6202]
  rw [child]
  dsimp only [result6201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6203_agree_conditional : tree6203 = literal6203 := by
  rw [tree6203_def]
  rfl
theorem node6203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6203 live6203 coloured6203 = result6203 := by
  rw [tree6203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6204_agree_conditional
    (child0 : tree6202 = literal6202)
    (child1 : tree6203 = literal6203) : tree6204 = literal6204 := by
  rw [tree6204_def, child0, child1]
  rfl
theorem node6204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6202 live6202 coloured6202 = result6202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6203 live6203 coloured6203 = result6203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6204 live6204 coloured6204 = result6204 := by
  rw [tree6204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6202 coloured6202 at child
  try dsimp only [live6204, coloured6204]
  rw [child]
  dsimp only [result6202]
  have child := child1
  unfold live6203 coloured6203 at child
  try dsimp only [live6204, coloured6204]
  rw [child]
  dsimp only [result6203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6205_agree_conditional : tree6205 = literal6205 := by
  rw [tree6205_def]
  rfl
theorem node6205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6205 live6205 coloured6205 = result6205 := by
  rw [tree6205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6206_agree_conditional
    (child0 : tree6204 = literal6204)
    (child1 : tree6205 = literal6205) : tree6206 = literal6206 := by
  rw [tree6206_def, child0, child1]
  rfl
theorem node6206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6204 live6204 coloured6204 = result6204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6205 live6205 coloured6205 = result6205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6206 live6206 coloured6206 = result6206 := by
  rw [tree6206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6204 coloured6204 at child
  try dsimp only [live6206, coloured6206]
  rw [child]
  dsimp only [result6204]
  have child := child1
  unfold live6205 coloured6205 at child
  try dsimp only [live6206, coloured6206]
  rw [child]
  dsimp only [result6205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6207_agree_conditional : tree6207 = literal6207 := by
  rw [tree6207_def]
  rfl
theorem node6207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6207 live6207 coloured6207 = result6207 := by
  rw [tree6207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6208_agree_conditional
    (child0 : tree6206 = literal6206)
    (child1 : tree6207 = literal6207) : tree6208 = literal6208 := by
  rw [tree6208_def, child0, child1]
  rfl
theorem node6208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6206 live6206 coloured6206 = result6206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6207 live6207 coloured6207 = result6207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6208 live6208 coloured6208 = result6208 := by
  rw [tree6208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6206 coloured6206 at child
  try dsimp only [live6208, coloured6208]
  rw [child]
  dsimp only [result6206]
  have child := child1
  unfold live6207 coloured6207 at child
  try dsimp only [live6208, coloured6208]
  rw [child]
  dsimp only [result6207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6209_agree_conditional : tree6209 = literal6209 := by
  rw [tree6209_def]
  rfl
theorem node6209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6209 live6209 coloured6209 = result6209 := by
  rw [tree6209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6210_agree_conditional
    (child0 : tree6208 = literal6208)
    (child1 : tree6209 = literal6209) : tree6210 = literal6210 := by
  rw [tree6210_def, child0, child1]
  rfl
theorem node6210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6208 live6208 coloured6208 = result6208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6209 live6209 coloured6209 = result6209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6210 live6210 coloured6210 = result6210 := by
  rw [tree6210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6208 coloured6208 at child
  try dsimp only [live6210, coloured6210]
  rw [child]
  dsimp only [result6208]
  have child := child1
  unfold live6209 coloured6209 at child
  try dsimp only [live6210, coloured6210]
  rw [child]
  dsimp only [result6209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6211_agree_conditional : tree6211 = literal6211 := by
  rw [tree6211_def]
  rfl
theorem node6211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6211 live6211 coloured6211 = result6211 := by
  rw [tree6211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6212_agree_conditional
    (child0 : tree6210 = literal6210)
    (child1 : tree6211 = literal6211) : tree6212 = literal6212 := by
  rw [tree6212_def, child0, child1]
  rfl
theorem node6212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6210 live6210 coloured6210 = result6210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6211 live6211 coloured6211 = result6211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6212 live6212 coloured6212 = result6212 := by
  rw [tree6212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6210 coloured6210 at child
  try dsimp only [live6212, coloured6212]
  rw [child]
  dsimp only [result6210]
  have child := child1
  unfold live6211 coloured6211 at child
  try dsimp only [live6212, coloured6212]
  rw [child]
  dsimp only [result6211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6213_agree_conditional : tree6213 = literal6213 := by
  rw [tree6213_def]
  rfl
theorem node6213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6213 live6213 coloured6213 = result6213 := by
  rw [tree6213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6214_agree_conditional
    (child0 : tree6212 = literal6212)
    (child1 : tree6213 = literal6213) : tree6214 = literal6214 := by
  rw [tree6214_def, child0, child1]
  rfl
theorem node6214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6212 live6212 coloured6212 = result6212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6213 live6213 coloured6213 = result6213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6214 live6214 coloured6214 = result6214 := by
  rw [tree6214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6212 coloured6212 at child
  try dsimp only [live6214, coloured6214]
  rw [child]
  dsimp only [result6212]
  have child := child1
  unfold live6213 coloured6213 at child
  try dsimp only [live6214, coloured6214]
  rw [child]
  dsimp only [result6213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6215_agree_conditional : tree6215 = literal6215 := by
  rw [tree6215_def]
  rfl
theorem node6215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6215 live6215 coloured6215 = result6215 := by
  rw [tree6215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6216_agree_conditional
    (child0 : tree6214 = literal6214)
    (child1 : tree6215 = literal6215) : tree6216 = literal6216 := by
  rw [tree6216_def, child0, child1]
  rfl
theorem node6216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6214 live6214 coloured6214 = result6214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6215 live6215 coloured6215 = result6215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6216 live6216 coloured6216 = result6216 := by
  rw [tree6216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6214 coloured6214 at child
  try dsimp only [live6216, coloured6216]
  rw [child]
  dsimp only [result6214]
  have child := child1
  unfold live6215 coloured6215 at child
  try dsimp only [live6216, coloured6216]
  rw [child]
  dsimp only [result6215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6217_agree_conditional : tree6217 = literal6217 := by
  rw [tree6217_def]
  rfl
theorem node6217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6217 live6217 coloured6217 = result6217 := by
  rw [tree6217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6218_agree_conditional
    (child0 : tree6216 = literal6216)
    (child1 : tree6217 = literal6217) : tree6218 = literal6218 := by
  rw [tree6218_def, child0, child1]
  rfl
theorem node6218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6216 live6216 coloured6216 = result6216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6217 live6217 coloured6217 = result6217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6218 live6218 coloured6218 = result6218 := by
  rw [tree6218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6216 coloured6216 at child
  try dsimp only [live6218, coloured6218]
  rw [child]
  dsimp only [result6216]
  have child := child1
  unfold live6217 coloured6217 at child
  try dsimp only [live6218, coloured6218]
  rw [child]
  dsimp only [result6217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6219_agree_conditional : tree6219 = literal6219 := by
  rw [tree6219_def]
  rfl
theorem node6219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6219 live6219 coloured6219 = result6219 := by
  rw [tree6219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6220_agree_conditional
    (child0 : tree6218 = literal6218)
    (child1 : tree6219 = literal6219) : tree6220 = literal6220 := by
  rw [tree6220_def, child0, child1]
  rfl
theorem node6220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6218 live6218 coloured6218 = result6218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6219 live6219 coloured6219 = result6219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6220 live6220 coloured6220 = result6220 := by
  rw [tree6220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6218 coloured6218 at child
  try dsimp only [live6220, coloured6220]
  rw [child]
  dsimp only [result6218]
  have child := child1
  unfold live6219 coloured6219 at child
  try dsimp only [live6220, coloured6220]
  rw [child]
  dsimp only [result6219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6221_agree_conditional : tree6221 = literal6221 := by
  rw [tree6221_def]
  rfl
theorem node6221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6221 live6221 coloured6221 = result6221 := by
  rw [tree6221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6222_agree_conditional
    (child0 : tree6220 = literal6220)
    (child1 : tree6221 = literal6221) : tree6222 = literal6222 := by
  rw [tree6222_def, child0, child1]
  rfl
theorem node6222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6220 live6220 coloured6220 = result6220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6221 live6221 coloured6221 = result6221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6222 live6222 coloured6222 = result6222 := by
  rw [tree6222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6220 coloured6220 at child
  try dsimp only [live6222, coloured6222]
  rw [child]
  dsimp only [result6220]
  have child := child1
  unfold live6221 coloured6221 at child
  try dsimp only [live6222, coloured6222]
  rw [child]
  dsimp only [result6221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6223_agree_conditional : tree6223 = literal6223 := by
  rw [tree6223_def]
  rfl
theorem node6223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6223 live6223 coloured6223 = result6223 := by
  rw [tree6223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6224_agree_conditional
    (child0 : tree6222 = literal6222)
    (child1 : tree6223 = literal6223) : tree6224 = literal6224 := by
  rw [tree6224_def, child0, child1]
  rfl
theorem node6224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6222 live6222 coloured6222 = result6222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6223 live6223 coloured6223 = result6223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6224 live6224 coloured6224 = result6224 := by
  rw [tree6224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6222 coloured6222 at child
  try dsimp only [live6224, coloured6224]
  rw [child]
  dsimp only [result6222]
  have child := child1
  unfold live6223 coloured6223 at child
  try dsimp only [live6224, coloured6224]
  rw [child]
  dsimp only [result6223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6225_agree_conditional : tree6225 = literal6225 := by
  rw [tree6225_def]
  rfl
theorem node6225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6225 live6225 coloured6225 = result6225 := by
  rw [tree6225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6226_agree_conditional
    (child0 : tree6224 = literal6224)
    (child1 : tree6225 = literal6225) : tree6226 = literal6226 := by
  rw [tree6226_def, child0, child1]
  rfl
theorem node6226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6224 live6224 coloured6224 = result6224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6225 live6225 coloured6225 = result6225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6226 live6226 coloured6226 = result6226 := by
  rw [tree6226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6224 coloured6224 at child
  try dsimp only [live6226, coloured6226]
  rw [child]
  dsimp only [result6224]
  have child := child1
  unfold live6225 coloured6225 at child
  try dsimp only [live6226, coloured6226]
  rw [child]
  dsimp only [result6225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6227_agree_conditional : tree6227 = literal6227 := by
  rw [tree6227_def]
  rfl
theorem node6227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6227 live6227 coloured6227 = result6227 := by
  rw [tree6227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6228_agree_conditional
    (child0 : tree6226 = literal6226)
    (child1 : tree6227 = literal6227) : tree6228 = literal6228 := by
  rw [tree6228_def, child0, child1]
  rfl
theorem node6228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6226 live6226 coloured6226 = result6226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6227 live6227 coloured6227 = result6227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6228 live6228 coloured6228 = result6228 := by
  rw [tree6228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6226 coloured6226 at child
  try dsimp only [live6228, coloured6228]
  rw [child]
  dsimp only [result6226]
  have child := child1
  unfold live6227 coloured6227 at child
  try dsimp only [live6228, coloured6228]
  rw [child]
  dsimp only [result6227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6229_agree_conditional : tree6229 = literal6229 := by
  rw [tree6229_def]
  rfl
theorem node6229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6229 live6229 coloured6229 = result6229 := by
  rw [tree6229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6230_agree_conditional
    (child0 : tree6228 = literal6228)
    (child1 : tree6229 = literal6229) : tree6230 = literal6230 := by
  rw [tree6230_def, child0, child1]
  rfl
theorem node6230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6228 live6228 coloured6228 = result6228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6229 live6229 coloured6229 = result6229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6230 live6230 coloured6230 = result6230 := by
  rw [tree6230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6228 coloured6228 at child
  try dsimp only [live6230, coloured6230]
  rw [child]
  dsimp only [result6228]
  have child := child1
  unfold live6229 coloured6229 at child
  try dsimp only [live6230, coloured6230]
  rw [child]
  dsimp only [result6229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6231_agree_conditional : tree6231 = literal6231 := by
  rw [tree6231_def]
  rfl
theorem node6231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6231 live6231 coloured6231 = result6231 := by
  rw [tree6231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6232_agree_conditional
    (child0 : tree6230 = literal6230)
    (child1 : tree6231 = literal6231) : tree6232 = literal6232 := by
  rw [tree6232_def, child0, child1]
  rfl
theorem node6232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6230 live6230 coloured6230 = result6230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6231 live6231 coloured6231 = result6231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6232 live6232 coloured6232 = result6232 := by
  rw [tree6232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6230 coloured6230 at child
  try dsimp only [live6232, coloured6232]
  rw [child]
  dsimp only [result6230]
  have child := child1
  unfold live6231 coloured6231 at child
  try dsimp only [live6232, coloured6232]
  rw [child]
  dsimp only [result6231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6233_agree_conditional : tree6233 = literal6233 := by
  rw [tree6233_def]
  rfl
theorem node6233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6233 live6233 coloured6233 = result6233 := by
  rw [tree6233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6234_agree_conditional
    (child0 : tree6232 = literal6232)
    (child1 : tree6233 = literal6233) : tree6234 = literal6234 := by
  rw [tree6234_def, child0, child1]
  rfl
theorem node6234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6232 live6232 coloured6232 = result6232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6233 live6233 coloured6233 = result6233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6234 live6234 coloured6234 = result6234 := by
  rw [tree6234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6232 coloured6232 at child
  try dsimp only [live6234, coloured6234]
  rw [child]
  dsimp only [result6232]
  have child := child1
  unfold live6233 coloured6233 at child
  try dsimp only [live6234, coloured6234]
  rw [child]
  dsimp only [result6233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6235_agree_conditional : tree6235 = literal6235 := by
  rw [tree6235_def]
  rfl
theorem node6235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6235 live6235 coloured6235 = result6235 := by
  rw [tree6235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6236_agree_conditional
    (child0 : tree6234 = literal6234)
    (child1 : tree6235 = literal6235) : tree6236 = literal6236 := by
  rw [tree6236_def, child0, child1]
  rfl
theorem node6236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6234 live6234 coloured6234 = result6234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6235 live6235 coloured6235 = result6235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6236 live6236 coloured6236 = result6236 := by
  rw [tree6236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6234 coloured6234 at child
  try dsimp only [live6236, coloured6236]
  rw [child]
  dsimp only [result6234]
  have child := child1
  unfold live6235 coloured6235 at child
  try dsimp only [live6236, coloured6236]
  rw [child]
  dsimp only [result6235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6237_agree_conditional : tree6237 = literal6237 := by
  rw [tree6237_def]
  rfl
theorem node6237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6237 live6237 coloured6237 = result6237 := by
  rw [tree6237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6238_agree_conditional
    (child0 : tree6236 = literal6236)
    (child1 : tree6237 = literal6237) : tree6238 = literal6238 := by
  rw [tree6238_def, child0, child1]
  rfl
theorem node6238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6236 live6236 coloured6236 = result6236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6237 live6237 coloured6237 = result6237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6238 live6238 coloured6238 = result6238 := by
  rw [tree6238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6236 coloured6236 at child
  try dsimp only [live6238, coloured6238]
  rw [child]
  dsimp only [result6236]
  have child := child1
  unfold live6237 coloured6237 at child
  try dsimp only [live6238, coloured6238]
  rw [child]
  dsimp only [result6237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6239_agree_conditional : tree6239 = literal6239 := by
  rw [tree6239_def]
  rfl
theorem node6239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6239 live6239 coloured6239 = result6239 := by
  rw [tree6239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
