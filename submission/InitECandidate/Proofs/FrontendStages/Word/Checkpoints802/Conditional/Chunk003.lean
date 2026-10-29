import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints802.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints802
theorem node1152_conditional
    (child1139 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1121 (866, 32) = (output1139, (866, 32)))
    (child1151 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1133 (866, 32) = (output1151, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1134 (866, 32) = (output1152, (866, 32)) := by
  rw [output1152_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1139 child1151

theorem node1153_conditional
    (child1152 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1134 (866, 32) = (output1152, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1135 (866, 32) = (output1153, (866, 32)) := by
  rw [output1153_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1152

theorem node1154_conditional
    (child1103 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1087 (866, 30) = (output1103, (866, 32)))
    (child1153 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1135 (866, 32) = (output1153, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1136 (866, 30) = (output1154, (866, 32)) := by
  rw [output1154_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1103 child1153

theorem node1155_conditional
    (child1154 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1136 (866, 30) = (output1154, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1137 (866, 30) = (output1155, (866, 32)) := by
  rw [output1155_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1154

theorem node1156_conditional
    (child1037 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 30) = (output1037, (866, 30)))
    (child1155 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1137 (866, 30) = (output1155, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1138 (866, 30) = (output1156, (866, 32)) := by
  rw [output1156_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1037 child1155

theorem node1157_conditional
    (child1156 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1138 (866, 30) = (output1156, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1139 (866, 30) = (output1157, (866, 32)) := by
  rw [output1157_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1156

theorem node1158_conditional
    (child1037 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 30) = (output1037, (866, 30)))
    (child1157 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1139 (866, 30) = (output1157, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1140 (866, 30) = (output1158, (866, 32)) := by
  rw [output1158_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1037 child1157

theorem node1159_conditional
    (child1158 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1140 (866, 30) = (output1158, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1141 (866, 30) = (output1159, (866, 32)) := by
  rw [output1159_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1158

theorem node1160_conditional
    (child1037 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 30) = (output1037, (866, 30)))
    (child1159 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1141 (866, 30) = (output1159, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1142 (866, 30) = (output1160, (866, 32)) := by
  rw [output1160_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1037 child1159

theorem node1161_conditional
    (child1160 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1142 (866, 30) = (output1160, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1143 (866, 30) = (output1161, (866, 32)) := by
  rw [output1161_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1160

theorem node1162_conditional
    (child1037 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 30) = (output1037, (866, 30)))
    (child1161 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1143 (866, 30) = (output1161, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1144 (866, 30) = (output1162, (866, 32)) := by
  rw [output1162_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1037 child1161

theorem node1163_conditional
    (child1162 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1144 (866, 30) = (output1162, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1145 (866, 30) = (output1163, (866, 32)) := by
  rw [output1163_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1162

theorem node1164_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1146 (866, 32) = (output1164, (866, 32)) := by
  rw [output1164_def]
  kernel_rfl

theorem node1165_conditional
    (child1164 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1146 (866, 32) = (output1164, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1147 (866, 32) = (output1165, (866, 32)) := by
  rw [output1165_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1164

theorem node1166_conditional
    (child1163 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1145 (866, 30) = (output1163, (866, 32)))
    (child1165 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1147 (866, 32) = (output1165, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1148 (866, 30) = (output1166, (866, 32)) := by
  rw [output1166_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1163 child1165

theorem node1167_conditional
    (child1166 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1148 (866, 30) = (output1166, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1149 (866, 30) = (output1167, (866, 32)) := by
  rw [output1167_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1166

theorem node1168_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1150 (866, 32) = (output1168, (866, 32)) := by
  rw [output1168_def]
  kernel_rfl

theorem node1169_conditional
    (child1168 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1150 (866, 32) = (output1168, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1151 (866, 32) = (output1169, (866, 32)) := by
  rw [output1169_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1168

theorem node1170_conditional
    (child1167 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1149 (866, 30) = (output1167, (866, 32)))
    (child1169 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1151 (866, 32) = (output1169, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1152 (866, 30) = (output1170, (866, 32)) := by
  rw [output1170_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1167 child1169

theorem node1171_conditional
    (child1170 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1152 (866, 30) = (output1170, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1153 (866, 30) = (output1171, (866, 32)) := by
  rw [output1171_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1170

theorem node1172_conditional
    (child1171 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1153 (866, 30) = (output1171, (866, 32)))
    (child1093 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 32) = (output1093, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1154 (866, 30) = (output1172, (866, 32)) := by
  rw [output1172_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1171 child1093

theorem node1173_conditional
    (child1172 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1154 (866, 30) = (output1172, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1155 (866, 30) = (output1173, (866, 32)) := by
  rw [output1173_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1172

theorem node1174_conditional
    (child1081 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1065 (866, 30) = (output1081, (866, 30)))
    (child1173 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1155 (866, 30) = (output1173, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1156 (866, 30) = (output1174, (866, 32)) := by
  rw [output1174_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1081 child1173

theorem node1175_conditional
    (child1174 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1156 (866, 30) = (output1174, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1157 (866, 30) = (output1175, (866, 32)) := by
  rw [output1175_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1174

theorem node1176_conditional
    (child1079 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1063 (866, 30) = (output1079, (866, 30)))
    (child1175 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1157 (866, 30) = (output1175, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1158 (866, 30) = (output1176, (866, 32)) := by
  rw [output1176_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1079 child1175

theorem node1177_conditional
    (child1176 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1158 (866, 30) = (output1176, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1159 (866, 30) = (output1177, (866, 32)) := by
  rw [output1177_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1176

theorem node1178_conditional
    (child1073 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1057 (866, 30) = (output1073, (866, 30)))
    (child1177 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1159 (866, 30) = (output1177, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1160 (866, 30) = (output1178, (866, 32)) := by
  rw [output1178_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1073 child1177

theorem node1179_conditional
    (child1178 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1160 (866, 30) = (output1178, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1161 (866, 30) = (output1179, (866, 32)) := by
  rw [output1179_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1178

theorem node1180_conditional
    (child1045 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_963 (866, 30) = (output1045, (866, 30)))
    (child1179 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1161 (866, 30) = (output1179, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1162 (866, 30) = (output1180, (866, 32)) := by
  rw [output1180_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1045 child1179

theorem node1181_conditional
    (child1180 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1162 (866, 30) = (output1180, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1163 (866, 30) = (output1181, (866, 32)) := by
  rw [output1181_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1180

theorem node1182_conditional
    (child1181 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1163 (866, 30) = (output1181, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1164 (866, 30) = (output1182, (866, 32)) := by
  rw [output1182_def]
  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context802 (match Loop.loopBody802_1164 with | .loop live _ _ => live | _ => .ln) (match Loop.loopBody802_1164 with | .loop _ _ live => live | _ => .ln) _ _ _ _ child1181
  exact h.trans (by kernel_rfl)

theorem node1183_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1165 (866, 32) = (output1183, (866, 32)) := by
  rw [output1183_def]
  kernel_rfl

theorem node1184_conditional
    (child1183 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1165 (866, 32) = (output1183, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1166 (866, 32) = (output1184, (866, 32)) := by
  rw [output1184_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1183

theorem node1185_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1056 (866, 32) = (output1185, (866, 32)) := by
  rw [output1185_def]
  kernel_rfl

theorem node1186_conditional
    (child1185 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1056 (866, 32) = (output1185, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1057 (866, 32) = (output1186, (866, 32)) := by
  rw [output1186_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1185

theorem node1187_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1167 (866, 32) = (output1187, (866, 32)) := by
  rw [output1187_def]
  kernel_rfl

theorem node1188_conditional
    (child1187 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1167 (866, 32) = (output1187, (866, 32))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1168 (866, 32) = (output1188, (866, 32)) := by
  rw [output1188_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1187

theorem node1189_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1171 (866, 32) = (output1189, (866, 34)) := by
  rw [output1189_def]
  kernel_rfl

theorem node1190_conditional
    (child1189 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1171 (866, 32) = (output1189, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1172 (866, 32) = (output1190, (866, 34)) := by
  rw [output1190_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1189

theorem node1191_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_0 (866, 34) = (output1191, (866, 34)) := by
  rw [output1191_def]
  kernel_rfl

theorem node1192_conditional
    (child1191 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_0 (866, 34) = (output1191, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 34) = (output1192, (866, 34)) := by
  rw [output1192_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1191

theorem node1193_conditional
    (child1190 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1172 (866, 32) = (output1190, (866, 34)))
    (child1192 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 34) = (output1192, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1173 (866, 32) = (output1193, (866, 34)) := by
  rw [output1193_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1190 child1192

theorem node1194_conditional
    (child1193 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1173 (866, 32) = (output1193, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1174 (866, 32) = (output1194, (866, 34)) := by
  rw [output1194_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1193

theorem node1195_conditional
    (child1188 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1168 (866, 32) = (output1188, (866, 32)))
    (child1194 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1174 (866, 32) = (output1194, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1175 (866, 32) = (output1195, (866, 34)) := by
  rw [output1195_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1188 child1194

theorem node1196_conditional
    (child1195 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1175 (866, 32) = (output1195, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1176 (866, 32) = (output1196, (866, 34)) := by
  rw [output1196_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1195

theorem node1197_conditional
    (child1186 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1057 (866, 32) = (output1186, (866, 32)))
    (child1196 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1176 (866, 32) = (output1196, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1177 (866, 32) = (output1197, (866, 34)) := by
  rw [output1197_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1186 child1196

theorem node1198_conditional
    (child1197 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1177 (866, 32) = (output1197, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1178 (866, 32) = (output1198, (866, 34)) := by
  rw [output1198_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1197

theorem node1199_conditional
    (child1184 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1166 (866, 32) = (output1184, (866, 32)))
    (child1198 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1178 (866, 32) = (output1198, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1179 (866, 32) = (output1199, (866, 34)) := by
  rw [output1199_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1184 child1198

theorem node1200_conditional
    (child1199 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1179 (866, 32) = (output1199, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1180 (866, 32) = (output1200, (866, 34)) := by
  rw [output1200_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1199

theorem node1201_conditional
    (child1093 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 32) = (output1093, (866, 32)))
    (child1200 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1180 (866, 32) = (output1200, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1181 (866, 32) = (output1201, (866, 34)) := by
  rw [output1201_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1093 child1200

theorem node1202_conditional
    (child1201 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1181 (866, 32) = (output1201, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1182 (866, 32) = (output1202, (866, 34)) := by
  rw [output1202_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1201

theorem node1203_conditional
    (child1093 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 32) = (output1093, (866, 32)))
    (child1202 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1182 (866, 32) = (output1202, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1183 (866, 32) = (output1203, (866, 34)) := by
  rw [output1203_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1093 child1202

theorem node1204_conditional
    (child1203 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1183 (866, 32) = (output1203, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1184 (866, 32) = (output1204, (866, 34)) := by
  rw [output1204_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1203

theorem node1205_conditional
    (child1182 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1164 (866, 30) = (output1182, (866, 32)))
    (child1204 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1184 (866, 32) = (output1204, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1185 (866, 30) = (output1205, (866, 34)) := by
  rw [output1205_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1182 child1204

theorem node1206_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1186 (866, 34) = (output1206, (866, 34)) := by
  rw [output1206_def]
  kernel_rfl

theorem node1207_conditional
    (child1206 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1186 (866, 34) = (output1206, (866, 34))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1187 (866, 34) = (output1207, (866, 34)) := by
  rw [output1207_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1206

theorem node1208_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1188 (866, 34) = (output1208, (866, 36)) := by
  rw [output1208_def]
  kernel_rfl

theorem node1209_conditional
    (child1208 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1188 (866, 34) = (output1208, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1189 (866, 34) = (output1209, (866, 36)) := by
  rw [output1209_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1208

theorem node1210_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_0 (866, 36) = (output1210, (866, 36)) := by
  rw [output1210_def]
  kernel_rfl

theorem node1211_conditional
    (child1210 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_0 (866, 36) = (output1210, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 36) = (output1211, (866, 36)) := by
  rw [output1211_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1210

theorem node1212_conditional
    (child1209 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1189 (866, 34) = (output1209, (866, 36)))
    (child1211 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 36) = (output1211, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1190 (866, 34) = (output1212, (866, 36)) := by
  rw [output1212_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1209 child1211

theorem node1213_conditional
    (child1212 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1190 (866, 34) = (output1212, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1191 (866, 34) = (output1213, (866, 36)) := by
  rw [output1213_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1212

theorem node1214_conditional
    (child1207 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1187 (866, 34) = (output1207, (866, 34)))
    (child1213 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1191 (866, 34) = (output1213, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1192 (866, 34) = (output1214, (866, 36)) := by
  rw [output1214_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1207 child1213

theorem node1215_conditional
    (child1214 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1192 (866, 34) = (output1214, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1193 (866, 34) = (output1215, (866, 36)) := by
  rw [output1215_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1214

theorem node1216_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1090 (866, 36) = (output1216, (866, 36)) := by
  rw [output1216_def]
  kernel_rfl

theorem node1217_conditional
    (child1216 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1090 (866, 36) = (output1216, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1091 (866, 36) = (output1217, (866, 36)) := by
  rw [output1217_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1216

theorem node1218_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1194 (866, 36) = (output1218, (866, 36)) := by
  rw [output1218_def]
  kernel_rfl

theorem node1219_conditional
    (child1218 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1194 (866, 36) = (output1218, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1195 (866, 36) = (output1219, (866, 36)) := by
  rw [output1219_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1218

theorem node1220_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1196 (866, 36) = (output1220, (866, 36)) := by
  rw [output1220_def]
  kernel_rfl

theorem node1221_conditional
    (child1220 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1196 (866, 36) = (output1220, (866, 36))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1197 (866, 36) = (output1221, (866, 36)) := by
  rw [output1221_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1220

theorem node1222_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1200 (866, 36) = (output1222, (866, 38)) := by
  rw [output1222_def]
  kernel_rfl

theorem node1223_conditional
    (child1222 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1200 (866, 36) = (output1222, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1201 (866, 36) = (output1223, (866, 38)) := by
  rw [output1223_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1222

theorem node1224_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_0 (866, 38) = (output1224, (866, 38)) := by
  rw [output1224_def]
  kernel_rfl

theorem node1225_conditional
    (child1224 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_0 (866, 38) = (output1224, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 38) = (output1225, (866, 38)) := by
  rw [output1225_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1224

theorem node1226_conditional
    (child1223 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1201 (866, 36) = (output1223, (866, 38)))
    (child1225 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 38) = (output1225, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1202 (866, 36) = (output1226, (866, 38)) := by
  rw [output1226_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1223 child1225

theorem node1227_conditional
    (child1226 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1202 (866, 36) = (output1226, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1203 (866, 36) = (output1227, (866, 38)) := by
  rw [output1227_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1226

theorem node1228_conditional
    (child1221 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1197 (866, 36) = (output1221, (866, 36)))
    (child1227 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1203 (866, 36) = (output1227, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1204 (866, 36) = (output1228, (866, 38)) := by
  rw [output1228_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1221 child1227

theorem node1229_conditional
    (child1228 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1204 (866, 36) = (output1228, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1205 (866, 36) = (output1229, (866, 38)) := by
  rw [output1229_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1228

theorem node1230_conditional
    (child1219 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1195 (866, 36) = (output1219, (866, 36)))
    (child1229 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1205 (866, 36) = (output1229, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1206 (866, 36) = (output1230, (866, 38)) := by
  rw [output1230_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1219 child1229

theorem node1231_conditional
    (child1230 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1206 (866, 36) = (output1230, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1207 (866, 36) = (output1231, (866, 38)) := by
  rw [output1231_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1230

theorem node1232_conditional
    (child1217 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1091 (866, 36) = (output1217, (866, 36)))
    (child1231 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1207 (866, 36) = (output1231, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1208 (866, 36) = (output1232, (866, 38)) := by
  rw [output1232_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1217 child1231

theorem node1233_conditional
    (child1232 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1208 (866, 36) = (output1232, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1209 (866, 36) = (output1233, (866, 38)) := by
  rw [output1233_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1232

theorem node1234_conditional
    (child1211 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 36) = (output1211, (866, 36)))
    (child1233 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1209 (866, 36) = (output1233, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1210 (866, 36) = (output1234, (866, 38)) := by
  rw [output1234_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1211 child1233

theorem node1235_conditional
    (child1234 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1210 (866, 36) = (output1234, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1211 (866, 36) = (output1235, (866, 38)) := by
  rw [output1235_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1234

theorem node1236_conditional
    (child1211 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 36) = (output1211, (866, 36)))
    (child1235 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1211 (866, 36) = (output1235, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1212 (866, 36) = (output1236, (866, 38)) := by
  rw [output1236_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1211 child1235

theorem node1237_conditional
    (child1236 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1212 (866, 36) = (output1236, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1213 (866, 36) = (output1237, (866, 38)) := by
  rw [output1237_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1236

theorem node1238_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1214 (866, 38) = (output1238, (866, 38)) := by
  rw [output1238_def]
  kernel_rfl

theorem node1239_conditional
    (child1238 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1214 (866, 38) = (output1238, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1215 (866, 38) = (output1239, (866, 38)) := by
  rw [output1239_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1238

theorem node1240_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1216 (866, 38) = (output1240, (866, 38)) := by
  rw [output1240_def]
  kernel_rfl

theorem node1241_conditional
    (child1240 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1216 (866, 38) = (output1240, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1217 (866, 38) = (output1241, (866, 38)) := by
  rw [output1241_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1240

theorem node1242_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1218 (866, 38) = (output1242, (866, 38)) := by
  rw [output1242_def]
  kernel_rfl

theorem node1243_conditional
    (child1242 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1218 (866, 38) = (output1242, (866, 38))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1219 (866, 38) = (output1243, (866, 38)) := by
  rw [output1243_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1242

theorem node1244_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1220 (866, 38) = (output1244, (866, 40)) := by
  rw [output1244_def]
  kernel_rfl

theorem node1245_conditional
    (child1244 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1220 (866, 38) = (output1244, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1221 (866, 38) = (output1245, (866, 40)) := by
  rw [output1245_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1244

theorem node1246_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_0 (866, 40) = (output1246, (866, 40)) := by
  rw [output1246_def]
  kernel_rfl

theorem node1247_conditional
    (child1246 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_0 (866, 40) = (output1246, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 40) = (output1247, (866, 40)) := by
  rw [output1247_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1246

theorem node1248_conditional
    (child1245 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1221 (866, 38) = (output1245, (866, 40)))
    (child1247 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 40) = (output1247, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1222 (866, 38) = (output1248, (866, 40)) := by
  rw [output1248_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1245 child1247

theorem node1249_conditional
    (child1248 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1222 (866, 38) = (output1248, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1223 (866, 38) = (output1249, (866, 40)) := by
  rw [output1249_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1248

theorem node1250_conditional
    (child1243 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1219 (866, 38) = (output1243, (866, 38)))
    (child1249 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1223 (866, 38) = (output1249, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1224 (866, 38) = (output1250, (866, 40)) := by
  rw [output1250_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1243 child1249

theorem node1251_conditional
    (child1250 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1224 (866, 38) = (output1250, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1225 (866, 38) = (output1251, (866, 40)) := by
  rw [output1251_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1250

theorem node1252_conditional
    (child1241 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1217 (866, 38) = (output1241, (866, 38)))
    (child1251 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1225 (866, 38) = (output1251, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1226 (866, 38) = (output1252, (866, 40)) := by
  rw [output1252_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1241 child1251

theorem node1253_conditional
    (child1252 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1226 (866, 38) = (output1252, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1227 (866, 38) = (output1253, (866, 40)) := by
  rw [output1253_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1252

theorem node1254_conditional
    (child1239 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1215 (866, 38) = (output1239, (866, 38)))
    (child1253 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1227 (866, 38) = (output1253, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1228 (866, 38) = (output1254, (866, 40)) := by
  rw [output1254_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1239 child1253

theorem node1255_conditional
    (child1254 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1228 (866, 38) = (output1254, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1229 (866, 38) = (output1255, (866, 40)) := by
  rw [output1255_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1254

theorem node1256_conditional
    (child1225 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 38) = (output1225, (866, 38)))
    (child1255 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1229 (866, 38) = (output1255, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1230 (866, 38) = (output1256, (866, 40)) := by
  rw [output1256_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1225 child1255

theorem node1257_conditional
    (child1256 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1230 (866, 38) = (output1256, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1231 (866, 38) = (output1257, (866, 40)) := by
  rw [output1257_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1256

theorem node1258_conditional
    (child1225 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 38) = (output1225, (866, 38)))
    (child1257 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1231 (866, 38) = (output1257, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1232 (866, 38) = (output1258, (866, 40)) := by
  rw [output1258_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1225 child1257

theorem node1259_conditional
    (child1258 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1232 (866, 38) = (output1258, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1233 (866, 38) = (output1259, (866, 40)) := by
  rw [output1259_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1258

theorem node1260_conditional
    (child1237 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1213 (866, 36) = (output1237, (866, 38)))
    (child1259 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1233 (866, 38) = (output1259, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1234 (866, 36) = (output1260, (866, 40)) := by
  rw [output1260_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1237 child1259

theorem node1261_conditional
    (child1260 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1234 (866, 36) = (output1260, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1235 (866, 36) = (output1261, (866, 40)) := by
  rw [output1261_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1260

theorem node1262_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1236 (866, 40) = (output1262, (866, 40)) := by
  rw [output1262_def]
  kernel_rfl

theorem node1263_conditional
    (child1262 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1236 (866, 40) = (output1262, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1237 (866, 40) = (output1263, (866, 40)) := by
  rw [output1263_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1262

theorem node1264_conditional : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1238 (866, 40) = (output1264, (866, 40)) := by
  rw [output1264_def]
  kernel_rfl

theorem node1265_conditional
    (child1264 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1238 (866, 40) = (output1264, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1239 (866, 40) = (output1265, (866, 40)) := by
  rw [output1265_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1264

theorem node1266_conditional
    (child1265 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1239 (866, 40) = (output1265, (866, 40)))
    (child1247 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 40) = (output1247, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1240 (866, 40) = (output1266, (866, 40)) := by
  rw [output1266_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1265 child1247

theorem node1267_conditional
    (child1266 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1240 (866, 40) = (output1266, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1241 (866, 40) = (output1267, (866, 40)) := by
  rw [output1267_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1266

theorem node1268_conditional
    (child1263 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1237 (866, 40) = (output1263, (866, 40)))
    (child1267 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1241 (866, 40) = (output1267, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1242 (866, 40) = (output1268, (866, 40)) := by
  rw [output1268_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1263 child1267

theorem node1269_conditional
    (child1268 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1242 (866, 40) = (output1268, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1243 (866, 40) = (output1269, (866, 40)) := by
  rw [output1269_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1268

theorem node1270_conditional
    (child1261 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1235 (866, 36) = (output1261, (866, 40)))
    (child1269 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1243 (866, 40) = (output1269, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1244 (866, 36) = (output1270, (866, 40)) := by
  rw [output1270_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1261 child1269

theorem node1271_conditional
    (child1270 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1244 (866, 36) = (output1270, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1245 (866, 36) = (output1271, (866, 40)) := by
  rw [output1271_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1270

theorem node1272_conditional
    (child1215 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1193 (866, 34) = (output1215, (866, 36)))
    (child1271 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1245 (866, 36) = (output1271, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1246 (866, 34) = (output1272, (866, 40)) := by
  rw [output1272_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1215 child1271

theorem node1273_conditional
    (child1272 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1246 (866, 34) = (output1272, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1247 (866, 34) = (output1273, (866, 40)) := by
  rw [output1273_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1272

theorem node1274_conditional
    (child1192 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 34) = (output1192, (866, 34)))
    (child1273 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1247 (866, 34) = (output1273, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1248 (866, 34) = (output1274, (866, 40)) := by
  rw [output1274_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1192 child1273

theorem node1275_conditional
    (child1274 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1248 (866, 34) = (output1274, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1249 (866, 34) = (output1275, (866, 40)) := by
  rw [output1275_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1274

theorem node1276_conditional
    (child1192 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 34) = (output1192, (866, 34)))
    (child1275 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1249 (866, 34) = (output1275, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1250 (866, 34) = (output1276, (866, 40)) := by
  rw [output1276_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1192 child1275

theorem node1277_conditional
    (child1276 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1250 (866, 34) = (output1276, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1251 (866, 34) = (output1277, (866, 40)) := by
  rw [output1277_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1276

theorem node1278_conditional
    (child1192 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 34) = (output1192, (866, 34)))
    (child1277 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1251 (866, 34) = (output1277, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1252 (866, 34) = (output1278, (866, 40)) := by
  rw [output1278_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1192 child1277

theorem node1279_conditional
    (child1278 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1252 (866, 34) = (output1278, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1253 (866, 34) = (output1279, (866, 40)) := by
  rw [output1279_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1278

theorem node1280_conditional
    (child1192 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 34) = (output1192, (866, 34)))
    (child1279 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1253 (866, 34) = (output1279, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1254 (866, 34) = (output1280, (866, 40)) := by
  rw [output1280_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1192 child1279

theorem node1281_conditional
    (child1280 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1254 (866, 34) = (output1280, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1255 (866, 34) = (output1281, (866, 40)) := by
  rw [output1281_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1280

theorem node1282_conditional
    (child1205 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1185 (866, 30) = (output1205, (866, 34)))
    (child1281 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1255 (866, 34) = (output1281, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1256 (866, 30) = (output1282, (866, 40)) := by
  rw [output1282_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1205 child1281

theorem node1283_conditional
    (child1071 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_959 (866, 30) = (output1071, (866, 30)))
    (child1282 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1256 (866, 30) = (output1282, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1257 (866, 30) = (output1283, (866, 40)) := by
  rw [output1283_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1071 child1282

theorem node1284_conditional
    (child1037 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 30) = (output1037, (866, 30)))
    (child1283 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1257 (866, 30) = (output1283, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1258 (866, 30) = (output1284, (866, 40)) := by
  rw [output1284_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1037 child1283

theorem node1285_conditional
    (child1069 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1055 (866, 28) = (output1069, (866, 30)))
    (child1284 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1258 (866, 30) = (output1284, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1259 (866, 28) = (output1285, (866, 40)) := by
  rw [output1285_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1069 child1284

theorem node1286_conditional
    (child1031 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1019 (866, 28) = (output1031, (866, 28)))
    (child1285 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1259 (866, 28) = (output1285, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1260 (866, 28) = (output1286, (866, 40)) := by
  rw [output1286_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1031 child1285

theorem node1287_conditional
    (child1015 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 28) = (output1015, (866, 28)))
    (child1286 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1260 (866, 28) = (output1286, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1261 (866, 28) = (output1287, (866, 40)) := by
  rw [output1287_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1015 child1286

theorem node1288_conditional
    (child1029 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1017 (866, 26) = (output1029, (866, 28)))
    (child1287 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1261 (866, 28) = (output1287, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1262 (866, 26) = (output1288, (866, 40)) := by
  rw [output1288_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1029 child1287

theorem node1289_conditional
    (child961 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_951 (866, 24) = (output961, (866, 26)))
    (child1288 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1262 (866, 26) = (output1288, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1263 (866, 24) = (output1289, (866, 40)) := by
  rw [output1289_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child961 child1288

theorem node1290_conditional
    (child907 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 24) = (output907, (866, 24)))
    (child1289 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1263 (866, 24) = (output1289, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1264 (866, 24) = (output1290, (866, 40)) := by
  rw [output1290_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child907 child1289

theorem node1291_conditional
    (child907 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 24) = (output907, (866, 24)))
    (child1290 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1264 (866, 24) = (output1290, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1265 (866, 24) = (output1291, (866, 40)) := by
  rw [output1291_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child907 child1290

theorem node1292_conditional
    (child947 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_937 (866, 24) = (output947, (866, 24)))
    (child1291 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1265 (866, 24) = (output1291, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1266 (866, 24) = (output1292, (866, 40)) := by
  rw [output1292_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child947 child1291

theorem node1293_conditional
    (child911 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_903 (866, 22) = (output911, (866, 24)))
    (child1292 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1266 (866, 24) = (output1292, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1267 (866, 22) = (output1293, (866, 40)) := by
  rw [output1293_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child911 child1292

theorem node1294_conditional
    (child875 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 22) = (output875, (866, 22)))
    (child1293 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1267 (866, 22) = (output1293, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1268 (866, 22) = (output1294, (866, 40)) := by
  rw [output1294_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child875 child1293

theorem node1295_conditional
    (child875 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 22) = (output875, (866, 22)))
    (child1294 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1268 (866, 22) = (output1294, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1269 (866, 22) = (output1295, (866, 40)) := by
  rw [output1295_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child875 child1294

theorem node1296_conditional
    (child901 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_893 (866, 22) = (output901, (866, 22)))
    (child1295 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1269 (866, 22) = (output1295, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1270 (866, 22) = (output1296, (866, 40)) := by
  rw [output1296_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child901 child1295

theorem node1297_conditional
    (child879 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_871 (866, 20) = (output879, (866, 22)))
    (child1296 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1270 (866, 22) = (output1296, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1271 (866, 20) = (output1297, (866, 40)) := by
  rw [output1297_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child879 child1296

theorem node1298_conditional
    (child801 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 20) = (output801, (866, 20)))
    (child1297 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1271 (866, 20) = (output1297, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1272 (866, 20) = (output1298, (866, 40)) := by
  rw [output1298_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child801 child1297

theorem node1299_conditional
    (child801 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 20) = (output801, (866, 20)))
    (child1298 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1272 (866, 20) = (output1298, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1273 (866, 20) = (output1299, (866, 40)) := by
  rw [output1299_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child801 child1298

theorem node1300_conditional
    (child869 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_861 (866, 20) = (output869, (866, 20)))
    (child1299 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1273 (866, 20) = (output1299, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1274 (866, 20) = (output1300, (866, 40)) := by
  rw [output1300_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child869 child1299

theorem node1301_conditional
    (child805 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_797 (866, 18) = (output805, (866, 20)))
    (child1300 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1274 (866, 20) = (output1300, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1275 (866, 18) = (output1301, (866, 40)) := by
  rw [output1301_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child805 child1300

theorem node1302_conditional
    (child427 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 18) = (output427, (866, 18)))
    (child1301 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1275 (866, 18) = (output1301, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1276 (866, 18) = (output1302, (866, 40)) := by
  rw [output1302_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child427 child1301

theorem node1303_conditional
    (child427 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 18) = (output427, (866, 18)))
    (child1302 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1276 (866, 18) = (output1302, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1277 (866, 18) = (output1303, (866, 40)) := by
  rw [output1303_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child427 child1302

theorem node1304_conditional
    (child795 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_787 (866, 18) = (output795, (866, 18)))
    (child1303 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1277 (866, 18) = (output1303, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1278 (866, 18) = (output1304, (866, 40)) := by
  rw [output1304_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child795 child1303

theorem node1305_conditional
    (child725 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_717 (866, 18) = (output725, (866, 18)))
    (child1304 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1278 (866, 18) = (output1304, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1279 (866, 18) = (output1305, (866, 40)) := by
  rw [output1305_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child725 child1304

theorem node1306_conditional
    (child723 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_715 (866, 18) = (output723, (866, 18)))
    (child1305 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1279 (866, 18) = (output1305, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1280 (866, 18) = (output1306, (866, 40)) := by
  rw [output1306_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child723 child1305

theorem node1307_conditional
    (child659 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_651 (866, 18) = (output659, (866, 18)))
    (child1306 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1280 (866, 18) = (output1306, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1281 (866, 18) = (output1307, (866, 40)) := by
  rw [output1307_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child659 child1306

theorem node1308_conditional
    (child657 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_649 (866, 18) = (output657, (866, 18)))
    (child1307 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1281 (866, 18) = (output1307, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1282 (866, 18) = (output1308, (866, 40)) := by
  rw [output1308_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child657 child1307

theorem node1309_conditional
    (child593 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_585 (866, 18) = (output593, (866, 18)))
    (child1308 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1282 (866, 18) = (output1308, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1283 (866, 18) = (output1309, (866, 40)) := by
  rw [output1309_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child593 child1308

theorem node1310_conditional
    (child591 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_583 (866, 18) = (output591, (866, 18)))
    (child1309 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1283 (866, 18) = (output1309, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1284 (866, 18) = (output1310, (866, 40)) := by
  rw [output1310_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child591 child1309

theorem node1311_conditional
    (child527 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_519 (866, 18) = (output527, (866, 18)))
    (child1310 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1284 (866, 18) = (output1310, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1285 (866, 18) = (output1311, (866, 40)) := by
  rw [output1311_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child527 child1310

theorem node1312_conditional
    (child525 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_517 (866, 18) = (output525, (866, 18)))
    (child1311 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1285 (866, 18) = (output1311, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1286 (866, 18) = (output1312, (866, 40)) := by
  rw [output1312_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child525 child1311

theorem node1313_conditional
    (child461 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_453 (866, 16) = (output461, (866, 18)))
    (child1312 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1286 (866, 18) = (output1312, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1287 (866, 16) = (output1313, (866, 40)) := by
  rw [output1313_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child461 child1312

theorem node1314_conditional
    (child419 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_413 (866, 14) = (output419, (866, 16)))
    (child1313 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1287 (866, 16) = (output1313, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1288 (866, 14) = (output1314, (866, 40)) := by
  rw [output1314_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child419 child1313

theorem node1315_conditional
    (child185 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 14) = (output185, (866, 14)))
    (child1314 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1288 (866, 14) = (output1314, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1289 (866, 14) = (output1315, (866, 40)) := by
  rw [output1315_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child185 child1314

theorem node1316_conditional
    (child185 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 14) = (output185, (866, 14)))
    (child1315 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1289 (866, 14) = (output1315, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1290 (866, 14) = (output1316, (866, 40)) := by
  rw [output1316_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child185 child1315

theorem node1317_conditional
    (child409 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_403 (866, 14) = (output409, (866, 14)))
    (child1316 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1290 (866, 14) = (output1316, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1291 (866, 14) = (output1317, (866, 40)) := by
  rw [output1317_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child409 child1316

theorem node1318_conditional
    (child189 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_183 (866, 12) = (output189, (866, 14)))
    (child1317 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1291 (866, 14) = (output1317, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1292 (866, 12) = (output1318, (866, 40)) := by
  rw [output1318_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child189 child1317

theorem node1319_conditional
    (child113 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 12) = (output113, (866, 12)))
    (child1318 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1292 (866, 12) = (output1318, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1293 (866, 12) = (output1319, (866, 40)) := by
  rw [output1319_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child113 child1318

theorem node1320_conditional
    (child113 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 12) = (output113, (866, 12)))
    (child1319 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1293 (866, 12) = (output1319, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1294 (866, 12) = (output1320, (866, 40)) := by
  rw [output1320_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child113 child1319

theorem node1321_conditional
    (child179 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_175 (866, 10) = (output179, (866, 12)))
    (child1320 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1294 (866, 12) = (output1320, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1295 (866, 10) = (output1321, (866, 40)) := by
  rw [output1321_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child179 child1320

theorem node1322_conditional
    (child91 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_89 (866, 8) = (output91, (866, 10)))
    (child1321 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1295 (866, 10) = (output1321, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1296 (866, 8) = (output1322, (866, 40)) := by
  rw [output1322_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child91 child1321

theorem node1323_conditional
    (child77 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 8) = (output77, (866, 8)))
    (child1322 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1296 (866, 8) = (output1322, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1297 (866, 8) = (output1323, (866, 40)) := by
  rw [output1323_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child77 child1322

theorem node1324_conditional
    (child77 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 8) = (output77, (866, 8)))
    (child1323 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1297 (866, 8) = (output1323, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1298 (866, 8) = (output1324, (866, 40)) := by
  rw [output1324_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child77 child1323

theorem node1325_conditional
    (child81 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_79 (866, 6) = (output81, (866, 8)))
    (child1324 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1298 (866, 8) = (output1324, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1299 (866, 6) = (output1325, (866, 40)) := by
  rw [output1325_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child81 child1324

theorem node1326_conditional
    (child23 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 6) = (output23, (866, 6)))
    (child1325 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1299 (866, 6) = (output1325, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1300 (866, 6) = (output1326, (866, 40)) := by
  rw [output1326_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child23 child1325

theorem node1327_conditional
    (child23 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 6) = (output23, (866, 6)))
    (child1326 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1300 (866, 6) = (output1326, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1301 (866, 6) = (output1327, (866, 40)) := by
  rw [output1327_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child23 child1326

theorem node1328_conditional
    (child71 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_71 (866, 4) = (output71, (866, 6)))
    (child1327 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1301 (866, 6) = (output1327, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1302 (866, 4) = (output1328, (866, 40)) := by
  rw [output1328_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child71 child1327

theorem node1329_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_15 (866, 2) = (output15, (866, 4)))
    (child1328 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1302 (866, 4) = (output1328, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1303 (866, 2) = (output1329, (866, 40)) := by
  rw [output1329_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child1328

theorem node1330_conditional
    (child1 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 2) = (output1, (866, 2)))
    (child1329 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1303 (866, 2) = (output1329, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1304 (866, 2) = (output1330, (866, 40)) := by
  rw [output1330_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1 child1329

theorem node1331_conditional
    (child1 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 2) = (output1, (866, 2)))
    (child1330 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1304 (866, 2) = (output1330, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1305 (866, 2) = (output1331, (866, 40)) := by
  rw [output1331_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1 child1330

theorem node1332_conditional
    (child5 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_5 (866, 2) = (output5, (866, 2)))
    (child1331 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1305 (866, 2) = (output1331, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1306 (866, 2) = (output1332, (866, 40)) := by
  rw [output1332_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child5 child1331

theorem node1333_conditional
    (child1 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 2) = (output1, (866, 2)))
    (child1332 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1306 (866, 2) = (output1332, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1307 (866, 2) = (output1333, (866, 40)) := by
  rw [output1333_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1 child1332

theorem node1334_conditional
    (child3 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_3 (866, 2) = (output3, (866, 2)))
    (child1333 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1307 (866, 2) = (output1333, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1308 (866, 2) = (output1334, (866, 40)) := by
  rw [output1334_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3 child1333

theorem node1335_conditional
    (child1 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1 (866, 2) = (output1, (866, 2)))
    (child1334 : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1308 (866, 2) = (output1334, (866, 40))) : Flapjack.LoopToWord.compHOL Word.context802
    Loop.loopBody802_1309 (866, 2) = (output1335, (866, 40)) := by
  rw [output1335_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1 child1334

#print axioms node1335_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints802
