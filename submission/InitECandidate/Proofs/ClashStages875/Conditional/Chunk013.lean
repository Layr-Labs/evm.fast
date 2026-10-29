import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
theorem tree1248_agree_conditional : tree1248 = literal1248 := by
  rw [tree1248_def]
  rfl
theorem node1248_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1248 live1248 coloured1248 = result1248 := by
  rw [tree1248_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1249_agree_conditional
    (child0 : tree1247 = literal1247)
    (child1 : tree1248 = literal1248) : tree1249 = literal1249 := by
  rw [tree1249_def, child0, child1]
  rfl
theorem node1249_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1247 live1247 coloured1247 = result1247)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1248 live1248 coloured1248 = result1248) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1249 live1249 coloured1249 = result1249 := by
  rw [tree1249_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1247 coloured1247 at child
  try dsimp only [live1249, coloured1249]
  rw [child]
  dsimp only [result1247]
  have child := child1
  unfold live1248 coloured1248 at child
  try dsimp only [live1249, coloured1249]
  rw [child]
  dsimp only [result1248]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1250_agree_conditional : tree1250 = literal1250 := by
  rw [tree1250_def]
  rfl
theorem node1250_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1250 live1250 coloured1250 = result1250 := by
  rw [tree1250_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1251_agree_conditional
    (child0 : tree1249 = literal1249)
    (child1 : tree1250 = literal1250) : tree1251 = literal1251 := by
  rw [tree1251_def, child0, child1]
  rfl
theorem node1251_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1249 live1249 coloured1249 = result1249)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1250 live1250 coloured1250 = result1250) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1251 live1251 coloured1251 = result1251 := by
  rw [tree1251_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1249 coloured1249 at child
  try dsimp only [live1251, coloured1251]
  rw [child]
  dsimp only [result1249]
  have child := child1
  unfold live1250 coloured1250 at child
  try dsimp only [live1251, coloured1251]
  rw [child]
  dsimp only [result1250]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1252_agree_conditional : tree1252 = literal1252 := by
  rw [tree1252_def]
  rfl
theorem node1252_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1252 live1252 coloured1252 = result1252 := by
  rw [tree1252_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1253_agree_conditional
    (child0 : tree1251 = literal1251)
    (child1 : tree1252 = literal1252) : tree1253 = literal1253 := by
  rw [tree1253_def, child0, child1]
  rfl
theorem node1253_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1251 live1251 coloured1251 = result1251)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1252 live1252 coloured1252 = result1252) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1253 live1253 coloured1253 = result1253 := by
  rw [tree1253_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1251 coloured1251 at child
  try dsimp only [live1253, coloured1253]
  rw [child]
  dsimp only [result1251]
  have child := child1
  unfold live1252 coloured1252 at child
  try dsimp only [live1253, coloured1253]
  rw [child]
  dsimp only [result1252]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1254_agree_conditional : tree1254 = literal1254 := by
  rw [tree1254_def]
  rfl
theorem node1254_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1254 live1254 coloured1254 = result1254 := by
  rw [tree1254_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1255_agree_conditional
    (child0 : tree1253 = literal1253)
    (child1 : tree1254 = literal1254) : tree1255 = literal1255 := by
  rw [tree1255_def, child0, child1]
  rfl
theorem node1255_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1253 live1253 coloured1253 = result1253)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1254 live1254 coloured1254 = result1254) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1255 live1255 coloured1255 = result1255 := by
  rw [tree1255_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1253 coloured1253 at child
  try dsimp only [live1255, coloured1255]
  rw [child]
  dsimp only [result1253]
  have child := child1
  unfold live1254 coloured1254 at child
  try dsimp only [live1255, coloured1255]
  rw [child]
  dsimp only [result1254]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1256_agree_conditional : tree1256 = literal1256 := by
  rw [tree1256_def]
  rfl
theorem node1256_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1256 live1256 coloured1256 = result1256 := by
  rw [tree1256_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1257_agree_conditional
    (child0 : tree1255 = literal1255)
    (child1 : tree1256 = literal1256) : tree1257 = literal1257 := by
  rw [tree1257_def, child0, child1]
  rfl
theorem node1257_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1255 live1255 coloured1255 = result1255)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1256 live1256 coloured1256 = result1256) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1257 live1257 coloured1257 = result1257 := by
  rw [tree1257_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1255 coloured1255 at child
  try dsimp only [live1257, coloured1257]
  rw [child]
  dsimp only [result1255]
  have child := child1
  unfold live1256 coloured1256 at child
  try dsimp only [live1257, coloured1257]
  rw [child]
  dsimp only [result1256]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1258_agree_conditional : tree1258 = literal1258 := by
  rw [tree1258_def]
  rfl
theorem node1258_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1258 live1258 coloured1258 = result1258 := by
  rw [tree1258_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1259_agree_conditional
    (child0 : tree1257 = literal1257)
    (child1 : tree1258 = literal1258) : tree1259 = literal1259 := by
  rw [tree1259_def, child0, child1]
  rfl
theorem node1259_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1257 live1257 coloured1257 = result1257)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1258 live1258 coloured1258 = result1258) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1259 live1259 coloured1259 = result1259 := by
  rw [tree1259_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1257 coloured1257 at child
  try dsimp only [live1259, coloured1259]
  rw [child]
  dsimp only [result1257]
  have child := child1
  unfold live1258 coloured1258 at child
  try dsimp only [live1259, coloured1259]
  rw [child]
  dsimp only [result1258]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1260_agree_conditional : tree1260 = literal1260 := by
  rw [tree1260_def]
  rfl
theorem node1260_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1260 live1260 coloured1260 = result1260 := by
  rw [tree1260_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1261_agree_conditional
    (child0 : tree1259 = literal1259)
    (child1 : tree1260 = literal1260) : tree1261 = literal1261 := by
  rw [tree1261_def, child0, child1]
  rfl
theorem node1261_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1259 live1259 coloured1259 = result1259)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1260 live1260 coloured1260 = result1260) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1261 live1261 coloured1261 = result1261 := by
  rw [tree1261_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1259 coloured1259 at child
  try dsimp only [live1261, coloured1261]
  rw [child]
  dsimp only [result1259]
  have child := child1
  unfold live1260 coloured1260 at child
  try dsimp only [live1261, coloured1261]
  rw [child]
  dsimp only [result1260]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1262_agree_conditional : tree1262 = literal1262 := by
  rw [tree1262_def]
  rfl
theorem node1262_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1262 live1262 coloured1262 = result1262 := by
  rw [tree1262_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1263_agree_conditional
    (child0 : tree1261 = literal1261)
    (child1 : tree1262 = literal1262) : tree1263 = literal1263 := by
  rw [tree1263_def, child0, child1]
  rfl
theorem node1263_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1261 live1261 coloured1261 = result1261)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1262 live1262 coloured1262 = result1262) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1263 live1263 coloured1263 = result1263 := by
  rw [tree1263_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1261 coloured1261 at child
  try dsimp only [live1263, coloured1263]
  rw [child]
  dsimp only [result1261]
  have child := child1
  unfold live1262 coloured1262 at child
  try dsimp only [live1263, coloured1263]
  rw [child]
  dsimp only [result1262]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1264_agree_conditional : tree1264 = literal1264 := by
  rw [tree1264_def]
  rfl
theorem node1264_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1264 live1264 coloured1264 = result1264 := by
  rw [tree1264_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1265_agree_conditional
    (child0 : tree1263 = literal1263)
    (child1 : tree1264 = literal1264) : tree1265 = literal1265 := by
  rw [tree1265_def, child0, child1]
  rfl
theorem node1265_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1263 live1263 coloured1263 = result1263)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1264 live1264 coloured1264 = result1264) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1265 live1265 coloured1265 = result1265 := by
  rw [tree1265_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1263 coloured1263 at child
  try dsimp only [live1265, coloured1265]
  rw [child]
  dsimp only [result1263]
  have child := child1
  unfold live1264 coloured1264 at child
  try dsimp only [live1265, coloured1265]
  rw [child]
  dsimp only [result1264]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1266_agree_conditional : tree1266 = literal1266 := by
  rw [tree1266_def]
  rfl
theorem node1266_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1266 live1266 coloured1266 = result1266 := by
  rw [tree1266_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1267_agree_conditional : tree1267 = literal1267 := by
  rw [tree1267_def]
  rfl
theorem node1267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1267 live1267 coloured1267 = result1267 := by
  rw [tree1267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1268_agree_conditional
    (child0 : tree1266 = literal1266)
    (child1 : tree1267 = literal1267) : tree1268 = literal1268 := by
  rw [tree1268_def, child0, child1]
  rfl
theorem node1268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1266 live1266 coloured1266 = result1266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1267 live1267 coloured1267 = result1267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1268 live1268 coloured1268 = result1268 := by
  rw [tree1268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1266 coloured1266 at child
  try dsimp only [live1268, coloured1268]
  rw [child]
  dsimp only [result1266]
  have child := child1
  unfold live1267 coloured1267 at child
  try dsimp only [live1268, coloured1268]
  rw [child]
  dsimp only [result1267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1269_agree_conditional
    (child0 : tree1265 = literal1265)
    (child1 : tree1268 = literal1268) : tree1269 = literal1269 := by
  rw [tree1269_def, child0, child1]
  rfl
theorem node1269_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1265 live1265 coloured1265 = result1265)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1268 live1268 coloured1268 = result1268) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1269 live1269 coloured1269 = result1269 := by
  rw [tree1269_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1265 coloured1265 at child
  try dsimp only [live1269, coloured1269]
  rw [child]
  dsimp only [result1265]
  have child := child1
  unfold live1268 coloured1268 at child
  try dsimp only [live1269, coloured1269]
  rw [child]
  dsimp only [result1268]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1270_agree_conditional : tree1270 = literal1270 := by
  rw [tree1270_def]
  rfl
theorem node1270_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1270 live1270 coloured1270 = result1270 := by
  rw [tree1270_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1271_agree_conditional
    (child0 : tree1269 = literal1269)
    (child1 : tree1270 = literal1270) : tree1271 = literal1271 := by
  rw [tree1271_def, child0, child1]
  rfl
theorem node1271_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1269 live1269 coloured1269 = result1269)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1270 live1270 coloured1270 = result1270) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1271 live1271 coloured1271 = result1271 := by
  rw [tree1271_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1269 coloured1269 at child
  try dsimp only [live1271, coloured1271]
  rw [child]
  dsimp only [result1269]
  have child := child1
  unfold live1270 coloured1270 at child
  try dsimp only [live1271, coloured1271]
  rw [child]
  dsimp only [result1270]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1272_agree_conditional
    (child0 : tree1220 = literal1220)
    (child1 : tree1271 = literal1271) : tree1272 = literal1272 := by
  rw [tree1272_def, child0, child1]
  rfl
theorem node1272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1220 live1220 coloured1220 = result1220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1271 live1271 coloured1271 = result1271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1272 live1272 coloured1272 = result1272 := by
  rw [tree1272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1220 coloured1220 at child
  try dsimp only [live1272, coloured1272]
  rw [child]
  dsimp only [result1220]
  have child := child1
  unfold live1271 coloured1271 at child
  try dsimp only [live1272, coloured1272]
  rw [child]
  dsimp only [result1271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1273_agree_conditional : tree1273 = literal1273 := by
  rw [tree1273_def]
  rfl
theorem node1273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1273 live1273 coloured1273 = result1273 := by
  rw [tree1273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1274_agree_conditional
    (child0 : tree1272 = literal1272)
    (child1 : tree1273 = literal1273) : tree1274 = literal1274 := by
  rw [tree1274_def, child0, child1]
  rfl
theorem node1274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1272 live1272 coloured1272 = result1272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1273 live1273 coloured1273 = result1273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1274 live1274 coloured1274 = result1274 := by
  rw [tree1274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1272 coloured1272 at child
  try dsimp only [live1274, coloured1274]
  rw [child]
  dsimp only [result1272]
  have child := child1
  unfold live1273 coloured1273 at child
  try dsimp only [live1274, coloured1274]
  rw [child]
  dsimp only [result1273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1275_agree_conditional : tree1275 = literal1275 := by
  rw [tree1275_def]
  rfl
theorem node1275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1275 live1275 coloured1275 = result1275 := by
  rw [tree1275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1276_agree_conditional
    (child0 : tree1274 = literal1274)
    (child1 : tree1275 = literal1275) : tree1276 = literal1276 := by
  rw [tree1276_def, child0, child1]
  rfl
theorem node1276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1274 live1274 coloured1274 = result1274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1275 live1275 coloured1275 = result1275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1276 live1276 coloured1276 = result1276 := by
  rw [tree1276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1274 coloured1274 at child
  try dsimp only [live1276, coloured1276]
  rw [child]
  dsimp only [result1274]
  have child := child1
  unfold live1275 coloured1275 at child
  try dsimp only [live1276, coloured1276]
  rw [child]
  dsimp only [result1275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1277_agree_conditional
    (child0 : tree1217 = literal1217)
    (child1 : tree1276 = literal1276) : tree1277 = literal1277 := by
  rw [tree1277_def, child0, child1]
  rfl
theorem node1277_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1217 live1217 coloured1217 = result1217)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1276 live1276 coloured1276 = result1276) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1277 live1277 coloured1277 = result1277 := by
  rw [tree1277_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1217 coloured1217 at child
  try dsimp only [live1277, coloured1277]
  rw [child]
  dsimp only [result1217]
  have child := child1
  unfold live1276 coloured1276 at child
  try dsimp only [live1277, coloured1277]
  rw [child]
  dsimp only [result1276]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1278_agree_conditional : tree1278 = literal1278 := by
  rw [tree1278_def]
  rfl
theorem node1278_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1278 live1278 coloured1278 = result1278 := by
  rw [tree1278_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1279_agree_conditional
    (child0 : tree1277 = literal1277)
    (child1 : tree1278 = literal1278) : tree1279 = literal1279 := by
  rw [tree1279_def, child0, child1]
  rfl
theorem node1279_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1277 live1277 coloured1277 = result1277)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1278 live1278 coloured1278 = result1278) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1279 live1279 coloured1279 = result1279 := by
  rw [tree1279_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1277 coloured1277 at child
  try dsimp only [live1279, coloured1279]
  rw [child]
  dsimp only [result1277]
  have child := child1
  unfold live1278 coloured1278 at child
  try dsimp only [live1279, coloured1279]
  rw [child]
  dsimp only [result1278]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1280_agree_conditional : tree1280 = literal1280 := by
  rw [tree1280_def]
  rfl
theorem node1280_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1280 live1280 coloured1280 = result1280 := by
  rw [tree1280_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1281_agree_conditional
    (child0 : tree1279 = literal1279)
    (child1 : tree1280 = literal1280) : tree1281 = literal1281 := by
  rw [tree1281_def, child0, child1]
  rfl
theorem node1281_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1279 live1279 coloured1279 = result1279)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1280 live1280 coloured1280 = result1280) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1281 live1281 coloured1281 = result1281 := by
  rw [tree1281_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1279 coloured1279 at child
  try dsimp only [live1281, coloured1281]
  rw [child]
  dsimp only [result1279]
  have child := child1
  unfold live1280 coloured1280 at child
  try dsimp only [live1281, coloured1281]
  rw [child]
  dsimp only [result1280]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1282_agree_conditional
    (child0 : tree1216 = literal1216)
    (child1 : tree1281 = literal1281) : tree1282 = literal1282 := by
  rw [tree1282_def, child0, child1]
  rfl
theorem node1282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1216 live1216 coloured1216 = result1216)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1281 live1281 coloured1281 = result1281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1282 live1282 coloured1282 = result1282 := by
  rw [tree1282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1216 coloured1216 at child
  try dsimp only [live1282, coloured1282]
  rw [child]
  dsimp only [result1216]
  have child := child1
  unfold live1281 coloured1281 at child
  try dsimp only [live1282, coloured1282]
  rw [child]
  dsimp only [result1281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1283_agree_conditional : tree1283 = literal1283 := by
  rw [tree1283_def]
  rfl
theorem node1283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1283 live1283 coloured1283 = result1283 := by
  rw [tree1283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1284_agree_conditional
    (child0 : tree1282 = literal1282)
    (child1 : tree1283 = literal1283) : tree1284 = literal1284 := by
  rw [tree1284_def, child0, child1]
  rfl
theorem node1284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1282 live1282 coloured1282 = result1282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1283 live1283 coloured1283 = result1283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1284 live1284 coloured1284 = result1284 := by
  rw [tree1284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1282 coloured1282 at child
  try dsimp only [live1284, coloured1284]
  rw [child]
  dsimp only [result1282]
  have child := child1
  unfold live1283 coloured1283 at child
  try dsimp only [live1284, coloured1284]
  rw [child]
  dsimp only [result1283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1285_agree_conditional : tree1285 = literal1285 := by
  rw [tree1285_def]
  rfl
theorem node1285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1285 live1285 coloured1285 = result1285 := by
  rw [tree1285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1286_agree_conditional
    (child0 : tree1284 = literal1284)
    (child1 : tree1285 = literal1285) : tree1286 = literal1286 := by
  rw [tree1286_def, child0, child1]
  rfl
theorem node1286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1284 live1284 coloured1284 = result1284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1285 live1285 coloured1285 = result1285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1286 live1286 coloured1286 = result1286 := by
  rw [tree1286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1284 coloured1284 at child
  try dsimp only [live1286, coloured1286]
  rw [child]
  dsimp only [result1284]
  have child := child1
  unfold live1285 coloured1285 at child
  try dsimp only [live1286, coloured1286]
  rw [child]
  dsimp only [result1285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1287_agree_conditional : tree1287 = literal1287 := by
  rw [tree1287_def]
  rfl
theorem node1287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1287 live1287 coloured1287 = result1287 := by
  rw [tree1287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1288_agree_conditional
    (child0 : tree1286 = literal1286)
    (child1 : tree1287 = literal1287) : tree1288 = literal1288 := by
  rw [tree1288_def, child0, child1]
  rfl
theorem node1288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1286 live1286 coloured1286 = result1286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1287 live1287 coloured1287 = result1287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1288 live1288 coloured1288 = result1288 := by
  rw [tree1288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1286 coloured1286 at child
  try dsimp only [live1288, coloured1288]
  rw [child]
  dsimp only [result1286]
  have child := child1
  unfold live1287 coloured1287 at child
  try dsimp only [live1288, coloured1288]
  rw [child]
  dsimp only [result1287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1289_agree_conditional : tree1289 = literal1289 := by
  rw [tree1289_def]
  rfl
theorem node1289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1289 live1289 coloured1289 = result1289 := by
  rw [tree1289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1290_agree_conditional
    (child0 : tree1288 = literal1288)
    (child1 : tree1289 = literal1289) : tree1290 = literal1290 := by
  rw [tree1290_def, child0, child1]
  rfl
theorem node1290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1288 live1288 coloured1288 = result1288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1289 live1289 coloured1289 = result1289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1290 live1290 coloured1290 = result1290 := by
  rw [tree1290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1288 coloured1288 at child
  try dsimp only [live1290, coloured1290]
  rw [child]
  dsimp only [result1288]
  have child := child1
  unfold live1289 coloured1289 at child
  try dsimp only [live1290, coloured1290]
  rw [child]
  dsimp only [result1289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1291_agree_conditional : tree1291 = literal1291 := by
  rw [tree1291_def]
  rfl
theorem node1291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1291 live1291 coloured1291 = result1291 := by
  rw [tree1291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1292_agree_conditional : tree1292 = literal1292 := by
  rw [tree1292_def]
  rfl
theorem node1292_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1292 live1292 coloured1292 = result1292 := by
  rw [tree1292_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1293_agree_conditional
    (child0 : tree1291 = literal1291)
    (child1 : tree1292 = literal1292) : tree1293 = literal1293 := by
  rw [tree1293_def, child0, child1]
  rfl
theorem node1293_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1291 live1291 coloured1291 = result1291)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1292 live1292 coloured1292 = result1292) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1293 live1293 coloured1293 = result1293 := by
  rw [tree1293_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1291 coloured1291 at child
  try dsimp only [live1293, coloured1293]
  rw [child]
  dsimp only [result1291]
  have child := child1
  unfold live1292 coloured1292 at child
  try dsimp only [live1293, coloured1293]
  rw [child]
  dsimp only [result1292]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1294_agree_conditional : tree1294 = literal1294 := by
  rw [tree1294_def]
  rfl
theorem node1294_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1294 live1294 coloured1294 = result1294 := by
  rw [tree1294_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1295_agree_conditional : tree1295 = literal1295 := by
  rw [tree1295_def]
  rfl
theorem node1295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1295 live1295 coloured1295 = result1295 := by
  rw [tree1295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1296_agree_conditional
    (child0 : tree1294 = literal1294)
    (child1 : tree1295 = literal1295) : tree1296 = literal1296 := by
  rw [tree1296_def, child0, child1]
  rfl
theorem node1296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1294 live1294 coloured1294 = result1294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1295 live1295 coloured1295 = result1295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1296 live1296 coloured1296 = result1296 := by
  rw [tree1296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1294 coloured1294 at child
  try dsimp only [live1296, coloured1296]
  rw [child]
  dsimp only [result1294]
  have child := child1
  unfold live1295 coloured1295 at child
  try dsimp only [live1296, coloured1296]
  rw [child]
  dsimp only [result1295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1297_agree_conditional : tree1297 = literal1297 := by
  rw [tree1297_def]
  rfl
theorem node1297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1297 live1297 coloured1297 = result1297 := by
  rw [tree1297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1298_agree_conditional
    (child0 : tree1296 = literal1296)
    (child1 : tree1297 = literal1297) : tree1298 = literal1298 := by
  rw [tree1298_def, child0, child1]
  rfl
theorem node1298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1296 live1296 coloured1296 = result1296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1297 live1297 coloured1297 = result1297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1298 live1298 coloured1298 = result1298 := by
  rw [tree1298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1296 coloured1296 at child
  try dsimp only [live1298, coloured1298]
  rw [child]
  dsimp only [result1296]
  have child := child1
  unfold live1297 coloured1297 at child
  try dsimp only [live1298, coloured1298]
  rw [child]
  dsimp only [result1297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1299_agree_conditional
    (child0 : tree1293 = literal1293)
    (child1 : tree1298 = literal1298) : tree1299 = literal1299 := by
  rw [tree1299_def, child0, child1]
  rfl
theorem node1299_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1293 live1293 coloured1293 = result1293)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1298 live1298 coloured1298 = result1298) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1299 live1299 coloured1299 = result1299 := by
  rw [tree1299_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1293 coloured1293 at child
  try dsimp only [live1299, coloured1299]
  rw [child]
  dsimp only [result1293]
  have child := child1
  unfold live1298 coloured1298 at child
  try dsimp only [live1299, coloured1299]
  rw [child]
  dsimp only [result1298]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1300_agree_conditional
    (child0 : tree1290 = literal1290)
    (child1 : tree1299 = literal1299) : tree1300 = literal1300 := by
  rw [tree1300_def, child0, child1]
  rfl
theorem node1300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1290 live1290 coloured1290 = result1290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1299 live1299 coloured1299 = result1299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1300 live1300 coloured1300 = result1300 := by
  rw [tree1300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1290 coloured1290 at child
  try dsimp only [live1300, coloured1300]
  rw [child]
  dsimp only [result1290]
  have child := child1
  unfold live1299 coloured1299 at child
  try dsimp only [live1300, coloured1300]
  rw [child]
  dsimp only [result1299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1301_agree_conditional : tree1301 = literal1301 := by
  rw [tree1301_def]
  rfl
theorem node1301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1301 live1301 coloured1301 = result1301 := by
  rw [tree1301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1302_agree_conditional
    (child0 : tree1300 = literal1300)
    (child1 : tree1301 = literal1301) : tree1302 = literal1302 := by
  rw [tree1302_def, child0, child1]
  rfl
theorem node1302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1300 live1300 coloured1300 = result1300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1301 live1301 coloured1301 = result1301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1302 live1302 coloured1302 = result1302 := by
  rw [tree1302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1300 coloured1300 at child
  try dsimp only [live1302, coloured1302]
  rw [child]
  dsimp only [result1300]
  have child := child1
  unfold live1301 coloured1301 at child
  try dsimp only [live1302, coloured1302]
  rw [child]
  dsimp only [result1301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1303_agree_conditional : tree1303 = literal1303 := by
  rw [tree1303_def]
  rfl
theorem node1303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1303 live1303 coloured1303 = result1303 := by
  rw [tree1303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1304_agree_conditional
    (child0 : tree1302 = literal1302)
    (child1 : tree1303 = literal1303) : tree1304 = literal1304 := by
  rw [tree1304_def, child0, child1]
  rfl
theorem node1304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1302 live1302 coloured1302 = result1302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1303 live1303 coloured1303 = result1303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1304 live1304 coloured1304 = result1304 := by
  rw [tree1304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1302 coloured1302 at child
  try dsimp only [live1304, coloured1304]
  rw [child]
  dsimp only [result1302]
  have child := child1
  unfold live1303 coloured1303 at child
  try dsimp only [live1304, coloured1304]
  rw [child]
  dsimp only [result1303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1305_agree_conditional : tree1305 = literal1305 := by
  rw [tree1305_def]
  rfl
theorem node1305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1305 live1305 coloured1305 = result1305 := by
  rw [tree1305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1306_agree_conditional
    (child0 : tree1304 = literal1304)
    (child1 : tree1305 = literal1305) : tree1306 = literal1306 := by
  rw [tree1306_def, child0, child1]
  rfl
theorem node1306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1304 live1304 coloured1304 = result1304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1305 live1305 coloured1305 = result1305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1306 live1306 coloured1306 = result1306 := by
  rw [tree1306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1304 coloured1304 at child
  try dsimp only [live1306, coloured1306]
  rw [child]
  dsimp only [result1304]
  have child := child1
  unfold live1305 coloured1305 at child
  try dsimp only [live1306, coloured1306]
  rw [child]
  dsimp only [result1305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1307_agree_conditional : tree1307 = literal1307 := by
  rw [tree1307_def]
  rfl
theorem node1307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1307 live1307 coloured1307 = result1307 := by
  rw [tree1307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1308_agree_conditional
    (child0 : tree1306 = literal1306)
    (child1 : tree1307 = literal1307) : tree1308 = literal1308 := by
  rw [tree1308_def, child0, child1]
  rfl
theorem node1308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1306 live1306 coloured1306 = result1306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1307 live1307 coloured1307 = result1307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1308 live1308 coloured1308 = result1308 := by
  rw [tree1308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1306 coloured1306 at child
  try dsimp only [live1308, coloured1308]
  rw [child]
  dsimp only [result1306]
  have child := child1
  unfold live1307 coloured1307 at child
  try dsimp only [live1308, coloured1308]
  rw [child]
  dsimp only [result1307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1309_agree_conditional : tree1309 = literal1309 := by
  rw [tree1309_def]
  rfl
theorem node1309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1309 live1309 coloured1309 = result1309 := by
  rw [tree1309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1310_agree_conditional : tree1310 = literal1310 := by
  rw [tree1310_def]
  rfl
theorem node1310_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1310 live1310 coloured1310 = result1310 := by
  rw [tree1310_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1311_agree_conditional
    (child0 : tree1309 = literal1309)
    (child1 : tree1310 = literal1310) : tree1311 = literal1311 := by
  rw [tree1311_def, child0, child1]
  rfl
theorem node1311_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1309 live1309 coloured1309 = result1309)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1310 live1310 coloured1310 = result1310) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1311 live1311 coloured1311 = result1311 := by
  rw [tree1311_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1309 coloured1309 at child
  try dsimp only [live1311, coloured1311]
  rw [child]
  dsimp only [result1309]
  have child := child1
  unfold live1310 coloured1310 at child
  try dsimp only [live1311, coloured1311]
  rw [child]
  dsimp only [result1310]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1312_agree_conditional : tree1312 = literal1312 := by
  rw [tree1312_def]
  rfl
theorem node1312_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1312 live1312 coloured1312 = result1312 := by
  rw [tree1312_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1313_agree_conditional : tree1313 = literal1313 := by
  rw [tree1313_def]
  rfl
theorem node1313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1313 live1313 coloured1313 = result1313 := by
  rw [tree1313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1314_agree_conditional
    (child0 : tree1312 = literal1312)
    (child1 : tree1313 = literal1313) : tree1314 = literal1314 := by
  rw [tree1314_def, child0, child1]
  rfl
theorem node1314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1312 live1312 coloured1312 = result1312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1313 live1313 coloured1313 = result1313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1314 live1314 coloured1314 = result1314 := by
  rw [tree1314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1312 coloured1312 at child
  try dsimp only [live1314, coloured1314]
  rw [child]
  dsimp only [result1312]
  have child := child1
  unfold live1313 coloured1313 at child
  try dsimp only [live1314, coloured1314]
  rw [child]
  dsimp only [result1313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1315_agree_conditional : tree1315 = literal1315 := by
  rw [tree1315_def]
  rfl
theorem node1315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1315 live1315 coloured1315 = result1315 := by
  rw [tree1315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1316_agree_conditional
    (child0 : tree1314 = literal1314)
    (child1 : tree1315 = literal1315) : tree1316 = literal1316 := by
  rw [tree1316_def, child0, child1]
  rfl
theorem node1316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1314 live1314 coloured1314 = result1314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1315 live1315 coloured1315 = result1315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1316 live1316 coloured1316 = result1316 := by
  rw [tree1316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1314 coloured1314 at child
  try dsimp only [live1316, coloured1316]
  rw [child]
  dsimp only [result1314]
  have child := child1
  unfold live1315 coloured1315 at child
  try dsimp only [live1316, coloured1316]
  rw [child]
  dsimp only [result1315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1317_agree_conditional
    (child0 : tree1311 = literal1311)
    (child1 : tree1316 = literal1316) : tree1317 = literal1317 := by
  rw [tree1317_def, child0, child1]
  rfl
theorem node1317_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1311 live1311 coloured1311 = result1311)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1316 live1316 coloured1316 = result1316) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1317 live1317 coloured1317 = result1317 := by
  rw [tree1317_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1311 coloured1311 at child
  try dsimp only [live1317, coloured1317]
  rw [child]
  dsimp only [result1311]
  have child := child1
  unfold live1316 coloured1316 at child
  try dsimp only [live1317, coloured1317]
  rw [child]
  dsimp only [result1316]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1318_agree_conditional
    (child0 : tree1308 = literal1308)
    (child1 : tree1317 = literal1317) : tree1318 = literal1318 := by
  rw [tree1318_def, child0, child1]
  rfl
theorem node1318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1308 live1308 coloured1308 = result1308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1317 live1317 coloured1317 = result1317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1318 live1318 coloured1318 = result1318 := by
  rw [tree1318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1308 coloured1308 at child
  try dsimp only [live1318, coloured1318]
  rw [child]
  dsimp only [result1308]
  have child := child1
  unfold live1317 coloured1317 at child
  try dsimp only [live1318, coloured1318]
  rw [child]
  dsimp only [result1317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1319_agree_conditional : tree1319 = literal1319 := by
  rw [tree1319_def]
  rfl
theorem node1319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1319 live1319 coloured1319 = result1319 := by
  rw [tree1319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1320_agree_conditional
    (child0 : tree1318 = literal1318)
    (child1 : tree1319 = literal1319) : tree1320 = literal1320 := by
  rw [tree1320_def, child0, child1]
  rfl
theorem node1320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1318 live1318 coloured1318 = result1318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1319 live1319 coloured1319 = result1319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1320 live1320 coloured1320 = result1320 := by
  rw [tree1320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1318 coloured1318 at child
  try dsimp only [live1320, coloured1320]
  rw [child]
  dsimp only [result1318]
  have child := child1
  unfold live1319 coloured1319 at child
  try dsimp only [live1320, coloured1320]
  rw [child]
  dsimp only [result1319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1321_agree_conditional : tree1321 = literal1321 := by
  rw [tree1321_def]
  rfl
theorem node1321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1321 live1321 coloured1321 = result1321 := by
  rw [tree1321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1322_agree_conditional
    (child0 : tree1320 = literal1320)
    (child1 : tree1321 = literal1321) : tree1322 = literal1322 := by
  rw [tree1322_def, child0, child1]
  rfl
theorem node1322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1320 live1320 coloured1320 = result1320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1321 live1321 coloured1321 = result1321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1322 live1322 coloured1322 = result1322 := by
  rw [tree1322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1320 coloured1320 at child
  try dsimp only [live1322, coloured1322]
  rw [child]
  dsimp only [result1320]
  have child := child1
  unfold live1321 coloured1321 at child
  try dsimp only [live1322, coloured1322]
  rw [child]
  dsimp only [result1321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1323_agree_conditional : tree1323 = literal1323 := by
  rw [tree1323_def]
  rfl
theorem node1323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1323 live1323 coloured1323 = result1323 := by
  rw [tree1323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1324_agree_conditional
    (child0 : tree1322 = literal1322)
    (child1 : tree1323 = literal1323) : tree1324 = literal1324 := by
  rw [tree1324_def, child0, child1]
  rfl
theorem node1324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1322 live1322 coloured1322 = result1322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1323 live1323 coloured1323 = result1323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1324 live1324 coloured1324 = result1324 := by
  rw [tree1324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1322 coloured1322 at child
  try dsimp only [live1324, coloured1324]
  rw [child]
  dsimp only [result1322]
  have child := child1
  unfold live1323 coloured1323 at child
  try dsimp only [live1324, coloured1324]
  rw [child]
  dsimp only [result1323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1325_agree_conditional : tree1325 = literal1325 := by
  rw [tree1325_def]
  rfl
theorem node1325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1325 live1325 coloured1325 = result1325 := by
  rw [tree1325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1326_agree_conditional
    (child0 : tree1324 = literal1324)
    (child1 : tree1325 = literal1325) : tree1326 = literal1326 := by
  rw [tree1326_def, child0, child1]
  rfl
theorem node1326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1324 live1324 coloured1324 = result1324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1325 live1325 coloured1325 = result1325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1326 live1326 coloured1326 = result1326 := by
  rw [tree1326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1324 coloured1324 at child
  try dsimp only [live1326, coloured1326]
  rw [child]
  dsimp only [result1324]
  have child := child1
  unfold live1325 coloured1325 at child
  try dsimp only [live1326, coloured1326]
  rw [child]
  dsimp only [result1325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1327_agree_conditional : tree1327 = literal1327 := by
  rw [tree1327_def]
  rfl
theorem node1327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1327 live1327 coloured1327 = result1327 := by
  rw [tree1327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1328_agree_conditional
    (child0 : tree1326 = literal1326)
    (child1 : tree1327 = literal1327) : tree1328 = literal1328 := by
  rw [tree1328_def, child0, child1]
  rfl
theorem node1328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1326 live1326 coloured1326 = result1326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1327 live1327 coloured1327 = result1327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1328 live1328 coloured1328 = result1328 := by
  rw [tree1328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1326 coloured1326 at child
  try dsimp only [live1328, coloured1328]
  rw [child]
  dsimp only [result1326]
  have child := child1
  unfold live1327 coloured1327 at child
  try dsimp only [live1328, coloured1328]
  rw [child]
  dsimp only [result1327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1329_agree_conditional : tree1329 = literal1329 := by
  rw [tree1329_def]
  rfl
theorem node1329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1329 live1329 coloured1329 = result1329 := by
  rw [tree1329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1330_agree_conditional
    (child0 : tree1328 = literal1328)
    (child1 : tree1329 = literal1329) : tree1330 = literal1330 := by
  rw [tree1330_def, child0, child1]
  rfl
theorem node1330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1328 live1328 coloured1328 = result1328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1329 live1329 coloured1329 = result1329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1330 live1330 coloured1330 = result1330 := by
  rw [tree1330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1328 coloured1328 at child
  try dsimp only [live1330, coloured1330]
  rw [child]
  dsimp only [result1328]
  have child := child1
  unfold live1329 coloured1329 at child
  try dsimp only [live1330, coloured1330]
  rw [child]
  dsimp only [result1329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1331_agree_conditional : tree1331 = literal1331 := by
  rw [tree1331_def]
  rfl
theorem node1331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1331 live1331 coloured1331 = result1331 := by
  rw [tree1331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1332_agree_conditional
    (child0 : tree1330 = literal1330)
    (child1 : tree1331 = literal1331) : tree1332 = literal1332 := by
  rw [tree1332_def, child0, child1]
  rfl
theorem node1332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1330 live1330 coloured1330 = result1330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1331 live1331 coloured1331 = result1331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1332 live1332 coloured1332 = result1332 := by
  rw [tree1332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1330 coloured1330 at child
  try dsimp only [live1332, coloured1332]
  rw [child]
  dsimp only [result1330]
  have child := child1
  unfold live1331 coloured1331 at child
  try dsimp only [live1332, coloured1332]
  rw [child]
  dsimp only [result1331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1333_agree_conditional : tree1333 = literal1333 := by
  rw [tree1333_def]
  rfl
theorem node1333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1333 live1333 coloured1333 = result1333 := by
  rw [tree1333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1334_agree_conditional
    (child0 : tree1332 = literal1332)
    (child1 : tree1333 = literal1333) : tree1334 = literal1334 := by
  rw [tree1334_def, child0, child1]
  rfl
theorem node1334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1332 live1332 coloured1332 = result1332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1333 live1333 coloured1333 = result1333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1334 live1334 coloured1334 = result1334 := by
  rw [tree1334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1332 coloured1332 at child
  try dsimp only [live1334, coloured1334]
  rw [child]
  dsimp only [result1332]
  have child := child1
  unfold live1333 coloured1333 at child
  try dsimp only [live1334, coloured1334]
  rw [child]
  dsimp only [result1333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1335_agree_conditional : tree1335 = literal1335 := by
  rw [tree1335_def]
  rfl
theorem node1335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1335 live1335 coloured1335 = result1335 := by
  rw [tree1335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1336_agree_conditional
    (child0 : tree1334 = literal1334)
    (child1 : tree1335 = literal1335) : tree1336 = literal1336 := by
  rw [tree1336_def, child0, child1]
  rfl
theorem node1336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1334 live1334 coloured1334 = result1334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1335 live1335 coloured1335 = result1335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1336 live1336 coloured1336 = result1336 := by
  rw [tree1336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1334 coloured1334 at child
  try dsimp only [live1336, coloured1336]
  rw [child]
  dsimp only [result1334]
  have child := child1
  unfold live1335 coloured1335 at child
  try dsimp only [live1336, coloured1336]
  rw [child]
  dsimp only [result1335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1337_agree_conditional : tree1337 = literal1337 := by
  rw [tree1337_def]
  rfl
theorem node1337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1337 live1337 coloured1337 = result1337 := by
  rw [tree1337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1338_agree_conditional
    (child0 : tree1336 = literal1336)
    (child1 : tree1337 = literal1337) : tree1338 = literal1338 := by
  rw [tree1338_def, child0, child1]
  rfl
theorem node1338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1336 live1336 coloured1336 = result1336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1337 live1337 coloured1337 = result1337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1338 live1338 coloured1338 = result1338 := by
  rw [tree1338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1336 coloured1336 at child
  try dsimp only [live1338, coloured1338]
  rw [child]
  dsimp only [result1336]
  have child := child1
  unfold live1337 coloured1337 at child
  try dsimp only [live1338, coloured1338]
  rw [child]
  dsimp only [result1337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1339_agree_conditional : tree1339 = literal1339 := by
  rw [tree1339_def]
  rfl
theorem node1339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1339 live1339 coloured1339 = result1339 := by
  rw [tree1339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1340_agree_conditional
    (child0 : tree1338 = literal1338)
    (child1 : tree1339 = literal1339) : tree1340 = literal1340 := by
  rw [tree1340_def, child0, child1]
  rfl
theorem node1340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1338 live1338 coloured1338 = result1338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1339 live1339 coloured1339 = result1339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1340 live1340 coloured1340 = result1340 := by
  rw [tree1340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1338 coloured1338 at child
  try dsimp only [live1340, coloured1340]
  rw [child]
  dsimp only [result1338]
  have child := child1
  unfold live1339 coloured1339 at child
  try dsimp only [live1340, coloured1340]
  rw [child]
  dsimp only [result1339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1341_agree_conditional : tree1341 = literal1341 := by
  rw [tree1341_def]
  rfl
theorem node1341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1341 live1341 coloured1341 = result1341 := by
  rw [tree1341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1342_agree_conditional
    (child0 : tree1340 = literal1340)
    (child1 : tree1341 = literal1341) : tree1342 = literal1342 := by
  rw [tree1342_def, child0, child1]
  rfl
theorem node1342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1340 live1340 coloured1340 = result1340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1341 live1341 coloured1341 = result1341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1342 live1342 coloured1342 = result1342 := by
  rw [tree1342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1340 coloured1340 at child
  try dsimp only [live1342, coloured1342]
  rw [child]
  dsimp only [result1340]
  have child := child1
  unfold live1341 coloured1341 at child
  try dsimp only [live1342, coloured1342]
  rw [child]
  dsimp only [result1341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1343_agree_conditional : tree1343 = literal1343 := by
  rw [tree1343_def]
  rfl
theorem node1343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1343 live1343 coloured1343 = result1343 := by
  rw [tree1343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
