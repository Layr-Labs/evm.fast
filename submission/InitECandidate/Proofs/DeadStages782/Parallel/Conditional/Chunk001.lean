import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages782.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages782.Parallel
theorem node256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input256 value210 value1 value2 = (output256, value211, value1) := by
  rw [input256_def, output256_def]
  kernel_rfl

theorem node257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input257 value211 value1 value2 = (output257, value212, value1) := by
  rw [input257_def, output257_def]
  kernel_rfl

theorem node258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input258 value212 value1 value2 = (output258, value213, value1) := by
  rw [input258_def, output258_def]
  kernel_rfl

theorem node259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input259 value213 value1 value2 = (output259, value214, value1) := by
  rw [input259_def, output259_def]
  kernel_rfl

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value214 value1 value2 = (output260, value215, value1) := by
  rw [input260_def, output260_def]
  kernel_rfl

theorem node261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input261 value215 value1 value2 = (output261, value216, value1) := by
  rw [input261_def, output261_def]
  kernel_rfl

theorem node262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input262 value216 value1 value2 = (output262, value217, value1) := by
  rw [input262_def, output262_def]
  kernel_rfl

theorem node263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input263 value217 value1 value2 = (output263, value217, value1) := by
  rw [input263_def, output263_def]
  kernel_rfl

theorem node264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input264 value217 value1 value2 = (output264, value218, value1) := by
  rw [input264_def, output264_def]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value218 value1 value2 = (output265, value219, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value217 value1 value2 = (output264, value218, value1))
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value218 value1 value2 = (output265, value219, value1)) : Flapjack.WordAlloc.removeDeadStructural input266 value217 value1 value2 = (output266, value219, value1) := by
  rw [input266_def, output266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output265_skip]
  kernel_rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value219 value1 value2 = (output267, value220, value1) := by
  rw [input267_def, output267_def]
  kernel_rfl

theorem node268_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value217 value1 value2 = (output266, value219, value1))
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value219 value1 value2 = (output267, value220, value1)) : Flapjack.WordAlloc.removeDeadStructural input268 value217 value1 value2 = (output268, value220, value1) := by
  rw [input268_def, output268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output267_skip]
  kernel_rfl

theorem node269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input269 value220 value1 value2 = (output269, value221, value1) := by
  rw [input269_def, output269_def]
  kernel_rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value221 value1 value2 = (output270, value222, value1) := by
  rw [input270_def, output270_def]
  kernel_rfl

theorem node271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input271 value222 value1 value2 = (output271, value223, value1) := by
  rw [input271_def, output271_def]
  kernel_rfl

theorem node272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input272 value223 value1 value2 = (output272, value224, value1) := by
  rw [input272_def, output272_def]
  kernel_rfl

theorem node273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input273 value224 value1 value2 = (output273, value225, value1) := by
  rw [input273_def, output273_def]
  kernel_rfl

theorem node274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input274 value225 value1 value2 = (output274, value226, value1) := by
  rw [input274_def, output274_def]
  kernel_rfl

theorem node275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input275 value226 value1 value2 = (output275, value226, value1) := by
  rw [input275_def, output275_def]
  kernel_rfl

theorem node276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input276 value226 value1 value2 = (output276, value227, value1) := by
  rw [input276_def, output276_def]
  kernel_rfl

theorem node277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input277 value227 value1 value2 = (output277, value228, value1) := by
  rw [input277_def, output277_def]
  kernel_rfl

