import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages623.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages623.Parallel
theorem node256_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value72 value1 value2 = (output254, value72, value1))
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value72 value1 value2 = (output255, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input256 value72 value1 value2 = (output256, value72, value1) := by
  rw [input256_def, output256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output255_skip]
  kernel_rfl

theorem node257_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value72 value1 value2 = (output253, value72, value1))
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value72 value1 value2 = (output256, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input257 value72 value1 value2 = (output257, value72, value1) := by
  rw [input257_def, output257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output256_skip]
  kernel_rfl

theorem node258_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value72 value1 value2 = (output252, value72, value1))
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value72 value1 value2 = (output257, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input258 value72 value1 value2 = (output258, value72, value1) := by
  rw [input258_def, output258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output257_skip]
  kernel_rfl

theorem node259_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value72 value1 value2 = (output251, value72, value1))
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value72 value1 value2 = (output258, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input259 value72 value1 value2 = (output259, value72, value1) := by
  rw [input259_def, output259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output258_skip]
  kernel_rfl

theorem node260_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value72 value1 value2 = (output250, value72, value1))
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value72 value1 value2 = (output259, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input260 value72 value1 value2 = (output260, value72, value1) := by
  rw [input260_def, output260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output259_skip]
  kernel_rfl

theorem node261_cond_eq
    (child249 : Flapjack.WordAlloc.removeDeadStructural input249 value72 value1 value2 = (output249, value72, value1))
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value72 value1 value2 = (output260, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input261 value72 value1 value2 = (output261, value72, value1) := by
  rw [input261_def, output261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child249]
  try dsimp only
  rw [child260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output249_skip, output260_skip]
  kernel_rfl

theorem node262_cond_eq
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value72 value1 value2 = (output248, value72, value1))
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value72 value1 value2 = (output261, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input262 value72 value1 value2 = (output262, value72, value1) := by
  rw [input262_def, output262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child248]
  try dsimp only
  rw [child261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output248_skip, output261_skip]
  kernel_rfl

theorem node263_cond_eq
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value72 value1 value2 = (output247, value72, value1))
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value72 value1 value2 = (output262, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input263 value72 value1 value2 = (output263, value72, value1) := by
  rw [input263_def, output263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child247]
  try dsimp only
  rw [child262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output247_skip, output262_skip]
  kernel_rfl

theorem node264_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value72 value1 value2 = (output246, value72, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value72 value1 value2 = (output263, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value72 value1 value2 = (output264, value72, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  try dsimp only
  rw [child263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output246_skip, output263_skip]
  kernel_rfl

theorem node265_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value72 value1 value2 = (output245, value72, value1))
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value72 value1 value2 = (output264, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input265 value72 value1 value2 = (output265, value72, value1) := by
  rw [input265_def, output265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output264_skip]
  kernel_rfl

theorem node266_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value71 value1 value2 = (output244, value72, value1))
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value72 value1 value2 = (output265, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input266 value71 value1 value2 = (output266, value72, value1) := by
  rw [input266_def, output266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output265_skip]
  kernel_rfl

theorem node267_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value70 value1 value2 = (output243, value71, value1))
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value71 value1 value2 = (output266, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input267 value70 value1 value2 = (output267, value72, value1) := by
  rw [input267_def, output267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output266_skip]
  kernel_rfl

theorem node268_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value69 value1 value2 = (output242, value70, value1))
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value70 value1 value2 = (output267, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input268 value69 value1 value2 = (output268, value72, value1) := by
  rw [input268_def, output268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output267_skip]
  kernel_rfl

theorem node269_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value68 value1 value2 = (output241, value69, value1))
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value69 value1 value2 = (output268, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input269 value68 value1 value2 = (output269, value72, value1) := by
  rw [input269_def, output269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output268_skip]
  kernel_rfl

theorem node270_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value65 value1 value2 = (output240, value68, value1))
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value68 value1 value2 = (output269, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input270 value65 value1 value2 = (output270, value72, value1) := by
  rw [input270_def, output270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output269_skip]
  kernel_rfl

theorem node271_cond_eq
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value65 value1 value2 = (output235, value65, value1))
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value65 value1 value2 = (output270, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input271 value65 value1 value2 = (output271, value72, value1) := by
  rw [input271_def, output271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child235]
  try dsimp only
  rw [child270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output235_skip, output270_skip]
  kernel_rfl

theorem node272_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value61 value1 value2 = (output234, value65, value1))
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value65 value1 value2 = (output271, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input272 value61 value1 value2 = (output272, value72, value1) := by
  rw [input272_def, output272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  try dsimp only
  rw [child271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output234_skip, output271_skip]
  kernel_rfl

theorem node273_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value60 value1 value2 = (output227, value61, value1))
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value61 value1 value2 = (output272, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input273 value60 value1 value2 = (output273, value72, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output272_skip]
  kernel_rfl

theorem node274_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value60 value1 value2 = (output226, value60, value1))
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value60 value1 value2 = (output273, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input274 value60 value1 value2 = (output274, value72, value1) := by
  rw [input274_def, output274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output273_skip]
  kernel_rfl

theorem node275_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value60 value1 value2 = (output225, value60, value1))
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value60 value1 value2 = (output274, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input275 value60 value1 value2 = (output275, value72, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output274_skip]
  kernel_rfl

theorem node276_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value59 value1 value2 = (output224, value60, value1))
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value60 value1 value2 = (output275, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input276 value59 value1 value2 = (output276, value72, value1) := by
  rw [input276_def, output276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output275_skip]
  kernel_rfl

theorem node277_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value56 value1 value2 = (output223, value59, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value59 value1 value2 = (output276, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value56 value1 value2 = (output277, value72, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  try dsimp only
  rw [child276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output223_skip, output276_skip]
  kernel_rfl

theorem node278_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value56 value1 value2 = (output218, value56, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value56 value1 value2 = (output277, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value56 value1 value2 = (output278, value72, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output277_skip]
  kernel_rfl

theorem node279_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value51 value1 value2 = (output217, value56, value1))
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value56 value1 value2 = (output278, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input279 value51 value1 value2 = (output279, value72, value1) := by
  rw [input279_def, output279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output278_skip]
  kernel_rfl

theorem node280_cond_eq
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value44 value1 value2 = (output208, value51, value1))
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value51 value1 value2 = (output279, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input280 value44 value1 value2 = (output280, value72, value1) := by
  rw [input280_def, output280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child208]
  try dsimp only
  rw [child279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output208_skip, output279_skip]
  kernel_rfl

theorem node281_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value43 value1 value2 = (output195, value44, value1))
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value44 value1 value2 = (output280, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input281 value43 value1 value2 = (output281, value72, value1) := by
  rw [input281_def, output281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output280_skip]
  kernel_rfl

theorem node282_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value41 value1 value2 = (output194, value43, value1))
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value43 value1 value2 = (output281, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input282 value41 value1 value2 = (output282, value72, value1) := by
  rw [input282_def, output282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output281_skip]
  kernel_rfl

theorem node283_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value36 value1 value2 = (output191, value41, value1))
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value41 value1 value2 = (output282, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input283 value36 value1 value2 = (output283, value72, value1) := by
  rw [input283_def, output283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output282_skip]
  kernel_rfl

theorem node284_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value29 value1 value2 = (output182, value36, value1))
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value36 value1 value2 = (output283, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input284 value29 value1 value2 = (output284, value72, value1) := by
  rw [input284_def, output284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output283_skip]
  kernel_rfl

theorem node285_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value28 value1 value2 = (output169, value29, value1))
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value29 value1 value2 = (output284, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input285 value28 value1 value2 = (output285, value72, value1) := by
  rw [input285_def, output285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output284_skip]
  kernel_rfl

theorem node286_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value26 value1 value2 = (output168, value28, value1))
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value28 value1 value2 = (output285, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input286 value26 value1 value2 = (output286, value72, value1) := by
  rw [input286_def, output286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output285_skip]
  kernel_rfl

theorem node287_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value25 value1 value2 = (output165, value26, value1))
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value26 value1 value2 = (output286, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input287 value25 value1 value2 = (output287, value72, value1) := by
  rw [input287_def, output287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output286_skip]
  kernel_rfl

theorem node288_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value24 value1 value2 = (output164, value25, value1))
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value25 value1 value2 = (output287, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input288 value24 value1 value2 = (output288, value72, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output287_skip]
  kernel_rfl

theorem node289_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value16 value1 value2 = (output163, value24, value1))
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value24 value1 value2 = (output288, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input289 value16 value1 value2 = (output289, value72, value1) := by
  rw [input289_def, output289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output288_skip]
  kernel_rfl

theorem node290_cond_eq
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value16 value1 value2 = (output100, value16, value1))
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value16 value1 value2 = (output289, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input290 value16 value1 value2 = (output290, value72, value1) := by
  rw [input290_def, output290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child100]
  try dsimp only
  rw [child289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output100_skip, output289_skip]
  kernel_rfl

theorem node291_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value15 value1 value2 = (output99, value16, value1))
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value16 value1 value2 = (output290, value72, value1)) : Flapjack.WordAlloc.removeDeadStructural input291 value15 value1 value2 = (output291, value72, value1) := by
  rw [input291_def, output291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output290_skip]
  kernel_rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value15 value1 value2 = (output292, value15, value1) := by
  rw [input292_def, output292_def]
  kernel_rfl

theorem node293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input293 value15 value1 value2 = (output293, value15, value1) := by
  rw [input293_def, output293_def]
  kernel_rfl

theorem node294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input294 value15 value1 value2 = (output294, value15, value1) := by
  rw [input294_def, output294_def]
  kernel_rfl

theorem node295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input295 value15 value1 value2 = (output295, value15, value1) := by
  rw [input295_def, output295_def]
  kernel_rfl

theorem node296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input296 value15 value1 value2 = (output296, value15, value1) := by
  rw [input296_def, output296_def]
  kernel_rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value15 value1 value2 = (output297, value15, value1) := by
  rw [input297_def, output297_def]
  kernel_rfl

theorem node298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input298 value15 value1 value2 = (output298, value15, value1) := by
  rw [input298_def, output298_def]
  kernel_rfl

theorem node299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input299 value15 value1 value2 = (output299, value15, value1) := by
  rw [input299_def, output299_def]
  kernel_rfl

theorem node300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input300 value15 value1 value2 = (output300, value15, value1) := by
  rw [input300_def, output300_def]
  kernel_rfl

theorem node301_cond_eq
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value15 value1 value2 = (output299, value15, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value15 value1 value2 = (output300, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value15 value1 value2 = (output301, value15, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child299]
  try dsimp only
  rw [child300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output299_skip, output300_skip]
  kernel_rfl

theorem node302_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value15 value1 value2 = (output298, value15, value1))
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value15 value1 value2 = (output301, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input302 value15 value1 value2 = (output302, value15, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  try dsimp only
  rw [child301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output298_skip, output301_skip]
  kernel_rfl

theorem node303_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value15 value1 value2 = (output297, value15, value1))
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value15 value1 value2 = (output302, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input303 value15 value1 value2 = (output303, value15, value1) := by
  rw [input303_def, output303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  try dsimp only
  rw [child302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output297_skip, output302_skip]
  kernel_rfl

theorem node304_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value15 value1 value2 = (output296, value15, value1))
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value15 value1 value2 = (output303, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input304 value15 value1 value2 = (output304, value15, value1) := by
  rw [input304_def, output304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output303_skip]
  kernel_rfl

theorem node305_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value15 value1 value2 = (output295, value15, value1))
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value15 value1 value2 = (output304, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input305 value15 value1 value2 = (output305, value15, value1) := by
  rw [input305_def, output305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  try dsimp only
  rw [child304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output295_skip, output304_skip]
  kernel_rfl

theorem node306_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value15 value1 value2 = (output294, value15, value1))
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value15 value1 value2 = (output305, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input306 value15 value1 value2 = (output306, value15, value1) := by
  rw [input306_def, output306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  try dsimp only
  rw [child305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output294_skip, output305_skip]
  kernel_rfl

theorem node307_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value15 value1 value2 = (output293, value15, value1))
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value15 value1 value2 = (output306, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input307 value15 value1 value2 = (output307, value15, value1) := by
  rw [input307_def, output307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output306_skip]
  kernel_rfl

theorem node308_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value15 value1 value2 = (output292, value15, value1))
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value15 value1 value2 = (output307, value15, value1)) : Flapjack.WordAlloc.removeDeadStructural input308 value15 value1 value2 = (output308, value15, value1) := by
  rw [input308_def, output308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output307_skip]
  kernel_rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value15 value1 value2 = (output309, value73, value1) := by
  rw [input309_def, output309_def]
  kernel_rfl

theorem node310_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value15 value1 value2 = (output308, value15, value1))
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value15 value1 value2 = (output309, value73, value1)) : Flapjack.WordAlloc.removeDeadStructural input310 value15 value1 value2 = (output310, value73, value1) := by
  rw [input310_def, output310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output309_skip]
  kernel_rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value73 value1 value2 = (output311, value73, value1) := by
  rw [input311_def, output311_def]
  kernel_rfl

theorem node312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input312 value73 value1 value2 = (output312, value74, value1) := by
  rw [input312_def, output312_def]
  kernel_rfl

theorem node313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input313 value74 value1 value2 = (output313, value75, value1) := by
  rw [input313_def, output313_def]
  kernel_rfl

theorem node314_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value73 value1 value2 = (output312, value74, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value74 value1 value2 = (output313, value75, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value73 value1 value2 = (output314, value75, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output313_skip]
  kernel_rfl

theorem node315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input315 value75 value1 value2 = (output315, value76, value1) := by
  rw [input315_def, output315_def]
  kernel_rfl

theorem node316_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value73 value1 value2 = (output314, value75, value1))
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value75 value1 value2 = (output315, value76, value1)) : Flapjack.WordAlloc.removeDeadStructural input316 value73 value1 value2 = (output316, value76, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output315_skip]
  kernel_rfl

theorem node317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input317 value76 value1 value2 = (output317, value77, value1) := by
  rw [input317_def, output317_def]
  kernel_rfl

theorem node318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input318 value77 value1 value2 = (output318, value78, value1) := by
  rw [input318_def, output318_def]
  kernel_rfl

theorem node319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input319 value78 value1 value2 = (output319, value78, value1) := by
  rw [input319_def, output319_def]
  kernel_rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value78 value1 value2 = (output320, value78, value1) := by
  rw [input320_def, output320_def]
  kernel_rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value78 value1 value2 = (output321, value79, value1) := by
  rw [input321_def, output321_def]
  kernel_rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value79 value1 value2 = (output322, value80, value1) := by
  rw [input322_def, output322_def]
  kernel_rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value80 value1 value2 = (output323, value81, value1) := by
  rw [input323_def, output323_def]
  kernel_rfl

theorem node324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input324 value81 value1 value2 = (output324, value82, value1) := by
  rw [input324_def, output324_def]
  kernel_rfl

theorem node325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input325 value82 value1 value2 = (output325, value83, value1) := by
  rw [input325_def, output325_def]
  kernel_rfl

theorem node326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input326 value83 value1 value2 = (output326, value84, value1) := by
  rw [input326_def, output326_def]
  kernel_rfl

theorem node327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input327 value84 value1 value2 = (output327, value85, value1) := by
  rw [input327_def, output327_def]
  kernel_rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value85 value1 value2 = (output328, value86, value1) := by
  rw [input328_def, output328_def]
  kernel_rfl

theorem node329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input329 value86 value1 value2 = (output329, value86, value1) := by
  rw [input329_def, output329_def]
  kernel_rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value86 value1 value2 = (output330, value86, value1) := by
  rw [input330_def, output330_def]
  kernel_rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value86 value1 value2 = (output331, value87, value1) := by
  rw [input331_def, output331_def]
  kernel_rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value87 value1 value2 = (output332, value88, value1) := by
  rw [input332_def, output332_def]
  kernel_rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value88 value1 value2 = (output333, value89, value1) := by
  rw [input333_def, output333_def]
  kernel_rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value89 value1 value2 = (output334, value90, value1) := by
  rw [input334_def, output334_def]
  kernel_rfl

theorem node335_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value88 value1 value2 = (output333, value89, value1))
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value89 value1 value2 = (output334, value90, value1)) : Flapjack.WordAlloc.removeDeadStructural input335 value88 value1 value2 = (output335, value90, value1) := by
  rw [input335_def, output335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output334_skip]
  kernel_rfl

theorem node336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input336 value90 value1 value2 = (output336, value91, value1) := by
  rw [input336_def, output336_def]
  kernel_rfl

theorem node337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input337 value91 value1 value2 = (output337, value92, value1) := by
  rw [input337_def, output337_def]
  kernel_rfl

theorem node338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input338 value92 value1 value2 = (output338, value93, value1) := by
  rw [input338_def, output338_def]
  kernel_rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value93 value1 value2 = (output339, value94, value1) := by
  rw [input339_def, output339_def]
  kernel_rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value94 value1 value2 = (output340, value95, value1) := by
  rw [input340_def, output340_def]
  kernel_rfl

theorem node341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input341 value95 value1 value2 = (output341, value96, value1) := by
  rw [input341_def, output341_def]
  kernel_rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value96 value1 value2 = (output342, value96, value1) := by
  rw [input342_def, output342_def]
  kernel_rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value96 value1 value2 = (output343, value97, value1) := by
  rw [input343_def, output343_def]
  kernel_rfl

theorem node344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input344 value97 value1 value2 = (output344, value98, value1) := by
  rw [input344_def, output344_def]
  kernel_rfl

theorem node345_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value96 value1 value2 = (output343, value97, value1))
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value97 value1 value2 = (output344, value98, value1)) : Flapjack.WordAlloc.removeDeadStructural input345 value96 value1 value2 = (output345, value98, value1) := by
  rw [input345_def, output345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output344_skip]
  kernel_rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value98 value1 value2 = (output346, value99, value1) := by
  rw [input346_def, output346_def]
  kernel_rfl

theorem node347_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value96 value1 value2 = (output345, value98, value1))
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value98 value1 value2 = (output346, value99, value1)) : Flapjack.WordAlloc.removeDeadStructural input347 value96 value1 value2 = (output347, value99, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output346_skip]
  kernel_rfl

theorem node348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input348 value99 value1 value2 = (output348, value100, value1) := by
  rw [input348_def, output348_def]
  kernel_rfl

theorem node349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input349 value100 value1 value2 = (output349, value101, value1) := by
  rw [input349_def, output349_def]
  kernel_rfl

theorem node350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input350 value101 value1 value2 = (output350, value102, value1) := by
  rw [input350_def, output350_def]
  kernel_rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value102 value1 value2 = (output351, value103, value1) := by
  rw [input351_def, output351_def]
  kernel_rfl

theorem node352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input352 value103 value1 value2 = (output352, value103, value1) := by
  rw [input352_def, output352_def]
  kernel_rfl

theorem node353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input353 value103 value1 value2 = (output353, value104, value1) := by
  rw [input353_def, output353_def]
  kernel_rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value104 value1 value2 = (output354, value105, value1) := by
  rw [input354_def, output354_def]
  kernel_rfl

theorem node355_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value103 value1 value2 = (output353, value104, value1))
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value104 value1 value2 = (output354, value105, value1)) : Flapjack.WordAlloc.removeDeadStructural input355 value103 value1 value2 = (output355, value105, value1) := by
  rw [input355_def, output355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output354_skip]
  kernel_rfl

theorem node356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input356 value105 value1 value2 = (output356, value106, value1) := by
  rw [input356_def, output356_def]
  kernel_rfl

theorem node357_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value103 value1 value2 = (output355, value105, value1))
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value105 value1 value2 = (output356, value106, value1)) : Flapjack.WordAlloc.removeDeadStructural input357 value103 value1 value2 = (output357, value106, value1) := by
  rw [input357_def, output357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output356_skip]
  kernel_rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value106 value1 value2 = (output358, value107, value1) := by
  rw [input358_def, output358_def]
  kernel_rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value107 value1 value2 = (output359, value108, value1) := by
  rw [input359_def, output359_def]
  kernel_rfl

theorem node360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input360 value108 value1 value2 = (output360, value109, value1) := by
  rw [input360_def, output360_def]
  kernel_rfl

theorem node361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input361 value109 value1 value2 = (output361, value110, value1) := by
  rw [input361_def, output361_def]
  kernel_rfl

theorem node362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input362 value110 value1 value2 = (output362, value110, value1) := by
  rw [input362_def, output362_def]
  kernel_rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value110 value1 value2 = (output363, value111, value1) := by
  rw [input363_def, output363_def]
  kernel_rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value111 value1 value2 = (output364, value112, value1) := by
  rw [input364_def, output364_def]
  kernel_rfl

theorem node365_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value110 value1 value2 = (output363, value111, value1))
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value111 value1 value2 = (output364, value112, value1)) : Flapjack.WordAlloc.removeDeadStructural input365 value110 value1 value2 = (output365, value112, value1) := by
  rw [input365_def, output365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output364_skip]
  kernel_rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value112 value1 value2 = (output366, value113, value1) := by
  rw [input366_def, output366_def]
  kernel_rfl

