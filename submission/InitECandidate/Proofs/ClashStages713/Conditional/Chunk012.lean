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
theorem tree1152_agree_conditional
    (child0 : tree1150 = literal1150)
    (child1 : tree1151 = literal1151) : tree1152 = literal1152 := by
  rw [tree1152_def, child0, child1]
  rfl
theorem node1152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1150 live1150 coloured1150 = result1150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1151 live1151 coloured1151 = result1151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1152 live1152 coloured1152 = result1152 := by
  rw [tree1152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1150 coloured1150 at child
  try dsimp only [live1152, coloured1152]
  rw [child]
  dsimp only [result1150]
  have child := child1
  unfold live1151 coloured1151 at child
  try dsimp only [live1152, coloured1152]
  rw [child]
  dsimp only [result1151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1153_agree_conditional : tree1153 = literal1153 := by
  rw [tree1153_def]
  rfl
theorem node1153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1153 live1153 coloured1153 = result1153 := by
  rw [tree1153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1154_agree_conditional
    (child0 : tree1152 = literal1152)
    (child1 : tree1153 = literal1153) : tree1154 = literal1154 := by
  rw [tree1154_def, child0, child1]
  rfl
theorem node1154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1152 live1152 coloured1152 = result1152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1153 live1153 coloured1153 = result1153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1154 live1154 coloured1154 = result1154 := by
  rw [tree1154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1152 coloured1152 at child
  try dsimp only [live1154, coloured1154]
  rw [child]
  dsimp only [result1152]
  have child := child1
  unfold live1153 coloured1153 at child
  try dsimp only [live1154, coloured1154]
  rw [child]
  dsimp only [result1153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1155_agree_conditional : tree1155 = literal1155 := by
  rw [tree1155_def]
  rfl
theorem node1155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1155 live1155 coloured1155 = result1155 := by
  rw [tree1155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1156_agree_conditional
    (child0 : tree1154 = literal1154)
    (child1 : tree1155 = literal1155) : tree1156 = literal1156 := by
  rw [tree1156_def, child0, child1]
  rfl
theorem node1156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1154 live1154 coloured1154 = result1154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1155 live1155 coloured1155 = result1155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1156 live1156 coloured1156 = result1156 := by
  rw [tree1156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1154 coloured1154 at child
  try dsimp only [live1156, coloured1156]
  rw [child]
  dsimp only [result1154]
  have child := child1
  unfold live1155 coloured1155 at child
  try dsimp only [live1156, coloured1156]
  rw [child]
  dsimp only [result1155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1157_agree_conditional : tree1157 = literal1157 := by
  rw [tree1157_def]
  rfl
theorem node1157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1157 live1157 coloured1157 = result1157 := by
  rw [tree1157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1158_agree_conditional
    (child0 : tree1156 = literal1156)
    (child1 : tree1157 = literal1157) : tree1158 = literal1158 := by
  rw [tree1158_def, child0, child1]
  rfl
theorem node1158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1156 live1156 coloured1156 = result1156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1157 live1157 coloured1157 = result1157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1158 live1158 coloured1158 = result1158 := by
  rw [tree1158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1156 coloured1156 at child
  try dsimp only [live1158, coloured1158]
  rw [child]
  dsimp only [result1156]
  have child := child1
  unfold live1157 coloured1157 at child
  try dsimp only [live1158, coloured1158]
  rw [child]
  dsimp only [result1157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1159_agree_conditional : tree1159 = literal1159 := by
  rw [tree1159_def]
  rfl
theorem node1159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1159 live1159 coloured1159 = result1159 := by
  rw [tree1159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1160_agree_conditional
    (child0 : tree1158 = literal1158)
    (child1 : tree1159 = literal1159) : tree1160 = literal1160 := by
  rw [tree1160_def, child0, child1]
  rfl
theorem node1160_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1158 live1158 coloured1158 = result1158)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1159 live1159 coloured1159 = result1159) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1160 live1160 coloured1160 = result1160 := by
  rw [tree1160_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1158 coloured1158 at child
  try dsimp only [live1160, coloured1160]
  rw [child]
  dsimp only [result1158]
  have child := child1
  unfold live1159 coloured1159 at child
  try dsimp only [live1160, coloured1160]
  rw [child]
  dsimp only [result1159]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1161_agree_conditional : tree1161 = literal1161 := by
  rw [tree1161_def]
  rfl
theorem node1161_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1161 live1161 coloured1161 = result1161 := by
  rw [tree1161_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1162_agree_conditional
    (child0 : tree1160 = literal1160)
    (child1 : tree1161 = literal1161) : tree1162 = literal1162 := by
  rw [tree1162_def, child0, child1]
  rfl
theorem node1162_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1160 live1160 coloured1160 = result1160)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1161 live1161 coloured1161 = result1161) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1162 live1162 coloured1162 = result1162 := by
  rw [tree1162_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1160 coloured1160 at child
  try dsimp only [live1162, coloured1162]
  rw [child]
  dsimp only [result1160]
  have child := child1
  unfold live1161 coloured1161 at child
  try dsimp only [live1162, coloured1162]
  rw [child]
  dsimp only [result1161]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1163_agree_conditional : tree1163 = literal1163 := by
  rw [tree1163_def]
  rfl
theorem node1163_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1163 live1163 coloured1163 = result1163 := by
  rw [tree1163_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1164_agree_conditional
    (child0 : tree1162 = literal1162)
    (child1 : tree1163 = literal1163) : tree1164 = literal1164 := by
  rw [tree1164_def, child0, child1]
  rfl
theorem node1164_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1162 live1162 coloured1162 = result1162)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1163 live1163 coloured1163 = result1163) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1164 live1164 coloured1164 = result1164 := by
  rw [tree1164_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1162 coloured1162 at child
  try dsimp only [live1164, coloured1164]
  rw [child]
  dsimp only [result1162]
  have child := child1
  unfold live1163 coloured1163 at child
  try dsimp only [live1164, coloured1164]
  rw [child]
  dsimp only [result1163]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1165_agree_conditional : tree1165 = literal1165 := by
  rw [tree1165_def]
  rfl
theorem node1165_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1165 live1165 coloured1165 = result1165 := by
  rw [tree1165_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1166_agree_conditional
    (child0 : tree1164 = literal1164)
    (child1 : tree1165 = literal1165) : tree1166 = literal1166 := by
  rw [tree1166_def, child0, child1]
  rfl
theorem node1166_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1164 live1164 coloured1164 = result1164)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1165 live1165 coloured1165 = result1165) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1166 live1166 coloured1166 = result1166 := by
  rw [tree1166_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1164 coloured1164 at child
  try dsimp only [live1166, coloured1166]
  rw [child]
  dsimp only [result1164]
  have child := child1
  unfold live1165 coloured1165 at child
  try dsimp only [live1166, coloured1166]
  rw [child]
  dsimp only [result1165]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1167_agree_conditional : tree1167 = literal1167 := by
  rw [tree1167_def]
  rfl
theorem node1167_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1167 live1167 coloured1167 = result1167 := by
  rw [tree1167_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1168_agree_conditional
    (child0 : tree1166 = literal1166)
    (child1 : tree1167 = literal1167) : tree1168 = literal1168 := by
  rw [tree1168_def, child0, child1]
  rfl
theorem node1168_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1166 live1166 coloured1166 = result1166)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1167 live1167 coloured1167 = result1167) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1168 live1168 coloured1168 = result1168 := by
  rw [tree1168_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1166 coloured1166 at child
  try dsimp only [live1168, coloured1168]
  rw [child]
  dsimp only [result1166]
  have child := child1
  unfold live1167 coloured1167 at child
  try dsimp only [live1168, coloured1168]
  rw [child]
  dsimp only [result1167]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1169_agree_conditional : tree1169 = literal1169 := by
  rw [tree1169_def]
  rfl
theorem node1169_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1169 live1169 coloured1169 = result1169 := by
  rw [tree1169_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1170_agree_conditional
    (child0 : tree1168 = literal1168)
    (child1 : tree1169 = literal1169) : tree1170 = literal1170 := by
  rw [tree1170_def, child0, child1]
  rfl
theorem node1170_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1168 live1168 coloured1168 = result1168)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1169 live1169 coloured1169 = result1169) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1170 live1170 coloured1170 = result1170 := by
  rw [tree1170_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1168 coloured1168 at child
  try dsimp only [live1170, coloured1170]
  rw [child]
  dsimp only [result1168]
  have child := child1
  unfold live1169 coloured1169 at child
  try dsimp only [live1170, coloured1170]
  rw [child]
  dsimp only [result1169]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1171_agree_conditional : tree1171 = literal1171 := by
  rw [tree1171_def]
  rfl
theorem node1171_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1171 live1171 coloured1171 = result1171 := by
  rw [tree1171_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1172_agree_conditional
    (child0 : tree1170 = literal1170)
    (child1 : tree1171 = literal1171) : tree1172 = literal1172 := by
  rw [tree1172_def, child0, child1]
  rfl
theorem node1172_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1170 live1170 coloured1170 = result1170)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1171 live1171 coloured1171 = result1171) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1172 live1172 coloured1172 = result1172 := by
  rw [tree1172_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1170 coloured1170 at child
  try dsimp only [live1172, coloured1172]
  rw [child]
  dsimp only [result1170]
  have child := child1
  unfold live1171 coloured1171 at child
  try dsimp only [live1172, coloured1172]
  rw [child]
  dsimp only [result1171]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1173_agree_conditional : tree1173 = literal1173 := by
  rw [tree1173_def]
  rfl
theorem node1173_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1173 live1173 coloured1173 = result1173 := by
  rw [tree1173_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1174_agree_conditional
    (child0 : tree1172 = literal1172)
    (child1 : tree1173 = literal1173) : tree1174 = literal1174 := by
  rw [tree1174_def, child0, child1]
  rfl
theorem node1174_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1172 live1172 coloured1172 = result1172)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1173 live1173 coloured1173 = result1173) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1174 live1174 coloured1174 = result1174 := by
  rw [tree1174_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1172 coloured1172 at child
  try dsimp only [live1174, coloured1174]
  rw [child]
  dsimp only [result1172]
  have child := child1
  unfold live1173 coloured1173 at child
  try dsimp only [live1174, coloured1174]
  rw [child]
  dsimp only [result1173]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1175_agree_conditional : tree1175 = literal1175 := by
  rw [tree1175_def]
  rfl
theorem node1175_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1175 live1175 coloured1175 = result1175 := by
  rw [tree1175_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1176_agree_conditional
    (child0 : tree1174 = literal1174)
    (child1 : tree1175 = literal1175) : tree1176 = literal1176 := by
  rw [tree1176_def, child0, child1]
  rfl
theorem node1176_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1174 live1174 coloured1174 = result1174)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1175 live1175 coloured1175 = result1175) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1176 live1176 coloured1176 = result1176 := by
  rw [tree1176_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1174 coloured1174 at child
  try dsimp only [live1176, coloured1176]
  rw [child]
  dsimp only [result1174]
  have child := child1
  unfold live1175 coloured1175 at child
  try dsimp only [live1176, coloured1176]
  rw [child]
  dsimp only [result1175]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1177_agree_conditional : tree1177 = literal1177 := by
  rw [tree1177_def]
  rfl
theorem node1177_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1177 live1177 coloured1177 = result1177 := by
  rw [tree1177_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1178_agree_conditional
    (child0 : tree1176 = literal1176)
    (child1 : tree1177 = literal1177) : tree1178 = literal1178 := by
  rw [tree1178_def, child0, child1]
  rfl
theorem node1178_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1176 live1176 coloured1176 = result1176)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1177 live1177 coloured1177 = result1177) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1178 live1178 coloured1178 = result1178 := by
  rw [tree1178_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1176 coloured1176 at child
  try dsimp only [live1178, coloured1178]
  rw [child]
  dsimp only [result1176]
  have child := child1
  unfold live1177 coloured1177 at child
  try dsimp only [live1178, coloured1178]
  rw [child]
  dsimp only [result1177]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1179_agree_conditional : tree1179 = literal1179 := by
  rw [tree1179_def]
  rfl
theorem node1179_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1179 live1179 coloured1179 = result1179 := by
  rw [tree1179_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1180_agree_conditional
    (child0 : tree1178 = literal1178)
    (child1 : tree1179 = literal1179) : tree1180 = literal1180 := by
  rw [tree1180_def, child0, child1]
  rfl
theorem node1180_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1178 live1178 coloured1178 = result1178)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1179 live1179 coloured1179 = result1179) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1180 live1180 coloured1180 = result1180 := by
  rw [tree1180_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1178 coloured1178 at child
  try dsimp only [live1180, coloured1180]
  rw [child]
  dsimp only [result1178]
  have child := child1
  unfold live1179 coloured1179 at child
  try dsimp only [live1180, coloured1180]
  rw [child]
  dsimp only [result1179]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1181_agree_conditional : tree1181 = literal1181 := by
  rw [tree1181_def]
  rfl
theorem node1181_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1181 live1181 coloured1181 = result1181 := by
  rw [tree1181_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1182_agree_conditional
    (child0 : tree1180 = literal1180)
    (child1 : tree1181 = literal1181) : tree1182 = literal1182 := by
  rw [tree1182_def, child0, child1]
  rfl
theorem node1182_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1180 live1180 coloured1180 = result1180)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1181 live1181 coloured1181 = result1181) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1182 live1182 coloured1182 = result1182 := by
  rw [tree1182_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1180 coloured1180 at child
  try dsimp only [live1182, coloured1182]
  rw [child]
  dsimp only [result1180]
  have child := child1
  unfold live1181 coloured1181 at child
  try dsimp only [live1182, coloured1182]
  rw [child]
  dsimp only [result1181]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1183_agree_conditional : tree1183 = literal1183 := by
  rw [tree1183_def]
  rfl
theorem node1183_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1183 live1183 coloured1183 = result1183 := by
  rw [tree1183_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1184_agree_conditional
    (child0 : tree1182 = literal1182)
    (child1 : tree1183 = literal1183) : tree1184 = literal1184 := by
  rw [tree1184_def, child0, child1]
  rfl
theorem node1184_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1182 live1182 coloured1182 = result1182)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1183 live1183 coloured1183 = result1183) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1184 live1184 coloured1184 = result1184 := by
  rw [tree1184_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1182 coloured1182 at child
  try dsimp only [live1184, coloured1184]
  rw [child]
  dsimp only [result1182]
  have child := child1
  unfold live1183 coloured1183 at child
  try dsimp only [live1184, coloured1184]
  rw [child]
  dsimp only [result1183]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1185_agree_conditional : tree1185 = literal1185 := by
  rw [tree1185_def]
  rfl
theorem node1185_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1185 live1185 coloured1185 = result1185 := by
  rw [tree1185_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1186_agree_conditional
    (child0 : tree1184 = literal1184)
    (child1 : tree1185 = literal1185) : tree1186 = literal1186 := by
  rw [tree1186_def, child0, child1]
  rfl
theorem node1186_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1184 live1184 coloured1184 = result1184)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1185 live1185 coloured1185 = result1185) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1186 live1186 coloured1186 = result1186 := by
  rw [tree1186_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1184 coloured1184 at child
  try dsimp only [live1186, coloured1186]
  rw [child]
  dsimp only [result1184]
  have child := child1
  unfold live1185 coloured1185 at child
  try dsimp only [live1186, coloured1186]
  rw [child]
  dsimp only [result1185]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1187_agree_conditional : tree1187 = literal1187 := by
  rw [tree1187_def]
  rfl
theorem node1187_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1187 live1187 coloured1187 = result1187 := by
  rw [tree1187_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1188_agree_conditional
    (child0 : tree1186 = literal1186)
    (child1 : tree1187 = literal1187) : tree1188 = literal1188 := by
  rw [tree1188_def, child0, child1]
  rfl
theorem node1188_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1186 live1186 coloured1186 = result1186)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1187 live1187 coloured1187 = result1187) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1188 live1188 coloured1188 = result1188 := by
  rw [tree1188_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1186 coloured1186 at child
  try dsimp only [live1188, coloured1188]
  rw [child]
  dsimp only [result1186]
  have child := child1
  unfold live1187 coloured1187 at child
  try dsimp only [live1188, coloured1188]
  rw [child]
  dsimp only [result1187]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1189_agree_conditional : tree1189 = literal1189 := by
  rw [tree1189_def]
  rfl
theorem node1189_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1189 live1189 coloured1189 = result1189 := by
  rw [tree1189_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1190_agree_conditional
    (child0 : tree1188 = literal1188)
    (child1 : tree1189 = literal1189) : tree1190 = literal1190 := by
  rw [tree1190_def, child0, child1]
  rfl
theorem node1190_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1188 live1188 coloured1188 = result1188)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1189 live1189 coloured1189 = result1189) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1190 live1190 coloured1190 = result1190 := by
  rw [tree1190_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1188 coloured1188 at child
  try dsimp only [live1190, coloured1190]
  rw [child]
  dsimp only [result1188]
  have child := child1
  unfold live1189 coloured1189 at child
  try dsimp only [live1190, coloured1190]
  rw [child]
  dsimp only [result1189]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1191_agree_conditional : tree1191 = literal1191 := by
  rw [tree1191_def]
  rfl
theorem node1191_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1191 live1191 coloured1191 = result1191 := by
  rw [tree1191_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1192_agree_conditional
    (child0 : tree1190 = literal1190)
    (child1 : tree1191 = literal1191) : tree1192 = literal1192 := by
  rw [tree1192_def, child0, child1]
  rfl
theorem node1192_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1190 live1190 coloured1190 = result1190)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1191 live1191 coloured1191 = result1191) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1192 live1192 coloured1192 = result1192 := by
  rw [tree1192_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1190 coloured1190 at child
  try dsimp only [live1192, coloured1192]
  rw [child]
  dsimp only [result1190]
  have child := child1
  unfold live1191 coloured1191 at child
  try dsimp only [live1192, coloured1192]
  rw [child]
  dsimp only [result1191]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1193_agree_conditional : tree1193 = literal1193 := by
  rw [tree1193_def]
  rfl
theorem node1193_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1193 live1193 coloured1193 = result1193 := by
  rw [tree1193_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1194_agree_conditional
    (child0 : tree1192 = literal1192)
    (child1 : tree1193 = literal1193) : tree1194 = literal1194 := by
  rw [tree1194_def, child0, child1]
  rfl
theorem node1194_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1192 live1192 coloured1192 = result1192)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1193 live1193 coloured1193 = result1193) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1194 live1194 coloured1194 = result1194 := by
  rw [tree1194_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1192 coloured1192 at child
  try dsimp only [live1194, coloured1194]
  rw [child]
  dsimp only [result1192]
  have child := child1
  unfold live1193 coloured1193 at child
  try dsimp only [live1194, coloured1194]
  rw [child]
  dsimp only [result1193]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1195_agree_conditional : tree1195 = literal1195 := by
  rw [tree1195_def]
  rfl
theorem node1195_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1195 live1195 coloured1195 = result1195 := by
  rw [tree1195_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1196_agree_conditional
    (child0 : tree1194 = literal1194)
    (child1 : tree1195 = literal1195) : tree1196 = literal1196 := by
  rw [tree1196_def, child0, child1]
  rfl
theorem node1196_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1194 live1194 coloured1194 = result1194)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1195 live1195 coloured1195 = result1195) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1196 live1196 coloured1196 = result1196 := by
  rw [tree1196_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1194 coloured1194 at child
  try dsimp only [live1196, coloured1196]
  rw [child]
  dsimp only [result1194]
  have child := child1
  unfold live1195 coloured1195 at child
  try dsimp only [live1196, coloured1196]
  rw [child]
  dsimp only [result1195]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1197_agree_conditional : tree1197 = literal1197 := by
  rw [tree1197_def]
  rfl
theorem node1197_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1197 live1197 coloured1197 = result1197 := by
  rw [tree1197_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1198_agree_conditional
    (child0 : tree1196 = literal1196)
    (child1 : tree1197 = literal1197) : tree1198 = literal1198 := by
  rw [tree1198_def, child0, child1]
  rfl
theorem node1198_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1196 live1196 coloured1196 = result1196)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1197 live1197 coloured1197 = result1197) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1198 live1198 coloured1198 = result1198 := by
  rw [tree1198_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1196 coloured1196 at child
  try dsimp only [live1198, coloured1198]
  rw [child]
  dsimp only [result1196]
  have child := child1
  unfold live1197 coloured1197 at child
  try dsimp only [live1198, coloured1198]
  rw [child]
  dsimp only [result1197]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1199_agree_conditional : tree1199 = literal1199 := by
  rw [tree1199_def]
  rfl
theorem node1199_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1199 live1199 coloured1199 = result1199 := by
  rw [tree1199_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1200_agree_conditional
    (child0 : tree1198 = literal1198)
    (child1 : tree1199 = literal1199) : tree1200 = literal1200 := by
  rw [tree1200_def, child0, child1]
  rfl
theorem node1200_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1198 live1198 coloured1198 = result1198)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1199 live1199 coloured1199 = result1199) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1200 live1200 coloured1200 = result1200 := by
  rw [tree1200_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1198 coloured1198 at child
  try dsimp only [live1200, coloured1200]
  rw [child]
  dsimp only [result1198]
  have child := child1
  unfold live1199 coloured1199 at child
  try dsimp only [live1200, coloured1200]
  rw [child]
  dsimp only [result1199]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1201_agree_conditional : tree1201 = literal1201 := by
  rw [tree1201_def]
  rfl
theorem node1201_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1201 live1201 coloured1201 = result1201 := by
  rw [tree1201_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1202_agree_conditional
    (child0 : tree1200 = literal1200)
    (child1 : tree1201 = literal1201) : tree1202 = literal1202 := by
  rw [tree1202_def, child0, child1]
  rfl
theorem node1202_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1200 live1200 coloured1200 = result1200)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1201 live1201 coloured1201 = result1201) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1202 live1202 coloured1202 = result1202 := by
  rw [tree1202_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1200 coloured1200 at child
  try dsimp only [live1202, coloured1202]
  rw [child]
  dsimp only [result1200]
  have child := child1
  unfold live1201 coloured1201 at child
  try dsimp only [live1202, coloured1202]
  rw [child]
  dsimp only [result1201]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1203_agree_conditional : tree1203 = literal1203 := by
  rw [tree1203_def]
  rfl
theorem node1203_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1203 live1203 coloured1203 = result1203 := by
  rw [tree1203_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1204_agree_conditional
    (child0 : tree1202 = literal1202)
    (child1 : tree1203 = literal1203) : tree1204 = literal1204 := by
  rw [tree1204_def, child0, child1]
  rfl
theorem node1204_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1202 live1202 coloured1202 = result1202)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1203 live1203 coloured1203 = result1203) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1204 live1204 coloured1204 = result1204 := by
  rw [tree1204_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1202 coloured1202 at child
  try dsimp only [live1204, coloured1204]
  rw [child]
  dsimp only [result1202]
  have child := child1
  unfold live1203 coloured1203 at child
  try dsimp only [live1204, coloured1204]
  rw [child]
  dsimp only [result1203]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1205_agree_conditional : tree1205 = literal1205 := by
  rw [tree1205_def]
  rfl
theorem node1205_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1205 live1205 coloured1205 = result1205 := by
  rw [tree1205_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1206_agree_conditional
    (child0 : tree1204 = literal1204)
    (child1 : tree1205 = literal1205) : tree1206 = literal1206 := by
  rw [tree1206_def, child0, child1]
  rfl
theorem node1206_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1204 live1204 coloured1204 = result1204)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1205 live1205 coloured1205 = result1205) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1206 live1206 coloured1206 = result1206 := by
  rw [tree1206_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1204 coloured1204 at child
  try dsimp only [live1206, coloured1206]
  rw [child]
  dsimp only [result1204]
  have child := child1
  unfold live1205 coloured1205 at child
  try dsimp only [live1206, coloured1206]
  rw [child]
  dsimp only [result1205]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1207_agree_conditional : tree1207 = literal1207 := by
  rw [tree1207_def]
  rfl
theorem node1207_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1207 live1207 coloured1207 = result1207 := by
  rw [tree1207_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1208_agree_conditional
    (child0 : tree1206 = literal1206)
    (child1 : tree1207 = literal1207) : tree1208 = literal1208 := by
  rw [tree1208_def, child0, child1]
  rfl
theorem node1208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1206 live1206 coloured1206 = result1206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1207 live1207 coloured1207 = result1207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1208 live1208 coloured1208 = result1208 := by
  rw [tree1208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1206 coloured1206 at child
  try dsimp only [live1208, coloured1208]
  rw [child]
  dsimp only [result1206]
  have child := child1
  unfold live1207 coloured1207 at child
  try dsimp only [live1208, coloured1208]
  rw [child]
  dsimp only [result1207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1209_agree_conditional : tree1209 = literal1209 := by
  rw [tree1209_def]
  rfl
theorem node1209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1209 live1209 coloured1209 = result1209 := by
  rw [tree1209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1210_agree_conditional
    (child0 : tree1208 = literal1208)
    (child1 : tree1209 = literal1209) : tree1210 = literal1210 := by
  rw [tree1210_def, child0, child1]
  rfl
theorem node1210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1208 live1208 coloured1208 = result1208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1209 live1209 coloured1209 = result1209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1210 live1210 coloured1210 = result1210 := by
  rw [tree1210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1208 coloured1208 at child
  try dsimp only [live1210, coloured1210]
  rw [child]
  dsimp only [result1208]
  have child := child1
  unfold live1209 coloured1209 at child
  try dsimp only [live1210, coloured1210]
  rw [child]
  dsimp only [result1209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1211_agree_conditional : tree1211 = literal1211 := by
  rw [tree1211_def]
  rfl
theorem node1211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1211 live1211 coloured1211 = result1211 := by
  rw [tree1211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1212_agree_conditional
    (child0 : tree1210 = literal1210)
    (child1 : tree1211 = literal1211) : tree1212 = literal1212 := by
  rw [tree1212_def, child0, child1]
  rfl
theorem node1212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1210 live1210 coloured1210 = result1210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1211 live1211 coloured1211 = result1211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1212 live1212 coloured1212 = result1212 := by
  rw [tree1212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1210 coloured1210 at child
  try dsimp only [live1212, coloured1212]
  rw [child]
  dsimp only [result1210]
  have child := child1
  unfold live1211 coloured1211 at child
  try dsimp only [live1212, coloured1212]
  rw [child]
  dsimp only [result1211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1213_agree_conditional : tree1213 = literal1213 := by
  rw [tree1213_def]
  rfl
theorem node1213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1213 live1213 coloured1213 = result1213 := by
  rw [tree1213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1214_agree_conditional
    (child0 : tree1212 = literal1212)
    (child1 : tree1213 = literal1213) : tree1214 = literal1214 := by
  rw [tree1214_def, child0, child1]
  rfl
theorem node1214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1212 live1212 coloured1212 = result1212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1213 live1213 coloured1213 = result1213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1214 live1214 coloured1214 = result1214 := by
  rw [tree1214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1212 coloured1212 at child
  try dsimp only [live1214, coloured1214]
  rw [child]
  dsimp only [result1212]
  have child := child1
  unfold live1213 coloured1213 at child
  try dsimp only [live1214, coloured1214]
  rw [child]
  dsimp only [result1213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1215_agree_conditional : tree1215 = literal1215 := by
  rw [tree1215_def]
  rfl
theorem node1215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1215 live1215 coloured1215 = result1215 := by
  rw [tree1215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1216_agree_conditional
    (child0 : tree1214 = literal1214)
    (child1 : tree1215 = literal1215) : tree1216 = literal1216 := by
  rw [tree1216_def, child0, child1]
  rfl
theorem node1216_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1214 live1214 coloured1214 = result1214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1215 live1215 coloured1215 = result1215) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1216 live1216 coloured1216 = result1216 := by
  rw [tree1216_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1214 coloured1214 at child
  try dsimp only [live1216, coloured1216]
  rw [child]
  dsimp only [result1214]
  have child := child1
  unfold live1215 coloured1215 at child
  try dsimp only [live1216, coloured1216]
  rw [child]
  dsimp only [result1215]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1217_agree_conditional : tree1217 = literal1217 := by
  rw [tree1217_def]
  rfl
theorem node1217_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1217 live1217 coloured1217 = result1217 := by
  rw [tree1217_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1218_agree_conditional
    (child0 : tree1216 = literal1216)
    (child1 : tree1217 = literal1217) : tree1218 = literal1218 := by
  rw [tree1218_def, child0, child1]
  rfl
theorem node1218_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1216 live1216 coloured1216 = result1216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1217 live1217 coloured1217 = result1217) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1218 live1218 coloured1218 = result1218 := by
  rw [tree1218_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1216 coloured1216 at child
  try dsimp only [live1218, coloured1218]
  rw [child]
  dsimp only [result1216]
  have child := child1
  unfold live1217 coloured1217 at child
  try dsimp only [live1218, coloured1218]
  rw [child]
  dsimp only [result1217]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1219_agree_conditional : tree1219 = literal1219 := by
  rw [tree1219_def]
  rfl
theorem node1219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1219 live1219 coloured1219 = result1219 := by
  rw [tree1219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1220_agree_conditional
    (child0 : tree1218 = literal1218)
    (child1 : tree1219 = literal1219) : tree1220 = literal1220 := by
  rw [tree1220_def, child0, child1]
  rfl
theorem node1220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1218 live1218 coloured1218 = result1218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1219 live1219 coloured1219 = result1219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1220 live1220 coloured1220 = result1220 := by
  rw [tree1220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1218 coloured1218 at child
  try dsimp only [live1220, coloured1220]
  rw [child]
  dsimp only [result1218]
  have child := child1
  unfold live1219 coloured1219 at child
  try dsimp only [live1220, coloured1220]
  rw [child]
  dsimp only [result1219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1221_agree_conditional : tree1221 = literal1221 := by
  rw [tree1221_def]
  rfl
theorem node1221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1221 live1221 coloured1221 = result1221 := by
  rw [tree1221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1222_agree_conditional
    (child0 : tree1220 = literal1220)
    (child1 : tree1221 = literal1221) : tree1222 = literal1222 := by
  rw [tree1222_def, child0, child1]
  rfl
theorem node1222_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1220 live1220 coloured1220 = result1220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1221 live1221 coloured1221 = result1221) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1222 live1222 coloured1222 = result1222 := by
  rw [tree1222_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1220 coloured1220 at child
  try dsimp only [live1222, coloured1222]
  rw [child]
  dsimp only [result1220]
  have child := child1
  unfold live1221 coloured1221 at child
  try dsimp only [live1222, coloured1222]
  rw [child]
  dsimp only [result1221]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1223_agree_conditional : tree1223 = literal1223 := by
  rw [tree1223_def]
  rfl
theorem node1223_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1223 live1223 coloured1223 = result1223 := by
  rw [tree1223_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1224_agree_conditional
    (child0 : tree1222 = literal1222)
    (child1 : tree1223 = literal1223) : tree1224 = literal1224 := by
  rw [tree1224_def, child0, child1]
  rfl
theorem node1224_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1222 live1222 coloured1222 = result1222)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1223 live1223 coloured1223 = result1223) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1224 live1224 coloured1224 = result1224 := by
  rw [tree1224_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1222 coloured1222 at child
  try dsimp only [live1224, coloured1224]
  rw [child]
  dsimp only [result1222]
  have child := child1
  unfold live1223 coloured1223 at child
  try dsimp only [live1224, coloured1224]
  rw [child]
  dsimp only [result1223]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1225_agree_conditional : tree1225 = literal1225 := by
  rw [tree1225_def]
  rfl
theorem node1225_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1225 live1225 coloured1225 = result1225 := by
  rw [tree1225_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1226_agree_conditional
    (child0 : tree1224 = literal1224)
    (child1 : tree1225 = literal1225) : tree1226 = literal1226 := by
  rw [tree1226_def, child0, child1]
  rfl
theorem node1226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1224 live1224 coloured1224 = result1224)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1225 live1225 coloured1225 = result1225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1226 live1226 coloured1226 = result1226 := by
  rw [tree1226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1224 coloured1224 at child
  try dsimp only [live1226, coloured1226]
  rw [child]
  dsimp only [result1224]
  have child := child1
  unfold live1225 coloured1225 at child
  try dsimp only [live1226, coloured1226]
  rw [child]
  dsimp only [result1225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1227_agree_conditional : tree1227 = literal1227 := by
  rw [tree1227_def]
  rfl
theorem node1227_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1227 live1227 coloured1227 = result1227 := by
  rw [tree1227_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1228_agree_conditional
    (child0 : tree1226 = literal1226)
    (child1 : tree1227 = literal1227) : tree1228 = literal1228 := by
  rw [tree1228_def, child0, child1]
  rfl
theorem node1228_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1226 live1226 coloured1226 = result1226)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1227 live1227 coloured1227 = result1227) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1228 live1228 coloured1228 = result1228 := by
  rw [tree1228_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1226 coloured1226 at child
  try dsimp only [live1228, coloured1228]
  rw [child]
  dsimp only [result1226]
  have child := child1
  unfold live1227 coloured1227 at child
  try dsimp only [live1228, coloured1228]
  rw [child]
  dsimp only [result1227]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1229_agree_conditional : tree1229 = literal1229 := by
  rw [tree1229_def]
  rfl
theorem node1229_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1229 live1229 coloured1229 = result1229 := by
  rw [tree1229_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1230_agree_conditional
    (child0 : tree1228 = literal1228)
    (child1 : tree1229 = literal1229) : tree1230 = literal1230 := by
  rw [tree1230_def, child0, child1]
  rfl
theorem node1230_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1228 live1228 coloured1228 = result1228)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1229 live1229 coloured1229 = result1229) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1230 live1230 coloured1230 = result1230 := by
  rw [tree1230_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1228 coloured1228 at child
  try dsimp only [live1230, coloured1230]
  rw [child]
  dsimp only [result1228]
  have child := child1
  unfold live1229 coloured1229 at child
  try dsimp only [live1230, coloured1230]
  rw [child]
  dsimp only [result1229]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1231_agree_conditional : tree1231 = literal1231 := by
  rw [tree1231_def]
  rfl
theorem node1231_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1231 live1231 coloured1231 = result1231 := by
  rw [tree1231_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1232_agree_conditional
    (child0 : tree1230 = literal1230)
    (child1 : tree1231 = literal1231) : tree1232 = literal1232 := by
  rw [tree1232_def, child0, child1]
  rfl
theorem node1232_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1230 live1230 coloured1230 = result1230)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1231 live1231 coloured1231 = result1231) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1232 live1232 coloured1232 = result1232 := by
  rw [tree1232_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1230 coloured1230 at child
  try dsimp only [live1232, coloured1232]
  rw [child]
  dsimp only [result1230]
  have child := child1
  unfold live1231 coloured1231 at child
  try dsimp only [live1232, coloured1232]
  rw [child]
  dsimp only [result1231]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1233_agree_conditional : tree1233 = literal1233 := by
  rw [tree1233_def]
  rfl
theorem node1233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1233 live1233 coloured1233 = result1233 := by
  rw [tree1233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1234_agree_conditional
    (child0 : tree1232 = literal1232)
    (child1 : tree1233 = literal1233) : tree1234 = literal1234 := by
  rw [tree1234_def, child0, child1]
  rfl
theorem node1234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1232 live1232 coloured1232 = result1232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1233 live1233 coloured1233 = result1233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1234 live1234 coloured1234 = result1234 := by
  rw [tree1234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1232 coloured1232 at child
  try dsimp only [live1234, coloured1234]
  rw [child]
  dsimp only [result1232]
  have child := child1
  unfold live1233 coloured1233 at child
  try dsimp only [live1234, coloured1234]
  rw [child]
  dsimp only [result1233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1235_agree_conditional : tree1235 = literal1235 := by
  rw [tree1235_def]
  rfl
theorem node1235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1235 live1235 coloured1235 = result1235 := by
  rw [tree1235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1236_agree_conditional
    (child0 : tree1234 = literal1234)
    (child1 : tree1235 = literal1235) : tree1236 = literal1236 := by
  rw [tree1236_def, child0, child1]
  rfl
theorem node1236_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1234 live1234 coloured1234 = result1234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1235 live1235 coloured1235 = result1235) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1236 live1236 coloured1236 = result1236 := by
  rw [tree1236_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1234 coloured1234 at child
  try dsimp only [live1236, coloured1236]
  rw [child]
  dsimp only [result1234]
  have child := child1
  unfold live1235 coloured1235 at child
  try dsimp only [live1236, coloured1236]
  rw [child]
  dsimp only [result1235]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1237_agree_conditional : tree1237 = literal1237 := by
  rw [tree1237_def]
  rfl
theorem node1237_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1237 live1237 coloured1237 = result1237 := by
  rw [tree1237_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1238_agree_conditional
    (child0 : tree1236 = literal1236)
    (child1 : tree1237 = literal1237) : tree1238 = literal1238 := by
  rw [tree1238_def, child0, child1]
  rfl
theorem node1238_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1236 live1236 coloured1236 = result1236)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1237 live1237 coloured1237 = result1237) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1238 live1238 coloured1238 = result1238 := by
  rw [tree1238_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1236 coloured1236 at child
  try dsimp only [live1238, coloured1238]
  rw [child]
  dsimp only [result1236]
  have child := child1
  unfold live1237 coloured1237 at child
  try dsimp only [live1238, coloured1238]
  rw [child]
  dsimp only [result1237]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1239_agree_conditional : tree1239 = literal1239 := by
  rw [tree1239_def]
  rfl
theorem node1239_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1239 live1239 coloured1239 = result1239 := by
  rw [tree1239_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1240_agree_conditional
    (child0 : tree1238 = literal1238)
    (child1 : tree1239 = literal1239) : tree1240 = literal1240 := by
  rw [tree1240_def, child0, child1]
  rfl
theorem node1240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1238 live1238 coloured1238 = result1238)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1239 live1239 coloured1239 = result1239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1240 live1240 coloured1240 = result1240 := by
  rw [tree1240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1238 coloured1238 at child
  try dsimp only [live1240, coloured1240]
  rw [child]
  dsimp only [result1238]
  have child := child1
  unfold live1239 coloured1239 at child
  try dsimp only [live1240, coloured1240]
  rw [child]
  dsimp only [result1239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1241_agree_conditional : tree1241 = literal1241 := by
  rw [tree1241_def]
  rfl
theorem node1241_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1241 live1241 coloured1241 = result1241 := by
  rw [tree1241_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1242_agree_conditional
    (child0 : tree1240 = literal1240)
    (child1 : tree1241 = literal1241) : tree1242 = literal1242 := by
  rw [tree1242_def, child0, child1]
  rfl
theorem node1242_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1240 live1240 coloured1240 = result1240)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1241 live1241 coloured1241 = result1241) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1242 live1242 coloured1242 = result1242 := by
  rw [tree1242_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1240 coloured1240 at child
  try dsimp only [live1242, coloured1242]
  rw [child]
  dsimp only [result1240]
  have child := child1
  unfold live1241 coloured1241 at child
  try dsimp only [live1242, coloured1242]
  rw [child]
  dsimp only [result1241]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1243_agree_conditional : tree1243 = literal1243 := by
  rw [tree1243_def]
  rfl
theorem node1243_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1243 live1243 coloured1243 = result1243 := by
  rw [tree1243_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1244_agree_conditional
    (child0 : tree1242 = literal1242)
    (child1 : tree1243 = literal1243) : tree1244 = literal1244 := by
  rw [tree1244_def, child0, child1]
  rfl
theorem node1244_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1242 live1242 coloured1242 = result1242)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1243 live1243 coloured1243 = result1243) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1244 live1244 coloured1244 = result1244 := by
  rw [tree1244_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1242 coloured1242 at child
  try dsimp only [live1244, coloured1244]
  rw [child]
  dsimp only [result1242]
  have child := child1
  unfold live1243 coloured1243 at child
  try dsimp only [live1244, coloured1244]
  rw [child]
  dsimp only [result1243]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1245_agree_conditional : tree1245 = literal1245 := by
  rw [tree1245_def]
  rfl
theorem node1245_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1245 live1245 coloured1245 = result1245 := by
  rw [tree1245_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1246_agree_conditional
    (child0 : tree1244 = literal1244)
    (child1 : tree1245 = literal1245) : tree1246 = literal1246 := by
  rw [tree1246_def, child0, child1]
  rfl
theorem node1246_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1244 live1244 coloured1244 = result1244)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1245 live1245 coloured1245 = result1245) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1246 live1246 coloured1246 = result1246 := by
  rw [tree1246_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1244 coloured1244 at child
  try dsimp only [live1246, coloured1246]
  rw [child]
  dsimp only [result1244]
  have child := child1
  unfold live1245 coloured1245 at child
  try dsimp only [live1246, coloured1246]
  rw [child]
  dsimp only [result1245]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1247_agree_conditional : tree1247 = literal1247 := by
  rw [tree1247_def]
  rfl
theorem node1247_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1247 live1247 coloured1247 = result1247 := by
  rw [tree1247_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
