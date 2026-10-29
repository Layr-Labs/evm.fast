import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints798.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints798
theorem node1152_conditional
    (child803 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_755 (862, 42) = (output803, (862, 42)))
    (child1151 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1055 (862, 42) = (output1151, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1056 (862, 42) = (output1152, (862, 58)) := by
  rw [output1152_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child803 child1151

theorem node1153_conditional
    (child1152 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1056 (862, 42) = (output1152, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1057 (862, 42) = (output1153, (862, 58)) := by
  rw [output1153_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1152

theorem node1154_conditional
    (child801 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_753 (862, 42) = (output801, (862, 42)))
    (child1153 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1057 (862, 42) = (output1153, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1058 (862, 42) = (output1154, (862, 58)) := by
  rw [output1154_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child801 child1153

theorem node1155_conditional
    (child1154 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1058 (862, 42) = (output1154, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1059 (862, 42) = (output1155, (862, 58)) := by
  rw [output1155_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1154

theorem node1156_conditional
    (child1155 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1059 (862, 42) = (output1155, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1060 (862, 42) = (output1156, (862, 58)) := by
  rw [output1156_def]
  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context798 (match Loop.loopBody798_1060 with | .loop live _ _ => live | _ => .ln) (match Loop.loopBody798_1060 with | .loop _ _ live => live | _ => .ln) _ _ _ _ child1155
  exact h.trans (by kernel_rfl)

theorem node1157_conditional
    (child799 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_751 (862, 42) = (output799, (862, 42)))
    (child1156 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1060 (862, 42) = (output1156, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1061 (862, 42) = (output1157, (862, 58)) := by
  rw [output1157_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child799 child1156

theorem node1158_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1062 (862, 58) = (output1158, (862, 58)) := by
  rw [output1158_def]
  kernel_rfl

theorem node1159_conditional
    (child1158 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1062 (862, 58) = (output1158, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1063 (862, 58) = (output1159, (862, 58)) := by
  rw [output1159_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1158

theorem node1160_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_34 (862, 58) = (output1160, (862, 58)) := by
  rw [output1160_def]
  kernel_rfl

theorem node1161_conditional
    (child1160 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_34 (862, 58) = (output1160, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_35 (862, 58) = (output1161, (862, 58)) := by
  rw [output1161_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1160

theorem node1162_conditional
    (child1161 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_35 (862, 58) = (output1161, (862, 58)))
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_748 (862, 58) = (output1162, (862, 58)) := by
  rw [output1162_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1161 child1015

theorem node1163_conditional
    (child1162 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_748 (862, 58) = (output1162, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_749 (862, 58) = (output1163, (862, 58)) := by
  rw [output1163_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1162

theorem node1164_conditional
    (child1163 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_749 (862, 58) = (output1163, (862, 58)))
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_750 (862, 58) = (output1164, (862, 58)) := by
  rw [output1164_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1163 child1015

theorem node1165_conditional
    (child1164 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_750 (862, 58) = (output1164, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_751 (862, 58) = (output1165, (862, 58)) := by
  rw [output1165_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1164

theorem node1166_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1064 (862, 58) = (output1166, (862, 58)) := by
  rw [output1166_def]
  kernel_rfl

theorem node1167_conditional
    (child1166 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1064 (862, 58) = (output1166, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1065 (862, 58) = (output1167, (862, 58)) := by
  rw [output1167_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1166

theorem node1168_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1066 (862, 58) = (output1168, (862, 58)) := by
  rw [output1168_def]
  kernel_rfl

theorem node1169_conditional
    (child1168 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1066 (862, 58) = (output1168, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1067 (862, 58) = (output1169, (862, 58)) := by
  rw [output1169_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1168

theorem node1170_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_734 (862, 58) = (output1170, (862, 58)) := by
  rw [output1170_def]
  kernel_rfl

theorem node1171_conditional
    (child1170 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_734 (862, 58) = (output1170, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_735 (862, 58) = (output1171, (862, 58)) := by
  rw [output1171_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1170

theorem node1172_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1068 (862, 58) = (output1172, (862, 58)) := by
  rw [output1172_def]
  kernel_rfl

theorem node1173_conditional
    (child1172 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1068 (862, 58) = (output1172, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1069 (862, 58) = (output1173, (862, 58)) := by
  rw [output1173_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1172

theorem node1174_conditional
    (child1171 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_735 (862, 58) = (output1171, (862, 58)))
    (child1173 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1069 (862, 58) = (output1173, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1070 (862, 58) = (output1174, (862, 58)) := by
  rw [output1174_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1171 child1173

theorem node1175_conditional
    (child1174 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1070 (862, 58) = (output1174, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1071 (862, 58) = (output1175, (862, 58)) := by
  rw [output1175_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1174

theorem node1176_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1072 (862, 58) = (output1176, (862, 58)) := by
  rw [output1176_def]
  kernel_rfl

theorem node1177_conditional
    (child1176 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1072 (862, 58) = (output1176, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1073 (862, 58) = (output1177, (862, 58)) := by
  rw [output1177_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1176

theorem node1178_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_784 (862, 58) = (output1178, (862, 58)) := by
  rw [output1178_def]
  kernel_rfl

theorem node1179_conditional
    (child1178 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_784 (862, 58) = (output1178, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_785 (862, 58) = (output1179, (862, 58)) := by
  rw [output1179_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1178

theorem node1180_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1074 (862, 58) = (output1180, (862, 58)) := by
  rw [output1180_def]
  kernel_rfl

theorem node1181_conditional
    (child1180 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1074 (862, 58) = (output1180, (862, 58))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1075 (862, 58) = (output1181, (862, 58)) := by
  rw [output1181_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1180

theorem node1182_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1076 (862, 58) = (output1182, (862, 60)) := by
  rw [output1182_def]
  kernel_rfl

theorem node1183_conditional
    (child1182 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1076 (862, 58) = (output1182, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1077 (862, 58) = (output1183, (862, 60)) := by
  rw [output1183_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1182

theorem node1184_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 60) = (output1184, (862, 60)) := by
  rw [output1184_def]
  kernel_rfl

theorem node1185_conditional
    (child1184 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 60) = (output1184, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 60) = (output1185, (862, 60)) := by
  rw [output1185_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1184

theorem node1186_conditional
    (child1183 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1077 (862, 58) = (output1183, (862, 60)))
    (child1185 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 60) = (output1185, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1078 (862, 58) = (output1186, (862, 60)) := by
  rw [output1186_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1183 child1185

theorem node1187_conditional
    (child1186 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1078 (862, 58) = (output1186, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1079 (862, 58) = (output1187, (862, 60)) := by
  rw [output1187_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1186

theorem node1188_conditional
    (child1181 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1075 (862, 58) = (output1181, (862, 58)))
    (child1187 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1079 (862, 58) = (output1187, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1080 (862, 58) = (output1188, (862, 60)) := by
  rw [output1188_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1181 child1187

theorem node1189_conditional
    (child1188 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1080 (862, 58) = (output1188, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1081 (862, 58) = (output1189, (862, 60)) := by
  rw [output1189_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1188

theorem node1190_conditional
    (child1179 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_785 (862, 58) = (output1179, (862, 58)))
    (child1189 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1081 (862, 58) = (output1189, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1082 (862, 58) = (output1190, (862, 60)) := by
  rw [output1190_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1179 child1189

theorem node1191_conditional
    (child1190 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1082 (862, 58) = (output1190, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1083 (862, 58) = (output1191, (862, 60)) := by
  rw [output1191_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1190

theorem node1192_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_786 (862, 60) = (output1192, (862, 60)) := by
  rw [output1192_def]
  kernel_rfl

theorem node1193_conditional
    (child1192 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_786 (862, 60) = (output1192, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_787 (862, 60) = (output1193, (862, 60)) := by
  rw [output1193_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1192

theorem node1194_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_96 (862, 60) = (output1194, (862, 60)) := by
  rw [output1194_def]
  kernel_rfl

theorem node1195_conditional
    (child1194 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_96 (862, 60) = (output1194, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_97 (862, 60) = (output1195, (862, 60)) := by
  rw [output1195_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1194

theorem node1196_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_798 (862, 60) = (output1196, (862, 60)) := by
  rw [output1196_def]
  kernel_rfl

theorem node1197_conditional
    (child1196 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_798 (862, 60) = (output1196, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_799 (862, 60) = (output1197, (862, 60)) := by
  rw [output1197_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1196

theorem node1198_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_778 (862, 60) = (output1198, (862, 60)) := by
  rw [output1198_def]
  kernel_rfl

theorem node1199_conditional
    (child1198 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_778 (862, 60) = (output1198, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_779 (862, 60) = (output1199, (862, 60)) := by
  rw [output1199_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1198

theorem node1200_conditional
    (child1197 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_799 (862, 60) = (output1197, (862, 60)))
    (child1199 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_779 (862, 60) = (output1199, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1084 (862, 60) = (output1200, (862, 60)) := by
  rw [output1200_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1197 child1199

theorem node1201_conditional
    (child1200 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1084 (862, 60) = (output1200, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1085 (862, 60) = (output1201, (862, 60)) := by
  rw [output1201_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1200

theorem node1202_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_802 (862, 60) = (output1202, (862, 60)) := by
  rw [output1202_def]
  kernel_rfl

theorem node1203_conditional
    (child1202 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_802 (862, 60) = (output1202, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_803 (862, 60) = (output1203, (862, 60)) := by
  rw [output1203_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1202

theorem node1204_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1072 (862, 60) = (output1204, (862, 60)) := by
  rw [output1204_def]
  kernel_rfl

theorem node1205_conditional
    (child1204 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1072 (862, 60) = (output1204, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1073 (862, 60) = (output1205, (862, 60)) := by
  rw [output1205_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1204

theorem node1206_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_72 (862, 60) = (output1206, (862, 60)) := by
  rw [output1206_def]
  kernel_rfl

theorem node1207_conditional
    (child1206 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_72 (862, 60) = (output1206, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_73 (862, 60) = (output1207, (862, 60)) := by
  rw [output1207_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1206

theorem node1208_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_106 (862, 60) = (output1208, (862, 60)) := by
  rw [output1208_def]
  kernel_rfl

theorem node1209_conditional
    (child1208 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_106 (862, 60) = (output1208, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_107 (862, 60) = (output1209, (862, 60)) := by
  rw [output1209_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1208

theorem node1210_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_826 (862, 60) = (output1210, (862, 60)) := by
  rw [output1210_def]
  kernel_rfl

theorem node1211_conditional
    (child1210 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_826 (862, 60) = (output1210, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_827 (862, 60) = (output1211, (862, 60)) := by
  rw [output1211_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1210

theorem node1212_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_92 (862, 60) = (output1212, (862, 60)) := by
  rw [output1212_def]
  kernel_rfl

theorem node1213_conditional
    (child1212 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_92 (862, 60) = (output1212, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_93 (862, 60) = (output1213, (862, 60)) := by
  rw [output1213_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1212

theorem node1214_conditional
    (child1211 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_827 (862, 60) = (output1211, (862, 60)))
    (child1213 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_93 (862, 60) = (output1213, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1086 (862, 60) = (output1214, (862, 60)) := by
  rw [output1214_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1211 child1213

theorem node1215_conditional
    (child1214 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1086 (862, 60) = (output1214, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1087 (862, 60) = (output1215, (862, 60)) := by
  rw [output1215_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1214

theorem node1216_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1088 (862, 60) = (output1216, (862, 60)) := by
  rw [output1216_def]
  kernel_rfl

theorem node1217_conditional
    (child1216 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1088 (862, 60) = (output1216, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1089 (862, 60) = (output1217, (862, 60)) := by
  rw [output1217_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1216

theorem node1218_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1090 (862, 60) = (output1218, (862, 60)) := by
  rw [output1218_def]
  kernel_rfl

theorem node1219_conditional
    (child1218 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1090 (862, 60) = (output1218, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1091 (862, 60) = (output1219, (862, 60)) := by
  rw [output1219_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1218

theorem node1220_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1092 (862, 60) = (output1220, (862, 60)) := by
  rw [output1220_def]
  kernel_rfl

theorem node1221_conditional
    (child1220 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1092 (862, 60) = (output1220, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1093 (862, 60) = (output1221, (862, 60)) := by
  rw [output1221_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1220

theorem node1222_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1094 (862, 60) = (output1222, (862, 60)) := by
  rw [output1222_def]
  kernel_rfl

theorem node1223_conditional
    (child1222 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1094 (862, 60) = (output1222, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1095 (862, 60) = (output1223, (862, 60)) := by
  rw [output1223_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1222

theorem node1224_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_178 (862, 60) = (output1224, (862, 60)) := by
  rw [output1224_def]
  kernel_rfl

theorem node1225_conditional
    (child1224 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_178 (862, 60) = (output1224, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_179 (862, 60) = (output1225, (862, 60)) := by
  rw [output1225_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1224

theorem node1226_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1096 (862, 60) = (output1226, (862, 60)) := by
  rw [output1226_def]
  kernel_rfl

theorem node1227_conditional
    (child1226 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1096 (862, 60) = (output1226, (862, 60))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1097 (862, 60) = (output1227, (862, 60)) := by
  rw [output1227_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1226

theorem node1228_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1098 (862, 60) = (output1228, (862, 62)) := by
  rw [output1228_def]
  kernel_rfl

theorem node1229_conditional
    (child1228 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1098 (862, 60) = (output1228, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1099 (862, 60) = (output1229, (862, 62)) := by
  rw [output1229_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1228

theorem node1230_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 62) = (output1230, (862, 62)) := by
  rw [output1230_def]
  kernel_rfl

theorem node1231_conditional
    (child1230 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 62) = (output1230, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 62) = (output1231, (862, 62)) := by
  rw [output1231_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1230

theorem node1232_conditional
    (child1229 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1099 (862, 60) = (output1229, (862, 62)))
    (child1231 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 62) = (output1231, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1100 (862, 60) = (output1232, (862, 62)) := by
  rw [output1232_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1229 child1231

theorem node1233_conditional
    (child1232 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1100 (862, 60) = (output1232, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1101 (862, 60) = (output1233, (862, 62)) := by
  rw [output1233_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1232

theorem node1234_conditional
    (child1227 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1097 (862, 60) = (output1227, (862, 60)))
    (child1233 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1101 (862, 60) = (output1233, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1102 (862, 60) = (output1234, (862, 62)) := by
  rw [output1234_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1227 child1233

theorem node1235_conditional
    (child1234 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1102 (862, 60) = (output1234, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1103 (862, 60) = (output1235, (862, 62)) := by
  rw [output1235_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1234

theorem node1236_conditional
    (child1225 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_179 (862, 60) = (output1225, (862, 60)))
    (child1235 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1103 (862, 60) = (output1235, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1104 (862, 60) = (output1236, (862, 62)) := by
  rw [output1236_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1225 child1235

theorem node1237_conditional
    (child1236 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1104 (862, 60) = (output1236, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1105 (862, 60) = (output1237, (862, 62)) := by
  rw [output1237_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1236

theorem node1238_conditional
    (child1223 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1095 (862, 60) = (output1223, (862, 60)))
    (child1237 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1105 (862, 60) = (output1237, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1106 (862, 60) = (output1238, (862, 62)) := by
  rw [output1238_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1223 child1237

theorem node1239_conditional
    (child1238 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1106 (862, 60) = (output1238, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1107 (862, 60) = (output1239, (862, 62)) := by
  rw [output1239_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1238

theorem node1240_conditional
    (child1221 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1093 (862, 60) = (output1221, (862, 60)))
    (child1239 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1107 (862, 60) = (output1239, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1108 (862, 60) = (output1240, (862, 62)) := by
  rw [output1240_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1221 child1239

theorem node1241_conditional
    (child1240 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1108 (862, 60) = (output1240, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1109 (862, 60) = (output1241, (862, 62)) := by
  rw [output1241_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1240

theorem node1242_conditional
    (child1219 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1091 (862, 60) = (output1219, (862, 60)))
    (child1241 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1109 (862, 60) = (output1241, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1110 (862, 60) = (output1242, (862, 62)) := by
  rw [output1242_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1219 child1241

theorem node1243_conditional
    (child1242 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1110 (862, 60) = (output1242, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1111 (862, 60) = (output1243, (862, 62)) := by
  rw [output1243_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1242

theorem node1244_conditional
    (child1185 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 60) = (output1185, (862, 60)))
    (child1243 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1111 (862, 60) = (output1243, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1112 (862, 60) = (output1244, (862, 62)) := by
  rw [output1244_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1185 child1243

theorem node1245_conditional
    (child1244 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1112 (862, 60) = (output1244, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1113 (862, 60) = (output1245, (862, 62)) := by
  rw [output1245_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1244

theorem node1246_conditional
    (child1185 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 60) = (output1185, (862, 60)))
    (child1245 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1113 (862, 60) = (output1245, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1114 (862, 60) = (output1246, (862, 62)) := by
  rw [output1246_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1185 child1245

theorem node1247_conditional
    (child1246 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1114 (862, 60) = (output1246, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1115 (862, 60) = (output1247, (862, 62)) := by
  rw [output1247_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1246

theorem node1248_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1116 (862, 62) = (output1248, (862, 62)) := by
  rw [output1248_def]
  kernel_rfl

theorem node1249_conditional
    (child1248 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1116 (862, 62) = (output1248, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1117 (862, 62) = (output1249, (862, 62)) := by
  rw [output1249_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1248

theorem node1250_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1118 (862, 62) = (output1250, (862, 62)) := by
  rw [output1250_def]
  kernel_rfl

theorem node1251_conditional
    (child1250 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1118 (862, 62) = (output1250, (862, 62))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1119 (862, 62) = (output1251, (862, 62)) := by
  rw [output1251_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1250

theorem node1252_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1120 (862, 62) = (output1252, (862, 64)) := by
  rw [output1252_def]
  kernel_rfl

theorem node1253_conditional
    (child1252 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1120 (862, 62) = (output1252, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1121 (862, 62) = (output1253, (862, 64)) := by
  rw [output1253_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1252

theorem node1254_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 64) = (output1254, (862, 64)) := by
  rw [output1254_def]
  kernel_rfl

theorem node1255_conditional
    (child1254 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 64) = (output1254, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 64) = (output1255, (862, 64)) := by
  rw [output1255_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1254

theorem node1256_conditional
    (child1253 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1121 (862, 62) = (output1253, (862, 64)))
    (child1255 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 64) = (output1255, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1122 (862, 62) = (output1256, (862, 64)) := by
  rw [output1256_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1253 child1255

theorem node1257_conditional
    (child1256 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1122 (862, 62) = (output1256, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1123 (862, 62) = (output1257, (862, 64)) := by
  rw [output1257_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1256

theorem node1258_conditional
    (child1251 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1119 (862, 62) = (output1251, (862, 62)))
    (child1257 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1123 (862, 62) = (output1257, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1124 (862, 62) = (output1258, (862, 64)) := by
  rw [output1258_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1251 child1257

theorem node1259_conditional
    (child1258 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1124 (862, 62) = (output1258, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1125 (862, 62) = (output1259, (862, 64)) := by
  rw [output1259_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1258

theorem node1260_conditional
    (child1249 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1117 (862, 62) = (output1249, (862, 62)))
    (child1259 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1125 (862, 62) = (output1259, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1126 (862, 62) = (output1260, (862, 64)) := by
  rw [output1260_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1249 child1259

theorem node1261_conditional
    (child1260 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1126 (862, 62) = (output1260, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1127 (862, 62) = (output1261, (862, 64)) := by
  rw [output1261_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1260

theorem node1262_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1128 (862, 64) = (output1262, (862, 64)) := by
  rw [output1262_def]
  kernel_rfl

theorem node1263_conditional
    (child1262 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1128 (862, 64) = (output1262, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1129 (862, 64) = (output1263, (862, 64)) := by
  rw [output1263_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1262

theorem node1264_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1096 (862, 64) = (output1264, (862, 64)) := by
  rw [output1264_def]
  kernel_rfl

theorem node1265_conditional
    (child1264 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1096 (862, 64) = (output1264, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1097 (862, 64) = (output1265, (862, 64)) := by
  rw [output1265_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1264

theorem node1266_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_176 (862, 64) = (output1266, (862, 64)) := by
  rw [output1266_def]
  kernel_rfl

theorem node1267_conditional
    (child1266 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_176 (862, 64) = (output1266, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_177 (862, 64) = (output1267, (862, 64)) := by
  rw [output1267_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1266

theorem node1268_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_178 (862, 64) = (output1268, (862, 64)) := by
  rw [output1268_def]
  kernel_rfl

theorem node1269_conditional
    (child1268 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_178 (862, 64) = (output1268, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_179 (862, 64) = (output1269, (862, 64)) := by
  rw [output1269_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1268

theorem node1270_conditional
    (child1267 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_177 (862, 64) = (output1267, (862, 64)))
    (child1269 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_179 (862, 64) = (output1269, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1130 (862, 64) = (output1270, (862, 64)) := by
  rw [output1270_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1267 child1269

theorem node1271_conditional
    (child1270 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1130 (862, 64) = (output1270, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1131 (862, 64) = (output1271, (862, 64)) := by
  rw [output1271_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1270

theorem node1272_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_182 (862, 64) = (output1272, (862, 64)) := by
  rw [output1272_def]
  kernel_rfl

theorem node1273_conditional
    (child1272 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_182 (862, 64) = (output1272, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_183 (862, 64) = (output1273, (862, 64)) := by
  rw [output1273_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1272

theorem node1274_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1132 (862, 64) = (output1274, (862, 64)) := by
  rw [output1274_def]
  kernel_rfl

theorem node1275_conditional
    (child1274 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1132 (862, 64) = (output1274, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1133 (862, 64) = (output1275, (862, 64)) := by
  rw [output1275_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1274

theorem node1276_conditional
    (child1275 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1133 (862, 64) = (output1275, (862, 64)))
    (child1255 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 64) = (output1255, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1134 (862, 64) = (output1276, (862, 64)) := by
  rw [output1276_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1275 child1255

theorem node1277_conditional
    (child1276 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1134 (862, 64) = (output1276, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1135 (862, 64) = (output1277, (862, 64)) := by
  rw [output1277_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1276

theorem node1278_conditional
    (child1277 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1135 (862, 64) = (output1277, (862, 64)))
    (child1255 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 64) = (output1255, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1136 (862, 64) = (output1278, (862, 64)) := by
  rw [output1278_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1277 child1255

theorem node1279_conditional
    (child1278 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1136 (862, 64) = (output1278, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1137 (862, 64) = (output1279, (862, 64)) := by
  rw [output1279_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1278

theorem node1280_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1138 (862, 64) = (output1280, (862, 64)) := by
  rw [output1280_def]
  kernel_rfl

theorem node1281_conditional
    (child1280 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1138 (862, 64) = (output1280, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1139 (862, 64) = (output1281, (862, 64)) := by
  rw [output1281_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1280

theorem node1282_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1140 (862, 64) = (output1282, (862, 64)) := by
  rw [output1282_def]
  kernel_rfl

theorem node1283_conditional
    (child1282 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1140 (862, 64) = (output1282, (862, 64))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1141 (862, 64) = (output1283, (862, 64)) := by
  rw [output1283_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1282

theorem node1284_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1142 (862, 64) = (output1284, (862, 66)) := by
  rw [output1284_def]
  kernel_rfl

theorem node1285_conditional
    (child1284 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1142 (862, 64) = (output1284, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1143 (862, 64) = (output1285, (862, 66)) := by
  rw [output1285_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1284

theorem node1286_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 66) = (output1286, (862, 66)) := by
  rw [output1286_def]
  kernel_rfl

theorem node1287_conditional
    (child1286 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 66) = (output1286, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 66) = (output1287, (862, 66)) := by
  rw [output1287_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1286

theorem node1288_conditional
    (child1285 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1143 (862, 64) = (output1285, (862, 66)))
    (child1287 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 66) = (output1287, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1144 (862, 64) = (output1288, (862, 66)) := by
  rw [output1288_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1285 child1287

theorem node1289_conditional
    (child1288 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1144 (862, 64) = (output1288, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1145 (862, 64) = (output1289, (862, 66)) := by
  rw [output1289_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1288

theorem node1290_conditional
    (child1283 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1141 (862, 64) = (output1283, (862, 64)))
    (child1289 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1145 (862, 64) = (output1289, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1146 (862, 64) = (output1290, (862, 66)) := by
  rw [output1290_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1283 child1289

theorem node1291_conditional
    (child1290 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1146 (862, 64) = (output1290, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1147 (862, 64) = (output1291, (862, 66)) := by
  rw [output1291_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1290

theorem node1292_conditional
    (child1281 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1139 (862, 64) = (output1281, (862, 64)))
    (child1291 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1147 (862, 64) = (output1291, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1148 (862, 64) = (output1292, (862, 66)) := by
  rw [output1292_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1281 child1291

theorem node1293_conditional
    (child1292 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1148 (862, 64) = (output1292, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1149 (862, 64) = (output1293, (862, 66)) := by
  rw [output1293_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1292

theorem node1294_conditional
    (child1279 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1137 (862, 64) = (output1279, (862, 64)))
    (child1293 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1149 (862, 64) = (output1293, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1150 (862, 64) = (output1294, (862, 66)) := by
  rw [output1294_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1279 child1293

theorem node1295_conditional
    (child1294 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1150 (862, 64) = (output1294, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1151 (862, 64) = (output1295, (862, 66)) := by
  rw [output1295_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1294

theorem node1296_conditional
    (child1295 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1151 (862, 64) = (output1295, (862, 66)))
    (child1287 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 66) = (output1287, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1152 (862, 64) = (output1296, (862, 66)) := by
  rw [output1296_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1295 child1287

theorem node1297_conditional
    (child1296 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1152 (862, 64) = (output1296, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1153 (862, 64) = (output1297, (862, 66)) := by
  rw [output1297_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1296

theorem node1298_conditional
    (child1273 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_183 (862, 64) = (output1273, (862, 64)))
    (child1297 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1153 (862, 64) = (output1297, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1154 (862, 64) = (output1298, (862, 66)) := by
  rw [output1298_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1273 child1297

theorem node1299_conditional
    (child1298 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1154 (862, 64) = (output1298, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1155 (862, 64) = (output1299, (862, 66)) := by
  rw [output1299_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1298

theorem node1300_conditional
    (child1271 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1131 (862, 64) = (output1271, (862, 64)))
    (child1299 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1155 (862, 64) = (output1299, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1156 (862, 64) = (output1300, (862, 66)) := by
  rw [output1300_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1271 child1299

theorem node1301_conditional
    (child1300 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1156 (862, 64) = (output1300, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1157 (862, 64) = (output1301, (862, 66)) := by
  rw [output1301_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1300

theorem node1302_conditional
    (child1265 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1097 (862, 64) = (output1265, (862, 64)))
    (child1301 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1157 (862, 64) = (output1301, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1158 (862, 64) = (output1302, (862, 66)) := by
  rw [output1302_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1265 child1301

theorem node1303_conditional
    (child1302 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1158 (862, 64) = (output1302, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1159 (862, 64) = (output1303, (862, 66)) := by
  rw [output1303_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1302

theorem node1304_conditional
    (child1263 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1129 (862, 64) = (output1263, (862, 64)))
    (child1303 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1159 (862, 64) = (output1303, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1160 (862, 64) = (output1304, (862, 66)) := by
  rw [output1304_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1263 child1303

theorem node1305_conditional
    (child1304 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1160 (862, 64) = (output1304, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1161 (862, 64) = (output1305, (862, 66)) := by
  rw [output1305_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1304

theorem node1306_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1162 (862, 66) = (output1306, (862, 66)) := by
  rw [output1306_def]
  kernel_rfl

theorem node1307_conditional
    (child1306 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1162 (862, 66) = (output1306, (862, 66))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1163 (862, 66) = (output1307, (862, 66)) := by
  rw [output1307_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1306

theorem node1308_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1164 (862, 66) = (output1308, (862, 68)) := by
  rw [output1308_def]
  kernel_rfl

theorem node1309_conditional
    (child1308 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1164 (862, 66) = (output1308, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1165 (862, 66) = (output1309, (862, 68)) := by
  rw [output1309_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1308

theorem node1310_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 68) = (output1310, (862, 68)) := by
  rw [output1310_def]
  kernel_rfl

theorem node1311_conditional
    (child1310 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 68) = (output1310, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 68) = (output1311, (862, 68)) := by
  rw [output1311_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1310

theorem node1312_conditional
    (child1309 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1165 (862, 66) = (output1309, (862, 68)))
    (child1311 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 68) = (output1311, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1166 (862, 66) = (output1312, (862, 68)) := by
  rw [output1312_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1309 child1311

theorem node1313_conditional
    (child1312 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1166 (862, 66) = (output1312, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1167 (862, 66) = (output1313, (862, 68)) := by
  rw [output1313_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1312

theorem node1314_conditional
    (child1307 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1163 (862, 66) = (output1307, (862, 66)))
    (child1313 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1167 (862, 66) = (output1313, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1168 (862, 66) = (output1314, (862, 68)) := by
  rw [output1314_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1307 child1313

theorem node1315_conditional
    (child1314 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1168 (862, 66) = (output1314, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1169 (862, 66) = (output1315, (862, 68)) := by
  rw [output1315_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1314

theorem node1316_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1170 (862, 68) = (output1316, (862, 68)) := by
  rw [output1316_def]
  kernel_rfl

theorem node1317_conditional
    (child1316 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1170 (862, 68) = (output1316, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1171 (862, 68) = (output1317, (862, 68)) := by
  rw [output1317_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1316

theorem node1318_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1172 (862, 68) = (output1318, (862, 68)) := by
  rw [output1318_def]
  kernel_rfl

theorem node1319_conditional
    (child1318 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1172 (862, 68) = (output1318, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1173 (862, 68) = (output1319, (862, 68)) := by
  rw [output1319_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1318

theorem node1320_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1174 (862, 68) = (output1320, (862, 68)) := by
  rw [output1320_def]
  kernel_rfl

theorem node1321_conditional
    (child1320 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1174 (862, 68) = (output1320, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1175 (862, 68) = (output1321, (862, 68)) := by
  rw [output1321_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1320

theorem node1322_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1176 (862, 68) = (output1322, (862, 68)) := by
  rw [output1322_def]
  kernel_rfl

theorem node1323_conditional
    (child1322 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1176 (862, 68) = (output1322, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1177 (862, 68) = (output1323, (862, 68)) := by
  rw [output1323_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1322

theorem node1324_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1178 (862, 68) = (output1324, (862, 68)) := by
  rw [output1324_def]
  kernel_rfl

theorem node1325_conditional
    (child1324 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1178 (862, 68) = (output1324, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1179 (862, 68) = (output1325, (862, 68)) := by
  rw [output1325_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1324

theorem node1326_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1180 (862, 68) = (output1326, (862, 68)) := by
  rw [output1326_def]
  kernel_rfl

theorem node1327_conditional
    (child1326 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1180 (862, 68) = (output1326, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1181 (862, 68) = (output1327, (862, 68)) := by
  rw [output1327_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1326

theorem node1328_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1182 (862, 68) = (output1328, (862, 68)) := by
  rw [output1328_def]
  kernel_rfl

theorem node1329_conditional
    (child1328 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1182 (862, 68) = (output1328, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1183 (862, 68) = (output1329, (862, 68)) := by
  rw [output1329_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1328

theorem node1330_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1184 (862, 68) = (output1330, (862, 68)) := by
  rw [output1330_def]
  kernel_rfl

theorem node1331_conditional
    (child1330 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1184 (862, 68) = (output1330, (862, 68))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1185 (862, 68) = (output1331, (862, 68)) := by
  rw [output1331_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1330

theorem node1332_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1186 (862, 68) = (output1332, (862, 70)) := by
  rw [output1332_def]
  kernel_rfl

theorem node1333_conditional
    (child1332 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1186 (862, 68) = (output1332, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1187 (862, 68) = (output1333, (862, 70)) := by
  rw [output1333_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1332

theorem node1334_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 70) = (output1334, (862, 70)) := by
  rw [output1334_def]
  kernel_rfl

theorem node1335_conditional
    (child1334 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 70) = (output1334, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 70) = (output1335, (862, 70)) := by
  rw [output1335_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1334

theorem node1336_conditional
    (child1333 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1187 (862, 68) = (output1333, (862, 70)))
    (child1335 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 70) = (output1335, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1188 (862, 68) = (output1336, (862, 70)) := by
  rw [output1336_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1333 child1335

theorem node1337_conditional
    (child1336 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1188 (862, 68) = (output1336, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1189 (862, 68) = (output1337, (862, 70)) := by
  rw [output1337_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1336

theorem node1338_conditional
    (child1331 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1185 (862, 68) = (output1331, (862, 68)))
    (child1337 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1189 (862, 68) = (output1337, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1190 (862, 68) = (output1338, (862, 70)) := by
  rw [output1338_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1331 child1337

theorem node1339_conditional
    (child1338 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1190 (862, 68) = (output1338, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1191 (862, 68) = (output1339, (862, 70)) := by
  rw [output1339_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1338

theorem node1340_conditional
    (child1329 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1183 (862, 68) = (output1329, (862, 68)))
    (child1339 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1191 (862, 68) = (output1339, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1192 (862, 68) = (output1340, (862, 70)) := by
  rw [output1340_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1329 child1339

theorem node1341_conditional
    (child1340 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1192 (862, 68) = (output1340, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1193 (862, 68) = (output1341, (862, 70)) := by
  rw [output1341_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1340

theorem node1342_conditional
    (child1327 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1181 (862, 68) = (output1327, (862, 68)))
    (child1341 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1193 (862, 68) = (output1341, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1194 (862, 68) = (output1342, (862, 70)) := by
  rw [output1342_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1327 child1341

theorem node1343_conditional
    (child1342 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1194 (862, 68) = (output1342, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1195 (862, 68) = (output1343, (862, 70)) := by
  rw [output1343_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1342

theorem node1344_conditional
    (child1325 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1179 (862, 68) = (output1325, (862, 68)))
    (child1343 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1195 (862, 68) = (output1343, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1196 (862, 68) = (output1344, (862, 70)) := by
  rw [output1344_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1325 child1343

theorem node1345_conditional
    (child1344 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1196 (862, 68) = (output1344, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1197 (862, 68) = (output1345, (862, 70)) := by
  rw [output1345_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1344

theorem node1346_conditional
    (child1323 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1177 (862, 68) = (output1323, (862, 68)))
    (child1345 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1197 (862, 68) = (output1345, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1198 (862, 68) = (output1346, (862, 70)) := by
  rw [output1346_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1323 child1345

theorem node1347_conditional
    (child1346 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1198 (862, 68) = (output1346, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1199 (862, 68) = (output1347, (862, 70)) := by
  rw [output1347_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1346

theorem node1348_conditional
    (child1321 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1175 (862, 68) = (output1321, (862, 68)))
    (child1347 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1199 (862, 68) = (output1347, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1200 (862, 68) = (output1348, (862, 70)) := by
  rw [output1348_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1321 child1347

theorem node1349_conditional
    (child1348 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1200 (862, 68) = (output1348, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1201 (862, 68) = (output1349, (862, 70)) := by
  rw [output1349_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1348

theorem node1350_conditional
    (child1319 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1173 (862, 68) = (output1319, (862, 68)))
    (child1349 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1201 (862, 68) = (output1349, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1202 (862, 68) = (output1350, (862, 70)) := by
  rw [output1350_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1319 child1349

theorem node1351_conditional
    (child1350 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1202 (862, 68) = (output1350, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1203 (862, 68) = (output1351, (862, 70)) := by
  rw [output1351_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1350

theorem node1352_conditional
    (child1317 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1171 (862, 68) = (output1317, (862, 68)))
    (child1351 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1203 (862, 68) = (output1351, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1204 (862, 68) = (output1352, (862, 70)) := by
  rw [output1352_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1317 child1351

theorem node1353_conditional
    (child1352 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1204 (862, 68) = (output1352, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1205 (862, 68) = (output1353, (862, 70)) := by
  rw [output1353_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1352

theorem node1354_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1206 (862, 70) = (output1354, (862, 70)) := by
  rw [output1354_def]
  kernel_rfl

theorem node1355_conditional
    (child1354 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1206 (862, 70) = (output1354, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1207 (862, 70) = (output1355, (862, 70)) := by
  rw [output1355_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1354

theorem node1356_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1208 (862, 70) = (output1356, (862, 70)) := by
  rw [output1356_def]
  kernel_rfl

theorem node1357_conditional
    (child1356 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1208 (862, 70) = (output1356, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1209 (862, 70) = (output1357, (862, 70)) := by
  rw [output1357_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1356

theorem node1358_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1210 (862, 70) = (output1358, (862, 70)) := by
  rw [output1358_def]
  kernel_rfl

theorem node1359_conditional
    (child1358 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1210 (862, 70) = (output1358, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1211 (862, 70) = (output1359, (862, 70)) := by
  rw [output1359_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1358

theorem node1360_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_202 (862, 70) = (output1360, (862, 70)) := by
  rw [output1360_def]
  kernel_rfl

theorem node1361_conditional
    (child1360 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_202 (862, 70) = (output1360, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_203 (862, 70) = (output1361, (862, 70)) := by
  rw [output1361_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1360

theorem node1362_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1212 (862, 70) = (output1362, (862, 70)) := by
  rw [output1362_def]
  kernel_rfl

theorem node1363_conditional
    (child1362 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1212 (862, 70) = (output1362, (862, 70))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1213 (862, 70) = (output1363, (862, 70)) := by
  rw [output1363_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1362

theorem node1364_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1216 (862, 70) = (output1364, (862, 72)) := by
  rw [output1364_def]
  kernel_rfl

theorem node1365_conditional
    (child1364 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1216 (862, 70) = (output1364, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1217 (862, 70) = (output1365, (862, 72)) := by
  rw [output1365_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1364

theorem node1366_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 72) = (output1366, (862, 72)) := by
  rw [output1366_def]
  kernel_rfl

theorem node1367_conditional
    (child1366 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 72) = (output1366, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72)) := by
  rw [output1367_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1366

theorem node1368_conditional
    (child1365 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1217 (862, 70) = (output1365, (862, 72)))
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1218 (862, 70) = (output1368, (862, 72)) := by
  rw [output1368_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1365 child1367

theorem node1369_conditional
    (child1368 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1218 (862, 70) = (output1368, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1219 (862, 70) = (output1369, (862, 72)) := by
  rw [output1369_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1368

theorem node1370_conditional
    (child1363 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1213 (862, 70) = (output1363, (862, 70)))
    (child1369 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1219 (862, 70) = (output1369, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1220 (862, 70) = (output1370, (862, 72)) := by
  rw [output1370_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1363 child1369

theorem node1371_conditional
    (child1370 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1220 (862, 70) = (output1370, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1221 (862, 70) = (output1371, (862, 72)) := by
  rw [output1371_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1370

theorem node1372_conditional
    (child1361 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_203 (862, 70) = (output1361, (862, 70)))
    (child1371 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1221 (862, 70) = (output1371, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1222 (862, 70) = (output1372, (862, 72)) := by
  rw [output1372_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1361 child1371

theorem node1373_conditional
    (child1372 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1222 (862, 70) = (output1372, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1223 (862, 70) = (output1373, (862, 72)) := by
  rw [output1373_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1372

theorem node1374_conditional
    (child1359 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1211 (862, 70) = (output1359, (862, 70)))
    (child1373 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1223 (862, 70) = (output1373, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1224 (862, 70) = (output1374, (862, 72)) := by
  rw [output1374_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1359 child1373

theorem node1375_conditional
    (child1374 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1224 (862, 70) = (output1374, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1225 (862, 70) = (output1375, (862, 72)) := by
  rw [output1375_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1374

theorem node1376_conditional
    (child1357 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1209 (862, 70) = (output1357, (862, 70)))
    (child1375 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1225 (862, 70) = (output1375, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1226 (862, 70) = (output1376, (862, 72)) := by
  rw [output1376_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1357 child1375

theorem node1377_conditional
    (child1376 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1226 (862, 70) = (output1376, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1227 (862, 70) = (output1377, (862, 72)) := by
  rw [output1377_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1376

theorem node1378_conditional
    (child1355 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1207 (862, 70) = (output1355, (862, 70)))
    (child1377 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1227 (862, 70) = (output1377, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1228 (862, 70) = (output1378, (862, 72)) := by
  rw [output1378_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1355 child1377

theorem node1379_conditional
    (child1378 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1228 (862, 70) = (output1378, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1229 (862, 70) = (output1379, (862, 72)) := by
  rw [output1379_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1378

theorem node1380_conditional
    (child1335 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 70) = (output1335, (862, 70)))
    (child1379 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1229 (862, 70) = (output1379, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1230 (862, 70) = (output1380, (862, 72)) := by
  rw [output1380_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1335 child1379

theorem node1381_conditional
    (child1380 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1230 (862, 70) = (output1380, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1231 (862, 70) = (output1381, (862, 72)) := by
  rw [output1381_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1380

theorem node1382_conditional
    (child1335 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 70) = (output1335, (862, 70)))
    (child1381 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1231 (862, 70) = (output1381, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1232 (862, 70) = (output1382, (862, 72)) := by
  rw [output1382_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1335 child1381

theorem node1383_conditional
    (child1382 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1232 (862, 70) = (output1382, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1233 (862, 70) = (output1383, (862, 72)) := by
  rw [output1383_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1382

theorem node1384_conditional
    (child1353 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1205 (862, 68) = (output1353, (862, 70)))
    (child1383 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1233 (862, 70) = (output1383, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1234 (862, 68) = (output1384, (862, 72)) := by
  rw [output1384_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1353 child1383

theorem node1385_conditional
    (child1384 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1234 (862, 68) = (output1384, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1235 (862, 68) = (output1385, (862, 72)) := by
  rw [output1385_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1384

theorem node1386_conditional
    (child1311 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 68) = (output1311, (862, 68)))
    (child1385 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1235 (862, 68) = (output1385, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1236 (862, 68) = (output1386, (862, 72)) := by
  rw [output1386_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1311 child1385

theorem node1387_conditional
    (child1386 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1236 (862, 68) = (output1386, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1237 (862, 68) = (output1387, (862, 72)) := by
  rw [output1387_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1386

theorem node1388_conditional
    (child1311 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 68) = (output1311, (862, 68)))
    (child1387 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1237 (862, 68) = (output1387, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1238 (862, 68) = (output1388, (862, 72)) := by
  rw [output1388_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1311 child1387

theorem node1389_conditional
    (child1388 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1238 (862, 68) = (output1388, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1239 (862, 68) = (output1389, (862, 72)) := by
  rw [output1389_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1388

theorem node1390_conditional
    (child1315 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1169 (862, 66) = (output1315, (862, 68)))
    (child1389 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1239 (862, 68) = (output1389, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1240 (862, 66) = (output1390, (862, 72)) := by
  rw [output1390_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1315 child1389

theorem node1391_conditional
    (child1390 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1240 (862, 66) = (output1390, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1241 (862, 66) = (output1391, (862, 72)) := by
  rw [output1391_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1390

theorem node1392_conditional
    (child1287 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 66) = (output1287, (862, 66)))
    (child1391 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1241 (862, 66) = (output1391, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1242 (862, 66) = (output1392, (862, 72)) := by
  rw [output1392_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1287 child1391

theorem node1393_conditional
    (child1392 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1242 (862, 66) = (output1392, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1243 (862, 66) = (output1393, (862, 72)) := by
  rw [output1393_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1392

theorem node1394_conditional
    (child1287 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 66) = (output1287, (862, 66)))
    (child1393 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1243 (862, 66) = (output1393, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1244 (862, 66) = (output1394, (862, 72)) := by
  rw [output1394_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1287 child1393

theorem node1395_conditional
    (child1394 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1244 (862, 66) = (output1394, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1245 (862, 66) = (output1395, (862, 72)) := by
  rw [output1395_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1394

theorem node1396_conditional
    (child1305 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1161 (862, 64) = (output1305, (862, 66)))
    (child1395 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1245 (862, 66) = (output1395, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1246 (862, 64) = (output1396, (862, 72)) := by
  rw [output1396_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1305 child1395

theorem node1397_conditional
    (child1396 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1246 (862, 64) = (output1396, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1247 (862, 64) = (output1397, (862, 72)) := by
  rw [output1397_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1396

theorem node1398_conditional
    (child1255 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 64) = (output1255, (862, 64)))
    (child1397 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1247 (862, 64) = (output1397, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1248 (862, 64) = (output1398, (862, 72)) := by
  rw [output1398_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1255 child1397

theorem node1399_conditional
    (child1398 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1248 (862, 64) = (output1398, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1249 (862, 64) = (output1399, (862, 72)) := by
  rw [output1399_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1398

theorem node1400_conditional
    (child1255 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 64) = (output1255, (862, 64)))
    (child1399 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1249 (862, 64) = (output1399, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1250 (862, 64) = (output1400, (862, 72)) := by
  rw [output1400_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1255 child1399

theorem node1401_conditional
    (child1400 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1250 (862, 64) = (output1400, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1251 (862, 64) = (output1401, (862, 72)) := by
  rw [output1401_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1400

theorem node1402_conditional
    (child1261 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1127 (862, 62) = (output1261, (862, 64)))
    (child1401 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1251 (862, 64) = (output1401, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1252 (862, 62) = (output1402, (862, 72)) := by
  rw [output1402_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1261 child1401

theorem node1403_conditional
    (child1402 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1252 (862, 62) = (output1402, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1253 (862, 62) = (output1403, (862, 72)) := by
  rw [output1403_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1402

theorem node1404_conditional
    (child1231 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 62) = (output1231, (862, 62)))
    (child1403 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1253 (862, 62) = (output1403, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1254 (862, 62) = (output1404, (862, 72)) := by
  rw [output1404_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1231 child1403

theorem node1405_conditional
    (child1404 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1254 (862, 62) = (output1404, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1255 (862, 62) = (output1405, (862, 72)) := by
  rw [output1405_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1404

theorem node1406_conditional
    (child1231 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 62) = (output1231, (862, 62)))
    (child1405 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1255 (862, 62) = (output1405, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1256 (862, 62) = (output1406, (862, 72)) := by
  rw [output1406_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1231 child1405

theorem node1407_conditional
    (child1406 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1256 (862, 62) = (output1406, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1257 (862, 62) = (output1407, (862, 72)) := by
  rw [output1407_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1406

theorem node1408_conditional
    (child1231 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 62) = (output1231, (862, 62)))
    (child1407 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1257 (862, 62) = (output1407, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1258 (862, 62) = (output1408, (862, 72)) := by
  rw [output1408_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1231 child1407

theorem node1409_conditional
    (child1408 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1258 (862, 62) = (output1408, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1259 (862, 62) = (output1409, (862, 72)) := by
  rw [output1409_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1408

theorem node1410_conditional
    (child1231 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 62) = (output1231, (862, 62)))
    (child1409 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1259 (862, 62) = (output1409, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1260 (862, 62) = (output1410, (862, 72)) := by
  rw [output1410_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1231 child1409

theorem node1411_conditional
    (child1410 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1260 (862, 62) = (output1410, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1261 (862, 62) = (output1411, (862, 72)) := by
  rw [output1411_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1410

theorem node1412_conditional
    (child1247 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1115 (862, 60) = (output1247, (862, 62)))
    (child1411 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1261 (862, 62) = (output1411, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1262 (862, 60) = (output1412, (862, 72)) := by
  rw [output1412_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1247 child1411

theorem node1413_conditional
    (child1412 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1262 (862, 60) = (output1412, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1263 (862, 60) = (output1413, (862, 72)) := by
  rw [output1413_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1412

theorem node1414_conditional
    (child1413 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1263 (862, 60) = (output1413, (862, 72)))
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1264 (862, 60) = (output1414, (862, 72)) := by
  rw [output1414_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1413 child1367

theorem node1415_conditional
    (child1414 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1264 (862, 60) = (output1414, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1265 (862, 60) = (output1415, (862, 72)) := by
  rw [output1415_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1414

theorem node1416_conditional
    (child1217 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1089 (862, 60) = (output1217, (862, 60)))
    (child1415 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1265 (862, 60) = (output1415, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1266 (862, 60) = (output1416, (862, 72)) := by
  rw [output1416_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1217 child1415

theorem node1417_conditional
    (child1416 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1266 (862, 60) = (output1416, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1267 (862, 60) = (output1417, (862, 72)) := by
  rw [output1417_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1416

theorem node1418_conditional
    (child1215 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1087 (862, 60) = (output1215, (862, 60)))
    (child1417 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1267 (862, 60) = (output1417, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1268 (862, 60) = (output1418, (862, 72)) := by
  rw [output1418_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1215 child1417

theorem node1419_conditional
    (child1418 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1268 (862, 60) = (output1418, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1269 (862, 60) = (output1419, (862, 72)) := by
  rw [output1419_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1418

theorem node1420_conditional
    (child1209 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_107 (862, 60) = (output1209, (862, 60)))
    (child1419 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1269 (862, 60) = (output1419, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1270 (862, 60) = (output1420, (862, 72)) := by
  rw [output1420_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1209 child1419

theorem node1421_conditional
    (child1420 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1270 (862, 60) = (output1420, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1271 (862, 60) = (output1421, (862, 72)) := by
  rw [output1421_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1420

theorem node1422_conditional
    (child1203 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_803 (862, 60) = (output1203, (862, 60)))
    (child1421 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1271 (862, 60) = (output1421, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1272 (862, 60) = (output1422, (862, 72)) := by
  rw [output1422_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1203 child1421

theorem node1423_conditional
    (child1422 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1272 (862, 60) = (output1422, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1273 (862, 60) = (output1423, (862, 72)) := by
  rw [output1423_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1422

theorem node1424_conditional
    (child1207 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_73 (862, 60) = (output1207, (862, 60)))
    (child1423 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1273 (862, 60) = (output1423, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1274 (862, 60) = (output1424, (862, 72)) := by
  rw [output1424_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1207 child1423

theorem node1425_conditional
    (child1424 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1274 (862, 60) = (output1424, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1275 (862, 60) = (output1425, (862, 72)) := by
  rw [output1425_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1424

theorem node1426_conditional
    (child1185 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 60) = (output1185, (862, 60)))
    (child1425 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1275 (862, 60) = (output1425, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1276 (862, 60) = (output1426, (862, 72)) := by
  rw [output1426_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1185 child1425

theorem node1427_conditional
    (child1426 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1276 (862, 60) = (output1426, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1277 (862, 60) = (output1427, (862, 72)) := by
  rw [output1427_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1426

theorem node1428_conditional
    (child1205 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1073 (862, 60) = (output1205, (862, 60)))
    (child1427 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1277 (862, 60) = (output1427, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1278 (862, 60) = (output1428, (862, 72)) := by
  rw [output1428_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1205 child1427

theorem node1429_conditional
    (child1428 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1278 (862, 60) = (output1428, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1279 (862, 60) = (output1429, (862, 72)) := by
  rw [output1429_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1428

theorem node1430_conditional
    (child1185 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 60) = (output1185, (862, 60)))
    (child1429 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1279 (862, 60) = (output1429, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1280 (862, 60) = (output1430, (862, 72)) := by
  rw [output1430_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1185 child1429

theorem node1431_conditional
    (child1430 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1280 (862, 60) = (output1430, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1281 (862, 60) = (output1431, (862, 72)) := by
  rw [output1431_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1430

theorem node1432_conditional
    (child1431 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1281 (862, 60) = (output1431, (862, 72)))
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1282 (862, 60) = (output1432, (862, 72)) := by
  rw [output1432_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1431 child1367

theorem node1433_conditional
    (child1432 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1282 (862, 60) = (output1432, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1283 (862, 60) = (output1433, (862, 72)) := by
  rw [output1433_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1432

theorem node1434_conditional
    (child1433 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1283 (862, 60) = (output1433, (862, 72)))
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1284 (862, 60) = (output1434, (862, 72)) := by
  rw [output1434_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1433 child1367

theorem node1435_conditional
    (child1434 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1284 (862, 60) = (output1434, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1285 (862, 60) = (output1435, (862, 72)) := by
  rw [output1435_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1434

theorem node1436_conditional
    (child1203 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_803 (862, 60) = (output1203, (862, 60)))
    (child1435 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1285 (862, 60) = (output1435, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1286 (862, 60) = (output1436, (862, 72)) := by
  rw [output1436_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1203 child1435

theorem node1437_conditional
    (child1436 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1286 (862, 60) = (output1436, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1287 (862, 60) = (output1437, (862, 72)) := by
  rw [output1437_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1436

theorem node1438_conditional
    (child1201 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1085 (862, 60) = (output1201, (862, 60)))
    (child1437 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1287 (862, 60) = (output1437, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1288 (862, 60) = (output1438, (862, 72)) := by
  rw [output1438_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1201 child1437

theorem node1439_conditional
    (child1438 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1288 (862, 60) = (output1438, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1289 (862, 60) = (output1439, (862, 72)) := by
  rw [output1439_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1438

theorem node1440_conditional
    (child1195 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_97 (862, 60) = (output1195, (862, 60)))
    (child1439 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1289 (862, 60) = (output1439, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1290 (862, 60) = (output1440, (862, 72)) := by
  rw [output1440_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1195 child1439

theorem node1441_conditional
    (child1440 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1290 (862, 60) = (output1440, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1291 (862, 60) = (output1441, (862, 72)) := by
  rw [output1441_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1440

theorem node1442_conditional
    (child1193 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_787 (862, 60) = (output1193, (862, 60)))
    (child1441 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1291 (862, 60) = (output1441, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1292 (862, 60) = (output1442, (862, 72)) := by
  rw [output1442_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1193 child1441

theorem node1443_conditional
    (child1442 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1292 (862, 60) = (output1442, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1293 (862, 60) = (output1443, (862, 72)) := by
  rw [output1443_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1442

theorem node1444_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1294 (862, 72) = (output1444, (862, 72)) := by
  rw [output1444_def]
  kernel_rfl

theorem node1445_conditional
    (child1444 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1294 (862, 72) = (output1444, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1295 (862, 72) = (output1445, (862, 72)) := by
  rw [output1445_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1444

theorem node1446_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1296 (862, 72) = (output1446, (862, 72)) := by
  rw [output1446_def]
  kernel_rfl

theorem node1447_conditional
    (child1446 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1296 (862, 72) = (output1446, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1297 (862, 72) = (output1447, (862, 72)) := by
  rw [output1447_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1446

theorem node1448_conditional
    (child1447 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1297 (862, 72) = (output1447, (862, 72)))
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1298 (862, 72) = (output1448, (862, 72)) := by
  rw [output1448_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1447 child1367

theorem node1449_conditional
    (child1448 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1298 (862, 72) = (output1448, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1299 (862, 72) = (output1449, (862, 72)) := by
  rw [output1449_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1448

theorem node1450_conditional
    (child1449 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1299 (862, 72) = (output1449, (862, 72)))
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1300 (862, 72) = (output1450, (862, 72)) := by
  rw [output1450_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1449 child1367

theorem node1451_conditional
    (child1450 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1300 (862, 72) = (output1450, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1301 (862, 72) = (output1451, (862, 72)) := by
  rw [output1451_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1450

theorem node1452_conditional
    (child1445 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1295 (862, 72) = (output1445, (862, 72)))
    (child1451 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1301 (862, 72) = (output1451, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1302 (862, 72) = (output1452, (862, 72)) := by
  rw [output1452_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1445 child1451

theorem node1453_conditional
    (child1452 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1302 (862, 72) = (output1452, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1303 (862, 72) = (output1453, (862, 72)) := by
  rw [output1453_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1452

theorem node1454_conditional
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72)))
    (child1453 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1303 (862, 72) = (output1453, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1304 (862, 72) = (output1454, (862, 72)) := by
  rw [output1454_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1367 child1453

theorem node1455_conditional
    (child1454 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1304 (862, 72) = (output1454, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1305 (862, 72) = (output1455, (862, 72)) := by
  rw [output1455_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1454

theorem node1456_conditional
    (child1443 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1293 (862, 60) = (output1443, (862, 72)))
    (child1455 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1305 (862, 72) = (output1455, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1306 (862, 60) = (output1456, (862, 72)) := by
  rw [output1456_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1443 child1455

theorem node1457_conditional
    (child1456 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1306 (862, 60) = (output1456, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1307 (862, 60) = (output1457, (862, 72)) := by
  rw [output1457_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1456

theorem node1458_conditional
    (child1191 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1083 (862, 58) = (output1191, (862, 60)))
    (child1457 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1307 (862, 60) = (output1457, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1308 (862, 58) = (output1458, (862, 72)) := by
  rw [output1458_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1191 child1457

theorem node1459_conditional
    (child1458 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1308 (862, 58) = (output1458, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1309 (862, 58) = (output1459, (862, 72)) := by
  rw [output1459_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1458

theorem node1460_conditional
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58)))
    (child1459 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1309 (862, 58) = (output1459, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1310 (862, 58) = (output1460, (862, 72)) := by
  rw [output1460_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1015 child1459

theorem node1461_conditional
    (child1460 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1310 (862, 58) = (output1460, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1311 (862, 58) = (output1461, (862, 72)) := by
  rw [output1461_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1460

theorem node1462_conditional
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58)))
    (child1461 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1311 (862, 58) = (output1461, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1312 (862, 58) = (output1462, (862, 72)) := by
  rw [output1462_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1015 child1461

theorem node1463_conditional
    (child1462 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1312 (862, 58) = (output1462, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1313 (862, 58) = (output1463, (862, 72)) := by
  rw [output1463_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1462

theorem node1464_conditional
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58)))
    (child1463 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1313 (862, 58) = (output1463, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1314 (862, 58) = (output1464, (862, 72)) := by
  rw [output1464_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1015 child1463

theorem node1465_conditional
    (child1464 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1314 (862, 58) = (output1464, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1315 (862, 58) = (output1465, (862, 72)) := by
  rw [output1465_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1464

theorem node1466_conditional
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58)))
    (child1465 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1315 (862, 58) = (output1465, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1316 (862, 58) = (output1466, (862, 72)) := by
  rw [output1466_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1015 child1465

theorem node1467_conditional
    (child1466 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1316 (862, 58) = (output1466, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1317 (862, 58) = (output1467, (862, 72)) := by
  rw [output1467_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1466

theorem node1468_conditional
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58)))
    (child1467 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1317 (862, 58) = (output1467, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1318 (862, 58) = (output1468, (862, 72)) := by
  rw [output1468_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1015 child1467

theorem node1469_conditional
    (child1468 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1318 (862, 58) = (output1468, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1319 (862, 58) = (output1469, (862, 72)) := by
  rw [output1469_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1468

theorem node1470_conditional
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58)))
    (child1469 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1319 (862, 58) = (output1469, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1320 (862, 58) = (output1470, (862, 72)) := by
  rw [output1470_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1015 child1469

theorem node1471_conditional
    (child1470 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1320 (862, 58) = (output1470, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1321 (862, 58) = (output1471, (862, 72)) := by
  rw [output1471_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1470

theorem node1472_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_578 (862, 72) = (output1472, (862, 72)) := by
  rw [output1472_def]
  kernel_rfl

theorem node1473_conditional
    (child1472 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_578 (862, 72) = (output1472, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_579 (862, 72) = (output1473, (862, 72)) := by
  rw [output1473_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1472

theorem node1474_conditional
    (child1471 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1321 (862, 58) = (output1471, (862, 72)))
    (child1473 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_579 (862, 72) = (output1473, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1322 (862, 58) = (output1474, (862, 72)) := by
  rw [output1474_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1471 child1473

theorem node1475_conditional
    (child1474 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1322 (862, 58) = (output1474, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1323 (862, 58) = (output1475, (862, 72)) := by
  rw [output1475_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1474

theorem node1476_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_582 (862, 72) = (output1476, (862, 72)) := by
  rw [output1476_def]
  kernel_rfl

theorem node1477_conditional
    (child1476 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_582 (862, 72) = (output1476, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_583 (862, 72) = (output1477, (862, 72)) := by
  rw [output1477_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1476

theorem node1478_conditional
    (child1475 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1323 (862, 58) = (output1475, (862, 72)))
    (child1477 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_583 (862, 72) = (output1477, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1324 (862, 58) = (output1478, (862, 72)) := by
  rw [output1478_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child1475 child1477

theorem node1479_conditional
    (child1478 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1324 (862, 58) = (output1478, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1325 (862, 58) = (output1479, (862, 72)) := by
  rw [output1479_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1478

theorem node1480_conditional
    (child1479 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1325 (862, 58) = (output1479, (862, 72)))
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1326 (862, 58) = (output1480, (862, 72)) := by
  rw [output1480_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1479 child1367

theorem node1481_conditional
    (child1480 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1326 (862, 58) = (output1480, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1327 (862, 58) = (output1481, (862, 72)) := by
  rw [output1481_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1480

theorem node1482_conditional
    (child1177 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1073 (862, 58) = (output1177, (862, 58)))
    (child1481 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1327 (862, 58) = (output1481, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1328 (862, 58) = (output1482, (862, 72)) := by
  rw [output1482_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1177 child1481

theorem node1483_conditional
    (child1482 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1328 (862, 58) = (output1482, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1329 (862, 58) = (output1483, (862, 72)) := by
  rw [output1483_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1482

theorem node1484_conditional
    (child1175 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1071 (862, 58) = (output1175, (862, 58)))
    (child1483 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1329 (862, 58) = (output1483, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1330 (862, 58) = (output1484, (862, 72)) := by
  rw [output1484_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1175 child1483

theorem node1485_conditional
    (child1484 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1330 (862, 58) = (output1484, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1331 (862, 58) = (output1485, (862, 72)) := by
  rw [output1485_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1484

theorem node1486_conditional
    (child1169 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1067 (862, 58) = (output1169, (862, 58)))
    (child1485 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1331 (862, 58) = (output1485, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1332 (862, 58) = (output1486, (862, 72)) := by
  rw [output1486_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1169 child1485

theorem node1487_conditional
    (child1486 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1332 (862, 58) = (output1486, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1333 (862, 58) = (output1487, (862, 72)) := by
  rw [output1487_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1486

theorem node1488_conditional
    (child1167 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1065 (862, 58) = (output1167, (862, 58)))
    (child1487 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1333 (862, 58) = (output1487, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1334 (862, 58) = (output1488, (862, 72)) := by
  rw [output1488_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1167 child1487

theorem node1489_conditional
    (child1488 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1334 (862, 58) = (output1488, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1335 (862, 58) = (output1489, (862, 72)) := by
  rw [output1489_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1488

theorem node1490_conditional
    (child1489 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1335 (862, 58) = (output1489, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1336 (862, 58) = (output1490, (862, 72)) := by
  rw [output1490_def]
  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context798 (match Loop.loopBody798_1336 with | .loop live _ _ => live | _ => .ln) (match Loop.loopBody798_1336 with | .loop _ _ live => live | _ => .ln) _ _ _ _ child1489
  exact h.trans (by kernel_rfl)

theorem node1491_conditional
    (child1165 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_751 (862, 58) = (output1165, (862, 58)))
    (child1490 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1336 (862, 58) = (output1490, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1337 (862, 58) = (output1491, (862, 72)) := by
  rw [output1491_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1165 child1490

theorem node1492_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1338 (862, 72) = (output1492, (862, 72)) := by
  rw [output1492_def]
  kernel_rfl

theorem node1493_conditional
    (child1492 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1338 (862, 72) = (output1492, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1339 (862, 72) = (output1493, (862, 72)) := by
  rw [output1493_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1492

theorem node1494_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1340 (862, 72) = (output1494, (862, 72)) := by
  rw [output1494_def]
  kernel_rfl

theorem node1495_conditional
    (child1494 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1340 (862, 72) = (output1494, (862, 72))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1341 (862, 72) = (output1495, (862, 72)) := by
  rw [output1495_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1494

theorem node1496_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1342 (862, 72) = (output1496, (862, 74)) := by
  rw [output1496_def]
  kernel_rfl

theorem node1497_conditional
    (child1496 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1342 (862, 72) = (output1496, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1343 (862, 72) = (output1497, (862, 74)) := by
  rw [output1497_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1496

theorem node1498_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 74) = (output1498, (862, 74)) := by
  rw [output1498_def]
  kernel_rfl

theorem node1499_conditional
    (child1498 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_0 (862, 74) = (output1498, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 74) = (output1499, (862, 74)) := by
  rw [output1499_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1498

theorem node1500_conditional
    (child1497 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1343 (862, 72) = (output1497, (862, 74)))
    (child1499 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 74) = (output1499, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1344 (862, 72) = (output1500, (862, 74)) := by
  rw [output1500_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1497 child1499

theorem node1501_conditional
    (child1500 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1344 (862, 72) = (output1500, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1345 (862, 72) = (output1501, (862, 74)) := by
  rw [output1501_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1500

theorem node1502_conditional
    (child1495 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1341 (862, 72) = (output1495, (862, 72)))
    (child1501 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1345 (862, 72) = (output1501, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1346 (862, 72) = (output1502, (862, 74)) := by
  rw [output1502_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1495 child1501

theorem node1503_conditional
    (child1502 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1346 (862, 72) = (output1502, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1347 (862, 72) = (output1503, (862, 74)) := by
  rw [output1503_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1502

theorem node1504_conditional
    (child1493 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1339 (862, 72) = (output1493, (862, 72)))
    (child1503 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1347 (862, 72) = (output1503, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1348 (862, 72) = (output1504, (862, 74)) := by
  rw [output1504_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1493 child1503

theorem node1505_conditional
    (child1504 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1348 (862, 72) = (output1504, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1349 (862, 72) = (output1505, (862, 74)) := by
  rw [output1505_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1504

theorem node1506_conditional
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72)))
    (child1505 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1349 (862, 72) = (output1505, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1350 (862, 72) = (output1506, (862, 74)) := by
  rw [output1506_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1367 child1505

theorem node1507_conditional
    (child1506 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1350 (862, 72) = (output1506, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1351 (862, 72) = (output1507, (862, 74)) := by
  rw [output1507_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1506

theorem node1508_conditional
    (child1367 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 72) = (output1367, (862, 72)))
    (child1507 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1351 (862, 72) = (output1507, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1352 (862, 72) = (output1508, (862, 74)) := by
  rw [output1508_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1367 child1507

theorem node1509_conditional
    (child1508 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1352 (862, 72) = (output1508, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1353 (862, 72) = (output1509, (862, 74)) := by
  rw [output1509_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1508

theorem node1510_conditional
    (child1491 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1337 (862, 58) = (output1491, (862, 72)))
    (child1509 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1353 (862, 72) = (output1509, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1354 (862, 58) = (output1510, (862, 74)) := by
  rw [output1510_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1491 child1509

theorem node1511_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_758 (862, 74) = (output1511, (862, 74)) := by
  rw [output1511_def]
  kernel_rfl

theorem node1512_conditional
    (child1511 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_758 (862, 74) = (output1511, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_759 (862, 74) = (output1512, (862, 74)) := by
  rw [output1512_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1511

theorem node1513_conditional : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1355 (862, 74) = (output1513, (862, 74)) := by
  rw [output1513_def]
  kernel_rfl

theorem node1514_conditional
    (child1513 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1355 (862, 74) = (output1513, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1356 (862, 74) = (output1514, (862, 74)) := by
  rw [output1514_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1513

theorem node1515_conditional
    (child1514 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1356 (862, 74) = (output1514, (862, 74)))
    (child1499 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 74) = (output1499, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1357 (862, 74) = (output1515, (862, 74)) := by
  rw [output1515_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1514 child1499

theorem node1516_conditional
    (child1515 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1357 (862, 74) = (output1515, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1358 (862, 74) = (output1516, (862, 74)) := by
  rw [output1516_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1515

theorem node1517_conditional
    (child1512 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_759 (862, 74) = (output1512, (862, 74)))
    (child1516 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1358 (862, 74) = (output1516, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1359 (862, 74) = (output1517, (862, 74)) := by
  rw [output1517_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1512 child1516

theorem node1518_conditional
    (child1517 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1359 (862, 74) = (output1517, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1360 (862, 74) = (output1518, (862, 74)) := by
  rw [output1518_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1517

theorem node1519_conditional
    (child1510 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1354 (862, 58) = (output1510, (862, 74)))
    (child1518 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1360 (862, 74) = (output1518, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1361 (862, 58) = (output1519, (862, 74)) := by
  rw [output1519_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1510 child1518

theorem node1520_conditional
    (child1159 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1063 (862, 58) = (output1159, (862, 58)))
    (child1519 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1361 (862, 58) = (output1519, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1362 (862, 58) = (output1520, (862, 74)) := by
  rw [output1520_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1159 child1519

theorem node1521_conditional
    (child1015 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 58) = (output1015, (862, 58)))
    (child1520 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1362 (862, 58) = (output1520, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1363 (862, 58) = (output1521, (862, 74)) := by
  rw [output1521_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1015 child1520

theorem node1522_conditional
    (child1157 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1061 (862, 42) = (output1157, (862, 58)))
    (child1521 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1363 (862, 58) = (output1521, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1364 (862, 42) = (output1522, (862, 74)) := by
  rw [output1522_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1157 child1521

theorem node1523_conditional
    (child793 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_747 (862, 40) = (output793, (862, 42)))
    (child1522 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1364 (862, 42) = (output1522, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1365 (862, 40) = (output1523, (862, 74)) := by
  rw [output1523_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child793 child1522

theorem node1524_conditional
    (child697 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 40) = (output697, (862, 40)))
    (child1523 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1365 (862, 40) = (output1523, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1366 (862, 40) = (output1524, (862, 74)) := by
  rw [output1524_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child697 child1523

theorem node1525_conditional
    (child697 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 40) = (output697, (862, 40)))
    (child1524 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1366 (862, 40) = (output1524, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1367 (862, 40) = (output1525, (862, 74)) := by
  rw [output1525_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child697 child1524

theorem node1526_conditional
    (child775 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_729 (862, 6) = (output775, (862, 40)))
    (child1525 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1367 (862, 40) = (output1525, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1368 (862, 6) = (output1526, (862, 74)) := by
  rw [output1526_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child775 child1525

theorem node1527_conditional
    (child35 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_35 (862, 6) = (output35, (862, 6)))
    (child1526 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1368 (862, 6) = (output1526, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1369 (862, 6) = (output1527, (862, 74)) := by
  rw [output1527_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child35 child1526

theorem node1528_conditional
    (child19 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 6) = (output19, (862, 6)))
    (child1527 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1369 (862, 6) = (output1527, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1370 (862, 6) = (output1528, (862, 74)) := by
  rw [output1528_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child19 child1527

theorem node1529_conditional
    (child33 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_33 (862, 6) = (output33, (862, 6)))
    (child1528 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1370 (862, 6) = (output1528, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1371 (862, 6) = (output1529, (862, 74)) := by
  rw [output1529_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child33 child1528

theorem node1530_conditional
    (child19 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 6) = (output19, (862, 6)))
    (child1529 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1371 (862, 6) = (output1529, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1372 (862, 6) = (output1530, (862, 74)) := by
  rw [output1530_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child19 child1529

theorem node1531_conditional
    (child31 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_31 (862, 6) = (output31, (862, 6)))
    (child1530 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1372 (862, 6) = (output1530, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1373 (862, 6) = (output1531, (862, 74)) := by
  rw [output1531_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child31 child1530

theorem node1532_conditional
    (child19 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 6) = (output19, (862, 6)))
    (child1531 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1373 (862, 6) = (output1531, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1374 (862, 6) = (output1532, (862, 74)) := by
  rw [output1532_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child19 child1531

theorem node1533_conditional
    (child29 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_29 (862, 6) = (output29, (862, 6)))
    (child1532 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1374 (862, 6) = (output1532, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1375 (862, 6) = (output1533, (862, 74)) := by
  rw [output1533_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child29 child1532

theorem node1534_conditional
    (child19 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1 (862, 6) = (output19, (862, 6)))
    (child1533 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1375 (862, 6) = (output1533, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1376 (862, 6) = (output1534, (862, 74)) := by
  rw [output1534_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child19 child1533

theorem node1535_conditional
    (child27 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_27 (862, 6) = (output27, (862, 6)))
    (child1534 : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1376 (862, 6) = (output1534, (862, 74))) : Flapjack.LoopToWord.compHOL Word.context798
    Loop.loopBody798_1377 (862, 6) = (output1535, (862, 74)) := by
  rw [output1535_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child27 child1534

#print axioms node1535_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints798