theorem node367_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value110 value1 value2 = (output365, value112, value1))
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value112 value1 value2 = (output366, value113, value1)) : Flapjack.WordAlloc.removeDeadStructural input367 value110 value1 value2 = (output367, value113, value1) := by
  rw [input367_def, output367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output366_skip]
  kernel_rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value113 value1 value2 = (output368, value114, value1) := by
  rw [input368_def, output368_def]
  kernel_rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value114 value1 value2 = (output369, value115, value1) := by
  rw [input369_def, output369_def]
  kernel_rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value115 value1 value2 = (output370, value116, value1) := by
  rw [input370_def, output370_def]
  kernel_rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value116 value1 value2 = (output371, value117, value1) := by
  rw [input371_def, output371_def]
  kernel_rfl

theorem node372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input372 value117 value1 value2 = (output372, value117, value1) := by
  rw [input372_def, output372_def]
  kernel_rfl

theorem node373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input373 value117 value1 value2 = (output373, value118, value1) := by
  rw [input373_def, output373_def]
  kernel_rfl

theorem node374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input374 value118 value1 value2 = (output374, value119, value1) := by
  rw [input374_def, output374_def]
  kernel_rfl

theorem node375_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value117 value1 value2 = (output373, value118, value1))
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value118 value1 value2 = (output374, value119, value1)) : Flapjack.WordAlloc.removeDeadStructural input375 value117 value1 value2 = (output375, value119, value1) := by
  rw [input375_def, output375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output374_skip]
  kernel_rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value119 value1 value2 = (output376, value120, value1) := by
  rw [input376_def, output376_def]
  kernel_rfl

