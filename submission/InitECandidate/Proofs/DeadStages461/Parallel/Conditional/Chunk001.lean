import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages461.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages461.Parallel
theorem node256_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value139 value1 value71 = (output254, value140, value1))
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value140 value1 value71 = (output255, value141, value1)) : Flapjack.WordAlloc.removeDeadStructural input256 value139 value1 value71 = (output256, value141, value1) := by
  rw [input256_def, output256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output255_skip]
  kernel_rfl

theorem node257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input257 value141 value1 value71 = (output257, value142, value1) := by
  rw [input257_def, output257_def]
  kernel_rfl

theorem node258_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value139 value1 value71 = (output256, value141, value1))
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value141 value1 value71 = (output257, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input258 value139 value1 value71 = (output258, value142, value1) := by
  rw [input258_def, output258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output257_skip]
  kernel_rfl

theorem node259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input259 value142 value1 value71 = (output259, value143, value1) := by
  rw [input259_def, output259_def]
  kernel_rfl

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value143 value1 value71 = (output260, value144, value1) := by
  rw [input260_def, output260_def]
  kernel_rfl

theorem node261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input261 value144 value1 value71 = (output261, value144, value1) := by
  rw [input261_def, output261_def]
  kernel_rfl

theorem node262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input262 value144 value1 value71 = (output262, value144, value1) := by
  rw [input262_def, output262_def]
  kernel_rfl

theorem node263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input263 value144 value1 value71 = (output263, value144, value1) := by
  rw [input263_def, output263_def]
  kernel_rfl

theorem node264_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value144 value1 value71 = (output262, value144, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value144 value1 value71 = (output263, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value144 value1 value71 = (output264, value144, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value144 value1 value71 = (output261, value144, value1))
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value144 value1 value71 = (output264, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input265 value144 value1 value71 = (output265, value144, value1) := by
  rw [input265_def, output265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output264_skip]
  kernel_rfl

theorem node266_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value143 value1 value71 = (output260, value144, value1))
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value144 value1 value71 = (output265, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input266 value143 value1 value71 = (output266, value144, value1) := by
  rw [input266_def, output266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output265_skip]
  kernel_rfl

theorem node267_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value142 value1 value71 = (output259, value143, value1))
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value143 value1 value71 = (output266, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input267 value142 value1 value71 = (output267, value144, value1) := by
  rw [input267_def, output267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output266_skip]
  kernel_rfl

theorem node268_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value139 value1 value71 = (output258, value142, value1))
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value142 value1 value71 = (output267, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input268 value139 value1 value71 = (output268, value144, value1) := by
  rw [input268_def, output268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output267_skip]
  kernel_rfl

theorem node269_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value136 value1 value71 = (output253, value139, value1))
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value139 value1 value71 = (output268, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input269 value136 value1 value71 = (output269, value144, value1) := by
  rw [input269_def, output269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output268_skip]
  kernel_rfl

theorem node270_cond_eq
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value134 value1 value71 = (output248, value136, value1))
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value136 value1 value71 = (output269, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input270 value134 value1 value71 = (output270, value144, value1) := by
  rw [input270_def, output270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child248]
  try dsimp only
  rw [child269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output248_skip, output269_skip]
  kernel_rfl

theorem node271_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value133 value1 value71 = (output245, value134, value1))
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value134 value1 value71 = (output270, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input271 value133 value1 value71 = (output271, value144, value1) := by
  rw [input271_def, output271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output270_skip]
  kernel_rfl

theorem node272_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value131 value1 value71 = (output244, value133, value1))
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value133 value1 value71 = (output271, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input272 value131 value1 value71 = (output272, value144, value1) := by
  rw [input272_def, output272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output271_skip]
  kernel_rfl

theorem node273_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value128 value1 value71 = (output241, value131, value1))
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value131 value1 value71 = (output272, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input273 value128 value1 value71 = (output273, value144, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output272_skip]
  kernel_rfl

theorem node274_cond_eq
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value128 value1 value71 = (output236, value128, value1))
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value128 value1 value71 = (output273, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input274 value128 value1 value71 = (output274, value144, value1) := by
  rw [input274_def, output274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child236]
  try dsimp only
  rw [child273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output236_skip, output273_skip]
  kernel_rfl

theorem node275_cond_eq
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value125 value1 value71 = (output235, value128, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value128 value1 value71 = (output274, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value125 value1 value71 = (output275, value144, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child235]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output235_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value124 value1 value71 = (output230, value125, value1))
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value125 value1 value71 = (output275, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input276 value124 value1 value71 = (output276, value144, value1) := by
  rw [input276_def, output276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output275_skip]
  kernel_rfl

theorem node277_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value123 value1 value71 = (output229, value124, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value124 value1 value71 = (output276, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value123 value1 value71 = (output277, value144, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value121 value1 value71 = (output228, value123, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value123 value1 value71 = (output277, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value121 value1 value71 = (output278, value144, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value119 value1 value71 = (output225, value121, value1))
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value121 value1 value71 = (output278, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input279 value119 value1 value71 = (output279, value144, value1) := by
  rw [input279_def, output279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output278_skip]
  kernel_rfl

theorem node280_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value116 value1 value71 = (output222, value119, value1))
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value119 value1 value71 = (output279, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input280 value116 value1 value71 = (output280, value144, value1) := by
  rw [input280_def, output280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output279_skip]
  kernel_rfl

theorem node281_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value116 value1 value71 = (output217, value116, value1))
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value116 value1 value71 = (output280, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input281 value116 value1 value71 = (output281, value144, value1) := by
  rw [input281_def, output281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output280_skip]
  kernel_rfl

theorem node282_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value113 value1 value71 = (output216, value116, value1))
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value116 value1 value71 = (output281, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input282 value113 value1 value71 = (output282, value144, value1) := by
  rw [input282_def, output282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output281_skip]
  kernel_rfl

theorem node283_cond_eq
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value112 value1 value71 = (output211, value113, value1))
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value113 value1 value71 = (output282, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input283 value112 value1 value71 = (output283, value144, value1) := by
  rw [input283_def, output283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child211]
  try dsimp only
  rw [child282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output211_skip, output282_skip]
  kernel_rfl

theorem node284_cond_eq
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value108 value1 value71 = (output210, value112, value1))
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value112 value1 value71 = (output283, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input284 value108 value1 value71 = (output284, value144, value1) := by
  rw [input284_def, output284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child210]
  try dsimp only
  rw [child283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output210_skip, output283_skip]
  kernel_rfl

theorem node285_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value105 value1 value71 = (output203, value108, value1))
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value108 value1 value71 = (output284, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input285 value105 value1 value71 = (output285, value144, value1) := by
  rw [input285_def, output285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output284_skip]
  kernel_rfl

theorem node286_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value105 value1 value71 = (output198, value105, value1))
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value105 value1 value71 = (output285, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input286 value105 value1 value71 = (output286, value144, value1) := by
  rw [input286_def, output286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output285_skip]
  kernel_rfl

theorem node287_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value102 value1 value71 = (output197, value105, value1))
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value105 value1 value71 = (output286, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input287 value102 value1 value71 = (output287, value144, value1) := by
  rw [input287_def, output287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  try dsimp only
  rw [child286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output197_skip, output286_skip]
  kernel_rfl

theorem node288_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value100 value1 value71 = (output192, value102, value1))
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value102 value1 value71 = (output287, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input288 value100 value1 value71 = (output288, value144, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output287_skip]
  kernel_rfl

theorem node289_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value96 value1 value71 = (output189, value100, value1))
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value100 value1 value71 = (output288, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input289 value96 value1 value71 = (output289, value144, value1) := by
  rw [input289_def, output289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output288_skip]
  kernel_rfl

theorem node290_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value93 value1 value71 = (output182, value96, value1))
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value96 value1 value71 = (output289, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input290 value93 value1 value71 = (output290, value144, value1) := by
  rw [input290_def, output290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output289_skip]
  kernel_rfl

theorem node291_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value93 value1 value71 = (output177, value93, value1))
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value93 value1 value71 = (output290, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input291 value93 value1 value71 = (output291, value144, value1) := by
  rw [input291_def, output291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output290_skip]
  kernel_rfl

theorem node292_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value92 value1 value71 = (output176, value93, value1))
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value93 value1 value71 = (output291, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input292 value92 value1 value71 = (output292, value144, value1) := by
  rw [input292_def, output292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output291_skip]
  kernel_rfl

theorem node293_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value88 value1 value71 = (output175, value92, value1))
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value92 value1 value71 = (output292, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input293 value88 value1 value71 = (output293, value144, value1) := by
  rw [input293_def, output293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output292_skip]
  kernel_rfl

theorem node294_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value85 value1 value71 = (output168, value88, value1))
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value88 value1 value71 = (output293, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input294 value85 value1 value71 = (output294, value144, value1) := by
  rw [input294_def, output294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output293_skip]
  kernel_rfl

theorem node295_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value85 value1 value71 = (output163, value85, value1))
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value85 value1 value71 = (output294, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input295 value85 value1 value71 = (output295, value144, value1) := by
  rw [input295_def, output295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output294_skip]
  kernel_rfl

theorem node296_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value77 value1 value71 = (output162, value85, value1))
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value85 value1 value71 = (output295, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input296 value77 value1 value71 = (output296, value144, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output295_skip]
  kernel_rfl

theorem node297_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value76 value1 value71 = (output147, value77, value1))
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value77 value1 value71 = (output296, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input297 value76 value1 value71 = (output297, value144, value1) := by
  rw [input297_def, output297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output296_skip]
  kernel_rfl

theorem node298_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value74 value1 value71 = (output146, value76, value1))
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value76 value1 value71 = (output297, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input298 value74 value1 value71 = (output298, value144, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output297_skip]
  kernel_rfl

theorem node299_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value73 value1 value71 = (output143, value74, value1))
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value74 value1 value71 = (output298, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input299 value73 value1 value71 = (output299, value144, value1) := by
  rw [input299_def, output299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output298_skip]
  kernel_rfl

theorem node300_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value73 value1 value71 = (output142, value73, value1))
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value73 value1 value71 = (output299, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input300 value73 value1 value71 = (output300, value144, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child142]
  try dsimp only
  rw [child299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output142_skip, output299_skip]
  kernel_rfl

theorem node301_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value72 value1 value71 = (output139, value73, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value73 value1 value71 = (output300, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value72 value1 value71 = (output301, value144, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  try dsimp only
  rw [child300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output139_skip, output300_skip]
  kernel_rfl

theorem node302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input302 value72 value1 value71 = (output302, value72, value1) := by
  rw [input302_def, output302_def]
  kernel_rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value72 value1 value71 = (output303, value72, value1) := by
  rw [input303_def, output303_def]
  kernel_rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value72 value1 value71 = (output304, value72, value1) := by
  rw [input304_def, output304_def]
  kernel_rfl

theorem node305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input305 value72 value1 value71 = (output305, value72, value1) := by
  rw [input305_def, output305_def]
  kernel_rfl

theorem node306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input306 value72 value1 value71 = (output306, value72, value1) := by
  rw [input306_def, output306_def]
  kernel_rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value72 value1 value71 = (output307, value72, value1) := by
  rw [input307_def, output307_def]
  kernel_rfl

theorem node308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input308 value72 value1 value71 = (output308, value72, value1) := by
  rw [input308_def, output308_def]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value72 value1 value71 = (output309, value72, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value72 value1 value71 = (output310, value72, value1) := by
  rw [input310_def, output310_def]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value72 value1 value71 = (output311, value72, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value72 value1 value71 = (output310, value72, value1))
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value72 value1 value71 = (output311, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input312 value72 value1 value71 = (output312, value72, value1) := by
  rw [input312_def, output312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output311_skip]
  kernel_rfl

theorem node313_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value72 value1 value71 = (output309, value72, value1))
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value72 value1 value71 = (output312, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input313 value72 value1 value71 = (output313, value72, value1) := by
  rw [input313_def, output313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output312_skip]
  kernel_rfl

theorem node314_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value72 value1 value71 = (output308, value72, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value72 value1 value71 = (output313, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value72 value1 value71 = (output314, value72, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value72 value1 value71 = (output307, value72, value1))
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value72 value1 value71 = (output314, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input315 value72 value1 value71 = (output315, value72, value1) := by
  rw [input315_def, output315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output314_skip]
  kernel_rfl

theorem node316_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value72 value1 value71 = (output306, value72, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value72 value1 value71 = (output315, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value72 value1 value71 = (output316, value72, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value72 value1 value71 = (output305, value72, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value72 value1 value71 = (output316, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value72 value1 value71 = (output317, value72, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output316_skip]
  kernel_rfl

theorem node318_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value72 value1 value71 = (output304, value72, value1))
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value72 value1 value71 = (output317, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input318 value72 value1 value71 = (output318, value72, value1) := by
  rw [input318_def, output318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output317_skip]
  kernel_rfl

theorem node319_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value72 value1 value71 = (output303, value72, value1))
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value72 value1 value71 = (output318, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input319 value72 value1 value71 = (output319, value72, value1) := by
  rw [input319_def, output319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output318_skip]
  kernel_rfl

theorem node320_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value72 value1 value71 = (output302, value72, value1))
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value72 value1 value71 = (output319, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input320 value72 value1 value71 = (output320, value72, value1) := by
  rw [input320_def, output320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output319_skip]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value72 value1 value71 = (output321, value145, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value72 value1 value71 = (output320, value72, value1))
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value72 value1 value71 = (output321, value145, value1)) : Flapjack.WordAlloc.removeDeadStructural input322 value72 value1 value71 = (output322, value145, value1) := by
  rw [input322_def, output322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output321_skip]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value145 value1 value71 = (output323, value69, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input324 value69 value1 value71 = (output324, value69, value1) := by
  rw [input324_def, output324_def]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value69 value1 value71 = (output325, value69, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value69 value1 value71 = (output326, value69, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value69 value1 value71 = (output325, value69, value1))
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value69 value1 value71 = (output326, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input327 value69 value1 value71 = (output327, value69, value1) := by
  rw [input327_def, output327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output326_skip]
  kernel_rfl

theorem node328_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value69 value1 value71 = (output324, value69, value1))
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value69 value1 value71 = (output327, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input328 value69 value1 value71 = (output328, value69, value1) := by
  rw [input328_def, output328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output327_skip]
  kernel_rfl

theorem node329_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value145 value1 value71 = (output323, value69, value1))
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value69 value1 value71 = (output328, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input329 value145 value1 value71 = (output329, value69, value1) := by
  rw [input329_def, output329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output328_skip]
  kernel_rfl

theorem node330_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value72 value1 value71 = (output322, value145, value1))
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value145 value1 value71 = (output329, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input330 value72 value1 value71 = (output330, value69, value1) := by
  rw [input330_def, output330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output329_skip]
  kernel_rfl

theorem node331_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value72 value1 value71 = (output301, value144, value1))
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value72 value1 value71 = (output330, value69, value1)) : Flapjack.WordAlloc.removeDeadStructural input331 value72 value1 value71 = (output331, value144, value1) := by
  rw [input331_def, output331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child301]
  try dsimp only
  rw [child330]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output330_skip]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value144 value1 value71 = (output332, value148, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value148 value1 value71 = (output333, value149, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value144 value1 value71 = (output332, value148, value1))
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value148 value1 value71 = (output333, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input334 value144 value1 value71 = (output334, value149, value1) := by
  rw [input334_def, output334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output333_skip]
  kernel_rfl

theorem node335_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value72 value1 value71 = (output331, value144, value1))
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value144 value1 value71 = (output334, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input335 value72 value1 value71 = (output335, value149, value1) := by
  rw [input335_def, output335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output334_skip]
  kernel_rfl

theorem node336_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value72 value1 value71 = (output118, value72, value1))
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value72 value1 value71 = (output335, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input336 value72 value1 value71 = (output336, value149, value1) := by
  rw [input336_def, output336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output335_skip]
  kernel_rfl

theorem node337_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value70 value1 value71 = (output117, value72, value1))
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value72 value1 value71 = (output336, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input337 value70 value1 value71 = (output337, value149, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output336_skip]
  kernel_rfl

theorem node338_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value70 value1 value71 = (output337, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input338 value69 value1 value2 = (output338, value70, value1) := by
  rw [input338_def, output338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value71 = (value70, value69) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child337
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value70 value1 value2 = (output339, value150, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value150 value1 value2 = (output340, value150, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value70 value1 value2 = (output339, value150, value1))
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value150 value1 value2 = (output340, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input341 value70 value1 value2 = (output341, value150, value1) := by
  rw [input341_def, output341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output340_skip]
  kernel_rfl

theorem node342_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value69 value1 value2 = (output338, value70, value1))
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value70 value1 value2 = (output341, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input342 value69 value1 value2 = (output342, value150, value1) := by
  rw [input342_def, output342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output341_skip]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value150 value1 value2 = (output343, value150, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input344 value150 value1 value2 = (output344, value151, value1) := by
  rw [input344_def, output344_def]
  kernel_rfl

theorem node345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input345 value151 value1 value2 = (output345, value152, value1) := by
  rw [input345_def, output345_def]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value152 value1 value2 = (output346, value153, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value151 value1 value2 = (output345, value152, value1))
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value152 value1 value2 = (output346, value153, value1)) : Flapjack.WordAlloc.removeDeadStructural input347 value151 value1 value2 = (output347, value153, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output346_skip]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value153 value1 value2 = (output348, value153, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value153 value1 value2 = (output349, value154, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input350 value154 value1 value2 = (output350, value155, value1) := by
  rw [input350_def, output350_def]
  kernel_rfl

theorem node351_cond_eq
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value153 value1 value2 = (output349, value154, value1))
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value154 value1 value2 = (output350, value155, value1)) : Flapjack.WordAlloc.removeDeadStructural input351 value153 value1 value2 = (output351, value155, value1) := by
  rw [input351_def, output351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child349]
  try dsimp only
  rw [child350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output349_skip, output350_skip]
  kernel_rfl

theorem node352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input352 value155 value1 value2 = (output352, value156, value1) := by
  rw [input352_def, output352_def]
  kernel_rfl

theorem node353_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value153 value1 value2 = (output351, value155, value1))
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value155 value1 value2 = (output352, value156, value1)) : Flapjack.WordAlloc.removeDeadStructural input353 value153 value1 value2 = (output353, value156, value1) := by
  rw [input353_def, output353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output352_skip]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value156 value1 value2 = (output354, value157, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input355 value157 value1 value2 = (output355, value158, value1) := by
  rw [input355_def, output355_def]
  kernel_rfl

theorem node356_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value156 value1 value2 = (output354, value157, value1))
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value157 value1 value2 = (output355, value158, value1)) : Flapjack.WordAlloc.removeDeadStructural input356 value156 value1 value2 = (output356, value158, value1) := by
  rw [input356_def, output356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output355_skip]
  kernel_rfl

theorem node357_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value153 value1 value2 = (output353, value156, value1))
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value156 value1 value2 = (output356, value158, value1)) : Flapjack.WordAlloc.removeDeadStructural input357 value153 value1 value2 = (output357, value158, value1) := by
  rw [input357_def, output357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output356_skip]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value158 value1 value2 = (output358, value159, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value159 value1 value2 = (output359, value159, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value159 value1 value2 = (output360, value159, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value159 value1 value2 = (output361, value160, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input362 value160 value1 value2 = (output362, value161, value1) := by
  rw [input362_def, output362_def]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value161 value1 value2 = (output363, value162, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value162 value1 value2 = (output364, value163, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value161 value1 value2 = (output363, value162, value1))
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value162 value1 value2 = (output364, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input365 value161 value1 value2 = (output365, value163, value1) := by
  rw [input365_def, output365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output364_skip]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value163 value1 value2 = (output366, value164, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value164 value1 value2 = (output367, value165, value1) := by
  rw [input367_def, output367_def]
  kernel_rfl

theorem node368_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value163 value1 value2 = (output366, value164, value1))
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value164 value1 value2 = (output367, value165, value1)) : Flapjack.WordAlloc.removeDeadStructural input368 value163 value1 value2 = (output368, value165, value1) := by
  rw [input368_def, output368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output367_skip]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value165 value1 value2 = (output369, value166, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value166 value1 value2 = (output370, value167, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value165 value1 value2 = (output369, value166, value1))
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value166 value1 value2 = (output370, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input371 value165 value1 value2 = (output371, value167, value1) := by
  rw [input371_def, output371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output370_skip]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value167 value1 value2 = (output372, value168, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value168 value1 value2 = (output373, value169, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input374 value169 value1 value2 = (output374, value170, value1) := by
  rw [input374_def, output374_def]
  kernel_rfl

theorem node375_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value168 value1 value2 = (output373, value169, value1))
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value169 value1 value2 = (output374, value170, value1)) : Flapjack.WordAlloc.removeDeadStructural input375 value168 value1 value2 = (output375, value170, value1) := by
  rw [input375_def, output375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output374_skip]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value170 value1 value2 = (output376, value171, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input377 value171 value1 value2 = (output377, value172, value1) := by
  rw [input377_def, output377_def]
  kernel_rfl

theorem node378_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value170 value1 value2 = (output376, value171, value1))
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value171 value1 value2 = (output377, value172, value1)) : Flapjack.WordAlloc.removeDeadStructural input378 value170 value1 value2 = (output378, value172, value1) := by
  rw [input378_def, output378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output377_skip]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value172 value1 value2 = (output379, value173, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input380 value173 value1 value2 = (output380, value174, value1) := by
  rw [input380_def, output380_def]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value174 value1 value2 = (output381, value175, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value173 value1 value2 = (output380, value174, value1))
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value174 value1 value2 = (output381, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input382 value173 value1 value2 = (output382, value175, value1) := by
  rw [input382_def, output382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output381_skip]
  kernel_rfl

theorem node383_cond_eq
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value172 value1 value2 = (output379, value173, value1))
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value173 value1 value2 = (output382, value175, value1)) : Flapjack.WordAlloc.removeDeadStructural input383 value172 value1 value2 = (output383, value175, value1) := by
  rw [input383_def, output383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child379]
  try dsimp only
  rw [child382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output379_skip, output382_skip]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value175 value1 value2 = (output384, value176, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value172 value1 value2 = (output383, value175, value1))
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value175 value1 value2 = (output384, value176, value1)) : Flapjack.WordAlloc.removeDeadStructural input385 value172 value1 value2 = (output385, value176, value1) := by
  rw [input385_def, output385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output384_skip]
  kernel_rfl

theorem node386_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value170 value1 value2 = (output378, value172, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value172 value1 value2 = (output385, value176, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value170 value1 value2 = (output386, value176, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output385_skip]
  kernel_rfl

theorem node387_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value168 value1 value2 = (output375, value170, value1))
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value170 value1 value2 = (output386, value176, value1)) : Flapjack.WordAlloc.removeDeadStructural input387 value168 value1 value2 = (output387, value176, value1) := by
  rw [input387_def, output387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output386_skip]
  kernel_rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value176 value1 value2 = (output388, value176, value1) := by
  rw [input388_def, output388_def]
  kernel_rfl

theorem node389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input389 value176 value1 value2 = (output389, value177, value1) := by
  rw [input389_def, output389_def]
  kernel_rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value177 value1 value2 = (output390, value178, value1) := by
  rw [input390_def, output390_def]
  kernel_rfl

theorem node391_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value176 value1 value2 = (output389, value177, value1))
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value177 value1 value2 = (output390, value178, value1)) : Flapjack.WordAlloc.removeDeadStructural input391 value176 value1 value2 = (output391, value178, value1) := by
  rw [input391_def, output391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output390_skip]
  kernel_rfl

theorem node392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input392 value178 value1 value2 = (output392, value179, value1) := by
  rw [input392_def, output392_def]
  kernel_rfl

theorem node393_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value176 value1 value2 = (output391, value178, value1))
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value178 value1 value2 = (output392, value179, value1)) : Flapjack.WordAlloc.removeDeadStructural input393 value176 value1 value2 = (output393, value179, value1) := by
  rw [input393_def, output393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output392_skip]
  kernel_rfl

theorem node394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input394 value179 value1 value2 = (output394, value180, value1) := by
  rw [input394_def, output394_def]
  kernel_rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value180 value1 value2 = (output395, value181, value1) := by
  rw [input395_def, output395_def]
  kernel_rfl

theorem node396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input396 value181 value1 value2 = (output396, value182, value1) := by
  rw [input396_def, output396_def]
  kernel_rfl

theorem node397_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value180 value1 value2 = (output395, value181, value1))
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value181 value1 value2 = (output396, value182, value1)) : Flapjack.WordAlloc.removeDeadStructural input397 value180 value1 value2 = (output397, value182, value1) := by
  rw [input397_def, output397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output396_skip]
  kernel_rfl

theorem node398_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value179 value1 value2 = (output394, value180, value1))
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value180 value1 value2 = (output397, value182, value1)) : Flapjack.WordAlloc.removeDeadStructural input398 value179 value1 value2 = (output398, value182, value1) := by
  rw [input398_def, output398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output397_skip]
  kernel_rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value182 value1 value2 = (output399, value183, value1) := by
  rw [input399_def, output399_def]
  kernel_rfl

theorem node400_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value179 value1 value2 = (output398, value182, value1))
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value182 value1 value2 = (output399, value183, value1)) : Flapjack.WordAlloc.removeDeadStructural input400 value179 value1 value2 = (output400, value183, value1) := by
  rw [input400_def, output400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output399_skip]
  kernel_rfl

theorem node401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input401 value183 value1 value2 = (output401, value184, value1) := by
  rw [input401_def, output401_def]
  kernel_rfl

theorem node402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input402 value184 value1 value2 = (output402, value184, value1) := by
  rw [input402_def, output402_def]
  kernel_rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value184 value1 value2 = (output403, value185, value1) := by
  rw [input403_def, output403_def]
  kernel_rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value185 value1 value2 = (output404, value186, value1) := by
  rw [input404_def, output404_def]
  kernel_rfl

theorem node405_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value184 value1 value2 = (output403, value185, value1))
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value185 value1 value2 = (output404, value186, value1)) : Flapjack.WordAlloc.removeDeadStructural input405 value184 value1 value2 = (output405, value186, value1) := by
  rw [input405_def, output405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output404_skip]
  kernel_rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value186 value1 value2 = (output406, value187, value1) := by
  rw [input406_def, output406_def]
  kernel_rfl

theorem node407_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value184 value1 value2 = (output405, value186, value1))
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value186 value1 value2 = (output406, value187, value1)) : Flapjack.WordAlloc.removeDeadStructural input407 value184 value1 value2 = (output407, value187, value1) := by
  rw [input407_def, output407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  try dsimp only
  rw [child406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output405_skip, output406_skip]
  kernel_rfl

theorem node408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input408 value187 value1 value2 = (output408, value188, value1) := by
  rw [input408_def, output408_def]
  kernel_rfl

theorem node409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input409 value188 value1 value2 = (output409, value189, value1) := by
  rw [input409_def, output409_def]
  kernel_rfl

theorem node410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input410 value189 value1 value2 = (output410, value190, value1) := by
  rw [input410_def, output410_def]
  kernel_rfl

theorem node411_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value188 value1 value2 = (output409, value189, value1))
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value189 value1 value2 = (output410, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input411 value188 value1 value2 = (output411, value190, value1) := by
  rw [input411_def, output411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output410_skip]
  kernel_rfl

theorem node412_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value187 value1 value2 = (output408, value188, value1))
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value188 value1 value2 = (output411, value190, value1)) : Flapjack.WordAlloc.removeDeadStructural input412 value187 value1 value2 = (output412, value190, value1) := by
  rw [input412_def, output412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output411_skip]
  kernel_rfl

theorem node413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input413 value190 value1 value2 = (output413, value191, value1) := by
  rw [input413_def, output413_def]
  kernel_rfl

theorem node414_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value187 value1 value2 = (output412, value190, value1))
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value190 value1 value2 = (output413, value191, value1)) : Flapjack.WordAlloc.removeDeadStructural input414 value187 value1 value2 = (output414, value191, value1) := by
  rw [input414_def, output414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output413_skip]
  kernel_rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value191 value1 value2 = (output415, value192, value1) := by
  rw [input415_def, output415_def]
  kernel_rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value192 value1 value2 = (output416, value193, value1) := by
  rw [input416_def, output416_def]
  kernel_rfl

theorem node417_cond_eq
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value191 value1 value2 = (output415, value192, value1))
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value192 value1 value2 = (output416, value193, value1)) : Flapjack.WordAlloc.removeDeadStructural input417 value191 value1 value2 = (output417, value193, value1) := by
  rw [input417_def, output417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child415]
  try dsimp only
  rw [child416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output415_skip, output416_skip]
  kernel_rfl

theorem node418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input418 value193 value1 value2 = (output418, value194, value1) := by
  rw [input418_def, output418_def]
  kernel_rfl

theorem node419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input419 value194 value1 value2 = (output419, value195, value1) := by
  rw [input419_def, output419_def]
  kernel_rfl

theorem node420_cond_eq
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value193 value1 value2 = (output418, value194, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value194 value1 value2 = (output419, value195, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value193 value1 value2 = (output420, value195, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child418]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output418_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input421 value195 value1 value2 = (output421, value196, value1) := by
  rw [input421_def, output421_def]
  kernel_rfl

theorem node422_cond_eq
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value193 value1 value2 = (output420, value195, value1))
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value195 value1 value2 = (output421, value196, value1)) : Flapjack.WordAlloc.removeDeadStructural input422 value193 value1 value2 = (output422, value196, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child420]
  try dsimp only
  rw [child421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output420_skip, output421_skip]
  kernel_rfl

theorem node423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input423 value196 value1 value2 = (output423, value196, value1) := by
  rw [input423_def, output423_def]
  kernel_rfl

theorem node424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input424 value196 value1 value2 = (output424, value197, value1) := by
  rw [input424_def, output424_def]
  kernel_rfl

theorem node425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input425 value197 value1 value2 = (output425, value198, value1) := by
  rw [input425_def, output425_def]
  kernel_rfl

theorem node426_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value196 value1 value2 = (output424, value197, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value197 value1 value2 = (output425, value198, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value196 value1 value2 = (output426, value198, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value198 value1 value2 = (output427, value199, value1) := by
  rw [input427_def, output427_def]
  kernel_rfl

theorem node428_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value196 value1 value2 = (output426, value198, value1))
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value198 value1 value2 = (output427, value199, value1)) : Flapjack.WordAlloc.removeDeadStructural input428 value196 value1 value2 = (output428, value199, value1) := by
  rw [input428_def, output428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output427_skip]
  kernel_rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value199 value1 value2 = (output429, value200, value1) := by
  rw [input429_def, output429_def]
  kernel_rfl

theorem node430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input430 value200 value1 value2 = (output430, value201, value1) := by
  rw [input430_def, output430_def]
  kernel_rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value201 value1 value2 = (output431, value202, value1) := by
  rw [input431_def, output431_def]
  kernel_rfl

theorem node432_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value200 value1 value2 = (output430, value201, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value201 value1 value2 = (output431, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value200 value1 value2 = (output432, value202, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  try dsimp only
  rw [child431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output430_skip, output431_skip]
  kernel_rfl

theorem node433_cond_eq
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value199 value1 value2 = (output429, value200, value1))
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value200 value1 value2 = (output432, value202, value1)) : Flapjack.WordAlloc.removeDeadStructural input433 value199 value1 value2 = (output433, value202, value1) := by
  rw [input433_def, output433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child429]
  try dsimp only
  rw [child432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output429_skip, output432_skip]
  kernel_rfl

theorem node434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input434 value202 value1 value2 = (output434, value203, value1) := by
  rw [input434_def, output434_def]
  kernel_rfl

theorem node435_cond_eq
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value199 value1 value2 = (output433, value202, value1))
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value202 value1 value2 = (output434, value203, value1)) : Flapjack.WordAlloc.removeDeadStructural input435 value199 value1 value2 = (output435, value203, value1) := by
  rw [input435_def, output435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child433]
  try dsimp only
  rw [child434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output433_skip, output434_skip]
  kernel_rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value203 value1 value2 = (output436, value203, value1) := by
  rw [input436_def, output436_def]
  kernel_rfl

theorem node437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input437 value204 value1 value205 = (output437, value206, value1) := by
  rw [input437_def, output437_def]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value206 value1 value205 = (output438, value206, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input439 value206 value1 value205 = (output439, value206, value1) := by
  rw [input439_def, output439_def]
  kernel_rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value206 value1 value205 = (output440, value206, value1) := by
  rw [input440_def, output440_def]
  kernel_rfl

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value206 value1 value205 = (output441, value206, value1) := by
  rw [input441_def, output441_def]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value206 value1 value205 = (output442, value206, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value206 value1 value205 = (output441, value206, value1))
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value206 value1 value205 = (output442, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input443 value206 value1 value205 = (output443, value206, value1) := by
  rw [input443_def, output443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output442_skip]
  kernel_rfl

theorem node444_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value206 value1 value205 = (output440, value206, value1))
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value206 value1 value205 = (output443, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input444 value206 value1 value205 = (output444, value206, value1) := by
  rw [input444_def, output444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output443_skip]
  kernel_rfl

theorem node445_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value206 value1 value205 = (output439, value206, value1))
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value206 value1 value205 = (output444, value206, value1)) : Flapjack.WordAlloc.removeDeadStructural input445 value206 value1 value205 = (output445, value206, value1) := by
  rw [input445_def, output445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output444_skip]
  kernel_rfl

theorem node446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input446 value206 value1 value205 = (output446, value207, value1) := by
  rw [input446_def, output446_def]
  kernel_rfl

theorem node447_cond_eq
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value206 value1 value205 = (output445, value206, value1))
    (child446 : Flapjack.WordAlloc.removeDeadStructural input446 value206 value1 value205 = (output446, value207, value1)) : Flapjack.WordAlloc.removeDeadStructural input447 value206 value1 value205 = (output447, value207, value1) := by
  rw [input447_def, output447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child445]
  try dsimp only
  rw [child446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output445_skip, output446_skip]
  kernel_rfl

theorem node448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input448 value207 value1 value205 = (output448, value204, value1) := by
  rw [input448_def, output448_def]
  kernel_rfl

theorem node449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input449 value204 value1 value205 = (output449, value207, value1) := by
  rw [input449_def, output449_def]
  kernel_rfl

theorem node450_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value207 value1 value205 = (output448, value204, value1))
    (child449 : Flapjack.WordAlloc.removeDeadStructural input449 value204 value1 value205 = (output449, value207, value1)) : Flapjack.WordAlloc.removeDeadStructural input450 value207 value1 value205 = (output450, value207, value1) := by
  rw [input450_def, output450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output449_skip]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value207 value1 value205 = (output451, value208, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value208 value1 value205 = (output452, value209, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value209 value1 value205 = (output453, value210, value1) := by
  rw [input453_def, output453_def]
  kernel_rfl

theorem node454_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value208 value1 value205 = (output452, value209, value1))
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value209 value1 value205 = (output453, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input454 value208 value1 value205 = (output454, value210, value1) := by
  rw [input454_def, output454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output453_skip]
  kernel_rfl

theorem node455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input455 value210 value1 value205 = (output455, value211, value1) := by
  rw [input455_def, output455_def]
  kernel_rfl

theorem node456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input456 value211 value1 value205 = (output456, value212, value1) := by
  rw [input456_def, output456_def]
  kernel_rfl

theorem node457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input457 value212 value1 value205 = (output457, value213, value1) := by
  rw [input457_def, output457_def]
  kernel_rfl

theorem node458_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value211 value1 value205 = (output456, value212, value1))
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value212 value1 value205 = (output457, value213, value1)) : Flapjack.WordAlloc.removeDeadStructural input458 value211 value1 value205 = (output458, value213, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output457_skip]
  kernel_rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value213 value1 value205 = (output459, value214, value1) := by
  rw [input459_def, output459_def]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value214 value1 value205 = (output460, value215, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value213 value1 value205 = (output459, value214, value1))
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value214 value1 value205 = (output460, value215, value1)) : Flapjack.WordAlloc.removeDeadStructural input461 value213 value1 value205 = (output461, value215, value1) := by
  rw [input461_def, output461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output460_skip]
  kernel_rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value215 value1 value205 = (output462, value216, value1) := by
  rw [input462_def, output462_def]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value216 value1 value205 = (output463, value217, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value217 value1 value205 = (output464, value218, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value216 value1 value205 = (output463, value217, value1))
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value217 value1 value205 = (output464, value218, value1)) : Flapjack.WordAlloc.removeDeadStructural input465 value216 value1 value205 = (output465, value218, value1) := by
  rw [input465_def, output465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output464_skip]
  kernel_rfl

theorem node466_cond_eq
    (child462 : Flapjack.WordAlloc.removeDeadStructural input462 value215 value1 value205 = (output462, value216, value1))
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value216 value1 value205 = (output465, value218, value1)) : Flapjack.WordAlloc.removeDeadStructural input466 value215 value1 value205 = (output466, value218, value1) := by
  rw [input466_def, output466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child462]
  try dsimp only
  rw [child465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output462_skip, output465_skip]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value218 value1 value205 = (output467, value219, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value215 value1 value205 = (output466, value218, value1))
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value218 value1 value205 = (output467, value219, value1)) : Flapjack.WordAlloc.removeDeadStructural input468 value215 value1 value205 = (output468, value219, value1) := by
  rw [input468_def, output468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output467_skip]
  kernel_rfl

theorem node469_cond_eq
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value213 value1 value205 = (output461, value215, value1))
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value215 value1 value205 = (output468, value219, value1)) : Flapjack.WordAlloc.removeDeadStructural input469 value213 value1 value205 = (output469, value219, value1) := by
  rw [input469_def, output469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child461]
  try dsimp only
  rw [child468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output461_skip, output468_skip]
  kernel_rfl

theorem node470_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value211 value1 value205 = (output458, value213, value1))
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value213 value1 value205 = (output469, value219, value1)) : Flapjack.WordAlloc.removeDeadStructural input470 value211 value1 value205 = (output470, value219, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output469_skip]
  kernel_rfl

theorem node471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input471 value219 value1 value205 = (output471, value219, value1) := by
  rw [input471_def, output471_def]
  kernel_rfl

theorem node472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input472 value219 value1 value205 = (output472, value220, value1) := by
  rw [input472_def, output472_def]
  kernel_rfl

theorem node473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input473 value220 value1 value205 = (output473, value221, value1) := by
  rw [input473_def, output473_def]
  kernel_rfl

theorem node474_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value219 value1 value205 = (output472, value220, value1))
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value220 value1 value205 = (output473, value221, value1)) : Flapjack.WordAlloc.removeDeadStructural input474 value219 value1 value205 = (output474, value221, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output473_skip]
  kernel_rfl

theorem node475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input475 value221 value1 value205 = (output475, value222, value1) := by
  rw [input475_def, output475_def]
  kernel_rfl

theorem node476_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value219 value1 value205 = (output474, value221, value1))
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value221 value1 value205 = (output475, value222, value1)) : Flapjack.WordAlloc.removeDeadStructural input476 value219 value1 value205 = (output476, value222, value1) := by
  rw [input476_def, output476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output475_skip]
  kernel_rfl

