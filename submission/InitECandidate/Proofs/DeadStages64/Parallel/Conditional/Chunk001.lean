import InitECandidate.Proofs.DeadStages64.Parallel.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages64.Parallel
theorem node256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input256 value131 value1 value2 = (output256, value132, value1) := by
  rw [input256_def, output256_def]
  try (conv => lhs; cbv)
  try rfl

theorem node257_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value4 value1 value2 = (output255, value131, value1))
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value131 value1 value2 = (output256, value132, value1)) : Flapjack.WordAlloc.removeDeadStructural input257 value4 value1 value2 = (output257, value132, value1) := by
  rw [input257_def, output257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  dsimp only
  rw [child256]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input258 value132 value1 value2 = (output258, value133, value1) := by
  rw [input258_def, output258_def]
  try (conv => lhs; cbv)
  try rfl

theorem node259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input259 value133 value1 value2 = (output259, value133, value1) := by
  rw [input259_def, output259_def]
  try (conv => lhs; cbv)
  try rfl

theorem node260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input260 value133 value1 value2 = (output260, value134, value1) := by
  rw [input260_def, output260_def]
  try (conv => lhs; cbv)
  try rfl

theorem node261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input261 value134 value1 value2 = (output261, value135, value1) := by
  rw [input261_def, output261_def]
  try (conv => lhs; cbv)
  try rfl

theorem node262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input262 value135 value1 value2 = (output262, value136, value1) := by
  rw [input262_def, output262_def]
  try (conv => lhs; cbv)
  try rfl

theorem node263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input263 value136 value1 value2 = (output263, value4, value1) := by
  rw [input263_def, output263_def]
  try (conv => lhs; cbv)
  try rfl

theorem node264_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value135 value1 value2 = (output262, value136, value1))
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value136 value1 value2 = (output263, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input264 value135 value1 value2 = (output264, value4, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  dsimp only
  rw [child263]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node265_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value134 value1 value2 = (output261, value135, value1))
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value135 value1 value2 = (output264, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input265 value134 value1 value2 = (output265, value4, value1) := by
  rw [input265_def, output265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  dsimp only
  rw [child264]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node266_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value133 value1 value2 = (output260, value134, value1))
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value134 value1 value2 = (output265, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input266 value133 value1 value2 = (output266, value4, value1) := by
  rw [input266_def, output266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  dsimp only
  rw [child265]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input267 value4 value1 value2 = (output267, value137, value1) := by
  rw [input267_def, output267_def]
  try (conv => lhs; cbv)
  try rfl

theorem node268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input268 value137 value1 value2 = (output268, value138, value1) := by
  rw [input268_def, output268_def]
  try (conv => lhs; cbv)
  try rfl

theorem node269_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value4 value1 value2 = (output267, value137, value1))
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value137 value1 value2 = (output268, value138, value1)) : Flapjack.WordAlloc.removeDeadStructural input269 value4 value1 value2 = (output269, value138, value1) := by
  rw [input269_def, output269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  dsimp only
  rw [child268]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input270 value138 value1 value2 = (output270, value139, value1) := by
  rw [input270_def, output270_def]
  try (conv => lhs; cbv)
  try rfl

theorem node271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input271 value139 value1 value2 = (output271, value139, value1) := by
  rw [input271_def, output271_def]
  try (conv => lhs; cbv)
  try rfl

theorem node272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input272 value139 value1 value2 = (output272, value140, value1) := by
  rw [input272_def, output272_def]
  try (conv => lhs; cbv)
  try rfl

theorem node273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input273 value140 value1 value2 = (output273, value141, value1) := by
  rw [input273_def, output273_def]
  try (conv => lhs; cbv)
  try rfl

theorem node274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input274 value141 value1 value2 = (output274, value142, value1) := by
  rw [input274_def, output274_def]
  try (conv => lhs; cbv)
  try rfl

theorem node275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input275 value142 value1 value2 = (output275, value4, value1) := by
  rw [input275_def, output275_def]
  try (conv => lhs; cbv)
  try rfl

theorem node276_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value141 value1 value2 = (output274, value142, value1))
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value142 value1 value2 = (output275, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input276 value141 value1 value2 = (output276, value4, value1) := by
  rw [input276_def, output276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  dsimp only
  rw [child275]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node277_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value140 value1 value2 = (output273, value141, value1))
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value141 value1 value2 = (output276, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input277 value140 value1 value2 = (output277, value4, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  dsimp only
  rw [child276]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node278_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value139 value1 value2 = (output272, value140, value1))
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value140 value1 value2 = (output277, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input278 value139 value1 value2 = (output278, value4, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  dsimp only
  rw [child277]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input279 value4 value1 value2 = (output279, value143, value1) := by
  rw [input279_def, output279_def]
  try (conv => lhs; cbv)
  try rfl

theorem node280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input280 value143 value1 value2 = (output280, value144, value1) := by
  rw [input280_def, output280_def]
  try (conv => lhs; cbv)
  try rfl

theorem node281_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value4 value1 value2 = (output279, value143, value1))
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value143 value1 value2 = (output280, value144, value1)) : Flapjack.WordAlloc.removeDeadStructural input281 value4 value1 value2 = (output281, value144, value1) := by
  rw [input281_def, output281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  dsimp only
  rw [child280]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input282 value144 value1 value2 = (output282, value145, value1) := by
  rw [input282_def, output282_def]
  try (conv => lhs; cbv)
  try rfl

theorem node283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input283 value145 value1 value2 = (output283, value145, value1) := by
  rw [input283_def, output283_def]
  try (conv => lhs; cbv)
  try rfl

theorem node284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input284 value145 value1 value2 = (output284, value146, value1) := by
  rw [input284_def, output284_def]
  try (conv => lhs; cbv)
  try rfl

theorem node285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input285 value146 value1 value2 = (output285, value147, value1) := by
  rw [input285_def, output285_def]
  try (conv => lhs; cbv)
  try rfl

theorem node286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input286 value147 value1 value2 = (output286, value148, value1) := by
  rw [input286_def, output286_def]
  try (conv => lhs; cbv)
  try rfl

theorem node287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input287 value148 value1 value2 = (output287, value4, value1) := by
  rw [input287_def, output287_def]
  try (conv => lhs; cbv)
  try rfl

theorem node288_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value147 value1 value2 = (output286, value148, value1))
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value148 value1 value2 = (output287, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input288 value147 value1 value2 = (output288, value4, value1) := by
  rw [input288_def, output288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  dsimp only
  rw [child287]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node289_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value146 value1 value2 = (output285, value147, value1))
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value147 value1 value2 = (output288, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input289 value146 value1 value2 = (output289, value4, value1) := by
  rw [input289_def, output289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  dsimp only
  rw [child288]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node290_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value145 value1 value2 = (output284, value146, value1))
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value146 value1 value2 = (output289, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input290 value145 value1 value2 = (output290, value4, value1) := by
  rw [input290_def, output290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  dsimp only
  rw [child289]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input291 value4 value1 value2 = (output291, value149, value1) := by
  rw [input291_def, output291_def]
  try (conv => lhs; cbv)
  try rfl

theorem node292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input292 value149 value1 value2 = (output292, value150, value1) := by
  rw [input292_def, output292_def]
  try (conv => lhs; cbv)
  try rfl

theorem node293_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value4 value1 value2 = (output291, value149, value1))
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value149 value1 value2 = (output292, value150, value1)) : Flapjack.WordAlloc.removeDeadStructural input293 value4 value1 value2 = (output293, value150, value1) := by
  rw [input293_def, output293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  dsimp only
  rw [child292]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input294 value150 value1 value2 = (output294, value151, value1) := by
  rw [input294_def, output294_def]
  try (conv => lhs; cbv)
  try rfl

theorem node295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input295 value151 value1 value2 = (output295, value151, value1) := by
  rw [input295_def, output295_def]
  try (conv => lhs; cbv)
  try rfl

theorem node296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input296 value151 value1 value2 = (output296, value152, value1) := by
  rw [input296_def, output296_def]
  try (conv => lhs; cbv)
  try rfl

theorem node297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input297 value152 value1 value2 = (output297, value153, value1) := by
  rw [input297_def, output297_def]
  try (conv => lhs; cbv)
  try rfl

theorem node298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input298 value153 value1 value2 = (output298, value154, value1) := by
  rw [input298_def, output298_def]
  try (conv => lhs; cbv)
  try rfl

theorem node299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input299 value154 value1 value2 = (output299, value4, value1) := by
  rw [input299_def, output299_def]
  try (conv => lhs; cbv)
  try rfl

theorem node300_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value153 value1 value2 = (output298, value154, value1))
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value154 value1 value2 = (output299, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input300 value153 value1 value2 = (output300, value4, value1) := by
  rw [input300_def, output300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  dsimp only
  rw [child299]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node301_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value152 value1 value2 = (output297, value153, value1))
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value153 value1 value2 = (output300, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input301 value152 value1 value2 = (output301, value4, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  dsimp only
  rw [child300]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node302_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value151 value1 value2 = (output296, value152, value1))
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value152 value1 value2 = (output301, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input302 value151 value1 value2 = (output302, value4, value1) := by
  rw [input302_def, output302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  dsimp only
  rw [child301]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input303 value4 value1 value2 = (output303, value155, value1) := by
  rw [input303_def, output303_def]
  try (conv => lhs; cbv)
  try rfl

theorem node304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input304 value155 value1 value2 = (output304, value156, value1) := by
  rw [input304_def, output304_def]
  try (conv => lhs; cbv)
  try rfl

theorem node305_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value4 value1 value2 = (output303, value155, value1))
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value155 value1 value2 = (output304, value156, value1)) : Flapjack.WordAlloc.removeDeadStructural input305 value4 value1 value2 = (output305, value156, value1) := by
  rw [input305_def, output305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  dsimp only
  rw [child304]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input306 value156 value1 value2 = (output306, value157, value1) := by
  rw [input306_def, output306_def]
  try (conv => lhs; cbv)
  try rfl

theorem node307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input307 value157 value1 value2 = (output307, value157, value1) := by
  rw [input307_def, output307_def]
  try (conv => lhs; cbv)
  try rfl

theorem node308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input308 value157 value1 value2 = (output308, value158, value1) := by
  rw [input308_def, output308_def]
  try (conv => lhs; cbv)
  try rfl

theorem node309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input309 value158 value1 value2 = (output309, value159, value1) := by
  rw [input309_def, output309_def]
  try (conv => lhs; cbv)
  try rfl

theorem node310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input310 value159 value1 value2 = (output310, value160, value1) := by
  rw [input310_def, output310_def]
  try (conv => lhs; cbv)
  try rfl

theorem node311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input311 value160 value1 value2 = (output311, value4, value1) := by
  rw [input311_def, output311_def]
  try (conv => lhs; cbv)
  try rfl

theorem node312_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value159 value1 value2 = (output310, value160, value1))
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value160 value1 value2 = (output311, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input312 value159 value1 value2 = (output312, value4, value1) := by
  rw [input312_def, output312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  dsimp only
  rw [child311]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node313_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value158 value1 value2 = (output309, value159, value1))
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value159 value1 value2 = (output312, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input313 value158 value1 value2 = (output313, value4, value1) := by
  rw [input313_def, output313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  dsimp only
  rw [child312]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node314_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value157 value1 value2 = (output308, value158, value1))
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value158 value1 value2 = (output313, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input314 value157 value1 value2 = (output314, value4, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  dsimp only
  rw [child313]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input315 value4 value1 value2 = (output315, value161, value1) := by
  rw [input315_def, output315_def]
  try (conv => lhs; cbv)
  try rfl

theorem node316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input316 value161 value1 value2 = (output316, value162, value1) := by
  rw [input316_def, output316_def]
  try (conv => lhs; cbv)
  try rfl

theorem node317_cond_eq
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value4 value1 value2 = (output315, value161, value1))
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value161 value1 value2 = (output316, value162, value1)) : Flapjack.WordAlloc.removeDeadStructural input317 value4 value1 value2 = (output317, value162, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child315]
  dsimp only
  rw [child316]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input318 value162 value1 value2 = (output318, value163, value1) := by
  rw [input318_def, output318_def]
  try (conv => lhs; cbv)
  try rfl

theorem node319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input319 value163 value1 value2 = (output319, value163, value1) := by
  rw [input319_def, output319_def]
  try (conv => lhs; cbv)
  try rfl

theorem node320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input320 value163 value1 value2 = (output320, value164, value1) := by
  rw [input320_def, output320_def]
  try (conv => lhs; cbv)
  try rfl

theorem node321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input321 value164 value1 value2 = (output321, value165, value1) := by
  rw [input321_def, output321_def]
  try (conv => lhs; cbv)
  try rfl

theorem node322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input322 value165 value1 value2 = (output322, value166, value1) := by
  rw [input322_def, output322_def]
  try (conv => lhs; cbv)
  try rfl

theorem node323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input323 value166 value1 value2 = (output323, value4, value1) := by
  rw [input323_def, output323_def]
  try (conv => lhs; cbv)
  try rfl

theorem node324_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value165 value1 value2 = (output322, value166, value1))
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value166 value1 value2 = (output323, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input324 value165 value1 value2 = (output324, value4, value1) := by
  rw [input324_def, output324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  dsimp only
  rw [child323]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node325_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value164 value1 value2 = (output321, value165, value1))
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value165 value1 value2 = (output324, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input325 value164 value1 value2 = (output325, value4, value1) := by
  rw [input325_def, output325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  dsimp only
  rw [child324]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node326_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value163 value1 value2 = (output320, value164, value1))
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value164 value1 value2 = (output325, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input326 value163 value1 value2 = (output326, value4, value1) := by
  rw [input326_def, output326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  dsimp only
  rw [child325]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input327 value4 value1 value2 = (output327, value167, value1) := by
  rw [input327_def, output327_def]
  try (conv => lhs; cbv)
  try rfl

theorem node328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input328 value167 value1 value2 = (output328, value168, value1) := by
  rw [input328_def, output328_def]
  try (conv => lhs; cbv)
  try rfl

theorem node329_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value4 value1 value2 = (output327, value167, value1))
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value167 value1 value2 = (output328, value168, value1)) : Flapjack.WordAlloc.removeDeadStructural input329 value4 value1 value2 = (output329, value168, value1) := by
  rw [input329_def, output329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  dsimp only
  rw [child328]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input330 value168 value1 value2 = (output330, value169, value1) := by
  rw [input330_def, output330_def]
  try (conv => lhs; cbv)
  try rfl

theorem node331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input331 value169 value1 value2 = (output331, value169, value1) := by
  rw [input331_def, output331_def]
  try (conv => lhs; cbv)
  try rfl

theorem node332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input332 value169 value1 value2 = (output332, value170, value1) := by
  rw [input332_def, output332_def]
  try (conv => lhs; cbv)
  try rfl

theorem node333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input333 value170 value1 value2 = (output333, value171, value1) := by
  rw [input333_def, output333_def]
  try (conv => lhs; cbv)
  try rfl

theorem node334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input334 value171 value1 value2 = (output334, value172, value1) := by
  rw [input334_def, output334_def]
  try (conv => lhs; cbv)
  try rfl

theorem node335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input335 value172 value1 value2 = (output335, value4, value1) := by
  rw [input335_def, output335_def]
  try (conv => lhs; cbv)
  try rfl

theorem node336_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value171 value1 value2 = (output334, value172, value1))
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value172 value1 value2 = (output335, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input336 value171 value1 value2 = (output336, value4, value1) := by
  rw [input336_def, output336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  dsimp only
  rw [child335]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node337_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value170 value1 value2 = (output333, value171, value1))
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value171 value1 value2 = (output336, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input337 value170 value1 value2 = (output337, value4, value1) := by
  rw [input337_def, output337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  dsimp only
  rw [child336]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node338_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value169 value1 value2 = (output332, value170, value1))
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value170 value1 value2 = (output337, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input338 value169 value1 value2 = (output338, value4, value1) := by
  rw [input338_def, output338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  dsimp only
  rw [child337]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input339 value4 value1 value2 = (output339, value173, value1) := by
  rw [input339_def, output339_def]
  try (conv => lhs; cbv)
  try rfl

theorem node340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input340 value173 value1 value2 = (output340, value174, value1) := by
  rw [input340_def, output340_def]
  try (conv => lhs; cbv)
  try rfl

theorem node341_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value4 value1 value2 = (output339, value173, value1))
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value173 value1 value2 = (output340, value174, value1)) : Flapjack.WordAlloc.removeDeadStructural input341 value4 value1 value2 = (output341, value174, value1) := by
  rw [input341_def, output341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  dsimp only
  rw [child340]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input342 value174 value1 value2 = (output342, value175, value1) := by
  rw [input342_def, output342_def]
  try (conv => lhs; cbv)
  try rfl

theorem node343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input343 value175 value1 value2 = (output343, value175, value1) := by
  rw [input343_def, output343_def]
  try (conv => lhs; cbv)
  try rfl

theorem node344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input344 value175 value1 value2 = (output344, value176, value1) := by
  rw [input344_def, output344_def]
  try (conv => lhs; cbv)
  try rfl

theorem node345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input345 value176 value1 value2 = (output345, value177, value1) := by
  rw [input345_def, output345_def]
  try (conv => lhs; cbv)
  try rfl

theorem node346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input346 value177 value1 value2 = (output346, value178, value1) := by
  rw [input346_def, output346_def]
  try (conv => lhs; cbv)
  try rfl

theorem node347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input347 value178 value1 value2 = (output347, value4, value1) := by
  rw [input347_def, output347_def]
  try (conv => lhs; cbv)
  try rfl

theorem node348_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value177 value1 value2 = (output346, value178, value1))
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value178 value1 value2 = (output347, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input348 value177 value1 value2 = (output348, value4, value1) := by
  rw [input348_def, output348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  dsimp only
  rw [child347]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node349_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value176 value1 value2 = (output345, value177, value1))
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value177 value1 value2 = (output348, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input349 value176 value1 value2 = (output349, value4, value1) := by
  rw [input349_def, output349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  dsimp only
  rw [child348]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node350_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value175 value1 value2 = (output344, value176, value1))
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value176 value1 value2 = (output349, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input350 value175 value1 value2 = (output350, value4, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  dsimp only
  rw [child349]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input351 value4 value1 value2 = (output351, value179, value1) := by
  rw [input351_def, output351_def]
  try (conv => lhs; cbv)
  try rfl

theorem node352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input352 value179 value1 value2 = (output352, value180, value1) := by
  rw [input352_def, output352_def]
  try (conv => lhs; cbv)
  try rfl

theorem node353_cond_eq
    (child351 : Flapjack.WordAlloc.removeDeadStructural input351 value4 value1 value2 = (output351, value179, value1))
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value179 value1 value2 = (output352, value180, value1)) : Flapjack.WordAlloc.removeDeadStructural input353 value4 value1 value2 = (output353, value180, value1) := by
  rw [input353_def, output353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child351]
  dsimp only
  rw [child352]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input354 value180 value1 value2 = (output354, value181, value1) := by
  rw [input354_def, output354_def]
  try (conv => lhs; cbv)
  try rfl

theorem node355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input355 value181 value1 value2 = (output355, value181, value1) := by
  rw [input355_def, output355_def]
  try (conv => lhs; cbv)
  try rfl

theorem node356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input356 value181 value1 value2 = (output356, value182, value1) := by
  rw [input356_def, output356_def]
  try (conv => lhs; cbv)
  try rfl

theorem node357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input357 value182 value1 value2 = (output357, value183, value1) := by
  rw [input357_def, output357_def]
  try (conv => lhs; cbv)
  try rfl

theorem node358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input358 value183 value1 value2 = (output358, value184, value1) := by
  rw [input358_def, output358_def]
  try (conv => lhs; cbv)
  try rfl

theorem node359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input359 value184 value1 value2 = (output359, value4, value1) := by
  rw [input359_def, output359_def]
  try (conv => lhs; cbv)
  try rfl

theorem node360_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value183 value1 value2 = (output358, value184, value1))
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value184 value1 value2 = (output359, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input360 value183 value1 value2 = (output360, value4, value1) := by
  rw [input360_def, output360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  dsimp only
  rw [child359]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node361_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value182 value1 value2 = (output357, value183, value1))
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value183 value1 value2 = (output360, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input361 value182 value1 value2 = (output361, value4, value1) := by
  rw [input361_def, output361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  dsimp only
  rw [child360]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node362_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value181 value1 value2 = (output356, value182, value1))
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value182 value1 value2 = (output361, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input362 value181 value1 value2 = (output362, value4, value1) := by
  rw [input362_def, output362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  dsimp only
  rw [child361]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input363 value4 value1 value2 = (output363, value185, value1) := by
  rw [input363_def, output363_def]
  try (conv => lhs; cbv)
  try rfl

theorem node364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input364 value185 value1 value2 = (output364, value186, value1) := by
  rw [input364_def, output364_def]
  try (conv => lhs; cbv)
  try rfl

theorem node365_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value4 value1 value2 = (output363, value185, value1))
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value185 value1 value2 = (output364, value186, value1)) : Flapjack.WordAlloc.removeDeadStructural input365 value4 value1 value2 = (output365, value186, value1) := by
  rw [input365_def, output365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  dsimp only
  rw [child364]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input366 value186 value1 value2 = (output366, value187, value1) := by
  rw [input366_def, output366_def]
  try (conv => lhs; cbv)
  try rfl

theorem node367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input367 value187 value1 value2 = (output367, value187, value1) := by
  rw [input367_def, output367_def]
  try (conv => lhs; cbv)
  try rfl

theorem node368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input368 value187 value1 value2 = (output368, value188, value1) := by
  rw [input368_def, output368_def]
  try (conv => lhs; cbv)
  try rfl

theorem node369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input369 value188 value1 value2 = (output369, value189, value1) := by
  rw [input369_def, output369_def]
  try (conv => lhs; cbv)
  try rfl

theorem node370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input370 value189 value1 value2 = (output370, value190, value1) := by
  rw [input370_def, output370_def]
  try (conv => lhs; cbv)
  try rfl

theorem node371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input371 value190 value1 value2 = (output371, value4, value1) := by
  rw [input371_def, output371_def]
  try (conv => lhs; cbv)
  try rfl

theorem node372_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value189 value1 value2 = (output370, value190, value1))
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value190 value1 value2 = (output371, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input372 value189 value1 value2 = (output372, value4, value1) := by
  rw [input372_def, output372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  dsimp only
  rw [child371]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node373_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value188 value1 value2 = (output369, value189, value1))
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value189 value1 value2 = (output372, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input373 value188 value1 value2 = (output373, value4, value1) := by
  rw [input373_def, output373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  dsimp only
  rw [child372]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node374_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value187 value1 value2 = (output368, value188, value1))
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value188 value1 value2 = (output373, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input374 value187 value1 value2 = (output374, value4, value1) := by
  rw [input374_def, output374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  dsimp only
  rw [child373]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input375 value4 value1 value2 = (output375, value191, value1) := by
  rw [input375_def, output375_def]
  try (conv => lhs; cbv)
  try rfl

theorem node376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input376 value191 value1 value2 = (output376, value192, value1) := by
  rw [input376_def, output376_def]
  try (conv => lhs; cbv)
  try rfl

theorem node377_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value4 value1 value2 = (output375, value191, value1))
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value191 value1 value2 = (output376, value192, value1)) : Flapjack.WordAlloc.removeDeadStructural input377 value4 value1 value2 = (output377, value192, value1) := by
  rw [input377_def, output377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  dsimp only
  rw [child376]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input378 value192 value1 value2 = (output378, value193, value1) := by
  rw [input378_def, output378_def]
  try (conv => lhs; cbv)
  try rfl

theorem node379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input379 value193 value1 value2 = (output379, value193, value1) := by
  rw [input379_def, output379_def]
  try (conv => lhs; cbv)
  try rfl

theorem node380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input380 value193 value1 value2 = (output380, value194, value1) := by
  rw [input380_def, output380_def]
  try (conv => lhs; cbv)
  try rfl

theorem node381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input381 value194 value1 value2 = (output381, value195, value1) := by
  rw [input381_def, output381_def]
  try (conv => lhs; cbv)
  try rfl

theorem node382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input382 value195 value1 value2 = (output382, value196, value1) := by
  rw [input382_def, output382_def]
  try (conv => lhs; cbv)
  try rfl

theorem node383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input383 value196 value1 value2 = (output383, value4, value1) := by
  rw [input383_def, output383_def]
  try (conv => lhs; cbv)
  try rfl

theorem node384_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value195 value1 value2 = (output382, value196, value1))
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value196 value1 value2 = (output383, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input384 value195 value1 value2 = (output384, value4, value1) := by
  rw [input384_def, output384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  dsimp only
  rw [child383]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node385_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value194 value1 value2 = (output381, value195, value1))
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value195 value1 value2 = (output384, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input385 value194 value1 value2 = (output385, value4, value1) := by
  rw [input385_def, output385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  dsimp only
  rw [child384]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node386_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value193 value1 value2 = (output380, value194, value1))
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value194 value1 value2 = (output385, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input386 value193 value1 value2 = (output386, value4, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  dsimp only
  rw [child385]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input387 value4 value1 value2 = (output387, value197, value1) := by
  rw [input387_def, output387_def]
  try (conv => lhs; cbv)
  try rfl

theorem node388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input388 value197 value1 value2 = (output388, value198, value1) := by
  rw [input388_def, output388_def]
  try (conv => lhs; cbv)
  try rfl

theorem node389_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value4 value1 value2 = (output387, value197, value1))
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value197 value1 value2 = (output388, value198, value1)) : Flapjack.WordAlloc.removeDeadStructural input389 value4 value1 value2 = (output389, value198, value1) := by
  rw [input389_def, output389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  dsimp only
  rw [child388]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input390 value198 value1 value2 = (output390, value199, value1) := by
  rw [input390_def, output390_def]
  try (conv => lhs; cbv)
  try rfl

theorem node391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input391 value199 value1 value2 = (output391, value199, value1) := by
  rw [input391_def, output391_def]
  try (conv => lhs; cbv)
  try rfl

theorem node392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input392 value199 value1 value2 = (output392, value200, value1) := by
  rw [input392_def, output392_def]
  try (conv => lhs; cbv)
  try rfl

theorem node393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input393 value200 value1 value2 = (output393, value201, value1) := by
  rw [input393_def, output393_def]
  try (conv => lhs; cbv)
  try rfl

theorem node394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input394 value201 value1 value2 = (output394, value202, value1) := by
  rw [input394_def, output394_def]
  try (conv => lhs; cbv)
  try rfl

theorem node395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input395 value202 value1 value2 = (output395, value4, value1) := by
  rw [input395_def, output395_def]
  try (conv => lhs; cbv)
  try rfl

theorem node396_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value201 value1 value2 = (output394, value202, value1))
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value202 value1 value2 = (output395, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input396 value201 value1 value2 = (output396, value4, value1) := by
  rw [input396_def, output396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  dsimp only
  rw [child395]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node397_cond_eq
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value200 value1 value2 = (output393, value201, value1))
    (child396 : Flapjack.WordAlloc.removeDeadStructural input396 value201 value1 value2 = (output396, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input397 value200 value1 value2 = (output397, value4, value1) := by
  rw [input397_def, output397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child393]
  dsimp only
  rw [child396]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node398_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value199 value1 value2 = (output392, value200, value1))
    (child397 : Flapjack.WordAlloc.removeDeadStructural input397 value200 value1 value2 = (output397, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input398 value199 value1 value2 = (output398, value4, value1) := by
  rw [input398_def, output398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  dsimp only
  rw [child397]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input399 value4 value1 value2 = (output399, value203, value1) := by
  rw [input399_def, output399_def]
  try (conv => lhs; cbv)
  try rfl

theorem node400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input400 value203 value1 value2 = (output400, value204, value1) := by
  rw [input400_def, output400_def]
  try (conv => lhs; cbv)
  try rfl

theorem node401_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value4 value1 value2 = (output399, value203, value1))
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value203 value1 value2 = (output400, value204, value1)) : Flapjack.WordAlloc.removeDeadStructural input401 value4 value1 value2 = (output401, value204, value1) := by
  rw [input401_def, output401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  dsimp only
  rw [child400]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input402 value204 value1 value2 = (output402, value205, value1) := by
  rw [input402_def, output402_def]
  try (conv => lhs; cbv)
  try rfl

theorem node403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input403 value205 value1 value2 = (output403, value205, value1) := by
  rw [input403_def, output403_def]
  try (conv => lhs; cbv)
  try rfl

theorem node404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input404 value205 value1 value2 = (output404, value206, value1) := by
  rw [input404_def, output404_def]
  try (conv => lhs; cbv)
  try rfl

theorem node405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input405 value206 value1 value2 = (output405, value207, value1) := by
  rw [input405_def, output405_def]
  try (conv => lhs; cbv)
  try rfl

theorem node406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input406 value207 value1 value2 = (output406, value208, value1) := by
  rw [input406_def, output406_def]
  try (conv => lhs; cbv)
  try rfl

theorem node407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input407 value208 value1 value2 = (output407, value4, value1) := by
  rw [input407_def, output407_def]
  try (conv => lhs; cbv)
  try rfl

theorem node408_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value207 value1 value2 = (output406, value208, value1))
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value208 value1 value2 = (output407, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input408 value207 value1 value2 = (output408, value4, value1) := by
  rw [input408_def, output408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  dsimp only
  rw [child407]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node409_cond_eq
    (child405 : Flapjack.WordAlloc.removeDeadStructural input405 value206 value1 value2 = (output405, value207, value1))
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value207 value1 value2 = (output408, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input409 value206 value1 value2 = (output409, value4, value1) := by
  rw [input409_def, output409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child405]
  dsimp only
  rw [child408]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node410_cond_eq
    (child404 : Flapjack.WordAlloc.removeDeadStructural input404 value205 value1 value2 = (output404, value206, value1))
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value206 value1 value2 = (output409, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input410 value205 value1 value2 = (output410, value4, value1) := by
  rw [input410_def, output410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child404]
  dsimp only
  rw [child409]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input411 value4 value1 value2 = (output411, value209, value1) := by
  rw [input411_def, output411_def]
  try (conv => lhs; cbv)
  try rfl

theorem node412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input412 value209 value1 value2 = (output412, value210, value1) := by
  rw [input412_def, output412_def]
  try (conv => lhs; cbv)
  try rfl

theorem node413_cond_eq
    (child411 : Flapjack.WordAlloc.removeDeadStructural input411 value4 value1 value2 = (output411, value209, value1))
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value209 value1 value2 = (output412, value210, value1)) : Flapjack.WordAlloc.removeDeadStructural input413 value4 value1 value2 = (output413, value210, value1) := by
  rw [input413_def, output413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child411]
  dsimp only
  rw [child412]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input414 value210 value1 value2 = (output414, value211, value1) := by
  rw [input414_def, output414_def]
  try (conv => lhs; cbv)
  try rfl

theorem node415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input415 value211 value1 value2 = (output415, value211, value1) := by
  rw [input415_def, output415_def]
  try (conv => lhs; cbv)
  try rfl

theorem node416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input416 value211 value1 value2 = (output416, value212, value1) := by
  rw [input416_def, output416_def]
  try (conv => lhs; cbv)
  try rfl

theorem node417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input417 value212 value1 value2 = (output417, value213, value1) := by
  rw [input417_def, output417_def]
  try (conv => lhs; cbv)
  try rfl

theorem node418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input418 value213 value1 value2 = (output418, value214, value1) := by
  rw [input418_def, output418_def]
  try (conv => lhs; cbv)
  try rfl

theorem node419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input419 value214 value1 value2 = (output419, value4, value1) := by
  rw [input419_def, output419_def]
  try (conv => lhs; cbv)
  try rfl

theorem node420_cond_eq
    (child418 : Flapjack.WordAlloc.removeDeadStructural input418 value213 value1 value2 = (output418, value214, value1))
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value214 value1 value2 = (output419, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input420 value213 value1 value2 = (output420, value4, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child418]
  dsimp only
  rw [child419]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node421_cond_eq
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value212 value1 value2 = (output417, value213, value1))
    (child420 : Flapjack.WordAlloc.removeDeadStructural input420 value213 value1 value2 = (output420, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input421 value212 value1 value2 = (output421, value4, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child417]
  dsimp only
  rw [child420]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node422_cond_eq
    (child416 : Flapjack.WordAlloc.removeDeadStructural input416 value211 value1 value2 = (output416, value212, value1))
    (child421 : Flapjack.WordAlloc.removeDeadStructural input421 value212 value1 value2 = (output421, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input422 value211 value1 value2 = (output422, value4, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child416]
  dsimp only
  rw [child421]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input423 value4 value1 value2 = (output423, value215, value1) := by
  rw [input423_def, output423_def]
  try (conv => lhs; cbv)
  try rfl

theorem node424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input424 value215 value1 value2 = (output424, value216, value1) := by
  rw [input424_def, output424_def]
  try (conv => lhs; cbv)
  try rfl

theorem node425_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value4 value1 value2 = (output423, value215, value1))
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value215 value1 value2 = (output424, value216, value1)) : Flapjack.WordAlloc.removeDeadStructural input425 value4 value1 value2 = (output425, value216, value1) := by
  rw [input425_def, output425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  dsimp only
  rw [child424]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input426 value216 value1 value2 = (output426, value217, value1) := by
  rw [input426_def, output426_def]
  try (conv => lhs; cbv)
  try rfl

theorem node427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input427 value217 value1 value2 = (output427, value217, value1) := by
  rw [input427_def, output427_def]
  try (conv => lhs; cbv)
  try rfl

theorem node428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input428 value217 value1 value2 = (output428, value218, value1) := by
  rw [input428_def, output428_def]
  try (conv => lhs; cbv)
  try rfl

theorem node429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input429 value218 value1 value2 = (output429, value219, value1) := by
  rw [input429_def, output429_def]
  try (conv => lhs; cbv)
  try rfl

theorem node430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input430 value219 value1 value2 = (output430, value220, value1) := by
  rw [input430_def, output430_def]
  try (conv => lhs; cbv)
  try rfl

theorem node431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input431 value220 value1 value2 = (output431, value4, value1) := by
  rw [input431_def, output431_def]
  try (conv => lhs; cbv)
  try rfl

theorem node432_cond_eq
    (child430 : Flapjack.WordAlloc.removeDeadStructural input430 value219 value1 value2 = (output430, value220, value1))
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value220 value1 value2 = (output431, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input432 value219 value1 value2 = (output432, value4, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child430]
  dsimp only
  rw [child431]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node433_cond_eq
    (child429 : Flapjack.WordAlloc.removeDeadStructural input429 value218 value1 value2 = (output429, value219, value1))
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value219 value1 value2 = (output432, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input433 value218 value1 value2 = (output433, value4, value1) := by
  rw [input433_def, output433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child429]
  dsimp only
  rw [child432]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node434_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value217 value1 value2 = (output428, value218, value1))
    (child433 : Flapjack.WordAlloc.removeDeadStructural input433 value218 value1 value2 = (output433, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input434 value217 value1 value2 = (output434, value4, value1) := by
  rw [input434_def, output434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  dsimp only
  rw [child433]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input435 value4 value1 value2 = (output435, value221, value1) := by
  rw [input435_def, output435_def]
  try (conv => lhs; cbv)
  try rfl

theorem node436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input436 value221 value1 value2 = (output436, value222, value1) := by
  rw [input436_def, output436_def]
  try (conv => lhs; cbv)
  try rfl

theorem node437_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value4 value1 value2 = (output435, value221, value1))
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value221 value1 value2 = (output436, value222, value1)) : Flapjack.WordAlloc.removeDeadStructural input437 value4 value1 value2 = (output437, value222, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  dsimp only
  rw [child436]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input438 value222 value1 value2 = (output438, value223, value1) := by
  rw [input438_def, output438_def]
  try (conv => lhs; cbv)
  try rfl

theorem node439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input439 value223 value1 value2 = (output439, value223, value1) := by
  rw [input439_def, output439_def]
  try (conv => lhs; cbv)
  try rfl

theorem node440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input440 value223 value1 value2 = (output440, value224, value1) := by
  rw [input440_def, output440_def]
  try (conv => lhs; cbv)
  try rfl

theorem node441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input441 value224 value1 value2 = (output441, value225, value1) := by
  rw [input441_def, output441_def]
  try (conv => lhs; cbv)
  try rfl

theorem node442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input442 value225 value1 value2 = (output442, value226, value1) := by
  rw [input442_def, output442_def]
  try (conv => lhs; cbv)
  try rfl

theorem node443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input443 value226 value1 value2 = (output443, value4, value1) := by
  rw [input443_def, output443_def]
  try (conv => lhs; cbv)
  try rfl

theorem node444_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value225 value1 value2 = (output442, value226, value1))
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value226 value1 value2 = (output443, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input444 value225 value1 value2 = (output444, value4, value1) := by
  rw [input444_def, output444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  dsimp only
  rw [child443]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node445_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value224 value1 value2 = (output441, value225, value1))
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value225 value1 value2 = (output444, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input445 value224 value1 value2 = (output445, value4, value1) := by
  rw [input445_def, output445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  dsimp only
  rw [child444]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node446_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value223 value1 value2 = (output440, value224, value1))
    (child445 : Flapjack.WordAlloc.removeDeadStructural input445 value224 value1 value2 = (output445, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input446 value223 value1 value2 = (output446, value4, value1) := by
  rw [input446_def, output446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  dsimp only
  rw [child445]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input447 value4 value1 value2 = (output447, value227, value1) := by
  rw [input447_def, output447_def]
  try (conv => lhs; cbv)
  try rfl

theorem node448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input448 value227 value1 value2 = (output448, value228, value1) := by
  rw [input448_def, output448_def]
  try (conv => lhs; cbv)
  try rfl

theorem node449_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value4 value1 value2 = (output447, value227, value1))
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value227 value1 value2 = (output448, value228, value1)) : Flapjack.WordAlloc.removeDeadStructural input449 value4 value1 value2 = (output449, value228, value1) := by
  rw [input449_def, output449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  dsimp only
  rw [child448]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input450 value228 value1 value2 = (output450, value229, value1) := by
  rw [input450_def, output450_def]
  try (conv => lhs; cbv)
  try rfl

theorem node451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input451 value229 value1 value2 = (output451, value229, value1) := by
  rw [input451_def, output451_def]
  try (conv => lhs; cbv)
  try rfl

theorem node452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input452 value229 value1 value2 = (output452, value230, value1) := by
  rw [input452_def, output452_def]
  try (conv => lhs; cbv)
  try rfl

theorem node453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input453 value230 value1 value2 = (output453, value231, value1) := by
  rw [input453_def, output453_def]
  try (conv => lhs; cbv)
  try rfl

theorem node454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input454 value231 value1 value2 = (output454, value232, value1) := by
  rw [input454_def, output454_def]
  try (conv => lhs; cbv)
  try rfl

theorem node455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input455 value232 value1 value2 = (output455, value4, value1) := by
  rw [input455_def, output455_def]
  try (conv => lhs; cbv)
  try rfl

theorem node456_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value231 value1 value2 = (output454, value232, value1))
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value232 value1 value2 = (output455, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input456 value231 value1 value2 = (output456, value4, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  dsimp only
  rw [child455]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node457_cond_eq
    (child453 : Flapjack.WordAlloc.removeDeadStructural input453 value230 value1 value2 = (output453, value231, value1))
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value231 value1 value2 = (output456, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input457 value230 value1 value2 = (output457, value4, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child453]
  dsimp only
  rw [child456]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node458_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value229 value1 value2 = (output452, value230, value1))
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value230 value1 value2 = (output457, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input458 value229 value1 value2 = (output458, value4, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  dsimp only
  rw [child457]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input459 value4 value1 value2 = (output459, value233, value1) := by
  rw [input459_def, output459_def]
  try (conv => lhs; cbv)
  try rfl

theorem node460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input460 value233 value1 value2 = (output460, value234, value1) := by
  rw [input460_def, output460_def]
  try (conv => lhs; cbv)
  try rfl

theorem node461_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value4 value1 value2 = (output459, value233, value1))
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value233 value1 value2 = (output460, value234, value1)) : Flapjack.WordAlloc.removeDeadStructural input461 value4 value1 value2 = (output461, value234, value1) := by
  rw [input461_def, output461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  dsimp only
  rw [child460]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input462 value234 value1 value2 = (output462, value235, value1) := by
  rw [input462_def, output462_def]
  try (conv => lhs; cbv)
  try rfl

theorem node463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input463 value235 value1 value2 = (output463, value235, value1) := by
  rw [input463_def, output463_def]
  try (conv => lhs; cbv)
  try rfl

theorem node464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input464 value235 value1 value2 = (output464, value236, value1) := by
  rw [input464_def, output464_def]
  try (conv => lhs; cbv)
  try rfl

theorem node465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input465 value236 value1 value2 = (output465, value237, value1) := by
  rw [input465_def, output465_def]
  try (conv => lhs; cbv)
  try rfl

theorem node466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input466 value237 value1 value2 = (output466, value238, value1) := by
  rw [input466_def, output466_def]
  try (conv => lhs; cbv)
  try rfl

theorem node467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input467 value238 value1 value2 = (output467, value4, value1) := by
  rw [input467_def, output467_def]
  try (conv => lhs; cbv)
  try rfl

theorem node468_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value237 value1 value2 = (output466, value238, value1))
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value238 value1 value2 = (output467, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input468 value237 value1 value2 = (output468, value4, value1) := by
  rw [input468_def, output468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  dsimp only
  rw [child467]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node469_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value236 value1 value2 = (output465, value237, value1))
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value237 value1 value2 = (output468, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input469 value236 value1 value2 = (output469, value4, value1) := by
  rw [input469_def, output469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  dsimp only
  rw [child468]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node470_cond_eq
    (child464 : Flapjack.WordAlloc.removeDeadStructural input464 value235 value1 value2 = (output464, value236, value1))
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value236 value1 value2 = (output469, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input470 value235 value1 value2 = (output470, value4, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child464]
  dsimp only
  rw [child469]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input471 value4 value1 value2 = (output471, value239, value1) := by
  rw [input471_def, output471_def]
  try (conv => lhs; cbv)
  try rfl

theorem node472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input472 value239 value1 value2 = (output472, value240, value1) := by
  rw [input472_def, output472_def]
  try (conv => lhs; cbv)
  try rfl

theorem node473_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value4 value1 value2 = (output471, value239, value1))
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value239 value1 value2 = (output472, value240, value1)) : Flapjack.WordAlloc.removeDeadStructural input473 value4 value1 value2 = (output473, value240, value1) := by
  rw [input473_def, output473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  dsimp only
  rw [child472]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input474 value240 value1 value2 = (output474, value241, value1) := by
  rw [input474_def, output474_def]
  try (conv => lhs; cbv)
  try rfl

theorem node475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input475 value241 value1 value2 = (output475, value241, value1) := by
  rw [input475_def, output475_def]
  try (conv => lhs; cbv)
  try rfl

theorem node476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input476 value241 value1 value2 = (output476, value242, value1) := by
  rw [input476_def, output476_def]
  try (conv => lhs; cbv)
  try rfl

theorem node477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input477 value242 value1 value2 = (output477, value243, value1) := by
  rw [input477_def, output477_def]
  try (conv => lhs; cbv)
  try rfl

theorem node478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input478 value243 value1 value2 = (output478, value244, value1) := by
  rw [input478_def, output478_def]
  try (conv => lhs; cbv)
  try rfl

theorem node479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input479 value244 value1 value2 = (output479, value4, value1) := by
  rw [input479_def, output479_def]
  try (conv => lhs; cbv)
  try rfl

theorem node480_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value243 value1 value2 = (output478, value244, value1))
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value244 value1 value2 = (output479, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input480 value243 value1 value2 = (output480, value4, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  dsimp only
  rw [child479]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node481_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value242 value1 value2 = (output477, value243, value1))
    (child480 : Flapjack.WordAlloc.removeDeadStructural input480 value243 value1 value2 = (output480, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input481 value242 value1 value2 = (output481, value4, value1) := by
  rw [input481_def, output481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  dsimp only
  rw [child480]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node482_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value241 value1 value2 = (output476, value242, value1))
    (child481 : Flapjack.WordAlloc.removeDeadStructural input481 value242 value1 value2 = (output481, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input482 value241 value1 value2 = (output482, value4, value1) := by
  rw [input482_def, output482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  dsimp only
  rw [child481]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input483 value4 value1 value2 = (output483, value245, value1) := by
  rw [input483_def, output483_def]
  try (conv => lhs; cbv)
  try rfl

theorem node484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input484 value245 value1 value2 = (output484, value246, value1) := by
  rw [input484_def, output484_def]
  try (conv => lhs; cbv)
  try rfl

theorem node485_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value4 value1 value2 = (output483, value245, value1))
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value245 value1 value2 = (output484, value246, value1)) : Flapjack.WordAlloc.removeDeadStructural input485 value4 value1 value2 = (output485, value246, value1) := by
  rw [input485_def, output485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  dsimp only
  rw [child484]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input486 value246 value1 value2 = (output486, value247, value1) := by
  rw [input486_def, output486_def]
  try (conv => lhs; cbv)
  try rfl

theorem node487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input487 value247 value1 value2 = (output487, value247, value1) := by
  rw [input487_def, output487_def]
  try (conv => lhs; cbv)
  try rfl

theorem node488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input488 value247 value1 value2 = (output488, value248, value1) := by
  rw [input488_def, output488_def]
  try (conv => lhs; cbv)
  try rfl

theorem node489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input489 value248 value1 value2 = (output489, value249, value1) := by
  rw [input489_def, output489_def]
  try (conv => lhs; cbv)
  try rfl

theorem node490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input490 value249 value1 value2 = (output490, value250, value1) := by
  rw [input490_def, output490_def]
  try (conv => lhs; cbv)
  try rfl

theorem node491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input491 value250 value1 value2 = (output491, value4, value1) := by
  rw [input491_def, output491_def]
  try (conv => lhs; cbv)
  try rfl

theorem node492_cond_eq
    (child490 : Flapjack.WordAlloc.removeDeadStructural input490 value249 value1 value2 = (output490, value250, value1))
    (child491 : Flapjack.WordAlloc.removeDeadStructural input491 value250 value1 value2 = (output491, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input492 value249 value1 value2 = (output492, value4, value1) := by
  rw [input492_def, output492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child490]
  dsimp only
  rw [child491]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node493_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value248 value1 value2 = (output489, value249, value1))
    (child492 : Flapjack.WordAlloc.removeDeadStructural input492 value249 value1 value2 = (output492, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input493 value248 value1 value2 = (output493, value4, value1) := by
  rw [input493_def, output493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  dsimp only
  rw [child492]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node494_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value247 value1 value2 = (output488, value248, value1))
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value248 value1 value2 = (output493, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input494 value247 value1 value2 = (output494, value4, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  dsimp only
  rw [child493]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input495 value4 value1 value2 = (output495, value251, value1) := by
  rw [input495_def, output495_def]
  try (conv => lhs; cbv)
  try rfl

theorem node496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input496 value251 value1 value2 = (output496, value252, value1) := by
  rw [input496_def, output496_def]
  try (conv => lhs; cbv)
  try rfl

theorem node497_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value4 value1 value2 = (output495, value251, value1))
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value251 value1 value2 = (output496, value252, value1)) : Flapjack.WordAlloc.removeDeadStructural input497 value4 value1 value2 = (output497, value252, value1) := by
  rw [input497_def, output497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  dsimp only
  rw [child496]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input498 value252 value1 value2 = (output498, value253, value1) := by
  rw [input498_def, output498_def]
  try (conv => lhs; cbv)
  try rfl

theorem node499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input499 value253 value1 value2 = (output499, value253, value1) := by
  rw [input499_def, output499_def]
  try (conv => lhs; cbv)
  try rfl

theorem node500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input500 value253 value1 value2 = (output500, value254, value1) := by
  rw [input500_def, output500_def]
  try (conv => lhs; cbv)
  try rfl

theorem node501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input501 value254 value1 value2 = (output501, value255, value1) := by
  rw [input501_def, output501_def]
  try (conv => lhs; cbv)
  try rfl

theorem node502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input502 value255 value1 value2 = (output502, value256, value1) := by
  rw [input502_def, output502_def]
  try (conv => lhs; cbv)
  try rfl

theorem node503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input503 value256 value1 value2 = (output503, value4, value1) := by
  rw [input503_def, output503_def]
  try (conv => lhs; cbv)
  try rfl

theorem node504_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value255 value1 value2 = (output502, value256, value1))
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value256 value1 value2 = (output503, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input504 value255 value1 value2 = (output504, value4, value1) := by
  rw [input504_def, output504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  dsimp only
  rw [child503]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node505_cond_eq
    (child501 : Flapjack.WordAlloc.removeDeadStructural input501 value254 value1 value2 = (output501, value255, value1))
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value255 value1 value2 = (output504, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input505 value254 value1 value2 = (output505, value4, value1) := by
  rw [input505_def, output505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child501]
  dsimp only
  rw [child504]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node506_cond_eq
    (child500 : Flapjack.WordAlloc.removeDeadStructural input500 value253 value1 value2 = (output500, value254, value1))
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value254 value1 value2 = (output505, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input506 value253 value1 value2 = (output506, value4, value1) := by
  rw [input506_def, output506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child500]
  dsimp only
  rw [child505]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input507 value4 value1 value2 = (output507, value257, value1) := by
  rw [input507_def, output507_def]
  try (conv => lhs; cbv)
  try rfl

theorem node508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input508 value257 value1 value2 = (output508, value258, value1) := by
  rw [input508_def, output508_def]
  try (conv => lhs; cbv)
  try rfl

theorem node509_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value4 value1 value2 = (output507, value257, value1))
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value257 value1 value2 = (output508, value258, value1)) : Flapjack.WordAlloc.removeDeadStructural input509 value4 value1 value2 = (output509, value258, value1) := by
  rw [input509_def, output509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  dsimp only
  rw [child508]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input510 value258 value1 value2 = (output510, value259, value1) := by
  rw [input510_def, output510_def]
  try (conv => lhs; cbv)
  try rfl

theorem node511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input511 value259 value1 value2 = (output511, value259, value1) := by
  rw [input511_def, output511_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node511_cond_eq
end InitECandidate.Proofs.DeadStages64.Parallel
