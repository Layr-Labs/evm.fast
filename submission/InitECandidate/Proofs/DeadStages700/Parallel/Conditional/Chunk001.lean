import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages700.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages700.Parallel
theorem node256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input256 value93 value1 value2 = (output256, value94, value1) := by
  rw [input256_def, output256_def]
  kernel_rfl

theorem node257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input257 value94 value1 value2 = (output257, value95, value1) := by
  rw [input257_def, output257_def]
  kernel_rfl

theorem node258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input258 value95 value1 value2 = (output258, value96, value1) := by
  rw [input258_def, output258_def]
  kernel_rfl

theorem node259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input259 value96 value1 value2 = (output259, value97, value1) := by
  rw [input259_def, output259_def]
  kernel_rfl

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value97 value1 value2 = (output260, value98, value1) := by
  rw [input260_def, output260_def]
  kernel_rfl

theorem node261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input261 value98 value1 value2 = (output261, value99, value1) := by
  rw [input261_def, output261_def]
  kernel_rfl

theorem node262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input262 value99 value1 value2 = (output262, value99, value1) := by
  rw [input262_def, output262_def]
  kernel_rfl

theorem node263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input263 value99 value1 value2 = (output263, value100, value1) := by
  rw [input263_def, output263_def]
  kernel_rfl

