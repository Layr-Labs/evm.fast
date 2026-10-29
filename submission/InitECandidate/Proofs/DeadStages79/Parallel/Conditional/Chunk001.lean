import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages79.Parallel
theorem node256_cond_eq
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value69 value1 value32 = (output248, value71, value1))
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value71 value1 value32 = (output255, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input256 value69 value1 value32 = (output256, value69, value1) := by
  rw [input256_def, output256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child248]
  try dsimp only
  rw [child255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output248_skip, output255_skip]
  kernel_rfl

theorem node257_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value69 value1 value32 = (output245, value69, value1))
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value69 value1 value32 = (output256, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input257 value69 value1 value32 = (output257, value69, value1) := by
  rw [input257_def, output257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output256_skip]
  kernel_rfl

theorem node258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input258 value69 value1 value32 = (output258, value69, value1) := by
  rw [input258_def, output258_def]
  kernel_rfl

theorem node259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input259 value69 value1 value32 = (output259, value69, value1) := by
  rw [input259_def, output259_def]
  kernel_rfl

theorem node260_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value69 value1 value32 = (output258, value69, value1))
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value69 value1 value32 = (output259, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input260 value69 value1 value32 = (output260, value69, value1) := by
  rw [input260_def, output260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output259_skip]
  kernel_rfl

theorem node261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input261 value69 value1 value32 = (output261, value69, value1) := by
  rw [input261_def, output261_def]
  kernel_rfl

theorem node262_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value69 value1 value32 = (output260, value69, value1))
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value69 value1 value32 = (output261, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input262 value69 value1 value32 = (output262, value69, value1) := by
  rw [input262_def, output262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output261_skip]
  kernel_rfl

theorem node263_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value69 value1 value32 = (output257, value69, value1))
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value69 value1 value32 = (output262, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input263 value69 value1 value32 = (output263, value73, value1) := by
  rw [input263_def, output263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child257]
  try dsimp only
  rw [child262]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output262_skip]
  kernel_rfl

theorem node264_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value69 value1 value32 = (output242, value69, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value69 value1 value32 = (output263, value73, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value69 value1 value32 = (output264, value73, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value73 value1 value32 = (output265, value74, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input266 value74 value1 value32 = (output266, value75, value1) := by
  rw [input266_def, output266_def]
  kernel_rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value75 value1 value32 = (output267, value76, value1) := by
  rw [input267_def, output267_def]
  kernel_rfl

theorem node268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input268 value76 value1 value32 = (output268, value77, value1) := by
  rw [input268_def, output268_def]
  kernel_rfl

theorem node269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input269 value77 value1 value32 = (output269, value78, value1) := by
  rw [input269_def, output269_def]
  kernel_rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value78 value1 value32 = (output270, value79, value1) := by
  rw [input270_def, output270_def]
  kernel_rfl

theorem node271_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value77 value1 value32 = (output269, value78, value1))
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value78 value1 value32 = (output270, value79, value1)) : Flapjack.WordAlloc.removeDeadStructural input271 value77 value1 value32 = (output271, value79, value1) := by
  rw [input271_def, output271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output270_skip]
  kernel_rfl

theorem node272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input272 value79 value1 value32 = (output272, value80, value1) := by
  rw [input272_def, output272_def]
  kernel_rfl

theorem node273_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value77 value1 value32 = (output271, value79, value1))
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value79 value1 value32 = (output272, value80, value1)) : Flapjack.WordAlloc.removeDeadStructural input273 value77 value1 value32 = (output273, value80, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output272_skip]
  kernel_rfl

theorem node274_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value76 value1 value32 = (output268, value77, value1))
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value77 value1 value32 = (output273, value80, value1)) : Flapjack.WordAlloc.removeDeadStructural input274 value76 value1 value32 = (output274, value80, value1) := by
  rw [input274_def, output274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output273_skip]
  kernel_rfl

theorem node275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input275 value80 value1 value32 = (output275, value81, value1) := by
  rw [input275_def, output275_def]
  kernel_rfl

theorem node276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input276 value81 value1 value32 = (output276, value82, value1) := by
  rw [input276_def, output276_def]
  kernel_rfl

theorem node277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input277 value82 value1 value32 = (output277, value83, value1) := by
  rw [input277_def, output277_def]
  kernel_rfl

theorem node278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input278 value83 value1 value32 = (output278, value84, value1) := by
  rw [input278_def, output278_def]
  kernel_rfl

theorem node279_cond_eq
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value82 value1 value32 = (output277, value83, value1))
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value83 value1 value32 = (output278, value84, value1)) : Flapjack.WordAlloc.removeDeadStructural input279 value82 value1 value32 = (output279, value84, value1) := by
  rw [input279_def, output279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child277]
  try dsimp only
  rw [child278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output277_skip, output278_skip]
  kernel_rfl

theorem node280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input280 value84 value1 value32 = (output280, value85, value1) := by
  rw [input280_def, output280_def]
  kernel_rfl

