import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages652.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages652.Parallel
theorem node256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input256 value201 value1 value2 = (output256, value202, value1) := by
  rw [input256_def, output256_def]
  kernel_rfl

theorem node257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input257 value202 value1 value2 = (output257, value203, value1) := by
  rw [input257_def, output257_def]
  kernel_rfl

theorem node258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input258 value203 value1 value2 = (output258, value204, value1) := by
  rw [input258_def, output258_def]
  kernel_rfl

theorem node259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input259 value204 value1 value2 = (output259, value204, value1) := by
  rw [input259_def, output259_def]
  kernel_rfl

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value204 value1 value2 = (output260, value204, value1) := by
  rw [input260_def, output260_def]
  kernel_rfl

theorem node261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input261 value204 value1 value2 = (output261, value204, value1) := by
  rw [input261_def, output261_def]
  kernel_rfl

theorem node262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input262 value204 value1 value2 = (output262, value204, value1) := by
  rw [input262_def, output262_def]
  kernel_rfl

theorem node263_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value204 value1 value2 = (output261, value204, value1))
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value204 value1 value2 = (output262, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input263 value204 value1 value2 = (output263, value204, value1) := by
  rw [input263_def, output263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output262_skip]
  kernel_rfl

theorem node264_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value204 value1 value2 = (output260, value204, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value204 value1 value2 = (output263, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value204 value1 value2 = (output264, value204, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value204 value1 value2 = (output265, value205, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input266 value205 value1 value2 = (output266, value206, value1) := by
  rw [input266_def, output266_def]
  kernel_rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value206 value1 value2 = (output267, value206, value1) := by
  rw [input267_def, output267_def]
  kernel_rfl

theorem node268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input268 value206 value1 value2 = (output268, value207, value1) := by
  rw [input268_def, output268_def]
  kernel_rfl

theorem node269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input269 value207 value1 value2 = (output269, value208, value1) := by
  rw [input269_def, output269_def]
  kernel_rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value208 value1 value2 = (output270, value208, value1) := by
  rw [input270_def, output270_def]
  kernel_rfl

theorem node271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input271 value208 value1 value2 = (output271, value209, value1) := by
  rw [input271_def, output271_def]
  kernel_rfl

theorem node272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input272 value209 value1 value2 = (output272, value210, value1) := by
  rw [input272_def, output272_def]
  kernel_rfl

theorem node273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input273 value210 value1 value2 = (output273, value211, value1) := by
  rw [input273_def, output273_def]
  kernel_rfl

theorem node274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input274 value211 value1 value2 = (output274, value212, value1) := by
  rw [input274_def, output274_def]
  kernel_rfl

theorem node275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input275 value212 value1 value2 = (output275, value213, value1) := by
  rw [input275_def, output275_def]
  kernel_rfl

theorem node276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input276 value213 value1 value2 = (output276, value214, value1) := by
  rw [input276_def, output276_def]
  kernel_rfl

theorem node277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input277 value214 value1 value2 = (output277, value215, value1) := by
  rw [input277_def, output277_def]
  kernel_rfl

theorem node278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input278 value215 value1 value2 = (output278, value216, value1) := by
  rw [input278_def, output278_def]
  kernel_rfl

theorem node279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input279 value216 value1 value2 = (output279, value217, value1) := by
  rw [input279_def, output279_def]
  kernel_rfl

theorem node280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input280 value217 value1 value2 = (output280, value217, value1) := by
  rw [input280_def, output280_def]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value217 value1 value2 = (output281, value218, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value218 value1 value2 = (output282, value218, value1) := by
  rw [input282_def, output282_def]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value218 value1 value2 = (output283, value219, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value219 value1 value2 = (output284, value220, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value220 value1 value2 = (output285, value221, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value221 value1 value2 = (output286, value221, value1) := by
  rw [input286_def, output286_def]
  kernel_rfl

theorem node287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input287 value221 value1 value2 = (output287, value222, value1) := by
  rw [input287_def, output287_def]
  kernel_rfl

theorem node288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input288 value222 value1 value2 = (output288, value222, value1) := by
  rw [input288_def, output288_def]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value222 value1 value2 = (output289, value223, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input290 value223 value1 value2 = (output290, value224, value1) := by
  rw [input290_def, output290_def]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value224 value1 value2 = (output291, value225, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value225 value1 value2 = (output292, value225, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value224 value1 value2 = (output291, value225, value1))
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value225 value1 value2 = (output292, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input293 value224 value1 value2 = (output293, value225, value1) := by
  rw [input293_def, output293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output292_skip]
  kernel_rfl

theorem node294_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value223 value1 value2 = (output290, value224, value1))
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value224 value1 value2 = (output293, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input294 value223 value1 value2 = (output294, value225, value1) := by
  rw [input294_def, output294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output293_skip]
  kernel_rfl

theorem node295_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value222 value1 value2 = (output289, value223, value1))
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value223 value1 value2 = (output294, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input295 value222 value1 value2 = (output295, value225, value1) := by
  rw [input295_def, output295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output294_skip]
  kernel_rfl

theorem node296_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value222 value1 value2 = (output288, value222, value1))
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value222 value1 value2 = (output295, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input296 value222 value1 value2 = (output296, value225, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output295_skip]
  kernel_rfl

theorem node297_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value221 value1 value2 = (output287, value222, value1))
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value222 value1 value2 = (output296, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input297 value221 value1 value2 = (output297, value225, value1) := by
  rw [input297_def, output297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output296_skip]
  kernel_rfl

theorem node298_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value221 value1 value2 = (output286, value221, value1))
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value221 value1 value2 = (output297, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input298 value221 value1 value2 = (output298, value225, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output297_skip]
  kernel_rfl

theorem node299_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value220 value1 value2 = (output285, value221, value1))
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value221 value1 value2 = (output298, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input299 value220 value1 value2 = (output299, value225, value1) := by
  rw [input299_def, output299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output298_skip]
  kernel_rfl

theorem node300_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value219 value1 value2 = (output284, value220, value1))
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value220 value1 value2 = (output299, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input300 value219 value1 value2 = (output300, value225, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output299_skip]
  kernel_rfl

theorem node301_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value218 value1 value2 = (output283, value219, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value219 value1 value2 = (output300, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value218 value1 value2 = (output301, value225, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output300_skip]
  kernel_rfl

theorem node302_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value218 value1 value2 = (output282, value218, value1))
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value218 value1 value2 = (output301, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input302 value218 value1 value2 = (output302, value225, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output301_skip]
  kernel_rfl

theorem node303_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value217 value1 value2 = (output281, value218, value1))
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value218 value1 value2 = (output302, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input303 value217 value1 value2 = (output303, value225, value1) := by
  rw [input303_def, output303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output302_skip]
  kernel_rfl

theorem node304_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value217 value1 value2 = (output280, value217, value1))
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value217 value1 value2 = (output303, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input304 value217 value1 value2 = (output304, value225, value1) := by
  rw [input304_def, output304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output303_skip]
  kernel_rfl

theorem node305_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value216 value1 value2 = (output279, value217, value1))
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value217 value1 value2 = (output304, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input305 value216 value1 value2 = (output305, value225, value1) := by
  rw [input305_def, output305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output304_skip]
  kernel_rfl

theorem node306_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value215 value1 value2 = (output278, value216, value1))
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value216 value1 value2 = (output305, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input306 value215 value1 value2 = (output306, value225, value1) := by
  rw [input306_def, output306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output305_skip]
  kernel_rfl

theorem node307_cond_eq
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value214 value1 value2 = (output277, value215, value1))
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value215 value1 value2 = (output306, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input307 value214 value1 value2 = (output307, value225, value1) := by
  rw [input307_def, output307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child277]
  try dsimp only
  rw [child306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output277_skip, output306_skip]
  kernel_rfl

theorem node308_cond_eq
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value213 value1 value2 = (output276, value214, value1))
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value214 value1 value2 = (output307, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input308 value213 value1 value2 = (output308, value225, value1) := by
  rw [input308_def, output308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child276]
  try dsimp only
  rw [child307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output276_skip, output307_skip]
  kernel_rfl

theorem node309_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value212 value1 value2 = (output275, value213, value1))
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value213 value1 value2 = (output308, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input309 value212 value1 value2 = (output309, value225, value1) := by
  rw [input309_def, output309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output308_skip]
  kernel_rfl

theorem node310_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value211 value1 value2 = (output274, value212, value1))
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value212 value1 value2 = (output309, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input310 value211 value1 value2 = (output310, value225, value1) := by
  rw [input310_def, output310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output309_skip]
  kernel_rfl

theorem node311_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value210 value1 value2 = (output273, value211, value1))
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value211 value1 value2 = (output310, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input311 value210 value1 value2 = (output311, value225, value1) := by
  rw [input311_def, output311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output310_skip]
  kernel_rfl

theorem node312_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value209 value1 value2 = (output272, value210, value1))
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value210 value1 value2 = (output311, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input312 value209 value1 value2 = (output312, value225, value1) := by
  rw [input312_def, output312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output311_skip]
  kernel_rfl

theorem node313_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value208 value1 value2 = (output271, value209, value1))
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value209 value1 value2 = (output312, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input313 value208 value1 value2 = (output313, value225, value1) := by
  rw [input313_def, output313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output312_skip]
  kernel_rfl

theorem node314_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value208 value1 value2 = (output270, value208, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value208 value1 value2 = (output313, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value208 value1 value2 = (output314, value225, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value207 value1 value2 = (output269, value208, value1))
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value208 value1 value2 = (output314, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input315 value207 value1 value2 = (output315, value225, value1) := by
  rw [input315_def, output315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output314_skip]
  kernel_rfl

theorem node316_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value206 value1 value2 = (output268, value207, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value207 value1 value2 = (output315, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value206 value1 value2 = (output316, value225, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value206 value1 value2 = (output267, value206, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value206 value1 value2 = (output316, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value206 value1 value2 = (output317, value225, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output316_skip]
  kernel_rfl

theorem node318_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value205 value1 value2 = (output266, value206, value1))
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value206 value1 value2 = (output317, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input318 value205 value1 value2 = (output318, value225, value1) := by
  rw [input318_def, output318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output317_skip]
  kernel_rfl

theorem node319_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value204 value1 value2 = (output265, value205, value1))
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value205 value1 value2 = (output318, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input319 value204 value1 value2 = (output319, value225, value1) := by
  rw [input319_def, output319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output318_skip]
  kernel_rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value225 value1 value2 = (output320, value226, value1) := by
  rw [input320_def, output320_def]
  kernel_rfl

theorem node321_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value204 value1 value2 = (output319, value225, value1))
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value225 value1 value2 = (output320, value226, value1)) : Flapjack.WordAlloc.removeDeadStructural input321 value204 value1 value2 = (output321, value226, value1) := by
  rw [input321_def, output321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output320_skip]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value226 value1 value2 = (output322, value227, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value227 value1 value2 = (output323, value228, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value226 value1 value2 = (output322, value227, value1))
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value227 value1 value2 = (output323, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input324 value226 value1 value2 = (output324, value228, value1) := by
  rw [input324_def, output324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output323_skip]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value228 value1 value2 = (output325, value226, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value226 value1 value2 = (output326, value226, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input327 value226 value1 value2 = (output327, value229, value1) := by
  rw [input327_def, output327_def]
  kernel_rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value229 value1 value2 = (output328, value230, value1) := by
  rw [input328_def, output328_def]
  kernel_rfl

theorem node329_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value226 value1 value2 = (output327, value229, value1))
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value229 value1 value2 = (output328, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input329 value226 value1 value2 = (output329, value230, value1) := by
  rw [input329_def, output329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output328_skip]
  kernel_rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value230 value1 value2 = (output330, value231, value1) := by
  rw [input330_def, output330_def]
  kernel_rfl

theorem node331_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value226 value1 value2 = (output329, value230, value1))
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value230 value1 value2 = (output330, value231, value1)) : Flapjack.WordAlloc.removeDeadStructural input331 value226 value1 value2 = (output331, value231, value1) := by
  rw [input331_def, output331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output330_skip]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value231 value1 value2 = (output332, value232, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value232 value1 value2 = (output333, value232, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value232 value1 value2 = (output334, value232, value1) := by
  rw [input334_def, output334_def]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value232 value1 value2 = (output335, value232, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value232 value1 value2 = (output336, value232, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value232 value1 value2 = (output335, value232, value1))
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value232 value1 value2 = (output336, value232, value1)) : Flapjack.WordAlloc.removeDeadStructural input337 value232 value1 value2 = (output337, value232, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output336_skip]
  kernel_rfl

theorem node338_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value232 value1 value2 = (output334, value232, value1))
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value232 value1 value2 = (output337, value232, value1)) : Flapjack.WordAlloc.removeDeadStructural input338 value232 value1 value2 = (output338, value232, value1) := by
  rw [input338_def, output338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output337_skip]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value232 value1 value2 = (output339, value232, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value232 value1 value2 = (output340, value232, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value232 value1 value2 = (output341, value233, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value233 value1 value2 = (output342, value233, value1) := by
  rw [input342_def, output342_def]
  kernel_rfl

theorem node343_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value232 value1 value2 = (output341, value233, value1))
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value233 value1 value2 = (output342, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input343 value232 value1 value2 = (output343, value233, value1) := by
  rw [input343_def, output343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output342_skip]
  kernel_rfl

theorem node344_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value232 value1 value2 = (output340, value232, value1))
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value232 value1 value2 = (output343, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input344 value232 value1 value2 = (output344, value233, value1) := by
  rw [input344_def, output344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output343_skip]
  kernel_rfl

theorem node345_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value232 value1 value2 = (output339, value232, value1))
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value232 value1 value2 = (output344, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input345 value232 value1 value2 = (output345, value233, value1) := by
  rw [input345_def, output345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output344_skip]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value233 value1 value2 = (output346, value234, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value232 value1 value2 = (output345, value233, value1))
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value233 value1 value2 = (output346, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input347 value232 value1 value2 = (output347, value234, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output346_skip]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value234 value1 value2 = (output348, value235, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value235 value1 value2 = (output349, value236, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value234 value1 value2 = (output348, value235, value1))
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value235 value1 value2 = (output349, value236, value1)) : Flapjack.WordAlloc.removeDeadStructural input350 value234 value1 value2 = (output350, value236, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output349_skip]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value236 value1 value2 = (output351, value234, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input352 value234 value1 value2 = (output352, value234, value1) := by
  rw [input352_def, output352_def]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value234 value1 value2 = (output353, value237, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value237 value1 value2 = (output354, value238, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value234 value1 value2 = (output353, value237, value1))
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value237 value1 value2 = (output354, value238, value1)) : Flapjack.WordAlloc.removeDeadStructural input355 value234 value1 value2 = (output355, value238, value1) := by
  rw [input355_def, output355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output354_skip]
  kernel_rfl

theorem node356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input356 value238 value1 value2 = (output356, value239, value1) := by
  rw [input356_def, output356_def]
  kernel_rfl

theorem node357_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value234 value1 value2 = (output355, value238, value1))
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value238 value1 value2 = (output356, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input357 value234 value1 value2 = (output357, value239, value1) := by
  rw [input357_def, output357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output356_skip]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value239 value1 value2 = (output358, value240, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value240 value1 value2 = (output359, value240, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value240 value1 value2 = (output360, value240, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value240 value1 value2 = (output361, value240, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value240 value1 value2 = (output360, value240, value1))
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value240 value1 value2 = (output361, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input362 value240 value1 value2 = (output362, value240, value1) := by
  rw [input362_def, output362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output361_skip]
  kernel_rfl

theorem node363_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value240 value1 value2 = (output359, value240, value1))
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value240 value1 value2 = (output362, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input363 value240 value1 value2 = (output363, value240, value1) := by
  rw [input363_def, output363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output362_skip]
  kernel_rfl

theorem node364_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value239 value1 value2 = (output358, value240, value1))
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value240 value1 value2 = (output363, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input364 value239 value1 value2 = (output364, value240, value1) := by
  rw [input364_def, output364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output363_skip]
  kernel_rfl

theorem node365_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value234 value1 value2 = (output357, value239, value1))
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value239 value1 value2 = (output364, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input365 value234 value1 value2 = (output365, value240, value1) := by
  rw [input365_def, output365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output364_skip]
  kernel_rfl

theorem node366_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value234 value1 value2 = (output352, value234, value1))
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value234 value1 value2 = (output365, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input366 value234 value1 value2 = (output366, value240, value1) := by
  rw [input366_def, output366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output365_skip]
  kernel_rfl

theorem node367_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value236 value1 value2 = (output351, value234, value1))
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value234 value1 value2 = (output366, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input367 value236 value1 value2 = (output367, value240, value1) := by
  rw [input367_def, output367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output366_skip]
  kernel_rfl

theorem node368_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value234 value1 value2 = (output350, value236, value1))
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value236 value1 value2 = (output367, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input368 value234 value1 value2 = (output368, value240, value1) := by
  rw [input368_def, output368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output367_skip]
  kernel_rfl

theorem node369_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value232 value1 value2 = (output347, value234, value1))
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value234 value1 value2 = (output368, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input369 value232 value1 value2 = (output369, value240, value1) := by
  rw [input369_def, output369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output368_skip]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value232 value1 value2 = (output370, value232, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value232 value1 value2 = (output371, value232, value1) := by
  rw [input371_def, output371_def]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value232 value1 value2 = (output372, value241, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value241 value1 value2 = (output373, value241, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value232 value1 value2 = (output372, value241, value1))
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value241 value1 value2 = (output373, value241, value1)) : Flapjack.WordAlloc.removeDeadStructural input374 value232 value1 value2 = (output374, value241, value1) := by
  rw [input374_def, output374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output373_skip]
  kernel_rfl

theorem node375_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value232 value1 value2 = (output371, value232, value1))
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value232 value1 value2 = (output374, value241, value1)) : Flapjack.WordAlloc.removeDeadStructural input375 value232 value1 value2 = (output375, value241, value1) := by
  rw [input375_def, output375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output374_skip]
  kernel_rfl

theorem node376_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value232 value1 value2 = (output370, value232, value1))
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value232 value1 value2 = (output375, value241, value1)) : Flapjack.WordAlloc.removeDeadStructural input376 value232 value1 value2 = (output376, value241, value1) := by
  rw [input376_def, output376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output375_skip]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value241 value1 value2 = (output377, value240, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value232 value1 value2 = (output376, value241, value1))
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value241 value1 value2 = (output377, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input378 value232 value1 value2 = (output378, value240, value1) := by
  rw [input378_def, output378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output377_skip]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value240 value1 value2 = (output379, value240, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value232 value1 value2 = (output378, value240, value1))
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value240 value1 value2 = (output379, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input380 value232 value1 value2 = (output380, value240, value1) := by
  rw [input380_def, output380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output379_skip]
  kernel_rfl

theorem node381_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value232 value1 value2 = (output369, value240, value1))
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value232 value1 value2 = (output380, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input381 value232 value1 value2 = (output381, value244, value1) := by
  rw [input381_def, output381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child369]
  try dsimp only
  rw [child380]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output380_skip]
  kernel_rfl

theorem node382_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value232 value1 value2 = (output338, value232, value1))
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value232 value1 value2 = (output381, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input382 value232 value1 value2 = (output382, value244, value1) := by
  rw [input382_def, output382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output381_skip]
  kernel_rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value244 value1 value2 = (output383, value245, value1) := by
  rw [input383_def, output383_def]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value245 value1 value2 = (output384, value246, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value246 value1 value2 = (output385, value246, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input386 value246 value1 value2 = (output386, value247, value1) := by
  rw [input386_def, output386_def]
  kernel_rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value247 value1 value2 = (output387, value248, value1) := by
  rw [input387_def, output387_def]
  kernel_rfl

theorem node388_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value246 value1 value2 = (output386, value247, value1))
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value247 value1 value2 = (output387, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input388 value246 value1 value2 = (output388, value248, value1) := by
  rw [input388_def, output388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output387_skip]
  kernel_rfl

theorem node389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input389 value248 value1 value2 = (output389, value249, value1) := by
  rw [input389_def, output389_def]
  kernel_rfl

theorem node390_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value246 value1 value2 = (output388, value248, value1))
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value248 value1 value2 = (output389, value249, value1)) : Flapjack.WordAlloc.removeDeadStructural input390 value246 value1 value2 = (output390, value249, value1) := by
  rw [input390_def, output390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output389_skip]
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value249 value1 value2 = (output391, value250, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input392 value250 value1 value2 = (output392, value251, value1) := by
  rw [input392_def, output392_def]
  kernel_rfl

theorem node393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input393 value251 value1 value2 = (output393, value252, value1) := by
  rw [input393_def, output393_def]
  kernel_rfl

theorem node394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input394 value252 value1 value2 = (output394, value253, value1) := by
  rw [input394_def, output394_def]
  kernel_rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value253 value1 value2 = (output395, value253, value1) := by
  rw [input395_def, output395_def]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value253 value1 value2 = (output396, value254, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value254 value1 value2 = (output397, value255, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value253 value1 value2 = (output396, value254, value1))
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value254 value1 value2 = (output397, value255, value1)) : Flapjack.WordAlloc.removeDeadStructural input398 value253 value1 value2 = (output398, value255, value1) := by
  rw [input398_def, output398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output397_skip]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value255 value1 value2 = (output399, value256, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value253 value1 value2 = (output398, value255, value1))
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value255 value1 value2 = (output399, value256, value1)) : Flapjack.WordAlloc.removeDeadStructural input400 value253 value1 value2 = (output400, value256, value1) := by
  rw [input400_def, output400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output399_skip]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value256 value1 value2 = (output401, value257, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input402 value257 value1 value2 = (output402, value258, value1) := by
  rw [input402_def, output402_def]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value258 value1 value2 = (output403, value259, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value259 value1 value2 = (output404, value260, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value260 value1 value2 = (output405, value261, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value261 value1 value2 = (output406, value262, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value262 value1 value2 = (output407, value263, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value263 value1 value2 = (output408, value264, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value264 value1 value2 = (output409, value264, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value264 value1 value2 = (output410, value264, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value264 value1 value2 = (output411, value264, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value264 value1 value2 = (output410, value264, value1))
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value264 value1 value2 = (output411, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input412 value264 value1 value2 = (output412, value264, value1) := by
  rw [input412_def, output412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output411_skip]
  kernel_rfl

theorem node413_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value264 value1 value2 = (output409, value264, value1))
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value264 value1 value2 = (output412, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input413 value264 value1 value2 = (output413, value264, value1) := by
  rw [input413_def, output413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output412_skip]
  kernel_rfl

theorem node414_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value263 value1 value2 = (output408, value264, value1))
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value264 value1 value2 = (output413, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input414 value263 value1 value2 = (output414, value264, value1) := by
  rw [input414_def, output414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output413_skip]
  kernel_rfl

theorem node415_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value262 value1 value2 = (output407, value263, value1))
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value263 value1 value2 = (output414, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input415 value262 value1 value2 = (output415, value264, value1) := by
  rw [input415_def, output415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output414_skip]
  kernel_rfl

theorem node416_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value261 value1 value2 = (output406, value262, value1))
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value262 value1 value2 = (output415, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input416 value261 value1 value2 = (output416, value264, value1) := by
  rw [input416_def, output416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output415_skip]
  kernel_rfl

theorem node417_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value260 value1 value2 = (output405, value261, value1))
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value261 value1 value2 = (output416, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input417 value260 value1 value2 = (output417, value264, value1) := by
  rw [input417_def, output417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output416_skip]
  kernel_rfl

theorem node418_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value259 value1 value2 = (output404, value260, value1))
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value260 value1 value2 = (output417, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input418 value259 value1 value2 = (output418, value264, value1) := by
  rw [input418_def, output418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output417_skip]
  kernel_rfl

theorem node419_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value258 value1 value2 = (output403, value259, value1))
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value259 value1 value2 = (output418, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input419 value258 value1 value2 = (output419, value264, value1) := by
  rw [input419_def, output419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output418_skip]
  kernel_rfl

theorem node420_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value257 value1 value2 = (output402, value258, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value258 value1 value2 = (output419, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value257 value1 value2 = (output420, value264, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value256 value1 value2 = (output401, value257, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value257 value1 value2 = (output420, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value256 value1 value2 = (output421, value264, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child401]
  try dsimp only
  rw [child420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output401_skip, output420_skip]
  kernel_rfl

theorem node422_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value253 value1 value2 = (output400, value256, value1))
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value256 value1 value2 = (output421, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input422 value253 value1 value2 = (output422, value264, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output421_skip]
  kernel_rfl

theorem node423_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value253 value1 value2 = (output395, value253, value1))
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value253 value1 value2 = (output422, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input423 value253 value1 value2 = (output423, value264, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output422_skip]
  kernel_rfl

theorem node424_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value252 value1 value2 = (output394, value253, value1))
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value253 value1 value2 = (output423, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input424 value252 value1 value2 = (output424, value264, value1) := by
  rw [input424_def, output424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output423_skip]
  kernel_rfl

theorem node425_cond_eq
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value251 value1 value2 = (output393, value252, value1))
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value252 value1 value2 = (output424, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input425 value251 value1 value2 = (output425, value264, value1) := by
  rw [input425_def, output425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child393]
  try dsimp only
  rw [child424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output393_skip, output424_skip]
  kernel_rfl

theorem node426_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value250 value1 value2 = (output392, value251, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value251 value1 value2 = (output425, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value250 value1 value2 = (output426, value264, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value249 value1 value2 = (output391, value250, value1))
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value250 value1 value2 = (output426, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input427 value249 value1 value2 = (output427, value264, value1) := by
  rw [input427_def, output427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output426_skip]
  kernel_rfl

theorem node428_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value246 value1 value2 = (output390, value249, value1))
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value249 value1 value2 = (output427, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input428 value246 value1 value2 = (output428, value264, value1) := by
  rw [input428_def, output428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output427_skip]
  kernel_rfl

theorem node429_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value246 value1 value2 = (output385, value246, value1))
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value246 value1 value2 = (output428, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input429 value246 value1 value2 = (output429, value264, value1) := by
  rw [input429_def, output429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output428_skip]
  kernel_rfl

theorem node430_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value245 value1 value2 = (output384, value246, value1))
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value246 value1 value2 = (output429, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input430 value245 value1 value2 = (output430, value264, value1) := by
  rw [input430_def, output430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output429_skip]
  kernel_rfl

theorem node431_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value244 value1 value2 = (output383, value245, value1))
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value245 value1 value2 = (output430, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input431 value244 value1 value2 = (output431, value264, value1) := by
  rw [input431_def, output431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output430_skip]
  kernel_rfl

theorem node432_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value232 value1 value2 = (output382, value244, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value244 value1 value2 = (output431, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value232 value1 value2 = (output432, value264, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output431_skip]
  kernel_rfl

theorem node433_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value232 value1 value2 = (output333, value232, value1))
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value232 value1 value2 = (output432, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input433 value232 value1 value2 = (output433, value264, value1) := by
  rw [input433_def, output433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output432_skip]
  kernel_rfl

theorem node434_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value231 value1 value2 = (output332, value232, value1))
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value232 value1 value2 = (output433, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input434 value231 value1 value2 = (output434, value264, value1) := by
  rw [input434_def, output434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output433_skip]
  kernel_rfl

theorem node435_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value226 value1 value2 = (output331, value231, value1))
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value231 value1 value2 = (output434, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input435 value226 value1 value2 = (output435, value264, value1) := by
  rw [input435_def, output435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output434_skip]
  kernel_rfl

theorem node436_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value226 value1 value2 = (output326, value226, value1))
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value226 value1 value2 = (output435, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input436 value226 value1 value2 = (output436, value264, value1) := by
  rw [input436_def, output436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output435_skip]
  kernel_rfl

theorem node437_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value228 value1 value2 = (output325, value226, value1))
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value226 value1 value2 = (output436, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input437 value228 value1 value2 = (output437, value264, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output436_skip]
  kernel_rfl

theorem node438_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value226 value1 value2 = (output324, value228, value1))
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value228 value1 value2 = (output437, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input438 value226 value1 value2 = (output438, value264, value1) := by
  rw [input438_def, output438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output437_skip]
  kernel_rfl

theorem node439_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value204 value1 value2 = (output321, value226, value1))
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value226 value1 value2 = (output438, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input439 value204 value1 value2 = (output439, value264, value1) := by
  rw [input439_def, output439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output438_skip]
  kernel_rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value204 value1 value2 = (output440, value265, value1) := by
  rw [input440_def, output440_def]
  kernel_rfl

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value265 value1 value2 = (output441, value266, value1) := by
  rw [input441_def, output441_def]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value266 value1 value2 = (output442, value266, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value266 value1 value2 = (output443, value267, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input444 value267 value1 value2 = (output444, value268, value1) := by
  rw [input444_def, output444_def]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value268 value1 value2 = (output445, value268, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input446 value268 value1 value2 = (output446, value269, value1) := by
  rw [input446_def, output446_def]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value269 value1 value2 = (output447, value270, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input448 value270 value1 value2 = (output448, value271, value1) := by
  rw [input448_def, output448_def]
  kernel_rfl

theorem node449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input449 value271 value1 value2 = (output449, value272, value1) := by
  rw [input449_def, output449_def]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value272 value1 value2 = (output450, value273, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value273 value1 value2 = (output451, value274, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value274 value1 value2 = (output452, value275, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value275 value1 value2 = (output453, value276, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value276 value1 value2 = (output454, value277, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input455 value277 value1 value2 = (output455, value277, value1) := by
  rw [input455_def, output455_def]
  kernel_rfl

theorem node456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input456 value277 value1 value2 = (output456, value278, value1) := by
  rw [input456_def, output456_def]
  kernel_rfl

theorem node457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input457 value278 value1 value2 = (output457, value278, value1) := by
  rw [input457_def, output457_def]
  kernel_rfl

theorem node458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input458 value278 value1 value2 = (output458, value279, value1) := by
  rw [input458_def, output458_def]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value279 value1 value2 = (output459, value280, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value280 value1 value2 = (output460, value281, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value281 value1 value2 = (output461, value281, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value281 value1 value2 = (output462, value282, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value282 value1 value2 = (output463, value282, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value282 value1 value2 = (output464, value283, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value283 value1 value2 = (output465, value284, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input466 value284 value1 value2 = (output466, value285, value1) := by
  rw [input466_def, output466_def]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value285 value1 value2 = (output467, value285, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value284 value1 value2 = (output466, value285, value1))
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value285 value1 value2 = (output467, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input468 value284 value1 value2 = (output468, value285, value1) := by
  rw [input468_def, output468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output467_skip]
  kernel_rfl

theorem node469_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value283 value1 value2 = (output465, value284, value1))
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value284 value1 value2 = (output468, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input469 value283 value1 value2 = (output469, value285, value1) := by
  rw [input469_def, output469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output468_skip]
  kernel_rfl

theorem node470_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value282 value1 value2 = (output464, value283, value1))
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value283 value1 value2 = (output469, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input470 value282 value1 value2 = (output470, value285, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output469_skip]
  kernel_rfl

theorem node471_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value282 value1 value2 = (output463, value282, value1))
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value282 value1 value2 = (output470, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input471 value282 value1 value2 = (output471, value285, value1) := by
  rw [input471_def, output471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output470_skip]
  kernel_rfl

theorem node472_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value281 value1 value2 = (output462, value282, value1))
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value282 value1 value2 = (output471, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input472 value281 value1 value2 = (output472, value285, value1) := by
  rw [input472_def, output472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output471_skip]
  kernel_rfl

theorem node473_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value281 value1 value2 = (output461, value281, value1))
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value281 value1 value2 = (output472, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input473 value281 value1 value2 = (output473, value285, value1) := by
  rw [input473_def, output473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output472_skip]
  kernel_rfl

theorem node474_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value280 value1 value2 = (output460, value281, value1))
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value281 value1 value2 = (output473, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input474 value280 value1 value2 = (output474, value285, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output473_skip]
  kernel_rfl

theorem node475_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value279 value1 value2 = (output459, value280, value1))
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value280 value1 value2 = (output474, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input475 value279 value1 value2 = (output475, value285, value1) := by
  rw [input475_def, output475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output474_skip]
  kernel_rfl

theorem node476_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value278 value1 value2 = (output458, value279, value1))
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value279 value1 value2 = (output475, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input476 value278 value1 value2 = (output476, value285, value1) := by
  rw [input476_def, output476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output475_skip]
  kernel_rfl

theorem node477_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value278 value1 value2 = (output457, value278, value1))
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value278 value1 value2 = (output476, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input477 value278 value1 value2 = (output477, value285, value1) := by
  rw [input477_def, output477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output476_skip]
  kernel_rfl

theorem node478_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value277 value1 value2 = (output456, value278, value1))
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value278 value1 value2 = (output477, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input478 value277 value1 value2 = (output478, value285, value1) := by
  rw [input478_def, output478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output477_skip]
  kernel_rfl

theorem node479_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value277 value1 value2 = (output455, value277, value1))
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value277 value1 value2 = (output478, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input479 value277 value1 value2 = (output479, value285, value1) := by
  rw [input479_def, output479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output478_skip]
  kernel_rfl

theorem node480_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value276 value1 value2 = (output454, value277, value1))
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value277 value1 value2 = (output479, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input480 value276 value1 value2 = (output480, value285, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output479_skip]
  kernel_rfl

theorem node481_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value275 value1 value2 = (output453, value276, value1))
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value276 value1 value2 = (output480, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input481 value275 value1 value2 = (output481, value285, value1) := by
  rw [input481_def, output481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output480_skip]
  kernel_rfl

theorem node482_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value274 value1 value2 = (output452, value275, value1))
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value275 value1 value2 = (output481, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input482 value274 value1 value2 = (output482, value285, value1) := by
  rw [input482_def, output482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output481_skip]
  kernel_rfl

theorem node483_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value273 value1 value2 = (output451, value274, value1))
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value274 value1 value2 = (output482, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input483 value273 value1 value2 = (output483, value285, value1) := by
  rw [input483_def, output483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output482_skip]
  kernel_rfl

theorem node484_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value272 value1 value2 = (output450, value273, value1))
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value273 value1 value2 = (output483, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input484 value272 value1 value2 = (output484, value285, value1) := by
  rw [input484_def, output484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output483_skip]
  kernel_rfl

theorem node485_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value271 value1 value2 = (output449, value272, value1))
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value272 value1 value2 = (output484, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input485 value271 value1 value2 = (output485, value285, value1) := by
  rw [input485_def, output485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output484_skip]
  kernel_rfl

theorem node486_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value270 value1 value2 = (output448, value271, value1))
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value271 value1 value2 = (output485, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input486 value270 value1 value2 = (output486, value285, value1) := by
  rw [input486_def, output486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output485_skip]
  kernel_rfl

theorem node487_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value269 value1 value2 = (output447, value270, value1))
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value270 value1 value2 = (output486, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input487 value269 value1 value2 = (output487, value285, value1) := by
  rw [input487_def, output487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  try dsimp only
  rw [child486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output447_skip, output486_skip]
  kernel_rfl

theorem node488_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value268 value1 value2 = (output446, value269, value1))
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value269 value1 value2 = (output487, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input488 value268 value1 value2 = (output488, value285, value1) := by
  rw [input488_def, output488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output487_skip]
  kernel_rfl

theorem node489_cond_eq
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value268 value1 value2 = (output445, value268, value1))
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value268 value1 value2 = (output488, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input489 value268 value1 value2 = (output489, value285, value1) := by
  rw [input489_def, output489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child445]
  try dsimp only
  rw [child488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output445_skip, output488_skip]
  kernel_rfl

theorem node490_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value267 value1 value2 = (output444, value268, value1))
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value268 value1 value2 = (output489, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input490 value267 value1 value2 = (output490, value285, value1) := by
  rw [input490_def, output490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output489_skip]
  kernel_rfl

theorem node491_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value266 value1 value2 = (output443, value267, value1))
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value267 value1 value2 = (output490, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input491 value266 value1 value2 = (output491, value285, value1) := by
  rw [input491_def, output491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output490_skip]
  kernel_rfl

theorem node492_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value266 value1 value2 = (output442, value266, value1))
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value266 value1 value2 = (output491, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input492 value266 value1 value2 = (output492, value285, value1) := by
  rw [input492_def, output492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output491_skip]
  kernel_rfl

theorem node493_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value265 value1 value2 = (output441, value266, value1))
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value266 value1 value2 = (output492, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input493 value265 value1 value2 = (output493, value285, value1) := by
  rw [input493_def, output493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output492_skip]
  kernel_rfl

theorem node494_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value204 value1 value2 = (output440, value265, value1))
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value265 value1 value2 = (output493, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input494 value204 value1 value2 = (output494, value285, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output493_skip]
  kernel_rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value285 value1 value2 = (output495, value286, value1) := by
  rw [input495_def, output495_def]
  kernel_rfl

theorem node496_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value204 value1 value2 = (output494, value285, value1))
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value285 value1 value2 = (output495, value286, value1)) : Flapjack.WordAlloc.removeDeadStructural input496 value204 value1 value2 = (output496, value286, value1) := by
  rw [input496_def, output496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output495_skip]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value286 value1 value2 = (output497, value286, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value204 value1 value2 = (output496, value286, value1))
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value286 value1 value2 = (output497, value286, value1)) : Flapjack.WordAlloc.removeDeadStructural input498 value204 value1 value2 = (output498, value286, value1) := by
  rw [input498_def, output498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output497_skip]
  kernel_rfl

theorem node499_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value204 value1 value2 = (output439, value264, value1))
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value204 value1 value2 = (output498, value286, value1)) : Flapjack.WordAlloc.removeDeadStructural input499 value204 value1 value2 = (output499, value288, value1) := by
  rw [input499_def, output499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child439]
  try dsimp only
  rw [child498]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output498_skip]
  kernel_rfl

theorem node500_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value204 value1 value2 = (output264, value204, value1))
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value204 value1 value2 = (output499, value288, value1)) : Flapjack.WordAlloc.removeDeadStructural input500 value204 value1 value2 = (output500, value288, value1) := by
  rw [input500_def, output500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output499_skip]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value288 value1 value2 = (output501, value289, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input502 value289 value1 value2 = (output502, value290, value1) := by
  rw [input502_def, output502_def]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value290 value1 value2 = (output503, value290, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input504 value290 value1 value2 = (output504, value291, value1) := by
  rw [input504_def, output504_def]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value291 value1 value2 = (output505, value292, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value290 value1 value2 = (output504, value291, value1))
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value291 value1 value2 = (output505, value292, value1)) : Flapjack.WordAlloc.removeDeadStructural input506 value290 value1 value2 = (output506, value292, value1) := by
  rw [input506_def, output506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output505_skip]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value292 value1 value2 = (output507, value293, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value290 value1 value2 = (output506, value292, value1))
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value292 value1 value2 = (output507, value293, value1)) : Flapjack.WordAlloc.removeDeadStructural input508 value290 value1 value2 = (output508, value293, value1) := by
  rw [input508_def, output508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output507_skip]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value293 value1 value2 = (output509, value294, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input510 value294 value1 value2 = (output510, value295, value1) := by
  rw [input510_def, output510_def]
  kernel_rfl

theorem node511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input511 value295 value1 value2 = (output511, value296, value1) := by
  rw [input511_def, output511_def]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages652.Parallel
