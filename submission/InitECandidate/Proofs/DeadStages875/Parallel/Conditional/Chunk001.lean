import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node256_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value24 value1 value2 = (output84, value24, value1))
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value24 value1 value2 = (output255, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input256 value24 value1 value2 = (output256, value24, value1) := by
  rw [input256_def, output256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output255_skip]
  kernel_rfl

theorem node257_cond_eq
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value24 value1 value2 = (output83, value24, value1))
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value24 value1 value2 = (output256, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input257 value24 value1 value2 = (output257, value24, value1) := by
  rw [input257_def, output257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child83]
  try dsimp only
  rw [child256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output83_skip, output256_skip]
  kernel_rfl

theorem node258_cond_eq
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value24 value1 value2 = (output82, value24, value1))
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value24 value1 value2 = (output257, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input258 value24 value1 value2 = (output258, value24, value1) := by
  rw [input258_def, output258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child82]
  try dsimp only
  rw [child257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output82_skip, output257_skip]
  kernel_rfl

theorem node259_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value24 value1 value2 = (output81, value24, value1))
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value24 value1 value2 = (output258, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input259 value24 value1 value2 = (output259, value24, value1) := by
  rw [input259_def, output259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output258_skip]
  kernel_rfl

theorem node260_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value24 value1 value2 = (output80, value24, value1))
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value24 value1 value2 = (output259, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input260 value24 value1 value2 = (output260, value24, value1) := by
  rw [input260_def, output260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output259_skip]
  kernel_rfl

theorem node261_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value24 value1 value2 = (output79, value24, value1))
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value24 value1 value2 = (output260, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input261 value24 value1 value2 = (output261, value24, value1) := by
  rw [input261_def, output261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output260_skip]
  kernel_rfl

theorem node262_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value24 value1 value2 = (output78, value24, value1))
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value24 value1 value2 = (output261, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input262 value24 value1 value2 = (output262, value24, value1) := by
  rw [input262_def, output262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output261_skip]
  kernel_rfl

theorem node263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input263 value24 value1 value2 = (output263, value25, value1) := by
  rw [input263_def, output263_def]
  kernel_rfl

theorem node264_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value24 value1 value2 = (output262, value24, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value24 value1 value2 = (output263, value25, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value24 value1 value2 = (output264, value25, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value25 value1 value2 = (output265, value25, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input266 value26 value1 value27 = (output266, value28, value1) := by
  rw [input266_def, output266_def]
  kernel_rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value28 value1 value27 = (output267, value28, value1) := by
  rw [input267_def, output267_def]
  kernel_rfl

theorem node268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input268 value28 value1 value27 = (output268, value28, value1) := by
  rw [input268_def, output268_def]
  kernel_rfl

theorem node269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input269 value28 value1 value27 = (output269, value28, value1) := by
  rw [input269_def, output269_def]
  kernel_rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value28 value1 value27 = (output270, value28, value1) := by
  rw [input270_def, output270_def]
  kernel_rfl

theorem node271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input271 value28 value1 value27 = (output271, value28, value1) := by
  rw [input271_def, output271_def]
  kernel_rfl

theorem node272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input272 value28 value1 value27 = (output272, value28, value1) := by
  rw [input272_def, output272_def]
  kernel_rfl

theorem node273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input273 value28 value1 value27 = (output273, value28, value1) := by
  rw [input273_def, output273_def]
  kernel_rfl

theorem node274_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value28 value1 value27 = (output272, value28, value1))
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value28 value1 value27 = (output273, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input274 value28 value1 value27 = (output274, value28, value1) := by
  rw [input274_def, output274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output273_skip]
  kernel_rfl

theorem node275_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value28 value1 value27 = (output271, value28, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value28 value1 value27 = (output274, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value28 value1 value27 = (output275, value28, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value28 value1 value27 = (output270, value28, value1))
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value28 value1 value27 = (output275, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input276 value28 value1 value27 = (output276, value28, value1) := by
  rw [input276_def, output276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output275_skip]
  kernel_rfl

theorem node277_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value28 value1 value27 = (output269, value28, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value28 value1 value27 = (output276, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value28 value1 value27 = (output277, value28, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value28 value1 value27 = (output268, value28, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value28 value1 value27 = (output277, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value28 value1 value27 = (output278, value28, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input279 value28 value1 value27 = (output279, value29, value1) := by
  rw [input279_def, output279_def]
  kernel_rfl

theorem node280_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value28 value1 value27 = (output278, value28, value1))
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value28 value1 value27 = (output279, value29, value1)) : Flapjack.WordAlloc.removeDeadStructural input280 value28 value1 value27 = (output280, value29, value1) := by
  rw [input280_def, output280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output279_skip]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value29 value1 value27 = (output281, value26, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value26 value1 value27 = (output282, value29, value1) := by
  rw [input282_def, output282_def]
  kernel_rfl

theorem node283_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value29 value1 value27 = (output281, value26, value1))
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value26 value1 value27 = (output282, value29, value1)) : Flapjack.WordAlloc.removeDeadStructural input283 value29 value1 value27 = (output283, value29, value1) := by
  rw [input283_def, output283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output282_skip]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value29 value1 value27 = (output284, value30, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value30 value1 value27 = (output285, value31, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value31 value1 value27 = (output286, value32, value1) := by
  rw [input286_def, output286_def]
  kernel_rfl

theorem node287_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value30 value1 value27 = (output285, value31, value1))
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value31 value1 value27 = (output286, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input287 value30 value1 value27 = (output287, value32, value1) := by
  rw [input287_def, output287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output286_skip]
  kernel_rfl

theorem node288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input288 value32 value1 value27 = (output288, value32, value1) := by
  rw [input288_def, output288_def]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value32 value1 value27 = (output289, value32, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input290 value32 value1 value27 = (output290, value32, value1) := by
  rw [input290_def, output290_def]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value32 value1 value27 = (output291, value32, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value32 value1 value27 = (output292, value32, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input293 value32 value1 value27 = (output293, value32, value1) := by
  rw [input293_def, output293_def]
  kernel_rfl

theorem node294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input294 value32 value1 value27 = (output294, value32, value1) := by
  rw [input294_def, output294_def]
  kernel_rfl

theorem node295_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value32 value1 value27 = (output293, value32, value1))
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value32 value1 value27 = (output294, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input295 value32 value1 value27 = (output295, value32, value1) := by
  rw [input295_def, output295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output294_skip]
  kernel_rfl

theorem node296_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value32 value1 value27 = (output292, value32, value1))
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value32 value1 value27 = (output295, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input296 value32 value1 value27 = (output296, value32, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output295_skip]
  kernel_rfl

theorem node297_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value32 value1 value27 = (output291, value32, value1))
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value32 value1 value27 = (output296, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input297 value32 value1 value27 = (output297, value32, value1) := by
  rw [input297_def, output297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output296_skip]
  kernel_rfl

theorem node298_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value32 value1 value27 = (output290, value32, value1))
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value32 value1 value27 = (output297, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input298 value32 value1 value27 = (output298, value32, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output297_skip]
  kernel_rfl

theorem node299_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value32 value1 value27 = (output289, value32, value1))
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value32 value1 value27 = (output298, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input299 value32 value1 value27 = (output299, value32, value1) := by
  rw [input299_def, output299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output298_skip]
  kernel_rfl

theorem node300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input300 value32 value1 value27 = (output300, value33, value1) := by
  rw [input300_def, output300_def]
  kernel_rfl

theorem node301_cond_eq
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value32 value1 value27 = (output299, value32, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value32 value1 value27 = (output300, value33, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value32 value1 value27 = (output301, value33, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child299]
  try dsimp only
  rw [child300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output299_skip, output300_skip]
  kernel_rfl

theorem node302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input302 value33 value1 value27 = (output302, value33, value1) := by
  rw [input302_def, output302_def]
  kernel_rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value33 value1 value27 = (output303, value34, value1) := by
  rw [input303_def, output303_def]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value34 value1 value27 = (output304, value35, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value33 value1 value27 = (output303, value34, value1))
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value34 value1 value27 = (output304, value35, value1)) : Flapjack.WordAlloc.removeDeadStructural input305 value33 value1 value27 = (output305, value35, value1) := by
  rw [input305_def, output305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output304_skip]
  kernel_rfl

theorem node306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input306 value35 value1 value27 = (output306, value36, value1) := by
  rw [input306_def, output306_def]
  kernel_rfl

theorem node307_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value33 value1 value27 = (output305, value35, value1))
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value35 value1 value27 = (output306, value36, value1)) : Flapjack.WordAlloc.removeDeadStructural input307 value33 value1 value27 = (output307, value36, value1) := by
  rw [input307_def, output307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output306_skip]
  kernel_rfl

theorem node308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input308 value36 value1 value27 = (output308, value37, value1) := by
  rw [input308_def, output308_def]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value37 value1 value27 = (output309, value37, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value37 value1 value27 = (output310, value37, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value37 value1 value27 = (output311, value37, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value37 value1 value27 = (output310, value37, value1))
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value37 value1 value27 = (output311, value37, value1)) : Flapjack.WordAlloc.removeDeadStructural input312 value37 value1 value27 = (output312, value37, value1) := by
  rw [input312_def, output312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output311_skip]
  kernel_rfl

theorem node313_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value37 value1 value27 = (output309, value37, value1))
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value37 value1 value27 = (output312, value37, value1)) : Flapjack.WordAlloc.removeDeadStructural input313 value37 value1 value27 = (output313, value37, value1) := by
  rw [input313_def, output313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output312_skip]
  kernel_rfl

theorem node314_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value36 value1 value27 = (output308, value37, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value37 value1 value27 = (output313, value37, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value36 value1 value27 = (output314, value37, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value33 value1 value27 = (output307, value36, value1))
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value36 value1 value27 = (output314, value37, value1)) : Flapjack.WordAlloc.removeDeadStructural input315 value33 value1 value27 = (output315, value37, value1) := by
  rw [input315_def, output315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output314_skip]
  kernel_rfl

theorem node316_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value33 value1 value27 = (output302, value33, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value33 value1 value27 = (output315, value37, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value33 value1 value27 = (output316, value37, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value32 value1 value27 = (output301, value33, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value33 value1 value27 = (output316, value37, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value32 value1 value27 = (output317, value37, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output316_skip]
  kernel_rfl

theorem node318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input318 value32 value1 value27 = (output318, value32, value1) := by
  rw [input318_def, output318_def]
  kernel_rfl

theorem node319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input319 value32 value1 value27 = (output319, value32, value1) := by
  rw [input319_def, output319_def]
  kernel_rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value32 value1 value27 = (output320, value32, value1) := by
  rw [input320_def, output320_def]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value32 value1 value27 = (output321, value32, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value32 value1 value27 = (output322, value32, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value32 value1 value27 = (output323, value32, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value32 value1 value27 = (output322, value32, value1))
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value32 value1 value27 = (output323, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input324 value32 value1 value27 = (output324, value32, value1) := by
  rw [input324_def, output324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output323_skip]
  kernel_rfl

theorem node325_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value32 value1 value27 = (output321, value32, value1))
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value32 value1 value27 = (output324, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input325 value32 value1 value27 = (output325, value32, value1) := by
  rw [input325_def, output325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output324_skip]
  kernel_rfl

theorem node326_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value32 value1 value27 = (output320, value32, value1))
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value32 value1 value27 = (output325, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input326 value32 value1 value27 = (output326, value32, value1) := by
  rw [input326_def, output326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output325_skip]
  kernel_rfl

theorem node327_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value32 value1 value27 = (output319, value32, value1))
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value32 value1 value27 = (output326, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input327 value32 value1 value27 = (output327, value32, value1) := by
  rw [input327_def, output327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output326_skip]
  kernel_rfl

theorem node328_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value32 value1 value27 = (output318, value32, value1))
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value32 value1 value27 = (output327, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input328 value32 value1 value27 = (output328, value32, value1) := by
  rw [input328_def, output328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output327_skip]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value32 value1 value27 = (output329, value38, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value32 value1 value27 = (output328, value32, value1))
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value32 value1 value27 = (output329, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input330 value32 value1 value27 = (output330, value38, value1) := by
  rw [input330_def, output330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output329_skip]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value38 value1 value27 = (output331, value38, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value38 value1 value27 = (output332, value38, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value38 value1 value27 = (output333, value38, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value38 value1 value27 = (output332, value38, value1))
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value38 value1 value27 = (output333, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input334 value38 value1 value27 = (output334, value38, value1) := by
  rw [input334_def, output334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output333_skip]
  kernel_rfl

theorem node335_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value38 value1 value27 = (output331, value38, value1))
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value38 value1 value27 = (output334, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input335 value38 value1 value27 = (output335, value38, value1) := by
  rw [input335_def, output335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output334_skip]
  kernel_rfl

theorem node336_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value32 value1 value27 = (output330, value38, value1))
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value38 value1 value27 = (output335, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input336 value32 value1 value27 = (output336, value38, value1) := by
  rw [input336_def, output336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output335_skip]
  kernel_rfl

theorem node337_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value32 value1 value27 = (output317, value37, value1))
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value32 value1 value27 = (output336, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input337 value32 value1 value27 = (output337, value40, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child317]
  try dsimp only
  rw [child336]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output336_skip]
  kernel_rfl

theorem node338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input338 value40 value1 value27 = (output338, value41, value1) := by
  rw [input338_def, output338_def]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value41 value1 value27 = (output339, value42, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value42 value1 value27 = (output340, value42, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value42 value1 value27 = (output341, value43, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value43 value1 value27 = (output342, value44, value1) := by
  rw [input342_def, output342_def]
  kernel_rfl

theorem node343_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value42 value1 value27 = (output341, value43, value1))
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value43 value1 value27 = (output342, value44, value1)) : Flapjack.WordAlloc.removeDeadStructural input343 value42 value1 value27 = (output343, value44, value1) := by
  rw [input343_def, output343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output342_skip]
  kernel_rfl

theorem node344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input344 value44 value1 value27 = (output344, value45, value1) := by
  rw [input344_def, output344_def]
  kernel_rfl

theorem node345_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value42 value1 value27 = (output343, value44, value1))
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value44 value1 value27 = (output344, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input345 value42 value1 value27 = (output345, value45, value1) := by
  rw [input345_def, output345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output344_skip]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value45 value1 value27 = (output346, value46, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input347 value46 value1 value27 = (output347, value47, value1) := by
  rw [input347_def, output347_def]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value47 value1 value27 = (output348, value47, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value47 value1 value27 = (output349, value47, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input350 value47 value1 value27 = (output350, value47, value1) := by
  rw [input350_def, output350_def]
  kernel_rfl

theorem node351_cond_eq
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value47 value1 value27 = (output349, value47, value1))
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value47 value1 value27 = (output350, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input351 value47 value1 value27 = (output351, value47, value1) := by
  rw [input351_def, output351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child349]
  try dsimp only
  rw [child350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output349_skip, output350_skip]
  kernel_rfl

theorem node352_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value47 value1 value27 = (output348, value47, value1))
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value47 value1 value27 = (output351, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input352 value47 value1 value27 = (output352, value47, value1) := by
  rw [input352_def, output352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output351_skip]
  kernel_rfl

theorem node353_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value46 value1 value27 = (output347, value47, value1))
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value47 value1 value27 = (output352, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input353 value46 value1 value27 = (output353, value47, value1) := by
  rw [input353_def, output353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output352_skip]
  kernel_rfl

theorem node354_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value45 value1 value27 = (output346, value46, value1))
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value46 value1 value27 = (output353, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input354 value45 value1 value27 = (output354, value47, value1) := by
  rw [input354_def, output354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  try dsimp only
  rw [child353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output346_skip, output353_skip]
  kernel_rfl

theorem node355_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value42 value1 value27 = (output345, value45, value1))
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value45 value1 value27 = (output354, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input355 value42 value1 value27 = (output355, value47, value1) := by
  rw [input355_def, output355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output354_skip]
  kernel_rfl

theorem node356_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value42 value1 value27 = (output340, value42, value1))
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value42 value1 value27 = (output355, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input356 value42 value1 value27 = (output356, value47, value1) := by
  rw [input356_def, output356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output355_skip]
  kernel_rfl

theorem node357_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value41 value1 value27 = (output339, value42, value1))
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value42 value1 value27 = (output356, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input357 value41 value1 value27 = (output357, value47, value1) := by
  rw [input357_def, output357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output356_skip]
  kernel_rfl

theorem node358_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value40 value1 value27 = (output338, value41, value1))
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value41 value1 value27 = (output357, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input358 value40 value1 value27 = (output358, value47, value1) := by
  rw [input358_def, output358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output357_skip]
  kernel_rfl

theorem node359_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value32 value1 value27 = (output337, value40, value1))
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value40 value1 value27 = (output358, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input359 value32 value1 value27 = (output359, value47, value1) := by
  rw [input359_def, output359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output358_skip]
  kernel_rfl

theorem node360_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value32 value1 value27 = (output288, value32, value1))
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value32 value1 value27 = (output359, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input360 value32 value1 value27 = (output360, value47, value1) := by
  rw [input360_def, output360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output359_skip]
  kernel_rfl

theorem node361_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value30 value1 value27 = (output287, value32, value1))
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value32 value1 value27 = (output360, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input361 value30 value1 value27 = (output361, value47, value1) := by
  rw [input361_def, output361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output360_skip]
  kernel_rfl

theorem node362_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value29 value1 value27 = (output284, value30, value1))
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value30 value1 value27 = (output361, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input362 value29 value1 value27 = (output362, value47, value1) := by
  rw [input362_def, output362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output361_skip]
  kernel_rfl

theorem node363_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value29 value1 value27 = (output283, value29, value1))
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value29 value1 value27 = (output362, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input363 value29 value1 value27 = (output363, value47, value1) := by
  rw [input363_def, output363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output362_skip]
  kernel_rfl

theorem node364_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value28 value1 value27 = (output280, value29, value1))
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value29 value1 value27 = (output363, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input364 value28 value1 value27 = (output364, value47, value1) := by
  rw [input364_def, output364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output363_skip]
  kernel_rfl

theorem node365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input365 value28 value1 value27 = (output365, value28, value1) := by
  rw [input365_def, output365_def]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value28 value1 value27 = (output366, value28, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value28 value1 value27 = (output367, value28, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value28 value1 value27 = (output368, value28, value1) := by
  rw [input368_def, output368_def]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value28 value1 value27 = (output369, value28, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value28 value1 value27 = (output370, value28, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value28 value1 value27 = (output369, value28, value1))
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value28 value1 value27 = (output370, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input371 value28 value1 value27 = (output371, value28, value1) := by
  rw [input371_def, output371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output370_skip]
  kernel_rfl

theorem node372_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value28 value1 value27 = (output368, value28, value1))
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value28 value1 value27 = (output371, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input372 value28 value1 value27 = (output372, value28, value1) := by
  rw [input372_def, output372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output371_skip]
  kernel_rfl

theorem node373_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value28 value1 value27 = (output367, value28, value1))
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value28 value1 value27 = (output372, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input373 value28 value1 value27 = (output373, value28, value1) := by
  rw [input373_def, output373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output372_skip]
  kernel_rfl

theorem node374_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value28 value1 value27 = (output366, value28, value1))
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value28 value1 value27 = (output373, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input374 value28 value1 value27 = (output374, value28, value1) := by
  rw [input374_def, output374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output373_skip]
  kernel_rfl

theorem node375_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value28 value1 value27 = (output365, value28, value1))
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value28 value1 value27 = (output374, value28, value1)) : Flapjack.WordAlloc.removeDeadStructural input375 value28 value1 value27 = (output375, value28, value1) := by
  rw [input375_def, output375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output374_skip]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value28 value1 value27 = (output376, value47, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value28 value1 value27 = (output375, value28, value1))
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value28 value1 value27 = (output376, value47, value1)) : Flapjack.WordAlloc.removeDeadStructural input377 value28 value1 value27 = (output377, value47, value1) := by
  rw [input377_def, output377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output376_skip]
  kernel_rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value47 value1 value27 = (output378, value25, value1) := by
  rw [input378_def, output378_def]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value25 value1 value27 = (output379, value25, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input380 value25 value1 value27 = (output380, value25, value1) := by
  rw [input380_def, output380_def]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value25 value1 value27 = (output381, value25, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value25 value1 value27 = (output380, value25, value1))
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value25 value1 value27 = (output381, value25, value1)) : Flapjack.WordAlloc.removeDeadStructural input382 value25 value1 value27 = (output382, value25, value1) := by
  rw [input382_def, output382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output381_skip]
  kernel_rfl

theorem node383_cond_eq
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value25 value1 value27 = (output379, value25, value1))
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value25 value1 value27 = (output382, value25, value1)) : Flapjack.WordAlloc.removeDeadStructural input383 value25 value1 value27 = (output383, value25, value1) := by
  rw [input383_def, output383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child379]
  try dsimp only
  rw [child382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output379_skip, output382_skip]
  kernel_rfl

theorem node384_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value47 value1 value27 = (output378, value25, value1))
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value25 value1 value27 = (output383, value25, value1)) : Flapjack.WordAlloc.removeDeadStructural input384 value47 value1 value27 = (output384, value25, value1) := by
  rw [input384_def, output384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output383_skip]
  kernel_rfl

theorem node385_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value28 value1 value27 = (output377, value47, value1))
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value47 value1 value27 = (output384, value25, value1)) : Flapjack.WordAlloc.removeDeadStructural input385 value28 value1 value27 = (output385, value25, value1) := by
  rw [input385_def, output385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output384_skip]
  kernel_rfl

theorem node386_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value28 value1 value27 = (output364, value47, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value28 value1 value27 = (output385, value25, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value28 value1 value27 = (output386, value47, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child364]
  try dsimp only
  rw [child385]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output385_skip]
  kernel_rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value47 value1 value27 = (output387, value50, value1) := by
  rw [input387_def, output387_def]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value50 value1 value27 = (output388, value26, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value47 value1 value27 = (output387, value50, value1))
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value50 value1 value27 = (output388, value26, value1)) : Flapjack.WordAlloc.removeDeadStructural input389 value47 value1 value27 = (output389, value26, value1) := by
  rw [input389_def, output389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output388_skip]
  kernel_rfl

theorem node390_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value28 value1 value27 = (output386, value47, value1))
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value47 value1 value27 = (output389, value26, value1)) : Flapjack.WordAlloc.removeDeadStructural input390 value28 value1 value27 = (output390, value26, value1) := by
  rw [input390_def, output390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output389_skip]
  kernel_rfl

theorem node391_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value28 value1 value27 = (output267, value28, value1))
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value28 value1 value27 = (output390, value26, value1)) : Flapjack.WordAlloc.removeDeadStructural input391 value28 value1 value27 = (output391, value26, value1) := by
  rw [input391_def, output391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output390_skip]
  kernel_rfl

theorem node392_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value26 value1 value27 = (output266, value28, value1))
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value28 value1 value27 = (output391, value26, value1)) : Flapjack.WordAlloc.removeDeadStructural input392 value26 value1 value27 = (output392, value26, value1) := by
  rw [input392_def, output392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output391_skip]
  kernel_rfl

theorem node393_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value26 value1 value27 = (output392, value26, value1)) : Flapjack.WordAlloc.removeDeadStructural input393 value25 value1 value2 = (output393, value26, value1) := by
  rw [input393_def, output393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value27 = (value26, value25) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child392
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input394 value26 value1 value2 = (output394, value51, value1) := by
  rw [input394_def, output394_def]
  kernel_rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value51 value1 value2 = (output395, value51, value1) := by
  rw [input395_def, output395_def]
  kernel_rfl

theorem node396_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value26 value1 value2 = (output394, value51, value1))
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value51 value1 value2 = (output395, value51, value1)) : Flapjack.WordAlloc.removeDeadStructural input396 value26 value1 value2 = (output396, value51, value1) := by
  rw [input396_def, output396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output395_skip]
  kernel_rfl

theorem node397_cond_eq
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value25 value1 value2 = (output393, value26, value1))
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value26 value1 value2 = (output396, value51, value1)) : Flapjack.WordAlloc.removeDeadStructural input397 value25 value1 value2 = (output397, value51, value1) := by
  rw [input397_def, output397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child393]
  try dsimp only
  rw [child396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output393_skip, output396_skip]
  kernel_rfl

theorem node398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input398 value51 value1 value2 = (output398, value51, value1) := by
  rw [input398_def, output398_def]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value51 value1 value2 = (output399, value52, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input400 value52 value1 value2 = (output400, value53, value1) := by
  rw [input400_def, output400_def]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value53 value1 value2 = (output401, value54, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value52 value1 value2 = (output400, value53, value1))
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value53 value1 value2 = (output401, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input402 value52 value1 value2 = (output402, value54, value1) := by
  rw [input402_def, output402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output401_skip]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value54 value1 value2 = (output403, value54, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value54 value1 value2 = (output404, value54, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value54 value1 value2 = (output405, value54, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value54 value1 value2 = (output404, value54, value1))
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value54 value1 value2 = (output405, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input406 value54 value1 value2 = (output406, value54, value1) := by
  rw [input406_def, output406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  try dsimp only
  rw [child405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output404_skip, output405_skip]
  kernel_rfl

theorem node407_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value54 value1 value2 = (output403, value54, value1))
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value54 value1 value2 = (output406, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input407 value54 value1 value2 = (output407, value54, value1) := by
  rw [input407_def, output407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output406_skip]
  kernel_rfl

theorem node408_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value52 value1 value2 = (output402, value54, value1))
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value54 value1 value2 = (output407, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input408 value52 value1 value2 = (output408, value54, value1) := by
  rw [input408_def, output408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output407_skip]
  kernel_rfl

theorem node409_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value51 value1 value2 = (output399, value52, value1))
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value52 value1 value2 = (output408, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input409 value51 value1 value2 = (output409, value54, value1) := by
  rw [input409_def, output409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output408_skip]
  kernel_rfl

theorem node410_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value51 value1 value2 = (output398, value51, value1))
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value51 value1 value2 = (output409, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input410 value51 value1 value2 = (output410, value54, value1) := by
  rw [input410_def, output410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output409_skip]
  kernel_rfl

theorem node411_cond_eq
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value25 value1 value2 = (output397, value51, value1))
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value51 value1 value2 = (output410, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input411 value25 value1 value2 = (output411, value54, value1) := by
  rw [input411_def, output411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child397]
  try dsimp only
  rw [child410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output397_skip, output410_skip]
  kernel_rfl

theorem node412_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value25 value1 value2 = (output265, value25, value1))
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value25 value1 value2 = (output411, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input412 value25 value1 value2 = (output412, value54, value1) := by
  rw [input412_def, output412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output411_skip]
  kernel_rfl

theorem node413_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value24 value1 value2 = (output264, value25, value1))
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value25 value1 value2 = (output412, value54, value1)) : Flapjack.WordAlloc.removeDeadStructural input413 value24 value1 value2 = (output413, value54, value1) := by
  rw [input413_def, output413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output412_skip]
  kernel_rfl

theorem node414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input414 value24 value1 value2 = (output414, value24, value1) := by
  rw [input414_def, output414_def]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value24 value1 value2 = (output415, value24, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value24 value1 value2 = (output416, value24, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input417 value24 value1 value2 = (output417, value24, value1) := by
  rw [input417_def, output417_def]
  kernel_rfl

theorem node418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input418 value24 value1 value2 = (output418, value24, value1) := by
  rw [input418_def, output418_def]
  kernel_rfl

theorem node419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input419 value24 value1 value2 = (output419, value24, value1) := by
  rw [input419_def, output419_def]
  kernel_rfl

theorem node420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input420 value24 value1 value2 = (output420, value24, value1) := by
  rw [input420_def, output420_def]
  kernel_rfl

theorem node421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input421 value24 value1 value2 = (output421, value24, value1) := by
  rw [input421_def, output421_def]
  kernel_rfl

theorem node422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input422 value24 value1 value2 = (output422, value24, value1) := by
  rw [input422_def, output422_def]
  kernel_rfl

theorem node423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input423 value24 value1 value2 = (output423, value24, value1) := by
  rw [input423_def, output423_def]
  kernel_rfl

theorem node424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input424 value24 value1 value2 = (output424, value24, value1) := by
  rw [input424_def, output424_def]
  kernel_rfl

theorem node425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input425 value24 value1 value2 = (output425, value24, value1) := by
  rw [input425_def, output425_def]
  kernel_rfl

theorem node426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input426 value24 value1 value2 = (output426, value24, value1) := by
  rw [input426_def, output426_def]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value24 value1 value2 = (output427, value24, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value24 value1 value2 = (output428, value24, value1) := by
  rw [input428_def, output428_def]
  kernel_rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value24 value1 value2 = (output429, value24, value1) := by
  rw [input429_def, output429_def]
  kernel_rfl

theorem node430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input430 value24 value1 value2 = (output430, value24, value1) := by
  rw [input430_def, output430_def]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value24 value1 value2 = (output431, value24, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input432 value24 value1 value2 = (output432, value24, value1) := by
  rw [input432_def, output432_def]
  kernel_rfl

theorem node433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input433 value24 value1 value2 = (output433, value24, value1) := by
  rw [input433_def, output433_def]
  kernel_rfl

theorem node434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input434 value24 value1 value2 = (output434, value24, value1) := by
  rw [input434_def, output434_def]
  kernel_rfl

theorem node435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input435 value24 value1 value2 = (output435, value24, value1) := by
  rw [input435_def, output435_def]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value24 value1 value2 = (output436, value24, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input437 value24 value1 value2 = (output437, value24, value1) := by
  rw [input437_def, output437_def]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value24 value1 value2 = (output438, value24, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input439 value24 value1 value2 = (output439, value24, value1) := by
  rw [input439_def, output439_def]
  kernel_rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value24 value1 value2 = (output440, value24, value1) := by
  rw [input440_def, output440_def]
  kernel_rfl

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value24 value1 value2 = (output441, value24, value1) := by
  rw [input441_def, output441_def]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value24 value1 value2 = (output442, value24, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value24 value1 value2 = (output443, value24, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input444 value24 value1 value2 = (output444, value24, value1) := by
  rw [input444_def, output444_def]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value24 value1 value2 = (output445, value24, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input446 value24 value1 value2 = (output446, value24, value1) := by
  rw [input446_def, output446_def]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value24 value1 value2 = (output447, value24, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input448 value24 value1 value2 = (output448, value24, value1) := by
  rw [input448_def, output448_def]
  kernel_rfl

theorem node449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input449 value24 value1 value2 = (output449, value24, value1) := by
  rw [input449_def, output449_def]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value24 value1 value2 = (output450, value24, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value24 value1 value2 = (output451, value24, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value24 value1 value2 = (output452, value24, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value24 value1 value2 = (output453, value24, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value24 value1 value2 = (output454, value24, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input455 value24 value1 value2 = (output455, value24, value1) := by
  rw [input455_def, output455_def]
  kernel_rfl

theorem node456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input456 value24 value1 value2 = (output456, value24, value1) := by
  rw [input456_def, output456_def]
  kernel_rfl

theorem node457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input457 value24 value1 value2 = (output457, value24, value1) := by
  rw [input457_def, output457_def]
  kernel_rfl

theorem node458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input458 value24 value1 value2 = (output458, value24, value1) := by
  rw [input458_def, output458_def]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value24 value1 value2 = (output459, value24, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value24 value1 value2 = (output460, value24, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value24 value1 value2 = (output461, value24, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value24 value1 value2 = (output462, value24, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value24 value1 value2 = (output463, value24, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value24 value1 value2 = (output464, value24, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value24 value1 value2 = (output465, value24, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input466 value24 value1 value2 = (output466, value24, value1) := by
  rw [input466_def, output466_def]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value24 value1 value2 = (output467, value24, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input468 value24 value1 value2 = (output468, value24, value1) := by
  rw [input468_def, output468_def]
  kernel_rfl

theorem node469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input469 value24 value1 value2 = (output469, value24, value1) := by
  rw [input469_def, output469_def]
  kernel_rfl

theorem node470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input470 value24 value1 value2 = (output470, value24, value1) := by
  rw [input470_def, output470_def]
  kernel_rfl

theorem node471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input471 value24 value1 value2 = (output471, value24, value1) := by
  rw [input471_def, output471_def]
  kernel_rfl

theorem node472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input472 value24 value1 value2 = (output472, value24, value1) := by
  rw [input472_def, output472_def]
  kernel_rfl

theorem node473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input473 value24 value1 value2 = (output473, value24, value1) := by
  rw [input473_def, output473_def]
  kernel_rfl

theorem node474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input474 value24 value1 value2 = (output474, value24, value1) := by
  rw [input474_def, output474_def]
  kernel_rfl

theorem node475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input475 value24 value1 value2 = (output475, value24, value1) := by
  rw [input475_def, output475_def]
  kernel_rfl

theorem node476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input476 value24 value1 value2 = (output476, value24, value1) := by
  rw [input476_def, output476_def]
  kernel_rfl

theorem node477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input477 value24 value1 value2 = (output477, value24, value1) := by
  rw [input477_def, output477_def]
  kernel_rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value24 value1 value2 = (output478, value24, value1) := by
  rw [input478_def, output478_def]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value24 value1 value2 = (output479, value24, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input480 value24 value1 value2 = (output480, value24, value1) := by
  rw [input480_def, output480_def]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value24 value1 value2 = (output481, value24, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input482 value24 value1 value2 = (output482, value24, value1) := by
  rw [input482_def, output482_def]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value24 value1 value2 = (output483, value24, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value24 value1 value2 = (output484, value24, value1) := by
  rw [input484_def, output484_def]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value24 value1 value2 = (output485, value24, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value24 value1 value2 = (output486, value24, value1) := by
  rw [input486_def, output486_def]
  kernel_rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value24 value1 value2 = (output487, value24, value1) := by
  rw [input487_def, output487_def]
  kernel_rfl

theorem node488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input488 value24 value1 value2 = (output488, value24, value1) := by
  rw [input488_def, output488_def]
  kernel_rfl

theorem node489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input489 value24 value1 value2 = (output489, value24, value1) := by
  rw [input489_def, output489_def]
  kernel_rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value24 value1 value2 = (output490, value24, value1) := by
  rw [input490_def, output490_def]
  kernel_rfl

theorem node491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input491 value24 value1 value2 = (output491, value24, value1) := by
  rw [input491_def, output491_def]
  kernel_rfl

theorem node492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input492 value24 value1 value2 = (output492, value24, value1) := by
  rw [input492_def, output492_def]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value24 value1 value2 = (output493, value24, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input494 value24 value1 value2 = (output494, value24, value1) := by
  rw [input494_def, output494_def]
  kernel_rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value24 value1 value2 = (output495, value24, value1) := by
  rw [input495_def, output495_def]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value24 value1 value2 = (output496, value24, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value24 value1 value2 = (output497, value24, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input498 value24 value1 value2 = (output498, value24, value1) := by
  rw [input498_def, output498_def]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value24 value1 value2 = (output499, value24, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input500 value24 value1 value2 = (output500, value24, value1) := by
  rw [input500_def, output500_def]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value24 value1 value2 = (output501, value24, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input502 value24 value1 value2 = (output502, value24, value1) := by
  rw [input502_def, output502_def]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value24 value1 value2 = (output503, value24, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input504 value24 value1 value2 = (output504, value24, value1) := by
  rw [input504_def, output504_def]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value24 value1 value2 = (output505, value24, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value24 value1 value2 = (output506, value24, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value24 value1 value2 = (output505, value24, value1))
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value24 value1 value2 = (output506, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input507 value24 value1 value2 = (output507, value24, value1) := by
  rw [input507_def, output507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output506_skip]
  kernel_rfl

theorem node508_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value24 value1 value2 = (output504, value24, value1))
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value24 value1 value2 = (output507, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input508 value24 value1 value2 = (output508, value24, value1) := by
  rw [input508_def, output508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output507_skip]
  kernel_rfl

theorem node509_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value24 value1 value2 = (output503, value24, value1))
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value24 value1 value2 = (output508, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input509 value24 value1 value2 = (output509, value24, value1) := by
  rw [input509_def, output509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output508_skip]
  kernel_rfl

theorem node510_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value24 value1 value2 = (output502, value24, value1))
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value24 value1 value2 = (output509, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input510 value24 value1 value2 = (output510, value24, value1) := by
  rw [input510_def, output510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output509_skip]
  kernel_rfl

theorem node511_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value24 value1 value2 = (output501, value24, value1))
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value24 value1 value2 = (output510, value24, value1)) : Flapjack.WordAlloc.removeDeadStructural input511 value24 value1 value2 = (output511, value24, value1) := by
  rw [input511_def, output511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output510_skip]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
