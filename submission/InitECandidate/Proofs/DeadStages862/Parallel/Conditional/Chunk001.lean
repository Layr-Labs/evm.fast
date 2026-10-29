import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages862.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages862.Parallel
theorem node256_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value70 value1 value12 = (output240, value70, value1))
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value70 value1 value12 = (output255, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input256 value70 value1 value12 = (output256, value75, value1) := by
  rw [input256_def, output256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output255_skip]
  kernel_rfl

theorem node257_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value69 value1 value12 = (output239, value70, value1))
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value70 value1 value12 = (output256, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input257 value69 value1 value12 = (output257, value75, value1) := by
  rw [input257_def, output257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output239_skip, output256_skip]
  kernel_rfl

theorem node258_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value68 value1 value12 = (output238, value69, value1))
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value69 value1 value12 = (output257, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input258 value68 value1 value12 = (output258, value75, value1) := by
  rw [input258_def, output258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output257_skip]
  kernel_rfl

theorem node259_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value57 value1 value12 = (output237, value68, value1))
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value68 value1 value12 = (output258, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input259 value57 value1 value12 = (output259, value75, value1) := by
  rw [input259_def, output259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output258_skip]
  kernel_rfl

theorem node260_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value57 value1 value12 = (output180, value57, value1))
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value57 value1 value12 = (output259, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input260 value57 value1 value12 = (output260, value75, value1) := by
  rw [input260_def, output260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output259_skip]
  kernel_rfl

theorem node261_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value57 value1 value12 = (output179, value57, value1))
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value57 value1 value12 = (output260, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input261 value57 value1 value12 = (output261, value75, value1) := by
  rw [input261_def, output261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output260_skip]
  kernel_rfl

theorem node262_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value57 value1 value12 = (output178, value57, value1))
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value57 value1 value12 = (output261, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input262 value57 value1 value12 = (output262, value75, value1) := by
  rw [input262_def, output262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output261_skip]
  kernel_rfl

theorem node263_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value57 value1 value12 = (output177, value57, value1))
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value57 value1 value12 = (output262, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input263 value57 value1 value12 = (output263, value75, value1) := by
  rw [input263_def, output263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output262_skip]
  kernel_rfl

theorem node264_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value57 value1 value12 = (output176, value57, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value57 value1 value12 = (output263, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value57 value1 value12 = (output264, value75, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value56 value1 value12 = (output175, value57, value1))
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value57 value1 value12 = (output264, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input265 value56 value1 value12 = (output265, value75, value1) := by
  rw [input265_def, output265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output264_skip]
  kernel_rfl

theorem node266_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value53 value1 value12 = (output174, value56, value1))
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value56 value1 value12 = (output265, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input266 value53 value1 value12 = (output266, value75, value1) := by
  rw [input266_def, output266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output265_skip]
  kernel_rfl

theorem node267_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value53 value1 value12 = (output169, value53, value1))
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value53 value1 value12 = (output266, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input267 value53 value1 value12 = (output267, value75, value1) := by
  rw [input267_def, output267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output266_skip]
  kernel_rfl

theorem node268_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value51 value1 value12 = (output168, value53, value1))
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value53 value1 value12 = (output267, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input268 value51 value1 value12 = (output268, value75, value1) := by
  rw [input268_def, output268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output267_skip]
  kernel_rfl

theorem node269_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value49 value1 value12 = (output165, value51, value1))
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value51 value1 value12 = (output268, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input269 value49 value1 value12 = (output269, value75, value1) := by
  rw [input269_def, output269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output268_skip]
  kernel_rfl

theorem node270_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value47 value1 value12 = (output162, value49, value1))
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value49 value1 value12 = (output269, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input270 value47 value1 value12 = (output270, value75, value1) := by
  rw [input270_def, output270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output269_skip]
  kernel_rfl

theorem node271_cond_eq
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value45 value1 value12 = (output159, value47, value1))
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value47 value1 value12 = (output270, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input271 value45 value1 value12 = (output271, value75, value1) := by
  rw [input271_def, output271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child159]
  try dsimp only
  rw [child270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output159_skip, output270_skip]
  kernel_rfl

theorem node272_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value43 value1 value12 = (output156, value45, value1))
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value45 value1 value12 = (output271, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input272 value43 value1 value12 = (output272, value75, value1) := by
  rw [input272_def, output272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output156_skip, output271_skip]
  kernel_rfl

theorem node273_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value42 value1 value12 = (output153, value43, value1))
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value43 value1 value12 = (output272, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input273 value42 value1 value12 = (output273, value75, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output272_skip]
  kernel_rfl

theorem node274_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value40 value1 value12 = (output152, value42, value1))
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value42 value1 value12 = (output273, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input274 value40 value1 value12 = (output274, value75, value1) := by
  rw [input274_def, output274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output273_skip]
  kernel_rfl

theorem node275_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value39 value1 value12 = (output149, value40, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value40 value1 value12 = (output274, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value39 value1 value12 = (output275, value75, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value36 value1 value12 = (output148, value39, value1))
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value39 value1 value12 = (output275, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input276 value36 value1 value12 = (output276, value75, value1) := by
  rw [input276_def, output276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output275_skip]
  kernel_rfl

theorem node277_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value36 value1 value12 = (output143, value36, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value36 value1 value12 = (output276, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value36 value1 value12 = (output277, value75, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value35 value1 value12 = (output142, value36, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value36 value1 value12 = (output277, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value35 value1 value12 = (output278, value75, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value34 value1 value12 = (output141, value35, value1))
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value35 value1 value12 = (output278, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input279 value34 value1 value12 = (output279, value75, value1) := by
  rw [input279_def, output279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child141]
  try dsimp only
  rw [child278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output141_skip, output278_skip]
  kernel_rfl

theorem node280_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value34 value1 value12 = (output140, value34, value1))
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value34 value1 value12 = (output279, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input280 value34 value1 value12 = (output280, value75, value1) := by
  rw [input280_def, output280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  try dsimp only
  rw [child279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output279_skip]
  kernel_rfl

theorem node281_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value33 value1 value12 = (output139, value34, value1))
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value34 value1 value12 = (output280, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input281 value33 value1 value12 = (output281, value75, value1) := by
  rw [input281_def, output281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  try dsimp only
  rw [child280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output139_skip, output280_skip]
  kernel_rfl

theorem node282_cond_eq
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value32 value1 value12 = (output138, value33, value1))
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value33 value1 value12 = (output281, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input282 value32 value1 value12 = (output282, value75, value1) := by
  rw [input282_def, output282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child138]
  try dsimp only
  rw [child281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output138_skip, output281_skip]
  kernel_rfl

theorem node283_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value32 value1 value12 = (output137, value32, value1))
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value32 value1 value12 = (output282, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input283 value32 value1 value12 = (output283, value75, value1) := by
  rw [input283_def, output283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output282_skip]
  kernel_rfl

theorem node284_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value32 value1 value12 = (output136, value32, value1))
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value32 value1 value12 = (output283, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input284 value32 value1 value12 = (output284, value75, value1) := by
  rw [input284_def, output284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output283_skip]
  kernel_rfl

theorem node285_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value32 value1 value12 = (output135, value32, value1))
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value32 value1 value12 = (output284, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input285 value32 value1 value12 = (output285, value75, value1) := by
  rw [input285_def, output285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output284_skip]
  kernel_rfl

theorem node286_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value31 value1 value12 = (output134, value32, value1))
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value32 value1 value12 = (output285, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input286 value31 value1 value12 = (output286, value75, value1) := by
  rw [input286_def, output286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output285_skip]
  kernel_rfl

theorem node287_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value28 value1 value12 = (output133, value31, value1))
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value31 value1 value12 = (output286, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input287 value28 value1 value12 = (output287, value75, value1) := by
  rw [input287_def, output287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output286_skip]
  kernel_rfl

theorem node288_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value28 value1 value12 = (output128, value28, value1))
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value28 value1 value12 = (output287, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input288 value28 value1 value12 = (output288, value75, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  try dsimp only
  rw [child287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output128_skip, output287_skip]
  kernel_rfl

theorem node289_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value18 value1 value12 = (output127, value28, value1))
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value28 value1 value12 = (output288, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input289 value18 value1 value12 = (output289, value75, value1) := by
  rw [input289_def, output289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output288_skip]
  kernel_rfl

theorem node290_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value18 value1 value12 = (output116, value27, value1))
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value18 value1 value12 = (output289, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input290 value18 value1 value12 = (output290, value78, value1) := by
  rw [input290_def, output290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child116]
  try dsimp only
  rw [child289]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output289_skip]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value78 value1 value12 = (output291, value75, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value75 value1 value12 = (output292, value79, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input293 value79 value1 value12 = (output293, value80, value1) := by
  rw [input293_def, output293_def]
  kernel_rfl

theorem node294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input294 value80 value1 value12 = (output294, value81, value1) := by
  rw [input294_def, output294_def]
  kernel_rfl

theorem node295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input295 value81 value1 value12 = (output295, value81, value1) := by
  rw [input295_def, output295_def]
  kernel_rfl

theorem node296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input296 value81 value1 value12 = (output296, value81, value1) := by
  rw [input296_def, output296_def]
  kernel_rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value81 value1 value12 = (output297, value81, value1) := by
  rw [input297_def, output297_def]
  kernel_rfl

theorem node298_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value81 value1 value12 = (output296, value81, value1))
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value81 value1 value12 = (output297, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input298 value81 value1 value12 = (output298, value81, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output297_skip]
  kernel_rfl

theorem node299_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value81 value1 value12 = (output295, value81, value1))
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value81 value1 value12 = (output298, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input299 value81 value1 value12 = (output299, value81, value1) := by
  rw [input299_def, output299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  try dsimp only
  rw [child298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output295_skip, output298_skip]
  kernel_rfl

theorem node300_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value80 value1 value12 = (output294, value81, value1))
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value81 value1 value12 = (output299, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input300 value80 value1 value12 = (output300, value81, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  try dsimp only
  rw [child299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output294_skip, output299_skip]
  kernel_rfl

theorem node301_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value79 value1 value12 = (output293, value80, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value80 value1 value12 = (output300, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value79 value1 value12 = (output301, value81, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output300_skip]
  kernel_rfl

theorem node302_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value75 value1 value12 = (output292, value79, value1))
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value79 value1 value12 = (output301, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input302 value75 value1 value12 = (output302, value81, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output301_skip]
  kernel_rfl

theorem node303_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value78 value1 value12 = (output291, value75, value1))
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value75 value1 value12 = (output302, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input303 value78 value1 value12 = (output303, value81, value1) := by
  rw [input303_def, output303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output302_skip]
  kernel_rfl

theorem node304_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value18 value1 value12 = (output290, value78, value1))
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value78 value1 value12 = (output303, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input304 value18 value1 value12 = (output304, value81, value1) := by
  rw [input304_def, output304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output303_skip]
  kernel_rfl

theorem node305_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value18 value1 value12 = (output57, value18, value1))
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value18 value1 value12 = (output304, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input305 value18 value1 value12 = (output305, value81, value1) := by
  rw [input305_def, output305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output304_skip]
  kernel_rfl

theorem node306_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value17 value1 value12 = (output56, value18, value1))
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value18 value1 value12 = (output305, value81, value1)) : Flapjack.WordAlloc.removeDeadStructural input306 value17 value1 value12 = (output306, value81, value1) := by
  rw [input306_def, output306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output305_skip]
  kernel_rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value17 value1 value12 = (output307, value17, value1) := by
  rw [input307_def, output307_def]
  kernel_rfl

theorem node308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input308 value17 value1 value12 = (output308, value17, value1) := by
  rw [input308_def, output308_def]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value17 value1 value12 = (output309, value17, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value17 value1 value12 = (output310, value17, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value17 value1 value12 = (output311, value17, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input312 value17 value1 value12 = (output312, value17, value1) := by
  rw [input312_def, output312_def]
  kernel_rfl

theorem node313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input313 value17 value1 value12 = (output313, value17, value1) := by
  rw [input313_def, output313_def]
  kernel_rfl

theorem node314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input314 value17 value1 value12 = (output314, value17, value1) := by
  rw [input314_def, output314_def]
  kernel_rfl

theorem node315_cond_eq
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value17 value1 value12 = (output313, value17, value1))
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value17 value1 value12 = (output314, value17, value1)) : Flapjack.WordAlloc.removeDeadStructural input315 value17 value1 value12 = (output315, value17, value1) := by
  rw [input315_def, output315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child313]
  try dsimp only
  rw [child314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output313_skip, output314_skip]
  kernel_rfl

theorem node316_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value17 value1 value12 = (output312, value17, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value17 value1 value12 = (output315, value17, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value17 value1 value12 = (output316, value17, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value17 value1 value12 = (output311, value17, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value17 value1 value12 = (output316, value17, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value17 value1 value12 = (output317, value17, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output316_skip]
  kernel_rfl

theorem node318_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value17 value1 value12 = (output310, value17, value1))
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value17 value1 value12 = (output317, value17, value1)) : Flapjack.WordAlloc.removeDeadStructural input318 value17 value1 value12 = (output318, value17, value1) := by
  rw [input318_def, output318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output317_skip]
  kernel_rfl

theorem node319_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value17 value1 value12 = (output309, value17, value1))
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value17 value1 value12 = (output318, value17, value1)) : Flapjack.WordAlloc.removeDeadStructural input319 value17 value1 value12 = (output319, value17, value1) := by
  rw [input319_def, output319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output318_skip]
  kernel_rfl

theorem node320_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value17 value1 value12 = (output308, value17, value1))
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value17 value1 value12 = (output319, value17, value1)) : Flapjack.WordAlloc.removeDeadStructural input320 value17 value1 value12 = (output320, value17, value1) := by
  rw [input320_def, output320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output319_skip]
  kernel_rfl

theorem node321_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value17 value1 value12 = (output307, value17, value1))
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value17 value1 value12 = (output320, value17, value1)) : Flapjack.WordAlloc.removeDeadStructural input321 value17 value1 value12 = (output321, value17, value1) := by
  rw [input321_def, output321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output320_skip]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value17 value1 value12 = (output322, value82, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value17 value1 value12 = (output321, value17, value1))
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value17 value1 value12 = (output322, value82, value1)) : Flapjack.WordAlloc.removeDeadStructural input323 value17 value1 value12 = (output323, value82, value1) := by
  rw [input323_def, output323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output322_skip]
  kernel_rfl

theorem node324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input324 value82 value1 value12 = (output324, value82, value1) := by
  rw [input324_def, output324_def]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value82 value1 value12 = (output325, value82, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value82 value1 value12 = (output326, value82, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value82 value1 value12 = (output325, value82, value1))
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value82 value1 value12 = (output326, value82, value1)) : Flapjack.WordAlloc.removeDeadStructural input327 value82 value1 value12 = (output327, value82, value1) := by
  rw [input327_def, output327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output326_skip]
  kernel_rfl

theorem node328_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value82 value1 value12 = (output324, value82, value1))
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value82 value1 value12 = (output327, value82, value1)) : Flapjack.WordAlloc.removeDeadStructural input328 value82 value1 value12 = (output328, value82, value1) := by
  rw [input328_def, output328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output327_skip]
  kernel_rfl

theorem node329_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value17 value1 value12 = (output323, value82, value1))
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value82 value1 value12 = (output328, value82, value1)) : Flapjack.WordAlloc.removeDeadStructural input329 value17 value1 value12 = (output329, value82, value1) := by
  rw [input329_def, output329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output328_skip]
  kernel_rfl

theorem node330_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value17 value1 value12 = (output306, value81, value1))
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value17 value1 value12 = (output329, value82, value1)) : Flapjack.WordAlloc.removeDeadStructural input330 value17 value1 value12 = (output330, value84, value1) := by
  rw [input330_def, output330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child306]
  try dsimp only
  rw [child329]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output329_skip]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value84 value1 value12 = (output331, value85, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value85 value1 value12 = (output332, value86, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value86 value1 value12 = (output333, value86, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value86 value1 value12 = (output334, value87, value1) := by
  rw [input334_def, output334_def]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value87 value1 value12 = (output335, value88, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value86 value1 value12 = (output334, value87, value1))
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value87 value1 value12 = (output335, value88, value1)) : Flapjack.WordAlloc.removeDeadStructural input336 value86 value1 value12 = (output336, value88, value1) := by
  rw [input336_def, output336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output335_skip]
  kernel_rfl

theorem node337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input337 value88 value1 value12 = (output337, value89, value1) := by
  rw [input337_def, output337_def]
  kernel_rfl

theorem node338_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value86 value1 value12 = (output336, value88, value1))
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value88 value1 value12 = (output337, value89, value1)) : Flapjack.WordAlloc.removeDeadStructural input338 value86 value1 value12 = (output338, value89, value1) := by
  rw [input338_def, output338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output337_skip]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value89 value1 value12 = (output339, value90, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value90 value1 value12 = (output340, value91, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value91 value1 value12 = (output341, value91, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value91 value1 value12 = (output342, value91, value1) := by
  rw [input342_def, output342_def]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value91 value1 value12 = (output343, value91, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value91 value1 value12 = (output342, value91, value1))
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value91 value1 value12 = (output343, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input344 value91 value1 value12 = (output344, value91, value1) := by
  rw [input344_def, output344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output343_skip]
  kernel_rfl

theorem node345_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value91 value1 value12 = (output341, value91, value1))
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value91 value1 value12 = (output344, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input345 value91 value1 value12 = (output345, value91, value1) := by
  rw [input345_def, output345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output344_skip]
  kernel_rfl

theorem node346_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value90 value1 value12 = (output340, value91, value1))
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value91 value1 value12 = (output345, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input346 value90 value1 value12 = (output346, value91, value1) := by
  rw [input346_def, output346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output345_skip]
  kernel_rfl

theorem node347_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value89 value1 value12 = (output339, value90, value1))
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value90 value1 value12 = (output346, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input347 value89 value1 value12 = (output347, value91, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output346_skip]
  kernel_rfl

theorem node348_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value86 value1 value12 = (output338, value89, value1))
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value89 value1 value12 = (output347, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input348 value86 value1 value12 = (output348, value91, value1) := by
  rw [input348_def, output348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output347_skip]
  kernel_rfl

theorem node349_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value86 value1 value12 = (output333, value86, value1))
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value86 value1 value12 = (output348, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input349 value86 value1 value12 = (output349, value91, value1) := by
  rw [input349_def, output349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output348_skip]
  kernel_rfl

theorem node350_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value85 value1 value12 = (output332, value86, value1))
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value86 value1 value12 = (output349, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input350 value85 value1 value12 = (output350, value91, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output349_skip]
  kernel_rfl

theorem node351_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value84 value1 value12 = (output331, value85, value1))
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value85 value1 value12 = (output350, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input351 value84 value1 value12 = (output351, value91, value1) := by
  rw [input351_def, output351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output350_skip]
  kernel_rfl

theorem node352_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value17 value1 value12 = (output330, value84, value1))
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value84 value1 value12 = (output351, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input352 value17 value1 value12 = (output352, value91, value1) := by
  rw [input352_def, output352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output351_skip]
  kernel_rfl

theorem node353_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value17 value1 value12 = (output39, value17, value1))
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value17 value1 value12 = (output352, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input353 value17 value1 value12 = (output353, value91, value1) := by
  rw [input353_def, output353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output352_skip]
  kernel_rfl

theorem node354_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value15 value1 value12 = (output38, value17, value1))
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value17 value1 value12 = (output353, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input354 value15 value1 value12 = (output354, value91, value1) := by
  rw [input354_def, output354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output353_skip]
  kernel_rfl

theorem node355_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value14 value1 value12 = (output35, value15, value1))
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value15 value1 value12 = (output354, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input355 value14 value1 value12 = (output355, value91, value1) := by
  rw [input355_def, output355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output354_skip]
  kernel_rfl

theorem node356_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value14 value1 value12 = (output34, value14, value1))
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value14 value1 value12 = (output355, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input356 value14 value1 value12 = (output356, value91, value1) := by
  rw [input356_def, output356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output355_skip]
  kernel_rfl

theorem node357_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value13 value1 value12 = (output31, value14, value1))
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value14 value1 value12 = (output356, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input357 value13 value1 value12 = (output357, value91, value1) := by
  rw [input357_def, output357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output356_skip]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value13 value1 value12 = (output358, value13, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value13 value1 value12 = (output359, value13, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value13 value1 value12 = (output360, value13, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value13 value1 value12 = (output361, value13, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input362 value13 value1 value12 = (output362, value13, value1) := by
  rw [input362_def, output362_def]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value13 value1 value12 = (output363, value13, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value13 value1 value12 = (output364, value13, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input365 value13 value1 value12 = (output365, value13, value1) := by
  rw [input365_def, output365_def]
  kernel_rfl

theorem node366_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value13 value1 value12 = (output364, value13, value1))
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value13 value1 value12 = (output365, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input366 value13 value1 value12 = (output366, value13, value1) := by
  rw [input366_def, output366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child364]
  try dsimp only
  rw [child365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output365_skip]
  kernel_rfl

theorem node367_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value13 value1 value12 = (output363, value13, value1))
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value13 value1 value12 = (output366, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input367 value13 value1 value12 = (output367, value13, value1) := by
  rw [input367_def, output367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output366_skip]
  kernel_rfl

theorem node368_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value13 value1 value12 = (output362, value13, value1))
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value13 value1 value12 = (output367, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input368 value13 value1 value12 = (output368, value13, value1) := by
  rw [input368_def, output368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output367_skip]
  kernel_rfl

theorem node369_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value13 value1 value12 = (output361, value13, value1))
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value13 value1 value12 = (output368, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input369 value13 value1 value12 = (output369, value13, value1) := by
  rw [input369_def, output369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output368_skip]
  kernel_rfl

theorem node370_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value13 value1 value12 = (output360, value13, value1))
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value13 value1 value12 = (output369, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input370 value13 value1 value12 = (output370, value13, value1) := by
  rw [input370_def, output370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output369_skip]
  kernel_rfl

theorem node371_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value13 value1 value12 = (output359, value13, value1))
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value13 value1 value12 = (output370, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input371 value13 value1 value12 = (output371, value13, value1) := by
  rw [input371_def, output371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output370_skip]
  kernel_rfl

theorem node372_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value13 value1 value12 = (output358, value13, value1))
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value13 value1 value12 = (output371, value13, value1)) : Flapjack.WordAlloc.removeDeadStructural input372 value13 value1 value12 = (output372, value13, value1) := by
  rw [input372_def, output372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output371_skip]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value13 value1 value12 = (output373, value91, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value13 value1 value12 = (output372, value13, value1))
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value13 value1 value12 = (output373, value91, value1)) : Flapjack.WordAlloc.removeDeadStructural input374 value13 value1 value12 = (output374, value91, value1) := by
  rw [input374_def, output374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output373_skip]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value91 value1 value12 = (output375, value10, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value10 value1 value12 = (output376, value10, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value10 value1 value12 = (output377, value10, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value10 value1 value12 = (output378, value10, value1) := by
  rw [input378_def, output378_def]
  kernel_rfl

theorem node379_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value10 value1 value12 = (output377, value10, value1))
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value10 value1 value12 = (output378, value10, value1)) : Flapjack.WordAlloc.removeDeadStructural input379 value10 value1 value12 = (output379, value10, value1) := by
  rw [input379_def, output379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output378_skip]
  kernel_rfl

theorem node380_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value10 value1 value12 = (output376, value10, value1))
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value10 value1 value12 = (output379, value10, value1)) : Flapjack.WordAlloc.removeDeadStructural input380 value10 value1 value12 = (output380, value10, value1) := by
  rw [input380_def, output380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output379_skip]
  kernel_rfl

theorem node381_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value91 value1 value12 = (output375, value10, value1))
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value10 value1 value12 = (output380, value10, value1)) : Flapjack.WordAlloc.removeDeadStructural input381 value91 value1 value12 = (output381, value10, value1) := by
  rw [input381_def, output381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output380_skip]
  kernel_rfl

theorem node382_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value13 value1 value12 = (output374, value91, value1))
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value91 value1 value12 = (output381, value10, value1)) : Flapjack.WordAlloc.removeDeadStructural input382 value13 value1 value12 = (output382, value10, value1) := by
  rw [input382_def, output382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output381_skip]
  kernel_rfl

theorem node383_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value13 value1 value12 = (output357, value91, value1))
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value13 value1 value12 = (output382, value10, value1)) : Flapjack.WordAlloc.removeDeadStructural input383 value13 value1 value12 = (output383, value91, value1) := by
  rw [input383_def, output383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child357]
  try dsimp only
  rw [child382]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output382_skip]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value91 value1 value12 = (output384, value94, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value94 value1 value12 = (output385, value11, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value91 value1 value12 = (output384, value94, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value94 value1 value12 = (output385, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value91 value1 value12 = (output386, value11, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output385_skip]
  kernel_rfl

theorem node387_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value13 value1 value12 = (output383, value91, value1))
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value91 value1 value12 = (output386, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input387 value13 value1 value12 = (output387, value11, value1) := by
  rw [input387_def, output387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output386_skip]
  kernel_rfl

theorem node388_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value13 value1 value12 = (output14, value13, value1))
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value13 value1 value12 = (output387, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input388 value13 value1 value12 = (output388, value11, value1) := by
  rw [input388_def, output388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output387_skip]
  kernel_rfl

theorem node389_cond_eq
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value11 value1 value12 = (output13, value13, value1))
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value13 value1 value12 = (output388, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input389 value11 value1 value12 = (output389, value11, value1) := by
  rw [input389_def, output389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13]
  try dsimp only
  rw [child388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13_skip, output388_skip]
  kernel_rfl

theorem node390_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value11 value1 value12 = (output389, value11, value1)) : Flapjack.WordAlloc.removeDeadStructural input390 value10 value1 value2 = (output390, value11, value1) := by
  rw [input390_def, output390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value12 = (value11, value10) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child389
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value11 value1 value2 = (output391, value95, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input392 value95 value1 value2 = (output392, value95, value1) := by
  rw [input392_def, output392_def]
  kernel_rfl

theorem node393_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value11 value1 value2 = (output391, value95, value1))
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value95 value1 value2 = (output392, value95, value1)) : Flapjack.WordAlloc.removeDeadStructural input393 value11 value1 value2 = (output393, value95, value1) := by
  rw [input393_def, output393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output392_skip]
  kernel_rfl

theorem node394_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value10 value1 value2 = (output390, value11, value1))
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value11 value1 value2 = (output393, value95, value1)) : Flapjack.WordAlloc.removeDeadStructural input394 value10 value1 value2 = (output394, value95, value1) := by
  rw [input394_def, output394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output393_skip]
  kernel_rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value95 value1 value2 = (output395, value95, value1) := by
  rw [input395_def, output395_def]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value95 value1 value2 = (output396, value96, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value96 value1 value2 = (output397, value97, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input398 value97 value1 value2 = (output398, value98, value1) := by
  rw [input398_def, output398_def]
  kernel_rfl

theorem node399_cond_eq
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value96 value1 value2 = (output397, value97, value1))
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value97 value1 value2 = (output398, value98, value1)) : Flapjack.WordAlloc.removeDeadStructural input399 value96 value1 value2 = (output399, value98, value1) := by
  rw [input399_def, output399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child397]
  try dsimp only
  rw [child398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output397_skip, output398_skip]
  kernel_rfl

theorem node400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input400 value98 value1 value2 = (output400, value98, value1) := by
  rw [input400_def, output400_def]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value99 value1 value100 = (output401, value101, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input402 value101 value1 value100 = (output402, value101, value1) := by
  rw [input402_def, output402_def]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value101 value1 value100 = (output403, value101, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value101 value1 value100 = (output404, value101, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value101 value1 value100 = (output405, value101, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value101 value1 value100 = (output406, value101, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value101 value1 value100 = (output407, value101, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value101 value1 value100 = (output408, value101, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value101 value1 value100 = (output409, value101, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value101 value1 value100 = (output410, value101, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value101 value1 value100 = (output411, value101, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input412 value101 value1 value100 = (output412, value101, value1) := by
  rw [input412_def, output412_def]
  kernel_rfl

theorem node413_cond_eq
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value101 value1 value100 = (output411, value101, value1))
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value101 value1 value100 = (output412, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input413 value101 value1 value100 = (output413, value101, value1) := by
  rw [input413_def, output413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child411]
  try dsimp only
  rw [child412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output411_skip, output412_skip]
  kernel_rfl

theorem node414_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value101 value1 value100 = (output410, value101, value1))
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value101 value1 value100 = (output413, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input414 value101 value1 value100 = (output414, value101, value1) := by
  rw [input414_def, output414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output413_skip]
  kernel_rfl

theorem node415_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value101 value1 value100 = (output409, value101, value1))
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value101 value1 value100 = (output414, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input415 value101 value1 value100 = (output415, value101, value1) := by
  rw [input415_def, output415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output414_skip]
  kernel_rfl

theorem node416_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value101 value1 value100 = (output408, value101, value1))
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value101 value1 value100 = (output415, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input416 value101 value1 value100 = (output416, value101, value1) := by
  rw [input416_def, output416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output415_skip]
  kernel_rfl

theorem node417_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value101 value1 value100 = (output407, value101, value1))
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value101 value1 value100 = (output416, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input417 value101 value1 value100 = (output417, value101, value1) := by
  rw [input417_def, output417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output416_skip]
  kernel_rfl

theorem node418_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value101 value1 value100 = (output406, value101, value1))
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value101 value1 value100 = (output417, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input418 value101 value1 value100 = (output418, value101, value1) := by
  rw [input418_def, output418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output417_skip]
  kernel_rfl

theorem node419_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value101 value1 value100 = (output405, value101, value1))
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value101 value1 value100 = (output418, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input419 value101 value1 value100 = (output419, value101, value1) := by
  rw [input419_def, output419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output418_skip]
  kernel_rfl

theorem node420_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value101 value1 value100 = (output404, value101, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value101 value1 value100 = (output419, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value101 value1 value100 = (output420, value101, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value101 value1 value100 = (output403, value101, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value101 value1 value100 = (output420, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value101 value1 value100 = (output421, value101, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output420_skip]
  kernel_rfl

theorem node422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input422 value101 value1 value100 = (output422, value102, value1) := by
  rw [input422_def, output422_def]
  kernel_rfl

theorem node423_cond_eq
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value101 value1 value100 = (output421, value101, value1))
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value101 value1 value100 = (output422, value102, value1)) : Flapjack.WordAlloc.removeDeadStructural input423 value101 value1 value100 = (output423, value102, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child421]
  try dsimp only
  rw [child422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output421_skip, output422_skip]
  kernel_rfl

theorem node424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input424 value102 value1 value100 = (output424, value99, value1) := by
  rw [input424_def, output424_def]
  kernel_rfl

theorem node425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input425 value99 value1 value100 = (output425, value102, value1) := by
  rw [input425_def, output425_def]
  kernel_rfl

theorem node426_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value102 value1 value100 = (output424, value99, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value99 value1 value100 = (output425, value102, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value102 value1 value100 = (output426, value102, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value102 value1 value100 = (output427, value103, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value103 value1 value100 = (output428, value104, value1) := by
  rw [input428_def, output428_def]
  kernel_rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value104 value1 value100 = (output429, value105, value1) := by
  rw [input429_def, output429_def]
  kernel_rfl

theorem node430_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value103 value1 value100 = (output428, value104, value1))
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value104 value1 value100 = (output429, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input430 value103 value1 value100 = (output430, value105, value1) := by
  rw [input430_def, output430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output429_skip]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value105 value1 value100 = (output431, value105, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input432 value105 value1 value100 = (output432, value105, value1) := by
  rw [input432_def, output432_def]
  kernel_rfl

theorem node433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input433 value105 value1 value100 = (output433, value105, value1) := by
  rw [input433_def, output433_def]
  kernel_rfl

theorem node434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input434 value105 value1 value100 = (output434, value105, value1) := by
  rw [input434_def, output434_def]
  kernel_rfl

theorem node435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input435 value105 value1 value100 = (output435, value105, value1) := by
  rw [input435_def, output435_def]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value105 value1 value100 = (output436, value105, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input437 value105 value1 value100 = (output437, value105, value1) := by
  rw [input437_def, output437_def]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value105 value1 value100 = (output438, value105, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value105 value1 value100 = (output437, value105, value1))
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value105 value1 value100 = (output438, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input439 value105 value1 value100 = (output439, value105, value1) := by
  rw [input439_def, output439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output438_skip]
  kernel_rfl

theorem node440_cond_eq
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value105 value1 value100 = (output436, value105, value1))
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value105 value1 value100 = (output439, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input440 value105 value1 value100 = (output440, value105, value1) := by
  rw [input440_def, output440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child436]
  try dsimp only
  rw [child439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output436_skip, output439_skip]
  kernel_rfl

theorem node441_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value105 value1 value100 = (output435, value105, value1))
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value105 value1 value100 = (output440, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input441 value105 value1 value100 = (output441, value105, value1) := by
  rw [input441_def, output441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output440_skip]
  kernel_rfl

theorem node442_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value105 value1 value100 = (output434, value105, value1))
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value105 value1 value100 = (output441, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input442 value105 value1 value100 = (output442, value105, value1) := by
  rw [input442_def, output442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  try dsimp only
  rw [child441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output434_skip, output441_skip]
  kernel_rfl

theorem node443_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value105 value1 value100 = (output433, value105, value1))
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value105 value1 value100 = (output442, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input443 value105 value1 value100 = (output443, value105, value1) := by
  rw [input443_def, output443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output442_skip]
  kernel_rfl

theorem node444_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value105 value1 value100 = (output432, value105, value1))
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value105 value1 value100 = (output443, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input444 value105 value1 value100 = (output444, value105, value1) := by
  rw [input444_def, output444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output443_skip]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value105 value1 value100 = (output445, value106, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value105 value1 value100 = (output444, value105, value1))
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value105 value1 value100 = (output445, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input446 value105 value1 value100 = (output446, value106, value1) := by
  rw [input446_def, output446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output445_skip]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value106 value1 value100 = (output447, value106, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input448 value106 value1 value100 = (output448, value106, value1) := by
  rw [input448_def, output448_def]
  kernel_rfl

theorem node449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input449 value106 value1 value100 = (output449, value106, value1) := by
  rw [input449_def, output449_def]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value106 value1 value100 = (output450, value106, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value106 value1 value100 = (output451, value106, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value106 value1 value100 = (output452, value106, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value106 value1 value100 = (output451, value106, value1))
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value106 value1 value100 = (output452, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input453 value106 value1 value100 = (output453, value106, value1) := by
  rw [input453_def, output453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output452_skip]
  kernel_rfl

theorem node454_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value106 value1 value100 = (output450, value106, value1))
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value106 value1 value100 = (output453, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input454 value106 value1 value100 = (output454, value106, value1) := by
  rw [input454_def, output454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output453_skip]
  kernel_rfl

theorem node455_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value106 value1 value100 = (output449, value106, value1))
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value106 value1 value100 = (output454, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input455 value106 value1 value100 = (output455, value106, value1) := by
  rw [input455_def, output455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output454_skip]
  kernel_rfl

theorem node456_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value106 value1 value100 = (output448, value106, value1))
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value106 value1 value100 = (output455, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input456 value106 value1 value100 = (output456, value106, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output455_skip]
  kernel_rfl

theorem node457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input457 value106 value1 value100 = (output457, value107, value1) := by
  rw [input457_def, output457_def]
  kernel_rfl

theorem node458_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value106 value1 value100 = (output456, value106, value1))
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value106 value1 value100 = (output457, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input458 value106 value1 value100 = (output458, value107, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output457_skip]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value107 value1 value100 = (output459, value107, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value107 value1 value100 = (output460, value107, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value107 value1 value100 = (output461, value107, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value107 value1 value100 = (output462, value107, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value107 value1 value100 = (output463, value107, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value107 value1 value100 = (output464, value107, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value107 value1 value100 = (output465, value107, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input466 value107 value1 value100 = (output466, value107, value1) := by
  rw [input466_def, output466_def]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value107 value1 value100 = (output467, value107, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input468 value107 value1 value100 = (output468, value107, value1) := by
  rw [input468_def, output468_def]
  kernel_rfl

theorem node469_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value107 value1 value100 = (output467, value107, value1))
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value107 value1 value100 = (output468, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input469 value107 value1 value100 = (output469, value107, value1) := by
  rw [input469_def, output469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output468_skip]
  kernel_rfl

theorem node470_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value107 value1 value100 = (output466, value107, value1))
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value107 value1 value100 = (output469, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input470 value107 value1 value100 = (output470, value107, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output469_skip]
  kernel_rfl

theorem node471_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value107 value1 value100 = (output465, value107, value1))
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value107 value1 value100 = (output470, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input471 value107 value1 value100 = (output471, value107, value1) := by
  rw [input471_def, output471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output470_skip]
  kernel_rfl

theorem node472_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value107 value1 value100 = (output464, value107, value1))
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value107 value1 value100 = (output471, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input472 value107 value1 value100 = (output472, value107, value1) := by
  rw [input472_def, output472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output471_skip]
  kernel_rfl

theorem node473_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value107 value1 value100 = (output463, value107, value1))
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value107 value1 value100 = (output472, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input473 value107 value1 value100 = (output473, value107, value1) := by
  rw [input473_def, output473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output472_skip]
  kernel_rfl

theorem node474_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value107 value1 value100 = (output462, value107, value1))
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value107 value1 value100 = (output473, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input474 value107 value1 value100 = (output474, value107, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output473_skip]
  kernel_rfl

theorem node475_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value107 value1 value100 = (output461, value107, value1))
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value107 value1 value100 = (output474, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input475 value107 value1 value100 = (output475, value107, value1) := by
  rw [input475_def, output475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output474_skip]
  kernel_rfl

theorem node476_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value107 value1 value100 = (output460, value107, value1))
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value107 value1 value100 = (output475, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input476 value107 value1 value100 = (output476, value107, value1) := by
  rw [input476_def, output476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output475_skip]
  kernel_rfl

theorem node477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input477 value107 value1 value100 = (output477, value108, value1) := by
  rw [input477_def, output477_def]
  kernel_rfl

theorem node478_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value107 value1 value100 = (output476, value107, value1))
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value107 value1 value100 = (output477, value108, value1)) : Flapjack.WordAlloc.removeDeadStructural input478 value107 value1 value100 = (output478, value108, value1) := by
  rw [input478_def, output478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output477_skip]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value108 value1 value100 = (output479, value108, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input480 value108 value1 value100 = (output480, value109, value1) := by
  rw [input480_def, output480_def]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value109 value1 value100 = (output481, value110, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value108 value1 value100 = (output480, value109, value1))
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value109 value1 value100 = (output481, value110, value1)) : Flapjack.WordAlloc.removeDeadStructural input482 value108 value1 value100 = (output482, value110, value1) := by
  rw [input482_def, output482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child480]
  try dsimp only
  rw [child481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output481_skip]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value110 value1 value100 = (output483, value111, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value108 value1 value100 = (output482, value110, value1))
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value110 value1 value100 = (output483, value111, value1)) : Flapjack.WordAlloc.removeDeadStructural input484 value108 value1 value100 = (output484, value111, value1) := by
  rw [input484_def, output484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output483_skip]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value111 value1 value100 = (output485, value112, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value112 value1 value100 = (output486, value112, value1) := by
  rw [input486_def, output486_def]
  kernel_rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value112 value1 value100 = (output487, value112, value1) := by
  rw [input487_def, output487_def]
  kernel_rfl

theorem node488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input488 value112 value1 value100 = (output488, value112, value1) := by
  rw [input488_def, output488_def]
  kernel_rfl

theorem node489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input489 value112 value1 value100 = (output489, value112, value1) := by
  rw [input489_def, output489_def]
  kernel_rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value112 value1 value100 = (output490, value113, value1) := by
  rw [input490_def, output490_def]
  kernel_rfl

theorem node491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input491 value113 value1 value100 = (output491, value114, value1) := by
  rw [input491_def, output491_def]
  kernel_rfl

theorem node492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input492 value114 value1 value100 = (output492, value114, value1) := by
  rw [input492_def, output492_def]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value114 value1 value100 = (output493, value115, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input494 value115 value1 value100 = (output494, value116, value1) := by
  rw [input494_def, output494_def]
  kernel_rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value116 value1 value100 = (output495, value116, value1) := by
  rw [input495_def, output495_def]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value116 value1 value100 = (output496, value117, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value117 value1 value100 = (output497, value118, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value116 value1 value100 = (output496, value117, value1))
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value117 value1 value100 = (output497, value118, value1)) : Flapjack.WordAlloc.removeDeadStructural input498 value116 value1 value100 = (output498, value118, value1) := by
  rw [input498_def, output498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output497_skip]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value118 value1 value100 = (output499, value119, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value116 value1 value100 = (output498, value118, value1))
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value118 value1 value100 = (output499, value119, value1)) : Flapjack.WordAlloc.removeDeadStructural input500 value116 value1 value100 = (output500, value119, value1) := by
  rw [input500_def, output500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output499_skip]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value119 value1 value100 = (output501, value120, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input502 value120 value1 value100 = (output502, value121, value1) := by
  rw [input502_def, output502_def]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value121 value1 value100 = (output503, value122, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value120 value1 value100 = (output502, value121, value1))
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value121 value1 value100 = (output503, value122, value1)) : Flapjack.WordAlloc.removeDeadStructural input504 value120 value1 value100 = (output504, value122, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output503_skip]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value122 value1 value100 = (output505, value123, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value123 value1 value100 = (output506, value124, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value124 value1 value100 = (output507, value125, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value123 value1 value100 = (output506, value124, value1))
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value124 value1 value100 = (output507, value125, value1)) : Flapjack.WordAlloc.removeDeadStructural input508 value123 value1 value100 = (output508, value125, value1) := by
  rw [input508_def, output508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output507_skip]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value125 value1 value100 = (output509, value126, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input510 value126 value1 value100 = (output510, value127, value1) := by
  rw [input510_def, output510_def]
  kernel_rfl

theorem node511_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value125 value1 value100 = (output509, value126, value1))
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value126 value1 value100 = (output510, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input511 value125 value1 value100 = (output511, value127, value1) := by
  rw [input511_def, output511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output510_skip]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages862.Parallel