theorem node281_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value82 value1 value32 = (output279, value84, value1))
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value84 value1 value32 = (output280, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input281 value82 value1 value32 = (output281, value85, value1) := by
  rw [input281_def, output281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output280_skip]
  kernel_rfl

theorem node282_cond_eq
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value81 value1 value32 = (output276, value82, value1))
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value82 value1 value32 = (output281, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input282 value81 value1 value32 = (output282, value85, value1) := by
  rw [input282_def, output282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child276]
  try dsimp only
  rw [child281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output276_skip, output281_skip]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value85 value1 value32 = (output283, value85, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value85 value1 value32 = (output284, value85, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value85 value1 value32 = (output285, value85, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value85 value1 value32 = (output286, value85, value1) := by
  rw [input286_def, output286_def]
  kernel_rfl

theorem node287_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value85 value1 value32 = (output285, value85, value1))
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value85 value1 value32 = (output286, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input287 value85 value1 value32 = (output287, value85, value1) := by
  rw [input287_def, output287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output286_skip]
  kernel_rfl

theorem node288_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value85 value1 value32 = (output284, value85, value1))
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value85 value1 value32 = (output287, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input288 value85 value1 value32 = (output288, value85, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output287_skip]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value85 value1 value32 = (output289, value85, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input290 value85 value1 value32 = (output290, value85, value1) := by
  rw [input290_def, output290_def]
  kernel_rfl

theorem node291_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value85 value1 value32 = (output289, value85, value1))
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value85 value1 value32 = (output290, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input291 value85 value1 value32 = (output291, value85, value1) := by
  rw [input291_def, output291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output290_skip]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value85 value1 value32 = (output292, value86, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input293 value86 value1 value32 = (output293, value87, value1) := by
  rw [input293_def, output293_def]
  kernel_rfl

theorem node294_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value85 value1 value32 = (output292, value86, value1))
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value86 value1 value32 = (output293, value87, value1)) : Flapjack.WordAlloc.removeDeadStructural input294 value85 value1 value32 = (output294, value87, value1) := by
  rw [input294_def, output294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output293_skip]
  kernel_rfl

theorem node295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input295 value87 value1 value32 = (output295, value85, value1) := by
  rw [input295_def, output295_def]
  kernel_rfl

theorem node296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input296 value85 value1 value32 = (output296, value85, value1) := by
  rw [input296_def, output296_def]
  kernel_rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value85 value1 value32 = (output297, value85, value1) := by
  rw [input297_def, output297_def]
  kernel_rfl

theorem node298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input298 value85 value1 value32 = (output298, value85, value1) := by
  rw [input298_def, output298_def]
  kernel_rfl

theorem node299_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value85 value1 value32 = (output297, value85, value1))
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value85 value1 value32 = (output298, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input299 value85 value1 value32 = (output299, value85, value1) := by
  rw [input299_def, output299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  try dsimp only
  rw [child298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output297_skip, output298_skip]
  kernel_rfl

theorem node300_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value85 value1 value32 = (output296, value85, value1))
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value85 value1 value32 = (output299, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input300 value85 value1 value32 = (output300, value85, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output299_skip]
  kernel_rfl

theorem node301_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value87 value1 value32 = (output295, value85, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value85 value1 value32 = (output300, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value87 value1 value32 = (output301, value85, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  try dsimp only
  rw [child300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output295_skip, output300_skip]
  kernel_rfl

theorem node302_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value85 value1 value32 = (output294, value87, value1))
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value87 value1 value32 = (output301, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input302 value85 value1 value32 = (output302, value85, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  try dsimp only
  rw [child301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output294_skip, output301_skip]
  kernel_rfl

theorem node303_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value85 value1 value32 = (output291, value85, value1))
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value85 value1 value32 = (output302, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input303 value85 value1 value32 = (output303, value85, value1) := by
  rw [input303_def, output303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output302_skip]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value85 value1 value32 = (output304, value85, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input305 value85 value1 value32 = (output305, value85, value1) := by
  rw [input305_def, output305_def]
  kernel_rfl

theorem node306_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value85 value1 value32 = (output304, value85, value1))
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value85 value1 value32 = (output305, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input306 value85 value1 value32 = (output306, value85, value1) := by
  rw [input306_def, output306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output305_skip]
  kernel_rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value85 value1 value32 = (output307, value85, value1) := by
  rw [input307_def, output307_def]
  kernel_rfl

theorem node308_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value85 value1 value32 = (output306, value85, value1))
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value85 value1 value32 = (output307, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input308 value85 value1 value32 = (output308, value85, value1) := by
  rw [input308_def, output308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output307_skip]
  kernel_rfl

theorem node309_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value85 value1 value32 = (output303, value85, value1))
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value85 value1 value32 = (output308, value85, value1)) : Flapjack.WordAlloc.removeDeadStructural input309 value85 value1 value32 = (output309, value89, value1) := by
  rw [input309_def, output309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child303]
  try dsimp only
  rw [child308]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output308_skip]
  kernel_rfl

theorem node310_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value85 value1 value32 = (output288, value85, value1))
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value85 value1 value32 = (output309, value89, value1)) : Flapjack.WordAlloc.removeDeadStructural input310 value85 value1 value32 = (output310, value89, value1) := by
  rw [input310_def, output310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output309_skip]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value89 value1 value32 = (output311, value90, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input312 value90 value1 value32 = (output312, value91, value1) := by
  rw [input312_def, output312_def]
  kernel_rfl

theorem node313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input313 value91 value1 value32 = (output313, value92, value1) := by
  rw [input313_def, output313_def]
  kernel_rfl

theorem node314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input314 value92 value1 value32 = (output314, value93, value1) := by
  rw [input314_def, output314_def]
  kernel_rfl

theorem node315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input315 value93 value1 value32 = (output315, value94, value1) := by
  rw [input315_def, output315_def]
  kernel_rfl

theorem node316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input316 value94 value1 value32 = (output316, value95, value1) := by
  rw [input316_def, output316_def]
  kernel_rfl

theorem node317_cond_eq
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value93 value1 value32 = (output315, value94, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value94 value1 value32 = (output316, value95, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value93 value1 value32 = (output317, value95, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child315]
  try dsimp only
  rw [child316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output315_skip, output316_skip]
  kernel_rfl

theorem node318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input318 value95 value1 value32 = (output318, value96, value1) := by
  rw [input318_def, output318_def]
  kernel_rfl

theorem node319_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value93 value1 value32 = (output317, value95, value1))
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value95 value1 value32 = (output318, value96, value1)) : Flapjack.WordAlloc.removeDeadStructural input319 value93 value1 value32 = (output319, value96, value1) := by
  rw [input319_def, output319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output318_skip]
  kernel_rfl

theorem node320_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value92 value1 value32 = (output314, value93, value1))
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value93 value1 value32 = (output319, value96, value1)) : Flapjack.WordAlloc.removeDeadStructural input320 value92 value1 value32 = (output320, value96, value1) := by
  rw [input320_def, output320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output319_skip]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value96 value1 value32 = (output321, value97, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value97 value1 value32 = (output322, value98, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value98 value1 value32 = (output323, value99, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input324 value99 value1 value32 = (output324, value100, value1) := by
  rw [input324_def, output324_def]
  kernel_rfl

theorem node325_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value98 value1 value32 = (output323, value99, value1))
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value99 value1 value32 = (output324, value100, value1)) : Flapjack.WordAlloc.removeDeadStructural input325 value98 value1 value32 = (output325, value100, value1) := by
  rw [input325_def, output325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output324_skip]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value100 value1 value32 = (output326, value101, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value98 value1 value32 = (output325, value100, value1))
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value100 value1 value32 = (output326, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input327 value98 value1 value32 = (output327, value101, value1) := by
  rw [input327_def, output327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output326_skip]
  kernel_rfl

theorem node328_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value97 value1 value32 = (output322, value98, value1))
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value98 value1 value32 = (output327, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input328 value97 value1 value32 = (output328, value101, value1) := by
  rw [input328_def, output328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output327_skip]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value101 value1 value32 = (output329, value101, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value101 value1 value32 = (output330, value101, value1) := by
  rw [input330_def, output330_def]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value101 value1 value32 = (output331, value101, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value101 value1 value32 = (output332, value101, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value101 value1 value32 = (output331, value101, value1))
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value101 value1 value32 = (output332, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input333 value101 value1 value32 = (output333, value101, value1) := by
  rw [input333_def, output333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output332_skip]
  kernel_rfl

theorem node334_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value101 value1 value32 = (output330, value101, value1))
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value101 value1 value32 = (output333, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input334 value101 value1 value32 = (output334, value101, value1) := by
  rw [input334_def, output334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output333_skip]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value101 value1 value32 = (output335, value101, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value101 value1 value32 = (output336, value101, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value101 value1 value32 = (output335, value101, value1))
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value101 value1 value32 = (output336, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input337 value101 value1 value32 = (output337, value101, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output336_skip]
  kernel_rfl

theorem node338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input338 value101 value1 value32 = (output338, value102, value1) := by
  rw [input338_def, output338_def]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value102 value1 value32 = (output339, value103, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value101 value1 value32 = (output338, value102, value1))
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value102 value1 value32 = (output339, value103, value1)) : Flapjack.WordAlloc.removeDeadStructural input340 value101 value1 value32 = (output340, value103, value1) := by
  rw [input340_def, output340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output339_skip]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value103 value1 value32 = (output341, value101, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value101 value1 value32 = (output342, value101, value1) := by
  rw [input342_def, output342_def]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value101 value1 value32 = (output343, value101, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input344 value101 value1 value32 = (output344, value101, value1) := by
  rw [input344_def, output344_def]
  kernel_rfl

theorem node345_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value101 value1 value32 = (output343, value101, value1))
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value101 value1 value32 = (output344, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input345 value101 value1 value32 = (output345, value101, value1) := by
  rw [input345_def, output345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output344_skip]
  kernel_rfl

theorem node346_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value101 value1 value32 = (output342, value101, value1))
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value101 value1 value32 = (output345, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input346 value101 value1 value32 = (output346, value101, value1) := by
  rw [input346_def, output346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output345_skip]
  kernel_rfl

theorem node347_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value103 value1 value32 = (output341, value101, value1))
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value101 value1 value32 = (output346, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input347 value103 value1 value32 = (output347, value101, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output346_skip]
  kernel_rfl

theorem node348_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value101 value1 value32 = (output340, value103, value1))
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value103 value1 value32 = (output347, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input348 value101 value1 value32 = (output348, value101, value1) := by
  rw [input348_def, output348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output347_skip]
  kernel_rfl

theorem node349_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value101 value1 value32 = (output337, value101, value1))
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value101 value1 value32 = (output348, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input349 value101 value1 value32 = (output349, value101, value1) := by
  rw [input349_def, output349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output348_skip]
  kernel_rfl

theorem node350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input350 value101 value1 value32 = (output350, value101, value1) := by
  rw [input350_def, output350_def]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value101 value1 value32 = (output351, value101, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value101 value1 value32 = (output350, value101, value1))
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value101 value1 value32 = (output351, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input352 value101 value1 value32 = (output352, value101, value1) := by
  rw [input352_def, output352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output351_skip]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value101 value1 value32 = (output353, value101, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value101 value1 value32 = (output352, value101, value1))
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value101 value1 value32 = (output353, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input354 value101 value1 value32 = (output354, value101, value1) := by
  rw [input354_def, output354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output353_skip]
  kernel_rfl

theorem node355_cond_eq
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value101 value1 value32 = (output349, value101, value1))
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value101 value1 value32 = (output354, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input355 value101 value1 value32 = (output355, value105, value1) := by
  rw [input355_def, output355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child349]
  try dsimp only
  rw [child354]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output349_skip, output354_skip]
  kernel_rfl

theorem node356_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value101 value1 value32 = (output334, value101, value1))
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value101 value1 value32 = (output355, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input356 value101 value1 value32 = (output356, value105, value1) := by
  rw [input356_def, output356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output355_skip]
  kernel_rfl

theorem node357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input357 value105 value1 value32 = (output357, value106, value1) := by
  rw [input357_def, output357_def]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value106 value1 value32 = (output358, value107, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value107 value1 value32 = (output359, value108, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value108 value1 value32 = (output360, value109, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value109 value1 value32 = (output361, value110, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input362 value110 value1 value32 = (output362, value111, value1) := by
  rw [input362_def, output362_def]
  kernel_rfl

theorem node363_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value109 value1 value32 = (output361, value110, value1))
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value110 value1 value32 = (output362, value111, value1)) : Flapjack.WordAlloc.removeDeadStructural input363 value109 value1 value32 = (output363, value111, value1) := by
  rw [input363_def, output363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output362_skip]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value111 value1 value32 = (output364, value112, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value109 value1 value32 = (output363, value111, value1))
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value111 value1 value32 = (output364, value112, value1)) : Flapjack.WordAlloc.removeDeadStructural input365 value109 value1 value32 = (output365, value112, value1) := by
  rw [input365_def, output365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output364_skip]
  kernel_rfl

theorem node366_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value108 value1 value32 = (output360, value109, value1))
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value109 value1 value32 = (output365, value112, value1)) : Flapjack.WordAlloc.removeDeadStructural input366 value108 value1 value32 = (output366, value112, value1) := by
  rw [input366_def, output366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output365_skip]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value112 value1 value32 = (output367, value113, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value113 value1 value32 = (output368, value114, value1) := by
  rw [input368_def, output368_def]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value114 value1 value32 = (output369, value115, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value115 value1 value32 = (output370, value116, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value114 value1 value32 = (output369, value115, value1))
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value115 value1 value32 = (output370, value116, value1)) : Flapjack.WordAlloc.removeDeadStructural input371 value114 value1 value32 = (output371, value116, value1) := by
  rw [input371_def, output371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output370_skip]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value116 value1 value32 = (output372, value117, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value114 value1 value32 = (output371, value116, value1))
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value116 value1 value32 = (output372, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input373 value114 value1 value32 = (output373, value117, value1) := by
  rw [input373_def, output373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output372_skip]
  kernel_rfl

theorem node374_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value113 value1 value32 = (output368, value114, value1))
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value114 value1 value32 = (output373, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input374 value113 value1 value32 = (output374, value117, value1) := by
  rw [input374_def, output374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output373_skip]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value117 value1 value32 = (output375, value117, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value117 value1 value32 = (output376, value117, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value117 value1 value32 = (output377, value117, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value117 value1 value32 = (output378, value117, value1) := by
  rw [input378_def, output378_def]
  kernel_rfl

theorem node379_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value117 value1 value32 = (output377, value117, value1))
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value117 value1 value32 = (output378, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input379 value117 value1 value32 = (output379, value117, value1) := by
  rw [input379_def, output379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output378_skip]
  kernel_rfl

theorem node380_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value117 value1 value32 = (output376, value117, value1))
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value117 value1 value32 = (output379, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input380 value117 value1 value32 = (output380, value117, value1) := by
  rw [input380_def, output380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output379_skip]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value117 value1 value32 = (output381, value117, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input382 value117 value1 value32 = (output382, value117, value1) := by
  rw [input382_def, output382_def]
  kernel_rfl

theorem node383_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value117 value1 value32 = (output381, value117, value1))
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value117 value1 value32 = (output382, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input383 value117 value1 value32 = (output383, value117, value1) := by
  rw [input383_def, output383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output382_skip]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value117 value1 value32 = (output384, value118, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value118 value1 value32 = (output385, value119, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value117 value1 value32 = (output384, value118, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value118 value1 value32 = (output385, value119, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value117 value1 value32 = (output386, value119, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output385_skip]
  kernel_rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value119 value1 value32 = (output387, value117, value1) := by
  rw [input387_def, output387_def]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value117 value1 value32 = (output388, value117, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input389 value117 value1 value32 = (output389, value117, value1) := by
  rw [input389_def, output389_def]
  kernel_rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value117 value1 value32 = (output390, value117, value1) := by
  rw [input390_def, output390_def]
  kernel_rfl

theorem node391_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value117 value1 value32 = (output389, value117, value1))
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value117 value1 value32 = (output390, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input391 value117 value1 value32 = (output391, value117, value1) := by
  rw [input391_def, output391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output390_skip]
  kernel_rfl

theorem node392_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value117 value1 value32 = (output388, value117, value1))
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value117 value1 value32 = (output391, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input392 value117 value1 value32 = (output392, value117, value1) := by
  rw [input392_def, output392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output391_skip]
  kernel_rfl

theorem node393_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value119 value1 value32 = (output387, value117, value1))
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value117 value1 value32 = (output392, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input393 value119 value1 value32 = (output393, value117, value1) := by
  rw [input393_def, output393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output392_skip]
  kernel_rfl

theorem node394_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value117 value1 value32 = (output386, value119, value1))
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value119 value1 value32 = (output393, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input394 value117 value1 value32 = (output394, value117, value1) := by
  rw [input394_def, output394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output393_skip]
  kernel_rfl

theorem node395_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value117 value1 value32 = (output383, value117, value1))
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value117 value1 value32 = (output394, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input395 value117 value1 value32 = (output395, value117, value1) := by
  rw [input395_def, output395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output394_skip]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value117 value1 value32 = (output396, value117, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value117 value1 value32 = (output397, value117, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value117 value1 value32 = (output396, value117, value1))
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value117 value1 value32 = (output397, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input398 value117 value1 value32 = (output398, value117, value1) := by
  rw [input398_def, output398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child396]
  try dsimp only
  rw [child397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output396_skip, output397_skip]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value117 value1 value32 = (output399, value117, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value117 value1 value32 = (output398, value117, value1))
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value117 value1 value32 = (output399, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input400 value117 value1 value32 = (output400, value117, value1) := by
  rw [input400_def, output400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output399_skip]
  kernel_rfl

theorem node401_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value117 value1 value32 = (output395, value117, value1))
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value117 value1 value32 = (output400, value117, value1)) : Flapjack.WordAlloc.removeDeadStructural input401 value117 value1 value32 = (output401, value121, value1) := by
  rw [input401_def, output401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child395]
  try dsimp only
  rw [child400]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output400_skip]
  kernel_rfl

theorem node402_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value117 value1 value32 = (output380, value117, value1))
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value117 value1 value32 = (output401, value121, value1)) : Flapjack.WordAlloc.removeDeadStructural input402 value117 value1 value32 = (output402, value121, value1) := by
  rw [input402_def, output402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output401_skip]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value121 value1 value32 = (output403, value122, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value122 value1 value32 = (output404, value123, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value123 value1 value32 = (output405, value124, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value124 value1 value32 = (output406, value125, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value125 value1 value32 = (output407, value126, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value126 value1 value32 = (output408, value127, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value125 value1 value32 = (output407, value126, value1))
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value126 value1 value32 = (output408, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input409 value125 value1 value32 = (output409, value127, value1) := by
  rw [input409_def, output409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output408_skip]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value127 value1 value32 = (output410, value128, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value125 value1 value32 = (output409, value127, value1))
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value127 value1 value32 = (output410, value128, value1)) : Flapjack.WordAlloc.removeDeadStructural input411 value125 value1 value32 = (output411, value128, value1) := by
  rw [input411_def, output411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output410_skip]
  kernel_rfl

theorem node412_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value124 value1 value32 = (output406, value125, value1))
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value125 value1 value32 = (output411, value128, value1)) : Flapjack.WordAlloc.removeDeadStructural input412 value124 value1 value32 = (output412, value128, value1) := by
  rw [input412_def, output412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output411_skip]
  kernel_rfl

theorem node413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input413 value128 value1 value32 = (output413, value129, value1) := by
  rw [input413_def, output413_def]
  kernel_rfl

theorem node414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input414 value129 value1 value32 = (output414, value130, value1) := by
  rw [input414_def, output414_def]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value130 value1 value32 = (output415, value131, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value131 value1 value32 = (output416, value132, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value130 value1 value32 = (output415, value131, value1))
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value131 value1 value32 = (output416, value132, value1)) : Flapjack.WordAlloc.removeDeadStructural input417 value130 value1 value32 = (output417, value132, value1) := by
  rw [input417_def, output417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output416_skip]
  kernel_rfl

theorem node418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input418 value132 value1 value32 = (output418, value133, value1) := by
  rw [input418_def, output418_def]
  kernel_rfl

theorem node419_cond_eq
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value130 value1 value32 = (output417, value132, value1))
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value132 value1 value32 = (output418, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input419 value130 value1 value32 = (output419, value133, value1) := by
  rw [input419_def, output419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child417]
  try dsimp only
  rw [child418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output417_skip, output418_skip]
  kernel_rfl

theorem node420_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value129 value1 value32 = (output414, value130, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value130 value1 value32 = (output419, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value129 value1 value32 = (output420, value133, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input421 value133 value1 value32 = (output421, value133, value1) := by
  rw [input421_def, output421_def]
  kernel_rfl

theorem node422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input422 value133 value1 value32 = (output422, value133, value1) := by
  rw [input422_def, output422_def]
  kernel_rfl

theorem node423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input423 value133 value1 value32 = (output423, value133, value1) := by
  rw [input423_def, output423_def]
  kernel_rfl

theorem node424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input424 value133 value1 value32 = (output424, value133, value1) := by
  rw [input424_def, output424_def]
  kernel_rfl

theorem node425_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value133 value1 value32 = (output423, value133, value1))
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value133 value1 value32 = (output424, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input425 value133 value1 value32 = (output425, value133, value1) := by
  rw [input425_def, output425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output424_skip]
  kernel_rfl

theorem node426_cond_eq
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value133 value1 value32 = (output422, value133, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value133 value1 value32 = (output425, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value133 value1 value32 = (output426, value133, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child422]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output422_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value133 value1 value32 = (output427, value133, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value133 value1 value32 = (output428, value133, value1) := by
  rw [input428_def, output428_def]
  kernel_rfl

theorem node429_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value133 value1 value32 = (output427, value133, value1))
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value133 value1 value32 = (output428, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input429 value133 value1 value32 = (output429, value133, value1) := by
  rw [input429_def, output429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output428_skip]
  kernel_rfl

theorem node430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input430 value133 value1 value32 = (output430, value134, value1) := by
  rw [input430_def, output430_def]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value134 value1 value32 = (output431, value135, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value133 value1 value32 = (output430, value134, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value134 value1 value32 = (output431, value135, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value133 value1 value32 = (output432, value135, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output431_skip]
  kernel_rfl

theorem node433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input433 value135 value1 value32 = (output433, value133, value1) := by
  rw [input433_def, output433_def]
  kernel_rfl

theorem node434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input434 value133 value1 value32 = (output434, value133, value1) := by
  rw [input434_def, output434_def]
  kernel_rfl

theorem node435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input435 value133 value1 value32 = (output435, value133, value1) := by
  rw [input435_def, output435_def]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value133 value1 value32 = (output436, value133, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value133 value1 value32 = (output435, value133, value1))
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value133 value1 value32 = (output436, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input437 value133 value1 value32 = (output437, value133, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output436_skip]
  kernel_rfl

theorem node438_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value133 value1 value32 = (output434, value133, value1))
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value133 value1 value32 = (output437, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input438 value133 value1 value32 = (output438, value133, value1) := by
  rw [input438_def, output438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  try dsimp only
  rw [child437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output434_skip, output437_skip]
  kernel_rfl

theorem node439_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value135 value1 value32 = (output433, value133, value1))
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value133 value1 value32 = (output438, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input439 value135 value1 value32 = (output439, value133, value1) := by
  rw [input439_def, output439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output438_skip]
  kernel_rfl

theorem node440_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value133 value1 value32 = (output432, value135, value1))
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value135 value1 value32 = (output439, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input440 value133 value1 value32 = (output440, value133, value1) := by
  rw [input440_def, output440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output439_skip]
  kernel_rfl

theorem node441_cond_eq
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value133 value1 value32 = (output429, value133, value1))
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value133 value1 value32 = (output440, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input441 value133 value1 value32 = (output441, value133, value1) := by
  rw [input441_def, output441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child429]
  try dsimp only
  rw [child440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output429_skip, output440_skip]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value133 value1 value32 = (output442, value133, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value133 value1 value32 = (output443, value133, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value133 value1 value32 = (output442, value133, value1))
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value133 value1 value32 = (output443, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input444 value133 value1 value32 = (output444, value133, value1) := by
  rw [input444_def, output444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output443_skip]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value133 value1 value32 = (output445, value133, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value133 value1 value32 = (output444, value133, value1))
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value133 value1 value32 = (output445, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input446 value133 value1 value32 = (output446, value133, value1) := by
  rw [input446_def, output446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output445_skip]
  kernel_rfl

theorem node447_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value133 value1 value32 = (output441, value133, value1))
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value133 value1 value32 = (output446, value133, value1)) : Flapjack.WordAlloc.removeDeadStructural input447 value133 value1 value32 = (output447, value137, value1) := by
  rw [input447_def, output447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child441]
  try dsimp only
  rw [child446]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output446_skip]
  kernel_rfl

theorem node448_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value133 value1 value32 = (output426, value133, value1))
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value133 value1 value32 = (output447, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input448 value133 value1 value32 = (output448, value137, value1) := by
  rw [input448_def, output448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output447_skip]
  kernel_rfl

theorem node449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input449 value137 value1 value32 = (output449, value138, value1) := by
  rw [input449_def, output449_def]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value138 value1 value32 = (output450, value139, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value139 value1 value32 = (output451, value140, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value140 value1 value32 = (output452, value141, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value141 value1 value32 = (output453, value142, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value142 value1 value32 = (output454, value143, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value141 value1 value32 = (output453, value142, value1))
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value142 value1 value32 = (output454, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input455 value141 value1 value32 = (output455, value143, value1) := by
  rw [input455_def, output455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output454_skip]
  kernel_rfl

theorem node456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input456 value143 value1 value32 = (output456, value144, value1) := by
  rw [input456_def, output456_def]
  kernel_rfl

theorem node457_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value141 value1 value32 = (output455, value143, value1))
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value143 value1 value32 = (output456, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input457 value141 value1 value32 = (output457, value144, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output456_skip]
  kernel_rfl

theorem node458_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value140 value1 value32 = (output452, value141, value1))
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value141 value1 value32 = (output457, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input458 value140 value1 value32 = (output458, value144, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output457_skip]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value144 value1 value32 = (output459, value145, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value145 value1 value32 = (output460, value146, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value146 value1 value32 = (output461, value147, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value147 value1 value32 = (output462, value148, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value146 value1 value32 = (output461, value147, value1))
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value147 value1 value32 = (output462, value148, value1)) : Flapjack.WordAlloc.removeDeadStructural input463 value146 value1 value32 = (output463, value148, value1) := by
  rw [input463_def, output463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output462_skip]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value148 value1 value32 = (output464, value149, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value146 value1 value32 = (output463, value148, value1))
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value148 value1 value32 = (output464, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input465 value146 value1 value32 = (output465, value149, value1) := by
  rw [input465_def, output465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output464_skip]
  kernel_rfl

theorem node466_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value145 value1 value32 = (output460, value146, value1))
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value146 value1 value32 = (output465, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input466 value145 value1 value32 = (output466, value149, value1) := by
  rw [input466_def, output466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output465_skip]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value149 value1 value32 = (output467, value149, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input468 value149 value1 value32 = (output468, value149, value1) := by
  rw [input468_def, output468_def]
  kernel_rfl

theorem node469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input469 value149 value1 value32 = (output469, value149, value1) := by
  rw [input469_def, output469_def]
  kernel_rfl

theorem node470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input470 value149 value1 value32 = (output470, value149, value1) := by
  rw [input470_def, output470_def]
  kernel_rfl

theorem node471_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value149 value1 value32 = (output469, value149, value1))
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value149 value1 value32 = (output470, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input471 value149 value1 value32 = (output471, value149, value1) := by
  rw [input471_def, output471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output470_skip]
  kernel_rfl

theorem node472_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value149 value1 value32 = (output468, value149, value1))
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value149 value1 value32 = (output471, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input472 value149 value1 value32 = (output472, value149, value1) := by
  rw [input472_def, output472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output471_skip]
  kernel_rfl

theorem node473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input473 value149 value1 value32 = (output473, value149, value1) := by
  rw [input473_def, output473_def]
  kernel_rfl

theorem node474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input474 value149 value1 value32 = (output474, value149, value1) := by
  rw [input474_def, output474_def]
  kernel_rfl

theorem node475_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value149 value1 value32 = (output473, value149, value1))
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value149 value1 value32 = (output474, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input475 value149 value1 value32 = (output475, value149, value1) := by
  rw [input475_def, output475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  try dsimp only
  rw [child474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output473_skip, output474_skip]
  kernel_rfl

theorem node476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input476 value149 value1 value32 = (output476, value149, value1) := by
  rw [input476_def, output476_def]
  kernel_rfl

theorem node477_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value149 value1 value32 = (output475, value149, value1))
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value149 value1 value32 = (output476, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input477 value149 value1 value32 = (output477, value149, value1) := by
  rw [input477_def, output477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  try dsimp only
  rw [child476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output475_skip, output476_skip]
  kernel_rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value149 value1 value32 = (output478, value150, value1) := by
  rw [input478_def, output478_def]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value150 value1 value32 = (output479, value151, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value149 value1 value32 = (output478, value150, value1))
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value150 value1 value32 = (output479, value151, value1)) : Flapjack.WordAlloc.removeDeadStructural input480 value149 value1 value32 = (output480, value151, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output479_skip]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value151 value1 value32 = (output481, value149, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input482 value149 value1 value32 = (output482, value149, value1) := by
  rw [input482_def, output482_def]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value149 value1 value32 = (output483, value149, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value149 value1 value32 = (output484, value149, value1) := by
  rw [input484_def, output484_def]
  kernel_rfl

theorem node485_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value149 value1 value32 = (output483, value149, value1))
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value149 value1 value32 = (output484, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input485 value149 value1 value32 = (output485, value149, value1) := by
  rw [input485_def, output485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output484_skip]
  kernel_rfl

theorem node486_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value149 value1 value32 = (output482, value149, value1))
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value149 value1 value32 = (output485, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input486 value149 value1 value32 = (output486, value149, value1) := by
  rw [input486_def, output486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output485_skip]
  kernel_rfl

theorem node487_cond_eq
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value151 value1 value32 = (output481, value149, value1))
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value149 value1 value32 = (output486, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input487 value151 value1 value32 = (output487, value149, value1) := by
  rw [input487_def, output487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child481]
  try dsimp only
  rw [child486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output481_skip, output486_skip]
  kernel_rfl

theorem node488_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value149 value1 value32 = (output480, value151, value1))
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value151 value1 value32 = (output487, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input488 value149 value1 value32 = (output488, value149, value1) := by
  rw [input488_def, output488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child480]
  try dsimp only
  rw [child487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output487_skip]
  kernel_rfl

theorem node489_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value149 value1 value32 = (output477, value149, value1))
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value149 value1 value32 = (output488, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input489 value149 value1 value32 = (output489, value149, value1) := by
  rw [input489_def, output489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output488_skip]
  kernel_rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value149 value1 value32 = (output490, value149, value1) := by
  rw [input490_def, output490_def]
  kernel_rfl

theorem node491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input491 value149 value1 value32 = (output491, value149, value1) := by
  rw [input491_def, output491_def]
  kernel_rfl

theorem node492_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value149 value1 value32 = (output490, value149, value1))
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value149 value1 value32 = (output491, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input492 value149 value1 value32 = (output492, value149, value1) := by
  rw [input492_def, output492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  try dsimp only
  rw [child491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output490_skip, output491_skip]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value149 value1 value32 = (output493, value149, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value149 value1 value32 = (output492, value149, value1))
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value149 value1 value32 = (output493, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input494 value149 value1 value32 = (output494, value149, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output493_skip]
  kernel_rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value149 value1 value32 = (output495, value149, value1) := by
  rw [input495_def, output495_def]
  kernel_rfl

theorem node496_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value149 value1 value32 = (output494, value149, value1))
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value149 value1 value32 = (output495, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input496 value149 value1 value32 = (output496, value149, value1) := by
  rw [input496_def, output496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output495_skip]
  kernel_rfl

theorem node497_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value149 value1 value32 = (output489, value149, value1))
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value149 value1 value32 = (output496, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input497 value149 value1 value32 = (output497, value153, value1) := by
  rw [input497_def, output497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child489]
  try dsimp only
  rw [child496]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output496_skip]
  kernel_rfl

theorem node498_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value149 value1 value32 = (output472, value149, value1))
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value149 value1 value32 = (output497, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input498 value149 value1 value32 = (output498, value153, value1) := by
  rw [input498_def, output498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output497_skip]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value153 value1 value32 = (output499, value154, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input500 value154 value1 value32 = (output500, value155, value1) := by
  rw [input500_def, output500_def]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value155 value1 value32 = (output501, value156, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input502 value156 value1 value32 = (output502, value157, value1) := by
  rw [input502_def, output502_def]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value157 value1 value32 = (output503, value158, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value156 value1 value32 = (output502, value157, value1))
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value157 value1 value32 = (output503, value158, value1)) : Flapjack.WordAlloc.removeDeadStructural input504 value156 value1 value32 = (output504, value158, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output503_skip]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value158 value1 value32 = (output505, value159, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value156 value1 value32 = (output504, value158, value1))
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value158 value1 value32 = (output505, value159, value1)) : Flapjack.WordAlloc.removeDeadStructural input506 value156 value1 value32 = (output506, value159, value1) := by
  rw [input506_def, output506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output505_skip]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value159 value1 value32 = (output507, value160, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value160 value1 value32 = (output508, value161, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value161 value1 value32 = (output509, value162, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value160 value1 value32 = (output508, value161, value1))
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value161 value1 value32 = (output509, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input510 value160 value1 value32 = (output510, value162, value1) := by
  rw [input510_def, output510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output509_skip]
  kernel_rfl

theorem node511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input511 value162 value1 value32 = (output511, value163, value1) := by
  rw [input511_def, output511_def]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages79.Parallel
