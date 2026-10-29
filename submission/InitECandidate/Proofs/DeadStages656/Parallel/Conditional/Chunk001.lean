import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages656.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages656.Parallel
theorem node256_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value109 value1 value2 = (output254, value119, value1))
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value119 value1 value2 = (output255, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input256 value109 value1 value2 = (output256, value120, value1) := by
  rw [input256_def, output256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output255_skip]
  kernel_rfl

theorem node257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input257 value120 value1 value2 = (output257, value121, value1) := by
  rw [input257_def, output257_def]
  kernel_rfl

theorem node258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input258 value121 value1 value2 = (output258, value122, value1) := by
  rw [input258_def, output258_def]
  kernel_rfl

theorem node259_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value120 value1 value2 = (output257, value121, value1))
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value121 value1 value2 = (output258, value122, value1)) : Flapjack.WordAlloc.removeDeadStructural input259 value120 value1 value2 = (output259, value122, value1) := by
  rw [input259_def, output259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output258_skip]
  kernel_rfl

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value122 value1 value2 = (output260, value120, value1) := by
  rw [input260_def, output260_def]
  kernel_rfl

theorem node261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input261 value120 value1 value2 = (output261, value120, value1) := by
  rw [input261_def, output261_def]
  kernel_rfl

theorem node262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input262 value120 value1 value2 = (output262, value123, value1) := by
  rw [input262_def, output262_def]
  kernel_rfl

theorem node263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input263 value123 value1 value2 = (output263, value124, value1) := by
  rw [input263_def, output263_def]
  kernel_rfl

