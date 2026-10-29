import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input256 value54 value1 value2 = (output256, value54, value1) := by
  rw [input256_def, output256_def]
  kernel_rfl

theorem node257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input257 value54 value1 value2 = (output257, value54, value1) := by
  rw [input257_def, output257_def]
  kernel_rfl

theorem node258_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value54 value1 value2 = (output256, value54, value1))
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value54 value1 value2 = (output257, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input258 value54 value1 value2 = (output258, value54, value1) := by
  rw [input258_def, output258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output257_skip]
  kernel_rfl

theorem node259_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value54 value1 value2 = (output255, value54, value1))
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value54 value1 value2 = (output258, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input259 value54 value1 value2 = (output259, value54, value1) := by
  rw [input259_def, output259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output258_skip]
  kernel_rfl

theorem node260_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value50 value1 value2 = (output254, value54, value1))
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value54 value1 value2 = (output259, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input260 value50 value1 value2 = (output260, value54, value1) := by
  rw [input260_def, output260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output259_skip]
  kernel_rfl

theorem node261_cond_eq
    (child249 : Flapjack.WordAlloc.removeDeadStructural input249 value50 value1 value2 = (output249, value50, value1))
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value50 value1 value2 = (output260, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input261 value50 value1 value2 = (output261, value54, value1) := by
  rw [input261_def, output261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child249]
  try dsimp only
  rw [child260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output249_skip, output260_skip]
  kernel_rfl

theorem node262_cond_eq
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value52 value1 value2 = (output248, value50, value1))
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value50 value1 value2 = (output261, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input262 value52 value1 value2 = (output262, value54, value1) := by
  rw [input262_def, output262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child248]
  try dsimp only
  rw [child261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output248_skip, output261_skip]
  kernel_rfl

theorem node263_cond_eq
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value50 value1 value2 = (output247, value52, value1))
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value52 value1 value2 = (output262, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input263 value50 value1 value2 = (output263, value54, value1) := by
  rw [input263_def, output263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child247]
  try dsimp only
  rw [child262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output247_skip, output262_skip]
  kernel_rfl

theorem node264_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value49 value1 value2 = (output244, value50, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value50 value1 value2 = (output263, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value49 value1 value2 = (output264, value54, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value49 value1 value2 = (output265, value49, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input266 value49 value1 value2 = (output266, value49, value1) := by
  rw [input266_def, output266_def]
  kernel_rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value49 value1 value2 = (output267, value49, value1) := by
  rw [input267_def, output267_def]
  kernel_rfl

theorem node268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input268 value49 value1 value2 = (output268, value55, value1) := by
  rw [input268_def, output268_def]
  kernel_rfl

theorem node269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input269 value55 value1 value2 = (output269, value55, value1) := by
  rw [input269_def, output269_def]
  kernel_rfl

theorem node270_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value49 value1 value2 = (output268, value55, value1))
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value55 value1 value2 = (output269, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input270 value49 value1 value2 = (output270, value55, value1) := by
  rw [input270_def, output270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output269_skip]
  kernel_rfl

theorem node271_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value49 value1 value2 = (output267, value49, value1))
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value49 value1 value2 = (output270, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input271 value49 value1 value2 = (output271, value55, value1) := by
  rw [input271_def, output271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output270_skip]
  kernel_rfl

theorem node272_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value49 value1 value2 = (output266, value49, value1))
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value49 value1 value2 = (output271, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input272 value49 value1 value2 = (output272, value55, value1) := by
  rw [input272_def, output272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output271_skip]
  kernel_rfl

theorem node273_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value49 value1 value2 = (output265, value49, value1))
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value49 value1 value2 = (output272, value55, value1)) : Flapjack.WordAlloc.removeDeadStructural input273 value49 value1 value2 = (output273, value55, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output272_skip]
  kernel_rfl

theorem node274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input274 value55 value1 value2 = (output274, value56, value1) := by
  rw [input274_def, output274_def]
  kernel_rfl

theorem node275_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value49 value1 value2 = (output273, value55, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value55 value1 value2 = (output274, value56, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value49 value1 value2 = (output275, value56, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input276 value56 value1 value2 = (output276, value56, value1) := by
  rw [input276_def, output276_def]
  kernel_rfl

theorem node277_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value49 value1 value2 = (output275, value56, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value56 value1 value2 = (output276, value56, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value49 value1 value2 = (output277, value56, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value49 value1 value2 = (output264, value54, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value49 value1 value2 = (output277, value56, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value49 value1 value2 = (output278, value58, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child264]
  try dsimp only
  rw [child277]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value49 value1 value2 = (output233, value49, value1))
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value49 value1 value2 = (output278, value58, value1)) : Flapjack.WordAlloc.removeDeadStructural input279 value49 value1 value2 = (output279, value58, value1) := by
  rw [input279_def, output279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child233]
  try dsimp only
  rw [child278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output233_skip, output278_skip]
  kernel_rfl

theorem node280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input280 value58 value1 value2 = (output280, value56, value1) := by
  rw [input280_def, output280_def]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value56 value1 value2 = (output281, value59, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value59 value1 value2 = (output282, value59, value1) := by
  rw [input282_def, output282_def]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value59 value1 value2 = (output283, value59, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value59 value1 value2 = (output284, value59, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value59 value1 value2 = (output285, value59, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value59 value1 value2 = (output284, value59, value1))
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value59 value1 value2 = (output285, value59, value1)) : Flapjack.WordAlloc.removeDeadStructural input286 value59 value1 value2 = (output286, value59, value1) := by
  rw [input286_def, output286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output285_skip]
  kernel_rfl

theorem node287_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value59 value1 value2 = (output283, value59, value1))
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value59 value1 value2 = (output286, value59, value1)) : Flapjack.WordAlloc.removeDeadStructural input287 value59 value1 value2 = (output287, value59, value1) := by
  rw [input287_def, output287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output286_skip]
  kernel_rfl

theorem node288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input288 value59 value1 value2 = (output288, value59, value1) := by
  rw [input288_def, output288_def]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value59 value1 value2 = (output289, value59, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input290 value59 value1 value2 = (output290, value59, value1) := by
  rw [input290_def, output290_def]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value59 value1 value2 = (output291, value54, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value54 value1 value2 = (output292, value54, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value59 value1 value2 = (output291, value54, value1))
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value54 value1 value2 = (output292, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input293 value59 value1 value2 = (output293, value54, value1) := by
  rw [input293_def, output293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output292_skip]
  kernel_rfl

theorem node294_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value59 value1 value2 = (output290, value59, value1))
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value59 value1 value2 = (output293, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input294 value59 value1 value2 = (output294, value54, value1) := by
  rw [input294_def, output294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output293_skip]
  kernel_rfl

theorem node295_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value59 value1 value2 = (output289, value59, value1))
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value59 value1 value2 = (output294, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input295 value59 value1 value2 = (output295, value54, value1) := by
  rw [input295_def, output295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output294_skip]
  kernel_rfl

theorem node296_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value59 value1 value2 = (output288, value59, value1))
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value59 value1 value2 = (output295, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input296 value59 value1 value2 = (output296, value54, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output295_skip]
  kernel_rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value54 value1 value2 = (output297, value60, value1) := by
  rw [input297_def, output297_def]
  kernel_rfl

theorem node298_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value59 value1 value2 = (output296, value54, value1))
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value54 value1 value2 = (output297, value60, value1)) : Flapjack.WordAlloc.removeDeadStructural input298 value59 value1 value2 = (output298, value60, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output297_skip]
  kernel_rfl

theorem node299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input299 value60 value1 value2 = (output299, value61, value1) := by
  rw [input299_def, output299_def]
  kernel_rfl

theorem node300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input300 value61 value1 value2 = (output300, value62, value1) := by
  rw [input300_def, output300_def]
  kernel_rfl

theorem node301_cond_eq
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value60 value1 value2 = (output299, value61, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value61 value1 value2 = (output300, value62, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value60 value1 value2 = (output301, value62, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child299]
  try dsimp only
  rw [child300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output299_skip, output300_skip]
  kernel_rfl

theorem node302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input302 value62 value1 value2 = (output302, value60, value1) := by
  rw [input302_def, output302_def]
  kernel_rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value60 value1 value2 = (output303, value60, value1) := by
  rw [input303_def, output303_def]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value60 value1 value2 = (output304, value63, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input305 value63 value1 value2 = (output305, value63, value1) := by
  rw [input305_def, output305_def]
  kernel_rfl

theorem node306_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value60 value1 value2 = (output304, value63, value1))
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value63 value1 value2 = (output305, value63, value1)) : Flapjack.WordAlloc.removeDeadStructural input306 value60 value1 value2 = (output306, value63, value1) := by
  rw [input306_def, output306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output305_skip]
  kernel_rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value63 value1 value2 = (output307, value64, value1) := by
  rw [input307_def, output307_def]
  kernel_rfl

theorem node308_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value60 value1 value2 = (output306, value63, value1))
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value63 value1 value2 = (output307, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input308 value60 value1 value2 = (output308, value64, value1) := by
  rw [input308_def, output308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output307_skip]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value64 value1 value2 = (output309, value64, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value64 value1 value2 = (output310, value64, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value64 value1 value2 = (output311, value64, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value64 value1 value2 = (output310, value64, value1))
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value64 value1 value2 = (output311, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input312 value64 value1 value2 = (output312, value64, value1) := by
  rw [input312_def, output312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output311_skip]
  kernel_rfl

theorem node313_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value64 value1 value2 = (output309, value64, value1))
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value64 value1 value2 = (output312, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input313 value64 value1 value2 = (output313, value64, value1) := by
  rw [input313_def, output313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output312_skip]
  kernel_rfl

theorem node314_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value60 value1 value2 = (output308, value64, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value64 value1 value2 = (output313, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value60 value1 value2 = (output314, value64, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value60 value1 value2 = (output303, value60, value1))
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value60 value1 value2 = (output314, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input315 value60 value1 value2 = (output315, value64, value1) := by
  rw [input315_def, output315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output314_skip]
  kernel_rfl

theorem node316_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value62 value1 value2 = (output302, value60, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value60 value1 value2 = (output315, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value62 value1 value2 = (output316, value64, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value60 value1 value2 = (output301, value62, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value62 value1 value2 = (output316, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value60 value1 value2 = (output317, value64, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output316_skip]
  kernel_rfl

theorem node318_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value59 value1 value2 = (output298, value60, value1))
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value60 value1 value2 = (output317, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input318 value59 value1 value2 = (output318, value64, value1) := by
  rw [input318_def, output318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  try dsimp only
  rw [child317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output298_skip, output317_skip]
  kernel_rfl

theorem node319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input319 value59 value1 value2 = (output319, value59, value1) := by
  rw [input319_def, output319_def]
  kernel_rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value59 value1 value2 = (output320, value59, value1) := by
  rw [input320_def, output320_def]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value59 value1 value2 = (output321, value59, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value59 value1 value2 = (output322, value65, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value65 value1 value2 = (output323, value65, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value59 value1 value2 = (output322, value65, value1))
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value65 value1 value2 = (output323, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input324 value59 value1 value2 = (output324, value65, value1) := by
  rw [input324_def, output324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output323_skip]
  kernel_rfl

theorem node325_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value59 value1 value2 = (output321, value59, value1))
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value59 value1 value2 = (output324, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input325 value59 value1 value2 = (output325, value65, value1) := by
  rw [input325_def, output325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output324_skip]
  kernel_rfl

theorem node326_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value59 value1 value2 = (output320, value59, value1))
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value59 value1 value2 = (output325, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input326 value59 value1 value2 = (output326, value65, value1) := by
  rw [input326_def, output326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output325_skip]
  kernel_rfl

theorem node327_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value59 value1 value2 = (output319, value59, value1))
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value59 value1 value2 = (output326, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input327 value59 value1 value2 = (output327, value65, value1) := by
  rw [input327_def, output327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output326_skip]
  kernel_rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value65 value1 value2 = (output328, value66, value1) := by
  rw [input328_def, output328_def]
  kernel_rfl

theorem node329_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value59 value1 value2 = (output327, value65, value1))
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value65 value1 value2 = (output328, value66, value1)) : Flapjack.WordAlloc.removeDeadStructural input329 value59 value1 value2 = (output329, value66, value1) := by
  rw [input329_def, output329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output328_skip]
  kernel_rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value66 value1 value2 = (output330, value66, value1) := by
  rw [input330_def, output330_def]
  kernel_rfl

theorem node331_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value59 value1 value2 = (output329, value66, value1))
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value66 value1 value2 = (output330, value66, value1)) : Flapjack.WordAlloc.removeDeadStructural input331 value59 value1 value2 = (output331, value66, value1) := by
  rw [input331_def, output331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output330_skip]
  kernel_rfl

theorem node332_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value59 value1 value2 = (output318, value64, value1))
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value59 value1 value2 = (output331, value66, value1)) : Flapjack.WordAlloc.removeDeadStructural input332 value59 value1 value2 = (output332, value68, value1) := by
  rw [input332_def, output332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child318]
  try dsimp only
  rw [child331]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output331_skip]
  kernel_rfl

theorem node333_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value59 value1 value2 = (output287, value59, value1))
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value59 value1 value2 = (output332, value68, value1)) : Flapjack.WordAlloc.removeDeadStructural input333 value59 value1 value2 = (output333, value68, value1) := by
  rw [input333_def, output333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output332_skip]
  kernel_rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value68 value1 value2 = (output334, value66, value1) := by
  rw [input334_def, output334_def]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value66 value1 value2 = (output335, value69, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value69 value1 value2 = (output336, value69, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input337 value69 value1 value2 = (output337, value69, value1) := by
  rw [input337_def, output337_def]
  kernel_rfl

theorem node338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input338 value69 value1 value2 = (output338, value69, value1) := by
  rw [input338_def, output338_def]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value69 value1 value2 = (output339, value69, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value69 value1 value2 = (output338, value69, value1))
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value69 value1 value2 = (output339, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input340 value69 value1 value2 = (output340, value69, value1) := by
  rw [input340_def, output340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output339_skip]
  kernel_rfl

theorem node341_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value69 value1 value2 = (output337, value69, value1))
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value69 value1 value2 = (output340, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input341 value69 value1 value2 = (output341, value69, value1) := by
  rw [input341_def, output341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output340_skip]
  kernel_rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value69 value1 value2 = (output342, value69, value1) := by
  rw [input342_def, output342_def]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value69 value1 value2 = (output343, value69, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input344 value69 value1 value2 = (output344, value69, value1) := by
  rw [input344_def, output344_def]
  kernel_rfl

theorem node345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input345 value69 value1 value2 = (output345, value64, value1) := by
  rw [input345_def, output345_def]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value64 value1 value2 = (output346, value64, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value69 value1 value2 = (output345, value64, value1))
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value64 value1 value2 = (output346, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input347 value69 value1 value2 = (output347, value64, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output346_skip]
  kernel_rfl

theorem node348_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value69 value1 value2 = (output344, value69, value1))
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value69 value1 value2 = (output347, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input348 value69 value1 value2 = (output348, value64, value1) := by
  rw [input348_def, output348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output347_skip]
  kernel_rfl

theorem node349_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value69 value1 value2 = (output343, value69, value1))
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value69 value1 value2 = (output348, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input349 value69 value1 value2 = (output349, value64, value1) := by
  rw [input349_def, output349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output348_skip]
  kernel_rfl

theorem node350_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value69 value1 value2 = (output342, value69, value1))
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value69 value1 value2 = (output349, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input350 value69 value1 value2 = (output350, value64, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output349_skip]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value64 value1 value2 = (output351, value70, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value69 value1 value2 = (output350, value64, value1))
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value64 value1 value2 = (output351, value70, value1)) : Flapjack.WordAlloc.removeDeadStructural input352 value69 value1 value2 = (output352, value70, value1) := by
  rw [input352_def, output352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output351_skip]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value70 value1 value2 = (output353, value71, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value71 value1 value2 = (output354, value72, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value70 value1 value2 = (output353, value71, value1))
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value71 value1 value2 = (output354, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input355 value70 value1 value2 = (output355, value72, value1) := by
  rw [input355_def, output355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output354_skip]
  kernel_rfl

theorem node356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input356 value72 value1 value2 = (output356, value70, value1) := by
  rw [input356_def, output356_def]
  kernel_rfl

theorem node357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input357 value70 value1 value2 = (output357, value70, value1) := by
  rw [input357_def, output357_def]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value70 value1 value2 = (output358, value73, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value73 value1 value2 = (output359, value73, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value70 value1 value2 = (output358, value73, value1))
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value73 value1 value2 = (output359, value73, value1)) : Flapjack.WordAlloc.removeDeadStructural input360 value70 value1 value2 = (output360, value73, value1) := by
  rw [input360_def, output360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output359_skip]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value73 value1 value2 = (output361, value74, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value70 value1 value2 = (output360, value73, value1))
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value73 value1 value2 = (output361, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input362 value70 value1 value2 = (output362, value74, value1) := by
  rw [input362_def, output362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output361_skip]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value74 value1 value2 = (output363, value74, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value74 value1 value2 = (output364, value74, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input365 value74 value1 value2 = (output365, value74, value1) := by
  rw [input365_def, output365_def]
  kernel_rfl

theorem node366_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value74 value1 value2 = (output364, value74, value1))
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value74 value1 value2 = (output365, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input366 value74 value1 value2 = (output366, value74, value1) := by
  rw [input366_def, output366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child364]
  try dsimp only
  rw [child365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output365_skip]
  kernel_rfl

theorem node367_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value74 value1 value2 = (output363, value74, value1))
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value74 value1 value2 = (output366, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input367 value74 value1 value2 = (output367, value74, value1) := by
  rw [input367_def, output367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output366_skip]
  kernel_rfl

theorem node368_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value70 value1 value2 = (output362, value74, value1))
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value74 value1 value2 = (output367, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input368 value70 value1 value2 = (output368, value74, value1) := by
  rw [input368_def, output368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output367_skip]
  kernel_rfl

theorem node369_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value70 value1 value2 = (output357, value70, value1))
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value70 value1 value2 = (output368, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input369 value70 value1 value2 = (output369, value74, value1) := by
  rw [input369_def, output369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output368_skip]
  kernel_rfl

theorem node370_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value72 value1 value2 = (output356, value70, value1))
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value70 value1 value2 = (output369, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input370 value72 value1 value2 = (output370, value74, value1) := by
  rw [input370_def, output370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output369_skip]
  kernel_rfl

theorem node371_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value70 value1 value2 = (output355, value72, value1))
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value72 value1 value2 = (output370, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input371 value70 value1 value2 = (output371, value74, value1) := by
  rw [input371_def, output371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output370_skip]
  kernel_rfl

theorem node372_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value69 value1 value2 = (output352, value70, value1))
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value70 value1 value2 = (output371, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input372 value69 value1 value2 = (output372, value74, value1) := by
  rw [input372_def, output372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output371_skip]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value69 value1 value2 = (output373, value69, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input374 value69 value1 value2 = (output374, value69, value1) := by
  rw [input374_def, output374_def]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value69 value1 value2 = (output375, value69, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value69 value1 value2 = (output376, value75, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value75 value1 value2 = (output377, value75, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value69 value1 value2 = (output376, value75, value1))
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value75 value1 value2 = (output377, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input378 value69 value1 value2 = (output378, value75, value1) := by
  rw [input378_def, output378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output377_skip]
  kernel_rfl

theorem node379_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value69 value1 value2 = (output375, value69, value1))
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value69 value1 value2 = (output378, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input379 value69 value1 value2 = (output379, value75, value1) := by
  rw [input379_def, output379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output378_skip]
  kernel_rfl

theorem node380_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value69 value1 value2 = (output374, value69, value1))
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value69 value1 value2 = (output379, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input380 value69 value1 value2 = (output380, value75, value1) := by
  rw [input380_def, output380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output379_skip]
  kernel_rfl

theorem node381_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value69 value1 value2 = (output373, value69, value1))
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value69 value1 value2 = (output380, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input381 value69 value1 value2 = (output381, value75, value1) := by
  rw [input381_def, output381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output380_skip]
  kernel_rfl

theorem node382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input382 value75 value1 value2 = (output382, value76, value1) := by
  rw [input382_def, output382_def]
  kernel_rfl

theorem node383_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value69 value1 value2 = (output381, value75, value1))
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value75 value1 value2 = (output382, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input383 value69 value1 value2 = (output383, value76, value1) := by
  rw [input383_def, output383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output382_skip]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value76 value1 value2 = (output384, value76, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value69 value1 value2 = (output383, value76, value1))
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value76 value1 value2 = (output384, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input385 value69 value1 value2 = (output385, value76, value1) := by
  rw [input385_def, output385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output384_skip]
  kernel_rfl

theorem node386_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value69 value1 value2 = (output372, value74, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value69 value1 value2 = (output385, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value69 value1 value2 = (output386, value78, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child372]
  try dsimp only
  rw [child385]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output385_skip]
  kernel_rfl

theorem node387_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value69 value1 value2 = (output341, value69, value1))
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value69 value1 value2 = (output386, value78, value1)) : Flapjack.WordAlloc.removeDeadStructural input387 value69 value1 value2 = (output387, value78, value1) := by
  rw [input387_def, output387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output386_skip]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value78 value1 value2 = (output388, value76, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input389 value76 value1 value2 = (output389, value79, value1) := by
  rw [input389_def, output389_def]
  kernel_rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value79 value1 value2 = (output390, value79, value1) := by
  rw [input390_def, output390_def]
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value79 value1 value2 = (output391, value79, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input392 value79 value1 value2 = (output392, value79, value1) := by
  rw [input392_def, output392_def]
  kernel_rfl

theorem node393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input393 value79 value1 value2 = (output393, value79, value1) := by
  rw [input393_def, output393_def]
  kernel_rfl

theorem node394_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value79 value1 value2 = (output392, value79, value1))
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value79 value1 value2 = (output393, value79, value1)) : Flapjack.WordAlloc.removeDeadStructural input394 value79 value1 value2 = (output394, value79, value1) := by
  rw [input394_def, output394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output393_skip]
  kernel_rfl

theorem node395_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value79 value1 value2 = (output391, value79, value1))
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value79 value1 value2 = (output394, value79, value1)) : Flapjack.WordAlloc.removeDeadStructural input395 value79 value1 value2 = (output395, value79, value1) := by
  rw [input395_def, output395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output394_skip]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value79 value1 value2 = (output396, value79, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value79 value1 value2 = (output397, value79, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input398 value79 value1 value2 = (output398, value79, value1) := by
  rw [input398_def, output398_def]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value79 value1 value2 = (output399, value74, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input400 value74 value1 value2 = (output400, value74, value1) := by
  rw [input400_def, output400_def]
  kernel_rfl

theorem node401_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value79 value1 value2 = (output399, value74, value1))
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value74 value1 value2 = (output400, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input401 value79 value1 value2 = (output401, value74, value1) := by
  rw [input401_def, output401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output400_skip]
  kernel_rfl

theorem node402_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value79 value1 value2 = (output398, value79, value1))
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value79 value1 value2 = (output401, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input402 value79 value1 value2 = (output402, value74, value1) := by
  rw [input402_def, output402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output401_skip]
  kernel_rfl

theorem node403_cond_eq
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value79 value1 value2 = (output397, value79, value1))
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value79 value1 value2 = (output402, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input403 value79 value1 value2 = (output403, value74, value1) := by
  rw [input403_def, output403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child397]
  try dsimp only
  rw [child402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output397_skip, output402_skip]
  kernel_rfl

theorem node404_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value79 value1 value2 = (output396, value79, value1))
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value79 value1 value2 = (output403, value74, value1)) : Flapjack.WordAlloc.removeDeadStructural input404 value79 value1 value2 = (output404, value74, value1) := by
  rw [input404_def, output404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output403_skip]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value74 value1 value2 = (output405, value80, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value79 value1 value2 = (output404, value74, value1))
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value74 value1 value2 = (output405, value80, value1)) : Flapjack.WordAlloc.removeDeadStructural input406 value79 value1 value2 = (output406, value80, value1) := by
  rw [input406_def, output406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output405_skip]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value80 value1 value2 = (output407, value81, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value81 value1 value2 = (output408, value82, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value80 value1 value2 = (output407, value81, value1))
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value81 value1 value2 = (output408, value82, value1)) : Flapjack.WordAlloc.removeDeadStructural input409 value80 value1 value2 = (output409, value82, value1) := by
  rw [input409_def, output409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output408_skip]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value82 value1 value2 = (output410, value80, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value80 value1 value2 = (output411, value80, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input412 value80 value1 value2 = (output412, value83, value1) := by
  rw [input412_def, output412_def]
  kernel_rfl

theorem node413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input413 value83 value1 value2 = (output413, value83, value1) := by
  rw [input413_def, output413_def]
  kernel_rfl

theorem node414_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value80 value1 value2 = (output412, value83, value1))
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value83 value1 value2 = (output413, value83, value1)) : Flapjack.WordAlloc.removeDeadStructural input414 value80 value1 value2 = (output414, value83, value1) := by
  rw [input414_def, output414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output413_skip]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value83 value1 value2 = (output415, value84, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value80 value1 value2 = (output414, value83, value1))
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value83 value1 value2 = (output415, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input416 value80 value1 value2 = (output416, value84, value1) := by
  rw [input416_def, output416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output415_skip]
  kernel_rfl

theorem node417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input417 value84 value1 value2 = (output417, value84, value1) := by
  rw [input417_def, output417_def]
  kernel_rfl

theorem node418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input418 value84 value1 value2 = (output418, value84, value1) := by
  rw [input418_def, output418_def]
  kernel_rfl

theorem node419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input419 value84 value1 value2 = (output419, value84, value1) := by
  rw [input419_def, output419_def]
  kernel_rfl

theorem node420_cond_eq
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value84 value1 value2 = (output418, value84, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value84 value1 value2 = (output419, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value84 value1 value2 = (output420, value84, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child418]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output418_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value84 value1 value2 = (output417, value84, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value84 value1 value2 = (output420, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value84 value1 value2 = (output421, value84, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child417]
  try dsimp only
  rw [child420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output417_skip, output420_skip]
  kernel_rfl

theorem node422_cond_eq
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value80 value1 value2 = (output416, value84, value1))
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value84 value1 value2 = (output421, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input422 value80 value1 value2 = (output422, value84, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child416]
  try dsimp only
  rw [child421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output416_skip, output421_skip]
  kernel_rfl

theorem node423_cond_eq
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value80 value1 value2 = (output411, value80, value1))
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value80 value1 value2 = (output422, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input423 value80 value1 value2 = (output423, value84, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child411]
  try dsimp only
  rw [child422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output411_skip, output422_skip]
  kernel_rfl

theorem node424_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value82 value1 value2 = (output410, value80, value1))
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value80 value1 value2 = (output423, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input424 value82 value1 value2 = (output424, value84, value1) := by
  rw [input424_def, output424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output423_skip]
  kernel_rfl

theorem node425_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value80 value1 value2 = (output409, value82, value1))
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value82 value1 value2 = (output424, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input425 value80 value1 value2 = (output425, value84, value1) := by
  rw [input425_def, output425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output424_skip]
  kernel_rfl

theorem node426_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value79 value1 value2 = (output406, value80, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value80 value1 value2 = (output425, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value79 value1 value2 = (output426, value84, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value79 value1 value2 = (output427, value79, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value79 value1 value2 = (output428, value79, value1) := by
  rw [input428_def, output428_def]
  kernel_rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value79 value1 value2 = (output429, value79, value1) := by
  rw [input429_def, output429_def]
  kernel_rfl

theorem node430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input430 value79 value1 value2 = (output430, value85, value1) := by
  rw [input430_def, output430_def]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value85 value1 value2 = (output431, value85, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value79 value1 value2 = (output430, value85, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value85 value1 value2 = (output431, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value79 value1 value2 = (output432, value85, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output431_skip]
  kernel_rfl

theorem node433_cond_eq
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value79 value1 value2 = (output429, value79, value1))
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value79 value1 value2 = (output432, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input433 value79 value1 value2 = (output433, value85, value1) := by
  rw [input433_def, output433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child429]
  try dsimp only
  rw [child432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output429_skip, output432_skip]
  kernel_rfl

theorem node434_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value79 value1 value2 = (output428, value79, value1))
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value79 value1 value2 = (output433, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input434 value79 value1 value2 = (output434, value85, value1) := by
  rw [input434_def, output434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output433_skip]
  kernel_rfl

theorem node435_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value79 value1 value2 = (output427, value79, value1))
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value79 value1 value2 = (output434, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input435 value79 value1 value2 = (output435, value85, value1) := by
  rw [input435_def, output435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output434_skip]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value85 value1 value2 = (output436, value86, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value79 value1 value2 = (output435, value85, value1))
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value85 value1 value2 = (output436, value86, value1)) : Flapjack.WordAlloc.removeDeadStructural input437 value79 value1 value2 = (output437, value86, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output436_skip]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value86 value1 value2 = (output438, value86, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value79 value1 value2 = (output437, value86, value1))
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value86 value1 value2 = (output438, value86, value1)) : Flapjack.WordAlloc.removeDeadStructural input439 value79 value1 value2 = (output439, value86, value1) := by
  rw [input439_def, output439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output438_skip]
  kernel_rfl

theorem node440_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value79 value1 value2 = (output426, value84, value1))
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value79 value1 value2 = (output439, value86, value1)) : Flapjack.WordAlloc.removeDeadStructural input440 value79 value1 value2 = (output440, value88, value1) := by
  rw [input440_def, output440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child426]
  try dsimp only
  rw [child439]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output439_skip]
  kernel_rfl

theorem node441_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value79 value1 value2 = (output395, value79, value1))
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value79 value1 value2 = (output440, value88, value1)) : Flapjack.WordAlloc.removeDeadStructural input441 value79 value1 value2 = (output441, value88, value1) := by
  rw [input441_def, output441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output440_skip]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value88 value1 value2 = (output442, value86, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value86 value1 value2 = (output443, value89, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input444 value89 value1 value2 = (output444, value89, value1) := by
  rw [input444_def, output444_def]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value89 value1 value2 = (output445, value89, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input446 value89 value1 value2 = (output446, value89, value1) := by
  rw [input446_def, output446_def]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value89 value1 value2 = (output447, value89, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value89 value1 value2 = (output446, value89, value1))
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value89 value1 value2 = (output447, value89, value1)) : Flapjack.WordAlloc.removeDeadStructural input448 value89 value1 value2 = (output448, value89, value1) := by
  rw [input448_def, output448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output447_skip]
  kernel_rfl

theorem node449_cond_eq
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value89 value1 value2 = (output445, value89, value1))
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value89 value1 value2 = (output448, value89, value1)) : Flapjack.WordAlloc.removeDeadStructural input449 value89 value1 value2 = (output449, value89, value1) := by
  rw [input449_def, output449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child445]
  try dsimp only
  rw [child448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output445_skip, output448_skip]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value89 value1 value2 = (output450, value89, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value89 value1 value2 = (output451, value89, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value89 value1 value2 = (output452, value89, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value89 value1 value2 = (output453, value84, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value84 value1 value2 = (output454, value84, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value89 value1 value2 = (output453, value84, value1))
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value84 value1 value2 = (output454, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input455 value89 value1 value2 = (output455, value84, value1) := by
  rw [input455_def, output455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output454_skip]
  kernel_rfl

theorem node456_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value89 value1 value2 = (output452, value89, value1))
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value89 value1 value2 = (output455, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input456 value89 value1 value2 = (output456, value84, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output455_skip]
  kernel_rfl

theorem node457_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value89 value1 value2 = (output451, value89, value1))
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value89 value1 value2 = (output456, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input457 value89 value1 value2 = (output457, value84, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output456_skip]
  kernel_rfl

theorem node458_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value89 value1 value2 = (output450, value89, value1))
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value89 value1 value2 = (output457, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input458 value89 value1 value2 = (output458, value84, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output457_skip]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value84 value1 value2 = (output459, value90, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value89 value1 value2 = (output458, value84, value1))
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value84 value1 value2 = (output459, value90, value1)) : Flapjack.WordAlloc.removeDeadStructural input460 value89 value1 value2 = (output460, value90, value1) := by
  rw [input460_def, output460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output459_skip]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value90 value1 value2 = (output461, value91, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value91 value1 value2 = (output462, value92, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value90 value1 value2 = (output461, value91, value1))
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value91 value1 value2 = (output462, value92, value1)) : Flapjack.WordAlloc.removeDeadStructural input463 value90 value1 value2 = (output463, value92, value1) := by
  rw [input463_def, output463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output462_skip]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value92 value1 value2 = (output464, value90, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value90 value1 value2 = (output465, value90, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input466 value90 value1 value2 = (output466, value93, value1) := by
  rw [input466_def, output466_def]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value93 value1 value2 = (output467, value93, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value90 value1 value2 = (output466, value93, value1))
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value93 value1 value2 = (output467, value93, value1)) : Flapjack.WordAlloc.removeDeadStructural input468 value90 value1 value2 = (output468, value93, value1) := by
  rw [input468_def, output468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output467_skip]
  kernel_rfl

theorem node469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input469 value93 value1 value2 = (output469, value94, value1) := by
  rw [input469_def, output469_def]
  kernel_rfl

theorem node470_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value90 value1 value2 = (output468, value93, value1))
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value93 value1 value2 = (output469, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input470 value90 value1 value2 = (output470, value94, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output469_skip]
  kernel_rfl

theorem node471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input471 value94 value1 value2 = (output471, value94, value1) := by
  rw [input471_def, output471_def]
  kernel_rfl

theorem node472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input472 value94 value1 value2 = (output472, value94, value1) := by
  rw [input472_def, output472_def]
  kernel_rfl

theorem node473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input473 value94 value1 value2 = (output473, value94, value1) := by
  rw [input473_def, output473_def]
  kernel_rfl

theorem node474_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value94 value1 value2 = (output472, value94, value1))
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value94 value1 value2 = (output473, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input474 value94 value1 value2 = (output474, value94, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output473_skip]
  kernel_rfl

theorem node475_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value94 value1 value2 = (output471, value94, value1))
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value94 value1 value2 = (output474, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input475 value94 value1 value2 = (output475, value94, value1) := by
  rw [input475_def, output475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output474_skip]
  kernel_rfl

theorem node476_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value90 value1 value2 = (output470, value94, value1))
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value94 value1 value2 = (output475, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input476 value90 value1 value2 = (output476, value94, value1) := by
  rw [input476_def, output476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output475_skip]
  kernel_rfl

theorem node477_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value90 value1 value2 = (output465, value90, value1))
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value90 value1 value2 = (output476, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input477 value90 value1 value2 = (output477, value94, value1) := by
  rw [input477_def, output477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output476_skip]
  kernel_rfl

theorem node478_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value92 value1 value2 = (output464, value90, value1))
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value90 value1 value2 = (output477, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input478 value92 value1 value2 = (output478, value94, value1) := by
  rw [input478_def, output478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output477_skip]
  kernel_rfl

theorem node479_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value90 value1 value2 = (output463, value92, value1))
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value92 value1 value2 = (output478, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input479 value90 value1 value2 = (output479, value94, value1) := by
  rw [input479_def, output479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output478_skip]
  kernel_rfl

theorem node480_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value89 value1 value2 = (output460, value90, value1))
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value90 value1 value2 = (output479, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input480 value89 value1 value2 = (output480, value94, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output479_skip]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value89 value1 value2 = (output481, value89, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input482 value89 value1 value2 = (output482, value89, value1) := by
  rw [input482_def, output482_def]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value89 value1 value2 = (output483, value89, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value89 value1 value2 = (output484, value95, value1) := by
  rw [input484_def, output484_def]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value95 value1 value2 = (output485, value95, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value89 value1 value2 = (output484, value95, value1))
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value95 value1 value2 = (output485, value95, value1)) : Flapjack.WordAlloc.removeDeadStructural input486 value89 value1 value2 = (output486, value95, value1) := by
  rw [input486_def, output486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output485_skip]
  kernel_rfl

theorem node487_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value89 value1 value2 = (output483, value89, value1))
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value89 value1 value2 = (output486, value95, value1)) : Flapjack.WordAlloc.removeDeadStructural input487 value89 value1 value2 = (output487, value95, value1) := by
  rw [input487_def, output487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output486_skip]
  kernel_rfl

theorem node488_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value89 value1 value2 = (output482, value89, value1))
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value89 value1 value2 = (output487, value95, value1)) : Flapjack.WordAlloc.removeDeadStructural input488 value89 value1 value2 = (output488, value95, value1) := by
  rw [input488_def, output488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output487_skip]
  kernel_rfl

theorem node489_cond_eq
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value89 value1 value2 = (output481, value89, value1))
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value89 value1 value2 = (output488, value95, value1)) : Flapjack.WordAlloc.removeDeadStructural input489 value89 value1 value2 = (output489, value95, value1) := by
  rw [input489_def, output489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child481]
  try dsimp only
  rw [child488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output481_skip, output488_skip]
  kernel_rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value95 value1 value2 = (output490, value96, value1) := by
  rw [input490_def, output490_def]
  kernel_rfl

theorem node491_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value89 value1 value2 = (output489, value95, value1))
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value95 value1 value2 = (output490, value96, value1)) : Flapjack.WordAlloc.removeDeadStructural input491 value89 value1 value2 = (output491, value96, value1) := by
  rw [input491_def, output491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output490_skip]
  kernel_rfl

theorem node492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input492 value96 value1 value2 = (output492, value96, value1) := by
  rw [input492_def, output492_def]
  kernel_rfl

theorem node493_cond_eq
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value89 value1 value2 = (output491, value96, value1))
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value96 value1 value2 = (output492, value96, value1)) : Flapjack.WordAlloc.removeDeadStructural input493 value89 value1 value2 = (output493, value96, value1) := by
  rw [input493_def, output493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child491]
  try dsimp only
  rw [child492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output491_skip, output492_skip]
  kernel_rfl

theorem node494_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value89 value1 value2 = (output480, value94, value1))
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value89 value1 value2 = (output493, value96, value1)) : Flapjack.WordAlloc.removeDeadStructural input494 value89 value1 value2 = (output494, value98, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child480]
  try dsimp only
  rw [child493]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output493_skip]
  kernel_rfl

theorem node495_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value89 value1 value2 = (output449, value89, value1))
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value89 value1 value2 = (output494, value98, value1)) : Flapjack.WordAlloc.removeDeadStructural input495 value89 value1 value2 = (output495, value98, value1) := by
  rw [input495_def, output495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output494_skip]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value98 value1 value2 = (output496, value96, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value96 value1 value2 = (output497, value99, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input498 value99 value1 value2 = (output498, value99, value1) := by
  rw [input498_def, output498_def]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value99 value1 value2 = (output499, value99, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input500 value99 value1 value2 = (output500, value99, value1) := by
  rw [input500_def, output500_def]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value99 value1 value2 = (output501, value99, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value99 value1 value2 = (output500, value99, value1))
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value99 value1 value2 = (output501, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input502 value99 value1 value2 = (output502, value99, value1) := by
  rw [input502_def, output502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output501_skip]
  kernel_rfl

theorem node503_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value99 value1 value2 = (output499, value99, value1))
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value99 value1 value2 = (output502, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input503 value99 value1 value2 = (output503, value99, value1) := by
  rw [input503_def, output503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  try dsimp only
  rw [child502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output499_skip, output502_skip]
  kernel_rfl

theorem node504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input504 value99 value1 value2 = (output504, value99, value1) := by
  rw [input504_def, output504_def]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value99 value1 value2 = (output505, value99, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value99 value1 value2 = (output506, value99, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value99 value1 value2 = (output507, value94, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value94 value1 value2 = (output508, value94, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value99 value1 value2 = (output507, value94, value1))
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value94 value1 value2 = (output508, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input509 value99 value1 value2 = (output509, value94, value1) := by
  rw [input509_def, output509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output508_skip]
  kernel_rfl

theorem node510_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value99 value1 value2 = (output506, value99, value1))
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value99 value1 value2 = (output509, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input510 value99 value1 value2 = (output510, value94, value1) := by
  rw [input510_def, output510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output509_skip]
  kernel_rfl

theorem node511_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value99 value1 value2 = (output505, value99, value1))
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value99 value1 value2 = (output510, value94, value1)) : Flapjack.WordAlloc.removeDeadStructural input511 value99 value1 value2 = (output511, value94, value1) := by
  rw [input511_def, output511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output510_skip]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