theorem node377_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value117 value1 value2 = (output375, value119, value1))
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value119 value1 value2 = (output376, value120, value1)) : Flapjack.WordAlloc.removeDeadStructural input377 value117 value1 value2 = (output377, value120, value1) := by
  rw [input377_def, output377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output376_skip]
  kernel_rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value120 value1 value2 = (output378, value121, value1) := by
  rw [input378_def, output378_def]
  kernel_rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value121 value1 value2 = (output379, value122, value1) := by
  rw [input379_def, output379_def]
  kernel_rfl

theorem node380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input380 value122 value1 value2 = (output380, value123, value1) := by
  rw [input380_def, output380_def]
  kernel_rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value123 value1 value2 = (output381, value124, value1) := by
  rw [input381_def, output381_def]
  kernel_rfl

theorem node382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input382 value124 value1 value2 = (output382, value124, value1) := by
  rw [input382_def, output382_def]
  kernel_rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value124 value1 value2 = (output383, value124, value1) := by
  rw [input383_def, output383_def]
  kernel_rfl

theorem node384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input384 value124 value1 value2 = (output384, value124, value1) := by
  rw [input384_def, output384_def]
  kernel_rfl

theorem node385_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value124 value1 value2 = (output383, value124, value1))
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value124 value1 value2 = (output384, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input385 value124 value1 value2 = (output385, value124, value1) := by
  rw [input385_def, output385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output384_skip]
  kernel_rfl

theorem node386_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value124 value1 value2 = (output382, value124, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value124 value1 value2 = (output385, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value124 value1 value2 = (output386, value124, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output385_skip]
  kernel_rfl

theorem node387_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value123 value1 value2 = (output381, value124, value1))
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value124 value1 value2 = (output386, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input387 value123 value1 value2 = (output387, value124, value1) := by
  rw [input387_def, output387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output386_skip]
  kernel_rfl

theorem node388_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value122 value1 value2 = (output380, value123, value1))
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value123 value1 value2 = (output387, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input388 value122 value1 value2 = (output388, value124, value1) := by
  rw [input388_def, output388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output387_skip]
  kernel_rfl

theorem node389_cond_eq
    (child379 : Flapjack.WordAlloc.removeDeadStructural input379 value121 value1 value2 = (output379, value122, value1))
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value122 value1 value2 = (output388, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input389 value121 value1 value2 = (output389, value124, value1) := by
  rw [input389_def, output389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child379]
  try dsimp only
  rw [child388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output379_skip, output388_skip]
  kernel_rfl

theorem node390_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value120 value1 value2 = (output378, value121, value1))
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value121 value1 value2 = (output389, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input390 value120 value1 value2 = (output390, value124, value1) := by
  rw [input390_def, output390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output389_skip]
  kernel_rfl

theorem node391_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value117 value1 value2 = (output377, value120, value1))
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value120 value1 value2 = (output390, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input391 value117 value1 value2 = (output391, value124, value1) := by
  rw [input391_def, output391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output390_skip]
  kernel_rfl

theorem node392_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value117 value1 value2 = (output372, value117, value1))
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value117 value1 value2 = (output391, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input392 value117 value1 value2 = (output392, value124, value1) := by
  rw [input392_def, output392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output391_skip]
  kernel_rfl

theorem node393_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value116 value1 value2 = (output371, value117, value1))
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value117 value1 value2 = (output392, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input393 value116 value1 value2 = (output393, value124, value1) := by
  rw [input393_def, output393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output392_skip]
  kernel_rfl

theorem node394_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value115 value1 value2 = (output370, value116, value1))
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value116 value1 value2 = (output393, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input394 value115 value1 value2 = (output394, value124, value1) := by
  rw [input394_def, output394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output393_skip]
  kernel_rfl

theorem node395_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value114 value1 value2 = (output369, value115, value1))
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value115 value1 value2 = (output394, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input395 value114 value1 value2 = (output395, value124, value1) := by
  rw [input395_def, output395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output394_skip]
  kernel_rfl

theorem node396_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value113 value1 value2 = (output368, value114, value1))
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value114 value1 value2 = (output395, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input396 value113 value1 value2 = (output396, value124, value1) := by
  rw [input396_def, output396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output395_skip]
  kernel_rfl

theorem node397_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value110 value1 value2 = (output367, value113, value1))
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value113 value1 value2 = (output396, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input397 value110 value1 value2 = (output397, value124, value1) := by
  rw [input397_def, output397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output396_skip]
  kernel_rfl

theorem node398_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value110 value1 value2 = (output362, value110, value1))
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value110 value1 value2 = (output397, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input398 value110 value1 value2 = (output398, value124, value1) := by
  rw [input398_def, output398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output397_skip]
  kernel_rfl

theorem node399_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value109 value1 value2 = (output361, value110, value1))
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value110 value1 value2 = (output398, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input399 value109 value1 value2 = (output399, value124, value1) := by
  rw [input399_def, output399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output398_skip]
  kernel_rfl

theorem node400_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value108 value1 value2 = (output360, value109, value1))
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value109 value1 value2 = (output399, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input400 value108 value1 value2 = (output400, value124, value1) := by
  rw [input400_def, output400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output399_skip]
  kernel_rfl

theorem node401_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value107 value1 value2 = (output359, value108, value1))
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value108 value1 value2 = (output400, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input401 value107 value1 value2 = (output401, value124, value1) := by
  rw [input401_def, output401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output400_skip]
  kernel_rfl

theorem node402_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value106 value1 value2 = (output358, value107, value1))
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value107 value1 value2 = (output401, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input402 value106 value1 value2 = (output402, value124, value1) := by
  rw [input402_def, output402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output401_skip]
  kernel_rfl

theorem node403_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value103 value1 value2 = (output357, value106, value1))
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value106 value1 value2 = (output402, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input403 value103 value1 value2 = (output403, value124, value1) := by
  rw [input403_def, output403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output402_skip]
  kernel_rfl

theorem node404_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value103 value1 value2 = (output352, value103, value1))
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value103 value1 value2 = (output403, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input404 value103 value1 value2 = (output404, value124, value1) := by
  rw [input404_def, output404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output403_skip]
  kernel_rfl

theorem node405_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value102 value1 value2 = (output351, value103, value1))
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value103 value1 value2 = (output404, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input405 value102 value1 value2 = (output405, value124, value1) := by
  rw [input405_def, output405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  try dsimp only
  rw [child404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output351_skip, output404_skip]
  kernel_rfl

theorem node406_cond_eq
    (child350 : Flapjack.WordAlloc.removeDeadStructural input350 value101 value1 value2 = (output350, value102, value1))
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value102 value1 value2 = (output405, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input406 value101 value1 value2 = (output406, value124, value1) := by
  rw [input406_def, output406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child350]
  try dsimp only
  rw [child405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output350_skip, output405_skip]
  kernel_rfl

theorem node407_cond_eq
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value100 value1 value2 = (output349, value101, value1))
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value101 value1 value2 = (output406, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input407 value100 value1 value2 = (output407, value124, value1) := by
  rw [input407_def, output407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child349]
  try dsimp only
  rw [child406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output349_skip, output406_skip]
  kernel_rfl

theorem node408_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value99 value1 value2 = (output348, value100, value1))
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value100 value1 value2 = (output407, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input408 value99 value1 value2 = (output408, value124, value1) := by
  rw [input408_def, output408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output407_skip]
  kernel_rfl

theorem node409_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value96 value1 value2 = (output347, value99, value1))
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value99 value1 value2 = (output408, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input409 value96 value1 value2 = (output409, value124, value1) := by
  rw [input409_def, output409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output408_skip]
  kernel_rfl

theorem node410_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value96 value1 value2 = (output342, value96, value1))
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value96 value1 value2 = (output409, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input410 value96 value1 value2 = (output410, value124, value1) := by
  rw [input410_def, output410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output409_skip]
  kernel_rfl

theorem node411_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value95 value1 value2 = (output341, value96, value1))
    (child410 : Flapjack.WordAlloc.removeDeadStructural input410 value96 value1 value2 = (output410, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input411 value95 value1 value2 = (output411, value124, value1) := by
  rw [input411_def, output411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output410_skip]
  kernel_rfl

theorem node412_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value94 value1 value2 = (output340, value95, value1))
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value95 value1 value2 = (output411, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input412 value94 value1 value2 = (output412, value124, value1) := by
  rw [input412_def, output412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output411_skip]
  kernel_rfl

theorem node413_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value93 value1 value2 = (output339, value94, value1))
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value94 value1 value2 = (output412, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input413 value93 value1 value2 = (output413, value124, value1) := by
  rw [input413_def, output413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output412_skip]
  kernel_rfl

theorem node414_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value92 value1 value2 = (output338, value93, value1))
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value93 value1 value2 = (output413, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input414 value92 value1 value2 = (output414, value124, value1) := by
  rw [input414_def, output414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output413_skip]
  kernel_rfl

theorem node415_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value91 value1 value2 = (output337, value92, value1))
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value92 value1 value2 = (output414, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input415 value91 value1 value2 = (output415, value124, value1) := by
  rw [input415_def, output415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output414_skip]
  kernel_rfl

theorem node416_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value90 value1 value2 = (output336, value91, value1))
    (child415 : Flapjack.WordAlloc.removeDeadStructural input415 value91 value1 value2 = (output415, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input416 value90 value1 value2 = (output416, value124, value1) := by
  rw [input416_def, output416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output415_skip]
  kernel_rfl

theorem node417_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value88 value1 value2 = (output335, value90, value1))
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value90 value1 value2 = (output416, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input417 value88 value1 value2 = (output417, value124, value1) := by
  rw [input417_def, output417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output416_skip]
  kernel_rfl

theorem node418_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value87 value1 value2 = (output332, value88, value1))
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value88 value1 value2 = (output417, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input418 value87 value1 value2 = (output418, value124, value1) := by
  rw [input418_def, output418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output417_skip]
  kernel_rfl

theorem node419_cond_eq
    (child331 : Flapjack.WordAlloc.removeDeadStructural input331 value86 value1 value2 = (output331, value87, value1))
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value87 value1 value2 = (output418, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input419 value86 value1 value2 = (output419, value124, value1) := by
  rw [input419_def, output419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child331]
  try dsimp only
  rw [child418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output331_skip, output418_skip]
  kernel_rfl

theorem node420_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value86 value1 value2 = (output330, value86, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value86 value1 value2 = (output419, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value86 value1 value2 = (output420, value124, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output419_skip]
  kernel_rfl

theorem node421_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value86 value1 value2 = (output329, value86, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value86 value1 value2 = (output420, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value86 value1 value2 = (output421, value124, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output420_skip]
  kernel_rfl

theorem node422_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value85 value1 value2 = (output328, value86, value1))
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value86 value1 value2 = (output421, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input422 value85 value1 value2 = (output422, value124, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output421_skip]
  kernel_rfl

theorem node423_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value84 value1 value2 = (output327, value85, value1))
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value85 value1 value2 = (output422, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input423 value84 value1 value2 = (output423, value124, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output422_skip]
  kernel_rfl

theorem node424_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value83 value1 value2 = (output326, value84, value1))
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value84 value1 value2 = (output423, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input424 value83 value1 value2 = (output424, value124, value1) := by
  rw [input424_def, output424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output423_skip]
  kernel_rfl

theorem node425_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value82 value1 value2 = (output325, value83, value1))
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value83 value1 value2 = (output424, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input425 value82 value1 value2 = (output425, value124, value1) := by
  rw [input425_def, output425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output424_skip]
  kernel_rfl

theorem node426_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value81 value1 value2 = (output324, value82, value1))
    (child425 : Flapjack.WordAlloc.removeDeadStructural input425 value82 value1 value2 = (output425, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input426 value81 value1 value2 = (output426, value124, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output425_skip]
  kernel_rfl

theorem node427_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value80 value1 value2 = (output323, value81, value1))
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value81 value1 value2 = (output426, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input427 value80 value1 value2 = (output427, value124, value1) := by
  rw [input427_def, output427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output426_skip]
  kernel_rfl

theorem node428_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value79 value1 value2 = (output322, value80, value1))
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value80 value1 value2 = (output427, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input428 value79 value1 value2 = (output428, value124, value1) := by
  rw [input428_def, output428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output427_skip]
  kernel_rfl

theorem node429_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value78 value1 value2 = (output321, value79, value1))
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value79 value1 value2 = (output428, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input429 value78 value1 value2 = (output429, value124, value1) := by
  rw [input429_def, output429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output428_skip]
  kernel_rfl

theorem node430_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value78 value1 value2 = (output320, value78, value1))
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value78 value1 value2 = (output429, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input430 value78 value1 value2 = (output430, value124, value1) := by
  rw [input430_def, output430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output429_skip]
  kernel_rfl

theorem node431_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value78 value1 value2 = (output319, value78, value1))
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value78 value1 value2 = (output430, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input431 value78 value1 value2 = (output431, value124, value1) := by
  rw [input431_def, output431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output430_skip]
  kernel_rfl

theorem node432_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value77 value1 value2 = (output318, value78, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value78 value1 value2 = (output431, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value77 value1 value2 = (output432, value124, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output431_skip]
  kernel_rfl

theorem node433_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value76 value1 value2 = (output317, value77, value1))
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value77 value1 value2 = (output432, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input433 value76 value1 value2 = (output433, value124, value1) := by
  rw [input433_def, output433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output432_skip]
  kernel_rfl

theorem node434_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value73 value1 value2 = (output316, value76, value1))
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value76 value1 value2 = (output433, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input434 value73 value1 value2 = (output434, value124, value1) := by
  rw [input434_def, output434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output433_skip]
  kernel_rfl

theorem node435_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value73 value1 value2 = (output311, value73, value1))
    (child434 : Flapjack.WordAlloc.removeDeadStructural input434 value73 value1 value2 = (output434, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input435 value73 value1 value2 = (output435, value124, value1) := by
  rw [input435_def, output435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output434_skip]
  kernel_rfl

theorem node436_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value15 value1 value2 = (output310, value73, value1))
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value73 value1 value2 = (output435, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input436 value15 value1 value2 = (output436, value124, value1) := by
  rw [input436_def, output436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output435_skip]
  kernel_rfl

theorem node437_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value15 value1 value2 = (output291, value72, value1))
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value15 value1 value2 = (output436, value124, value1)) : Flapjack.WordAlloc.removeDeadStructural input437 value15 value1 value2 = (output437, value126, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child291]
  try dsimp only
  rw [child436]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output436_skip]
  kernel_rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value126 value1 value2 = (output438, value127, value1) := by
  rw [input438_def, output438_def]
  kernel_rfl

theorem node439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input439 value127 value1 value2 = (output439, value128, value1) := by
  rw [input439_def, output439_def]
  kernel_rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value128 value1 value2 = (output440, value129, value1) := by
  rw [input440_def, output440_def]
  kernel_rfl

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value129 value1 value2 = (output441, value129, value1) := by
  rw [input441_def, output441_def]
  kernel_rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value129 value1 value2 = (output442, value130, value1) := by
  rw [input442_def, output442_def]
  kernel_rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value130 value1 value2 = (output443, value131, value1) := by
  rw [input443_def, output443_def]
  kernel_rfl

theorem node444_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value129 value1 value2 = (output442, value130, value1))
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value130 value1 value2 = (output443, value131, value1)) : Flapjack.WordAlloc.removeDeadStructural input444 value129 value1 value2 = (output444, value131, value1) := by
  rw [input444_def, output444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output443_skip]
  kernel_rfl

theorem node445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input445 value131 value1 value2 = (output445, value132, value1) := by
  rw [input445_def, output445_def]
  kernel_rfl

theorem node446_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value129 value1 value2 = (output444, value131, value1))
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value131 value1 value2 = (output445, value132, value1)) : Flapjack.WordAlloc.removeDeadStructural input446 value129 value1 value2 = (output446, value132, value1) := by
  rw [input446_def, output446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output445_skip]
  kernel_rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value132 value1 value2 = (output447, value133, value1) := by
  rw [input447_def, output447_def]
  kernel_rfl

theorem node448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input448 value133 value1 value2 = (output448, value134, value1) := by
  rw [input448_def, output448_def]
  kernel_rfl

theorem node449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input449 value134 value1 value2 = (output449, value135, value1) := by
  rw [input449_def, output449_def]
  kernel_rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value135 value1 value2 = (output450, value136, value1) := by
  rw [input450_def, output450_def]
  kernel_rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value136 value1 value2 = (output451, value137, value1) := by
  rw [input451_def, output451_def]
  kernel_rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value137 value1 value2 = (output452, value138, value1) := by
  rw [input452_def, output452_def]
  kernel_rfl

theorem node453_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value136 value1 value2 = (output451, value137, value1))
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value137 value1 value2 = (output452, value138, value1)) : Flapjack.WordAlloc.removeDeadStructural input453 value136 value1 value2 = (output453, value138, value1) := by
  rw [input453_def, output453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output452_skip]
  kernel_rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value138 value1 value2 = (output454, value139, value1) := by
  rw [input454_def, output454_def]
  kernel_rfl

theorem node455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input455 value139 value1 value2 = (output455, value140, value1) := by
  rw [input455_def, output455_def]
  kernel_rfl

theorem node456_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value138 value1 value2 = (output454, value139, value1))
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value139 value1 value2 = (output455, value140, value1)) : Flapjack.WordAlloc.removeDeadStructural input456 value138 value1 value2 = (output456, value140, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output455_skip]
  kernel_rfl

theorem node457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input457 value140 value1 value2 = (output457, value141, value1) := by
  rw [input457_def, output457_def]
  kernel_rfl

theorem node458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input458 value141 value1 value2 = (output458, value142, value1) := by
  rw [input458_def, output458_def]
  kernel_rfl

theorem node459_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value140 value1 value2 = (output457, value141, value1))
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value141 value1 value2 = (output458, value142, value1)) : Flapjack.WordAlloc.removeDeadStructural input459 value140 value1 value2 = (output459, value142, value1) := by
  rw [input459_def, output459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output458_skip]
  kernel_rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value142 value1 value2 = (output460, value143, value1) := by
  rw [input460_def, output460_def]
  kernel_rfl

theorem node461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input461 value143 value1 value2 = (output461, value144, value1) := by
  rw [input461_def, output461_def]
  kernel_rfl

theorem node462_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value142 value1 value2 = (output460, value143, value1))
    (child461 : Flapjack.WordAlloc.removeDeadStructural input461 value143 value1 value2 = (output461, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input462 value142 value1 value2 = (output462, value144, value1) := by
  rw [input462_def, output462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output461_skip]
  kernel_rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value144 value1 value2 = (output463, value144, value1) := by
  rw [input463_def, output463_def]
  kernel_rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value144 value1 value2 = (output464, value145, value1) := by
  rw [input464_def, output464_def]
  kernel_rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value145 value1 value2 = (output465, value146, value1) := by
  rw [input465_def, output465_def]
  kernel_rfl

theorem node466_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value144 value1 value2 = (output464, value145, value1))
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value145 value1 value2 = (output465, value146, value1)) : Flapjack.WordAlloc.removeDeadStructural input466 value144 value1 value2 = (output466, value146, value1) := by
  rw [input466_def, output466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  try dsimp only
  rw [child465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output464_skip, output465_skip]
  kernel_rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value146 value1 value2 = (output467, value147, value1) := by
  rw [input467_def, output467_def]
  kernel_rfl

theorem node468_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value144 value1 value2 = (output466, value146, value1))
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value146 value1 value2 = (output467, value147, value1)) : Flapjack.WordAlloc.removeDeadStructural input468 value144 value1 value2 = (output468, value147, value1) := by
  rw [input468_def, output468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output467_skip]
  kernel_rfl

theorem node469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input469 value147 value1 value2 = (output469, value148, value1) := by
  rw [input469_def, output469_def]
  kernel_rfl

theorem node470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input470 value148 value1 value2 = (output470, value149, value1) := by
  rw [input470_def, output470_def]
  kernel_rfl

theorem node471_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value147 value1 value2 = (output469, value148, value1))
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value148 value1 value2 = (output470, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input471 value147 value1 value2 = (output471, value149, value1) := by
  rw [input471_def, output471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output470_skip]
  kernel_rfl

theorem node472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input472 value149 value1 value2 = (output472, value150, value1) := by
  rw [input472_def, output472_def]
  kernel_rfl

theorem node473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input473 value150 value1 value2 = (output473, value151, value1) := by
  rw [input473_def, output473_def]
  kernel_rfl

theorem node474_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value149 value1 value2 = (output472, value150, value1))
    (child473 : Flapjack.WordAlloc.removeDeadStructural input473 value150 value1 value2 = (output473, value151, value1)) : Flapjack.WordAlloc.removeDeadStructural input474 value149 value1 value2 = (output474, value151, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output473_skip]
  kernel_rfl

theorem node475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input475 value151 value1 value2 = (output475, value152, value1) := by
  rw [input475_def, output475_def]
  kernel_rfl

theorem node476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input476 value152 value1 value2 = (output476, value152, value1) := by
  rw [input476_def, output476_def]
  kernel_rfl

theorem node477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input477 value152 value1 value2 = (output477, value153, value1) := by
  rw [input477_def, output477_def]
  kernel_rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value153 value1 value2 = (output478, value154, value1) := by
  rw [input478_def, output478_def]
  kernel_rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value154 value1 value2 = (output479, value155, value1) := by
  rw [input479_def, output479_def]
  kernel_rfl

theorem node480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input480 value155 value1 value2 = (output480, value156, value1) := by
  rw [input480_def, output480_def]
  kernel_rfl

theorem node481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input481 value156 value1 value2 = (output481, value149, value1) := by
  rw [input481_def, output481_def]
  kernel_rfl

theorem node482_cond_eq
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value155 value1 value2 = (output480, value156, value1))
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value156 value1 value2 = (output481, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input482 value155 value1 value2 = (output482, value149, value1) := by
  rw [input482_def, output482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child480]
  try dsimp only
  rw [child481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output480_skip, output481_skip]
  kernel_rfl

theorem node483_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value154 value1 value2 = (output479, value155, value1))
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value155 value1 value2 = (output482, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input483 value154 value1 value2 = (output483, value149, value1) := by
  rw [input483_def, output483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output482_skip]
  kernel_rfl

theorem node484_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value153 value1 value2 = (output478, value154, value1))
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value154 value1 value2 = (output483, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input484 value153 value1 value2 = (output484, value149, value1) := by
  rw [input484_def, output484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output483_skip]
  kernel_rfl

theorem node485_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value152 value1 value2 = (output477, value153, value1))
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value153 value1 value2 = (output484, value149, value1)) : Flapjack.WordAlloc.removeDeadStructural input485 value152 value1 value2 = (output485, value149, value1) := by
  rw [input485_def, output485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output484_skip]
  kernel_rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value149 value1 value2 = (output486, value157, value1) := by
  rw [input486_def, output486_def]
  kernel_rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value157 value1 value2 = (output487, value158, value1) := by
  rw [input487_def, output487_def]
  kernel_rfl