theorem node264_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value120 value1 value2 = (output262, value123, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value123 value1 value2 = (output263, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value120 value1 value2 = (output264, value124, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input265 value124 value1 value2 = (output265, value125, value1) := by
  rw [input265_def, output265_def]
  kernel_rfl

theorem node266_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value120 value1 value2 = (output264, value124, value1))
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value124 value1 value2 = (output265, value125, value1)) : Flapjack.WordAlloc.removeDeadStructural input266 value120 value1 value2 = (output266, value125, value1) := by
  rw [input266_def, output266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output265_skip]
  kernel_rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value125 value1 value2 = (output267, value126, value1) := by
  rw [input267_def, output267_def]
  kernel_rfl

theorem node268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input268 value126 value1 value2 = (output268, value126, value1) := by
  rw [input268_def, output268_def]
  kernel_rfl

theorem node269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input269 value126 value1 value2 = (output269, value126, value1) := by
  rw [input269_def, output269_def]
  kernel_rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value126 value1 value2 = (output270, value126, value1) := by
  rw [input270_def, output270_def]
  kernel_rfl

theorem node271_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value126 value1 value2 = (output269, value126, value1))
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value126 value1 value2 = (output270, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input271 value126 value1 value2 = (output271, value126, value1) := by
  rw [input271_def, output271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output270_skip]
  kernel_rfl

theorem node272_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value126 value1 value2 = (output268, value126, value1))
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value126 value1 value2 = (output271, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input272 value126 value1 value2 = (output272, value126, value1) := by
  rw [input272_def, output272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output271_skip]
  kernel_rfl

theorem node273_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value125 value1 value2 = (output267, value126, value1))
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value126 value1 value2 = (output272, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input273 value125 value1 value2 = (output273, value126, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output272_skip]
  kernel_rfl

theorem node274_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value120 value1 value2 = (output266, value125, value1))
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value125 value1 value2 = (output273, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input274 value120 value1 value2 = (output274, value126, value1) := by
  rw [input274_def, output274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output273_skip]
  kernel_rfl

theorem node275_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value120 value1 value2 = (output261, value120, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value120 value1 value2 = (output274, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value120 value1 value2 = (output275, value126, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value122 value1 value2 = (output260, value120, value1))
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value120 value1 value2 = (output275, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input276 value122 value1 value2 = (output276, value126, value1) := by
  rw [input276_def, output276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output275_skip]
  kernel_rfl

theorem node277_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value120 value1 value2 = (output259, value122, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value122 value1 value2 = (output276, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value120 value1 value2 = (output277, value126, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value109 value1 value2 = (output256, value120, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value120 value1 value2 = (output277, value126, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value109 value1 value2 = (output278, value126, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input279 value109 value1 value2 = (output279, value127, value1) := by
  rw [input279_def, output279_def]
  kernel_rfl

theorem node280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input280 value127 value1 value2 = (output280, value127, value1) := by
  rw [input280_def, output280_def]
  kernel_rfl

theorem node281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input281 value127 value1 value2 = (output281, value128, value1) := by
  rw [input281_def, output281_def]
  kernel_rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value128 value1 value2 = (output282, value129, value1) := by
  rw [input282_def, output282_def]
  kernel_rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value129 value1 value2 = (output283, value130, value1) := by
  rw [input283_def, output283_def]
  kernel_rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value130 value1 value2 = (output284, value131, value1) := by
  rw [input284_def, output284_def]
  kernel_rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value131 value1 value2 = (output285, value132, value1) := by
  rw [input285_def, output285_def]
  kernel_rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value132 value1 value2 = (output286, value133, value1) := by
  rw [input286_def, output286_def]
  kernel_rfl

theorem node287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input287 value133 value1 value2 = (output287, value134, value1) := by
  rw [input287_def, output287_def]
  kernel_rfl

theorem node288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input288 value134 value1 value2 = (output288, value135, value1) := by
  rw [input288_def, output288_def]
  kernel_rfl

theorem node289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input289 value135 value1 value2 = (output289, value136, value1) := by
  rw [input289_def, output289_def]
  kernel_rfl

theorem node290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input290 value136 value1 value2 = (output290, value136, value1) := by
  rw [input290_def, output290_def]
  kernel_rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value136 value1 value2 = (output291, value136, value1) := by
  rw [input291_def, output291_def]
  kernel_rfl

theorem node292_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value136 value1 value2 = (output290, value136, value1))
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value136 value1 value2 = (output291, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input292 value136 value1 value2 = (output292, value136, value1) := by
  rw [input292_def, output292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output291_skip]
  kernel_rfl

theorem node293_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value135 value1 value2 = (output289, value136, value1))
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value136 value1 value2 = (output292, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input293 value135 value1 value2 = (output293, value136, value1) := by
  rw [input293_def, output293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output292_skip]
  kernel_rfl

theorem node294_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value134 value1 value2 = (output288, value135, value1))
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value135 value1 value2 = (output293, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input294 value134 value1 value2 = (output294, value136, value1) := by
  rw [input294_def, output294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output293_skip]
  kernel_rfl

theorem node295_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value133 value1 value2 = (output287, value134, value1))
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value134 value1 value2 = (output294, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input295 value133 value1 value2 = (output295, value136, value1) := by
  rw [input295_def, output295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output294_skip]
  kernel_rfl

theorem node296_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value132 value1 value2 = (output286, value133, value1))
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value133 value1 value2 = (output295, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input296 value132 value1 value2 = (output296, value136, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output295_skip]
  kernel_rfl

theorem node297_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value131 value1 value2 = (output285, value132, value1))
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value132 value1 value2 = (output296, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input297 value131 value1 value2 = (output297, value136, value1) := by
  rw [input297_def, output297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output296_skip]
  kernel_rfl

theorem node298_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value130 value1 value2 = (output284, value131, value1))
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value131 value1 value2 = (output297, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input298 value130 value1 value2 = (output298, value136, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output297_skip]
  kernel_rfl

theorem node299_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value129 value1 value2 = (output283, value130, value1))
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value130 value1 value2 = (output298, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input299 value129 value1 value2 = (output299, value136, value1) := by
  rw [input299_def, output299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output298_skip]
  kernel_rfl

theorem node300_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value128 value1 value2 = (output282, value129, value1))
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value129 value1 value2 = (output299, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input300 value128 value1 value2 = (output300, value136, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output299_skip]
  kernel_rfl

theorem node301_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value127 value1 value2 = (output281, value128, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value128 value1 value2 = (output300, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value127 value1 value2 = (output301, value136, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output300_skip]
  kernel_rfl

theorem node302_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value127 value1 value2 = (output280, value127, value1))
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value127 value1 value2 = (output301, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input302 value127 value1 value2 = (output302, value136, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output301_skip]
  kernel_rfl

theorem node303_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value109 value1 value2 = (output279, value127, value1))
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value127 value1 value2 = (output302, value136, value1)) : Flapjack.WordAlloc.removeDeadStructural input303 value109 value1 value2 = (output303, value136, value1) := by
  rw [input303_def, output303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output302_skip]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value136 value1 value2 = (output304, value137, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value109 value1 value2 = (output303, value136, value1))
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value136 value1 value2 = (output304, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input305 value109 value1 value2 = (output305, value137, value1) := by
  rw [input305_def, output305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output304_skip]
  kernel_rfl

theorem node306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input306 value137 value1 value2 = (output306, value137, value1) := by
  rw [input306_def, output306_def]
  kernel_rfl

theorem node307_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value109 value1 value2 = (output305, value137, value1))
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value137 value1 value2 = (output306, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input307 value109 value1 value2 = (output307, value137, value1) := by
  rw [input307_def, output307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output306_skip]
  kernel_rfl

theorem node308_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value109 value1 value2 = (output278, value126, value1))
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value109 value1 value2 = (output307, value137, value1)) : Flapjack.WordAlloc.removeDeadStructural input308 value109 value1 value2 = (output308, value139, value1) := by
  rw [input308_def, output308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child278]
  try dsimp only
  rw [child307]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output307_skip]
  kernel_rfl

theorem node309_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value109 value1 value2 = (output229, value109, value1))
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value109 value1 value2 = (output308, value139, value1)) : Flapjack.WordAlloc.removeDeadStructural input309 value109 value1 value2 = (output309, value139, value1) := by
  rw [input309_def, output309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output308_skip]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value139 value1 value2 = (output310, value140, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value140 value1 value2 = (output311, value141, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input312 value141 value1 value2 = (output312, value141, value1) := by
  rw [input312_def, output312_def]
  kernel_rfl

theorem node313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input313 value141 value1 value2 = (output313, value142, value1) := by
  rw [input313_def, output313_def]
  kernel_rfl

theorem node314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input314 value142 value1 value2 = (output314, value143, value1) := by
  rw [input314_def, output314_def]
  kernel_rfl

theorem node315_cond_eq
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value141 value1 value2 = (output313, value142, value1))
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value142 value1 value2 = (output314, value143, value1)) : Flapjack.WordAlloc.removeDeadStructural input315 value141 value1 value2 = (output315, value143, value1) := by
  rw [input315_def, output315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child313]
  try dsimp only
  rw [child314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output313_skip, output314_skip]
  kernel_rfl

theorem node316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input316 value143 value1 value2 = (output316, value144, value1) := by
  rw [input316_def, output316_def]
  kernel_rfl

theorem node317_cond_eq
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value141 value1 value2 = (output315, value143, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value143 value1 value2 = (output316, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value141 value1 value2 = (output317, value144, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child315]
  try dsimp only
  rw [child316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output315_skip, output316_skip]
  kernel_rfl

theorem node318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input318 value144 value1 value2 = (output318, value145, value1) := by
  rw [input318_def, output318_def]
  kernel_rfl

theorem node319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input319 value145 value1 value2 = (output319, value146, value1) := by
  rw [input319_def, output319_def]
  kernel_rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value146 value1 value2 = (output320, value147, value1) := by
  rw [input320_def, output320_def]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value147 value1 value2 = (output321, value148, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value148 value1 value2 = (output322, value149, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value149 value1 value2 = (output323, value150, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value148 value1 value2 = (output322, value149, value1))
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value149 value1 value2 = (output323, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input324 value148 value1 value2 = (output324, value150, value1) := by
  rw [input324_def, output324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output323_skip]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value150 value1 value2 = (output325, value151, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value151 value1 value2 = (output326, value152, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value150 value1 value2 = (output325, value151, value1))
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value151 value1 value2 = (output326, value152, value1)) : Flapjack.WordAlloc.removeDeadStructural input327 value150 value1 value2 = (output327, value152, value1) := by
  rw [input327_def, output327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output326_skip]
  kernel_rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value152 value1 value2 = (output328, value153, value1) := by
  rw [input328_def, output328_def]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value153 value1 value2 = (output329, value154, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value152 value1 value2 = (output328, value153, value1))
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value153 value1 value2 = (output329, value154, value1)) : Flapjack.WordAlloc.removeDeadStructural input330 value152 value1 value2 = (output330, value154, value1) := by
  rw [input330_def, output330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output329_skip]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value154 value1 value2 = (output331, value155, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value155 value1 value2 = (output332, value156, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value154 value1 value2 = (output331, value155, value1))
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value155 value1 value2 = (output332, value156, value1)) : Flapjack.WordAlloc.removeDeadStructural input333 value154 value1 value2 = (output333, value156, value1) := by
  rw [input333_def, output333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output332_skip]
  kernel_rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value156 value1 value2 = (output334, value156, value1) := by
  rw [input334_def, output334_def]
  kernel_rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value156 value1 value2 = (output335, value157, value1) := by
  rw [input335_def, output335_def]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value157 value1 value2 = (output336, value158, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value156 value1 value2 = (output335, value157, value1))
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value157 value1 value2 = (output336, value158, value1)) : Flapjack.WordAlloc.removeDeadStructural input337 value156 value1 value2 = (output337, value158, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output336_skip]
  kernel_rfl

theorem node338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input338 value158 value1 value2 = (output338, value159, value1) := by
  rw [input338_def, output338_def]
  kernel_rfl

theorem node339_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value156 value1 value2 = (output337, value158, value1))
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value158 value1 value2 = (output338, value159, value1)) : Flapjack.WordAlloc.removeDeadStructural input339 value156 value1 value2 = (output339, value159, value1) := by
  rw [input339_def, output339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output338_skip]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value159 value1 value2 = (output340, value160, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value160 value1 value2 = (output341, value161, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value161 value1 value2 = (output342, value162, value1) := by
  rw [input342_def, output342_def]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value162 value1 value2 = (output343, value163, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input344 value163 value1 value2 = (output344, value164, value1) := by
  rw [input344_def, output344_def]
  kernel_rfl

theorem node345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input345 value164 value1 value2 = (output345, value165, value1) := by
  rw [input345_def, output345_def]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value165 value1 value2 = (output346, value166, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input347 value166 value1 value2 = (output347, value167, value1) := by
  rw [input347_def, output347_def]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value167 value1 value2 = (output348, value168, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value168 value1 value2 = (output349, value169, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input350 value169 value1 value2 = (output350, value170, value1) := by
  rw [input350_def, output350_def]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value170 value1 value2 = (output351, value171, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input352 value171 value1 value2 = (output352, value172, value1) := by
  rw [input352_def, output352_def]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value172 value1 value2 = (output353, value173, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value173 value1 value2 = (output354, value174, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input355 value174 value1 value2 = (output355, value175, value1) := by
  rw [input355_def, output355_def]
  kernel_rfl

theorem node356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input356 value175 value1 value2 = (output356, value176, value1) := by
  rw [input356_def, output356_def]
  kernel_rfl

theorem node357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input357 value176 value1 value2 = (output357, value177, value1) := by
  rw [input357_def, output357_def]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value177 value1 value2 = (output358, value178, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value178 value1 value2 = (output359, value179, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value179 value1 value2 = (output360, value179, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value179 value1 value2 = (output361, value179, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input362 value179 value1 value2 = (output362, value179, value1) := by
  rw [input362_def, output362_def]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value179 value1 value2 = (output363, value179, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value179 value1 value2 = (output364, value179, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input365 value179 value1 value2 = (output365, value179, value1) := by
  rw [input365_def, output365_def]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value179 value1 value2 = (output366, value179, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value179 value1 value2 = (output367, value179, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value179 value1 value2 = (output368, value180, value1) := by
  rw [input368_def, output368_def]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value180 value1 value2 = (output369, value181, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value181 value1 value2 = (output370, value182, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value182 value1 value2 = (output371, value183, value1) := by
  rw [input371_def, output371_def]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value183 value1 value2 = (output372, value184, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value184 value1 value2 = (output373, value184, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input374 value184 value1 value2 = (output374, value185, value1) := by
  rw [input374_def, output374_def]
  kernel_rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value185 value1 value2 = (output375, value186, value1) := by
  rw [input375_def, output375_def]
  kernel_rfl

theorem node376_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value184 value1 value2 = (output374, value185, value1))
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value185 value1 value2 = (output375, value186, value1)) : Flapjack.WordAlloc.removeDeadStructural input376 value184 value1 value2 = (output376, value186, value1) := by
  rw [input376_def, output376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output375_skip]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value186 value1 value2 = (output377, value187, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value184 value1 value2 = (output376, value186, value1))
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value186 value1 value2 = (output377, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input378 value184 value1 value2 = (output378, value187, value1) := by
  rw [input378_def, output378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output377_skip]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value187 value1 value2 = (output379, value188, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input380 value188 value1 value2 = (output380, value188, value1) := by
  rw [input380_def, output380_def]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value188 value1 value2 = (output381, value188, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input382 value188 value1 value2 = (output382, value189, value1) := by
  rw [input382_def, output382_def]
  kernel_rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value189 value1 value2 = (output383, value189, value1) := by
  rw [input383_def, output383_def]
  kernel_rfl

theorem node384_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value188 value1 value2 = (output382, value189, value1))
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value189 value1 value2 = (output383, value189, value1)) : Flapjack.WordAlloc.removeDeadStructural input384 value188 value1 value2 = (output384, value189, value1) := by
  rw [input384_def, output384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output383_skip]
  kernel_rfl

theorem node385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input385 value189 value1 value2 = (output385, value190, value1) := by
  rw [input385_def, output385_def]
  kernel_rfl

theorem node386_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value188 value1 value2 = (output384, value189, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value189 value1 value2 = (output385, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value188 value1 value2 = (output386, value190, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output385_skip]
  kernel_rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value190 value1 value2 = (output387, value190, value1) := by
  rw [input387_def, output387_def]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value190 value1 value2 = (output388, value191, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input389 value191 value1 value2 = (output389, value192, value1) := by
  rw [input389_def, output389_def]
  kernel_rfl

theorem node390_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value190 value1 value2 = (output388, value191, value1))
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value191 value1 value2 = (output389, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input390 value190 value1 value2 = (output390, value192, value1) := by
  rw [input390_def, output390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output389_skip]
  kernel_rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value192 value1 value2 = (output391, value193, value1) := by
  rw [input391_def, output391_def]
  kernel_rfl

theorem node392_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value190 value1 value2 = (output390, value192, value1))
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value192 value1 value2 = (output391, value193, value1)) : Flapjack.WordAlloc.removeDeadStructural input392 value190 value1 value2 = (output392, value193, value1) := by
  rw [input392_def, output392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output391_skip]
  kernel_rfl

theorem node393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input393 value193 value1 value2 = (output393, value194, value1) := by
  rw [input393_def, output393_def]
  kernel_rfl

theorem node394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input394 value194 value1 value2 = (output394, value195, value1) := by
  rw [input394_def, output394_def]
  kernel_rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value195 value1 value2 = (output395, value196, value1) := by
  rw [input395_def, output395_def]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value196 value1 value2 = (output396, value197, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input397 value197 value1 value2 = (output397, value197, value1) := by
  rw [input397_def, output397_def]
  kernel_rfl

theorem node398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input398 value197 value1 value2 = (output398, value197, value1) := by
  rw [input398_def, output398_def]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value197 value1 value2 = (output399, value197, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input400 value197 value1 value2 = (output400, value197, value1) := by
  rw [input400_def, output400_def]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value197 value1 value2 = (output401, value198, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input402 value198 value1 value2 = (output402, value199, value1) := by
  rw [input402_def, output402_def]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value199 value1 value2 = (output403, value200, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value200 value1 value2 = (output404, value201, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value201 value1 value2 = (output405, value202, value1) := by
  rw [input405_def, output405_def]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value202 value1 value2 = (output406, value203, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value203 value1 value2 = (output407, value204, value1) := by
  rw [input407_def, output407_def]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value204 value1 value2 = (output408, value205, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value205 value1 value2 = (output409, value205, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value205 value1 value2 = (output410, value206, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value206 value1 value2 = (output411, value207, value1) := by
  rw [input411_def, output411_def]
  kernel_rfl

theorem node412_cond_eq
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value205 value1 value2 = (output410, value206, value1))
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value206 value1 value2 = (output411, value207, value1)) : Flapjack.WordAlloc.removeDeadStructural input412 value205 value1 value2 = (output412, value207, value1) := by
  rw [input412_def, output412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child410]
  try dsimp only
  rw [child411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output410_skip, output411_skip]
  kernel_rfl

theorem node413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input413 value207 value1 value2 = (output413, value208, value1) := by
  rw [input413_def, output413_def]
  kernel_rfl

theorem node414_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value205 value1 value2 = (output412, value207, value1))
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value207 value1 value2 = (output413, value208, value1)) : Flapjack.WordAlloc.removeDeadStructural input414 value205 value1 value2 = (output414, value208, value1) := by
  rw [input414_def, output414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output413_skip]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value208 value1 value2 = (output415, value209, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value209 value1 value2 = (output416, value210, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input417 value210 value1 value2 = (output417, value211, value1) := by
  rw [input417_def, output417_def]
  kernel_rfl

theorem node418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input418 value211 value1 value2 = (output418, value212, value1) := by
  rw [input418_def, output418_def]
  kernel_rfl

theorem node419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input419 value212 value1 value2 = (output419, value212, value1) := by
  rw [input419_def, output419_def]
  kernel_rfl

theorem node420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input420 value212 value1 value2 = (output420, value212, value1) := by
  rw [input420_def, output420_def]
  kernel_rfl

theorem node421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input421 value212 value1 value2 = (output421, value212, value1) := by
  rw [input421_def, output421_def]
  kernel_rfl

theorem node422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input422 value212 value1 value2 = (output422, value212, value1) := by
  rw [input422_def, output422_def]
  kernel_rfl

theorem node423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input423 value212 value1 value2 = (output423, value213, value1) := by
  rw [input423_def, output423_def]
  kernel_rfl

theorem node424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input424 value213 value1 value2 = (output424, value214, value1) := by
  rw [input424_def, output424_def]
  kernel_rfl

theorem node425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input425 value214 value1 value2 = (output425, value215, value1) := by
  rw [input425_def, output425_def]
  kernel_rfl

theorem node426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input426 value215 value1 value2 = (output426, value216, value1) := by
  rw [input426_def, output426_def]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value216 value1 value2 = (output427, value217, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value217 value1 value2 = (output428, value218, value1) := by
  rw [input428_def, output428_def]
  kernel_rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value218 value1 value2 = (output429, value219, value1) := by
  rw [input429_def, output429_def]
  kernel_rfl

theorem node430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input430 value219 value1 value2 = (output430, value220, value1) := by
  rw [input430_def, output430_def]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value220 value1 value2 = (output431, value220, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input432 value220 value1 value2 = (output432, value221, value1) := by
  rw [input432_def, output432_def]
  kernel_rfl

theorem node433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input433 value221 value1 value2 = (output433, value222, value1) := by
  rw [input433_def, output433_def]
  kernel_rfl

theorem node434_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value220 value1 value2 = (output432, value221, value1))
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value221 value1 value2 = (output433, value222, value1)) : Flapjack.WordAlloc.removeDeadStructural input434 value220 value1 value2 = (output434, value222, value1) := by
  rw [input434_def, output434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output433_skip]
  kernel_rfl

theorem node435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input435 value222 value1 value2 = (output435, value223, value1) := by
  rw [input435_def, output435_def]
  kernel_rfl

theorem node436_cond_eq
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value220 value1 value2 = (output434, value222, value1))
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value222 value1 value2 = (output435, value223, value1)) : Flapjack.WordAlloc.removeDeadStructural input436 value220 value1 value2 = (output436, value223, value1) := by
  rw [input436_def, output436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child434]
  try dsimp only
  rw [child435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output434_skip, output435_skip]
  kernel_rfl

theorem node437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input437 value223 value1 value2 = (output437, value224, value1) := by
  rw [input437_def, output437_def]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value224 value1 value2 = (output438, value225, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input439 value225 value1 value2 = (output439, value226, value1) := by
  rw [input439_def, output439_def]
  kernel_rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value226 value1 value2 = (output440, value227, value1) := by
  rw [input440_def, output440_def]
  kernel_rfl

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value227 value1 value2 = (output441, value227, value1) := by
  rw [input441_def, output441_def]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value227 value1 value2 = (output442, value227, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value227 value1 value2 = (output443, value227, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input444 value227 value1 value2 = (output444, value227, value1) := by
  rw [input444_def, output444_def]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value227 value1 value2 = (output445, value228, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input446 value228 value1 value2 = (output446, value229, value1) := by
  rw [input446_def, output446_def]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value229 value1 value2 = (output447, value230, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input448 value230 value1 value2 = (output448, value231, value1) := by
  rw [input448_def, output448_def]
  kernel_rfl

theorem node449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input449 value231 value1 value2 = (output449, value231, value1) := by
  rw [input449_def, output449_def]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value231 value1 value2 = (output450, value231, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value231 value1 value2 = (output451, value231, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value231 value1 value2 = (output452, value231, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value231 value1 value2 = (output453, value231, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value231 value1 value2 = (output454, value231, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value231 value1 value2 = (output453, value231, value1))
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value231 value1 value2 = (output454, value231, value1)) : Flapjack.WordAlloc.removeDeadStructural input455 value231 value1 value2 = (output455, value231, value1) := by
  rw [input455_def, output455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  try dsimp only
  rw [child454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output453_skip, output454_skip]
  kernel_rfl

theorem node456_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value231 value1 value2 = (output452, value231, value1))
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value231 value1 value2 = (output455, value231, value1)) : Flapjack.WordAlloc.removeDeadStructural input456 value231 value1 value2 = (output456, value231, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output455_skip]
  kernel_rfl

theorem node457_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value231 value1 value2 = (output451, value231, value1))
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value231 value1 value2 = (output456, value231, value1)) : Flapjack.WordAlloc.removeDeadStructural input457 value231 value1 value2 = (output457, value231, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output456_skip]
  kernel_rfl

theorem node458_cond_eq
    (child450 : Flapjack.WordAlloc.removeDeadStructural input450 value231 value1 value2 = (output450, value231, value1))
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value231 value1 value2 = (output457, value231, value1)) : Flapjack.WordAlloc.removeDeadStructural input458 value231 value1 value2 = (output458, value231, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child450]
  try dsimp only
  rw [child457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output450_skip, output457_skip]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value231 value1 value2 = (output459, value232, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value231 value1 value2 = (output458, value231, value1))
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value231 value1 value2 = (output459, value232, value1)) : Flapjack.WordAlloc.removeDeadStructural input460 value231 value1 value2 = (output460, value232, value1) := by
  rw [input460_def, output460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output459_skip]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value232 value1 value2 = (output461, value232, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value232 value1 value2 = (output462, value233, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value233 value1 value2 = (output463, value234, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value232 value1 value2 = (output462, value233, value1))
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value233 value1 value2 = (output463, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input464 value232 value1 value2 = (output464, value234, value1) := by
  rw [input464_def, output464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output463_skip]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value234 value1 value2 = (output465, value235, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value232 value1 value2 = (output464, value234, value1))
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value234 value1 value2 = (output465, value235, value1)) : Flapjack.WordAlloc.removeDeadStructural input466 value232 value1 value2 = (output466, value235, value1) := by
  rw [input466_def, output466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output465_skip]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value235 value1 value2 = (output467, value236, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input468 value236 value1 value2 = (output468, value237, value1) := by
  rw [input468_def, output468_def]
  kernel_rfl

theorem node469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input469 value237 value1 value2 = (output469, value238, value1) := by
  rw [input469_def, output469_def]
  kernel_rfl

theorem node470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input470 value238 value1 value2 = (output470, value239, value1) := by
  rw [input470_def, output470_def]
  kernel_rfl

theorem node471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input471 value239 value1 value2 = (output471, value239, value1) := by
  rw [input471_def, output471_def]
  kernel_rfl

theorem node472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input472 value239 value1 value2 = (output472, value239, value1) := by
  rw [input472_def, output472_def]
  kernel_rfl

theorem node473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input473 value239 value1 value2 = (output473, value239, value1) := by
  rw [input473_def, output473_def]
  kernel_rfl

theorem node474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input474 value239 value1 value2 = (output474, value239, value1) := by
  rw [input474_def, output474_def]
  kernel_rfl

theorem node475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input475 value239 value1 value2 = (output475, value239, value1) := by
  rw [input475_def, output475_def]
  kernel_rfl

theorem node476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input476 value239 value1 value2 = (output476, value239, value1) := by
  rw [input476_def, output476_def]
  kernel_rfl

theorem node477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input477 value239 value1 value2 = (output477, value239, value1) := by
  rw [input477_def, output477_def]
  kernel_rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value239 value1 value2 = (output478, value239, value1) := by
  rw [input478_def, output478_def]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value239 value1 value2 = (output479, value240, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input480 value240 value1 value2 = (output480, value241, value1) := by
  rw [input480_def, output480_def]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value241 value1 value2 = (output481, value242, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input482 value242 value1 value2 = (output482, value243, value1) := by
  rw [input482_def, output482_def]
  kernel_rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value243 value1 value2 = (output483, value243, value1) := by
  rw [input483_def, output483_def]
  kernel_rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value243 value1 value2 = (output484, value243, value1) := by
  rw [input484_def, output484_def]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value243 value1 value2 = (output485, value243, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value243 value1 value2 = (output484, value243, value1))
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value243 value1 value2 = (output485, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input486 value243 value1 value2 = (output486, value243, value1) := by
  rw [input486_def, output486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output485_skip]
  kernel_rfl

theorem node487_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value243 value1 value2 = (output483, value243, value1))
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value243 value1 value2 = (output486, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input487 value243 value1 value2 = (output487, value243, value1) := by
  rw [input487_def, output487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output486_skip]
  kernel_rfl

theorem node488_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value242 value1 value2 = (output482, value243, value1))
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value243 value1 value2 = (output487, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input488 value242 value1 value2 = (output488, value243, value1) := by
  rw [input488_def, output488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output487_skip]
  kernel_rfl

theorem node489_cond_eq
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value241 value1 value2 = (output481, value242, value1))
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value242 value1 value2 = (output488, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input489 value241 value1 value2 = (output489, value243, value1) := by
  rw [input489_def, output489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child481]
  try dsimp only
  rw [child488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output481_skip, output488_skip]
  kernel_rfl

theorem node490_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value240 value1 value2 = (output480, value241, value1))
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value241 value1 value2 = (output489, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input490 value240 value1 value2 = (output490, value243, value1) := by
  rw [input490_def, output490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child480]
  try dsimp only
  rw [child489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output489_skip]
  kernel_rfl

theorem node491_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value239 value1 value2 = (output479, value240, value1))
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value240 value1 value2 = (output490, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input491 value239 value1 value2 = (output491, value243, value1) := by
  rw [input491_def, output491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output490_skip]
  kernel_rfl

theorem node492_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value239 value1 value2 = (output478, value239, value1))
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value239 value1 value2 = (output491, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input492 value239 value1 value2 = (output492, value243, value1) := by
  rw [input492_def, output492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output491_skip]
  kernel_rfl

theorem node493_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value239 value1 value2 = (output477, value239, value1))
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value239 value1 value2 = (output492, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input493 value239 value1 value2 = (output493, value243, value1) := by
  rw [input493_def, output493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output492_skip]
  kernel_rfl

theorem node494_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value239 value1 value2 = (output476, value239, value1))
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value239 value1 value2 = (output493, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input494 value239 value1 value2 = (output494, value243, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output493_skip]
  kernel_rfl

theorem node495_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value239 value1 value2 = (output475, value239, value1))
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value239 value1 value2 = (output494, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input495 value239 value1 value2 = (output495, value243, value1) := by
  rw [input495_def, output495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  try dsimp only
  rw [child494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output475_skip, output494_skip]
  kernel_rfl

theorem node496_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value239 value1 value2 = (output474, value239, value1))
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value239 value1 value2 = (output495, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input496 value239 value1 value2 = (output496, value243, value1) := by
  rw [input496_def, output496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output495_skip]
  kernel_rfl

theorem node497_cond_eq
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value239 value1 value2 = (output473, value239, value1))
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value239 value1 value2 = (output496, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input497 value239 value1 value2 = (output497, value243, value1) := by
  rw [input497_def, output497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child473]
  try dsimp only
  rw [child496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output473_skip, output496_skip]
  kernel_rfl

theorem node498_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value239 value1 value2 = (output472, value239, value1))
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value239 value1 value2 = (output497, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input498 value239 value1 value2 = (output498, value243, value1) := by
  rw [input498_def, output498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output497_skip]
  kernel_rfl

theorem node499_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value239 value1 value2 = (output471, value239, value1))
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value239 value1 value2 = (output498, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input499 value239 value1 value2 = (output499, value243, value1) := by
  rw [input499_def, output499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output498_skip]
  kernel_rfl

theorem node500_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value238 value1 value2 = (output470, value239, value1))
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value239 value1 value2 = (output499, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input500 value238 value1 value2 = (output500, value243, value1) := by
  rw [input500_def, output500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output499_skip]
  kernel_rfl

theorem node501_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value237 value1 value2 = (output469, value238, value1))
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value238 value1 value2 = (output500, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input501 value237 value1 value2 = (output501, value243, value1) := by
  rw [input501_def, output501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output500_skip]
  kernel_rfl

theorem node502_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value236 value1 value2 = (output468, value237, value1))
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value237 value1 value2 = (output501, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input502 value236 value1 value2 = (output502, value243, value1) := by
  rw [input502_def, output502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output501_skip]
  kernel_rfl

theorem node503_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value235 value1 value2 = (output467, value236, value1))
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value236 value1 value2 = (output502, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input503 value235 value1 value2 = (output503, value243, value1) := by
  rw [input503_def, output503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output502_skip]
  kernel_rfl

theorem node504_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value232 value1 value2 = (output466, value235, value1))
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value235 value1 value2 = (output503, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input504 value232 value1 value2 = (output504, value243, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output503_skip]
  kernel_rfl

theorem node505_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value232 value1 value2 = (output461, value232, value1))
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value232 value1 value2 = (output504, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input505 value232 value1 value2 = (output505, value243, value1) := by
  rw [input505_def, output505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output504_skip]
  kernel_rfl

theorem node506_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value231 value1 value2 = (output460, value232, value1))
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value232 value1 value2 = (output505, value243, value1)) : Flapjack.WordAlloc.removeDeadStructural input506 value231 value1 value2 = (output506, value243, value1) := by
  rw [input506_def, output506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output505_skip]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value231 value1 value2 = (output507, value231, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value231 value1 value2 = (output508, value231, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value231 value1 value2 = (output509, value231, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input510 value231 value1 value2 = (output510, value231, value1) := by
  rw [input510_def, output510_def]
  kernel_rfl

theorem node511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input511 value231 value1 value2 = (output511, value231, value1) := by
  rw [input511_def, output511_def]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages656.Parallel