theorem node477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input477 value222 value1 value205 = (output477, value223, value1) := by
  rw [input477_def, output477_def]
  kernel_rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value223 value1 value205 = (output478, value224, value1) := by
  rw [input478_def, output478_def]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value224 value1 value205 = (output479, value225, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value223 value1 value205 = (output478, value224, value1))
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value224 value1 value205 = (output479, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input480 value223 value1 value205 = (output480, value225, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output479_skip]
  kernel_rfl

theorem node481_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value222 value1 value205 = (output477, value223, value1))
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value223 value1 value205 = (output480, value225, value1)) : Flapjack.WordAlloc.removeDeadStructural input481 value222 value1 value205 = (output481, value225, value1) := by
  rw [input481_def, output481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output480_skip]
  kernel_rfl

theorem node482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input482 value225 value1 value205 = (output482, value226, value1) := by
  rw [input482_def, output482_def]
  kernel_rfl

theorem node483_cond_eq
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value222 value1 value205 = (output481, value225, value1))
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value225 value1 value205 = (output482, value226, value1)) : Flapjack.WordAlloc.removeDeadStructural input483 value222 value1 value205 = (output483, value226, value1) := by
  rw [input483_def, output483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child481]
  try dsimp only
  rw [child482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output481_skip, output482_skip]
  kernel_rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value226 value1 value205 = (output484, value227, value1) := by
  rw [input484_def, output484_def]
  kernel_rfl

