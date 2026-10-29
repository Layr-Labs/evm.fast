import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages651.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages651.Parallel
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

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value204 value1 value2 = (output260, value205, value1) := by
  rw [input260_def, output260_def]
  kernel_rfl

theorem node261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input261 value205 value1 value2 = (output261, value206, value1) := by
  rw [input261_def, output261_def]
  kernel_rfl

theorem node262_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value204 value1 value2 = (output260, value205, value1))
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value205 value1 value2 = (output261, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input262 value204 value1 value2 = (output262, value206, value1) := by
  rw [input262_def, output262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output261_skip]
  kernel_rfl

theorem node263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input263 value206 value1 value2 = (output263, value207, value1) := by
  rw [input263_def, output263_def]
  kernel_rfl

theorem node264_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value204 value1 value2 = (output262, value206, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value206 value1 value2 = (output263, value207, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value204 value1 value2 = (output264, value207, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value207 value1 value2 = (output265, value208, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input266 value208 value1 value2 = (output266, value209, value1) := by
  rw [input266_def, output266_def]
  kernel_rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value209 value1 value2 = (output267, value210, value1) := by
  rw [input267_def, output267_def]
  kernel_rfl

theorem node268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input268 value210 value1 value2 = (output268, value211, value1) := by
  rw [input268_def, output268_def]
  kernel_rfl

theorem node269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input269 value211 value1 value2 = (output269, value212, value1) := by
  rw [input269_def, output269_def]
  kernel_rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value212 value1 value2 = (output270, value213, value1) := by
  rw [input270_def, output270_def]
  kernel_rfl

theorem node271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input271 value213 value1 value2 = (output271, value214, value1) := by
  rw [input271_def, output271_def]
  kernel_rfl

theorem node272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input272 value214 value1 value2 = (output272, value215, value1) := by
  rw [input272_def, output272_def]
  kernel_rfl

theorem node273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input273 value215 value1 value2 = (output273, value215, value1) := by
  rw [input273_def, output273_def]
  kernel_rfl

theorem node274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input274 value215 value1 value2 = (output274, value216, value1) := by
  rw [input274_def, output274_def]
  kernel_rfl

theorem node275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input275 value216 value1 value2 = (output275, value217, value1) := by
  rw [input275_def, output275_def]
  kernel_rfl

theorem node276_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value215 value1 value2 = (output274, value216, value1))
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value216 value1 value2 = (output275, value217, value1)) : Flapjack.WordAlloc.removeDeadStructural input276 value215 value1 value2 = (output276, value217, value1) := by
  rw [input276_def, output276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output275_skip]
  kernel_rfl

theorem node277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input277 value217 value1 value2 = (output277, value218, value1) := by
  rw [input277_def, output277_def]
  kernel_rfl

theorem node278_cond_eq
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value215 value1 value2 = (output276, value217, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value217 value1 value2 = (output277, value218, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value215 value1 value2 = (output278, value218, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child276]
  try dsimp only
  rw [child277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output276_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input279 value218 value1 value2 = (output279, value219, value1) := by
  rw [input279_def, output279_def]
  kernel_rfl

theorem node280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input280 value219 value1 value2 = (output280, value220, value1) := by
  rw [input280_def, output280_def]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value220 value1 value2 = (output281, value221, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value221 value1 value2 = (output282, value222, value1) := by
  rw [input282_def, output282_def]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value222 value1 value2 = (output283, value222, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value222 value1 value2 = (output284, value223, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value223 value1 value2 = (output285, value224, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value222 value1 value2 = (output284, value223, value1))
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value223 value1 value2 = (output285, value224, value1)) : Flapjack.WordAlloc.removeDeadStructural input286 value222 value1 value2 = (output286, value224, value1) := by
  rw [input286_def, output286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output285_skip]
  kernel_rfl

theorem node287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input287 value224 value1 value2 = (output287, value225, value1) := by
  rw [input287_def, output287_def]
  kernel_rfl

theorem node288_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value222 value1 value2 = (output286, value224, value1))
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value224 value1 value2 = (output287, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input288 value222 value1 value2 = (output288, value225, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output287_skip]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value225 value1 value2 = (output289, value226, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input290 value226 value1 value2 = (output290, value227, value1) := by
  rw [input290_def, output290_def]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value227 value1 value2 = (output291, value228, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value228 value1 value2 = (output292, value229, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input293 value229 value1 value2 = (output293, value230, value1) := by
  rw [input293_def, output293_def]
  kernel_rfl

theorem node294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input294 value230 value1 value2 = (output294, value231, value1) := by
  rw [input294_def, output294_def]
  kernel_rfl

theorem node295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input295 value231 value1 value2 = (output295, value232, value1) := by
  rw [input295_def, output295_def]
  kernel_rfl

theorem node296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input296 value232 value1 value2 = (output296, value233, value1) := by
  rw [input296_def, output296_def]
  kernel_rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value233 value1 value2 = (output297, value233, value1) := by
  rw [input297_def, output297_def]
  kernel_rfl

theorem node298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input298 value233 value1 value2 = (output298, value234, value1) := by
  rw [input298_def, output298_def]
  kernel_rfl

theorem node299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input299 value234 value1 value2 = (output299, value235, value1) := by
  rw [input299_def, output299_def]
  kernel_rfl

theorem node300_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value233 value1 value2 = (output298, value234, value1))
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value234 value1 value2 = (output299, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input300 value233 value1 value2 = (output300, value235, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  try dsimp only
  rw [child299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output298_skip, output299_skip]
  kernel_rfl

theorem node301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input301 value235 value1 value2 = (output301, value236, value1) := by
  rw [input301_def, output301_def]
  kernel_rfl

theorem node302_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value233 value1 value2 = (output300, value235, value1))
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value235 value1 value2 = (output301, value236, value1)) : Flapjack.WordAlloc.removeDeadStructural input302 value233 value1 value2 = (output302, value236, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output301_skip]
  kernel_rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value236 value1 value2 = (output303, value237, value1) := by
  rw [input303_def, output303_def]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value237 value1 value2 = (output304, value238, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input305 value238 value1 value2 = (output305, value239, value1) := by
  rw [input305_def, output305_def]
  kernel_rfl

theorem node306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input306 value239 value1 value2 = (output306, value240, value1) := by
  rw [input306_def, output306_def]
  kernel_rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value240 value1 value2 = (output307, value241, value1) := by
  rw [input307_def, output307_def]
  kernel_rfl

theorem node308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input308 value241 value1 value2 = (output308, value242, value1) := by
  rw [input308_def, output308_def]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value242 value1 value2 = (output309, value243, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value243 value1 value2 = (output310, value244, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value244 value1 value2 = (output311, value244, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input312 value244 value1 value2 = (output312, value245, value1) := by
  rw [input312_def, output312_def]
  kernel_rfl

theorem node313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input313 value245 value1 value2 = (output313, value246, value1) := by
  rw [input313_def, output313_def]
  kernel_rfl

theorem node314_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value244 value1 value2 = (output312, value245, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value245 value1 value2 = (output313, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value244 value1 value2 = (output314, value246, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input315 value246 value1 value2 = (output315, value247, value1) := by
  rw [input315_def, output315_def]
  kernel_rfl

theorem node316_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value244 value1 value2 = (output314, value246, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value246 value1 value2 = (output315, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value244 value1 value2 = (output316, value247, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input317 value247 value1 value2 = (output317, value248, value1) := by
  rw [input317_def, output317_def]
  kernel_rfl

theorem node318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input318 value248 value1 value2 = (output318, value249, value1) := by
  rw [input318_def, output318_def]
  kernel_rfl

theorem node319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input319 value249 value1 value2 = (output319, value250, value1) := by
  rw [input319_def, output319_def]
  kernel_rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value250 value1 value2 = (output320, value251, value1) := by
  rw [input320_def, output320_def]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value251 value1 value2 = (output321, value252, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value252 value1 value2 = (output322, value253, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value253 value1 value2 = (output323, value254, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input324 value254 value1 value2 = (output324, value255, value1) := by
  rw [input324_def, output324_def]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value255 value1 value2 = (output325, value255, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value255 value1 value2 = (output326, value256, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input327 value256 value1 value2 = (output327, value257, value1) := by
  rw [input327_def, output327_def]
  kernel_rfl

theorem node328_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value255 value1 value2 = (output326, value256, value1))
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value256 value1 value2 = (output327, value257, value1)) : Flapjack.WordAlloc.removeDeadStructural input328 value255 value1 value2 = (output328, value257, value1) := by
  rw [input328_def, output328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output327_skip]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value257 value1 value2 = (output329, value258, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value255 value1 value2 = (output328, value257, value1))
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value257 value1 value2 = (output329, value258, value1)) : Flapjack.WordAlloc.removeDeadStructural input330 value255 value1 value2 = (output330, value258, value1) := by
  rw [input330_def, output330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output329_skip]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value258 value1 value2 = (output331, value259, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value259 value1 value2 = (output332, value260, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value260 value1 value2 = (output333, value261, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value261 value1 value2 = (output334, value262, value1) := by
  rw [input334_def, output334_def]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value262 value1 value2 = (output335, value263, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value263 value1 value2 = (output336, value264, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input337 value264 value1 value2 = (output337, value265, value1) := by
  rw [input337_def, output337_def]
  kernel_rfl

theorem node338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input338 value265 value1 value2 = (output338, value266, value1) := by
  rw [input338_def, output338_def]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value266 value1 value2 = (output339, value266, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value266 value1 value2 = (output340, value267, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value267 value1 value2 = (output341, value268, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value266 value1 value2 = (output340, value267, value1))
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value267 value1 value2 = (output341, value268, value1)) : Flapjack.WordAlloc.removeDeadStructural input342 value266 value1 value2 = (output342, value268, value1) := by
  rw [input342_def, output342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output341_skip]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value268 value1 value2 = (output343, value269, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value266 value1 value2 = (output342, value268, value1))
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value268 value1 value2 = (output343, value269, value1)) : Flapjack.WordAlloc.removeDeadStructural input344 value266 value1 value2 = (output344, value269, value1) := by
  rw [input344_def, output344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output343_skip]
  kernel_rfl

theorem node345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input345 value269 value1 value2 = (output345, value270, value1) := by
  rw [input345_def, output345_def]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value270 value1 value2 = (output346, value271, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input347 value271 value1 value2 = (output347, value272, value1) := by
  rw [input347_def, output347_def]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value272 value1 value2 = (output348, value273, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value273 value1 value2 = (output349, value274, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input350 value274 value1 value2 = (output350, value275, value1) := by
  rw [input350_def, output350_def]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value275 value1 value2 = (output351, value276, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input352 value276 value1 value2 = (output352, value277, value1) := by
  rw [input352_def, output352_def]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value277 value1 value2 = (output353, value277, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value277 value1 value2 = (output354, value278, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input355 value278 value1 value2 = (output355, value279, value1) := by
  rw [input355_def, output355_def]
  kernel_rfl

theorem node356_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value277 value1 value2 = (output354, value278, value1))
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value278 value1 value2 = (output355, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input356 value277 value1 value2 = (output356, value279, value1) := by
  rw [input356_def, output356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output355_skip]
  kernel_rfl

theorem node357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input357 value279 value1 value2 = (output357, value280, value1) := by
  rw [input357_def, output357_def]
  kernel_rfl

theorem node358_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value277 value1 value2 = (output356, value279, value1))
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value279 value1 value2 = (output357, value280, value1)) : Flapjack.WordAlloc.removeDeadStructural input358 value277 value1 value2 = (output358, value280, value1) := by
  rw [input358_def, output358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output357_skip]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value280 value1 value2 = (output359, value281, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value281 value1 value2 = (output360, value282, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value282 value1 value2 = (output361, value283, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input362 value283 value1 value2 = (output362, value284, value1) := by
  rw [input362_def, output362_def]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value284 value1 value2 = (output363, value285, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value285 value1 value2 = (output364, value286, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input365 value286 value1 value2 = (output365, value287, value1) := by
  rw [input365_def, output365_def]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value287 value1 value2 = (output366, value288, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value288 value1 value2 = (output367, value288, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value288 value1 value2 = (output368, value289, value1) := by
  rw [input368_def, output368_def]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value289 value1 value2 = (output369, value290, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value288 value1 value2 = (output368, value289, value1))
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value289 value1 value2 = (output369, value290, value1)) : Flapjack.WordAlloc.removeDeadStructural input370 value288 value1 value2 = (output370, value290, value1) := by
  rw [input370_def, output370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output369_skip]
  kernel_rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value290 value1 value2 = (output371, value291, value1) := by
  rw [input371_def, output371_def]
  kernel_rfl

theorem node372_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value288 value1 value2 = (output370, value290, value1))
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value290 value1 value2 = (output371, value291, value1)) : Flapjack.WordAlloc.removeDeadStructural input372 value288 value1 value2 = (output372, value291, value1) := by
  rw [input372_def, output372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output371_skip]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value291 value1 value2 = (output373, value292, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input374 value292 value1 value2 = (output374, value293, value1) := by
  rw [input374_def, output374_def]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value293 value1 value2 = (output375, value294, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value294 value1 value2 = (output376, value295, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value295 value1 value2 = (output377, value295, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value295 value1 value2 = (output378, value296, value1) := by
  rw [input378_def, output378_def]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value296 value1 value2 = (output379, value297, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value295 value1 value2 = (output378, value296, value1))
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value296 value1 value2 = (output379, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input380 value295 value1 value2 = (output380, value297, value1) := by
  rw [input380_def, output380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output379_skip]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value297 value1 value2 = (output381, value298, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value295 value1 value2 = (output380, value297, value1))
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value297 value1 value2 = (output381, value298, value1)) : Flapjack.WordAlloc.removeDeadStructural input382 value295 value1 value2 = (output382, value298, value1) := by
  rw [input382_def, output382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output381_skip]
  kernel_rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value298 value1 value2 = (output383, value299, value1) := by
  rw [input383_def, output383_def]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value299 value1 value2 = (output384, value300, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value300 value1 value2 = (output385, value301, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input386 value301 value1 value2 = (output386, value302, value1) := by
  rw [input386_def, output386_def]
  kernel_rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value302 value1 value2 = (output387, value303, value1) := by
  rw [input387_def, output387_def]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value303 value1 value2 = (output388, value304, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value302 value1 value2 = (output387, value303, value1))
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value303 value1 value2 = (output388, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input389 value302 value1 value2 = (output389, value304, value1) := by
  rw [input389_def, output389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output388_skip]
  kernel_rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value304 value1 value2 = (output390, value305, value1) := by
  rw [input390_def, output390_def]
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value305 value1 value2 = (output391, value306, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value304 value1 value2 = (output390, value305, value1))
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value305 value1 value2 = (output391, value306, value1)) : Flapjack.WordAlloc.removeDeadStructural input392 value304 value1 value2 = (output392, value306, value1) := by
  rw [input392_def, output392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output391_skip]
  kernel_rfl

theorem node393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input393 value306 value1 value2 = (output393, value307, value1) := by
  rw [input393_def, output393_def]
  kernel_rfl

theorem node394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input394 value307 value1 value2 = (output394, value308, value1) := by
  rw [input394_def, output394_def]
  kernel_rfl

theorem node395_cond_eq
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value306 value1 value2 = (output393, value307, value1))
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value307 value1 value2 = (output394, value308, value1)) : Flapjack.WordAlloc.removeDeadStructural input395 value306 value1 value2 = (output395, value308, value1) := by
  rw [input395_def, output395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child393]
  try dsimp only
  rw [child394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output393_skip, output394_skip]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value308 value1 value2 = (output396, value309, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value309 value1 value2 = (output397, value310, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value308 value1 value2 = (output396, value309, value1))
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value309 value1 value2 = (output397, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input398 value308 value1 value2 = (output398, value310, value1) := by
  rw [input398_def, output398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output397_skip]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value310 value1 value2 = (output399, value310, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input400 value310 value1 value2 = (output400, value310, value1) := by
  rw [input400_def, output400_def]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value310 value1 value2 = (output401, value310, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input402 value310 value1 value2 = (output402, value310, value1) := by
  rw [input402_def, output402_def]
  kernel_rfl

theorem node403_cond_eq
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value310 value1 value2 = (output401, value310, value1))
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value310 value1 value2 = (output402, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input403 value310 value1 value2 = (output403, value310, value1) := by
  rw [input403_def, output403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child401]
  try dsimp only
  rw [child402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output401_skip, output402_skip]
  kernel_rfl

theorem node404_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value310 value1 value2 = (output400, value310, value1))
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value310 value1 value2 = (output403, value310, value1)) : Flapjack.WordAlloc.removeDeadStructural input404 value310 value1 value2 = (output404, value310, value1) := by
  rw [input404_def, output404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output403_skip]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value310 value1 value2 = (output405, value311, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value311 value1 value2 = (output406, value312, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value312 value1 value2 = (output407, value313, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value313 value1 value2 = (output408, value313, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value313 value1 value2 = (output409, value314, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value314 value1 value2 = (output410, value315, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value315 value1 value2 = (output411, value316, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input412 value316 value1 value2 = (output412, value317, value1) := by
  rw [input412_def, output412_def]
  kernel_rfl

theorem node413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input413 value317 value1 value2 = (output413, value317, value1) := by
  rw [input413_def, output413_def]
  kernel_rfl

theorem node414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input414 value317 value1 value2 = (output414, value318, value1) := by
  rw [input414_def, output414_def]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value318 value1 value2 = (output415, value319, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value319 value1 value2 = (output416, value319, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value318 value1 value2 = (output415, value319, value1))
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value319 value1 value2 = (output416, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input417 value318 value1 value2 = (output417, value319, value1) := by
  rw [input417_def, output417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output416_skip]
  kernel_rfl

theorem node418_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value317 value1 value2 = (output414, value318, value1))
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value318 value1 value2 = (output417, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input418 value317 value1 value2 = (output418, value319, value1) := by
  rw [input418_def, output418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output417_skip]
  kernel_rfl

theorem node419_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value317 value1 value2 = (output413, value317, value1))
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value317 value1 value2 = (output418, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input419 value317 value1 value2 = (output419, value319, value1) := by
  rw [input419_def, output419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output418_skip]
  kernel_rfl

theorem node420_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value316 value1 value2 = (output412, value317, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value317 value1 value2 = (output419, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value316 value1 value2 = (output420, value319, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value315 value1 value2 = (output411, value316, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value316 value1 value2 = (output420, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value315 value1 value2 = (output421, value319, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child411]
  try dsimp only
  rw [child420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output411_skip, output420_skip]
  kernel_rfl

theorem node422_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value314 value1 value2 = (output410, value315, value1))
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value315 value1 value2 = (output421, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input422 value314 value1 value2 = (output422, value319, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output421_skip]
  kernel_rfl

theorem node423_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value313 value1 value2 = (output409, value314, value1))
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value314 value1 value2 = (output422, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input423 value313 value1 value2 = (output423, value319, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output422_skip]
  kernel_rfl

theorem node424_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value313 value1 value2 = (output408, value313, value1))
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value313 value1 value2 = (output423, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input424 value313 value1 value2 = (output424, value319, value1) := by
  rw [input424_def, output424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output423_skip]
  kernel_rfl

theorem node425_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value312 value1 value2 = (output407, value313, value1))
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value313 value1 value2 = (output424, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input425 value312 value1 value2 = (output425, value319, value1) := by
  rw [input425_def, output425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output424_skip]
  kernel_rfl

theorem node426_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value311 value1 value2 = (output406, value312, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value312 value1 value2 = (output425, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value311 value1 value2 = (output426, value319, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value310 value1 value2 = (output405, value311, value1))
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value311 value1 value2 = (output426, value319, value1)) : Flapjack.WordAlloc.removeDeadStructural input427 value310 value1 value2 = (output427, value319, value1) := by
  rw [input427_def, output427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output426_skip]
  kernel_rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value319 value1 value2 = (output428, value320, value1) := by
  rw [input428_def, output428_def]
  kernel_rfl

theorem node429_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value310 value1 value2 = (output427, value319, value1))
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value319 value1 value2 = (output428, value320, value1)) : Flapjack.WordAlloc.removeDeadStructural input429 value310 value1 value2 = (output429, value320, value1) := by
  rw [input429_def, output429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output428_skip]
  kernel_rfl

theorem node430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input430 value320 value1 value2 = (output430, value321, value1) := by
  rw [input430_def, output430_def]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value321 value1 value2 = (output431, value322, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value320 value1 value2 = (output430, value321, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value321 value1 value2 = (output431, value322, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value320 value1 value2 = (output432, value322, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output431_skip]
  kernel_rfl

theorem node433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input433 value322 value1 value2 = (output433, value320, value1) := by
  rw [input433_def, output433_def]
  kernel_rfl

theorem node434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input434 value320 value1 value2 = (output434, value320, value1) := by
  rw [input434_def, output434_def]
  kernel_rfl

theorem node435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input435 value320 value1 value2 = (output435, value323, value1) := by
  rw [input435_def, output435_def]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value323 value1 value2 = (output436, value324, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value320 value1 value2 = (output435, value323, value1))
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value323 value1 value2 = (output436, value324, value1)) : Flapjack.WordAlloc.removeDeadStructural input437 value320 value1 value2 = (output437, value324, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output436_skip]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value324 value1 value2 = (output438, value325, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value320 value1 value2 = (output437, value324, value1))
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value324 value1 value2 = (output438, value325, value1)) : Flapjack.WordAlloc.removeDeadStructural input439 value320 value1 value2 = (output439, value325, value1) := by
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

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value326 value1 value2 = (output441, value326, value1) := by
  rw [input441_def, output441_def]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value326 value1 value2 = (output442, value326, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value326 value1 value2 = (output443, value326, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value326 value1 value2 = (output442, value326, value1))
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value326 value1 value2 = (output443, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input444 value326 value1 value2 = (output444, value326, value1) := by
  rw [input444_def, output444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output443_skip]
  kernel_rfl

theorem node445_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value326 value1 value2 = (output441, value326, value1))
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value326 value1 value2 = (output444, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input445 value326 value1 value2 = (output445, value326, value1) := by
  rw [input445_def, output445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output444_skip]
  kernel_rfl

theorem node446_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value325 value1 value2 = (output440, value326, value1))
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value326 value1 value2 = (output445, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input446 value325 value1 value2 = (output446, value326, value1) := by
  rw [input446_def, output446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output445_skip]
  kernel_rfl

theorem node447_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value320 value1 value2 = (output439, value325, value1))
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value325 value1 value2 = (output446, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input447 value320 value1 value2 = (output447, value326, value1) := by
  rw [input447_def, output447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output446_skip]
  kernel_rfl

theorem node448_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value320 value1 value2 = (output434, value320, value1))
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value320 value1 value2 = (output447, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input448 value320 value1 value2 = (output448, value326, value1) := by
  rw [input448_def, output448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  try dsimp only
  rw [child447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output434_skip, output447_skip]
  kernel_rfl

theorem node449_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value322 value1 value2 = (output433, value320, value1))
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value320 value1 value2 = (output448, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input449 value322 value1 value2 = (output449, value326, value1) := by
  rw [input449_def, output449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output448_skip]
  kernel_rfl

theorem node450_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value320 value1 value2 = (output432, value322, value1))
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value322 value1 value2 = (output449, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input450 value320 value1 value2 = (output450, value326, value1) := by
  rw [input450_def, output450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output449_skip]
  kernel_rfl

theorem node451_cond_eq
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value310 value1 value2 = (output429, value320, value1))
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value320 value1 value2 = (output450, value326, value1)) : Flapjack.WordAlloc.removeDeadStructural input451 value310 value1 value2 = (output451, value326, value1) := by
  rw [input451_def, output451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child429]
  try dsimp only
  rw [child450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output429_skip, output450_skip]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value310 value1 value2 = (output452, value327, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value327 value1 value2 = (output453, value328, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value328 value1 value2 = (output454, value329, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input455 value329 value1 value2 = (output455, value329, value1) := by
  rw [input455_def, output455_def]
  kernel_rfl

theorem node456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input456 value329 value1 value2 = (output456, value330, value1) := by
  rw [input456_def, output456_def]
  kernel_rfl

theorem node457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input457 value330 value1 value2 = (output457, value331, value1) := by
  rw [input457_def, output457_def]
  kernel_rfl

theorem node458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input458 value331 value1 value2 = (output458, value332, value1) := by
  rw [input458_def, output458_def]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value332 value1 value2 = (output459, value333, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value333 value1 value2 = (output460, value333, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value333 value1 value2 = (output461, value334, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value334 value1 value2 = (output462, value335, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value335 value1 value2 = (output463, value335, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value334 value1 value2 = (output462, value335, value1))
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value335 value1 value2 = (output463, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input464 value334 value1 value2 = (output464, value335, value1) := by
  rw [input464_def, output464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output463_skip]
  kernel_rfl

theorem node465_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value333 value1 value2 = (output461, value334, value1))
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value334 value1 value2 = (output464, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input465 value333 value1 value2 = (output465, value335, value1) := by
  rw [input465_def, output465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output464_skip]
  kernel_rfl

theorem node466_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value333 value1 value2 = (output460, value333, value1))
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value333 value1 value2 = (output465, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input466 value333 value1 value2 = (output466, value335, value1) := by
  rw [input466_def, output466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output465_skip]
  kernel_rfl

theorem node467_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value332 value1 value2 = (output459, value333, value1))
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value333 value1 value2 = (output466, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input467 value332 value1 value2 = (output467, value335, value1) := by
  rw [input467_def, output467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output466_skip]
  kernel_rfl

theorem node468_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value331 value1 value2 = (output458, value332, value1))
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value332 value1 value2 = (output467, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input468 value331 value1 value2 = (output468, value335, value1) := by
  rw [input468_def, output468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output467_skip]
  kernel_rfl

theorem node469_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value330 value1 value2 = (output457, value331, value1))
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value331 value1 value2 = (output468, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input469 value330 value1 value2 = (output469, value335, value1) := by
  rw [input469_def, output469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output468_skip]
  kernel_rfl

theorem node470_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value329 value1 value2 = (output456, value330, value1))
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value330 value1 value2 = (output469, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input470 value329 value1 value2 = (output470, value335, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output469_skip]
  kernel_rfl

theorem node471_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value329 value1 value2 = (output455, value329, value1))
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value329 value1 value2 = (output470, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input471 value329 value1 value2 = (output471, value335, value1) := by
  rw [input471_def, output471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output470_skip]
  kernel_rfl

theorem node472_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value328 value1 value2 = (output454, value329, value1))
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value329 value1 value2 = (output471, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input472 value328 value1 value2 = (output472, value335, value1) := by
  rw [input472_def, output472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output471_skip]
  kernel_rfl

theorem node473_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value327 value1 value2 = (output453, value328, value1))
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value328 value1 value2 = (output472, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input473 value327 value1 value2 = (output473, value335, value1) := by
  rw [input473_def, output473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output472_skip]
  kernel_rfl

theorem node474_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value310 value1 value2 = (output452, value327, value1))
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value327 value1 value2 = (output473, value335, value1)) : Flapjack.WordAlloc.removeDeadStructural input474 value310 value1 value2 = (output474, value335, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output473_skip]
  kernel_rfl

theorem node475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input475 value335 value1 value2 = (output475, value336, value1) := by
  rw [input475_def, output475_def]
  kernel_rfl

theorem node476_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value310 value1 value2 = (output474, value335, value1))
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value335 value1 value2 = (output475, value336, value1)) : Flapjack.WordAlloc.removeDeadStructural input476 value310 value1 value2 = (output476, value336, value1) := by
  rw [input476_def, output476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output475_skip]
  kernel_rfl

theorem node477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input477 value336 value1 value2 = (output477, value336, value1) := by
  rw [input477_def, output477_def]
  kernel_rfl

theorem node478_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value310 value1 value2 = (output476, value336, value1))
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value336 value1 value2 = (output477, value336, value1)) : Flapjack.WordAlloc.removeDeadStructural input478 value310 value1 value2 = (output478, value336, value1) := by
  rw [input478_def, output478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output477_skip]
  kernel_rfl

theorem node479_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value310 value1 value2 = (output451, value326, value1))
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value310 value1 value2 = (output478, value336, value1)) : Flapjack.WordAlloc.removeDeadStructural input479 value310 value1 value2 = (output479, value339, value1) := by
  rw [input479_def, output479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child451]
  try dsimp only
  rw [child478]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output478_skip]
  kernel_rfl

theorem node480_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value310 value1 value2 = (output404, value310, value1))
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value310 value1 value2 = (output479, value339, value1)) : Flapjack.WordAlloc.removeDeadStructural input480 value310 value1 value2 = (output480, value339, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output479_skip]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value339 value1 value2 = (output481, value340, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input482 value340 value1 value2 = (output482, value341, value1) := by
  rw [input482_def, output482_def]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value341 value1 value2 = (output483, value341, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value341 value1 value2 = (output484, value342, value1) := by
  rw [input484_def, output484_def]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value342 value1 value2 = (output485, value343, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value341 value1 value2 = (output484, value342, value1))
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value342 value1 value2 = (output485, value343, value1)) : Flapjack.WordAlloc.removeDeadStructural input486 value341 value1 value2 = (output486, value343, value1) := by
  rw [input486_def, output486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output485_skip]
  kernel_rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value343 value1 value2 = (output487, value344, value1) := by
  rw [input487_def, output487_def]
  kernel_rfl

theorem node488_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value341 value1 value2 = (output486, value343, value1))
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value343 value1 value2 = (output487, value344, value1)) : Flapjack.WordAlloc.removeDeadStructural input488 value341 value1 value2 = (output488, value344, value1) := by
  rw [input488_def, output488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output487_skip]
  kernel_rfl

theorem node489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input489 value344 value1 value2 = (output489, value345, value1) := by
  rw [input489_def, output489_def]
  kernel_rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value345 value1 value2 = (output490, value346, value1) := by
  rw [input490_def, output490_def]
  kernel_rfl

theorem node491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input491 value346 value1 value2 = (output491, value347, value1) := by
  rw [input491_def, output491_def]
  kernel_rfl

theorem node492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input492 value347 value1 value2 = (output492, value348, value1) := by
  rw [input492_def, output492_def]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value348 value1 value2 = (output493, value349, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input494 value349 value1 value2 = (output494, value350, value1) := by
  rw [input494_def, output494_def]
  kernel_rfl

theorem node495_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value348 value1 value2 = (output493, value349, value1))
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value349 value1 value2 = (output494, value350, value1)) : Flapjack.WordAlloc.removeDeadStructural input495 value348 value1 value2 = (output495, value350, value1) := by
  rw [input495_def, output495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output494_skip]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value350 value1 value2 = (output496, value351, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value351 value1 value2 = (output497, value352, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value350 value1 value2 = (output496, value351, value1))
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value351 value1 value2 = (output497, value352, value1)) : Flapjack.WordAlloc.removeDeadStructural input498 value350 value1 value2 = (output498, value352, value1) := by
  rw [input498_def, output498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output497_skip]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value352 value1 value2 = (output499, value353, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input500 value353 value1 value2 = (output500, value354, value1) := by
  rw [input500_def, output500_def]
  kernel_rfl

theorem node501_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value352 value1 value2 = (output499, value353, value1))
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value353 value1 value2 = (output500, value354, value1)) : Flapjack.WordAlloc.removeDeadStructural input501 value352 value1 value2 = (output501, value354, value1) := by
  rw [input501_def, output501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  try dsimp only
  rw [child500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output499_skip, output500_skip]
  kernel_rfl

theorem node502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input502 value354 value1 value2 = (output502, value355, value1) := by
  rw [input502_def, output502_def]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value355 value1 value2 = (output503, value356, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value354 value1 value2 = (output502, value355, value1))
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value355 value1 value2 = (output503, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input504 value354 value1 value2 = (output504, value356, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output503_skip]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value356 value1 value2 = (output505, value356, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value356 value1 value2 = (output506, value356, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value356 value1 value2 = (output507, value356, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value356 value1 value2 = (output508, value356, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value356 value1 value2 = (output507, value356, value1))
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value356 value1 value2 = (output508, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input509 value356 value1 value2 = (output509, value356, value1) := by
  rw [input509_def, output509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output508_skip]
  kernel_rfl

theorem node510_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value356 value1 value2 = (output506, value356, value1))
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value356 value1 value2 = (output509, value356, value1)) : Flapjack.WordAlloc.removeDeadStructural input510 value356 value1 value2 = (output510, value356, value1) := by
  rw [input510_def, output510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output509_skip]
  kernel_rfl

theorem node511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input511 value356 value1 value2 = (output511, value356, value1) := by
  rw [input511_def, output511_def]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages651.Parallel
