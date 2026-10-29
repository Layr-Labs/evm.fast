import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages810.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages810.Parallel
theorem node256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input256 value202 value1 value2 = (output256, value203, value1) := by
  rw [input256_def, output256_def]
  kernel_rfl

theorem node257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input257 value203 value1 value2 = (output257, value204, value1) := by
  rw [input257_def, output257_def]
  kernel_rfl

theorem node258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input258 value204 value1 value2 = (output258, value204, value1) := by
  rw [input258_def, output258_def]
  kernel_rfl

theorem node259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input259 value204 value1 value2 = (output259, value205, value1) := by
  rw [input259_def, output259_def]
  kernel_rfl

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value205 value1 value2 = (output260, value206, value1) := by
  rw [input260_def, output260_def]
  kernel_rfl

theorem node261_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value204 value1 value2 = (output259, value205, value1))
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value205 value1 value2 = (output260, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input261 value204 value1 value2 = (output261, value206, value1) := by
  rw [input261_def, output261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output260_skip]
  kernel_rfl

theorem node262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input262 value206 value1 value2 = (output262, value207, value1) := by
  rw [input262_def, output262_def]
  kernel_rfl

theorem node263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input263 value207 value1 value2 = (output263, value208, value1) := by
  rw [input263_def, output263_def]
  kernel_rfl

theorem node264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input264 value208 value1 value2 = (output264, value209, value1) := by
  rw [input264_def, output264_def]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value209 value1 value2 = (output265, value210, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value208 value1 value2 = (output264, value209, value1))
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value209 value1 value2 = (output265, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input266 value208 value1 value2 = (output266, value210, value1) := by
  rw [input266_def, output266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output265_skip]
  kernel_rfl

theorem node267_cond_eq
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value207 value1 value2 = (output263, value208, value1))
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value208 value1 value2 = (output266, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input267 value207 value1 value2 = (output267, value210, value1) := by
  rw [input267_def, output267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child263]
  try dsimp only
  rw [child266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output263_skip, output266_skip]
  kernel_rfl

theorem node268_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value206 value1 value2 = (output262, value207, value1))
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value207 value1 value2 = (output267, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input268 value206 value1 value2 = (output268, value210, value1) := by
  rw [input268_def, output268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output267_skip]
  kernel_rfl

theorem node269_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value204 value1 value2 = (output261, value206, value1))
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value206 value1 value2 = (output268, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input269 value204 value1 value2 = (output269, value210, value1) := by
  rw [input269_def, output269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output268_skip]
  kernel_rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value210 value1 value2 = (output270, value210, value1) := by
  rw [input270_def, output270_def]
  kernel_rfl

theorem node271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input271 value210 value1 value2 = (output271, value211, value1) := by
  rw [input271_def, output271_def]
  kernel_rfl

theorem node272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input272 value211 value1 value2 = (output272, value212, value1) := by
  rw [input272_def, output272_def]
  kernel_rfl

theorem node273_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value210 value1 value2 = (output271, value211, value1))
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value211 value1 value2 = (output272, value212, value1)) : Flapjack.WordAlloc.removeDeadStructural input273 value210 value1 value2 = (output273, value212, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output272_skip]
  kernel_rfl

theorem node274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input274 value212 value1 value2 = (output274, value213, value1) := by
  rw [input274_def, output274_def]
  kernel_rfl

