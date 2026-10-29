import InitECandidate.Proofs.ClashStages713.Proof85
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8256_agree : tree8256 = literal8256 := by
  rw [tree8256_def, tree8254_agree, tree8255_agree]
  rfl
theorem node8256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8256 live8256 coloured8256 = result8256 := by
  rw [tree8256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8254_eq
  unfold live8254 coloured8254 at child
  try dsimp only [live8256, coloured8256]
  rw [child]
  dsimp only [result8254]
  have child := node8255_eq
  unfold live8255 coloured8255 at child
  try dsimp only [live8256, coloured8256]
  rw [child]
  dsimp only [result8255]
  try dsimp only [colour, result8256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8257_agree : tree8257 = literal8257 := by
  rw [tree8257_def]
  rfl
theorem node8257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8257 live8257 coloured8257 = result8257 := by
  rw [tree8257_def]
  try dsimp only [colour, result8257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8258_agree : tree8258 = literal8258 := by
  rw [tree8258_def, tree8256_agree, tree8257_agree]
  rfl
theorem node8258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8258 live8258 coloured8258 = result8258 := by
  rw [tree8258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8256_eq
  unfold live8256 coloured8256 at child
  try dsimp only [live8258, coloured8258]
  rw [child]
  dsimp only [result8256]
  have child := node8257_eq
  unfold live8257 coloured8257 at child
  try dsimp only [live8258, coloured8258]
  rw [child]
  dsimp only [result8257]
  try dsimp only [colour, result8258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8259_agree : tree8259 = literal8259 := by
  rw [tree8259_def]
  rfl
theorem node8259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8259 live8259 coloured8259 = result8259 := by
  rw [tree8259_def]
  try dsimp only [colour, result8259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8260_agree : tree8260 = literal8260 := by
  rw [tree8260_def, tree8258_agree, tree8259_agree]
  rfl
theorem node8260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8260 live8260 coloured8260 = result8260 := by
  rw [tree8260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8258_eq
  unfold live8258 coloured8258 at child
  try dsimp only [live8260, coloured8260]
  rw [child]
  dsimp only [result8258]
  have child := node8259_eq
  unfold live8259 coloured8259 at child
  try dsimp only [live8260, coloured8260]
  rw [child]
  dsimp only [result8259]
  try dsimp only [colour, result8260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8261_agree : tree8261 = literal8261 := by
  rw [tree8261_def]
  rfl
theorem node8261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8261 live8261 coloured8261 = result8261 := by
  rw [tree8261_def]
  try dsimp only [colour, result8261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8262_agree : tree8262 = literal8262 := by
  rw [tree8262_def, tree8260_agree, tree8261_agree]
  rfl
theorem node8262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8262 live8262 coloured8262 = result8262 := by
  rw [tree8262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8260_eq
  unfold live8260 coloured8260 at child
  try dsimp only [live8262, coloured8262]
  rw [child]
  dsimp only [result8260]
  have child := node8261_eq
  unfold live8261 coloured8261 at child
  try dsimp only [live8262, coloured8262]
  rw [child]
  dsimp only [result8261]
  try dsimp only [colour, result8262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8263_agree : tree8263 = literal8263 := by
  rw [tree8263_def]
  rfl
theorem node8263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8263 live8263 coloured8263 = result8263 := by
  rw [tree8263_def]
  try dsimp only [colour, result8263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8264_agree : tree8264 = literal8264 := by
  rw [tree8264_def, tree8262_agree, tree8263_agree]
  rfl
theorem node8264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8264 live8264 coloured8264 = result8264 := by
  rw [tree8264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8262_eq
  unfold live8262 coloured8262 at child
  try dsimp only [live8264, coloured8264]
  rw [child]
  dsimp only [result8262]
  have child := node8263_eq
  unfold live8263 coloured8263 at child
  try dsimp only [live8264, coloured8264]
  rw [child]
  dsimp only [result8263]
  try dsimp only [colour, result8264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8265_agree : tree8265 = literal8265 := by
  rw [tree8265_def]
  rfl
theorem node8265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8265 live8265 coloured8265 = result8265 := by
  rw [tree8265_def]
  try dsimp only [colour, result8265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8266_agree : tree8266 = literal8266 := by
  rw [tree8266_def, tree8264_agree, tree8265_agree]
  rfl
theorem node8266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8266 live8266 coloured8266 = result8266 := by
  rw [tree8266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8264_eq
  unfold live8264 coloured8264 at child
  try dsimp only [live8266, coloured8266]
  rw [child]
  dsimp only [result8264]
  have child := node8265_eq
  unfold live8265 coloured8265 at child
  try dsimp only [live8266, coloured8266]
  rw [child]
  dsimp only [result8265]
  try dsimp only [colour, result8266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8267_agree : tree8267 = literal8267 := by
  rw [tree8267_def]
  rfl
theorem node8267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8267 live8267 coloured8267 = result8267 := by
  rw [tree8267_def]
  try dsimp only [colour, result8267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8268_agree : tree8268 = literal8268 := by
  rw [tree8268_def, tree8266_agree, tree8267_agree]
  rfl
theorem node8268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8268 live8268 coloured8268 = result8268 := by
  rw [tree8268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8266_eq
  unfold live8266 coloured8266 at child
  try dsimp only [live8268, coloured8268]
  rw [child]
  dsimp only [result8266]
  have child := node8267_eq
  unfold live8267 coloured8267 at child
  try dsimp only [live8268, coloured8268]
  rw [child]
  dsimp only [result8267]
  try dsimp only [colour, result8268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8269_agree : tree8269 = literal8269 := by
  rw [tree8269_def]
  rfl
theorem node8269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8269 live8269 coloured8269 = result8269 := by
  rw [tree8269_def]
  try dsimp only [colour, result8269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8270_agree : tree8270 = literal8270 := by
  rw [tree8270_def, tree8268_agree, tree8269_agree]
  rfl
theorem node8270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8270 live8270 coloured8270 = result8270 := by
  rw [tree8270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8268_eq
  unfold live8268 coloured8268 at child
  try dsimp only [live8270, coloured8270]
  rw [child]
  dsimp only [result8268]
  have child := node8269_eq
  unfold live8269 coloured8269 at child
  try dsimp only [live8270, coloured8270]
  rw [child]
  dsimp only [result8269]
  try dsimp only [colour, result8270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8271_agree : tree8271 = literal8271 := by
  rw [tree8271_def]
  rfl
theorem node8271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8271 live8271 coloured8271 = result8271 := by
  rw [tree8271_def]
  try dsimp only [colour, result8271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8272_agree : tree8272 = literal8272 := by
  rw [tree8272_def, tree8270_agree, tree8271_agree]
  rfl
theorem node8272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8272 live8272 coloured8272 = result8272 := by
  rw [tree8272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8270_eq
  unfold live8270 coloured8270 at child
  try dsimp only [live8272, coloured8272]
  rw [child]
  dsimp only [result8270]
  have child := node8271_eq
  unfold live8271 coloured8271 at child
  try dsimp only [live8272, coloured8272]
  rw [child]
  dsimp only [result8271]
  try dsimp only [colour, result8272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8273_agree : tree8273 = literal8273 := by
  rw [tree8273_def]
  rfl
theorem node8273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8273 live8273 coloured8273 = result8273 := by
  rw [tree8273_def]
  try dsimp only [colour, result8273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8274_agree : tree8274 = literal8274 := by
  rw [tree8274_def, tree8272_agree, tree8273_agree]
  rfl
theorem node8274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8274 live8274 coloured8274 = result8274 := by
  rw [tree8274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8272_eq
  unfold live8272 coloured8272 at child
  try dsimp only [live8274, coloured8274]
  rw [child]
  dsimp only [result8272]
  have child := node8273_eq
  unfold live8273 coloured8273 at child
  try dsimp only [live8274, coloured8274]
  rw [child]
  dsimp only [result8273]
  try dsimp only [colour, result8274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8275_agree : tree8275 = literal8275 := by
  rw [tree8275_def]
  rfl
theorem node8275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8275 live8275 coloured8275 = result8275 := by
  rw [tree8275_def]
  try dsimp only [colour, result8275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8276_agree : tree8276 = literal8276 := by
  rw [tree8276_def, tree8274_agree, tree8275_agree]
  rfl
theorem node8276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8276 live8276 coloured8276 = result8276 := by
  rw [tree8276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8274_eq
  unfold live8274 coloured8274 at child
  try dsimp only [live8276, coloured8276]
  rw [child]
  dsimp only [result8274]
  have child := node8275_eq
  unfold live8275 coloured8275 at child
  try dsimp only [live8276, coloured8276]
  rw [child]
  dsimp only [result8275]
  try dsimp only [colour, result8276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8277_agree : tree8277 = literal8277 := by
  rw [tree8277_def]
  rfl
theorem node8277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8277 live8277 coloured8277 = result8277 := by
  rw [tree8277_def]
  try dsimp only [colour, result8277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8278_agree : tree8278 = literal8278 := by
  rw [tree8278_def, tree8276_agree, tree8277_agree]
  rfl
theorem node8278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8278 live8278 coloured8278 = result8278 := by
  rw [tree8278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8276_eq
  unfold live8276 coloured8276 at child
  try dsimp only [live8278, coloured8278]
  rw [child]
  dsimp only [result8276]
  have child := node8277_eq
  unfold live8277 coloured8277 at child
  try dsimp only [live8278, coloured8278]
  rw [child]
  dsimp only [result8277]
  try dsimp only [colour, result8278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8279_agree : tree8279 = literal8279 := by
  rw [tree8279_def]
  rfl
theorem node8279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8279 live8279 coloured8279 = result8279 := by
  rw [tree8279_def]
  try dsimp only [colour, result8279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8280_agree : tree8280 = literal8280 := by
  rw [tree8280_def, tree8278_agree, tree8279_agree]
  rfl
theorem node8280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8280 live8280 coloured8280 = result8280 := by
  rw [tree8280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8278_eq
  unfold live8278 coloured8278 at child
  try dsimp only [live8280, coloured8280]
  rw [child]
  dsimp only [result8278]
  have child := node8279_eq
  unfold live8279 coloured8279 at child
  try dsimp only [live8280, coloured8280]
  rw [child]
  dsimp only [result8279]
  try dsimp only [colour, result8280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8281_agree : tree8281 = literal8281 := by
  rw [tree8281_def]
  rfl
theorem node8281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8281 live8281 coloured8281 = result8281 := by
  rw [tree8281_def]
  try dsimp only [colour, result8281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8282_agree : tree8282 = literal8282 := by
  rw [tree8282_def, tree8280_agree, tree8281_agree]
  rfl
theorem node8282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8282 live8282 coloured8282 = result8282 := by
  rw [tree8282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8280_eq
  unfold live8280 coloured8280 at child
  try dsimp only [live8282, coloured8282]
  rw [child]
  dsimp only [result8280]
  have child := node8281_eq
  unfold live8281 coloured8281 at child
  try dsimp only [live8282, coloured8282]
  rw [child]
  dsimp only [result8281]
  try dsimp only [colour, result8282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8283_agree : tree8283 = literal8283 := by
  rw [tree8283_def]
  rfl
theorem node8283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8283 live8283 coloured8283 = result8283 := by
  rw [tree8283_def]
  try dsimp only [colour, result8283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8284_agree : tree8284 = literal8284 := by
  rw [tree8284_def, tree8282_agree, tree8283_agree]
  rfl
theorem node8284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8284 live8284 coloured8284 = result8284 := by
  rw [tree8284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8282_eq
  unfold live8282 coloured8282 at child
  try dsimp only [live8284, coloured8284]
  rw [child]
  dsimp only [result8282]
  have child := node8283_eq
  unfold live8283 coloured8283 at child
  try dsimp only [live8284, coloured8284]
  rw [child]
  dsimp only [result8283]
  try dsimp only [colour, result8284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8285_agree : tree8285 = literal8285 := by
  rw [tree8285_def]
  rfl
theorem node8285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8285 live8285 coloured8285 = result8285 := by
  rw [tree8285_def]
  try dsimp only [colour, result8285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8286_agree : tree8286 = literal8286 := by
  rw [tree8286_def, tree8284_agree, tree8285_agree]
  rfl
theorem node8286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8286 live8286 coloured8286 = result8286 := by
  rw [tree8286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8284_eq
  unfold live8284 coloured8284 at child
  try dsimp only [live8286, coloured8286]
  rw [child]
  dsimp only [result8284]
  have child := node8285_eq
  unfold live8285 coloured8285 at child
  try dsimp only [live8286, coloured8286]
  rw [child]
  dsimp only [result8285]
  try dsimp only [colour, result8286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8287_agree : tree8287 = literal8287 := by
  rw [tree8287_def]
  rfl
theorem node8287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8287 live8287 coloured8287 = result8287 := by
  rw [tree8287_def]
  try dsimp only [colour, result8287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8288_agree : tree8288 = literal8288 := by
  rw [tree8288_def, tree8286_agree, tree8287_agree]
  rfl
theorem node8288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8288 live8288 coloured8288 = result8288 := by
  rw [tree8288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8286_eq
  unfold live8286 coloured8286 at child
  try dsimp only [live8288, coloured8288]
  rw [child]
  dsimp only [result8286]
  have child := node8287_eq
  unfold live8287 coloured8287 at child
  try dsimp only [live8288, coloured8288]
  rw [child]
  dsimp only [result8287]
  try dsimp only [colour, result8288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8289_agree : tree8289 = literal8289 := by
  rw [tree8289_def]
  rfl
theorem node8289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8289 live8289 coloured8289 = result8289 := by
  rw [tree8289_def]
  try dsimp only [colour, result8289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8290_agree : tree8290 = literal8290 := by
  rw [tree8290_def, tree8288_agree, tree8289_agree]
  rfl
theorem node8290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8290 live8290 coloured8290 = result8290 := by
  rw [tree8290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8288_eq
  unfold live8288 coloured8288 at child
  try dsimp only [live8290, coloured8290]
  rw [child]
  dsimp only [result8288]
  have child := node8289_eq
  unfold live8289 coloured8289 at child
  try dsimp only [live8290, coloured8290]
  rw [child]
  dsimp only [result8289]
  try dsimp only [colour, result8290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8291_agree : tree8291 = literal8291 := by
  rw [tree8291_def]
  rfl
theorem node8291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8291 live8291 coloured8291 = result8291 := by
  rw [tree8291_def]
  try dsimp only [colour, result8291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8292_agree : tree8292 = literal8292 := by
  rw [tree8292_def, tree8290_agree, tree8291_agree]
  rfl
theorem node8292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8292 live8292 coloured8292 = result8292 := by
  rw [tree8292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8290_eq
  unfold live8290 coloured8290 at child
  try dsimp only [live8292, coloured8292]
  rw [child]
  dsimp only [result8290]
  have child := node8291_eq
  unfold live8291 coloured8291 at child
  try dsimp only [live8292, coloured8292]
  rw [child]
  dsimp only [result8291]
  try dsimp only [colour, result8292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8293_agree : tree8293 = literal8293 := by
  rw [tree8293_def]
  rfl
theorem node8293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8293 live8293 coloured8293 = result8293 := by
  rw [tree8293_def]
  try dsimp only [colour, result8293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8294_agree : tree8294 = literal8294 := by
  rw [tree8294_def, tree8292_agree, tree8293_agree]
  rfl
theorem node8294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8294 live8294 coloured8294 = result8294 := by
  rw [tree8294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8292_eq
  unfold live8292 coloured8292 at child
  try dsimp only [live8294, coloured8294]
  rw [child]
  dsimp only [result8292]
  have child := node8293_eq
  unfold live8293 coloured8293 at child
  try dsimp only [live8294, coloured8294]
  rw [child]
  dsimp only [result8293]
  try dsimp only [colour, result8294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8295_agree : tree8295 = literal8295 := by
  rw [tree8295_def]
  rfl
theorem node8295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8295 live8295 coloured8295 = result8295 := by
  rw [tree8295_def]
  try dsimp only [colour, result8295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8296_agree : tree8296 = literal8296 := by
  rw [tree8296_def, tree8294_agree, tree8295_agree]
  rfl
theorem node8296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8296 live8296 coloured8296 = result8296 := by
  rw [tree8296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8294_eq
  unfold live8294 coloured8294 at child
  try dsimp only [live8296, coloured8296]
  rw [child]
  dsimp only [result8294]
  have child := node8295_eq
  unfold live8295 coloured8295 at child
  try dsimp only [live8296, coloured8296]
  rw [child]
  dsimp only [result8295]
  try dsimp only [colour, result8296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8297_agree : tree8297 = literal8297 := by
  rw [tree8297_def]
  rfl
theorem node8297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8297 live8297 coloured8297 = result8297 := by
  rw [tree8297_def]
  try dsimp only [colour, result8297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8298_agree : tree8298 = literal8298 := by
  rw [tree8298_def, tree8296_agree, tree8297_agree]
  rfl
theorem node8298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8298 live8298 coloured8298 = result8298 := by
  rw [tree8298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8296_eq
  unfold live8296 coloured8296 at child
  try dsimp only [live8298, coloured8298]
  rw [child]
  dsimp only [result8296]
  have child := node8297_eq
  unfold live8297 coloured8297 at child
  try dsimp only [live8298, coloured8298]
  rw [child]
  dsimp only [result8297]
  try dsimp only [colour, result8298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8299_agree : tree8299 = literal8299 := by
  rw [tree8299_def]
  rfl
theorem node8299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8299 live8299 coloured8299 = result8299 := by
  rw [tree8299_def]
  try dsimp only [colour, result8299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8300_agree : tree8300 = literal8300 := by
  rw [tree8300_def, tree8298_agree, tree8299_agree]
  rfl
theorem node8300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8300 live8300 coloured8300 = result8300 := by
  rw [tree8300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8298_eq
  unfold live8298 coloured8298 at child
  try dsimp only [live8300, coloured8300]
  rw [child]
  dsimp only [result8298]
  have child := node8299_eq
  unfold live8299 coloured8299 at child
  try dsimp only [live8300, coloured8300]
  rw [child]
  dsimp only [result8299]
  try dsimp only [colour, result8300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8301_agree : tree8301 = literal8301 := by
  rw [tree8301_def]
  rfl
theorem node8301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8301 live8301 coloured8301 = result8301 := by
  rw [tree8301_def]
  try dsimp only [colour, result8301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8302_agree : tree8302 = literal8302 := by
  rw [tree8302_def, tree8300_agree, tree8301_agree]
  rfl
theorem node8302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8302 live8302 coloured8302 = result8302 := by
  rw [tree8302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8300_eq
  unfold live8300 coloured8300 at child
  try dsimp only [live8302, coloured8302]
  rw [child]
  dsimp only [result8300]
  have child := node8301_eq
  unfold live8301 coloured8301 at child
  try dsimp only [live8302, coloured8302]
  rw [child]
  dsimp only [result8301]
  try dsimp only [colour, result8302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8303_agree : tree8303 = literal8303 := by
  rw [tree8303_def]
  rfl
theorem node8303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8303 live8303 coloured8303 = result8303 := by
  rw [tree8303_def]
  try dsimp only [colour, result8303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8304_agree : tree8304 = literal8304 := by
  rw [tree8304_def, tree8302_agree, tree8303_agree]
  rfl
theorem node8304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8304 live8304 coloured8304 = result8304 := by
  rw [tree8304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8302_eq
  unfold live8302 coloured8302 at child
  try dsimp only [live8304, coloured8304]
  rw [child]
  dsimp only [result8302]
  have child := node8303_eq
  unfold live8303 coloured8303 at child
  try dsimp only [live8304, coloured8304]
  rw [child]
  dsimp only [result8303]
  try dsimp only [colour, result8304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8305_agree : tree8305 = literal8305 := by
  rw [tree8305_def]
  rfl
theorem node8305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8305 live8305 coloured8305 = result8305 := by
  rw [tree8305_def]
  try dsimp only [colour, result8305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8306_agree : tree8306 = literal8306 := by
  rw [tree8306_def, tree8304_agree, tree8305_agree]
  rfl
theorem node8306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8306 live8306 coloured8306 = result8306 := by
  rw [tree8306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8304_eq
  unfold live8304 coloured8304 at child
  try dsimp only [live8306, coloured8306]
  rw [child]
  dsimp only [result8304]
  have child := node8305_eq
  unfold live8305 coloured8305 at child
  try dsimp only [live8306, coloured8306]
  rw [child]
  dsimp only [result8305]
  try dsimp only [colour, result8306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8307_agree : tree8307 = literal8307 := by
  rw [tree8307_def]
  rfl
theorem node8307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8307 live8307 coloured8307 = result8307 := by
  rw [tree8307_def]
  try dsimp only [colour, result8307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8308_agree : tree8308 = literal8308 := by
  rw [tree8308_def, tree8306_agree, tree8307_agree]
  rfl
theorem node8308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8308 live8308 coloured8308 = result8308 := by
  rw [tree8308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8306_eq
  unfold live8306 coloured8306 at child
  try dsimp only [live8308, coloured8308]
  rw [child]
  dsimp only [result8306]
  have child := node8307_eq
  unfold live8307 coloured8307 at child
  try dsimp only [live8308, coloured8308]
  rw [child]
  dsimp only [result8307]
  try dsimp only [colour, result8308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8309_agree : tree8309 = literal8309 := by
  rw [tree8309_def]
  rfl
theorem node8309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8309 live8309 coloured8309 = result8309 := by
  rw [tree8309_def]
  try dsimp only [colour, result8309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8310_agree : tree8310 = literal8310 := by
  rw [tree8310_def, tree8308_agree, tree8309_agree]
  rfl
theorem node8310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8310 live8310 coloured8310 = result8310 := by
  rw [tree8310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8308_eq
  unfold live8308 coloured8308 at child
  try dsimp only [live8310, coloured8310]
  rw [child]
  dsimp only [result8308]
  have child := node8309_eq
  unfold live8309 coloured8309 at child
  try dsimp only [live8310, coloured8310]
  rw [child]
  dsimp only [result8309]
  try dsimp only [colour, result8310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8311_agree : tree8311 = literal8311 := by
  rw [tree8311_def]
  rfl
theorem node8311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8311 live8311 coloured8311 = result8311 := by
  rw [tree8311_def]
  try dsimp only [colour, result8311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8312_agree : tree8312 = literal8312 := by
  rw [tree8312_def, tree8310_agree, tree8311_agree]
  rfl
theorem node8312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8312 live8312 coloured8312 = result8312 := by
  rw [tree8312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8310_eq
  unfold live8310 coloured8310 at child
  try dsimp only [live8312, coloured8312]
  rw [child]
  dsimp only [result8310]
  have child := node8311_eq
  unfold live8311 coloured8311 at child
  try dsimp only [live8312, coloured8312]
  rw [child]
  dsimp only [result8311]
  try dsimp only [colour, result8312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8313_agree : tree8313 = literal8313 := by
  rw [tree8313_def]
  rfl
theorem node8313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8313 live8313 coloured8313 = result8313 := by
  rw [tree8313_def]
  try dsimp only [colour, result8313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8314_agree : tree8314 = literal8314 := by
  rw [tree8314_def, tree8312_agree, tree8313_agree]
  rfl
theorem node8314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8314 live8314 coloured8314 = result8314 := by
  rw [tree8314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8312_eq
  unfold live8312 coloured8312 at child
  try dsimp only [live8314, coloured8314]
  rw [child]
  dsimp only [result8312]
  have child := node8313_eq
  unfold live8313 coloured8313 at child
  try dsimp only [live8314, coloured8314]
  rw [child]
  dsimp only [result8313]
  try dsimp only [colour, result8314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8315_agree : tree8315 = literal8315 := by
  rw [tree8315_def]
  rfl
theorem node8315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8315 live8315 coloured8315 = result8315 := by
  rw [tree8315_def]
  try dsimp only [colour, result8315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8316_agree : tree8316 = literal8316 := by
  rw [tree8316_def, tree8314_agree, tree8315_agree]
  rfl
theorem node8316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8316 live8316 coloured8316 = result8316 := by
  rw [tree8316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8314_eq
  unfold live8314 coloured8314 at child
  try dsimp only [live8316, coloured8316]
  rw [child]
  dsimp only [result8314]
  have child := node8315_eq
  unfold live8315 coloured8315 at child
  try dsimp only [live8316, coloured8316]
  rw [child]
  dsimp only [result8315]
  try dsimp only [colour, result8316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8317_agree : tree8317 = literal8317 := by
  rw [tree8317_def]
  rfl
theorem node8317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8317 live8317 coloured8317 = result8317 := by
  rw [tree8317_def]
  try dsimp only [colour, result8317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8318_agree : tree8318 = literal8318 := by
  rw [tree8318_def, tree8316_agree, tree8317_agree]
  rfl
theorem node8318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8318 live8318 coloured8318 = result8318 := by
  rw [tree8318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8316_eq
  unfold live8316 coloured8316 at child
  try dsimp only [live8318, coloured8318]
  rw [child]
  dsimp only [result8316]
  have child := node8317_eq
  unfold live8317 coloured8317 at child
  try dsimp only [live8318, coloured8318]
  rw [child]
  dsimp only [result8317]
  try dsimp only [colour, result8318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8319_agree : tree8319 = literal8319 := by
  rw [tree8319_def]
  rfl
theorem node8319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8319 live8319 coloured8319 = result8319 := by
  rw [tree8319_def]
  try dsimp only [colour, result8319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8320_agree : tree8320 = literal8320 := by
  rw [tree8320_def, tree8318_agree, tree8319_agree]
  rfl
theorem node8320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8320 live8320 coloured8320 = result8320 := by
  rw [tree8320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8318_eq
  unfold live8318 coloured8318 at child
  try dsimp only [live8320, coloured8320]
  rw [child]
  dsimp only [result8318]
  have child := node8319_eq
  unfold live8319 coloured8319 at child
  try dsimp only [live8320, coloured8320]
  rw [child]
  dsimp only [result8319]
  try dsimp only [colour, result8320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8321_agree : tree8321 = literal8321 := by
  rw [tree8321_def]
  rfl
theorem node8321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8321 live8321 coloured8321 = result8321 := by
  rw [tree8321_def]
  try dsimp only [colour, result8321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8322_agree : tree8322 = literal8322 := by
  rw [tree8322_def, tree8320_agree, tree8321_agree]
  rfl
theorem node8322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8322 live8322 coloured8322 = result8322 := by
  rw [tree8322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8320_eq
  unfold live8320 coloured8320 at child
  try dsimp only [live8322, coloured8322]
  rw [child]
  dsimp only [result8320]
  have child := node8321_eq
  unfold live8321 coloured8321 at child
  try dsimp only [live8322, coloured8322]
  rw [child]
  dsimp only [result8321]
  try dsimp only [colour, result8322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8323_agree : tree8323 = literal8323 := by
  rw [tree8323_def]
  rfl
theorem node8323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8323 live8323 coloured8323 = result8323 := by
  rw [tree8323_def]
  try dsimp only [colour, result8323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8324_agree : tree8324 = literal8324 := by
  rw [tree8324_def, tree8322_agree, tree8323_agree]
  rfl
theorem node8324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8324 live8324 coloured8324 = result8324 := by
  rw [tree8324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8322_eq
  unfold live8322 coloured8322 at child
  try dsimp only [live8324, coloured8324]
  rw [child]
  dsimp only [result8322]
  have child := node8323_eq
  unfold live8323 coloured8323 at child
  try dsimp only [live8324, coloured8324]
  rw [child]
  dsimp only [result8323]
  try dsimp only [colour, result8324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8325_agree : tree8325 = literal8325 := by
  rw [tree8325_def]
  rfl
theorem node8325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8325 live8325 coloured8325 = result8325 := by
  rw [tree8325_def]
  try dsimp only [colour, result8325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8326_agree : tree8326 = literal8326 := by
  rw [tree8326_def, tree8324_agree, tree8325_agree]
  rfl
theorem node8326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8326 live8326 coloured8326 = result8326 := by
  rw [tree8326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8324_eq
  unfold live8324 coloured8324 at child
  try dsimp only [live8326, coloured8326]
  rw [child]
  dsimp only [result8324]
  have child := node8325_eq
  unfold live8325 coloured8325 at child
  try dsimp only [live8326, coloured8326]
  rw [child]
  dsimp only [result8325]
  try dsimp only [colour, result8326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8327_agree : tree8327 = literal8327 := by
  rw [tree8327_def]
  rfl
theorem node8327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8327 live8327 coloured8327 = result8327 := by
  rw [tree8327_def]
  try dsimp only [colour, result8327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8328_agree : tree8328 = literal8328 := by
  rw [tree8328_def, tree8326_agree, tree8327_agree]
  rfl
theorem node8328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8328 live8328 coloured8328 = result8328 := by
  rw [tree8328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8326_eq
  unfold live8326 coloured8326 at child
  try dsimp only [live8328, coloured8328]
  rw [child]
  dsimp only [result8326]
  have child := node8327_eq
  unfold live8327 coloured8327 at child
  try dsimp only [live8328, coloured8328]
  rw [child]
  dsimp only [result8327]
  try dsimp only [colour, result8328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8329_agree : tree8329 = literal8329 := by
  rw [tree8329_def]
  rfl
theorem node8329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8329 live8329 coloured8329 = result8329 := by
  rw [tree8329_def]
  try dsimp only [colour, result8329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8330_agree : tree8330 = literal8330 := by
  rw [tree8330_def, tree8328_agree, tree8329_agree]
  rfl
theorem node8330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8330 live8330 coloured8330 = result8330 := by
  rw [tree8330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8328_eq
  unfold live8328 coloured8328 at child
  try dsimp only [live8330, coloured8330]
  rw [child]
  dsimp only [result8328]
  have child := node8329_eq
  unfold live8329 coloured8329 at child
  try dsimp only [live8330, coloured8330]
  rw [child]
  dsimp only [result8329]
  try dsimp only [colour, result8330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8331_agree : tree8331 = literal8331 := by
  rw [tree8331_def]
  rfl
theorem node8331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8331 live8331 coloured8331 = result8331 := by
  rw [tree8331_def]
  try dsimp only [colour, result8331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8332_agree : tree8332 = literal8332 := by
  rw [tree8332_def, tree8330_agree, tree8331_agree]
  rfl
theorem node8332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8332 live8332 coloured8332 = result8332 := by
  rw [tree8332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8330_eq
  unfold live8330 coloured8330 at child
  try dsimp only [live8332, coloured8332]
  rw [child]
  dsimp only [result8330]
  have child := node8331_eq
  unfold live8331 coloured8331 at child
  try dsimp only [live8332, coloured8332]
  rw [child]
  dsimp only [result8331]
  try dsimp only [colour, result8332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8333_agree : tree8333 = literal8333 := by
  rw [tree8333_def]
  rfl
theorem node8333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8333 live8333 coloured8333 = result8333 := by
  rw [tree8333_def]
  try dsimp only [colour, result8333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8334_agree : tree8334 = literal8334 := by
  rw [tree8334_def, tree8332_agree, tree8333_agree]
  rfl
theorem node8334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8334 live8334 coloured8334 = result8334 := by
  rw [tree8334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8332_eq
  unfold live8332 coloured8332 at child
  try dsimp only [live8334, coloured8334]
  rw [child]
  dsimp only [result8332]
  have child := node8333_eq
  unfold live8333 coloured8333 at child
  try dsimp only [live8334, coloured8334]
  rw [child]
  dsimp only [result8333]
  try dsimp only [colour, result8334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8335_agree : tree8335 = literal8335 := by
  rw [tree8335_def]
  rfl
theorem node8335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8335 live8335 coloured8335 = result8335 := by
  rw [tree8335_def]
  try dsimp only [colour, result8335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8336_agree : tree8336 = literal8336 := by
  rw [tree8336_def, tree8334_agree, tree8335_agree]
  rfl
theorem node8336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8336 live8336 coloured8336 = result8336 := by
  rw [tree8336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8334_eq
  unfold live8334 coloured8334 at child
  try dsimp only [live8336, coloured8336]
  rw [child]
  dsimp only [result8334]
  have child := node8335_eq
  unfold live8335 coloured8335 at child
  try dsimp only [live8336, coloured8336]
  rw [child]
  dsimp only [result8335]
  try dsimp only [colour, result8336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8337_agree : tree8337 = literal8337 := by
  rw [tree8337_def]
  rfl
theorem node8337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8337 live8337 coloured8337 = result8337 := by
  rw [tree8337_def]
  try dsimp only [colour, result8337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8338_agree : tree8338 = literal8338 := by
  rw [tree8338_def, tree8336_agree, tree8337_agree]
  rfl
theorem node8338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8338 live8338 coloured8338 = result8338 := by
  rw [tree8338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8336_eq
  unfold live8336 coloured8336 at child
  try dsimp only [live8338, coloured8338]
  rw [child]
  dsimp only [result8336]
  have child := node8337_eq
  unfold live8337 coloured8337 at child
  try dsimp only [live8338, coloured8338]
  rw [child]
  dsimp only [result8337]
  try dsimp only [colour, result8338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8339_agree : tree8339 = literal8339 := by
  rw [tree8339_def]
  rfl
theorem node8339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8339 live8339 coloured8339 = result8339 := by
  rw [tree8339_def]
  try dsimp only [colour, result8339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8340_agree : tree8340 = literal8340 := by
  rw [tree8340_def, tree8338_agree, tree8339_agree]
  rfl
theorem node8340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8340 live8340 coloured8340 = result8340 := by
  rw [tree8340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8338_eq
  unfold live8338 coloured8338 at child
  try dsimp only [live8340, coloured8340]
  rw [child]
  dsimp only [result8338]
  have child := node8339_eq
  unfold live8339 coloured8339 at child
  try dsimp only [live8340, coloured8340]
  rw [child]
  dsimp only [result8339]
  try dsimp only [colour, result8340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8341_agree : tree8341 = literal8341 := by
  rw [tree8341_def]
  rfl
theorem node8341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8341 live8341 coloured8341 = result8341 := by
  rw [tree8341_def]
  try dsimp only [colour, result8341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8342_agree : tree8342 = literal8342 := by
  rw [tree8342_def, tree8340_agree, tree8341_agree]
  rfl
theorem node8342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8342 live8342 coloured8342 = result8342 := by
  rw [tree8342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8340_eq
  unfold live8340 coloured8340 at child
  try dsimp only [live8342, coloured8342]
  rw [child]
  dsimp only [result8340]
  have child := node8341_eq
  unfold live8341 coloured8341 at child
  try dsimp only [live8342, coloured8342]
  rw [child]
  dsimp only [result8341]
  try dsimp only [colour, result8342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8343_agree : tree8343 = literal8343 := by
  rw [tree8343_def]
  rfl
theorem node8343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8343 live8343 coloured8343 = result8343 := by
  rw [tree8343_def]
  try dsimp only [colour, result8343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8344_agree : tree8344 = literal8344 := by
  rw [tree8344_def, tree8342_agree, tree8343_agree]
  rfl
theorem node8344_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8344 live8344 coloured8344 = result8344 := by
  rw [tree8344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8342_eq
  unfold live8342 coloured8342 at child
  try dsimp only [live8344, coloured8344]
  rw [child]
  dsimp only [result8342]
  have child := node8343_eq
  unfold live8343 coloured8343 at child
  try dsimp only [live8344, coloured8344]
  rw [child]
  dsimp only [result8343]
  try dsimp only [colour, result8344]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8345_agree : tree8345 = literal8345 := by
  rw [tree8345_def]
  rfl
theorem node8345_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8345 live8345 coloured8345 = result8345 := by
  rw [tree8345_def]
  try dsimp only [colour, result8345]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8346_agree : tree8346 = literal8346 := by
  rw [tree8346_def, tree8344_agree, tree8345_agree]
  rfl
theorem node8346_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8346 live8346 coloured8346 = result8346 := by
  rw [tree8346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8344_eq
  unfold live8344 coloured8344 at child
  try dsimp only [live8346, coloured8346]
  rw [child]
  dsimp only [result8344]
  have child := node8345_eq
  unfold live8345 coloured8345 at child
  try dsimp only [live8346, coloured8346]
  rw [child]
  dsimp only [result8345]
  try dsimp only [colour, result8346]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8347_agree : tree8347 = literal8347 := by
  rw [tree8347_def]
  rfl
theorem node8347_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8347 live8347 coloured8347 = result8347 := by
  rw [tree8347_def]
  try dsimp only [colour, result8347]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8348_agree : tree8348 = literal8348 := by
  rw [tree8348_def, tree8346_agree, tree8347_agree]
  rfl
theorem node8348_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8348 live8348 coloured8348 = result8348 := by
  rw [tree8348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8346_eq
  unfold live8346 coloured8346 at child
  try dsimp only [live8348, coloured8348]
  rw [child]
  dsimp only [result8346]
  have child := node8347_eq
  unfold live8347 coloured8347 at child
  try dsimp only [live8348, coloured8348]
  rw [child]
  dsimp only [result8347]
  try dsimp only [colour, result8348]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8349_agree : tree8349 = literal8349 := by
  rw [tree8349_def]
  rfl
theorem node8349_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8349 live8349 coloured8349 = result8349 := by
  rw [tree8349_def]
  try dsimp only [colour, result8349]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8350_agree : tree8350 = literal8350 := by
  rw [tree8350_def, tree8348_agree, tree8349_agree]
  rfl
theorem node8350_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8350 live8350 coloured8350 = result8350 := by
  rw [tree8350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8348_eq
  unfold live8348 coloured8348 at child
  try dsimp only [live8350, coloured8350]
  rw [child]
  dsimp only [result8348]
  have child := node8349_eq
  unfold live8349 coloured8349 at child
  try dsimp only [live8350, coloured8350]
  rw [child]
  dsimp only [result8349]
  try dsimp only [colour, result8350]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8351_agree : tree8351 = literal8351 := by
  rw [tree8351_def]
  rfl
theorem node8351_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8351 live8351 coloured8351 = result8351 := by
  rw [tree8351_def]
  try dsimp only [colour, result8351]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
