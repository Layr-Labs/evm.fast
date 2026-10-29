import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages121.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages121.Parallel
theorem node256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input256 value190 value1 value2 = (output256, value191, value1) := by
  rw [input256_def, output256_def]
  kernel_rfl

theorem node257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input257 value191 value1 value2 = (output257, value192, value1) := by
  rw [input257_def, output257_def]
  kernel_rfl

theorem node258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input258 value192 value1 value2 = (output258, value193, value1) := by
  rw [input258_def, output258_def]
  kernel_rfl

theorem node259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input259 value193 value1 value2 = (output259, value194, value1) := by
  rw [input259_def, output259_def]
  kernel_rfl

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value194 value1 value2 = (output260, value195, value1) := by
  rw [input260_def, output260_def]
  kernel_rfl

theorem node261_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value193 value1 value2 = (output259, value194, value1))
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value194 value1 value2 = (output260, value195, value1)) : Flapjack.WordAlloc.removeDeadStructural input261 value193 value1 value2 = (output261, value195, value1) := by
  rw [input261_def, output261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output260_skip]
  kernel_rfl

theorem node262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input262 value195 value1 value2 = (output262, value196, value1) := by
  rw [input262_def, output262_def]
  kernel_rfl

theorem node263_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value193 value1 value2 = (output261, value195, value1))
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value195 value1 value2 = (output262, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input263 value193 value1 value2 = (output263, value196, value1) := by
  rw [input263_def, output263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output262_skip]
  kernel_rfl

theorem node264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input264 value196 value1 value2 = (output264, value197, value1) := by
  rw [input264_def, output264_def]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value197 value1 value2 = (output265, value197, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input266 value197 value1 value2 = (output266, value198, value1) := by
  rw [input266_def, output266_def]
  kernel_rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value198 value1 value2 = (output267, value199, value1) := by
  rw [input267_def, output267_def]
  kernel_rfl

theorem node268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input268 value199 value1 value2 = (output268, value200, value1) := by
  rw [input268_def, output268_def]
  kernel_rfl

theorem node269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input269 value200 value1 value2 = (output269, value201, value1) := by
  rw [input269_def, output269_def]
  kernel_rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value201 value1 value2 = (output270, value202, value1) := by
  rw [input270_def, output270_def]
  kernel_rfl

theorem node271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input271 value202 value1 value2 = (output271, value203, value1) := by
  rw [input271_def, output271_def]
  kernel_rfl

theorem node272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input272 value203 value1 value2 = (output272, value204, value1) := by
  rw [input272_def, output272_def]
  kernel_rfl

theorem node273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input273 value204 value1 value2 = (output273, value205, value1) := by
  rw [input273_def, output273_def]
  kernel_rfl

theorem node274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input274 value205 value1 value2 = (output274, value206, value1) := by
  rw [input274_def, output274_def]
  kernel_rfl

theorem node275_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value204 value1 value2 = (output273, value205, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value205 value1 value2 = (output274, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value204 value1 value2 = (output275, value206, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input276 value206 value1 value2 = (output276, value207, value1) := by
  rw [input276_def, output276_def]
  kernel_rfl

theorem node277_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value204 value1 value2 = (output275, value206, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value206 value1 value2 = (output276, value207, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value204 value1 value2 = (output277, value207, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input278 value207 value1 value2 = (output278, value208, value1) := by
  rw [input278_def, output278_def]
  kernel_rfl

theorem node279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input279 value208 value1 value2 = (output279, value208, value1) := by
  rw [input279_def, output279_def]
  kernel_rfl

theorem node280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input280 value208 value1 value2 = (output280, value209, value1) := by
  rw [input280_def, output280_def]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value209 value1 value2 = (output281, value210, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value210 value1 value2 = (output282, value210, value1) := by
  rw [input282_def, output282_def]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value210 value1 value2 = (output283, value211, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value211 value1 value2 = (output284, value212, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value212 value1 value2 = (output285, value213, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value213 value1 value2 = (output286, value214, value1) := by
  rw [input286_def, output286_def]
  kernel_rfl

theorem node287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input287 value214 value1 value2 = (output287, value215, value1) := by
  rw [input287_def, output287_def]
  kernel_rfl

theorem node288_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value213 value1 value2 = (output286, value214, value1))
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value214 value1 value2 = (output287, value215, value1)) : Flapjack.WordAlloc.removeDeadStructural input288 value213 value1 value2 = (output288, value215, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output287_skip]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value215 value1 value2 = (output289, value216, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value213 value1 value2 = (output288, value215, value1))
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value215 value1 value2 = (output289, value216, value1)) : Flapjack.WordAlloc.removeDeadStructural input290 value213 value1 value2 = (output290, value216, value1) := by
  rw [input290_def, output290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output289_skip]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value216 value1 value2 = (output291, value217, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value217 value1 value2 = (output292, value218, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input293 value218 value1 value2 = (output293, value219, value1) := by
  rw [input293_def, output293_def]
  kernel_rfl

theorem node294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input294 value219 value1 value2 = (output294, value220, value1) := by
  rw [input294_def, output294_def]
  kernel_rfl

theorem node295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input295 value220 value1 value2 = (output295, value221, value1) := by
  rw [input295_def, output295_def]
  kernel_rfl

theorem node296_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value219 value1 value2 = (output294, value220, value1))
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value220 value1 value2 = (output295, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input296 value219 value1 value2 = (output296, value221, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  try dsimp only
  rw [child295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output294_skip, output295_skip]
  kernel_rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value221 value1 value2 = (output297, value222, value1) := by
  rw [input297_def, output297_def]
  kernel_rfl

theorem node298_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value219 value1 value2 = (output296, value221, value1))
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value221 value1 value2 = (output297, value222, value1)) : Flapjack.WordAlloc.removeDeadStructural input298 value219 value1 value2 = (output298, value222, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output297_skip]
  kernel_rfl

theorem node299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input299 value222 value1 value2 = (output299, value223, value1) := by
  rw [input299_def, output299_def]
  kernel_rfl

theorem node300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input300 value223 value1 value2 = (output300, value223, value1) := by
  rw [input300_def, output300_def]
  kernel_rfl

theorem node301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input301 value223 value1 value2 = (output301, value224, value1) := by
  rw [input301_def, output301_def]
  kernel_rfl

theorem node302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input302 value224 value1 value2 = (output302, value225, value1) := by
  rw [input302_def, output302_def]
  kernel_rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value225 value1 value2 = (output303, value226, value1) := by
  rw [input303_def, output303_def]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value226 value1 value2 = (output304, value227, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input305 value227 value1 value2 = (output305, value228, value1) := by
  rw [input305_def, output305_def]
  kernel_rfl

theorem node306_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value226 value1 value2 = (output304, value227, value1))
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value227 value1 value2 = (output305, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input306 value226 value1 value2 = (output306, value228, value1) := by
  rw [input306_def, output306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output305_skip]
  kernel_rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value228 value1 value2 = (output307, value229, value1) := by
  rw [input307_def, output307_def]
  kernel_rfl

theorem node308_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value226 value1 value2 = (output306, value228, value1))
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value228 value1 value2 = (output307, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input308 value226 value1 value2 = (output308, value229, value1) := by
  rw [input308_def, output308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output307_skip]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value229 value1 value2 = (output309, value230, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value230 value1 value2 = (output310, value231, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value231 value1 value2 = (output311, value232, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input312 value232 value1 value2 = (output312, value233, value1) := by
  rw [input312_def, output312_def]
  kernel_rfl

theorem node313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input313 value233 value1 value2 = (output313, value234, value1) := by
  rw [input313_def, output313_def]
  kernel_rfl

theorem node314_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value232 value1 value2 = (output312, value233, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value233 value1 value2 = (output313, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value232 value1 value2 = (output314, value234, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input315 value234 value1 value2 = (output315, value235, value1) := by
  rw [input315_def, output315_def]
  kernel_rfl

theorem node316_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value232 value1 value2 = (output314, value234, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value234 value1 value2 = (output315, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value232 value1 value2 = (output316, value235, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input317 value235 value1 value2 = (output317, value236, value1) := by
  rw [input317_def, output317_def]
  kernel_rfl

theorem node318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input318 value236 value1 value2 = (output318, value236, value1) := by
  rw [input318_def, output318_def]
  kernel_rfl

theorem node319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input319 value236 value1 value2 = (output319, value237, value1) := by
  rw [input319_def, output319_def]
  kernel_rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value237 value1 value2 = (output320, value238, value1) := by
  rw [input320_def, output320_def]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value238 value1 value2 = (output321, value239, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value239 value1 value2 = (output322, value240, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value240 value1 value2 = (output323, value241, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value239 value1 value2 = (output322, value240, value1))
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value240 value1 value2 = (output323, value241, value1)) : Flapjack.WordAlloc.removeDeadStructural input324 value239 value1 value2 = (output324, value241, value1) := by
  rw [input324_def, output324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output323_skip]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value241 value1 value2 = (output325, value242, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value239 value1 value2 = (output324, value241, value1))
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value241 value1 value2 = (output325, value242, value1)) : Flapjack.WordAlloc.removeDeadStructural input326 value239 value1 value2 = (output326, value242, value1) := by
  rw [input326_def, output326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output325_skip]
  kernel_rfl

theorem node327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input327 value242 value1 value2 = (output327, value243, value1) := by
  rw [input327_def, output327_def]
  kernel_rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value243 value1 value2 = (output328, value244, value1) := by
  rw [input328_def, output328_def]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value244 value1 value2 = (output329, value245, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value245 value1 value2 = (output330, value246, value1) := by
  rw [input330_def, output330_def]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value246 value1 value2 = (output331, value247, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value245 value1 value2 = (output330, value246, value1))
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value246 value1 value2 = (output331, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input332 value245 value1 value2 = (output332, value247, value1) := by
  rw [input332_def, output332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output331_skip]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value247 value1 value2 = (output333, value248, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value245 value1 value2 = (output332, value247, value1))
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value247 value1 value2 = (output333, value248, value1)) : Flapjack.WordAlloc.removeDeadStructural input334 value245 value1 value2 = (output334, value248, value1) := by
  rw [input334_def, output334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output333_skip]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value248 value1 value2 = (output335, value249, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value249 value1 value2 = (output336, value249, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input337 value249 value1 value2 = (output337, value250, value1) := by
  rw [input337_def, output337_def]
  kernel_rfl

theorem node338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input338 value250 value1 value2 = (output338, value251, value1) := by
  rw [input338_def, output338_def]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value251 value1 value2 = (output339, value252, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value252 value1 value2 = (output340, value253, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value253 value1 value2 = (output341, value254, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value252 value1 value2 = (output340, value253, value1))
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value253 value1 value2 = (output341, value254, value1)) : Flapjack.WordAlloc.removeDeadStructural input342 value252 value1 value2 = (output342, value254, value1) := by
  rw [input342_def, output342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output341_skip]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value254 value1 value2 = (output343, value255, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value252 value1 value2 = (output342, value254, value1))
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value254 value1 value2 = (output343, value255, value1)) : Flapjack.WordAlloc.removeDeadStructural input344 value252 value1 value2 = (output344, value255, value1) := by
  rw [input344_def, output344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output343_skip]
  kernel_rfl

theorem node345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input345 value255 value1 value2 = (output345, value256, value1) := by
  rw [input345_def, output345_def]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value256 value1 value2 = (output346, value257, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input347 value257 value1 value2 = (output347, value258, value1) := by
  rw [input347_def, output347_def]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value258 value1 value2 = (output348, value259, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value259 value1 value2 = (output349, value260, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value258 value1 value2 = (output348, value259, value1))
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value259 value1 value2 = (output349, value260, value1)) : Flapjack.WordAlloc.removeDeadStructural input350 value258 value1 value2 = (output350, value260, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output349_skip]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value260 value1 value2 = (output351, value261, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value258 value1 value2 = (output350, value260, value1))
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value260 value1 value2 = (output351, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input352 value258 value1 value2 = (output352, value261, value1) := by
  rw [input352_def, output352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output351_skip]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value261 value1 value2 = (output353, value262, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value262 value1 value2 = (output354, value262, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input355 value262 value1 value2 = (output355, value263, value1) := by
  rw [input355_def, output355_def]
  kernel_rfl

theorem node356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input356 value263 value1 value2 = (output356, value264, value1) := by
  rw [input356_def, output356_def]
  kernel_rfl

theorem node357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input357 value264 value1 value2 = (output357, value265, value1) := by
  rw [input357_def, output357_def]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value265 value1 value2 = (output358, value266, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value266 value1 value2 = (output359, value267, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value265 value1 value2 = (output358, value266, value1))
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value266 value1 value2 = (output359, value267, value1)) : Flapjack.WordAlloc.removeDeadStructural input360 value265 value1 value2 = (output360, value267, value1) := by
  rw [input360_def, output360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output359_skip]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value267 value1 value2 = (output361, value268, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value265 value1 value2 = (output360, value267, value1))
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value267 value1 value2 = (output361, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input362 value265 value1 value2 = (output362, value268, value1) := by
  rw [input362_def, output362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output361_skip]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value268 value1 value2 = (output363, value269, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value269 value1 value2 = (output364, value270, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input365 value270 value1 value2 = (output365, value271, value1) := by
  rw [input365_def, output365_def]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value271 value1 value2 = (output366, value272, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value272 value1 value2 = (output367, value273, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value271 value1 value2 = (output366, value272, value1))
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value272 value1 value2 = (output367, value273, value1)) : Flapjack.WordAlloc.removeDeadStructural input368 value271 value1 value2 = (output368, value273, value1) := by
  rw [input368_def, output368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output367_skip]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value273 value1 value2 = (output369, value274, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value271 value1 value2 = (output368, value273, value1))
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value273 value1 value2 = (output369, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input370 value271 value1 value2 = (output370, value274, value1) := by
  rw [input370_def, output370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output369_skip]
  kernel_rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value274 value1 value2 = (output371, value275, value1) := by
  rw [input371_def, output371_def]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value275 value1 value2 = (output372, value275, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value275 value1 value2 = (output373, value276, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input374 value276 value1 value2 = (output374, value277, value1) := by
  rw [input374_def, output374_def]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value277 value1 value2 = (output375, value278, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value278 value1 value2 = (output376, value279, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value279 value1 value2 = (output377, value280, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value278 value1 value2 = (output376, value279, value1))
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value279 value1 value2 = (output377, value280, value1)) : Flapjack.WordAlloc.removeDeadStructural input378 value278 value1 value2 = (output378, value280, value1) := by
  rw [input378_def, output378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output377_skip]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value280 value1 value2 = (output379, value281, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value278 value1 value2 = (output378, value280, value1))
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value280 value1 value2 = (output379, value281, value1)) : Flapjack.WordAlloc.removeDeadStructural input380 value278 value1 value2 = (output380, value281, value1) := by
  rw [input380_def, output380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output379_skip]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value281 value1 value2 = (output381, value282, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input382 value282 value1 value2 = (output382, value283, value1) := by
  rw [input382_def, output382_def]
  kernel_rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value283 value1 value2 = (output383, value284, value1) := by
  rw [input383_def, output383_def]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value284 value1 value2 = (output384, value285, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value285 value1 value2 = (output385, value286, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value284 value1 value2 = (output384, value285, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value285 value1 value2 = (output385, value286, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value284 value1 value2 = (output386, value286, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output385_skip]
  kernel_rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value286 value1 value2 = (output387, value287, value1) := by
  rw [input387_def, output387_def]
  kernel_rfl

theorem node388_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value284 value1 value2 = (output386, value286, value1))
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value286 value1 value2 = (output387, value287, value1)) : Flapjack.WordAlloc.removeDeadStructural input388 value284 value1 value2 = (output388, value287, value1) := by
  rw [input388_def, output388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output387_skip]
  kernel_rfl

theorem node389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input389 value287 value1 value2 = (output389, value288, value1) := by
  rw [input389_def, output389_def]
  kernel_rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value288 value1 value2 = (output390, value288, value1) := by
  rw [input390_def, output390_def]
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value288 value1 value2 = (output391, value289, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input392 value289 value1 value2 = (output392, value290, value1) := by
  rw [input392_def, output392_def]
  kernel_rfl

theorem node393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input393 value290 value1 value2 = (output393, value291, value1) := by
  rw [input393_def, output393_def]
  kernel_rfl

theorem node394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input394 value291 value1 value2 = (output394, value292, value1) := by
  rw [input394_def, output394_def]
  kernel_rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value292 value1 value2 = (output395, value293, value1) := by
  rw [input395_def, output395_def]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value293 value1 value2 = (output396, value294, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value294 value1 value2 = (output397, value295, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input398 value295 value1 value2 = (output398, value296, value1) := by
  rw [input398_def, output398_def]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value296 value1 value2 = (output399, value297, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value295 value1 value2 = (output398, value296, value1))
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value296 value1 value2 = (output399, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input400 value295 value1 value2 = (output400, value297, value1) := by
  rw [input400_def, output400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output399_skip]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value297 value1 value2 = (output401, value298, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value295 value1 value2 = (output400, value297, value1))
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value297 value1 value2 = (output401, value298, value1)) : Flapjack.WordAlloc.removeDeadStructural input402 value295 value1 value2 = (output402, value298, value1) := by
  rw [input402_def, output402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output401_skip]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value298 value1 value2 = (output403, value299, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value299 value1 value2 = (output404, value299, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value299 value1 value2 = (output405, value300, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value300 value1 value2 = (output406, value301, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value301 value1 value2 = (output407, value301, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value301 value1 value2 = (output408, value302, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value302 value1 value2 = (output409, value303, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value303 value1 value2 = (output410, value304, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value304 value1 value2 = (output411, value305, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input412 value305 value1 value2 = (output412, value306, value1) := by
  rw [input412_def, output412_def]
  kernel_rfl

theorem node413_cond_eq
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value304 value1 value2 = (output411, value305, value1))
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value305 value1 value2 = (output412, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input413 value304 value1 value2 = (output413, value306, value1) := by
  rw [input413_def, output413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child411]
  try dsimp only
  rw [child412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output411_skip, output412_skip]
  kernel_rfl

theorem node414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input414 value306 value1 value2 = (output414, value307, value1) := by
  rw [input414_def, output414_def]
  kernel_rfl

theorem node415_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value304 value1 value2 = (output413, value306, value1))
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value306 value1 value2 = (output414, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input415 value304 value1 value2 = (output415, value307, value1) := by
  rw [input415_def, output415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output414_skip]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value307 value1 value2 = (output416, value308, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input417 value308 value1 value2 = (output417, value309, value1) := by
  rw [input417_def, output417_def]
  kernel_rfl

theorem node418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input418 value309 value1 value2 = (output418, value310, value1) := by
  rw [input418_def, output418_def]
  kernel_rfl

theorem node419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input419 value310 value1 value2 = (output419, value311, value1) := by
  rw [input419_def, output419_def]
  kernel_rfl

theorem node420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input420 value311 value1 value2 = (output420, value312, value1) := by
  rw [input420_def, output420_def]
  kernel_rfl

theorem node421_cond_eq
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value310 value1 value2 = (output419, value311, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value311 value1 value2 = (output420, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value310 value1 value2 = (output421, value312, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child419]
  try dsimp only
  rw [child420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output419_skip, output420_skip]
  kernel_rfl

theorem node422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input422 value312 value1 value2 = (output422, value313, value1) := by
  rw [input422_def, output422_def]
  kernel_rfl

theorem node423_cond_eq
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value310 value1 value2 = (output421, value312, value1))
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value312 value1 value2 = (output422, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input423 value310 value1 value2 = (output423, value313, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child421]
  try dsimp only
  rw [child422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output421_skip, output422_skip]
  kernel_rfl

theorem node424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input424 value313 value1 value2 = (output424, value314, value1) := by
  rw [input424_def, output424_def]
  kernel_rfl

theorem node425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input425 value314 value1 value2 = (output425, value314, value1) := by
  rw [input425_def, output425_def]
  kernel_rfl

theorem node426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input426 value314 value1 value2 = (output426, value315, value1) := by
  rw [input426_def, output426_def]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value315 value1 value2 = (output427, value316, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value316 value1 value2 = (output428, value317, value1) := by
  rw [input428_def, output428_def]
  kernel_rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value317 value1 value2 = (output429, value318, value1) := by
  rw [input429_def, output429_def]
  kernel_rfl

theorem node430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input430 value318 value1 value2 = (output430, value319, value1) := by
  rw [input430_def, output430_def]
  kernel_rfl

theorem node431_cond_eq
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value317 value1 value2 = (output429, value318, value1))
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value318 value1 value2 = (output430, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input431 value317 value1 value2 = (output431, value319, value1) := by
  rw [input431_def, output431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child429]
  try dsimp only
  rw [child430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output429_skip, output430_skip]
  kernel_rfl

theorem node432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input432 value319 value1 value2 = (output432, value320, value1) := by
  rw [input432_def, output432_def]
  kernel_rfl

theorem node433_cond_eq
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value317 value1 value2 = (output431, value319, value1))
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value319 value1 value2 = (output432, value320, value1)) : Flapjack.WordAlloc.removeDeadStructural input433 value317 value1 value2 = (output433, value320, value1) := by
  rw [input433_def, output433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child431]
  try dsimp only
  rw [child432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output431_skip, output432_skip]
  kernel_rfl

theorem node434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input434 value320 value1 value2 = (output434, value321, value1) := by
  rw [input434_def, output434_def]
  kernel_rfl

theorem node435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input435 value321 value1 value2 = (output435, value322, value1) := by
  rw [input435_def, output435_def]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value322 value1 value2 = (output436, value323, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input437 value323 value1 value2 = (output437, value324, value1) := by
  rw [input437_def, output437_def]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value324 value1 value2 = (output438, value325, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value323 value1 value2 = (output437, value324, value1))
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value324 value1 value2 = (output438, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input439 value323 value1 value2 = (output439, value325, value1) := by
  rw [input439_def, output439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output438_skip]
  kernel_rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value325 value1 value2 = (output440, value326, value1) := by
  rw [input440_def, output440_def]
  kernel_rfl

theorem node441_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value323 value1 value2 = (output439, value325, value1))
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value325 value1 value2 = (output440, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input441 value323 value1 value2 = (output441, value326, value1) := by
  rw [input441_def, output441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output440_skip]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value326 value1 value2 = (output442, value327, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value327 value1 value2 = (output443, value327, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input444 value327 value1 value2 = (output444, value328, value1) := by
  rw [input444_def, output444_def]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value328 value1 value2 = (output445, value329, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input446 value329 value1 value2 = (output446, value330, value1) := by
  rw [input446_def, output446_def]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value330 value1 value2 = (output447, value331, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input448 value331 value1 value2 = (output448, value332, value1) := by
  rw [input448_def, output448_def]
  kernel_rfl

theorem node449_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value330 value1 value2 = (output447, value331, value1))
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value331 value1 value2 = (output448, value332, value1)) : Flapjack.WordAlloc.removeDeadStructural input449 value330 value1 value2 = (output449, value332, value1) := by
  rw [input449_def, output449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  try dsimp only
  rw [child448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output447_skip, output448_skip]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value332 value1 value2 = (output450, value333, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value330 value1 value2 = (output449, value332, value1))
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value332 value1 value2 = (output450, value333, value1)) : Flapjack.WordAlloc.removeDeadStructural input451 value330 value1 value2 = (output451, value333, value1) := by
  rw [input451_def, output451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child449]
  try dsimp only
  rw [child450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output449_skip, output450_skip]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value333 value1 value2 = (output452, value334, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value334 value1 value2 = (output453, value335, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value335 value1 value2 = (output454, value336, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input455 value336 value1 value2 = (output455, value337, value1) := by
  rw [input455_def, output455_def]
  kernel_rfl

theorem node456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input456 value337 value1 value2 = (output456, value338, value1) := by
  rw [input456_def, output456_def]
  kernel_rfl

theorem node457_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value336 value1 value2 = (output455, value337, value1))
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value337 value1 value2 = (output456, value338, value1)) : Flapjack.WordAlloc.removeDeadStructural input457 value336 value1 value2 = (output457, value338, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output456_skip]
  kernel_rfl

theorem node458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input458 value338 value1 value2 = (output458, value339, value1) := by
  rw [input458_def, output458_def]
  kernel_rfl

theorem node459_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value336 value1 value2 = (output457, value338, value1))
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value338 value1 value2 = (output458, value339, value1)) : Flapjack.WordAlloc.removeDeadStructural input459 value336 value1 value2 = (output459, value339, value1) := by
  rw [input459_def, output459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output458_skip]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value339 value1 value2 = (output460, value340, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value340 value1 value2 = (output461, value340, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value340 value1 value2 = (output462, value341, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value341 value1 value2 = (output463, value342, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value342 value1 value2 = (output464, value343, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value343 value1 value2 = (output465, value344, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input466 value344 value1 value2 = (output466, value345, value1) := by
  rw [input466_def, output466_def]
  kernel_rfl

theorem node467_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value343 value1 value2 = (output465, value344, value1))
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value344 value1 value2 = (output466, value345, value1)) : Flapjack.WordAlloc.removeDeadStructural input467 value343 value1 value2 = (output467, value345, value1) := by
  rw [input467_def, output467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output466_skip]
  kernel_rfl

theorem node468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input468 value345 value1 value2 = (output468, value346, value1) := by
  rw [input468_def, output468_def]
  kernel_rfl

theorem node469_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value343 value1 value2 = (output467, value345, value1))
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value345 value1 value2 = (output468, value346, value1)) : Flapjack.WordAlloc.removeDeadStructural input469 value343 value1 value2 = (output469, value346, value1) := by
  rw [input469_def, output469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output468_skip]
  kernel_rfl

theorem node470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input470 value346 value1 value2 = (output470, value347, value1) := by
  rw [input470_def, output470_def]
  kernel_rfl

theorem node471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input471 value347 value1 value2 = (output471, value348, value1) := by
  rw [input471_def, output471_def]
  kernel_rfl

theorem node472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input472 value348 value1 value2 = (output472, value349, value1) := by
  rw [input472_def, output472_def]
  kernel_rfl

theorem node473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input473 value349 value1 value2 = (output473, value350, value1) := by
  rw [input473_def, output473_def]
  kernel_rfl

theorem node474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input474 value350 value1 value2 = (output474, value351, value1) := by
  rw [input474_def, output474_def]
  kernel_rfl

theorem node475_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value349 value1 value2 = (output473, value350, value1))
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value350 value1 value2 = (output474, value351, value1)) : Flapjack.WordAlloc.removeDeadStructural input475 value349 value1 value2 = (output475, value351, value1) := by
  rw [input475_def, output475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  try dsimp only
  rw [child474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output473_skip, output474_skip]
  kernel_rfl

theorem node476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input476 value351 value1 value2 = (output476, value352, value1) := by
  rw [input476_def, output476_def]
  kernel_rfl

theorem node477_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value349 value1 value2 = (output475, value351, value1))
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value351 value1 value2 = (output476, value352, value1)) : Flapjack.WordAlloc.removeDeadStructural input477 value349 value1 value2 = (output477, value352, value1) := by
  rw [input477_def, output477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  try dsimp only
  rw [child476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output475_skip, output476_skip]
  kernel_rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value352 value1 value2 = (output478, value353, value1) := by
  rw [input478_def, output478_def]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value353 value1 value2 = (output479, value353, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input480 value353 value1 value2 = (output480, value354, value1) := by
  rw [input480_def, output480_def]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value354 value1 value2 = (output481, value355, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input482 value355 value1 value2 = (output482, value356, value1) := by
  rw [input482_def, output482_def]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value356 value1 value2 = (output483, value357, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value357 value1 value2 = (output484, value358, value1) := by
  rw [input484_def, output484_def]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value358 value1 value2 = (output485, value359, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value359 value1 value2 = (output486, value360, value1) := by
  rw [input486_def, output486_def]
  kernel_rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value360 value1 value2 = (output487, value361, value1) := by
  rw [input487_def, output487_def]
  kernel_rfl

theorem node488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input488 value361 value1 value2 = (output488, value362, value1) := by
  rw [input488_def, output488_def]
  kernel_rfl

theorem node489_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value360 value1 value2 = (output487, value361, value1))
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value361 value1 value2 = (output488, value362, value1)) : Flapjack.WordAlloc.removeDeadStructural input489 value360 value1 value2 = (output489, value362, value1) := by
  rw [input489_def, output489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output488_skip]
  kernel_rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value362 value1 value2 = (output490, value363, value1) := by
  rw [input490_def, output490_def]
  kernel_rfl

theorem node491_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value360 value1 value2 = (output489, value362, value1))
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value362 value1 value2 = (output490, value363, value1)) : Flapjack.WordAlloc.removeDeadStructural input491 value360 value1 value2 = (output491, value363, value1) := by
  rw [input491_def, output491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output490_skip]
  kernel_rfl

theorem node492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input492 value363 value1 value2 = (output492, value364, value1) := by
  rw [input492_def, output492_def]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value364 value1 value2 = (output493, value364, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input494 value364 value1 value2 = (output494, value365, value1) := by
  rw [input494_def, output494_def]
  kernel_rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value365 value1 value2 = (output495, value366, value1) := by
  rw [input495_def, output495_def]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value366 value1 value2 = (output496, value366, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value366 value1 value2 = (output497, value367, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input498 value367 value1 value2 = (output498, value368, value1) := by
  rw [input498_def, output498_def]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value368 value1 value2 = (output499, value369, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input500 value369 value1 value2 = (output500, value370, value1) := by
  rw [input500_def, output500_def]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value370 value1 value2 = (output501, value371, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value369 value1 value2 = (output500, value370, value1))
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value370 value1 value2 = (output501, value371, value1)) : Flapjack.WordAlloc.removeDeadStructural input502 value369 value1 value2 = (output502, value371, value1) := by
  rw [input502_def, output502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output501_skip]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value371 value1 value2 = (output503, value372, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value369 value1 value2 = (output502, value371, value1))
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value371 value1 value2 = (output503, value372, value1)) : Flapjack.WordAlloc.removeDeadStructural input504 value369 value1 value2 = (output504, value372, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output503_skip]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value372 value1 value2 = (output505, value373, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value373 value1 value2 = (output506, value374, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value374 value1 value2 = (output507, value375, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value375 value1 value2 = (output508, value376, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value376 value1 value2 = (output509, value377, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value375 value1 value2 = (output508, value376, value1))
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value376 value1 value2 = (output509, value377, value1)) : Flapjack.WordAlloc.removeDeadStructural input510 value375 value1 value2 = (output510, value377, value1) := by
  rw [input510_def, output510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output509_skip]
  kernel_rfl

theorem node511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input511 value377 value1 value2 = (output511, value378, value1) := by
  rw [input511_def, output511_def]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages121.Parallel