theorem node488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input488 value158 value1 value2 = (output488, value159, value1) := by
  rw [input488_def, output488_def]
  kernel_rfl

theorem node489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input489 value159 value1 value2 = (output489, value160, value1) := by
  rw [input489_def, output489_def]
  kernel_rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value160 value1 value2 = (output490, value161, value1) := by
  rw [input490_def, output490_def]
  kernel_rfl

theorem node491_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value159 value1 value2 = (output489, value160, value1))
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value160 value1 value2 = (output490, value161, value1)) : Flapjack.WordAlloc.removeDeadStructural input491 value159 value1 value2 = (output491, value161, value1) := by
  rw [input491_def, output491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output490_skip]
  kernel_rfl

theorem node492_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value158 value1 value2 = (output488, value159, value1))
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value159 value1 value2 = (output491, value161, value1)) : Flapjack.WordAlloc.removeDeadStructural input492 value158 value1 value2 = (output492, value161, value1) := by
  rw [input492_def, output492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output491_skip]
  kernel_rfl

theorem node493_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value157 value1 value2 = (output487, value158, value1))
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value158 value1 value2 = (output492, value161, value1)) : Flapjack.WordAlloc.removeDeadStructural input493 value157 value1 value2 = (output493, value161, value1) := by
  rw [input493_def, output493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output492_skip]
  kernel_rfl