theorem node278_cond_eq
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value226 value1 value2 = (output276, value227, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value227 value1 value2 = (output277, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value226 value1 value2 = (output278, value228, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child276]
  try dsimp only
  rw [child277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output276_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input279 value228 value1 value2 = (output279, value229, value1) := by
  rw [input279_def, output279_def]
  kernel_rfl

theorem node280_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value226 value1 value2 = (output278, value228, value1))
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value228 value1 value2 = (output279, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input280 value226 value1 value2 = (output280, value229, value1) := by
  rw [input280_def, output280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output279_skip]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value229 value1 value2 = (output281, value230, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value230 value1 value2 = (output282, value231, value1) := by
  rw [input282_def, output282_def]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value231 value1 value2 = (output283, value232, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value232 value1 value2 = (output284, value233, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value233 value1 value2 = (output285, value234, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value234 value1 value2 = (output286, value235, value1) := by
  rw [input286_def, output286_def]
  kernel_rfl

theorem node287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input287 value235 value1 value2 = (output287, value236, value1) := by
  rw [input287_def, output287_def]
  kernel_rfl

theorem node288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input288 value236 value1 value2 = (output288, value237, value1) := by
  rw [input288_def, output288_def]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value237 value1 value2 = (output289, value238, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input290 value238 value1 value2 = (output290, value239, value1) := by
  rw [input290_def, output290_def]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value239 value1 value2 = (output291, value240, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value240 value1 value2 = (output292, value241, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input293 value241 value1 value2 = (output293, value241, value1) := by
  rw [input293_def, output293_def]
  kernel_rfl

theorem node294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input294 value241 value1 value2 = (output294, value242, value1) := by
  rw [input294_def, output294_def]
  kernel_rfl

theorem node295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input295 value242 value1 value2 = (output295, value243, value1) := by
  rw [input295_def, output295_def]
  kernel_rfl

theorem node296_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value241 value1 value2 = (output294, value242, value1))
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value242 value1 value2 = (output295, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input296 value241 value1 value2 = (output296, value243, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  try dsimp only
  rw [child295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output294_skip, output295_skip]
  kernel_rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value243 value1 value2 = (output297, value244, value1) := by
  rw [input297_def, output297_def]
  kernel_rfl

theorem node298_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value241 value1 value2 = (output296, value243, value1))
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value243 value1 value2 = (output297, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input298 value241 value1 value2 = (output298, value244, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output297_skip]
  kernel_rfl

theorem node299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input299 value244 value1 value2 = (output299, value245, value1) := by
  rw [input299_def, output299_def]
  kernel_rfl

theorem node300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input300 value245 value1 value2 = (output300, value246, value1) := by
  rw [input300_def, output300_def]
  kernel_rfl

theorem node301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input301 value246 value1 value2 = (output301, value247, value1) := by
  rw [input301_def, output301_def]
  kernel_rfl

theorem node302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input302 value247 value1 value2 = (output302, value248, value1) := by
  rw [input302_def, output302_def]
  kernel_rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value248 value1 value2 = (output303, value249, value1) := by
  rw [input303_def, output303_def]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value249 value1 value2 = (output304, value250, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input305 value250 value1 value2 = (output305, value251, value1) := by
  rw [input305_def, output305_def]
  kernel_rfl

theorem node306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input306 value251 value1 value2 = (output306, value252, value1) := by
  rw [input306_def, output306_def]
  kernel_rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value252 value1 value2 = (output307, value253, value1) := by
  rw [input307_def, output307_def]
  kernel_rfl

theorem node308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input308 value253 value1 value2 = (output308, value254, value1) := by
  rw [input308_def, output308_def]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value254 value1 value2 = (output309, value255, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value255 value1 value2 = (output310, value256, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value256 value1 value2 = (output311, value256, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input312 value256 value1 value2 = (output312, value257, value1) := by
  rw [input312_def, output312_def]
  kernel_rfl

theorem node313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input313 value257 value1 value2 = (output313, value258, value1) := by
  rw [input313_def, output313_def]
  kernel_rfl

theorem node314_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value256 value1 value2 = (output312, value257, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value257 value1 value2 = (output313, value258, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value256 value1 value2 = (output314, value258, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input315 value258 value1 value2 = (output315, value259, value1) := by
  rw [input315_def, output315_def]
  kernel_rfl

theorem node316_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value256 value1 value2 = (output314, value258, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value258 value1 value2 = (output315, value259, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value256 value1 value2 = (output316, value259, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input317 value259 value1 value2 = (output317, value260, value1) := by
  rw [input317_def, output317_def]
  kernel_rfl

theorem node318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input318 value260 value1 value2 = (output318, value261, value1) := by
  rw [input318_def, output318_def]
  kernel_rfl

theorem node319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input319 value261 value1 value2 = (output319, value262, value1) := by
  rw [input319_def, output319_def]
  kernel_rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value262 value1 value2 = (output320, value263, value1) := by
  rw [input320_def, output320_def]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value263 value1 value2 = (output321, value264, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value264 value1 value2 = (output322, value265, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value265 value1 value2 = (output323, value266, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input324 value266 value1 value2 = (output324, value267, value1) := by
  rw [input324_def, output324_def]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value267 value1 value2 = (output325, value268, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value268 value1 value2 = (output326, value269, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input327 value269 value1 value2 = (output327, value270, value1) := by
  rw [input327_def, output327_def]
  kernel_rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value270 value1 value2 = (output328, value271, value1) := by
  rw [input328_def, output328_def]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value271 value1 value2 = (output329, value271, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value271 value1 value2 = (output330, value272, value1) := by
  rw [input330_def, output330_def]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value272 value1 value2 = (output331, value273, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value271 value1 value2 = (output330, value272, value1))
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value272 value1 value2 = (output331, value273, value1)) : Flapjack.WordAlloc.removeDeadStructural input332 value271 value1 value2 = (output332, value273, value1) := by
  rw [input332_def, output332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output331_skip]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value273 value1 value2 = (output333, value274, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value271 value1 value2 = (output332, value273, value1))
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value273 value1 value2 = (output333, value274, value1)) : Flapjack.WordAlloc.removeDeadStructural input334 value271 value1 value2 = (output334, value274, value1) := by
  rw [input334_def, output334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output333_skip]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value274 value1 value2 = (output335, value275, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value275 value1 value2 = (output336, value276, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input337 value276 value1 value2 = (output337, value277, value1) := by
  rw [input337_def, output337_def]
  kernel_rfl

theorem node338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input338 value277 value1 value2 = (output338, value278, value1) := by
  rw [input338_def, output338_def]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value278 value1 value2 = (output339, value279, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value279 value1 value2 = (output340, value280, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value280 value1 value2 = (output341, value281, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value281 value1 value2 = (output342, value282, value1) := by
  rw [input342_def, output342_def]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value282 value1 value2 = (output343, value283, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input344 value283 value1 value2 = (output344, value284, value1) := by
  rw [input344_def, output344_def]
  kernel_rfl

theorem node345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input345 value284 value1 value2 = (output345, value285, value1) := by
  rw [input345_def, output345_def]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value285 value1 value2 = (output346, value286, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input347 value286 value1 value2 = (output347, value286, value1) := by
  rw [input347_def, output347_def]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value286 value1 value2 = (output348, value287, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value287 value1 value2 = (output349, value288, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value286 value1 value2 = (output348, value287, value1))
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value287 value1 value2 = (output349, value288, value1)) : Flapjack.WordAlloc.removeDeadStructural input350 value286 value1 value2 = (output350, value288, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output349_skip]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value288 value1 value2 = (output351, value289, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value286 value1 value2 = (output350, value288, value1))
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value288 value1 value2 = (output351, value289, value1)) : Flapjack.WordAlloc.removeDeadStructural input352 value286 value1 value2 = (output352, value289, value1) := by
  rw [input352_def, output352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output351_skip]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value289 value1 value2 = (output353, value290, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value290 value1 value2 = (output354, value291, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input355 value291 value1 value2 = (output355, value292, value1) := by
  rw [input355_def, output355_def]
  kernel_rfl

theorem node356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input356 value292 value1 value2 = (output356, value293, value1) := by
  rw [input356_def, output356_def]
  kernel_rfl

theorem node357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input357 value293 value1 value2 = (output357, value294, value1) := by
  rw [input357_def, output357_def]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value294 value1 value2 = (output358, value295, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value295 value1 value2 = (output359, value295, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value295 value1 value2 = (output360, value296, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value296 value1 value2 = (output361, value297, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value295 value1 value2 = (output360, value296, value1))
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value296 value1 value2 = (output361, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input362 value295 value1 value2 = (output362, value297, value1) := by
  rw [input362_def, output362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output361_skip]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value297 value1 value2 = (output363, value298, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value295 value1 value2 = (output362, value297, value1))
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value297 value1 value2 = (output363, value298, value1)) : Flapjack.WordAlloc.removeDeadStructural input364 value295 value1 value2 = (output364, value298, value1) := by
  rw [input364_def, output364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output363_skip]
  kernel_rfl

theorem node365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input365 value298 value1 value2 = (output365, value299, value1) := by
  rw [input365_def, output365_def]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value299 value1 value2 = (output366, value300, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value300 value1 value2 = (output367, value301, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value301 value1 value2 = (output368, value302, value1) := by
  rw [input368_def, output368_def]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value302 value1 value2 = (output369, value303, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value303 value1 value2 = (output370, value304, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value304 value1 value2 = (output371, value305, value1) := by
  rw [input371_def, output371_def]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value305 value1 value2 = (output372, value306, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value306 value1 value2 = (output373, value307, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input374 value307 value1 value2 = (output374, value308, value1) := by
  rw [input374_def, output374_def]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value308 value1 value2 = (output375, value309, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value309 value1 value2 = (output376, value310, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value310 value1 value2 = (output377, value310, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value310 value1 value2 = (output378, value311, value1) := by
  rw [input378_def, output378_def]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value311 value1 value2 = (output379, value312, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value310 value1 value2 = (output378, value311, value1))
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value311 value1 value2 = (output379, value312, value1)) : Flapjack.WordAlloc.removeDeadStructural input380 value310 value1 value2 = (output380, value312, value1) := by
  rw [input380_def, output380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output379_skip]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value312 value1 value2 = (output381, value313, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value310 value1 value2 = (output380, value312, value1))
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value312 value1 value2 = (output381, value313, value1)) : Flapjack.WordAlloc.removeDeadStructural input382 value310 value1 value2 = (output382, value313, value1) := by
  rw [input382_def, output382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output381_skip]
  kernel_rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value313 value1 value2 = (output383, value314, value1) := by
  rw [input383_def, output383_def]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value314 value1 value2 = (output384, value315, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value315 value1 value2 = (output385, value316, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input386 value316 value1 value2 = (output386, value317, value1) := by
  rw [input386_def, output386_def]
  kernel_rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value317 value1 value2 = (output387, value318, value1) := by
  rw [input387_def, output387_def]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value318 value1 value2 = (output388, value319, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input389 value319 value1 value2 = (output389, value319, value1) := by
  rw [input389_def, output389_def]
  kernel_rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value319 value1 value2 = (output390, value320, value1) := by
  rw [input390_def, output390_def]
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value320 value1 value2 = (output391, value321, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value319 value1 value2 = (output390, value320, value1))
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value320 value1 value2 = (output391, value321, value1)) : Flapjack.WordAlloc.removeDeadStructural input392 value319 value1 value2 = (output392, value321, value1) := by
  rw [input392_def, output392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output391_skip]
  kernel_rfl

theorem node393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input393 value321 value1 value2 = (output393, value322, value1) := by
  rw [input393_def, output393_def]
  kernel_rfl

theorem node394_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value319 value1 value2 = (output392, value321, value1))
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value321 value1 value2 = (output393, value322, value1)) : Flapjack.WordAlloc.removeDeadStructural input394 value319 value1 value2 = (output394, value322, value1) := by
  rw [input394_def, output394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output393_skip]
  kernel_rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value322 value1 value2 = (output395, value323, value1) := by
  rw [input395_def, output395_def]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value323 value1 value2 = (output396, value324, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value324 value1 value2 = (output397, value325, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input398 value325 value1 value2 = (output398, value326, value1) := by
  rw [input398_def, output398_def]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value326 value1 value2 = (output399, value327, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input400 value327 value1 value2 = (output400, value328, value1) := by
  rw [input400_def, output400_def]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value328 value1 value2 = (output401, value329, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input402 value329 value1 value2 = (output402, value330, value1) := by
  rw [input402_def, output402_def]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value330 value1 value2 = (output403, value331, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value331 value1 value2 = (output404, value332, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value332 value1 value2 = (output405, value333, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value333 value1 value2 = (output406, value334, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value334 value1 value2 = (output407, value334, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value334 value1 value2 = (output408, value335, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value335 value1 value2 = (output409, value336, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value334 value1 value2 = (output408, value335, value1))
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value335 value1 value2 = (output409, value336, value1)) : Flapjack.WordAlloc.removeDeadStructural input410 value334 value1 value2 = (output410, value336, value1) := by
  rw [input410_def, output410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output409_skip]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value336 value1 value2 = (output411, value337, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value334 value1 value2 = (output410, value336, value1))
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value336 value1 value2 = (output411, value337, value1)) : Flapjack.WordAlloc.removeDeadStructural input412 value334 value1 value2 = (output412, value337, value1) := by
  rw [input412_def, output412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output411_skip]
  kernel_rfl

theorem node413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input413 value337 value1 value2 = (output413, value338, value1) := by
  rw [input413_def, output413_def]
  kernel_rfl

theorem node414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input414 value338 value1 value2 = (output414, value339, value1) := by
  rw [input414_def, output414_def]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value339 value1 value2 = (output415, value340, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value340 value1 value2 = (output416, value341, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input417 value341 value1 value2 = (output417, value342, value1) := by
  rw [input417_def, output417_def]
  kernel_rfl

theorem node418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input418 value342 value1 value2 = (output418, value343, value1) := by
  rw [input418_def, output418_def]
  kernel_rfl

theorem node419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input419 value343 value1 value2 = (output419, value344, value1) := by
  rw [input419_def, output419_def]
  kernel_rfl

theorem node420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input420 value344 value1 value2 = (output420, value345, value1) := by
  rw [input420_def, output420_def]
  kernel_rfl

theorem node421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input421 value345 value1 value2 = (output421, value346, value1) := by
  rw [input421_def, output421_def]
  kernel_rfl

theorem node422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input422 value346 value1 value2 = (output422, value347, value1) := by
  rw [input422_def, output422_def]
  kernel_rfl

theorem node423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input423 value347 value1 value2 = (output423, value348, value1) := by
  rw [input423_def, output423_def]
  kernel_rfl

theorem node424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input424 value348 value1 value2 = (output424, value349, value1) := by
  rw [input424_def, output424_def]
  kernel_rfl

theorem node425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input425 value349 value1 value2 = (output425, value349, value1) := by
  rw [input425_def, output425_def]
  kernel_rfl

theorem node426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input426 value349 value1 value2 = (output426, value350, value1) := by
  rw [input426_def, output426_def]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value350 value1 value2 = (output427, value351, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value349 value1 value2 = (output426, value350, value1))
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value350 value1 value2 = (output427, value351, value1)) : Flapjack.WordAlloc.removeDeadStructural input428 value349 value1 value2 = (output428, value351, value1) := by
  rw [input428_def, output428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output427_skip]
  kernel_rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value351 value1 value2 = (output429, value352, value1) := by
  rw [input429_def, output429_def]
  kernel_rfl

theorem node430_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value349 value1 value2 = (output428, value351, value1))
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value351 value1 value2 = (output429, value352, value1)) : Flapjack.WordAlloc.removeDeadStructural input430 value349 value1 value2 = (output430, value352, value1) := by
  rw [input430_def, output430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output429_skip]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value352 value1 value2 = (output431, value353, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input432 value353 value1 value2 = (output432, value354, value1) := by
  rw [input432_def, output432_def]
  kernel_rfl

theorem node433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input433 value354 value1 value2 = (output433, value355, value1) := by
  rw [input433_def, output433_def]
  kernel_rfl

theorem node434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input434 value355 value1 value2 = (output434, value356, value1) := by
  rw [input434_def, output434_def]
  kernel_rfl

theorem node435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input435 value356 value1 value2 = (output435, value357, value1) := by
  rw [input435_def, output435_def]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value357 value1 value2 = (output436, value358, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input437 value358 value1 value2 = (output437, value359, value1) := by
  rw [input437_def, output437_def]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value359 value1 value2 = (output438, value360, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input439 value360 value1 value2 = (output439, value361, value1) := by
  rw [input439_def, output439_def]
  kernel_rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value361 value1 value2 = (output440, value362, value1) := by
  rw [input440_def, output440_def]
  kernel_rfl

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value362 value1 value2 = (output441, value363, value1) := by
  rw [input441_def, output441_def]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value363 value1 value2 = (output442, value364, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value364 value1 value2 = (output443, value364, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input444 value364 value1 value2 = (output444, value365, value1) := by
  rw [input444_def, output444_def]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value365 value1 value2 = (output445, value366, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value364 value1 value2 = (output444, value365, value1))
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value365 value1 value2 = (output445, value366, value1)) : Flapjack.WordAlloc.removeDeadStructural input446 value364 value1 value2 = (output446, value366, value1) := by
  rw [input446_def, output446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output445_skip]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value366 value1 value2 = (output447, value367, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value364 value1 value2 = (output446, value366, value1))
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value366 value1 value2 = (output447, value367, value1)) : Flapjack.WordAlloc.removeDeadStructural input448 value364 value1 value2 = (output448, value367, value1) := by
  rw [input448_def, output448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output447_skip]
  kernel_rfl

theorem node449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input449 value367 value1 value2 = (output449, value368, value1) := by
  rw [input449_def, output449_def]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value368 value1 value2 = (output450, value369, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value369 value1 value2 = (output451, value370, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value370 value1 value2 = (output452, value371, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value371 value1 value2 = (output453, value372, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value372 value1 value2 = (output454, value373, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input455 value373 value1 value2 = (output455, value374, value1) := by
  rw [input455_def, output455_def]
  kernel_rfl

theorem node456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input456 value374 value1 value2 = (output456, value375, value1) := by
  rw [input456_def, output456_def]
  kernel_rfl

theorem node457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input457 value375 value1 value2 = (output457, value376, value1) := by
  rw [input457_def, output457_def]
  kernel_rfl

theorem node458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input458 value376 value1 value2 = (output458, value377, value1) := by
  rw [input458_def, output458_def]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value377 value1 value2 = (output459, value378, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value378 value1 value2 = (output460, value379, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value379 value1 value2 = (output461, value379, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value379 value1 value2 = (output462, value380, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value380 value1 value2 = (output463, value381, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value379 value1 value2 = (output462, value380, value1))
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value380 value1 value2 = (output463, value381, value1)) : Flapjack.WordAlloc.removeDeadStructural input464 value379 value1 value2 = (output464, value381, value1) := by
  rw [input464_def, output464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output463_skip]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value381 value1 value2 = (output465, value382, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value379 value1 value2 = (output464, value381, value1))
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value381 value1 value2 = (output465, value382, value1)) : Flapjack.WordAlloc.removeDeadStructural input466 value379 value1 value2 = (output466, value382, value1) := by
  rw [input466_def, output466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output465_skip]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value382 value1 value2 = (output467, value383, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input468 value383 value1 value2 = (output468, value384, value1) := by
  rw [input468_def, output468_def]
  kernel_rfl

theorem node469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input469 value384 value1 value2 = (output469, value385, value1) := by
  rw [input469_def, output469_def]
  kernel_rfl

theorem node470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input470 value385 value1 value2 = (output470, value386, value1) := by
  rw [input470_def, output470_def]
  kernel_rfl

theorem node471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input471 value386 value1 value2 = (output471, value387, value1) := by
  rw [input471_def, output471_def]
  kernel_rfl

theorem node472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input472 value387 value1 value2 = (output472, value388, value1) := by
  rw [input472_def, output472_def]
  kernel_rfl

theorem node473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input473 value388 value1 value2 = (output473, value389, value1) := by
  rw [input473_def, output473_def]
  kernel_rfl

theorem node474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input474 value389 value1 value2 = (output474, value390, value1) := by
  rw [input474_def, output474_def]
  kernel_rfl

theorem node475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input475 value390 value1 value2 = (output475, value391, value1) := by
  rw [input475_def, output475_def]
  kernel_rfl

theorem node476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input476 value391 value1 value2 = (output476, value392, value1) := by
  rw [input476_def, output476_def]
  kernel_rfl

theorem node477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input477 value392 value1 value2 = (output477, value393, value1) := by
  rw [input477_def, output477_def]
  kernel_rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value393 value1 value2 = (output478, value394, value1) := by
  rw [input478_def, output478_def]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value394 value1 value2 = (output479, value394, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input480 value394 value1 value2 = (output480, value395, value1) := by
  rw [input480_def, output480_def]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value395 value1 value2 = (output481, value396, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value394 value1 value2 = (output480, value395, value1))
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value395 value1 value2 = (output481, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input482 value394 value1 value2 = (output482, value396, value1) := by
  rw [input482_def, output482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child480]
  try dsimp only
  rw [child481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output481_skip]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value396 value1 value2 = (output483, value397, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value394 value1 value2 = (output482, value396, value1))
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value396 value1 value2 = (output483, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input484 value394 value1 value2 = (output484, value397, value1) := by
  rw [input484_def, output484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output483_skip]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value397 value1 value2 = (output485, value398, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value398 value1 value2 = (output486, value399, value1) := by
  rw [input486_def, output486_def]
  kernel_rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value399 value1 value2 = (output487, value400, value1) := by
  rw [input487_def, output487_def]
  kernel_rfl

theorem node488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input488 value400 value1 value2 = (output488, value401, value1) := by
  rw [input488_def, output488_def]
  kernel_rfl

theorem node489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input489 value401 value1 value2 = (output489, value402, value1) := by
  rw [input489_def, output489_def]
  kernel_rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value402 value1 value2 = (output490, value403, value1) := by
  rw [input490_def, output490_def]
  kernel_rfl

theorem node491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input491 value403 value1 value2 = (output491, value404, value1) := by
  rw [input491_def, output491_def]
  kernel_rfl

theorem node492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input492 value404 value1 value2 = (output492, value405, value1) := by
  rw [input492_def, output492_def]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value405 value1 value2 = (output493, value406, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input494 value406 value1 value2 = (output494, value407, value1) := by
  rw [input494_def, output494_def]
  kernel_rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value407 value1 value2 = (output495, value408, value1) := by
  rw [input495_def, output495_def]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value408 value1 value2 = (output496, value409, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value409 value1 value2 = (output497, value409, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input498 value409 value1 value2 = (output498, value410, value1) := by
  rw [input498_def, output498_def]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value410 value1 value2 = (output499, value411, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value409 value1 value2 = (output498, value410, value1))
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value410 value1 value2 = (output499, value411, value1)) : Flapjack.WordAlloc.removeDeadStructural input500 value409 value1 value2 = (output500, value411, value1) := by
  rw [input500_def, output500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output499_skip]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value411 value1 value2 = (output501, value412, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value409 value1 value2 = (output500, value411, value1))
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value411 value1 value2 = (output501, value412, value1)) : Flapjack.WordAlloc.removeDeadStructural input502 value409 value1 value2 = (output502, value412, value1) := by
  rw [input502_def, output502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  try dsimp only
  rw [child501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output500_skip, output501_skip]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value412 value1 value2 = (output503, value413, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input504 value413 value1 value2 = (output504, value414, value1) := by
  rw [input504_def, output504_def]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value414 value1 value2 = (output505, value415, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value415 value1 value2 = (output506, value416, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value416 value1 value2 = (output507, value417, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value417 value1 value2 = (output508, value418, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value418 value1 value2 = (output509, value419, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input510 value419 value1 value2 = (output510, value420, value1) := by
  rw [input510_def, output510_def]
  kernel_rfl

theorem node511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input511 value420 value1 value2 = (output511, value421, value1) := by
  rw [input511_def, output511_def]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages782.Parallel