theorem node485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input485 value227 value1 value205 = (output485, value227, value1) := by
  rw [input485_def, output485_def]
  kernel_rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value227 value1 value205 = (output486, value228, value1) := by
  rw [input486_def, output486_def]
  kernel_rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value228 value1 value205 = (output487, value229, value1) := by
  rw [input487_def, output487_def]
  kernel_rfl

theorem node488_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value227 value1 value205 = (output486, value228, value1))
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value228 value1 value205 = (output487, value229, value1)) : Flapjack.WordAlloc.removeDeadStructural input488 value227 value1 value205 = (output488, value229, value1) := by
  rw [input488_def, output488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output487_skip]
  kernel_rfl

theorem node489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input489 value229 value1 value205 = (output489, value230, value1) := by
  rw [input489_def, output489_def]
  kernel_rfl

theorem node490_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value227 value1 value205 = (output488, value229, value1))
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value229 value1 value205 = (output489, value230, value1)) : Flapjack.WordAlloc.removeDeadStructural input490 value227 value1 value205 = (output490, value230, value1) := by
  rw [input490_def, output490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output489_skip]
  kernel_rfl

theorem node491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input491 value230 value1 value205 = (output491, value231, value1) := by
  rw [input491_def, output491_def]
  kernel_rfl

theorem node492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input492 value231 value1 value205 = (output492, value232, value1) := by
  rw [input492_def, output492_def]
  kernel_rfl