theorem node275_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value210 value1 value2 = (output273, value212, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value212 value1 value2 = (output274, value213, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value210 value1 value2 = (output275, value213, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input276 value213 value1 value2 = (output276, value214, value1) := by
  rw [input276_def, output276_def]
  kernel_rfl

theorem node277_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value210 value1 value2 = (output275, value213, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value213 value1 value2 = (output276, value214, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value210 value1 value2 = (output277, value214, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input278 value214 value1 value2 = (output278, value215, value1) := by
  rw [input278_def, output278_def]
  kernel_rfl

theorem node279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input279 value215 value1 value2 = (output279, value216, value1) := by
  rw [input279_def, output279_def]
  kernel_rfl

theorem node280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input280 value216 value1 value2 = (output280, value217, value1) := by
  rw [input280_def, output280_def]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value217 value1 value2 = (output281, value218, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value218 value1 value2 = (output282, value219, value1) := by
  rw [input282_def, output282_def]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value219 value1 value2 = (output283, value220, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value220 value1 value2 = (output284, value221, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value221 value1 value2 = (output285, value221, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value221 value1 value2 = (output286, value222, value1) := by
  rw [input286_def, output286_def]
  kernel_rfl

theorem node287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input287 value222 value1 value2 = (output287, value223, value1) := by
  rw [input287_def, output287_def]
  kernel_rfl

theorem node288_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value221 value1 value2 = (output286, value222, value1))
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value222 value1 value2 = (output287, value223, value1)) : Flapjack.WordAlloc.removeDeadStructural input288 value221 value1 value2 = (output288, value223, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output287_skip]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value223 value1 value2 = (output289, value224, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input290 value224 value1 value2 = (output290, value225, value1) := by
  rw [input290_def, output290_def]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value225 value1 value2 = (output291, value226, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value226 value1 value2 = (output292, value227, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value225 value1 value2 = (output291, value226, value1))
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value226 value1 value2 = (output292, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input293 value225 value1 value2 = (output293, value227, value1) := by
  rw [input293_def, output293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output292_skip]
  kernel_rfl

theorem node294_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value224 value1 value2 = (output290, value225, value1))
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value225 value1 value2 = (output293, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input294 value224 value1 value2 = (output294, value227, value1) := by
  rw [input294_def, output294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output293_skip]
  kernel_rfl

theorem node295_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value223 value1 value2 = (output289, value224, value1))
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value224 value1 value2 = (output294, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input295 value223 value1 value2 = (output295, value227, value1) := by
  rw [input295_def, output295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output294_skip]
  kernel_rfl

theorem node296_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value221 value1 value2 = (output288, value223, value1))
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value223 value1 value2 = (output295, value227, value1)) : Flapjack.WordAlloc.removeDeadStructural input296 value221 value1 value2 = (output296, value227, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output295_skip]
  kernel_rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value227 value1 value2 = (output297, value227, value1) := by
  rw [input297_def, output297_def]
  kernel_rfl

theorem node298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input298 value227 value1 value2 = (output298, value228, value1) := by
  rw [input298_def, output298_def]
  kernel_rfl

theorem node299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input299 value228 value1 value2 = (output299, value229, value1) := by
  rw [input299_def, output299_def]
  kernel_rfl

theorem node300_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value227 value1 value2 = (output298, value228, value1))
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value228 value1 value2 = (output299, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input300 value227 value1 value2 = (output300, value229, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  try dsimp only
  rw [child299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output298_skip, output299_skip]
  kernel_rfl

theorem node301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input301 value229 value1 value2 = (output301, value230, value1) := by
  rw [input301_def, output301_def]
  kernel_rfl

theorem node302_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value227 value1 value2 = (output300, value229, value1))
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value229 value1 value2 = (output301, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input302 value227 value1 value2 = (output302, value230, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output301_skip]
  kernel_rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value230 value1 value2 = (output303, value231, value1) := by
  rw [input303_def, output303_def]
  kernel_rfl

theorem node304_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value227 value1 value2 = (output302, value230, value1))
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value230 value1 value2 = (output303, value231, value1)) : Flapjack.WordAlloc.removeDeadStructural input304 value227 value1 value2 = (output304, value231, value1) := by
  rw [input304_def, output304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output303_skip]
  kernel_rfl

theorem node305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input305 value231 value1 value2 = (output305, value232, value1) := by
  rw [input305_def, output305_def]
  kernel_rfl

theorem node306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input306 value232 value1 value2 = (output306, value233, value1) := by
  rw [input306_def, output306_def]
  kernel_rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value233 value1 value2 = (output307, value234, value1) := by
  rw [input307_def, output307_def]
  kernel_rfl

theorem node308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input308 value234 value1 value2 = (output308, value235, value1) := by
  rw [input308_def, output308_def]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value235 value1 value2 = (output309, value236, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value236 value1 value2 = (output310, value237, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value237 value1 value2 = (output311, value238, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input312 value238 value1 value2 = (output312, value238, value1) := by
  rw [input312_def, output312_def]
  kernel_rfl

theorem node313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input313 value238 value1 value2 = (output313, value239, value1) := by
  rw [input313_def, output313_def]
  kernel_rfl

theorem node314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input314 value239 value1 value2 = (output314, value240, value1) := by
  rw [input314_def, output314_def]
  kernel_rfl

theorem node315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input315 value240 value1 value2 = (output315, value241, value1) := by
  rw [input315_def, output315_def]
  kernel_rfl

theorem node316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input316 value241 value1 value2 = (output316, value242, value1) := by
  rw [input316_def, output316_def]
  kernel_rfl

theorem node317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input317 value242 value1 value2 = (output317, value243, value1) := by
  rw [input317_def, output317_def]
  kernel_rfl

theorem node318_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value241 value1 value2 = (output316, value242, value1))
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value242 value1 value2 = (output317, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input318 value241 value1 value2 = (output318, value243, value1) := by
  rw [input318_def, output318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output317_skip]
  kernel_rfl

theorem node319_cond_eq
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value240 value1 value2 = (output315, value241, value1))
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value241 value1 value2 = (output318, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input319 value240 value1 value2 = (output319, value243, value1) := by
  rw [input319_def, output319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child315]
  try dsimp only
  rw [child318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output315_skip, output318_skip]
  kernel_rfl

theorem node320_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value239 value1 value2 = (output314, value240, value1))
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value240 value1 value2 = (output319, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input320 value239 value1 value2 = (output320, value243, value1) := by
  rw [input320_def, output320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output319_skip]
  kernel_rfl

theorem node321_cond_eq
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value238 value1 value2 = (output313, value239, value1))
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value239 value1 value2 = (output320, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input321 value238 value1 value2 = (output321, value243, value1) := by
  rw [input321_def, output321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child313]
  try dsimp only
  rw [child320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output313_skip, output320_skip]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value243 value1 value2 = (output322, value243, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value244 value1 value245 = (output323, value246, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input324 value246 value1 value245 = (output324, value246, value1) := by
  rw [input324_def, output324_def]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value246 value1 value245 = (output325, value246, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value246 value1 value245 = (output326, value246, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input327 value246 value1 value245 = (output327, value246, value1) := by
  rw [input327_def, output327_def]
  kernel_rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value246 value1 value245 = (output328, value246, value1) := by
  rw [input328_def, output328_def]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value246 value1 value245 = (output329, value246, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value246 value1 value245 = (output330, value246, value1) := by
  rw [input330_def, output330_def]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value246 value1 value245 = (output331, value246, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value246 value1 value245 = (output332, value246, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value246 value1 value245 = (output333, value246, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value246 value1 value245 = (output334, value246, value1) := by
  rw [input334_def, output334_def]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value246 value1 value245 = (output335, value246, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value246 value1 value245 = (output334, value246, value1))
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value246 value1 value245 = (output335, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input336 value246 value1 value245 = (output336, value246, value1) := by
  rw [input336_def, output336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output335_skip]
  kernel_rfl

theorem node337_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value246 value1 value245 = (output333, value246, value1))
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value246 value1 value245 = (output336, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input337 value246 value1 value245 = (output337, value246, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output336_skip]
  kernel_rfl

theorem node338_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value246 value1 value245 = (output332, value246, value1))
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value246 value1 value245 = (output337, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input338 value246 value1 value245 = (output338, value246, value1) := by
  rw [input338_def, output338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output337_skip]
  kernel_rfl

theorem node339_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value246 value1 value245 = (output331, value246, value1))
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value246 value1 value245 = (output338, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input339 value246 value1 value245 = (output339, value246, value1) := by
  rw [input339_def, output339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output338_skip]
  kernel_rfl

theorem node340_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value246 value1 value245 = (output330, value246, value1))
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value246 value1 value245 = (output339, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input340 value246 value1 value245 = (output340, value246, value1) := by
  rw [input340_def, output340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output339_skip]
  kernel_rfl

theorem node341_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value246 value1 value245 = (output329, value246, value1))
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value246 value1 value245 = (output340, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input341 value246 value1 value245 = (output341, value246, value1) := by
  rw [input341_def, output341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output340_skip]
  kernel_rfl

theorem node342_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value246 value1 value245 = (output328, value246, value1))
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value246 value1 value245 = (output341, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input342 value246 value1 value245 = (output342, value246, value1) := by
  rw [input342_def, output342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output341_skip]
  kernel_rfl

theorem node343_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value246 value1 value245 = (output327, value246, value1))
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value246 value1 value245 = (output342, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input343 value246 value1 value245 = (output343, value246, value1) := by
  rw [input343_def, output343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output342_skip]
  kernel_rfl

theorem node344_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value246 value1 value245 = (output326, value246, value1))
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value246 value1 value245 = (output343, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input344 value246 value1 value245 = (output344, value246, value1) := by
  rw [input344_def, output344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output343_skip]
  kernel_rfl

theorem node345_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value246 value1 value245 = (output325, value246, value1))
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value246 value1 value245 = (output344, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input345 value246 value1 value245 = (output345, value246, value1) := by
  rw [input345_def, output345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output344_skip]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value246 value1 value245 = (output346, value247, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value246 value1 value245 = (output345, value246, value1))
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value246 value1 value245 = (output346, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input347 value246 value1 value245 = (output347, value247, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output346_skip]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value247 value1 value245 = (output348, value244, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value244 value1 value245 = (output349, value247, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value247 value1 value245 = (output348, value244, value1))
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value244 value1 value245 = (output349, value247, value1)) : Flapjack.WordAlloc.removeDeadStructural input350 value247 value1 value245 = (output350, value247, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output349_skip]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value247 value1 value245 = (output351, value248, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input352 value248 value1 value245 = (output352, value249, value1) := by
  rw [input352_def, output352_def]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value249 value1 value245 = (output353, value250, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value248 value1 value245 = (output352, value249, value1))
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value249 value1 value245 = (output353, value250, value1)) : Flapjack.WordAlloc.removeDeadStructural input354 value248 value1 value245 = (output354, value250, value1) := by
  rw [input354_def, output354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output353_skip]
  kernel_rfl

theorem node355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input355 value250 value1 value245 = (output355, value251, value1) := by
  rw [input355_def, output355_def]
  kernel_rfl

theorem node356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input356 value251 value1 value245 = (output356, value252, value1) := by
  rw [input356_def, output356_def]
  kernel_rfl

theorem node357_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value250 value1 value245 = (output355, value251, value1))
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value251 value1 value245 = (output356, value252, value1)) : Flapjack.WordAlloc.removeDeadStructural input357 value250 value1 value245 = (output357, value252, value1) := by
  rw [input357_def, output357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output356_skip]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value252 value1 value245 = (output358, value253, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value253 value1 value245 = (output359, value254, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value254 value1 value245 = (output360, value255, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value253 value1 value245 = (output359, value254, value1))
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value254 value1 value245 = (output360, value255, value1)) : Flapjack.WordAlloc.removeDeadStructural input361 value253 value1 value245 = (output361, value255, value1) := by
  rw [input361_def, output361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output360_skip]
  kernel_rfl

theorem node362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input362 value255 value1 value245 = (output362, value256, value1) := by
  rw [input362_def, output362_def]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value256 value1 value245 = (output363, value257, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value257 value1 value245 = (output364, value258, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value256 value1 value245 = (output363, value257, value1))
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value257 value1 value245 = (output364, value258, value1)) : Flapjack.WordAlloc.removeDeadStructural input365 value256 value1 value245 = (output365, value258, value1) := by
  rw [input365_def, output365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output364_skip]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value258 value1 value245 = (output366, value259, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value259 value1 value245 = (output367, value260, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value260 value1 value245 = (output368, value261, value1) := by
  rw [input368_def, output368_def]
  kernel_rfl

theorem node369_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value259 value1 value245 = (output367, value260, value1))
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value260 value1 value245 = (output368, value261, value1)) : Flapjack.WordAlloc.removeDeadStructural input369 value259 value1 value245 = (output369, value261, value1) := by
  rw [input369_def, output369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output368_skip]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value261 value1 value245 = (output370, value262, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value262 value1 value245 = (output371, value263, value1) := by
  rw [input371_def, output371_def]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value263 value1 value245 = (output372, value264, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value262 value1 value245 = (output371, value263, value1))
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value263 value1 value245 = (output372, value264, value1)) : Flapjack.WordAlloc.removeDeadStructural input373 value262 value1 value245 = (output373, value264, value1) := by
  rw [input373_def, output373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output372_skip]
  kernel_rfl

theorem node374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input374 value264 value1 value245 = (output374, value265, value1) := by
  rw [input374_def, output374_def]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value265 value1 value245 = (output375, value266, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value266 value1 value245 = (output376, value267, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value265 value1 value245 = (output375, value266, value1))
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value266 value1 value245 = (output376, value267, value1)) : Flapjack.WordAlloc.removeDeadStructural input377 value265 value1 value245 = (output377, value267, value1) := by
  rw [input377_def, output377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output376_skip]
  kernel_rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value267 value1 value245 = (output378, value268, value1) := by
  rw [input378_def, output378_def]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value268 value1 value245 = (output379, value269, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input380 value269 value1 value245 = (output380, value270, value1) := by
  rw [input380_def, output380_def]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value270 value1 value245 = (output381, value271, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input382 value271 value1 value245 = (output382, value272, value1) := by
  rw [input382_def, output382_def]
  kernel_rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value272 value1 value245 = (output383, value273, value1) := by
  rw [input383_def, output383_def]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value273 value1 value245 = (output384, value274, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value274 value1 value245 = (output385, value275, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input386 value275 value1 value245 = (output386, value276, value1) := by
  rw [input386_def, output386_def]
  kernel_rfl

theorem node387_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value274 value1 value245 = (output385, value275, value1))
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value275 value1 value245 = (output386, value276, value1)) : Flapjack.WordAlloc.removeDeadStructural input387 value274 value1 value245 = (output387, value276, value1) := by
  rw [input387_def, output387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output386_skip]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value276 value1 value245 = (output388, value277, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value274 value1 value245 = (output387, value276, value1))
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value276 value1 value245 = (output388, value277, value1)) : Flapjack.WordAlloc.removeDeadStructural input389 value274 value1 value245 = (output389, value277, value1) := by
  rw [input389_def, output389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output388_skip]
  kernel_rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value277 value1 value245 = (output390, value278, value1) := by
  rw [input390_def, output390_def]
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value278 value1 value245 = (output391, value279, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value277 value1 value245 = (output390, value278, value1))
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value278 value1 value245 = (output391, value279, value1)) : Flapjack.WordAlloc.removeDeadStructural input392 value277 value1 value245 = (output392, value279, value1) := by
  rw [input392_def, output392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output391_skip]
  kernel_rfl

theorem node393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input393 value279 value1 value245 = (output393, value280, value1) := by
  rw [input393_def, output393_def]
  kernel_rfl

theorem node394_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value277 value1 value245 = (output392, value279, value1))
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value279 value1 value245 = (output393, value280, value1)) : Flapjack.WordAlloc.removeDeadStructural input394 value277 value1 value245 = (output394, value280, value1) := by
  rw [input394_def, output394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output393_skip]
  kernel_rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value280 value1 value245 = (output395, value281, value1) := by
  rw [input395_def, output395_def]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value281 value1 value245 = (output396, value282, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value282 value1 value245 = (output397, value282, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input398 value282 value1 value245 = (output398, value283, value1) := by
  rw [input398_def, output398_def]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value283 value1 value245 = (output399, value284, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value282 value1 value245 = (output398, value283, value1))
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value283 value1 value245 = (output399, value284, value1)) : Flapjack.WordAlloc.removeDeadStructural input400 value282 value1 value245 = (output400, value284, value1) := by
  rw [input400_def, output400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output399_skip]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value284 value1 value245 = (output401, value285, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value282 value1 value245 = (output400, value284, value1))
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value284 value1 value245 = (output401, value285, value1)) : Flapjack.WordAlloc.removeDeadStructural input402 value282 value1 value245 = (output402, value285, value1) := by
  rw [input402_def, output402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output401_skip]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value285 value1 value245 = (output403, value286, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value286 value1 value245 = (output404, value287, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value287 value1 value245 = (output405, value288, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value288 value1 value245 = (output406, value289, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value289 value1 value245 = (output407, value290, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value290 value1 value245 = (output408, value291, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value291 value1 value245 = (output409, value292, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value292 value1 value245 = (output410, value293, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value293 value1 value245 = (output411, value294, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input412 value294 value1 value245 = (output412, value295, value1) := by
  rw [input412_def, output412_def]
  kernel_rfl

theorem node413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input413 value295 value1 value245 = (output413, value296, value1) := by
  rw [input413_def, output413_def]
  kernel_rfl

theorem node414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input414 value296 value1 value245 = (output414, value297, value1) := by
  rw [input414_def, output414_def]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value297 value1 value245 = (output415, value297, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value297 value1 value245 = (output416, value297, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input417 value297 value1 value245 = (output417, value297, value1) := by
  rw [input417_def, output417_def]
  kernel_rfl

theorem node418_cond_eq
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value297 value1 value245 = (output416, value297, value1))
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value297 value1 value245 = (output417, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input418 value297 value1 value245 = (output418, value297, value1) := by
  rw [input418_def, output418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child416]
  try dsimp only
  rw [child417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output416_skip, output417_skip]
  kernel_rfl

theorem node419_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value297 value1 value245 = (output415, value297, value1))
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value297 value1 value245 = (output418, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input419 value297 value1 value245 = (output419, value297, value1) := by
  rw [input419_def, output419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output418_skip]
  kernel_rfl

theorem node420_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value296 value1 value245 = (output414, value297, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value297 value1 value245 = (output419, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value296 value1 value245 = (output420, value297, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value295 value1 value245 = (output413, value296, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value296 value1 value245 = (output420, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value295 value1 value245 = (output421, value297, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output420_skip]
  kernel_rfl

theorem node422_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value294 value1 value245 = (output412, value295, value1))
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value295 value1 value245 = (output421, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input422 value294 value1 value245 = (output422, value297, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output421_skip]
  kernel_rfl

theorem node423_cond_eq
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value293 value1 value245 = (output411, value294, value1))
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value294 value1 value245 = (output422, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input423 value293 value1 value245 = (output423, value297, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child411]
  try dsimp only
  rw [child422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output411_skip, output422_skip]
  kernel_rfl

theorem node424_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value292 value1 value245 = (output410, value293, value1))
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value293 value1 value245 = (output423, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input424 value292 value1 value245 = (output424, value297, value1) := by
  rw [input424_def, output424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output423_skip]
  kernel_rfl

theorem node425_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value291 value1 value245 = (output409, value292, value1))
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value292 value1 value245 = (output424, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input425 value291 value1 value245 = (output425, value297, value1) := by
  rw [input425_def, output425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output424_skip]
  kernel_rfl

theorem node426_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value290 value1 value245 = (output408, value291, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value291 value1 value245 = (output425, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value290 value1 value245 = (output426, value297, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value289 value1 value245 = (output407, value290, value1))
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value290 value1 value245 = (output426, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input427 value289 value1 value245 = (output427, value297, value1) := by
  rw [input427_def, output427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output426_skip]
  kernel_rfl

theorem node428_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value288 value1 value245 = (output406, value289, value1))
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value289 value1 value245 = (output427, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input428 value288 value1 value245 = (output428, value297, value1) := by
  rw [input428_def, output428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output427_skip]
  kernel_rfl

theorem node429_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value287 value1 value245 = (output405, value288, value1))
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value288 value1 value245 = (output428, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input429 value287 value1 value245 = (output429, value297, value1) := by
  rw [input429_def, output429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output428_skip]
  kernel_rfl

theorem node430_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value286 value1 value245 = (output404, value287, value1))
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value287 value1 value245 = (output429, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input430 value286 value1 value245 = (output430, value297, value1) := by
  rw [input430_def, output430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output429_skip]
  kernel_rfl

theorem node431_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value285 value1 value245 = (output403, value286, value1))
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value286 value1 value245 = (output430, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input431 value285 value1 value245 = (output431, value297, value1) := by
  rw [input431_def, output431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output430_skip]
  kernel_rfl

theorem node432_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value282 value1 value245 = (output402, value285, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value285 value1 value245 = (output431, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value282 value1 value245 = (output432, value297, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output431_skip]
  kernel_rfl

theorem node433_cond_eq
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value282 value1 value245 = (output397, value282, value1))
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value282 value1 value245 = (output432, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input433 value282 value1 value245 = (output433, value297, value1) := by
  rw [input433_def, output433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child397]
  try dsimp only
  rw [child432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output397_skip, output432_skip]
  kernel_rfl

theorem node434_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value281 value1 value245 = (output396, value282, value1))
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value282 value1 value245 = (output433, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input434 value281 value1 value245 = (output434, value297, value1) := by
  rw [input434_def, output434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output433_skip]
  kernel_rfl

theorem node435_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value280 value1 value245 = (output395, value281, value1))
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value281 value1 value245 = (output434, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input435 value280 value1 value245 = (output435, value297, value1) := by
  rw [input435_def, output435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output434_skip]
  kernel_rfl

theorem node436_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value277 value1 value245 = (output394, value280, value1))
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value280 value1 value245 = (output435, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input436 value277 value1 value245 = (output436, value297, value1) := by
  rw [input436_def, output436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output435_skip]
  kernel_rfl

theorem node437_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value274 value1 value245 = (output389, value277, value1))
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value277 value1 value245 = (output436, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input437 value274 value1 value245 = (output437, value297, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output436_skip]
  kernel_rfl

theorem node438_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value273 value1 value245 = (output384, value274, value1))
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value274 value1 value245 = (output437, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input438 value273 value1 value245 = (output438, value297, value1) := by
  rw [input438_def, output438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output437_skip]
  kernel_rfl

theorem node439_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value272 value1 value245 = (output383, value273, value1))
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value273 value1 value245 = (output438, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input439 value272 value1 value245 = (output439, value297, value1) := by
  rw [input439_def, output439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output438_skip]
  kernel_rfl

theorem node440_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value271 value1 value245 = (output382, value272, value1))
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value272 value1 value245 = (output439, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input440 value271 value1 value245 = (output440, value297, value1) := by
  rw [input440_def, output440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output439_skip]
  kernel_rfl

theorem node441_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value270 value1 value245 = (output381, value271, value1))
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value271 value1 value245 = (output440, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input441 value270 value1 value245 = (output441, value297, value1) := by
  rw [input441_def, output441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output440_skip]
  kernel_rfl

theorem node442_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value269 value1 value245 = (output380, value270, value1))
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value270 value1 value245 = (output441, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input442 value269 value1 value245 = (output442, value297, value1) := by
  rw [input442_def, output442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output441_skip]
  kernel_rfl

theorem node443_cond_eq
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value268 value1 value245 = (output379, value269, value1))
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value269 value1 value245 = (output442, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input443 value268 value1 value245 = (output443, value297, value1) := by
  rw [input443_def, output443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child379]
  try dsimp only
  rw [child442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output379_skip, output442_skip]
  kernel_rfl

theorem node444_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value267 value1 value245 = (output378, value268, value1))
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value268 value1 value245 = (output443, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input444 value267 value1 value245 = (output444, value297, value1) := by
  rw [input444_def, output444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output443_skip]
  kernel_rfl

theorem node445_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value265 value1 value245 = (output377, value267, value1))
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value267 value1 value245 = (output444, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input445 value265 value1 value245 = (output445, value297, value1) := by
  rw [input445_def, output445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output444_skip]
  kernel_rfl

theorem node446_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value264 value1 value245 = (output374, value265, value1))
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value265 value1 value245 = (output445, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input446 value264 value1 value245 = (output446, value297, value1) := by
  rw [input446_def, output446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output445_skip]
  kernel_rfl

theorem node447_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value262 value1 value245 = (output373, value264, value1))
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value264 value1 value245 = (output446, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input447 value262 value1 value245 = (output447, value297, value1) := by
  rw [input447_def, output447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output446_skip]
  kernel_rfl

theorem node448_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value261 value1 value245 = (output370, value262, value1))
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value262 value1 value245 = (output447, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input448 value261 value1 value245 = (output448, value297, value1) := by
  rw [input448_def, output448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output447_skip]
  kernel_rfl

theorem node449_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value259 value1 value245 = (output369, value261, value1))
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value261 value1 value245 = (output448, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input449 value259 value1 value245 = (output449, value297, value1) := by
  rw [input449_def, output449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output448_skip]
  kernel_rfl

theorem node450_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value258 value1 value245 = (output366, value259, value1))
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value259 value1 value245 = (output449, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input450 value258 value1 value245 = (output450, value297, value1) := by
  rw [input450_def, output450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output449_skip]
  kernel_rfl

theorem node451_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value256 value1 value245 = (output365, value258, value1))
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value258 value1 value245 = (output450, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input451 value256 value1 value245 = (output451, value297, value1) := by
  rw [input451_def, output451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output450_skip]
  kernel_rfl

theorem node452_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value255 value1 value245 = (output362, value256, value1))
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value256 value1 value245 = (output451, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input452 value255 value1 value245 = (output452, value297, value1) := by
  rw [input452_def, output452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output451_skip]
  kernel_rfl

theorem node453_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value253 value1 value245 = (output361, value255, value1))
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value255 value1 value245 = (output452, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input453 value253 value1 value245 = (output453, value297, value1) := by
  rw [input453_def, output453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output452_skip]
  kernel_rfl

theorem node454_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value252 value1 value245 = (output358, value253, value1))
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value253 value1 value245 = (output453, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input454 value252 value1 value245 = (output454, value297, value1) := by
  rw [input454_def, output454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output453_skip]
  kernel_rfl

theorem node455_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value250 value1 value245 = (output357, value252, value1))
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value252 value1 value245 = (output454, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input455 value250 value1 value245 = (output455, value297, value1) := by
  rw [input455_def, output455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output454_skip]
  kernel_rfl

theorem node456_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value248 value1 value245 = (output354, value250, value1))
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value250 value1 value245 = (output455, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input456 value248 value1 value245 = (output456, value297, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output455_skip]
  kernel_rfl

theorem node457_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value247 value1 value245 = (output351, value248, value1))
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value248 value1 value245 = (output456, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input457 value247 value1 value245 = (output457, value297, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output456_skip]
  kernel_rfl

theorem node458_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value247 value1 value245 = (output350, value247, value1))
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value247 value1 value245 = (output457, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input458 value247 value1 value245 = (output458, value297, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output457_skip]
  kernel_rfl

theorem node459_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value246 value1 value245 = (output347, value247, value1))
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value247 value1 value245 = (output458, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input459 value246 value1 value245 = (output459, value297, value1) := by
  rw [input459_def, output459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output458_skip]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value246 value1 value245 = (output460, value246, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value246 value1 value245 = (output461, value246, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value246 value1 value245 = (output462, value246, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value246 value1 value245 = (output463, value246, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value246 value1 value245 = (output464, value246, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value246 value1 value245 = (output465, value246, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input466 value246 value1 value245 = (output466, value246, value1) := by
  rw [input466_def, output466_def]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value246 value1 value245 = (output467, value246, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input468 value246 value1 value245 = (output468, value246, value1) := by
  rw [input468_def, output468_def]
  kernel_rfl

theorem node469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input469 value246 value1 value245 = (output469, value246, value1) := by
  rw [input469_def, output469_def]
  kernel_rfl

theorem node470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input470 value246 value1 value245 = (output470, value246, value1) := by
  rw [input470_def, output470_def]
  kernel_rfl

theorem node471_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value246 value1 value245 = (output469, value246, value1))
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value246 value1 value245 = (output470, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input471 value246 value1 value245 = (output471, value246, value1) := by
  rw [input471_def, output471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output470_skip]
  kernel_rfl

theorem node472_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value246 value1 value245 = (output468, value246, value1))
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value246 value1 value245 = (output471, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input472 value246 value1 value245 = (output472, value246, value1) := by
  rw [input472_def, output472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output471_skip]
  kernel_rfl

theorem node473_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value246 value1 value245 = (output467, value246, value1))
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value246 value1 value245 = (output472, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input473 value246 value1 value245 = (output473, value246, value1) := by
  rw [input473_def, output473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output472_skip]
  kernel_rfl

theorem node474_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value246 value1 value245 = (output466, value246, value1))
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value246 value1 value245 = (output473, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input474 value246 value1 value245 = (output474, value246, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output473_skip]
  kernel_rfl

theorem node475_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value246 value1 value245 = (output465, value246, value1))
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value246 value1 value245 = (output474, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input475 value246 value1 value245 = (output475, value246, value1) := by
  rw [input475_def, output475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output474_skip]
  kernel_rfl

theorem node476_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value246 value1 value245 = (output464, value246, value1))
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value246 value1 value245 = (output475, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input476 value246 value1 value245 = (output476, value246, value1) := by
  rw [input476_def, output476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output475_skip]
  kernel_rfl

theorem node477_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value246 value1 value245 = (output463, value246, value1))
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value246 value1 value245 = (output476, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input477 value246 value1 value245 = (output477, value246, value1) := by
  rw [input477_def, output477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output476_skip]
  kernel_rfl

theorem node478_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value246 value1 value245 = (output462, value246, value1))
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value246 value1 value245 = (output477, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input478 value246 value1 value245 = (output478, value246, value1) := by
  rw [input478_def, output478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output477_skip]
  kernel_rfl

theorem node479_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value246 value1 value245 = (output461, value246, value1))
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value246 value1 value245 = (output478, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input479 value246 value1 value245 = (output479, value246, value1) := by
  rw [input479_def, output479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output478_skip]
  kernel_rfl

theorem node480_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value246 value1 value245 = (output460, value246, value1))
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value246 value1 value245 = (output479, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input480 value246 value1 value245 = (output480, value246, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output479_skip]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value246 value1 value245 = (output481, value297, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value246 value1 value245 = (output480, value246, value1))
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value246 value1 value245 = (output481, value297, value1)) : Flapjack.WordAlloc.removeDeadStructural input482 value246 value1 value245 = (output482, value297, value1) := by
  rw [input482_def, output482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child480]
  try dsimp only
  rw [child481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output481_skip]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value297 value1 value245 = (output483, value243, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value243 value1 value245 = (output484, value243, value1) := by
  rw [input484_def, output484_def]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value243 value1 value245 = (output485, value243, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value243 value1 value245 = (output486, value243, value1) := by
  rw [input486_def, output486_def]
  kernel_rfl

theorem node487_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value243 value1 value245 = (output485, value243, value1))
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value243 value1 value245 = (output486, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input487 value243 value1 value245 = (output487, value243, value1) := by
  rw [input487_def, output487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output486_skip]
  kernel_rfl

theorem node488_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value243 value1 value245 = (output484, value243, value1))
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value243 value1 value245 = (output487, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input488 value243 value1 value245 = (output488, value243, value1) := by
  rw [input488_def, output488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output487_skip]
  kernel_rfl

theorem node489_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value297 value1 value245 = (output483, value243, value1))
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value243 value1 value245 = (output488, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input489 value297 value1 value245 = (output489, value243, value1) := by
  rw [input489_def, output489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output488_skip]
  kernel_rfl

theorem node490_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value246 value1 value245 = (output482, value297, value1))
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value297 value1 value245 = (output489, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input490 value246 value1 value245 = (output490, value243, value1) := by
  rw [input490_def, output490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output489_skip]
  kernel_rfl

theorem node491_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value246 value1 value245 = (output459, value297, value1))
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value246 value1 value245 = (output490, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input491 value246 value1 value245 = (output491, value300, value1) := by
  rw [input491_def, output491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child459]
  try dsimp only
  rw [child490]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output490_skip]
  kernel_rfl

theorem node492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input492 value300 value1 value245 = (output492, value297, value1) := by
  rw [input492_def, output492_def]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value297 value1 value245 = (output493, value244, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value300 value1 value245 = (output492, value297, value1))
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value297 value1 value245 = (output493, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input494 value300 value1 value245 = (output494, value244, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output493_skip]
  kernel_rfl

theorem node495_cond_eq
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value246 value1 value245 = (output491, value300, value1))
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value300 value1 value245 = (output494, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input495 value246 value1 value245 = (output495, value244, value1) := by
  rw [input495_def, output495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child491]
  try dsimp only
  rw [child494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output491_skip, output494_skip]
  kernel_rfl

theorem node496_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value246 value1 value245 = (output324, value246, value1))
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value246 value1 value245 = (output495, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input496 value246 value1 value245 = (output496, value244, value1) := by
  rw [input496_def, output496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output495_skip]
  kernel_rfl

theorem node497_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value244 value1 value245 = (output323, value246, value1))
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value246 value1 value245 = (output496, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input497 value244 value1 value245 = (output497, value244, value1) := by
  rw [input497_def, output497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output496_skip]
  kernel_rfl

theorem node498_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value244 value1 value245 = (output497, value244, value1)) : Flapjack.WordAlloc.removeDeadStructural input498 value243 value1 value2 = (output498, value244, value1) := by
  rw [input498_def, output498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value245 = (value244, value243) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child497
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value244 value1 value2 = (output499, value301, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input500 value301 value1 value2 = (output500, value301, value1) := by
  rw [input500_def, output500_def]
  kernel_rfl

theorem node501_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value244 value1 value2 = (output499, value301, value1))
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value301 value1 value2 = (output500, value301, value1)) : Flapjack.WordAlloc.removeDeadStructural input501 value244 value1 value2 = (output501, value301, value1) := by
  rw [input501_def, output501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  try dsimp only
  rw [child500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output499_skip, output500_skip]
  kernel_rfl

theorem node502_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value243 value1 value2 = (output498, value244, value1))
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value244 value1 value2 = (output501, value301, value1)) : Flapjack.WordAlloc.removeDeadStructural input502 value243 value1 value2 = (output502, value301, value1) := by
  rw [input502_def, output502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output501_skip]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value301 value1 value2 = (output503, value301, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input504 value301 value1 value2 = (output504, value302, value1) := by
  rw [input504_def, output504_def]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value302 value1 value2 = (output505, value303, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value303 value1 value2 = (output506, value304, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value302 value1 value2 = (output505, value303, value1))
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value303 value1 value2 = (output506, value304, value1)) : Flapjack.WordAlloc.removeDeadStructural input507 value302 value1 value2 = (output507, value304, value1) := by
  rw [input507_def, output507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output506_skip]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value304 value1 value2 = (output508, value305, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value305 value1 value2 = (output509, value306, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input510 value306 value1 value2 = (output510, value307, value1) := by
  rw [input510_def, output510_def]
  kernel_rfl

theorem node511_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value305 value1 value2 = (output509, value306, value1))
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value306 value1 value2 = (output510, value307, value1)) : Flapjack.WordAlloc.removeDeadStructural input511 value305 value1 value2 = (output511, value307, value1) := by
  rw [input511_def, output511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output510_skip]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages810.Parallel