theorem node494_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value149 value1 value2 = (output486, value157, value1))
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value157 value1 value2 = (output493, value161, value1)) : Flapjack.WordAlloc.removeDeadStructural input494 value149 value1 value2 = (output494, value161, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output493_skip]
  kernel_rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value161 value1 value2 = (output495, value161, value1) := by
  rw [input495_def, output495_def]
  kernel_rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value161 value1 value2 = (output496, value162, value1) := by
  rw [input496_def, output496_def]
  kernel_rfl

theorem node497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input497 value162 value1 value2 = (output497, value163, value1) := by
  rw [input497_def, output497_def]
  kernel_rfl

theorem node498_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value161 value1 value2 = (output496, value162, value1))
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value162 value1 value2 = (output497, value163, value1)) : Flapjack.WordAlloc.removeDeadStructural input498 value161 value1 value2 = (output498, value163, value1) := by
  rw [input498_def, output498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output497_skip]
  kernel_rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value163 value1 value2 = (output499, value164, value1) := by
  rw [input499_def, output499_def]
  kernel_rfl

theorem node500_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value161 value1 value2 = (output498, value163, value1))
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value163 value1 value2 = (output499, value164, value1)) : Flapjack.WordAlloc.removeDeadStructural input500 value161 value1 value2 = (output500, value164, value1) := by
  rw [input500_def, output500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output499_skip]
  kernel_rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value164 value1 value2 = (output501, value165, value1) := by
  rw [input501_def, output501_def]
  kernel_rfl

