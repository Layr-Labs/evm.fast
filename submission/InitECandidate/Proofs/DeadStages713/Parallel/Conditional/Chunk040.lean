import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk040
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node10240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10240 value5124 value1 value2 = (output10240, value5124, value1) := by
  rw [input10240_def, output10240_def]
  kernel_rfl

theorem node10241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10241 value5124 value1 value2 = (output10241, value5125, value1) := by
  rw [input10241_def, output10241_def]
  kernel_rfl

theorem node10242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10242 value5125 value1 value2 = (output10242, value5126, value1) := by
  rw [input10242_def, output10242_def]
  kernel_rfl

theorem node10243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10243 value5126 value1 value2 = (output10243, value5127, value1) := by
  rw [input10243_def, output10243_def]
  kernel_rfl

theorem node10244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10244 value5127 value1 value2 = (output10244, value5128, value1) := by
  rw [input10244_def, output10244_def]
  kernel_rfl

theorem node10245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10245 value5128 value1 value2 = (output10245, value5, value1) := by
  rw [input10245_def, output10245_def]
  kernel_rfl

theorem node10246_cond_eq
    (child10244 : Flapjack.WordAlloc.removeDeadStructural input10244 value5127 value1 value2 = (output10244, value5128, value1))
    (child10245 : Flapjack.WordAlloc.removeDeadStructural input10245 value5128 value1 value2 = (output10245, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10246 value5127 value1 value2 = (output10246, value5, value1) := by
  rw [input10246_def, output10246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10244]
  dsimp only
  rw [child10245]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10244_skip, output10245_skip]
  kernel_rfl

theorem node10247_cond_eq
    (child10243 : Flapjack.WordAlloc.removeDeadStructural input10243 value5126 value1 value2 = (output10243, value5127, value1))
    (child10246 : Flapjack.WordAlloc.removeDeadStructural input10246 value5127 value1 value2 = (output10246, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10247 value5126 value1 value2 = (output10247, value5, value1) := by
  rw [input10247_def, output10247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10243]
  dsimp only
  rw [child10246]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10243_skip, output10246_skip]
  kernel_rfl

theorem node10248_cond_eq
    (child10242 : Flapjack.WordAlloc.removeDeadStructural input10242 value5125 value1 value2 = (output10242, value5126, value1))
    (child10247 : Flapjack.WordAlloc.removeDeadStructural input10247 value5126 value1 value2 = (output10247, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10248 value5125 value1 value2 = (output10248, value5, value1) := by
  rw [input10248_def, output10248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10242]
  dsimp only
  rw [child10247]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10242_skip, output10247_skip]
  kernel_rfl

theorem node10249_cond_eq
    (child10241 : Flapjack.WordAlloc.removeDeadStructural input10241 value5124 value1 value2 = (output10241, value5125, value1))
    (child10248 : Flapjack.WordAlloc.removeDeadStructural input10248 value5125 value1 value2 = (output10248, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10249 value5124 value1 value2 = (output10249, value5, value1) := by
  rw [input10249_def, output10249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10241]
  dsimp only
  rw [child10248]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10241_skip, output10248_skip]
  kernel_rfl

theorem node10250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10250 value5 value1 value2 = (output10250, value5129, value1) := by
  rw [input10250_def, output10250_def]
  kernel_rfl

theorem node10251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10251 value5129 value1 value2 = (output10251, value5130, value1) := by
  rw [input10251_def, output10251_def]
  kernel_rfl

theorem node10252_cond_eq
    (child10250 : Flapjack.WordAlloc.removeDeadStructural input10250 value5 value1 value2 = (output10250, value5129, value1))
    (child10251 : Flapjack.WordAlloc.removeDeadStructural input10251 value5129 value1 value2 = (output10251, value5130, value1)) : Flapjack.WordAlloc.removeDeadStructural input10252 value5 value1 value2 = (output10252, value5130, value1) := by
  rw [input10252_def, output10252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10250]
  dsimp only
  rw [child10251]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10250_skip, output10251_skip]
  kernel_rfl

theorem node10253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10253 value5130 value1 value2 = (output10253, value5131, value1) := by
  rw [input10253_def, output10253_def]
  kernel_rfl

theorem node10254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10254 value5131 value1 value2 = (output10254, value5131, value1) := by
  rw [input10254_def, output10254_def]
  kernel_rfl

theorem node10255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10255 value5131 value1 value2 = (output10255, value5132, value1) := by
  rw [input10255_def, output10255_def]
  kernel_rfl

theorem node10256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10256 value5132 value1 value2 = (output10256, value5133, value1) := by
  rw [input10256_def, output10256_def]
  kernel_rfl

theorem node10257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10257 value5133 value1 value2 = (output10257, value5134, value1) := by
  rw [input10257_def, output10257_def]
  kernel_rfl

theorem node10258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10258 value5134 value1 value2 = (output10258, value5135, value1) := by
  rw [input10258_def, output10258_def]
  kernel_rfl

theorem node10259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10259 value5135 value1 value2 = (output10259, value5, value1) := by
  rw [input10259_def, output10259_def]
  kernel_rfl

theorem node10260_cond_eq
    (child10258 : Flapjack.WordAlloc.removeDeadStructural input10258 value5134 value1 value2 = (output10258, value5135, value1))
    (child10259 : Flapjack.WordAlloc.removeDeadStructural input10259 value5135 value1 value2 = (output10259, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10260 value5134 value1 value2 = (output10260, value5, value1) := by
  rw [input10260_def, output10260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10258]
  dsimp only
  rw [child10259]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10258_skip, output10259_skip]
  kernel_rfl

theorem node10261_cond_eq
    (child10257 : Flapjack.WordAlloc.removeDeadStructural input10257 value5133 value1 value2 = (output10257, value5134, value1))
    (child10260 : Flapjack.WordAlloc.removeDeadStructural input10260 value5134 value1 value2 = (output10260, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10261 value5133 value1 value2 = (output10261, value5, value1) := by
  rw [input10261_def, output10261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10257]
  dsimp only
  rw [child10260]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10257_skip, output10260_skip]
  kernel_rfl

theorem node10262_cond_eq
    (child10256 : Flapjack.WordAlloc.removeDeadStructural input10256 value5132 value1 value2 = (output10256, value5133, value1))
    (child10261 : Flapjack.WordAlloc.removeDeadStructural input10261 value5133 value1 value2 = (output10261, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10262 value5132 value1 value2 = (output10262, value5, value1) := by
  rw [input10262_def, output10262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10256]
  dsimp only
  rw [child10261]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10256_skip, output10261_skip]
  kernel_rfl

theorem node10263_cond_eq
    (child10255 : Flapjack.WordAlloc.removeDeadStructural input10255 value5131 value1 value2 = (output10255, value5132, value1))
    (child10262 : Flapjack.WordAlloc.removeDeadStructural input10262 value5132 value1 value2 = (output10262, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10263 value5131 value1 value2 = (output10263, value5, value1) := by
  rw [input10263_def, output10263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10255]
  dsimp only
  rw [child10262]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10255_skip, output10262_skip]
  kernel_rfl

theorem node10264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10264 value5 value1 value2 = (output10264, value5136, value1) := by
  rw [input10264_def, output10264_def]
  kernel_rfl

theorem node10265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10265 value5136 value1 value2 = (output10265, value5137, value1) := by
  rw [input10265_def, output10265_def]
  kernel_rfl

theorem node10266_cond_eq
    (child10264 : Flapjack.WordAlloc.removeDeadStructural input10264 value5 value1 value2 = (output10264, value5136, value1))
    (child10265 : Flapjack.WordAlloc.removeDeadStructural input10265 value5136 value1 value2 = (output10265, value5137, value1)) : Flapjack.WordAlloc.removeDeadStructural input10266 value5 value1 value2 = (output10266, value5137, value1) := by
  rw [input10266_def, output10266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10264]
  dsimp only
  rw [child10265]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10264_skip, output10265_skip]
  kernel_rfl

theorem node10267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10267 value5137 value1 value2 = (output10267, value5138, value1) := by
  rw [input10267_def, output10267_def]
  kernel_rfl

theorem node10268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10268 value5138 value1 value2 = (output10268, value5138, value1) := by
  rw [input10268_def, output10268_def]
  kernel_rfl

theorem node10269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10269 value5138 value1 value2 = (output10269, value5139, value1) := by
  rw [input10269_def, output10269_def]
  kernel_rfl

theorem node10270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10270 value5139 value1 value2 = (output10270, value5140, value1) := by
  rw [input10270_def, output10270_def]
  kernel_rfl

theorem node10271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10271 value5140 value1 value2 = (output10271, value5141, value1) := by
  rw [input10271_def, output10271_def]
  kernel_rfl

theorem node10272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10272 value5141 value1 value2 = (output10272, value5142, value1) := by
  rw [input10272_def, output10272_def]
  kernel_rfl

theorem node10273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10273 value5142 value1 value2 = (output10273, value5, value1) := by
  rw [input10273_def, output10273_def]
  kernel_rfl

theorem node10274_cond_eq
    (child10272 : Flapjack.WordAlloc.removeDeadStructural input10272 value5141 value1 value2 = (output10272, value5142, value1))
    (child10273 : Flapjack.WordAlloc.removeDeadStructural input10273 value5142 value1 value2 = (output10273, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10274 value5141 value1 value2 = (output10274, value5, value1) := by
  rw [input10274_def, output10274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10272]
  dsimp only
  rw [child10273]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10272_skip, output10273_skip]
  kernel_rfl

theorem node10275_cond_eq
    (child10271 : Flapjack.WordAlloc.removeDeadStructural input10271 value5140 value1 value2 = (output10271, value5141, value1))
    (child10274 : Flapjack.WordAlloc.removeDeadStructural input10274 value5141 value1 value2 = (output10274, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10275 value5140 value1 value2 = (output10275, value5, value1) := by
  rw [input10275_def, output10275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10271]
  dsimp only
  rw [child10274]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10271_skip, output10274_skip]
  kernel_rfl

theorem node10276_cond_eq
    (child10270 : Flapjack.WordAlloc.removeDeadStructural input10270 value5139 value1 value2 = (output10270, value5140, value1))
    (child10275 : Flapjack.WordAlloc.removeDeadStructural input10275 value5140 value1 value2 = (output10275, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10276 value5139 value1 value2 = (output10276, value5, value1) := by
  rw [input10276_def, output10276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10270]
  dsimp only
  rw [child10275]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10270_skip, output10275_skip]
  kernel_rfl

theorem node10277_cond_eq
    (child10269 : Flapjack.WordAlloc.removeDeadStructural input10269 value5138 value1 value2 = (output10269, value5139, value1))
    (child10276 : Flapjack.WordAlloc.removeDeadStructural input10276 value5139 value1 value2 = (output10276, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10277 value5138 value1 value2 = (output10277, value5, value1) := by
  rw [input10277_def, output10277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10269]
  dsimp only
  rw [child10276]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10269_skip, output10276_skip]
  kernel_rfl

theorem node10278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10278 value5 value1 value2 = (output10278, value5143, value1) := by
  rw [input10278_def, output10278_def]
  kernel_rfl

theorem node10279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10279 value5143 value1 value2 = (output10279, value5144, value1) := by
  rw [input10279_def, output10279_def]
  kernel_rfl

theorem node10280_cond_eq
    (child10278 : Flapjack.WordAlloc.removeDeadStructural input10278 value5 value1 value2 = (output10278, value5143, value1))
    (child10279 : Flapjack.WordAlloc.removeDeadStructural input10279 value5143 value1 value2 = (output10279, value5144, value1)) : Flapjack.WordAlloc.removeDeadStructural input10280 value5 value1 value2 = (output10280, value5144, value1) := by
  rw [input10280_def, output10280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10278]
  dsimp only
  rw [child10279]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10278_skip, output10279_skip]
  kernel_rfl

theorem node10281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10281 value5144 value1 value2 = (output10281, value5145, value1) := by
  rw [input10281_def, output10281_def]
  kernel_rfl

theorem node10282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10282 value5145 value1 value2 = (output10282, value5145, value1) := by
  rw [input10282_def, output10282_def]
  kernel_rfl

theorem node10283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10283 value5145 value1 value2 = (output10283, value5146, value1) := by
  rw [input10283_def, output10283_def]
  kernel_rfl

theorem node10284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10284 value5146 value1 value2 = (output10284, value5147, value1) := by
  rw [input10284_def, output10284_def]
  kernel_rfl

theorem node10285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10285 value5147 value1 value2 = (output10285, value5148, value1) := by
  rw [input10285_def, output10285_def]
  kernel_rfl

theorem node10286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10286 value5148 value1 value2 = (output10286, value5149, value1) := by
  rw [input10286_def, output10286_def]
  kernel_rfl

theorem node10287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10287 value5149 value1 value2 = (output10287, value5, value1) := by
  rw [input10287_def, output10287_def]
  kernel_rfl

theorem node10288_cond_eq
    (child10286 : Flapjack.WordAlloc.removeDeadStructural input10286 value5148 value1 value2 = (output10286, value5149, value1))
    (child10287 : Flapjack.WordAlloc.removeDeadStructural input10287 value5149 value1 value2 = (output10287, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10288 value5148 value1 value2 = (output10288, value5, value1) := by
  rw [input10288_def, output10288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10286]
  dsimp only
  rw [child10287]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10286_skip, output10287_skip]
  kernel_rfl

theorem node10289_cond_eq
    (child10285 : Flapjack.WordAlloc.removeDeadStructural input10285 value5147 value1 value2 = (output10285, value5148, value1))
    (child10288 : Flapjack.WordAlloc.removeDeadStructural input10288 value5148 value1 value2 = (output10288, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10289 value5147 value1 value2 = (output10289, value5, value1) := by
  rw [input10289_def, output10289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10285]
  dsimp only
  rw [child10288]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10285_skip, output10288_skip]
  kernel_rfl

theorem node10290_cond_eq
    (child10284 : Flapjack.WordAlloc.removeDeadStructural input10284 value5146 value1 value2 = (output10284, value5147, value1))
    (child10289 : Flapjack.WordAlloc.removeDeadStructural input10289 value5147 value1 value2 = (output10289, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10290 value5146 value1 value2 = (output10290, value5, value1) := by
  rw [input10290_def, output10290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10284]
  dsimp only
  rw [child10289]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10284_skip, output10289_skip]
  kernel_rfl

theorem node10291_cond_eq
    (child10283 : Flapjack.WordAlloc.removeDeadStructural input10283 value5145 value1 value2 = (output10283, value5146, value1))
    (child10290 : Flapjack.WordAlloc.removeDeadStructural input10290 value5146 value1 value2 = (output10290, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10291 value5145 value1 value2 = (output10291, value5, value1) := by
  rw [input10291_def, output10291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10283]
  dsimp only
  rw [child10290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10283_skip, output10290_skip]
  kernel_rfl

theorem node10292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10292 value5 value1 value2 = (output10292, value5150, value1) := by
  rw [input10292_def, output10292_def]
  kernel_rfl

theorem node10293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10293 value5150 value1 value2 = (output10293, value5151, value1) := by
  rw [input10293_def, output10293_def]
  kernel_rfl

theorem node10294_cond_eq
    (child10292 : Flapjack.WordAlloc.removeDeadStructural input10292 value5 value1 value2 = (output10292, value5150, value1))
    (child10293 : Flapjack.WordAlloc.removeDeadStructural input10293 value5150 value1 value2 = (output10293, value5151, value1)) : Flapjack.WordAlloc.removeDeadStructural input10294 value5 value1 value2 = (output10294, value5151, value1) := by
  rw [input10294_def, output10294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10292]
  dsimp only
  rw [child10293]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10292_skip, output10293_skip]
  kernel_rfl

theorem node10295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10295 value5151 value1 value2 = (output10295, value5152, value1) := by
  rw [input10295_def, output10295_def]
  kernel_rfl

theorem node10296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10296 value5152 value1 value2 = (output10296, value5152, value1) := by
  rw [input10296_def, output10296_def]
  kernel_rfl

theorem node10297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10297 value5152 value1 value2 = (output10297, value5153, value1) := by
  rw [input10297_def, output10297_def]
  kernel_rfl

theorem node10298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10298 value5153 value1 value2 = (output10298, value5154, value1) := by
  rw [input10298_def, output10298_def]
  kernel_rfl

theorem node10299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10299 value5154 value1 value2 = (output10299, value5155, value1) := by
  rw [input10299_def, output10299_def]
  kernel_rfl

theorem node10300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10300 value5155 value1 value2 = (output10300, value5156, value1) := by
  rw [input10300_def, output10300_def]
  kernel_rfl

theorem node10301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10301 value5156 value1 value2 = (output10301, value5, value1) := by
  rw [input10301_def, output10301_def]
  kernel_rfl

theorem node10302_cond_eq
    (child10300 : Flapjack.WordAlloc.removeDeadStructural input10300 value5155 value1 value2 = (output10300, value5156, value1))
    (child10301 : Flapjack.WordAlloc.removeDeadStructural input10301 value5156 value1 value2 = (output10301, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10302 value5155 value1 value2 = (output10302, value5, value1) := by
  rw [input10302_def, output10302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10300]
  dsimp only
  rw [child10301]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10300_skip, output10301_skip]
  kernel_rfl

theorem node10303_cond_eq
    (child10299 : Flapjack.WordAlloc.removeDeadStructural input10299 value5154 value1 value2 = (output10299, value5155, value1))
    (child10302 : Flapjack.WordAlloc.removeDeadStructural input10302 value5155 value1 value2 = (output10302, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10303 value5154 value1 value2 = (output10303, value5, value1) := by
  rw [input10303_def, output10303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10299]
  dsimp only
  rw [child10302]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10299_skip, output10302_skip]
  kernel_rfl

theorem node10304_cond_eq
    (child10298 : Flapjack.WordAlloc.removeDeadStructural input10298 value5153 value1 value2 = (output10298, value5154, value1))
    (child10303 : Flapjack.WordAlloc.removeDeadStructural input10303 value5154 value1 value2 = (output10303, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10304 value5153 value1 value2 = (output10304, value5, value1) := by
  rw [input10304_def, output10304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10298]
  dsimp only
  rw [child10303]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10298_skip, output10303_skip]
  kernel_rfl

theorem node10305_cond_eq
    (child10297 : Flapjack.WordAlloc.removeDeadStructural input10297 value5152 value1 value2 = (output10297, value5153, value1))
    (child10304 : Flapjack.WordAlloc.removeDeadStructural input10304 value5153 value1 value2 = (output10304, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10305 value5152 value1 value2 = (output10305, value5, value1) := by
  rw [input10305_def, output10305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10297]
  dsimp only
  rw [child10304]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10297_skip, output10304_skip]
  kernel_rfl

theorem node10306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10306 value5 value1 value2 = (output10306, value5157, value1) := by
  rw [input10306_def, output10306_def]
  kernel_rfl

theorem node10307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10307 value5157 value1 value2 = (output10307, value5158, value1) := by
  rw [input10307_def, output10307_def]
  kernel_rfl

theorem node10308_cond_eq
    (child10306 : Flapjack.WordAlloc.removeDeadStructural input10306 value5 value1 value2 = (output10306, value5157, value1))
    (child10307 : Flapjack.WordAlloc.removeDeadStructural input10307 value5157 value1 value2 = (output10307, value5158, value1)) : Flapjack.WordAlloc.removeDeadStructural input10308 value5 value1 value2 = (output10308, value5158, value1) := by
  rw [input10308_def, output10308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10306]
  dsimp only
  rw [child10307]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10306_skip, output10307_skip]
  kernel_rfl

theorem node10309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10309 value5158 value1 value2 = (output10309, value5159, value1) := by
  rw [input10309_def, output10309_def]
  kernel_rfl

theorem node10310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10310 value5159 value1 value2 = (output10310, value5159, value1) := by
  rw [input10310_def, output10310_def]
  kernel_rfl

theorem node10311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10311 value5159 value1 value2 = (output10311, value5160, value1) := by
  rw [input10311_def, output10311_def]
  kernel_rfl

theorem node10312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10312 value5160 value1 value2 = (output10312, value5161, value1) := by
  rw [input10312_def, output10312_def]
  kernel_rfl

theorem node10313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10313 value5161 value1 value2 = (output10313, value5162, value1) := by
  rw [input10313_def, output10313_def]
  kernel_rfl

theorem node10314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10314 value5162 value1 value2 = (output10314, value5163, value1) := by
  rw [input10314_def, output10314_def]
  kernel_rfl

theorem node10315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10315 value5163 value1 value2 = (output10315, value5, value1) := by
  rw [input10315_def, output10315_def]
  kernel_rfl

theorem node10316_cond_eq
    (child10314 : Flapjack.WordAlloc.removeDeadStructural input10314 value5162 value1 value2 = (output10314, value5163, value1))
    (child10315 : Flapjack.WordAlloc.removeDeadStructural input10315 value5163 value1 value2 = (output10315, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10316 value5162 value1 value2 = (output10316, value5, value1) := by
  rw [input10316_def, output10316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10314]
  dsimp only
  rw [child10315]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10314_skip, output10315_skip]
  kernel_rfl

theorem node10317_cond_eq
    (child10313 : Flapjack.WordAlloc.removeDeadStructural input10313 value5161 value1 value2 = (output10313, value5162, value1))
    (child10316 : Flapjack.WordAlloc.removeDeadStructural input10316 value5162 value1 value2 = (output10316, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10317 value5161 value1 value2 = (output10317, value5, value1) := by
  rw [input10317_def, output10317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10313]
  dsimp only
  rw [child10316]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10313_skip, output10316_skip]
  kernel_rfl

theorem node10318_cond_eq
    (child10312 : Flapjack.WordAlloc.removeDeadStructural input10312 value5160 value1 value2 = (output10312, value5161, value1))
    (child10317 : Flapjack.WordAlloc.removeDeadStructural input10317 value5161 value1 value2 = (output10317, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10318 value5160 value1 value2 = (output10318, value5, value1) := by
  rw [input10318_def, output10318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10312]
  dsimp only
  rw [child10317]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10312_skip, output10317_skip]
  kernel_rfl

theorem node10319_cond_eq
    (child10311 : Flapjack.WordAlloc.removeDeadStructural input10311 value5159 value1 value2 = (output10311, value5160, value1))
    (child10318 : Flapjack.WordAlloc.removeDeadStructural input10318 value5160 value1 value2 = (output10318, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10319 value5159 value1 value2 = (output10319, value5, value1) := by
  rw [input10319_def, output10319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10311]
  dsimp only
  rw [child10318]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10311_skip, output10318_skip]
  kernel_rfl

theorem node10320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10320 value5 value1 value2 = (output10320, value5164, value1) := by
  rw [input10320_def, output10320_def]
  kernel_rfl

theorem node10321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10321 value5164 value1 value2 = (output10321, value5165, value1) := by
  rw [input10321_def, output10321_def]
  kernel_rfl

theorem node10322_cond_eq
    (child10320 : Flapjack.WordAlloc.removeDeadStructural input10320 value5 value1 value2 = (output10320, value5164, value1))
    (child10321 : Flapjack.WordAlloc.removeDeadStructural input10321 value5164 value1 value2 = (output10321, value5165, value1)) : Flapjack.WordAlloc.removeDeadStructural input10322 value5 value1 value2 = (output10322, value5165, value1) := by
  rw [input10322_def, output10322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10320]
  dsimp only
  rw [child10321]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10320_skip, output10321_skip]
  kernel_rfl

theorem node10323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10323 value5165 value1 value2 = (output10323, value5166, value1) := by
  rw [input10323_def, output10323_def]
  kernel_rfl

theorem node10324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10324 value5166 value1 value2 = (output10324, value5166, value1) := by
  rw [input10324_def, output10324_def]
  kernel_rfl

theorem node10325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10325 value5166 value1 value2 = (output10325, value5167, value1) := by
  rw [input10325_def, output10325_def]
  kernel_rfl

theorem node10326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10326 value5167 value1 value2 = (output10326, value5168, value1) := by
  rw [input10326_def, output10326_def]
  kernel_rfl

theorem node10327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10327 value5168 value1 value2 = (output10327, value5169, value1) := by
  rw [input10327_def, output10327_def]
  kernel_rfl

theorem node10328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10328 value5169 value1 value2 = (output10328, value5170, value1) := by
  rw [input10328_def, output10328_def]
  kernel_rfl

theorem node10329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10329 value5170 value1 value2 = (output10329, value5, value1) := by
  rw [input10329_def, output10329_def]
  kernel_rfl

theorem node10330_cond_eq
    (child10328 : Flapjack.WordAlloc.removeDeadStructural input10328 value5169 value1 value2 = (output10328, value5170, value1))
    (child10329 : Flapjack.WordAlloc.removeDeadStructural input10329 value5170 value1 value2 = (output10329, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10330 value5169 value1 value2 = (output10330, value5, value1) := by
  rw [input10330_def, output10330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10328]
  dsimp only
  rw [child10329]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10328_skip, output10329_skip]
  kernel_rfl

theorem node10331_cond_eq
    (child10327 : Flapjack.WordAlloc.removeDeadStructural input10327 value5168 value1 value2 = (output10327, value5169, value1))
    (child10330 : Flapjack.WordAlloc.removeDeadStructural input10330 value5169 value1 value2 = (output10330, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10331 value5168 value1 value2 = (output10331, value5, value1) := by
  rw [input10331_def, output10331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10327]
  dsimp only
  rw [child10330]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10327_skip, output10330_skip]
  kernel_rfl

theorem node10332_cond_eq
    (child10326 : Flapjack.WordAlloc.removeDeadStructural input10326 value5167 value1 value2 = (output10326, value5168, value1))
    (child10331 : Flapjack.WordAlloc.removeDeadStructural input10331 value5168 value1 value2 = (output10331, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10332 value5167 value1 value2 = (output10332, value5, value1) := by
  rw [input10332_def, output10332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10326]
  dsimp only
  rw [child10331]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10326_skip, output10331_skip]
  kernel_rfl

theorem node10333_cond_eq
    (child10325 : Flapjack.WordAlloc.removeDeadStructural input10325 value5166 value1 value2 = (output10325, value5167, value1))
    (child10332 : Flapjack.WordAlloc.removeDeadStructural input10332 value5167 value1 value2 = (output10332, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10333 value5166 value1 value2 = (output10333, value5, value1) := by
  rw [input10333_def, output10333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10325]
  dsimp only
  rw [child10332]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10325_skip, output10332_skip]
  kernel_rfl

theorem node10334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10334 value5 value1 value2 = (output10334, value5171, value1) := by
  rw [input10334_def, output10334_def]
  kernel_rfl

theorem node10335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10335 value5171 value1 value2 = (output10335, value5172, value1) := by
  rw [input10335_def, output10335_def]
  kernel_rfl

theorem node10336_cond_eq
    (child10334 : Flapjack.WordAlloc.removeDeadStructural input10334 value5 value1 value2 = (output10334, value5171, value1))
    (child10335 : Flapjack.WordAlloc.removeDeadStructural input10335 value5171 value1 value2 = (output10335, value5172, value1)) : Flapjack.WordAlloc.removeDeadStructural input10336 value5 value1 value2 = (output10336, value5172, value1) := by
  rw [input10336_def, output10336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10334]
  dsimp only
  rw [child10335]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10334_skip, output10335_skip]
  kernel_rfl

theorem node10337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10337 value5172 value1 value2 = (output10337, value5173, value1) := by
  rw [input10337_def, output10337_def]
  kernel_rfl

theorem node10338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10338 value5173 value1 value2 = (output10338, value5173, value1) := by
  rw [input10338_def, output10338_def]
  kernel_rfl

theorem node10339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10339 value5173 value1 value2 = (output10339, value5174, value1) := by
  rw [input10339_def, output10339_def]
  kernel_rfl

theorem node10340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10340 value5174 value1 value2 = (output10340, value5175, value1) := by
  rw [input10340_def, output10340_def]
  kernel_rfl

theorem node10341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10341 value5175 value1 value2 = (output10341, value5176, value1) := by
  rw [input10341_def, output10341_def]
  kernel_rfl

theorem node10342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10342 value5176 value1 value2 = (output10342, value5177, value1) := by
  rw [input10342_def, output10342_def]
  kernel_rfl

theorem node10343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10343 value5177 value1 value2 = (output10343, value5, value1) := by
  rw [input10343_def, output10343_def]
  kernel_rfl

theorem node10344_cond_eq
    (child10342 : Flapjack.WordAlloc.removeDeadStructural input10342 value5176 value1 value2 = (output10342, value5177, value1))
    (child10343 : Flapjack.WordAlloc.removeDeadStructural input10343 value5177 value1 value2 = (output10343, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10344 value5176 value1 value2 = (output10344, value5, value1) := by
  rw [input10344_def, output10344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10342]
  dsimp only
  rw [child10343]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10342_skip, output10343_skip]
  kernel_rfl

theorem node10345_cond_eq
    (child10341 : Flapjack.WordAlloc.removeDeadStructural input10341 value5175 value1 value2 = (output10341, value5176, value1))
    (child10344 : Flapjack.WordAlloc.removeDeadStructural input10344 value5176 value1 value2 = (output10344, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10345 value5175 value1 value2 = (output10345, value5, value1) := by
  rw [input10345_def, output10345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10341]
  dsimp only
  rw [child10344]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10341_skip, output10344_skip]
  kernel_rfl

theorem node10346_cond_eq
    (child10340 : Flapjack.WordAlloc.removeDeadStructural input10340 value5174 value1 value2 = (output10340, value5175, value1))
    (child10345 : Flapjack.WordAlloc.removeDeadStructural input10345 value5175 value1 value2 = (output10345, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10346 value5174 value1 value2 = (output10346, value5, value1) := by
  rw [input10346_def, output10346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10340]
  dsimp only
  rw [child10345]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10340_skip, output10345_skip]
  kernel_rfl

theorem node10347_cond_eq
    (child10339 : Flapjack.WordAlloc.removeDeadStructural input10339 value5173 value1 value2 = (output10339, value5174, value1))
    (child10346 : Flapjack.WordAlloc.removeDeadStructural input10346 value5174 value1 value2 = (output10346, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10347 value5173 value1 value2 = (output10347, value5, value1) := by
  rw [input10347_def, output10347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10339]
  dsimp only
  rw [child10346]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10339_skip, output10346_skip]
  kernel_rfl

theorem node10348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10348 value5 value1 value2 = (output10348, value5178, value1) := by
  rw [input10348_def, output10348_def]
  kernel_rfl

theorem node10349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10349 value5178 value1 value2 = (output10349, value5179, value1) := by
  rw [input10349_def, output10349_def]
  kernel_rfl

theorem node10350_cond_eq
    (child10348 : Flapjack.WordAlloc.removeDeadStructural input10348 value5 value1 value2 = (output10348, value5178, value1))
    (child10349 : Flapjack.WordAlloc.removeDeadStructural input10349 value5178 value1 value2 = (output10349, value5179, value1)) : Flapjack.WordAlloc.removeDeadStructural input10350 value5 value1 value2 = (output10350, value5179, value1) := by
  rw [input10350_def, output10350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10348]
  dsimp only
  rw [child10349]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10348_skip, output10349_skip]
  kernel_rfl

theorem node10351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10351 value5179 value1 value2 = (output10351, value5180, value1) := by
  rw [input10351_def, output10351_def]
  kernel_rfl

theorem node10352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10352 value5180 value1 value2 = (output10352, value5180, value1) := by
  rw [input10352_def, output10352_def]
  kernel_rfl

theorem node10353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10353 value5180 value1 value2 = (output10353, value5181, value1) := by
  rw [input10353_def, output10353_def]
  kernel_rfl

theorem node10354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10354 value5181 value1 value2 = (output10354, value5182, value1) := by
  rw [input10354_def, output10354_def]
  kernel_rfl

theorem node10355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10355 value5182 value1 value2 = (output10355, value5183, value1) := by
  rw [input10355_def, output10355_def]
  kernel_rfl

theorem node10356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10356 value5183 value1 value2 = (output10356, value5184, value1) := by
  rw [input10356_def, output10356_def]
  kernel_rfl

theorem node10357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10357 value5184 value1 value2 = (output10357, value5, value1) := by
  rw [input10357_def, output10357_def]
  kernel_rfl

theorem node10358_cond_eq
    (child10356 : Flapjack.WordAlloc.removeDeadStructural input10356 value5183 value1 value2 = (output10356, value5184, value1))
    (child10357 : Flapjack.WordAlloc.removeDeadStructural input10357 value5184 value1 value2 = (output10357, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10358 value5183 value1 value2 = (output10358, value5, value1) := by
  rw [input10358_def, output10358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10356]
  dsimp only
  rw [child10357]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10356_skip, output10357_skip]
  kernel_rfl

theorem node10359_cond_eq
    (child10355 : Flapjack.WordAlloc.removeDeadStructural input10355 value5182 value1 value2 = (output10355, value5183, value1))
    (child10358 : Flapjack.WordAlloc.removeDeadStructural input10358 value5183 value1 value2 = (output10358, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10359 value5182 value1 value2 = (output10359, value5, value1) := by
  rw [input10359_def, output10359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10355]
  dsimp only
  rw [child10358]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10355_skip, output10358_skip]
  kernel_rfl

theorem node10360_cond_eq
    (child10354 : Flapjack.WordAlloc.removeDeadStructural input10354 value5181 value1 value2 = (output10354, value5182, value1))
    (child10359 : Flapjack.WordAlloc.removeDeadStructural input10359 value5182 value1 value2 = (output10359, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10360 value5181 value1 value2 = (output10360, value5, value1) := by
  rw [input10360_def, output10360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10354]
  dsimp only
  rw [child10359]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10354_skip, output10359_skip]
  kernel_rfl

theorem node10361_cond_eq
    (child10353 : Flapjack.WordAlloc.removeDeadStructural input10353 value5180 value1 value2 = (output10353, value5181, value1))
    (child10360 : Flapjack.WordAlloc.removeDeadStructural input10360 value5181 value1 value2 = (output10360, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10361 value5180 value1 value2 = (output10361, value5, value1) := by
  rw [input10361_def, output10361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10353]
  dsimp only
  rw [child10360]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10353_skip, output10360_skip]
  kernel_rfl

theorem node10362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10362 value5 value1 value2 = (output10362, value5185, value1) := by
  rw [input10362_def, output10362_def]
  kernel_rfl

theorem node10363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10363 value5185 value1 value2 = (output10363, value5186, value1) := by
  rw [input10363_def, output10363_def]
  kernel_rfl

theorem node10364_cond_eq
    (child10362 : Flapjack.WordAlloc.removeDeadStructural input10362 value5 value1 value2 = (output10362, value5185, value1))
    (child10363 : Flapjack.WordAlloc.removeDeadStructural input10363 value5185 value1 value2 = (output10363, value5186, value1)) : Flapjack.WordAlloc.removeDeadStructural input10364 value5 value1 value2 = (output10364, value5186, value1) := by
  rw [input10364_def, output10364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10362]
  dsimp only
  rw [child10363]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10362_skip, output10363_skip]
  kernel_rfl

theorem node10365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10365 value5186 value1 value2 = (output10365, value5187, value1) := by
  rw [input10365_def, output10365_def]
  kernel_rfl

theorem node10366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10366 value5187 value1 value2 = (output10366, value5187, value1) := by
  rw [input10366_def, output10366_def]
  kernel_rfl

theorem node10367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10367 value5187 value1 value2 = (output10367, value5188, value1) := by
  rw [input10367_def, output10367_def]
  kernel_rfl

theorem node10368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10368 value5188 value1 value2 = (output10368, value5189, value1) := by
  rw [input10368_def, output10368_def]
  kernel_rfl

theorem node10369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10369 value5189 value1 value2 = (output10369, value5190, value1) := by
  rw [input10369_def, output10369_def]
  kernel_rfl

theorem node10370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10370 value5190 value1 value2 = (output10370, value5191, value1) := by
  rw [input10370_def, output10370_def]
  kernel_rfl

theorem node10371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10371 value5191 value1 value2 = (output10371, value5, value1) := by
  rw [input10371_def, output10371_def]
  kernel_rfl

theorem node10372_cond_eq
    (child10370 : Flapjack.WordAlloc.removeDeadStructural input10370 value5190 value1 value2 = (output10370, value5191, value1))
    (child10371 : Flapjack.WordAlloc.removeDeadStructural input10371 value5191 value1 value2 = (output10371, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10372 value5190 value1 value2 = (output10372, value5, value1) := by
  rw [input10372_def, output10372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10370]
  dsimp only
  rw [child10371]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10370_skip, output10371_skip]
  kernel_rfl

theorem node10373_cond_eq
    (child10369 : Flapjack.WordAlloc.removeDeadStructural input10369 value5189 value1 value2 = (output10369, value5190, value1))
    (child10372 : Flapjack.WordAlloc.removeDeadStructural input10372 value5190 value1 value2 = (output10372, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10373 value5189 value1 value2 = (output10373, value5, value1) := by
  rw [input10373_def, output10373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10369]
  dsimp only
  rw [child10372]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10369_skip, output10372_skip]
  kernel_rfl

theorem node10374_cond_eq
    (child10368 : Flapjack.WordAlloc.removeDeadStructural input10368 value5188 value1 value2 = (output10368, value5189, value1))
    (child10373 : Flapjack.WordAlloc.removeDeadStructural input10373 value5189 value1 value2 = (output10373, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10374 value5188 value1 value2 = (output10374, value5, value1) := by
  rw [input10374_def, output10374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10368]
  dsimp only
  rw [child10373]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10368_skip, output10373_skip]
  kernel_rfl

theorem node10375_cond_eq
    (child10367 : Flapjack.WordAlloc.removeDeadStructural input10367 value5187 value1 value2 = (output10367, value5188, value1))
    (child10374 : Flapjack.WordAlloc.removeDeadStructural input10374 value5188 value1 value2 = (output10374, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10375 value5187 value1 value2 = (output10375, value5, value1) := by
  rw [input10375_def, output10375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10367]
  dsimp only
  rw [child10374]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10367_skip, output10374_skip]
  kernel_rfl

theorem node10376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10376 value5 value1 value2 = (output10376, value5192, value1) := by
  rw [input10376_def, output10376_def]
  kernel_rfl

theorem node10377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10377 value5192 value1 value2 = (output10377, value5193, value1) := by
  rw [input10377_def, output10377_def]
  kernel_rfl

theorem node10378_cond_eq
    (child10376 : Flapjack.WordAlloc.removeDeadStructural input10376 value5 value1 value2 = (output10376, value5192, value1))
    (child10377 : Flapjack.WordAlloc.removeDeadStructural input10377 value5192 value1 value2 = (output10377, value5193, value1)) : Flapjack.WordAlloc.removeDeadStructural input10378 value5 value1 value2 = (output10378, value5193, value1) := by
  rw [input10378_def, output10378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10376]
  dsimp only
  rw [child10377]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10376_skip, output10377_skip]
  kernel_rfl

theorem node10379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10379 value5193 value1 value2 = (output10379, value5194, value1) := by
  rw [input10379_def, output10379_def]
  kernel_rfl

theorem node10380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10380 value5194 value1 value2 = (output10380, value5194, value1) := by
  rw [input10380_def, output10380_def]
  kernel_rfl

theorem node10381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10381 value5194 value1 value2 = (output10381, value5195, value1) := by
  rw [input10381_def, output10381_def]
  kernel_rfl

theorem node10382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10382 value5195 value1 value2 = (output10382, value5196, value1) := by
  rw [input10382_def, output10382_def]
  kernel_rfl

theorem node10383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10383 value5196 value1 value2 = (output10383, value5197, value1) := by
  rw [input10383_def, output10383_def]
  kernel_rfl

theorem node10384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10384 value5197 value1 value2 = (output10384, value5198, value1) := by
  rw [input10384_def, output10384_def]
  kernel_rfl

theorem node10385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10385 value5198 value1 value2 = (output10385, value5, value1) := by
  rw [input10385_def, output10385_def]
  kernel_rfl

theorem node10386_cond_eq
    (child10384 : Flapjack.WordAlloc.removeDeadStructural input10384 value5197 value1 value2 = (output10384, value5198, value1))
    (child10385 : Flapjack.WordAlloc.removeDeadStructural input10385 value5198 value1 value2 = (output10385, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10386 value5197 value1 value2 = (output10386, value5, value1) := by
  rw [input10386_def, output10386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10384]
  dsimp only
  rw [child10385]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10384_skip, output10385_skip]
  kernel_rfl

theorem node10387_cond_eq
    (child10383 : Flapjack.WordAlloc.removeDeadStructural input10383 value5196 value1 value2 = (output10383, value5197, value1))
    (child10386 : Flapjack.WordAlloc.removeDeadStructural input10386 value5197 value1 value2 = (output10386, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10387 value5196 value1 value2 = (output10387, value5, value1) := by
  rw [input10387_def, output10387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10383]
  dsimp only
  rw [child10386]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10383_skip, output10386_skip]
  kernel_rfl

theorem node10388_cond_eq
    (child10382 : Flapjack.WordAlloc.removeDeadStructural input10382 value5195 value1 value2 = (output10382, value5196, value1))
    (child10387 : Flapjack.WordAlloc.removeDeadStructural input10387 value5196 value1 value2 = (output10387, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10388 value5195 value1 value2 = (output10388, value5, value1) := by
  rw [input10388_def, output10388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10382]
  dsimp only
  rw [child10387]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10382_skip, output10387_skip]
  kernel_rfl

theorem node10389_cond_eq
    (child10381 : Flapjack.WordAlloc.removeDeadStructural input10381 value5194 value1 value2 = (output10381, value5195, value1))
    (child10388 : Flapjack.WordAlloc.removeDeadStructural input10388 value5195 value1 value2 = (output10388, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10389 value5194 value1 value2 = (output10389, value5, value1) := by
  rw [input10389_def, output10389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10381]
  dsimp only
  rw [child10388]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10381_skip, output10388_skip]
  kernel_rfl

theorem node10390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10390 value5 value1 value2 = (output10390, value5199, value1) := by
  rw [input10390_def, output10390_def]
  kernel_rfl

theorem node10391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10391 value5199 value1 value2 = (output10391, value5200, value1) := by
  rw [input10391_def, output10391_def]
  kernel_rfl

theorem node10392_cond_eq
    (child10390 : Flapjack.WordAlloc.removeDeadStructural input10390 value5 value1 value2 = (output10390, value5199, value1))
    (child10391 : Flapjack.WordAlloc.removeDeadStructural input10391 value5199 value1 value2 = (output10391, value5200, value1)) : Flapjack.WordAlloc.removeDeadStructural input10392 value5 value1 value2 = (output10392, value5200, value1) := by
  rw [input10392_def, output10392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10390]
  dsimp only
  rw [child10391]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10390_skip, output10391_skip]
  kernel_rfl

theorem node10393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10393 value5200 value1 value2 = (output10393, value5201, value1) := by
  rw [input10393_def, output10393_def]
  kernel_rfl

theorem node10394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10394 value5201 value1 value2 = (output10394, value5201, value1) := by
  rw [input10394_def, output10394_def]
  kernel_rfl

theorem node10395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10395 value5201 value1 value2 = (output10395, value5202, value1) := by
  rw [input10395_def, output10395_def]
  kernel_rfl

theorem node10396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10396 value5202 value1 value2 = (output10396, value5203, value1) := by
  rw [input10396_def, output10396_def]
  kernel_rfl

theorem node10397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10397 value5203 value1 value2 = (output10397, value5204, value1) := by
  rw [input10397_def, output10397_def]
  kernel_rfl

theorem node10398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10398 value5204 value1 value2 = (output10398, value5205, value1) := by
  rw [input10398_def, output10398_def]
  kernel_rfl

theorem node10399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10399 value5205 value1 value2 = (output10399, value5, value1) := by
  rw [input10399_def, output10399_def]
  kernel_rfl

theorem node10400_cond_eq
    (child10398 : Flapjack.WordAlloc.removeDeadStructural input10398 value5204 value1 value2 = (output10398, value5205, value1))
    (child10399 : Flapjack.WordAlloc.removeDeadStructural input10399 value5205 value1 value2 = (output10399, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10400 value5204 value1 value2 = (output10400, value5, value1) := by
  rw [input10400_def, output10400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10398]
  dsimp only
  rw [child10399]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10398_skip, output10399_skip]
  kernel_rfl

theorem node10401_cond_eq
    (child10397 : Flapjack.WordAlloc.removeDeadStructural input10397 value5203 value1 value2 = (output10397, value5204, value1))
    (child10400 : Flapjack.WordAlloc.removeDeadStructural input10400 value5204 value1 value2 = (output10400, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10401 value5203 value1 value2 = (output10401, value5, value1) := by
  rw [input10401_def, output10401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10397]
  dsimp only
  rw [child10400]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10397_skip, output10400_skip]
  kernel_rfl

theorem node10402_cond_eq
    (child10396 : Flapjack.WordAlloc.removeDeadStructural input10396 value5202 value1 value2 = (output10396, value5203, value1))
    (child10401 : Flapjack.WordAlloc.removeDeadStructural input10401 value5203 value1 value2 = (output10401, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10402 value5202 value1 value2 = (output10402, value5, value1) := by
  rw [input10402_def, output10402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10396]
  dsimp only
  rw [child10401]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10396_skip, output10401_skip]
  kernel_rfl

theorem node10403_cond_eq
    (child10395 : Flapjack.WordAlloc.removeDeadStructural input10395 value5201 value1 value2 = (output10395, value5202, value1))
    (child10402 : Flapjack.WordAlloc.removeDeadStructural input10402 value5202 value1 value2 = (output10402, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10403 value5201 value1 value2 = (output10403, value5, value1) := by
  rw [input10403_def, output10403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10395]
  dsimp only
  rw [child10402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10395_skip, output10402_skip]
  kernel_rfl

theorem node10404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10404 value5 value1 value2 = (output10404, value5206, value1) := by
  rw [input10404_def, output10404_def]
  kernel_rfl

theorem node10405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10405 value5206 value1 value2 = (output10405, value5207, value1) := by
  rw [input10405_def, output10405_def]
  kernel_rfl

theorem node10406_cond_eq
    (child10404 : Flapjack.WordAlloc.removeDeadStructural input10404 value5 value1 value2 = (output10404, value5206, value1))
    (child10405 : Flapjack.WordAlloc.removeDeadStructural input10405 value5206 value1 value2 = (output10405, value5207, value1)) : Flapjack.WordAlloc.removeDeadStructural input10406 value5 value1 value2 = (output10406, value5207, value1) := by
  rw [input10406_def, output10406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10404]
  dsimp only
  rw [child10405]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10404_skip, output10405_skip]
  kernel_rfl

theorem node10407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10407 value5207 value1 value2 = (output10407, value5208, value1) := by
  rw [input10407_def, output10407_def]
  kernel_rfl

theorem node10408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10408 value5208 value1 value2 = (output10408, value5208, value1) := by
  rw [input10408_def, output10408_def]
  kernel_rfl

theorem node10409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10409 value5208 value1 value2 = (output10409, value5209, value1) := by
  rw [input10409_def, output10409_def]
  kernel_rfl

theorem node10410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10410 value5209 value1 value2 = (output10410, value5210, value1) := by
  rw [input10410_def, output10410_def]
  kernel_rfl

theorem node10411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10411 value5210 value1 value2 = (output10411, value5211, value1) := by
  rw [input10411_def, output10411_def]
  kernel_rfl

theorem node10412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10412 value5211 value1 value2 = (output10412, value5212, value1) := by
  rw [input10412_def, output10412_def]
  kernel_rfl

theorem node10413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10413 value5212 value1 value2 = (output10413, value5, value1) := by
  rw [input10413_def, output10413_def]
  kernel_rfl

theorem node10414_cond_eq
    (child10412 : Flapjack.WordAlloc.removeDeadStructural input10412 value5211 value1 value2 = (output10412, value5212, value1))
    (child10413 : Flapjack.WordAlloc.removeDeadStructural input10413 value5212 value1 value2 = (output10413, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10414 value5211 value1 value2 = (output10414, value5, value1) := by
  rw [input10414_def, output10414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10412]
  dsimp only
  rw [child10413]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10412_skip, output10413_skip]
  kernel_rfl

theorem node10415_cond_eq
    (child10411 : Flapjack.WordAlloc.removeDeadStructural input10411 value5210 value1 value2 = (output10411, value5211, value1))
    (child10414 : Flapjack.WordAlloc.removeDeadStructural input10414 value5211 value1 value2 = (output10414, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10415 value5210 value1 value2 = (output10415, value5, value1) := by
  rw [input10415_def, output10415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10411]
  dsimp only
  rw [child10414]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10411_skip, output10414_skip]
  kernel_rfl

theorem node10416_cond_eq
    (child10410 : Flapjack.WordAlloc.removeDeadStructural input10410 value5209 value1 value2 = (output10410, value5210, value1))
    (child10415 : Flapjack.WordAlloc.removeDeadStructural input10415 value5210 value1 value2 = (output10415, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10416 value5209 value1 value2 = (output10416, value5, value1) := by
  rw [input10416_def, output10416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10410]
  dsimp only
  rw [child10415]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10410_skip, output10415_skip]
  kernel_rfl

theorem node10417_cond_eq
    (child10409 : Flapjack.WordAlloc.removeDeadStructural input10409 value5208 value1 value2 = (output10409, value5209, value1))
    (child10416 : Flapjack.WordAlloc.removeDeadStructural input10416 value5209 value1 value2 = (output10416, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10417 value5208 value1 value2 = (output10417, value5, value1) := by
  rw [input10417_def, output10417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10409]
  dsimp only
  rw [child10416]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10409_skip, output10416_skip]
  kernel_rfl

theorem node10418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10418 value5 value1 value2 = (output10418, value5213, value1) := by
  rw [input10418_def, output10418_def]
  kernel_rfl

theorem node10419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10419 value5213 value1 value2 = (output10419, value5214, value1) := by
  rw [input10419_def, output10419_def]
  kernel_rfl

theorem node10420_cond_eq
    (child10418 : Flapjack.WordAlloc.removeDeadStructural input10418 value5 value1 value2 = (output10418, value5213, value1))
    (child10419 : Flapjack.WordAlloc.removeDeadStructural input10419 value5213 value1 value2 = (output10419, value5214, value1)) : Flapjack.WordAlloc.removeDeadStructural input10420 value5 value1 value2 = (output10420, value5214, value1) := by
  rw [input10420_def, output10420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10418]
  dsimp only
  rw [child10419]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10418_skip, output10419_skip]
  kernel_rfl

theorem node10421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10421 value5214 value1 value2 = (output10421, value5215, value1) := by
  rw [input10421_def, output10421_def]
  kernel_rfl

theorem node10422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10422 value5215 value1 value2 = (output10422, value5215, value1) := by
  rw [input10422_def, output10422_def]
  kernel_rfl

theorem node10423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10423 value5215 value1 value2 = (output10423, value5216, value1) := by
  rw [input10423_def, output10423_def]
  kernel_rfl

theorem node10424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10424 value5216 value1 value2 = (output10424, value5217, value1) := by
  rw [input10424_def, output10424_def]
  kernel_rfl

theorem node10425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10425 value5217 value1 value2 = (output10425, value5218, value1) := by
  rw [input10425_def, output10425_def]
  kernel_rfl

theorem node10426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10426 value5218 value1 value2 = (output10426, value5219, value1) := by
  rw [input10426_def, output10426_def]
  kernel_rfl

theorem node10427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10427 value5219 value1 value2 = (output10427, value5, value1) := by
  rw [input10427_def, output10427_def]
  kernel_rfl

theorem node10428_cond_eq
    (child10426 : Flapjack.WordAlloc.removeDeadStructural input10426 value5218 value1 value2 = (output10426, value5219, value1))
    (child10427 : Flapjack.WordAlloc.removeDeadStructural input10427 value5219 value1 value2 = (output10427, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10428 value5218 value1 value2 = (output10428, value5, value1) := by
  rw [input10428_def, output10428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10426]
  dsimp only
  rw [child10427]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10426_skip, output10427_skip]
  kernel_rfl

theorem node10429_cond_eq
    (child10425 : Flapjack.WordAlloc.removeDeadStructural input10425 value5217 value1 value2 = (output10425, value5218, value1))
    (child10428 : Flapjack.WordAlloc.removeDeadStructural input10428 value5218 value1 value2 = (output10428, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10429 value5217 value1 value2 = (output10429, value5, value1) := by
  rw [input10429_def, output10429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10425]
  dsimp only
  rw [child10428]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10425_skip, output10428_skip]
  kernel_rfl

theorem node10430_cond_eq
    (child10424 : Flapjack.WordAlloc.removeDeadStructural input10424 value5216 value1 value2 = (output10424, value5217, value1))
    (child10429 : Flapjack.WordAlloc.removeDeadStructural input10429 value5217 value1 value2 = (output10429, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10430 value5216 value1 value2 = (output10430, value5, value1) := by
  rw [input10430_def, output10430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10424]
  dsimp only
  rw [child10429]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10424_skip, output10429_skip]
  kernel_rfl

theorem node10431_cond_eq
    (child10423 : Flapjack.WordAlloc.removeDeadStructural input10423 value5215 value1 value2 = (output10423, value5216, value1))
    (child10430 : Flapjack.WordAlloc.removeDeadStructural input10430 value5216 value1 value2 = (output10430, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10431 value5215 value1 value2 = (output10431, value5, value1) := by
  rw [input10431_def, output10431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10423]
  dsimp only
  rw [child10430]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10423_skip, output10430_skip]
  kernel_rfl

theorem node10432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10432 value5 value1 value2 = (output10432, value5220, value1) := by
  rw [input10432_def, output10432_def]
  kernel_rfl

theorem node10433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10433 value5220 value1 value2 = (output10433, value5221, value1) := by
  rw [input10433_def, output10433_def]
  kernel_rfl

theorem node10434_cond_eq
    (child10432 : Flapjack.WordAlloc.removeDeadStructural input10432 value5 value1 value2 = (output10432, value5220, value1))
    (child10433 : Flapjack.WordAlloc.removeDeadStructural input10433 value5220 value1 value2 = (output10433, value5221, value1)) : Flapjack.WordAlloc.removeDeadStructural input10434 value5 value1 value2 = (output10434, value5221, value1) := by
  rw [input10434_def, output10434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10432]
  dsimp only
  rw [child10433]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10432_skip, output10433_skip]
  kernel_rfl

theorem node10435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10435 value5221 value1 value2 = (output10435, value5222, value1) := by
  rw [input10435_def, output10435_def]
  kernel_rfl

theorem node10436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10436 value5222 value1 value2 = (output10436, value5222, value1) := by
  rw [input10436_def, output10436_def]
  kernel_rfl

theorem node10437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10437 value5222 value1 value2 = (output10437, value5223, value1) := by
  rw [input10437_def, output10437_def]
  kernel_rfl

theorem node10438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10438 value5223 value1 value2 = (output10438, value5224, value1) := by
  rw [input10438_def, output10438_def]
  kernel_rfl

theorem node10439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10439 value5224 value1 value2 = (output10439, value5225, value1) := by
  rw [input10439_def, output10439_def]
  kernel_rfl

theorem node10440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10440 value5225 value1 value2 = (output10440, value5226, value1) := by
  rw [input10440_def, output10440_def]
  kernel_rfl

theorem node10441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10441 value5226 value1 value2 = (output10441, value5, value1) := by
  rw [input10441_def, output10441_def]
  kernel_rfl

theorem node10442_cond_eq
    (child10440 : Flapjack.WordAlloc.removeDeadStructural input10440 value5225 value1 value2 = (output10440, value5226, value1))
    (child10441 : Flapjack.WordAlloc.removeDeadStructural input10441 value5226 value1 value2 = (output10441, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10442 value5225 value1 value2 = (output10442, value5, value1) := by
  rw [input10442_def, output10442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10440]
  dsimp only
  rw [child10441]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10440_skip, output10441_skip]
  kernel_rfl

theorem node10443_cond_eq
    (child10439 : Flapjack.WordAlloc.removeDeadStructural input10439 value5224 value1 value2 = (output10439, value5225, value1))
    (child10442 : Flapjack.WordAlloc.removeDeadStructural input10442 value5225 value1 value2 = (output10442, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10443 value5224 value1 value2 = (output10443, value5, value1) := by
  rw [input10443_def, output10443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10439]
  dsimp only
  rw [child10442]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10439_skip, output10442_skip]
  kernel_rfl

theorem node10444_cond_eq
    (child10438 : Flapjack.WordAlloc.removeDeadStructural input10438 value5223 value1 value2 = (output10438, value5224, value1))
    (child10443 : Flapjack.WordAlloc.removeDeadStructural input10443 value5224 value1 value2 = (output10443, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10444 value5223 value1 value2 = (output10444, value5, value1) := by
  rw [input10444_def, output10444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10438]
  dsimp only
  rw [child10443]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10438_skip, output10443_skip]
  kernel_rfl

theorem node10445_cond_eq
    (child10437 : Flapjack.WordAlloc.removeDeadStructural input10437 value5222 value1 value2 = (output10437, value5223, value1))
    (child10444 : Flapjack.WordAlloc.removeDeadStructural input10444 value5223 value1 value2 = (output10444, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10445 value5222 value1 value2 = (output10445, value5, value1) := by
  rw [input10445_def, output10445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10437]
  dsimp only
  rw [child10444]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10437_skip, output10444_skip]
  kernel_rfl

theorem node10446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10446 value5 value1 value2 = (output10446, value5227, value1) := by
  rw [input10446_def, output10446_def]
  kernel_rfl

theorem node10447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10447 value5227 value1 value2 = (output10447, value5228, value1) := by
  rw [input10447_def, output10447_def]
  kernel_rfl

theorem node10448_cond_eq
    (child10446 : Flapjack.WordAlloc.removeDeadStructural input10446 value5 value1 value2 = (output10446, value5227, value1))
    (child10447 : Flapjack.WordAlloc.removeDeadStructural input10447 value5227 value1 value2 = (output10447, value5228, value1)) : Flapjack.WordAlloc.removeDeadStructural input10448 value5 value1 value2 = (output10448, value5228, value1) := by
  rw [input10448_def, output10448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10446]
  dsimp only
  rw [child10447]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10446_skip, output10447_skip]
  kernel_rfl

theorem node10449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10449 value5228 value1 value2 = (output10449, value5229, value1) := by
  rw [input10449_def, output10449_def]
  kernel_rfl

theorem node10450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10450 value5229 value1 value2 = (output10450, value5229, value1) := by
  rw [input10450_def, output10450_def]
  kernel_rfl

theorem node10451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10451 value5229 value1 value2 = (output10451, value5230, value1) := by
  rw [input10451_def, output10451_def]
  kernel_rfl

theorem node10452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10452 value5230 value1 value2 = (output10452, value5231, value1) := by
  rw [input10452_def, output10452_def]
  kernel_rfl

theorem node10453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10453 value5231 value1 value2 = (output10453, value5232, value1) := by
  rw [input10453_def, output10453_def]
  kernel_rfl

theorem node10454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10454 value5232 value1 value2 = (output10454, value5233, value1) := by
  rw [input10454_def, output10454_def]
  kernel_rfl

theorem node10455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10455 value5233 value1 value2 = (output10455, value5, value1) := by
  rw [input10455_def, output10455_def]
  kernel_rfl

theorem node10456_cond_eq
    (child10454 : Flapjack.WordAlloc.removeDeadStructural input10454 value5232 value1 value2 = (output10454, value5233, value1))
    (child10455 : Flapjack.WordAlloc.removeDeadStructural input10455 value5233 value1 value2 = (output10455, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10456 value5232 value1 value2 = (output10456, value5, value1) := by
  rw [input10456_def, output10456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10454]
  dsimp only
  rw [child10455]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10454_skip, output10455_skip]
  kernel_rfl

theorem node10457_cond_eq
    (child10453 : Flapjack.WordAlloc.removeDeadStructural input10453 value5231 value1 value2 = (output10453, value5232, value1))
    (child10456 : Flapjack.WordAlloc.removeDeadStructural input10456 value5232 value1 value2 = (output10456, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10457 value5231 value1 value2 = (output10457, value5, value1) := by
  rw [input10457_def, output10457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10453]
  dsimp only
  rw [child10456]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10453_skip, output10456_skip]
  kernel_rfl

theorem node10458_cond_eq
    (child10452 : Flapjack.WordAlloc.removeDeadStructural input10452 value5230 value1 value2 = (output10452, value5231, value1))
    (child10457 : Flapjack.WordAlloc.removeDeadStructural input10457 value5231 value1 value2 = (output10457, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10458 value5230 value1 value2 = (output10458, value5, value1) := by
  rw [input10458_def, output10458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10452]
  dsimp only
  rw [child10457]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10452_skip, output10457_skip]
  kernel_rfl

theorem node10459_cond_eq
    (child10451 : Flapjack.WordAlloc.removeDeadStructural input10451 value5229 value1 value2 = (output10451, value5230, value1))
    (child10458 : Flapjack.WordAlloc.removeDeadStructural input10458 value5230 value1 value2 = (output10458, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10459 value5229 value1 value2 = (output10459, value5, value1) := by
  rw [input10459_def, output10459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10451]
  dsimp only
  rw [child10458]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10451_skip, output10458_skip]
  kernel_rfl

theorem node10460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10460 value5 value1 value2 = (output10460, value5234, value1) := by
  rw [input10460_def, output10460_def]
  kernel_rfl

theorem node10461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10461 value5234 value1 value2 = (output10461, value5235, value1) := by
  rw [input10461_def, output10461_def]
  kernel_rfl

theorem node10462_cond_eq
    (child10460 : Flapjack.WordAlloc.removeDeadStructural input10460 value5 value1 value2 = (output10460, value5234, value1))
    (child10461 : Flapjack.WordAlloc.removeDeadStructural input10461 value5234 value1 value2 = (output10461, value5235, value1)) : Flapjack.WordAlloc.removeDeadStructural input10462 value5 value1 value2 = (output10462, value5235, value1) := by
  rw [input10462_def, output10462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10460]
  dsimp only
  rw [child10461]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10460_skip, output10461_skip]
  kernel_rfl

theorem node10463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10463 value5235 value1 value2 = (output10463, value5236, value1) := by
  rw [input10463_def, output10463_def]
  kernel_rfl

theorem node10464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10464 value5236 value1 value2 = (output10464, value5236, value1) := by
  rw [input10464_def, output10464_def]
  kernel_rfl

theorem node10465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10465 value5236 value1 value2 = (output10465, value5237, value1) := by
  rw [input10465_def, output10465_def]
  kernel_rfl

theorem node10466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10466 value5237 value1 value2 = (output10466, value5238, value1) := by
  rw [input10466_def, output10466_def]
  kernel_rfl

theorem node10467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10467 value5238 value1 value2 = (output10467, value5239, value1) := by
  rw [input10467_def, output10467_def]
  kernel_rfl

theorem node10468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10468 value5239 value1 value2 = (output10468, value5240, value1) := by
  rw [input10468_def, output10468_def]
  kernel_rfl

theorem node10469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10469 value5240 value1 value2 = (output10469, value5, value1) := by
  rw [input10469_def, output10469_def]
  kernel_rfl

theorem node10470_cond_eq
    (child10468 : Flapjack.WordAlloc.removeDeadStructural input10468 value5239 value1 value2 = (output10468, value5240, value1))
    (child10469 : Flapjack.WordAlloc.removeDeadStructural input10469 value5240 value1 value2 = (output10469, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10470 value5239 value1 value2 = (output10470, value5, value1) := by
  rw [input10470_def, output10470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10468]
  dsimp only
  rw [child10469]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10468_skip, output10469_skip]
  kernel_rfl

theorem node10471_cond_eq
    (child10467 : Flapjack.WordAlloc.removeDeadStructural input10467 value5238 value1 value2 = (output10467, value5239, value1))
    (child10470 : Flapjack.WordAlloc.removeDeadStructural input10470 value5239 value1 value2 = (output10470, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10471 value5238 value1 value2 = (output10471, value5, value1) := by
  rw [input10471_def, output10471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10467]
  dsimp only
  rw [child10470]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10467_skip, output10470_skip]
  kernel_rfl

theorem node10472_cond_eq
    (child10466 : Flapjack.WordAlloc.removeDeadStructural input10466 value5237 value1 value2 = (output10466, value5238, value1))
    (child10471 : Flapjack.WordAlloc.removeDeadStructural input10471 value5238 value1 value2 = (output10471, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10472 value5237 value1 value2 = (output10472, value5, value1) := by
  rw [input10472_def, output10472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10466]
  dsimp only
  rw [child10471]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10466_skip, output10471_skip]
  kernel_rfl

theorem node10473_cond_eq
    (child10465 : Flapjack.WordAlloc.removeDeadStructural input10465 value5236 value1 value2 = (output10465, value5237, value1))
    (child10472 : Flapjack.WordAlloc.removeDeadStructural input10472 value5237 value1 value2 = (output10472, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10473 value5236 value1 value2 = (output10473, value5, value1) := by
  rw [input10473_def, output10473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10465]
  dsimp only
  rw [child10472]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10465_skip, output10472_skip]
  kernel_rfl

theorem node10474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10474 value5 value1 value2 = (output10474, value5241, value1) := by
  rw [input10474_def, output10474_def]
  kernel_rfl

theorem node10475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10475 value5241 value1 value2 = (output10475, value5242, value1) := by
  rw [input10475_def, output10475_def]
  kernel_rfl

theorem node10476_cond_eq
    (child10474 : Flapjack.WordAlloc.removeDeadStructural input10474 value5 value1 value2 = (output10474, value5241, value1))
    (child10475 : Flapjack.WordAlloc.removeDeadStructural input10475 value5241 value1 value2 = (output10475, value5242, value1)) : Flapjack.WordAlloc.removeDeadStructural input10476 value5 value1 value2 = (output10476, value5242, value1) := by
  rw [input10476_def, output10476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10474]
  dsimp only
  rw [child10475]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10474_skip, output10475_skip]
  kernel_rfl

theorem node10477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10477 value5242 value1 value2 = (output10477, value5243, value1) := by
  rw [input10477_def, output10477_def]
  kernel_rfl

theorem node10478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10478 value5243 value1 value2 = (output10478, value5243, value1) := by
  rw [input10478_def, output10478_def]
  kernel_rfl

theorem node10479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10479 value5243 value1 value2 = (output10479, value5244, value1) := by
  rw [input10479_def, output10479_def]
  kernel_rfl

theorem node10480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10480 value5244 value1 value2 = (output10480, value5245, value1) := by
  rw [input10480_def, output10480_def]
  kernel_rfl

theorem node10481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10481 value5245 value1 value2 = (output10481, value5246, value1) := by
  rw [input10481_def, output10481_def]
  kernel_rfl

theorem node10482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10482 value5246 value1 value2 = (output10482, value5247, value1) := by
  rw [input10482_def, output10482_def]
  kernel_rfl

theorem node10483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10483 value5247 value1 value2 = (output10483, value5, value1) := by
  rw [input10483_def, output10483_def]
  kernel_rfl

theorem node10484_cond_eq
    (child10482 : Flapjack.WordAlloc.removeDeadStructural input10482 value5246 value1 value2 = (output10482, value5247, value1))
    (child10483 : Flapjack.WordAlloc.removeDeadStructural input10483 value5247 value1 value2 = (output10483, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10484 value5246 value1 value2 = (output10484, value5, value1) := by
  rw [input10484_def, output10484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10482]
  dsimp only
  rw [child10483]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10482_skip, output10483_skip]
  kernel_rfl

theorem node10485_cond_eq
    (child10481 : Flapjack.WordAlloc.removeDeadStructural input10481 value5245 value1 value2 = (output10481, value5246, value1))
    (child10484 : Flapjack.WordAlloc.removeDeadStructural input10484 value5246 value1 value2 = (output10484, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10485 value5245 value1 value2 = (output10485, value5, value1) := by
  rw [input10485_def, output10485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10481]
  dsimp only
  rw [child10484]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10481_skip, output10484_skip]
  kernel_rfl

theorem node10486_cond_eq
    (child10480 : Flapjack.WordAlloc.removeDeadStructural input10480 value5244 value1 value2 = (output10480, value5245, value1))
    (child10485 : Flapjack.WordAlloc.removeDeadStructural input10485 value5245 value1 value2 = (output10485, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10486 value5244 value1 value2 = (output10486, value5, value1) := by
  rw [input10486_def, output10486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10480]
  dsimp only
  rw [child10485]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10480_skip, output10485_skip]
  kernel_rfl

theorem node10487_cond_eq
    (child10479 : Flapjack.WordAlloc.removeDeadStructural input10479 value5243 value1 value2 = (output10479, value5244, value1))
    (child10486 : Flapjack.WordAlloc.removeDeadStructural input10486 value5244 value1 value2 = (output10486, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input10487 value5243 value1 value2 = (output10487, value5, value1) := by
  rw [input10487_def, output10487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10479]
  dsimp only
  rw [child10486]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10479_skip, output10486_skip]
  kernel_rfl

theorem node10488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10488 value5 value1 value2 = (output10488, value5248, value1) := by
  rw [input10488_def, output10488_def]
  kernel_rfl

theorem node10489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10489 value5248 value1 value2 = (output10489, value5249, value1) := by
  rw [input10489_def, output10489_def]
  kernel_rfl

theorem node10490_cond_eq
    (child10488 : Flapjack.WordAlloc.removeDeadStructural input10488 value5 value1 value2 = (output10488, value5248, value1))
    (child10489 : Flapjack.WordAlloc.removeDeadStructural input10489 value5248 value1 value2 = (output10489, value5249, value1)) : Flapjack.WordAlloc.removeDeadStructural input10490 value5 value1 value2 = (output10490, value5249, value1) := by
  rw [input10490_def, output10490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10488]
  dsimp only
  rw [child10489]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10488_skip, output10489_skip]
  kernel_rfl

theorem node10491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10491 value5249 value1 value2 = (output10491, value5250, value1) := by
  rw [input10491_def, output10491_def]
  kernel_rfl

theorem node10492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10492 value5250 value1 value2 = (output10492, value5250, value1) := by
  rw [input10492_def, output10492_def]
  kernel_rfl

theorem node10493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10493 value5250 value1 value2 = (output10493, value5251, value1) := by
  rw [input10493_def, output10493_def]
  kernel_rfl

theorem node10494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10494 value5251 value1 value2 = (output10494, value5252, value1) := by
  rw [input10494_def, output10494_def]
  kernel_rfl

theorem node10495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10495 value5252 value1 value2 = (output10495, value5253, value1) := by
  rw [input10495_def, output10495_def]
  kernel_rfl

#print axioms node10495_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