theorem node264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input264 value100 value1 value2 = (output264, value101, value1) := by
  rw [input264_def, output264_def]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value101 value1 value2 = (output265, value101, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value100 value1 value2 = (output264, value101, value1))
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value101 value1 value2 = (output265, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input266 value100 value1 value2 = (output266, value101, value1) := by
  rw [input266_def, output266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output265_skip]
  kernel_rfl

theorem node267_cond_eq
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value99 value1 value2 = (output263, value100, value1))
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value100 value1 value2 = (output266, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input267 value99 value1 value2 = (output267, value101, value1) := by
  rw [input267_def, output267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child263]
  try dsimp only
  rw [child266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output263_skip, output266_skip]
  kernel_rfl

theorem node268_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value99 value1 value2 = (output262, value99, value1))
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value99 value1 value2 = (output267, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input268 value99 value1 value2 = (output268, value101, value1) := by
  rw [input268_def, output268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output267_skip]
  kernel_rfl

theorem node269_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value98 value1 value2 = (output261, value99, value1))
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value99 value1 value2 = (output268, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input269 value98 value1 value2 = (output269, value101, value1) := by
  rw [input269_def, output269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output268_skip]
  kernel_rfl

theorem node270_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value97 value1 value2 = (output260, value98, value1))
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value98 value1 value2 = (output269, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input270 value97 value1 value2 = (output270, value101, value1) := by
  rw [input270_def, output270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output269_skip]
  kernel_rfl

theorem node271_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value96 value1 value2 = (output259, value97, value1))
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value97 value1 value2 = (output270, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input271 value96 value1 value2 = (output271, value101, value1) := by
  rw [input271_def, output271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output270_skip]
  kernel_rfl

theorem node272_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value95 value1 value2 = (output258, value96, value1))
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value96 value1 value2 = (output271, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input272 value95 value1 value2 = (output272, value101, value1) := by
  rw [input272_def, output272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output271_skip]
  kernel_rfl

theorem node273_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value94 value1 value2 = (output257, value95, value1))
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value95 value1 value2 = (output272, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input273 value94 value1 value2 = (output273, value101, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output272_skip]
  kernel_rfl

theorem node274_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value93 value1 value2 = (output256, value94, value1))
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value94 value1 value2 = (output273, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input274 value93 value1 value2 = (output274, value101, value1) := by
  rw [input274_def, output274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output273_skip]
  kernel_rfl

theorem node275_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value92 value1 value2 = (output255, value93, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value93 value1 value2 = (output274, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value92 value1 value2 = (output275, value101, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value91 value1 value2 = (output254, value92, value1))
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value92 value1 value2 = (output275, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input276 value91 value1 value2 = (output276, value101, value1) := by
  rw [input276_def, output276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output275_skip]
  kernel_rfl

theorem node277_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value90 value1 value2 = (output253, value91, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value91 value1 value2 = (output276, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value90 value1 value2 = (output277, value101, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value89 value1 value2 = (output252, value90, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value90 value1 value2 = (output277, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value89 value1 value2 = (output278, value101, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value88 value1 value2 = (output251, value89, value1))
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value89 value1 value2 = (output278, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input279 value88 value1 value2 = (output279, value101, value1) := by
  rw [input279_def, output279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output278_skip]
  kernel_rfl

theorem node280_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value87 value1 value2 = (output250, value88, value1))
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value88 value1 value2 = (output279, value101, value1)) : Flapjack.WordAlloc.removeDeadStructural input280 value87 value1 value2 = (output280, value101, value1) := by
  rw [input280_def, output280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output279_skip]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value101 value1 value2 = (output281, value102, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value87 value1 value2 = (output280, value101, value1))
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value101 value1 value2 = (output281, value102, value1)) : Flapjack.WordAlloc.removeDeadStructural input282 value87 value1 value2 = (output282, value102, value1) := by
  rw [input282_def, output282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output281_skip]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value102 value1 value2 = (output283, value103, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value103 value1 value2 = (output284, value104, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value102 value1 value2 = (output283, value103, value1))
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value103 value1 value2 = (output284, value104, value1)) : Flapjack.WordAlloc.removeDeadStructural input285 value102 value1 value2 = (output285, value104, value1) := by
  rw [input285_def, output285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output284_skip]
  kernel_rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value104 value1 value2 = (output286, value102, value1) := by
  rw [input286_def, output286_def]
  kernel_rfl

theorem node287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input287 value102 value1 value2 = (output287, value102, value1) := by
  rw [input287_def, output287_def]
  kernel_rfl

theorem node288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input288 value102 value1 value2 = (output288, value105, value1) := by
  rw [input288_def, output288_def]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value105 value1 value2 = (output289, value106, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value102 value1 value2 = (output288, value105, value1))
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value105 value1 value2 = (output289, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input290 value102 value1 value2 = (output290, value106, value1) := by
  rw [input290_def, output290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output289_skip]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value106 value1 value2 = (output291, value107, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value102 value1 value2 = (output290, value106, value1))
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value106 value1 value2 = (output291, value107, value1)) : Flapjack.WordAlloc.removeDeadStructural input292 value102 value1 value2 = (output292, value107, value1) := by
  rw [input292_def, output292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output291_skip]
  kernel_rfl

theorem node293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input293 value107 value1 value2 = (output293, value108, value1) := by
  rw [input293_def, output293_def]
  kernel_rfl

theorem node294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input294 value108 value1 value2 = (output294, value108, value1) := by
  rw [input294_def, output294_def]
  kernel_rfl

theorem node295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input295 value108 value1 value2 = (output295, value109, value1) := by
  rw [input295_def, output295_def]
  kernel_rfl

theorem node296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input296 value109 value1 value2 = (output296, value110, value1) := by
  rw [input296_def, output296_def]
  kernel_rfl

theorem node297_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value108 value1 value2 = (output295, value109, value1))
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value109 value1 value2 = (output296, value110, value1)) : Flapjack.WordAlloc.removeDeadStructural input297 value108 value1 value2 = (output297, value110, value1) := by
  rw [input297_def, output297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  try dsimp only
  rw [child296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output295_skip, output296_skip]
  kernel_rfl

theorem node298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input298 value110 value1 value2 = (output298, value111, value1) := by
  rw [input298_def, output298_def]
  kernel_rfl

theorem node299_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value108 value1 value2 = (output297, value110, value1))
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value110 value1 value2 = (output298, value111, value1)) : Flapjack.WordAlloc.removeDeadStructural input299 value108 value1 value2 = (output299, value111, value1) := by
  rw [input299_def, output299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  try dsimp only
  rw [child298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output297_skip, output298_skip]
  kernel_rfl

theorem node300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input300 value111 value1 value2 = (output300, value112, value1) := by
  rw [input300_def, output300_def]
  kernel_rfl

theorem node301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input301 value112 value1 value2 = (output301, value112, value1) := by
  rw [input301_def, output301_def]
  kernel_rfl

theorem node302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input302 value112 value1 value2 = (output302, value112, value1) := by
  rw [input302_def, output302_def]
  kernel_rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value112 value1 value2 = (output303, value113, value1) := by
  rw [input303_def, output303_def]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value113 value1 value2 = (output304, value113, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input305 value113 value1 value2 = (output305, value113, value1) := by
  rw [input305_def, output305_def]
  kernel_rfl

theorem node306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input306 value113 value1 value2 = (output306, value113, value1) := by
  rw [input306_def, output306_def]
  kernel_rfl

theorem node307_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value113 value1 value2 = (output305, value113, value1))
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value113 value1 value2 = (output306, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input307 value113 value1 value2 = (output307, value113, value1) := by
  rw [input307_def, output307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output306_skip]
  kernel_rfl

theorem node308_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value113 value1 value2 = (output304, value113, value1))
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value113 value1 value2 = (output307, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input308 value113 value1 value2 = (output308, value113, value1) := by
  rw [input308_def, output308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output307_skip]
  kernel_rfl

theorem node309_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value112 value1 value2 = (output303, value113, value1))
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value113 value1 value2 = (output308, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input309 value112 value1 value2 = (output309, value113, value1) := by
  rw [input309_def, output309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output308_skip]
  kernel_rfl

theorem node310_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value112 value1 value2 = (output302, value112, value1))
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value112 value1 value2 = (output309, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input310 value112 value1 value2 = (output310, value113, value1) := by
  rw [input310_def, output310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output309_skip]
  kernel_rfl

theorem node311_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value112 value1 value2 = (output301, value112, value1))
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value112 value1 value2 = (output310, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input311 value112 value1 value2 = (output311, value113, value1) := by
  rw [input311_def, output311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output310_skip]
  kernel_rfl

theorem node312_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value111 value1 value2 = (output300, value112, value1))
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value112 value1 value2 = (output311, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input312 value111 value1 value2 = (output312, value113, value1) := by
  rw [input312_def, output312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output311_skip]
  kernel_rfl

theorem node313_cond_eq
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value108 value1 value2 = (output299, value111, value1))
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value111 value1 value2 = (output312, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input313 value108 value1 value2 = (output313, value113, value1) := by
  rw [input313_def, output313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child299]
  try dsimp only
  rw [child312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output299_skip, output312_skip]
  kernel_rfl

theorem node314_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value108 value1 value2 = (output294, value108, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value108 value1 value2 = (output313, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value108 value1 value2 = (output314, value113, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output294_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value107 value1 value2 = (output293, value108, value1))
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value108 value1 value2 = (output314, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input315 value107 value1 value2 = (output315, value113, value1) := by
  rw [input315_def, output315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output314_skip]
  kernel_rfl

theorem node316_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value102 value1 value2 = (output292, value107, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value107 value1 value2 = (output315, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value102 value1 value2 = (output316, value113, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value102 value1 value2 = (output287, value102, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value102 value1 value2 = (output316, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value102 value1 value2 = (output317, value113, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output316_skip]
  kernel_rfl

theorem node318_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value104 value1 value2 = (output286, value102, value1))
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value102 value1 value2 = (output317, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input318 value104 value1 value2 = (output318, value113, value1) := by
  rw [input318_def, output318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output317_skip]
  kernel_rfl

theorem node319_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value102 value1 value2 = (output285, value104, value1))
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value104 value1 value2 = (output318, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input319 value102 value1 value2 = (output319, value113, value1) := by
  rw [input319_def, output319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output318_skip]
  kernel_rfl

theorem node320_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value87 value1 value2 = (output282, value102, value1))
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value102 value1 value2 = (output319, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input320 value87 value1 value2 = (output320, value113, value1) := by
  rw [input320_def, output320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output319_skip]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value87 value1 value2 = (output321, value114, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value114 value1 value2 = (output322, value115, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value115 value1 value2 = (output323, value116, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input324 value116 value1 value2 = (output324, value117, value1) := by
  rw [input324_def, output324_def]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value117 value1 value2 = (output325, value118, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value118 value1 value2 = (output326, value119, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input327 value119 value1 value2 = (output327, value120, value1) := by
  rw [input327_def, output327_def]
  kernel_rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value120 value1 value2 = (output328, value121, value1) := by
  rw [input328_def, output328_def]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value121 value1 value2 = (output329, value122, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value122 value1 value2 = (output330, value123, value1) := by
  rw [input330_def, output330_def]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value123 value1 value2 = (output331, value124, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value124 value1 value2 = (output332, value125, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value125 value1 value2 = (output333, value125, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value125 value1 value2 = (output334, value126, value1) := by
  rw [input334_def, output334_def]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value126 value1 value2 = (output335, value127, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value127 value1 value2 = (output336, value127, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value126 value1 value2 = (output335, value127, value1))
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value127 value1 value2 = (output336, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input337 value126 value1 value2 = (output337, value127, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output336_skip]
  kernel_rfl

theorem node338_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value125 value1 value2 = (output334, value126, value1))
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value126 value1 value2 = (output337, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input338 value125 value1 value2 = (output338, value127, value1) := by
  rw [input338_def, output338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output337_skip]
  kernel_rfl

theorem node339_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value125 value1 value2 = (output333, value125, value1))
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value125 value1 value2 = (output338, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input339 value125 value1 value2 = (output339, value127, value1) := by
  rw [input339_def, output339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output338_skip]
  kernel_rfl

theorem node340_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value124 value1 value2 = (output332, value125, value1))
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value125 value1 value2 = (output339, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input340 value124 value1 value2 = (output340, value127, value1) := by
  rw [input340_def, output340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output339_skip]
  kernel_rfl

theorem node341_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value123 value1 value2 = (output331, value124, value1))
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value124 value1 value2 = (output340, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input341 value123 value1 value2 = (output341, value127, value1) := by
  rw [input341_def, output341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output340_skip]
  kernel_rfl

theorem node342_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value122 value1 value2 = (output330, value123, value1))
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value123 value1 value2 = (output341, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input342 value122 value1 value2 = (output342, value127, value1) := by
  rw [input342_def, output342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output341_skip]
  kernel_rfl

theorem node343_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value121 value1 value2 = (output329, value122, value1))
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value122 value1 value2 = (output342, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input343 value121 value1 value2 = (output343, value127, value1) := by
  rw [input343_def, output343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output342_skip]
  kernel_rfl

theorem node344_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value120 value1 value2 = (output328, value121, value1))
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value121 value1 value2 = (output343, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input344 value120 value1 value2 = (output344, value127, value1) := by
  rw [input344_def, output344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output343_skip]
  kernel_rfl

theorem node345_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value119 value1 value2 = (output327, value120, value1))
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value120 value1 value2 = (output344, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input345 value119 value1 value2 = (output345, value127, value1) := by
  rw [input345_def, output345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output344_skip]
  kernel_rfl

theorem node346_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value118 value1 value2 = (output326, value119, value1))
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value119 value1 value2 = (output345, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input346 value118 value1 value2 = (output346, value127, value1) := by
  rw [input346_def, output346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output345_skip]
  kernel_rfl

theorem node347_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value117 value1 value2 = (output325, value118, value1))
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value118 value1 value2 = (output346, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input347 value117 value1 value2 = (output347, value127, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output346_skip]
  kernel_rfl

theorem node348_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value116 value1 value2 = (output324, value117, value1))
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value117 value1 value2 = (output347, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input348 value116 value1 value2 = (output348, value127, value1) := by
  rw [input348_def, output348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output347_skip]
  kernel_rfl

theorem node349_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value115 value1 value2 = (output323, value116, value1))
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value116 value1 value2 = (output348, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input349 value115 value1 value2 = (output349, value127, value1) := by
  rw [input349_def, output349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output348_skip]
  kernel_rfl

theorem node350_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value114 value1 value2 = (output322, value115, value1))
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value115 value1 value2 = (output349, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input350 value114 value1 value2 = (output350, value127, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output349_skip]
  kernel_rfl

theorem node351_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value87 value1 value2 = (output321, value114, value1))
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value114 value1 value2 = (output350, value127, value1)) : Flapjack.WordAlloc.removeDeadStructural input351 value87 value1 value2 = (output351, value127, value1) := by
  rw [input351_def, output351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output350_skip]
  kernel_rfl

theorem node352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input352 value127 value1 value2 = (output352, value128, value1) := by
  rw [input352_def, output352_def]
  kernel_rfl

theorem node353_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value87 value1 value2 = (output351, value127, value1))
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value127 value1 value2 = (output352, value128, value1)) : Flapjack.WordAlloc.removeDeadStructural input353 value87 value1 value2 = (output353, value128, value1) := by
  rw [input353_def, output353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output352_skip]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value128 value1 value2 = (output354, value128, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value87 value1 value2 = (output353, value128, value1))
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value128 value1 value2 = (output354, value128, value1)) : Flapjack.WordAlloc.removeDeadStructural input355 value87 value1 value2 = (output355, value128, value1) := by
  rw [input355_def, output355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output354_skip]
  kernel_rfl

theorem node356_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value87 value1 value2 = (output320, value113, value1))
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value87 value1 value2 = (output355, value128, value1)) : Flapjack.WordAlloc.removeDeadStructural input356 value87 value1 value2 = (output356, value131, value1) := by
  rw [input356_def, output356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child320]
  try dsimp only
  rw [child355]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output355_skip]
  kernel_rfl

theorem node357_cond_eq
    (child249 : Flapjack.WordAlloc.removeDeadStructural input249 value87 value1 value2 = (output249, value87, value1))
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value87 value1 value2 = (output356, value131, value1)) : Flapjack.WordAlloc.removeDeadStructural input357 value87 value1 value2 = (output357, value131, value1) := by
  rw [input357_def, output357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child249]
  try dsimp only
  rw [child356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output249_skip, output356_skip]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value131 value1 value2 = (output358, value128, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value128 value1 value2 = (output359, value132, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value132 value1 value2 = (output360, value132, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value132 value1 value2 = (output361, value133, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input362 value133 value1 value2 = (output362, value134, value1) := by
  rw [input362_def, output362_def]
  kernel_rfl

theorem node363_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value132 value1 value2 = (output361, value133, value1))
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value133 value1 value2 = (output362, value134, value1)) : Flapjack.WordAlloc.removeDeadStructural input363 value132 value1 value2 = (output363, value134, value1) := by
  rw [input363_def, output363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output362_skip]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value134 value1 value2 = (output364, value135, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value132 value1 value2 = (output363, value134, value1))
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value134 value1 value2 = (output364, value135, value1)) : Flapjack.WordAlloc.removeDeadStructural input365 value132 value1 value2 = (output365, value135, value1) := by
  rw [input365_def, output365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output364_skip]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value135 value1 value2 = (output366, value136, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value136 value1 value2 = (output367, value136, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value136 value1 value2 = (output368, value137, value1) := by
  rw [input368_def, output368_def]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value137 value1 value2 = (output369, value137, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value137 value1 value138 = (output370, value139, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value139 value1 value138 = (output371, value139, value1) := by
  rw [input371_def, output371_def]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value139 value1 value138 = (output372, value137, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value137 value1 value138 = (output373, value139, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value139 value1 value138 = (output372, value137, value1))
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value137 value1 value138 = (output373, value139, value1)) : Flapjack.WordAlloc.removeDeadStructural input374 value139 value1 value138 = (output374, value139, value1) := by
  rw [input374_def, output374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output373_skip]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value139 value1 value138 = (output375, value140, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value140 value1 value138 = (output376, value141, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value141 value1 value138 = (output377, value142, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value142 value1 value138 = (output378, value143, value1) := by
  rw [input378_def, output378_def]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value143 value1 value138 = (output379, value144, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input380 value144 value1 value138 = (output380, value145, value1) := by
  rw [input380_def, output380_def]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value145 value1 value138 = (output381, value146, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input382 value146 value1 value138 = (output382, value146, value1) := by
  rw [input382_def, output382_def]
  kernel_rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value147 value1 value148 = (output383, value149, value1) := by
  rw [input383_def, output383_def]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value149 value1 value148 = (output384, value149, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value149 value1 value148 = (output385, value149, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input386 value149 value1 value148 = (output386, value149, value1) := by
  rw [input386_def, output386_def]
  kernel_rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value149 value1 value148 = (output387, value149, value1) := by
  rw [input387_def, output387_def]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value149 value1 value148 = (output388, value149, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input389 value149 value1 value148 = (output389, value149, value1) := by
  rw [input389_def, output389_def]
  kernel_rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value149 value1 value148 = (output390, value149, value1) := by
  rw [input390_def, output390_def]
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value149 value1 value148 = (output391, value149, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input392 value149 value1 value148 = (output392, value149, value1) := by
  rw [input392_def, output392_def]
  kernel_rfl

theorem node393_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value149 value1 value148 = (output391, value149, value1))
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value149 value1 value148 = (output392, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input393 value149 value1 value148 = (output393, value149, value1) := by
  rw [input393_def, output393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output392_skip]
  kernel_rfl

theorem node394_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value149 value1 value148 = (output390, value149, value1))
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value149 value1 value148 = (output393, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input394 value149 value1 value148 = (output394, value149, value1) := by
  rw [input394_def, output394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output393_skip]
  kernel_rfl

theorem node395_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value149 value1 value148 = (output389, value149, value1))
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value149 value1 value148 = (output394, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input395 value149 value1 value148 = (output395, value149, value1) := by
  rw [input395_def, output395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output394_skip]
  kernel_rfl

theorem node396_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value149 value1 value148 = (output388, value149, value1))
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value149 value1 value148 = (output395, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input396 value149 value1 value148 = (output396, value149, value1) := by
  rw [input396_def, output396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output395_skip]
  kernel_rfl

theorem node397_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value149 value1 value148 = (output387, value149, value1))
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value149 value1 value148 = (output396, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input397 value149 value1 value148 = (output397, value149, value1) := by
  rw [input397_def, output397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output396_skip]
  kernel_rfl

theorem node398_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value149 value1 value148 = (output386, value149, value1))
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value149 value1 value148 = (output397, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input398 value149 value1 value148 = (output398, value149, value1) := by
  rw [input398_def, output398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output397_skip]
  kernel_rfl

theorem node399_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value149 value1 value148 = (output385, value149, value1))
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value149 value1 value148 = (output398, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input399 value149 value1 value148 = (output399, value149, value1) := by
  rw [input399_def, output399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output398_skip]
  kernel_rfl

theorem node400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input400 value149 value1 value148 = (output400, value150, value1) := by
  rw [input400_def, output400_def]
  kernel_rfl

theorem node401_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value149 value1 value148 = (output399, value149, value1))
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value149 value1 value148 = (output400, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input401 value149 value1 value148 = (output401, value150, value1) := by
  rw [input401_def, output401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output400_skip]
  kernel_rfl

theorem node402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input402 value150 value1 value148 = (output402, value147, value1) := by
  rw [input402_def, output402_def]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value147 value1 value148 = (output403, value150, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value150 value1 value148 = (output402, value147, value1))
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value147 value1 value148 = (output403, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input404 value150 value1 value148 = (output404, value150, value1) := by
  rw [input404_def, output404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output403_skip]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value150 value1 value148 = (output405, value151, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value151 value1 value148 = (output406, value152, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value152 value1 value148 = (output407, value153, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value151 value1 value148 = (output406, value152, value1))
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value152 value1 value148 = (output407, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input408 value151 value1 value148 = (output408, value153, value1) := by
  rw [input408_def, output408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output407_skip]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value153 value1 value148 = (output409, value153, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value153 value1 value148 = (output410, value153, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value153 value1 value148 = (output411, value153, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input412 value153 value1 value148 = (output412, value153, value1) := by
  rw [input412_def, output412_def]
  kernel_rfl

theorem node413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input413 value153 value1 value148 = (output413, value153, value1) := by
  rw [input413_def, output413_def]
  kernel_rfl

theorem node414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input414 value153 value1 value148 = (output414, value153, value1) := by
  rw [input414_def, output414_def]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value153 value1 value148 = (output415, value153, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value153 value1 value148 = (output416, value153, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input417 value153 value1 value148 = (output417, value153, value1) := by
  rw [input417_def, output417_def]
  kernel_rfl

theorem node418_cond_eq
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value153 value1 value148 = (output416, value153, value1))
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value153 value1 value148 = (output417, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input418 value153 value1 value148 = (output418, value153, value1) := by
  rw [input418_def, output418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child416]
  try dsimp only
  rw [child417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output416_skip, output417_skip]
  kernel_rfl

theorem node419_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value153 value1 value148 = (output415, value153, value1))
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value153 value1 value148 = (output418, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input419 value153 value1 value148 = (output419, value153, value1) := by
  rw [input419_def, output419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output418_skip]
  kernel_rfl

theorem node420_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value153 value1 value148 = (output414, value153, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value153 value1 value148 = (output419, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value153 value1 value148 = (output420, value153, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value153 value1 value148 = (output413, value153, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value153 value1 value148 = (output420, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value153 value1 value148 = (output421, value153, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output420_skip]
  kernel_rfl

theorem node422_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value153 value1 value148 = (output412, value153, value1))
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value153 value1 value148 = (output421, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input422 value153 value1 value148 = (output422, value153, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output421_skip]
  kernel_rfl

theorem node423_cond_eq
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value153 value1 value148 = (output411, value153, value1))
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value153 value1 value148 = (output422, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input423 value153 value1 value148 = (output423, value153, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child411]
  try dsimp only
  rw [child422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output411_skip, output422_skip]
  kernel_rfl

theorem node424_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value153 value1 value148 = (output410, value153, value1))
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value153 value1 value148 = (output423, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input424 value153 value1 value148 = (output424, value153, value1) := by
  rw [input424_def, output424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output423_skip]
  kernel_rfl

theorem node425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input425 value153 value1 value148 = (output425, value154, value1) := by
  rw [input425_def, output425_def]
  kernel_rfl

theorem node426_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value153 value1 value148 = (output424, value153, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value153 value1 value148 = (output425, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value153 value1 value148 = (output426, value154, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value154 value1 value148 = (output427, value154, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value154 value1 value148 = (output428, value155, value1) := by
  rw [input428_def, output428_def]
  kernel_rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value155 value1 value148 = (output429, value156, value1) := by
  rw [input429_def, output429_def]
  kernel_rfl

theorem node430_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value154 value1 value148 = (output428, value155, value1))
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value155 value1 value148 = (output429, value156, value1)) : Flapjack.WordAlloc.removeDeadStructural input430 value154 value1 value148 = (output430, value156, value1) := by
  rw [input430_def, output430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output429_skip]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value156 value1 value148 = (output431, value157, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value154 value1 value148 = (output430, value156, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value156 value1 value148 = (output431, value157, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value154 value1 value148 = (output432, value157, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output431_skip]
  kernel_rfl

theorem node433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input433 value157 value1 value148 = (output433, value158, value1) := by
  rw [input433_def, output433_def]
  kernel_rfl

theorem node434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input434 value158 value1 value148 = (output434, value159, value1) := by
  rw [input434_def, output434_def]
  kernel_rfl

theorem node435_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value157 value1 value148 = (output433, value158, value1))
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value158 value1 value148 = (output434, value159, value1)) : Flapjack.WordAlloc.removeDeadStructural input435 value157 value1 value148 = (output435, value159, value1) := by
  rw [input435_def, output435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output434_skip]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value159 value1 value148 = (output436, value160, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value157 value1 value148 = (output435, value159, value1))
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value159 value1 value148 = (output436, value160, value1)) : Flapjack.WordAlloc.removeDeadStructural input437 value157 value1 value148 = (output437, value160, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output436_skip]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value160 value1 value148 = (output438, value161, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input439 value161 value1 value148 = (output439, value162, value1) := by
  rw [input439_def, output439_def]
  kernel_rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value162 value1 value148 = (output440, value163, value1) := by
  rw [input440_def, output440_def]
  kernel_rfl

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value163 value1 value148 = (output441, value164, value1) := by
  rw [input441_def, output441_def]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value164 value1 value148 = (output442, value165, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value165 value1 value148 = (output443, value166, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input444 value166 value1 value148 = (output444, value167, value1) := by
  rw [input444_def, output444_def]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value167 value1 value148 = (output445, value167, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input446 value167 value1 value148 = (output446, value167, value1) := by
  rw [input446_def, output446_def]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value167 value1 value148 = (output447, value167, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value167 value1 value148 = (output446, value167, value1))
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value167 value1 value148 = (output447, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input448 value167 value1 value148 = (output448, value167, value1) := by
  rw [input448_def, output448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child446]
  try dsimp only
  rw [child447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output446_skip, output447_skip]
  kernel_rfl

theorem node449_cond_eq
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value167 value1 value148 = (output445, value167, value1))
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value167 value1 value148 = (output448, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input449 value167 value1 value148 = (output449, value167, value1) := by
  rw [input449_def, output449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child445]
  try dsimp only
  rw [child448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output445_skip, output448_skip]
  kernel_rfl

theorem node450_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value166 value1 value148 = (output444, value167, value1))
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value167 value1 value148 = (output449, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input450 value166 value1 value148 = (output450, value167, value1) := by
  rw [input450_def, output450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output449_skip]
  kernel_rfl

theorem node451_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value165 value1 value148 = (output443, value166, value1))
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value166 value1 value148 = (output450, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input451 value165 value1 value148 = (output451, value167, value1) := by
  rw [input451_def, output451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output450_skip]
  kernel_rfl

theorem node452_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value164 value1 value148 = (output442, value165, value1))
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value165 value1 value148 = (output451, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input452 value164 value1 value148 = (output452, value167, value1) := by
  rw [input452_def, output452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output451_skip]
  kernel_rfl

theorem node453_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value163 value1 value148 = (output441, value164, value1))
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value164 value1 value148 = (output452, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input453 value163 value1 value148 = (output453, value167, value1) := by
  rw [input453_def, output453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output452_skip]
  kernel_rfl

theorem node454_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value162 value1 value148 = (output440, value163, value1))
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value163 value1 value148 = (output453, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input454 value162 value1 value148 = (output454, value167, value1) := by
  rw [input454_def, output454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output453_skip]
  kernel_rfl

theorem node455_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value161 value1 value148 = (output439, value162, value1))
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value162 value1 value148 = (output454, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input455 value161 value1 value148 = (output455, value167, value1) := by
  rw [input455_def, output455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output454_skip]
  kernel_rfl

theorem node456_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value160 value1 value148 = (output438, value161, value1))
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value161 value1 value148 = (output455, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input456 value160 value1 value148 = (output456, value167, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output455_skip]
  kernel_rfl

theorem node457_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value157 value1 value148 = (output437, value160, value1))
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value160 value1 value148 = (output456, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input457 value157 value1 value148 = (output457, value167, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output456_skip]
  kernel_rfl

theorem node458_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value154 value1 value148 = (output432, value157, value1))
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value157 value1 value148 = (output457, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input458 value154 value1 value148 = (output458, value167, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output457_skip]
  kernel_rfl

theorem node459_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value154 value1 value148 = (output427, value154, value1))
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value154 value1 value148 = (output458, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input459 value154 value1 value148 = (output459, value167, value1) := by
  rw [input459_def, output459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output458_skip]
  kernel_rfl

theorem node460_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value153 value1 value148 = (output426, value154, value1))
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value154 value1 value148 = (output459, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input460 value153 value1 value148 = (output460, value167, value1) := by
  rw [input460_def, output460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output459_skip]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value153 value1 value148 = (output461, value153, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value153 value1 value148 = (output462, value153, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value153 value1 value148 = (output463, value153, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value153 value1 value148 = (output464, value153, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value153 value1 value148 = (output465, value153, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input466 value153 value1 value148 = (output466, value153, value1) := by
  rw [input466_def, output466_def]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value153 value1 value148 = (output467, value153, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input468 value153 value1 value148 = (output468, value153, value1) := by
  rw [input468_def, output468_def]
  kernel_rfl

theorem node469_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value153 value1 value148 = (output467, value153, value1))
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value153 value1 value148 = (output468, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input469 value153 value1 value148 = (output469, value153, value1) := by
  rw [input469_def, output469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output468_skip]
  kernel_rfl

theorem node470_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value153 value1 value148 = (output466, value153, value1))
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value153 value1 value148 = (output469, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input470 value153 value1 value148 = (output470, value153, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output469_skip]
  kernel_rfl

theorem node471_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value153 value1 value148 = (output465, value153, value1))
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value153 value1 value148 = (output470, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input471 value153 value1 value148 = (output471, value153, value1) := by
  rw [input471_def, output471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output470_skip]
  kernel_rfl

theorem node472_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value153 value1 value148 = (output464, value153, value1))
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value153 value1 value148 = (output471, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input472 value153 value1 value148 = (output472, value153, value1) := by
  rw [input472_def, output472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output471_skip]
  kernel_rfl

theorem node473_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value153 value1 value148 = (output463, value153, value1))
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value153 value1 value148 = (output472, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input473 value153 value1 value148 = (output473, value153, value1) := by
  rw [input473_def, output473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output472_skip]
  kernel_rfl

theorem node474_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value153 value1 value148 = (output462, value153, value1))
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value153 value1 value148 = (output473, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input474 value153 value1 value148 = (output474, value153, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output473_skip]
  kernel_rfl

theorem node475_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value153 value1 value148 = (output461, value153, value1))
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value153 value1 value148 = (output474, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input475 value153 value1 value148 = (output475, value153, value1) := by
  rw [input475_def, output475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output474_skip]
  kernel_rfl

theorem node476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input476 value153 value1 value148 = (output476, value168, value1) := by
  rw [input476_def, output476_def]
  kernel_rfl

theorem node477_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value153 value1 value148 = (output475, value153, value1))
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value153 value1 value148 = (output476, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input477 value153 value1 value148 = (output477, value168, value1) := by
  rw [input477_def, output477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  try dsimp only
  rw [child476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output475_skip, output476_skip]
  kernel_rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value168 value1 value148 = (output478, value168, value1) := by
  rw [input478_def, output478_def]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value168 value1 value148 = (output479, value168, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input480 value168 value1 value148 = (output480, value168, value1) := by
  rw [input480_def, output480_def]
  kernel_rfl

theorem node481_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value168 value1 value148 = (output479, value168, value1))
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value168 value1 value148 = (output480, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input481 value168 value1 value148 = (output481, value168, value1) := by
  rw [input481_def, output481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output480_skip]
  kernel_rfl

theorem node482_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value168 value1 value148 = (output478, value168, value1))
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value168 value1 value148 = (output481, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input482 value168 value1 value148 = (output482, value168, value1) := by
  rw [input482_def, output482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output481_skip]
  kernel_rfl

theorem node483_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value153 value1 value148 = (output477, value168, value1))
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value168 value1 value148 = (output482, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input483 value153 value1 value148 = (output483, value168, value1) := by
  rw [input483_def, output483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output482_skip]
  kernel_rfl

theorem node484_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value153 value1 value148 = (output460, value167, value1))
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value153 value1 value148 = (output483, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input484 value153 value1 value148 = (output484, value171, value1) := by
  rw [input484_def, output484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child460]
  try dsimp only
  rw [child483]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output483_skip]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value171 value1 value148 = (output485, value172, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value172 value1 value148 = (output486, value173, value1) := by
  rw [input486_def, output486_def]
  kernel_rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value173 value1 value148 = (output487, value173, value1) := by
  rw [input487_def, output487_def]
  kernel_rfl

theorem node488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input488 value173 value1 value148 = (output488, value174, value1) := by
  rw [input488_def, output488_def]
  kernel_rfl

theorem node489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input489 value174 value1 value148 = (output489, value175, value1) := by
  rw [input489_def, output489_def]
  kernel_rfl

theorem node490_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value173 value1 value148 = (output488, value174, value1))
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value174 value1 value148 = (output489, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input490 value173 value1 value148 = (output490, value175, value1) := by
  rw [input490_def, output490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output489_skip]
  kernel_rfl

theorem node491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input491 value175 value1 value148 = (output491, value176, value1) := by
  rw [input491_def, output491_def]
  kernel_rfl

theorem node492_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value173 value1 value148 = (output490, value175, value1))
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value175 value1 value148 = (output491, value176, value1)) : Flapjack.WordAlloc.removeDeadStructural input492 value173 value1 value148 = (output492, value176, value1) := by
  rw [input492_def, output492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  try dsimp only
  rw [child491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output490_skip, output491_skip]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value176 value1 value148 = (output493, value177, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input494 value177 value1 value148 = (output494, value178, value1) := by
  rw [input494_def, output494_def]
  kernel_rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value178 value1 value148 = (output495, value179, value1) := by
  rw [input495_def, output495_def]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value179 value1 value148 = (output496, value180, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value180 value1 value148 = (output497, value181, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input498 value181 value1 value148 = (output498, value182, value1) := by
  rw [input498_def, output498_def]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value182 value1 value148 = (output499, value183, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input500 value183 value1 value148 = (output500, value184, value1) := by
  rw [input500_def, output500_def]
  kernel_rfl

theorem node501_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value182 value1 value148 = (output499, value183, value1))
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value183 value1 value148 = (output500, value184, value1)) : Flapjack.WordAlloc.removeDeadStructural input501 value182 value1 value148 = (output501, value184, value1) := by
  rw [input501_def, output501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  try dsimp only
  rw [child500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output499_skip, output500_skip]
  kernel_rfl

theorem node502_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value181 value1 value148 = (output498, value182, value1))
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value182 value1 value148 = (output501, value184, value1)) : Flapjack.WordAlloc.removeDeadStructural input502 value181 value1 value148 = (output502, value184, value1) := by
  rw [input502_def, output502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output501_skip]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value184 value1 value148 = (output503, value185, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value181 value1 value148 = (output502, value184, value1))
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value184 value1 value148 = (output503, value185, value1)) : Flapjack.WordAlloc.removeDeadStructural input504 value181 value1 value148 = (output504, value185, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output503_skip]
  kernel_rfl

theorem node505_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value180 value1 value148 = (output497, value181, value1))
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value181 value1 value148 = (output504, value185, value1)) : Flapjack.WordAlloc.removeDeadStructural input505 value180 value1 value148 = (output505, value185, value1) := by
  rw [input505_def, output505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output504_skip]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value185 value1 value148 = (output506, value186, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value186 value1 value148 = (output507, value187, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value187 value1 value148 = (output508, value188, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value188 value1 value148 = (output509, value189, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value187 value1 value148 = (output508, value188, value1))
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value188 value1 value148 = (output509, value189, value1)) : Flapjack.WordAlloc.removeDeadStructural input510 value187 value1 value148 = (output510, value189, value1) := by
  rw [input510_def, output510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output509_skip]
  kernel_rfl

theorem node511_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value186 value1 value148 = (output507, value187, value1))
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value187 value1 value148 = (output510, value189, value1)) : Flapjack.WordAlloc.removeDeadStructural input511 value186 value1 value148 = (output511, value189, value1) := by
  rw [input511_def, output511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output510_skip]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages700.Parallel