theorem node502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input502 value165 value1 value2 = (output502, value166, value1) := by
  rw [input502_def, output502_def]
  kernel_rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value166 value1 value2 = (output503, value167, value1) := by
  rw [input503_def, output503_def]
  kernel_rfl

theorem node504_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value165 value1 value2 = (output502, value166, value1))
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value166 value1 value2 = (output503, value167, value1)) : Flapjack.WordAlloc.removeDeadStructural input504 value165 value1 value2 = (output504, value167, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output503_skip]
  kernel_rfl

theorem node505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input505 value167 value1 value2 = (output505, value168, value1) := by
  rw [input505_def, output505_def]
  kernel_rfl

theorem node506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input506 value168 value1 value2 = (output506, value169, value1) := by
  rw [input506_def, output506_def]
  kernel_rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value169 value1 value2 = (output507, value170, value1) := by
  rw [input507_def, output507_def]
  kernel_rfl

theorem node508_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value168 value1 value2 = (output506, value169, value1))
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value169 value1 value2 = (output507, value170, value1)) : Flapjack.WordAlloc.removeDeadStructural input508 value168 value1 value2 = (output508, value170, value1) := by
  rw [input508_def, output508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output507_skip]
  kernel_rfl

theorem node509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input509 value170 value1 value2 = (output509, value171, value1) := by
  rw [input509_def, output509_def]
  kernel_rfl

theorem node510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input510 value171 value1 value2 = (output510, value172, value1) := by
  rw [input510_def, output510_def]
  kernel_rfl

theorem node511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input511 value172 value1 value2 = (output511, value173, value1) := by
  rw [input511_def, output511_def]
  kernel_rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages623.Parallel