theorem node493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input493 value232 value1 value205 = (output493, value233, value1) := by
  rw [input493_def, output493_def]
  kernel_rfl

theorem node494_cond_eq
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value231 value1 value205 = (output492, value232, value1))
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value232 value1 value205 = (output493, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input494 value231 value1 value205 = (output494, value233, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child492]
  try dsimp only
  rw [child493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output492_skip, output493_skip]
  kernel_rfl

theorem node495_cond_eq
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value230 value1 value205 = (output491, value231, value1))
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value231 value1 value205 = (output494, value233, value1)) : Flapjack.WordAlloc.removeDeadStructural input495 value230 value1 value205 = (output495, value233, value1) := by
  rw [input495_def, output495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child491]
  try dsimp only
  rw [child494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output491_skip, output494_skip]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value233 value1 value205 = (output496, value234, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value230 value1 value205 = (output495, value233, value1))
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value233 value1 value205 = (output496, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input497 value230 value1 value205 = (output497, value234, value1) := by
  rw [input497_def, output497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output496_skip]
  kernel_rfl

theorem node498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input498 value234 value1 value205 = (output498, value235, value1) := by
  rw [input498_def, output498_def]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value235 value1 value205 = (output499, value236, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value234 value1 value205 = (output498, value235, value1))
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value235 value1 value205 = (output499, value236, value1)) : Flapjack.WordAlloc.removeDeadStructural input500 value234 value1 value205 = (output500, value236, value1) := by
  rw [input500_def, output500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output499_skip]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value236 value1 value205 = (output501, value237, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input502 value237 value1 value205 = (output502, value238, value1) := by
  rw [input502_def, output502_def]
  kernel_rfl

theorem node503_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value236 value1 value205 = (output501, value237, value1))
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value237 value1 value205 = (output502, value238, value1)) : Flapjack.WordAlloc.removeDeadStructural input503 value236 value1 value205 = (output503, value238, value1) := by
  rw [input503_def, output503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  try dsimp only
  rw [child502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output501_skip, output502_skip]
  kernel_rfl

theorem node504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input504 value238 value1 value205 = (output504, value239, value1) := by
  rw [input504_def, output504_def]
  kernel_rfl

theorem node505_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value236 value1 value205 = (output503, value238, value1))
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value238 value1 value205 = (output504, value239, value1)) : Flapjack.WordAlloc.removeDeadStructural input505 value236 value1 value205 = (output505, value239, value1) := by
  rw [input505_def, output505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output504_skip]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value239 value1 value205 = (output506, value239, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value239 value1 value205 = (output507, value240, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value240 value1 value205 = (output508, value241, value1) := by
  rw [input508_def, output508_def]
  kernel_rfl

theorem node509_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value239 value1 value205 = (output507, value240, value1))
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value240 value1 value205 = (output508, value241, value1)) : Flapjack.WordAlloc.removeDeadStructural input509 value239 value1 value205 = (output509, value241, value1) := by
  rw [input509_def, output509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output508_skip]
  kernel_rfl

theorem node510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input510 value241 value1 value205 = (output510, value242, value1) := by
  rw [input510_def, output510_def]
  kernel_rfl

theorem node511_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value239 value1 value205 = (output509, value241, value1))
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value241 value1 value205 = (output510, value242, value1)) : Flapjack.WordAlloc.removeDeadStructural input511 value239 value1 value205 = (output511, value242, value1) := by
  rw [input511_def, output511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output510_skip]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages461.Parallel
