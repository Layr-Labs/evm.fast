import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk048
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node12288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12288 value6149 value1 value2 = (output12288, value6150, value1) := by
  rw [input12288_def, output12288_def]
  kernel_rfl

theorem node12289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12289 value6150 value1 value2 = (output12289, value5, value1) := by
  rw [input12289_def, output12289_def]
  kernel_rfl

theorem node12290_cond_eq
    (child12288 : Flapjack.WordAlloc.removeDeadStructural input12288 value6149 value1 value2 = (output12288, value6150, value1))
    (child12289 : Flapjack.WordAlloc.removeDeadStructural input12289 value6150 value1 value2 = (output12289, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12290 value6149 value1 value2 = (output12290, value5, value1) := by
  rw [input12290_def, output12290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12288]
  dsimp only
  rw [child12289]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12288_skip, output12289_skip]
  kernel_rfl

theorem node12291_cond_eq
    (child12287 : Flapjack.WordAlloc.removeDeadStructural input12287 value6148 value1 value2 = (output12287, value6149, value1))
    (child12290 : Flapjack.WordAlloc.removeDeadStructural input12290 value6149 value1 value2 = (output12290, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12291 value6148 value1 value2 = (output12291, value5, value1) := by
  rw [input12291_def, output12291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12287]
  dsimp only
  rw [child12290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12287_skip, output12290_skip]
  kernel_rfl

theorem node12292_cond_eq
    (child12286 : Flapjack.WordAlloc.removeDeadStructural input12286 value6147 value1 value2 = (output12286, value6148, value1))
    (child12291 : Flapjack.WordAlloc.removeDeadStructural input12291 value6148 value1 value2 = (output12291, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12292 value6147 value1 value2 = (output12292, value5, value1) := by
  rw [input12292_def, output12292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12286]
  dsimp only
  rw [child12291]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12286_skip, output12291_skip]
  kernel_rfl

theorem node12293_cond_eq
    (child12285 : Flapjack.WordAlloc.removeDeadStructural input12285 value6146 value1 value2 = (output12285, value6147, value1))
    (child12292 : Flapjack.WordAlloc.removeDeadStructural input12292 value6147 value1 value2 = (output12292, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12293 value6146 value1 value2 = (output12293, value5, value1) := by
  rw [input12293_def, output12293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12285]
  dsimp only
  rw [child12292]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12285_skip, output12292_skip]
  kernel_rfl

theorem node12294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12294 value5 value1 value2 = (output12294, value6151, value1) := by
  rw [input12294_def, output12294_def]
  kernel_rfl

theorem node12295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12295 value6151 value1 value2 = (output12295, value6152, value1) := by
  rw [input12295_def, output12295_def]
  kernel_rfl

theorem node12296_cond_eq
    (child12294 : Flapjack.WordAlloc.removeDeadStructural input12294 value5 value1 value2 = (output12294, value6151, value1))
    (child12295 : Flapjack.WordAlloc.removeDeadStructural input12295 value6151 value1 value2 = (output12295, value6152, value1)) : Flapjack.WordAlloc.removeDeadStructural input12296 value5 value1 value2 = (output12296, value6152, value1) := by
  rw [input12296_def, output12296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12294]
  dsimp only
  rw [child12295]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12294_skip, output12295_skip]
  kernel_rfl

theorem node12297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12297 value6152 value1 value2 = (output12297, value6153, value1) := by
  rw [input12297_def, output12297_def]
  kernel_rfl

theorem node12298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12298 value6153 value1 value2 = (output12298, value6153, value1) := by
  rw [input12298_def, output12298_def]
  kernel_rfl

theorem node12299_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12299 value6153 value1 value2 = (output12299, value6154, value1) := by
  rw [input12299_def, output12299_def]
  kernel_rfl

theorem node12300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12300 value6154 value1 value2 = (output12300, value6155, value1) := by
  rw [input12300_def, output12300_def]
  kernel_rfl

theorem node12301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12301 value6155 value1 value2 = (output12301, value6156, value1) := by
  rw [input12301_def, output12301_def]
  kernel_rfl

theorem node12302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12302 value6156 value1 value2 = (output12302, value6157, value1) := by
  rw [input12302_def, output12302_def]
  kernel_rfl

theorem node12303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12303 value6157 value1 value2 = (output12303, value5, value1) := by
  rw [input12303_def, output12303_def]
  kernel_rfl

theorem node12304_cond_eq
    (child12302 : Flapjack.WordAlloc.removeDeadStructural input12302 value6156 value1 value2 = (output12302, value6157, value1))
    (child12303 : Flapjack.WordAlloc.removeDeadStructural input12303 value6157 value1 value2 = (output12303, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12304 value6156 value1 value2 = (output12304, value5, value1) := by
  rw [input12304_def, output12304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12302]
  dsimp only
  rw [child12303]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12302_skip, output12303_skip]
  kernel_rfl

theorem node12305_cond_eq
    (child12301 : Flapjack.WordAlloc.removeDeadStructural input12301 value6155 value1 value2 = (output12301, value6156, value1))
    (child12304 : Flapjack.WordAlloc.removeDeadStructural input12304 value6156 value1 value2 = (output12304, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12305 value6155 value1 value2 = (output12305, value5, value1) := by
  rw [input12305_def, output12305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12301]
  dsimp only
  rw [child12304]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12301_skip, output12304_skip]
  kernel_rfl

theorem node12306_cond_eq
    (child12300 : Flapjack.WordAlloc.removeDeadStructural input12300 value6154 value1 value2 = (output12300, value6155, value1))
    (child12305 : Flapjack.WordAlloc.removeDeadStructural input12305 value6155 value1 value2 = (output12305, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12306 value6154 value1 value2 = (output12306, value5, value1) := by
  rw [input12306_def, output12306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12300]
  dsimp only
  rw [child12305]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12300_skip, output12305_skip]
  kernel_rfl

theorem node12307_cond_eq
    (child12299 : Flapjack.WordAlloc.removeDeadStructural input12299 value6153 value1 value2 = (output12299, value6154, value1))
    (child12306 : Flapjack.WordAlloc.removeDeadStructural input12306 value6154 value1 value2 = (output12306, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12307 value6153 value1 value2 = (output12307, value5, value1) := by
  rw [input12307_def, output12307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12299]
  dsimp only
  rw [child12306]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12299_skip, output12306_skip]
  kernel_rfl

theorem node12308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12308 value5 value1 value2 = (output12308, value6158, value1) := by
  rw [input12308_def, output12308_def]
  kernel_rfl

theorem node12309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12309 value6158 value1 value2 = (output12309, value6159, value1) := by
  rw [input12309_def, output12309_def]
  kernel_rfl

theorem node12310_cond_eq
    (child12308 : Flapjack.WordAlloc.removeDeadStructural input12308 value5 value1 value2 = (output12308, value6158, value1))
    (child12309 : Flapjack.WordAlloc.removeDeadStructural input12309 value6158 value1 value2 = (output12309, value6159, value1)) : Flapjack.WordAlloc.removeDeadStructural input12310 value5 value1 value2 = (output12310, value6159, value1) := by
  rw [input12310_def, output12310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12308]
  dsimp only
  rw [child12309]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12308_skip, output12309_skip]
  kernel_rfl

theorem node12311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12311 value6159 value1 value2 = (output12311, value6160, value1) := by
  rw [input12311_def, output12311_def]
  kernel_rfl

theorem node12312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12312 value6160 value1 value2 = (output12312, value6160, value1) := by
  rw [input12312_def, output12312_def]
  kernel_rfl

theorem node12313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12313 value6160 value1 value2 = (output12313, value6161, value1) := by
  rw [input12313_def, output12313_def]
  kernel_rfl

theorem node12314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12314 value6161 value1 value2 = (output12314, value6162, value1) := by
  rw [input12314_def, output12314_def]
  kernel_rfl

theorem node12315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12315 value6162 value1 value2 = (output12315, value6163, value1) := by
  rw [input12315_def, output12315_def]
  kernel_rfl

theorem node12316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12316 value6163 value1 value2 = (output12316, value6164, value1) := by
  rw [input12316_def, output12316_def]
  kernel_rfl

theorem node12317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12317 value6164 value1 value2 = (output12317, value5, value1) := by
  rw [input12317_def, output12317_def]
  kernel_rfl

theorem node12318_cond_eq
    (child12316 : Flapjack.WordAlloc.removeDeadStructural input12316 value6163 value1 value2 = (output12316, value6164, value1))
    (child12317 : Flapjack.WordAlloc.removeDeadStructural input12317 value6164 value1 value2 = (output12317, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12318 value6163 value1 value2 = (output12318, value5, value1) := by
  rw [input12318_def, output12318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12316]
  dsimp only
  rw [child12317]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12316_skip, output12317_skip]
  kernel_rfl

theorem node12319_cond_eq
    (child12315 : Flapjack.WordAlloc.removeDeadStructural input12315 value6162 value1 value2 = (output12315, value6163, value1))
    (child12318 : Flapjack.WordAlloc.removeDeadStructural input12318 value6163 value1 value2 = (output12318, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12319 value6162 value1 value2 = (output12319, value5, value1) := by
  rw [input12319_def, output12319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12315]
  dsimp only
  rw [child12318]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12315_skip, output12318_skip]
  kernel_rfl

theorem node12320_cond_eq
    (child12314 : Flapjack.WordAlloc.removeDeadStructural input12314 value6161 value1 value2 = (output12314, value6162, value1))
    (child12319 : Flapjack.WordAlloc.removeDeadStructural input12319 value6162 value1 value2 = (output12319, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12320 value6161 value1 value2 = (output12320, value5, value1) := by
  rw [input12320_def, output12320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12314]
  dsimp only
  rw [child12319]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12314_skip, output12319_skip]
  kernel_rfl

theorem node12321_cond_eq
    (child12313 : Flapjack.WordAlloc.removeDeadStructural input12313 value6160 value1 value2 = (output12313, value6161, value1))
    (child12320 : Flapjack.WordAlloc.removeDeadStructural input12320 value6161 value1 value2 = (output12320, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12321 value6160 value1 value2 = (output12321, value5, value1) := by
  rw [input12321_def, output12321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12313]
  dsimp only
  rw [child12320]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12313_skip, output12320_skip]
  kernel_rfl

theorem node12322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12322 value5 value1 value2 = (output12322, value6165, value1) := by
  rw [input12322_def, output12322_def]
  kernel_rfl

theorem node12323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12323 value6165 value1 value2 = (output12323, value6166, value1) := by
  rw [input12323_def, output12323_def]
  kernel_rfl

theorem node12324_cond_eq
    (child12322 : Flapjack.WordAlloc.removeDeadStructural input12322 value5 value1 value2 = (output12322, value6165, value1))
    (child12323 : Flapjack.WordAlloc.removeDeadStructural input12323 value6165 value1 value2 = (output12323, value6166, value1)) : Flapjack.WordAlloc.removeDeadStructural input12324 value5 value1 value2 = (output12324, value6166, value1) := by
  rw [input12324_def, output12324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12322]
  dsimp only
  rw [child12323]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12322_skip, output12323_skip]
  kernel_rfl

theorem node12325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12325 value6166 value1 value2 = (output12325, value6167, value1) := by
  rw [input12325_def, output12325_def]
  kernel_rfl

theorem node12326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12326 value6167 value1 value2 = (output12326, value6167, value1) := by
  rw [input12326_def, output12326_def]
  kernel_rfl

theorem node12327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12327 value6167 value1 value2 = (output12327, value6168, value1) := by
  rw [input12327_def, output12327_def]
  kernel_rfl

theorem node12328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12328 value6168 value1 value2 = (output12328, value6169, value1) := by
  rw [input12328_def, output12328_def]
  kernel_rfl

theorem node12329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12329 value6169 value1 value2 = (output12329, value6170, value1) := by
  rw [input12329_def, output12329_def]
  kernel_rfl

theorem node12330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12330 value6170 value1 value2 = (output12330, value6171, value1) := by
  rw [input12330_def, output12330_def]
  kernel_rfl

theorem node12331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12331 value6171 value1 value2 = (output12331, value5, value1) := by
  rw [input12331_def, output12331_def]
  kernel_rfl

theorem node12332_cond_eq
    (child12330 : Flapjack.WordAlloc.removeDeadStructural input12330 value6170 value1 value2 = (output12330, value6171, value1))
    (child12331 : Flapjack.WordAlloc.removeDeadStructural input12331 value6171 value1 value2 = (output12331, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12332 value6170 value1 value2 = (output12332, value5, value1) := by
  rw [input12332_def, output12332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12330]
  dsimp only
  rw [child12331]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12330_skip, output12331_skip]
  kernel_rfl

theorem node12333_cond_eq
    (child12329 : Flapjack.WordAlloc.removeDeadStructural input12329 value6169 value1 value2 = (output12329, value6170, value1))
    (child12332 : Flapjack.WordAlloc.removeDeadStructural input12332 value6170 value1 value2 = (output12332, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12333 value6169 value1 value2 = (output12333, value5, value1) := by
  rw [input12333_def, output12333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12329]
  dsimp only
  rw [child12332]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12329_skip, output12332_skip]
  kernel_rfl

theorem node12334_cond_eq
    (child12328 : Flapjack.WordAlloc.removeDeadStructural input12328 value6168 value1 value2 = (output12328, value6169, value1))
    (child12333 : Flapjack.WordAlloc.removeDeadStructural input12333 value6169 value1 value2 = (output12333, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12334 value6168 value1 value2 = (output12334, value5, value1) := by
  rw [input12334_def, output12334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12328]
  dsimp only
  rw [child12333]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12328_skip, output12333_skip]
  kernel_rfl

theorem node12335_cond_eq
    (child12327 : Flapjack.WordAlloc.removeDeadStructural input12327 value6167 value1 value2 = (output12327, value6168, value1))
    (child12334 : Flapjack.WordAlloc.removeDeadStructural input12334 value6168 value1 value2 = (output12334, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12335 value6167 value1 value2 = (output12335, value5, value1) := by
  rw [input12335_def, output12335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12327]
  dsimp only
  rw [child12334]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12327_skip, output12334_skip]
  kernel_rfl

theorem node12336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12336 value5 value1 value2 = (output12336, value6172, value1) := by
  rw [input12336_def, output12336_def]
  kernel_rfl

theorem node12337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12337 value6172 value1 value2 = (output12337, value6173, value1) := by
  rw [input12337_def, output12337_def]
  kernel_rfl

theorem node12338_cond_eq
    (child12336 : Flapjack.WordAlloc.removeDeadStructural input12336 value5 value1 value2 = (output12336, value6172, value1))
    (child12337 : Flapjack.WordAlloc.removeDeadStructural input12337 value6172 value1 value2 = (output12337, value6173, value1)) : Flapjack.WordAlloc.removeDeadStructural input12338 value5 value1 value2 = (output12338, value6173, value1) := by
  rw [input12338_def, output12338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12336]
  dsimp only
  rw [child12337]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12336_skip, output12337_skip]
  kernel_rfl

theorem node12339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12339 value6173 value1 value2 = (output12339, value6174, value1) := by
  rw [input12339_def, output12339_def]
  kernel_rfl

theorem node12340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12340 value6174 value1 value2 = (output12340, value6174, value1) := by
  rw [input12340_def, output12340_def]
  kernel_rfl

theorem node12341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12341 value6174 value1 value2 = (output12341, value6175, value1) := by
  rw [input12341_def, output12341_def]
  kernel_rfl

theorem node12342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12342 value6175 value1 value2 = (output12342, value6176, value1) := by
  rw [input12342_def, output12342_def]
  kernel_rfl

theorem node12343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12343 value6176 value1 value2 = (output12343, value6177, value1) := by
  rw [input12343_def, output12343_def]
  kernel_rfl

theorem node12344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12344 value6177 value1 value2 = (output12344, value6178, value1) := by
  rw [input12344_def, output12344_def]
  kernel_rfl

theorem node12345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12345 value6178 value1 value2 = (output12345, value5, value1) := by
  rw [input12345_def, output12345_def]
  kernel_rfl

theorem node12346_cond_eq
    (child12344 : Flapjack.WordAlloc.removeDeadStructural input12344 value6177 value1 value2 = (output12344, value6178, value1))
    (child12345 : Flapjack.WordAlloc.removeDeadStructural input12345 value6178 value1 value2 = (output12345, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12346 value6177 value1 value2 = (output12346, value5, value1) := by
  rw [input12346_def, output12346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12344]
  dsimp only
  rw [child12345]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12344_skip, output12345_skip]
  kernel_rfl

theorem node12347_cond_eq
    (child12343 : Flapjack.WordAlloc.removeDeadStructural input12343 value6176 value1 value2 = (output12343, value6177, value1))
    (child12346 : Flapjack.WordAlloc.removeDeadStructural input12346 value6177 value1 value2 = (output12346, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12347 value6176 value1 value2 = (output12347, value5, value1) := by
  rw [input12347_def, output12347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12343]
  dsimp only
  rw [child12346]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12343_skip, output12346_skip]
  kernel_rfl

theorem node12348_cond_eq
    (child12342 : Flapjack.WordAlloc.removeDeadStructural input12342 value6175 value1 value2 = (output12342, value6176, value1))
    (child12347 : Flapjack.WordAlloc.removeDeadStructural input12347 value6176 value1 value2 = (output12347, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12348 value6175 value1 value2 = (output12348, value5, value1) := by
  rw [input12348_def, output12348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12342]
  dsimp only
  rw [child12347]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12342_skip, output12347_skip]
  kernel_rfl

theorem node12349_cond_eq
    (child12341 : Flapjack.WordAlloc.removeDeadStructural input12341 value6174 value1 value2 = (output12341, value6175, value1))
    (child12348 : Flapjack.WordAlloc.removeDeadStructural input12348 value6175 value1 value2 = (output12348, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12349 value6174 value1 value2 = (output12349, value5, value1) := by
  rw [input12349_def, output12349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12341]
  dsimp only
  rw [child12348]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12341_skip, output12348_skip]
  kernel_rfl

theorem node12350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12350 value5 value1 value2 = (output12350, value6179, value1) := by
  rw [input12350_def, output12350_def]
  kernel_rfl

theorem node12351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12351 value6179 value1 value2 = (output12351, value6180, value1) := by
  rw [input12351_def, output12351_def]
  kernel_rfl

theorem node12352_cond_eq
    (child12350 : Flapjack.WordAlloc.removeDeadStructural input12350 value5 value1 value2 = (output12350, value6179, value1))
    (child12351 : Flapjack.WordAlloc.removeDeadStructural input12351 value6179 value1 value2 = (output12351, value6180, value1)) : Flapjack.WordAlloc.removeDeadStructural input12352 value5 value1 value2 = (output12352, value6180, value1) := by
  rw [input12352_def, output12352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12350]
  dsimp only
  rw [child12351]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12350_skip, output12351_skip]
  kernel_rfl

theorem node12353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12353 value6180 value1 value2 = (output12353, value6181, value1) := by
  rw [input12353_def, output12353_def]
  kernel_rfl

theorem node12354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12354 value6181 value1 value2 = (output12354, value6181, value1) := by
  rw [input12354_def, output12354_def]
  kernel_rfl

theorem node12355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12355 value6181 value1 value2 = (output12355, value6182, value1) := by
  rw [input12355_def, output12355_def]
  kernel_rfl

theorem node12356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12356 value6182 value1 value2 = (output12356, value6183, value1) := by
  rw [input12356_def, output12356_def]
  kernel_rfl

theorem node12357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12357 value6183 value1 value2 = (output12357, value6184, value1) := by
  rw [input12357_def, output12357_def]
  kernel_rfl

theorem node12358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12358 value6184 value1 value2 = (output12358, value6185, value1) := by
  rw [input12358_def, output12358_def]
  kernel_rfl

theorem node12359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12359 value6185 value1 value2 = (output12359, value5, value1) := by
  rw [input12359_def, output12359_def]
  kernel_rfl

theorem node12360_cond_eq
    (child12358 : Flapjack.WordAlloc.removeDeadStructural input12358 value6184 value1 value2 = (output12358, value6185, value1))
    (child12359 : Flapjack.WordAlloc.removeDeadStructural input12359 value6185 value1 value2 = (output12359, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12360 value6184 value1 value2 = (output12360, value5, value1) := by
  rw [input12360_def, output12360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12358]
  dsimp only
  rw [child12359]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12358_skip, output12359_skip]
  kernel_rfl

theorem node12361_cond_eq
    (child12357 : Flapjack.WordAlloc.removeDeadStructural input12357 value6183 value1 value2 = (output12357, value6184, value1))
    (child12360 : Flapjack.WordAlloc.removeDeadStructural input12360 value6184 value1 value2 = (output12360, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12361 value6183 value1 value2 = (output12361, value5, value1) := by
  rw [input12361_def, output12361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12357]
  dsimp only
  rw [child12360]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12357_skip, output12360_skip]
  kernel_rfl

theorem node12362_cond_eq
    (child12356 : Flapjack.WordAlloc.removeDeadStructural input12356 value6182 value1 value2 = (output12356, value6183, value1))
    (child12361 : Flapjack.WordAlloc.removeDeadStructural input12361 value6183 value1 value2 = (output12361, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12362 value6182 value1 value2 = (output12362, value5, value1) := by
  rw [input12362_def, output12362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12356]
  dsimp only
  rw [child12361]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12356_skip, output12361_skip]
  kernel_rfl

theorem node12363_cond_eq
    (child12355 : Flapjack.WordAlloc.removeDeadStructural input12355 value6181 value1 value2 = (output12355, value6182, value1))
    (child12362 : Flapjack.WordAlloc.removeDeadStructural input12362 value6182 value1 value2 = (output12362, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12363 value6181 value1 value2 = (output12363, value5, value1) := by
  rw [input12363_def, output12363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12355]
  dsimp only
  rw [child12362]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12355_skip, output12362_skip]
  kernel_rfl

theorem node12364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12364 value5 value1 value2 = (output12364, value6186, value1) := by
  rw [input12364_def, output12364_def]
  kernel_rfl

theorem node12365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12365 value6186 value1 value2 = (output12365, value6187, value1) := by
  rw [input12365_def, output12365_def]
  kernel_rfl

theorem node12366_cond_eq
    (child12364 : Flapjack.WordAlloc.removeDeadStructural input12364 value5 value1 value2 = (output12364, value6186, value1))
    (child12365 : Flapjack.WordAlloc.removeDeadStructural input12365 value6186 value1 value2 = (output12365, value6187, value1)) : Flapjack.WordAlloc.removeDeadStructural input12366 value5 value1 value2 = (output12366, value6187, value1) := by
  rw [input12366_def, output12366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12364]
  dsimp only
  rw [child12365]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12364_skip, output12365_skip]
  kernel_rfl

theorem node12367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12367 value6187 value1 value2 = (output12367, value6188, value1) := by
  rw [input12367_def, output12367_def]
  kernel_rfl

theorem node12368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12368 value6188 value1 value2 = (output12368, value6188, value1) := by
  rw [input12368_def, output12368_def]
  kernel_rfl

theorem node12369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12369 value6188 value1 value2 = (output12369, value6189, value1) := by
  rw [input12369_def, output12369_def]
  kernel_rfl

theorem node12370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12370 value6189 value1 value2 = (output12370, value6190, value1) := by
  rw [input12370_def, output12370_def]
  kernel_rfl

theorem node12371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12371 value6190 value1 value2 = (output12371, value6191, value1) := by
  rw [input12371_def, output12371_def]
  kernel_rfl

theorem node12372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12372 value6191 value1 value2 = (output12372, value6192, value1) := by
  rw [input12372_def, output12372_def]
  kernel_rfl

theorem node12373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12373 value6192 value1 value2 = (output12373, value5, value1) := by
  rw [input12373_def, output12373_def]
  kernel_rfl

theorem node12374_cond_eq
    (child12372 : Flapjack.WordAlloc.removeDeadStructural input12372 value6191 value1 value2 = (output12372, value6192, value1))
    (child12373 : Flapjack.WordAlloc.removeDeadStructural input12373 value6192 value1 value2 = (output12373, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12374 value6191 value1 value2 = (output12374, value5, value1) := by
  rw [input12374_def, output12374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12372]
  dsimp only
  rw [child12373]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12372_skip, output12373_skip]
  kernel_rfl

theorem node12375_cond_eq
    (child12371 : Flapjack.WordAlloc.removeDeadStructural input12371 value6190 value1 value2 = (output12371, value6191, value1))
    (child12374 : Flapjack.WordAlloc.removeDeadStructural input12374 value6191 value1 value2 = (output12374, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12375 value6190 value1 value2 = (output12375, value5, value1) := by
  rw [input12375_def, output12375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12371]
  dsimp only
  rw [child12374]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12371_skip, output12374_skip]
  kernel_rfl

theorem node12376_cond_eq
    (child12370 : Flapjack.WordAlloc.removeDeadStructural input12370 value6189 value1 value2 = (output12370, value6190, value1))
    (child12375 : Flapjack.WordAlloc.removeDeadStructural input12375 value6190 value1 value2 = (output12375, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12376 value6189 value1 value2 = (output12376, value5, value1) := by
  rw [input12376_def, output12376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12370]
  dsimp only
  rw [child12375]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12370_skip, output12375_skip]
  kernel_rfl

theorem node12377_cond_eq
    (child12369 : Flapjack.WordAlloc.removeDeadStructural input12369 value6188 value1 value2 = (output12369, value6189, value1))
    (child12376 : Flapjack.WordAlloc.removeDeadStructural input12376 value6189 value1 value2 = (output12376, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12377 value6188 value1 value2 = (output12377, value5, value1) := by
  rw [input12377_def, output12377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12369]
  dsimp only
  rw [child12376]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12369_skip, output12376_skip]
  kernel_rfl

theorem node12378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12378 value5 value1 value2 = (output12378, value6193, value1) := by
  rw [input12378_def, output12378_def]
  kernel_rfl

theorem node12379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12379 value6193 value1 value2 = (output12379, value6194, value1) := by
  rw [input12379_def, output12379_def]
  kernel_rfl

theorem node12380_cond_eq
    (child12378 : Flapjack.WordAlloc.removeDeadStructural input12378 value5 value1 value2 = (output12378, value6193, value1))
    (child12379 : Flapjack.WordAlloc.removeDeadStructural input12379 value6193 value1 value2 = (output12379, value6194, value1)) : Flapjack.WordAlloc.removeDeadStructural input12380 value5 value1 value2 = (output12380, value6194, value1) := by
  rw [input12380_def, output12380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12378]
  dsimp only
  rw [child12379]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12378_skip, output12379_skip]
  kernel_rfl

theorem node12381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12381 value6194 value1 value2 = (output12381, value6195, value1) := by
  rw [input12381_def, output12381_def]
  kernel_rfl

theorem node12382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12382 value6195 value1 value2 = (output12382, value6195, value1) := by
  rw [input12382_def, output12382_def]
  kernel_rfl

theorem node12383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12383 value6195 value1 value2 = (output12383, value6196, value1) := by
  rw [input12383_def, output12383_def]
  kernel_rfl

theorem node12384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12384 value6196 value1 value2 = (output12384, value6197, value1) := by
  rw [input12384_def, output12384_def]
  kernel_rfl

theorem node12385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12385 value6197 value1 value2 = (output12385, value6198, value1) := by
  rw [input12385_def, output12385_def]
  kernel_rfl

theorem node12386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12386 value6198 value1 value2 = (output12386, value6199, value1) := by
  rw [input12386_def, output12386_def]
  kernel_rfl

theorem node12387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12387 value6199 value1 value2 = (output12387, value5, value1) := by
  rw [input12387_def, output12387_def]
  kernel_rfl

theorem node12388_cond_eq
    (child12386 : Flapjack.WordAlloc.removeDeadStructural input12386 value6198 value1 value2 = (output12386, value6199, value1))
    (child12387 : Flapjack.WordAlloc.removeDeadStructural input12387 value6199 value1 value2 = (output12387, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12388 value6198 value1 value2 = (output12388, value5, value1) := by
  rw [input12388_def, output12388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12386]
  dsimp only
  rw [child12387]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12386_skip, output12387_skip]
  kernel_rfl

theorem node12389_cond_eq
    (child12385 : Flapjack.WordAlloc.removeDeadStructural input12385 value6197 value1 value2 = (output12385, value6198, value1))
    (child12388 : Flapjack.WordAlloc.removeDeadStructural input12388 value6198 value1 value2 = (output12388, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12389 value6197 value1 value2 = (output12389, value5, value1) := by
  rw [input12389_def, output12389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12385]
  dsimp only
  rw [child12388]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12385_skip, output12388_skip]
  kernel_rfl

theorem node12390_cond_eq
    (child12384 : Flapjack.WordAlloc.removeDeadStructural input12384 value6196 value1 value2 = (output12384, value6197, value1))
    (child12389 : Flapjack.WordAlloc.removeDeadStructural input12389 value6197 value1 value2 = (output12389, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12390 value6196 value1 value2 = (output12390, value5, value1) := by
  rw [input12390_def, output12390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12384]
  dsimp only
  rw [child12389]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12384_skip, output12389_skip]
  kernel_rfl

theorem node12391_cond_eq
    (child12383 : Flapjack.WordAlloc.removeDeadStructural input12383 value6195 value1 value2 = (output12383, value6196, value1))
    (child12390 : Flapjack.WordAlloc.removeDeadStructural input12390 value6196 value1 value2 = (output12390, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12391 value6195 value1 value2 = (output12391, value5, value1) := by
  rw [input12391_def, output12391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12383]
  dsimp only
  rw [child12390]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12383_skip, output12390_skip]
  kernel_rfl

theorem node12392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12392 value5 value1 value2 = (output12392, value6200, value1) := by
  rw [input12392_def, output12392_def]
  kernel_rfl

theorem node12393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12393 value6200 value1 value2 = (output12393, value6201, value1) := by
  rw [input12393_def, output12393_def]
  kernel_rfl

theorem node12394_cond_eq
    (child12392 : Flapjack.WordAlloc.removeDeadStructural input12392 value5 value1 value2 = (output12392, value6200, value1))
    (child12393 : Flapjack.WordAlloc.removeDeadStructural input12393 value6200 value1 value2 = (output12393, value6201, value1)) : Flapjack.WordAlloc.removeDeadStructural input12394 value5 value1 value2 = (output12394, value6201, value1) := by
  rw [input12394_def, output12394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12392]
  dsimp only
  rw [child12393]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12392_skip, output12393_skip]
  kernel_rfl

theorem node12395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12395 value6201 value1 value2 = (output12395, value6202, value1) := by
  rw [input12395_def, output12395_def]
  kernel_rfl

theorem node12396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12396 value6202 value1 value2 = (output12396, value6202, value1) := by
  rw [input12396_def, output12396_def]
  kernel_rfl

theorem node12397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12397 value6202 value1 value2 = (output12397, value6203, value1) := by
  rw [input12397_def, output12397_def]
  kernel_rfl

theorem node12398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12398 value6203 value1 value2 = (output12398, value6204, value1) := by
  rw [input12398_def, output12398_def]
  kernel_rfl

theorem node12399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12399 value6204 value1 value2 = (output12399, value6205, value1) := by
  rw [input12399_def, output12399_def]
  kernel_rfl

theorem node12400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12400 value6205 value1 value2 = (output12400, value6206, value1) := by
  rw [input12400_def, output12400_def]
  kernel_rfl

theorem node12401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12401 value6206 value1 value2 = (output12401, value5, value1) := by
  rw [input12401_def, output12401_def]
  kernel_rfl

theorem node12402_cond_eq
    (child12400 : Flapjack.WordAlloc.removeDeadStructural input12400 value6205 value1 value2 = (output12400, value6206, value1))
    (child12401 : Flapjack.WordAlloc.removeDeadStructural input12401 value6206 value1 value2 = (output12401, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12402 value6205 value1 value2 = (output12402, value5, value1) := by
  rw [input12402_def, output12402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12400]
  dsimp only
  rw [child12401]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12400_skip, output12401_skip]
  kernel_rfl

theorem node12403_cond_eq
    (child12399 : Flapjack.WordAlloc.removeDeadStructural input12399 value6204 value1 value2 = (output12399, value6205, value1))
    (child12402 : Flapjack.WordAlloc.removeDeadStructural input12402 value6205 value1 value2 = (output12402, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12403 value6204 value1 value2 = (output12403, value5, value1) := by
  rw [input12403_def, output12403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12399]
  dsimp only
  rw [child12402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12399_skip, output12402_skip]
  kernel_rfl

theorem node12404_cond_eq
    (child12398 : Flapjack.WordAlloc.removeDeadStructural input12398 value6203 value1 value2 = (output12398, value6204, value1))
    (child12403 : Flapjack.WordAlloc.removeDeadStructural input12403 value6204 value1 value2 = (output12403, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12404 value6203 value1 value2 = (output12404, value5, value1) := by
  rw [input12404_def, output12404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12398]
  dsimp only
  rw [child12403]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12398_skip, output12403_skip]
  kernel_rfl

theorem node12405_cond_eq
    (child12397 : Flapjack.WordAlloc.removeDeadStructural input12397 value6202 value1 value2 = (output12397, value6203, value1))
    (child12404 : Flapjack.WordAlloc.removeDeadStructural input12404 value6203 value1 value2 = (output12404, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12405 value6202 value1 value2 = (output12405, value5, value1) := by
  rw [input12405_def, output12405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12397]
  dsimp only
  rw [child12404]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12397_skip, output12404_skip]
  kernel_rfl

theorem node12406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12406 value5 value1 value2 = (output12406, value6207, value1) := by
  rw [input12406_def, output12406_def]
  kernel_rfl

theorem node12407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12407 value6207 value1 value2 = (output12407, value6208, value1) := by
  rw [input12407_def, output12407_def]
  kernel_rfl

theorem node12408_cond_eq
    (child12406 : Flapjack.WordAlloc.removeDeadStructural input12406 value5 value1 value2 = (output12406, value6207, value1))
    (child12407 : Flapjack.WordAlloc.removeDeadStructural input12407 value6207 value1 value2 = (output12407, value6208, value1)) : Flapjack.WordAlloc.removeDeadStructural input12408 value5 value1 value2 = (output12408, value6208, value1) := by
  rw [input12408_def, output12408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12406]
  dsimp only
  rw [child12407]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12406_skip, output12407_skip]
  kernel_rfl

theorem node12409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12409 value6208 value1 value2 = (output12409, value6209, value1) := by
  rw [input12409_def, output12409_def]
  kernel_rfl

theorem node12410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12410 value6209 value1 value2 = (output12410, value6209, value1) := by
  rw [input12410_def, output12410_def]
  kernel_rfl

theorem node12411_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12411 value6209 value1 value2 = (output12411, value6210, value1) := by
  rw [input12411_def, output12411_def]
  kernel_rfl

theorem node12412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12412 value6210 value1 value2 = (output12412, value6211, value1) := by
  rw [input12412_def, output12412_def]
  kernel_rfl

theorem node12413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12413 value6211 value1 value2 = (output12413, value6212, value1) := by
  rw [input12413_def, output12413_def]
  kernel_rfl

theorem node12414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12414 value6212 value1 value2 = (output12414, value6213, value1) := by
  rw [input12414_def, output12414_def]
  kernel_rfl

theorem node12415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12415 value6213 value1 value2 = (output12415, value5, value1) := by
  rw [input12415_def, output12415_def]
  kernel_rfl

theorem node12416_cond_eq
    (child12414 : Flapjack.WordAlloc.removeDeadStructural input12414 value6212 value1 value2 = (output12414, value6213, value1))
    (child12415 : Flapjack.WordAlloc.removeDeadStructural input12415 value6213 value1 value2 = (output12415, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12416 value6212 value1 value2 = (output12416, value5, value1) := by
  rw [input12416_def, output12416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12414]
  dsimp only
  rw [child12415]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12414_skip, output12415_skip]
  kernel_rfl

theorem node12417_cond_eq
    (child12413 : Flapjack.WordAlloc.removeDeadStructural input12413 value6211 value1 value2 = (output12413, value6212, value1))
    (child12416 : Flapjack.WordAlloc.removeDeadStructural input12416 value6212 value1 value2 = (output12416, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12417 value6211 value1 value2 = (output12417, value5, value1) := by
  rw [input12417_def, output12417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12413]
  dsimp only
  rw [child12416]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12413_skip, output12416_skip]
  kernel_rfl

theorem node12418_cond_eq
    (child12412 : Flapjack.WordAlloc.removeDeadStructural input12412 value6210 value1 value2 = (output12412, value6211, value1))
    (child12417 : Flapjack.WordAlloc.removeDeadStructural input12417 value6211 value1 value2 = (output12417, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12418 value6210 value1 value2 = (output12418, value5, value1) := by
  rw [input12418_def, output12418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12412]
  dsimp only
  rw [child12417]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12412_skip, output12417_skip]
  kernel_rfl

theorem node12419_cond_eq
    (child12411 : Flapjack.WordAlloc.removeDeadStructural input12411 value6209 value1 value2 = (output12411, value6210, value1))
    (child12418 : Flapjack.WordAlloc.removeDeadStructural input12418 value6210 value1 value2 = (output12418, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12419 value6209 value1 value2 = (output12419, value5, value1) := by
  rw [input12419_def, output12419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12411]
  dsimp only
  rw [child12418]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12411_skip, output12418_skip]
  kernel_rfl

theorem node12420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12420 value5 value1 value2 = (output12420, value6214, value1) := by
  rw [input12420_def, output12420_def]
  kernel_rfl

theorem node12421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12421 value6214 value1 value2 = (output12421, value6215, value1) := by
  rw [input12421_def, output12421_def]
  kernel_rfl

theorem node12422_cond_eq
    (child12420 : Flapjack.WordAlloc.removeDeadStructural input12420 value5 value1 value2 = (output12420, value6214, value1))
    (child12421 : Flapjack.WordAlloc.removeDeadStructural input12421 value6214 value1 value2 = (output12421, value6215, value1)) : Flapjack.WordAlloc.removeDeadStructural input12422 value5 value1 value2 = (output12422, value6215, value1) := by
  rw [input12422_def, output12422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12420]
  dsimp only
  rw [child12421]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12420_skip, output12421_skip]
  kernel_rfl

theorem node12423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12423 value6215 value1 value2 = (output12423, value6216, value1) := by
  rw [input12423_def, output12423_def]
  kernel_rfl

theorem node12424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12424 value6216 value1 value2 = (output12424, value6216, value1) := by
  rw [input12424_def, output12424_def]
  kernel_rfl

theorem node12425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12425 value6216 value1 value2 = (output12425, value6217, value1) := by
  rw [input12425_def, output12425_def]
  kernel_rfl

theorem node12426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12426 value6217 value1 value2 = (output12426, value6218, value1) := by
  rw [input12426_def, output12426_def]
  kernel_rfl

theorem node12427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12427 value6218 value1 value2 = (output12427, value6219, value1) := by
  rw [input12427_def, output12427_def]
  kernel_rfl

theorem node12428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12428 value6219 value1 value2 = (output12428, value6220, value1) := by
  rw [input12428_def, output12428_def]
  kernel_rfl

theorem node12429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12429 value6220 value1 value2 = (output12429, value5, value1) := by
  rw [input12429_def, output12429_def]
  kernel_rfl

theorem node12430_cond_eq
    (child12428 : Flapjack.WordAlloc.removeDeadStructural input12428 value6219 value1 value2 = (output12428, value6220, value1))
    (child12429 : Flapjack.WordAlloc.removeDeadStructural input12429 value6220 value1 value2 = (output12429, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12430 value6219 value1 value2 = (output12430, value5, value1) := by
  rw [input12430_def, output12430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12428]
  dsimp only
  rw [child12429]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12428_skip, output12429_skip]
  kernel_rfl

theorem node12431_cond_eq
    (child12427 : Flapjack.WordAlloc.removeDeadStructural input12427 value6218 value1 value2 = (output12427, value6219, value1))
    (child12430 : Flapjack.WordAlloc.removeDeadStructural input12430 value6219 value1 value2 = (output12430, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12431 value6218 value1 value2 = (output12431, value5, value1) := by
  rw [input12431_def, output12431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12427]
  dsimp only
  rw [child12430]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12427_skip, output12430_skip]
  kernel_rfl

theorem node12432_cond_eq
    (child12426 : Flapjack.WordAlloc.removeDeadStructural input12426 value6217 value1 value2 = (output12426, value6218, value1))
    (child12431 : Flapjack.WordAlloc.removeDeadStructural input12431 value6218 value1 value2 = (output12431, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12432 value6217 value1 value2 = (output12432, value5, value1) := by
  rw [input12432_def, output12432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12426]
  dsimp only
  rw [child12431]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12426_skip, output12431_skip]
  kernel_rfl

theorem node12433_cond_eq
    (child12425 : Flapjack.WordAlloc.removeDeadStructural input12425 value6216 value1 value2 = (output12425, value6217, value1))
    (child12432 : Flapjack.WordAlloc.removeDeadStructural input12432 value6217 value1 value2 = (output12432, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12433 value6216 value1 value2 = (output12433, value5, value1) := by
  rw [input12433_def, output12433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12425]
  dsimp only
  rw [child12432]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12425_skip, output12432_skip]
  kernel_rfl

theorem node12434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12434 value5 value1 value2 = (output12434, value6221, value1) := by
  rw [input12434_def, output12434_def]
  kernel_rfl

theorem node12435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12435 value6221 value1 value2 = (output12435, value6222, value1) := by
  rw [input12435_def, output12435_def]
  kernel_rfl

theorem node12436_cond_eq
    (child12434 : Flapjack.WordAlloc.removeDeadStructural input12434 value5 value1 value2 = (output12434, value6221, value1))
    (child12435 : Flapjack.WordAlloc.removeDeadStructural input12435 value6221 value1 value2 = (output12435, value6222, value1)) : Flapjack.WordAlloc.removeDeadStructural input12436 value5 value1 value2 = (output12436, value6222, value1) := by
  rw [input12436_def, output12436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12434]
  dsimp only
  rw [child12435]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12434_skip, output12435_skip]
  kernel_rfl

theorem node12437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12437 value6222 value1 value2 = (output12437, value6223, value1) := by
  rw [input12437_def, output12437_def]
  kernel_rfl

theorem node12438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12438 value6223 value1 value2 = (output12438, value6223, value1) := by
  rw [input12438_def, output12438_def]
  kernel_rfl

theorem node12439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12439 value6223 value1 value2 = (output12439, value6224, value1) := by
  rw [input12439_def, output12439_def]
  kernel_rfl

theorem node12440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12440 value6224 value1 value2 = (output12440, value6225, value1) := by
  rw [input12440_def, output12440_def]
  kernel_rfl

theorem node12441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12441 value6225 value1 value2 = (output12441, value6226, value1) := by
  rw [input12441_def, output12441_def]
  kernel_rfl

theorem node12442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12442 value6226 value1 value2 = (output12442, value6227, value1) := by
  rw [input12442_def, output12442_def]
  kernel_rfl

theorem node12443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12443 value6227 value1 value2 = (output12443, value5, value1) := by
  rw [input12443_def, output12443_def]
  kernel_rfl

theorem node12444_cond_eq
    (child12442 : Flapjack.WordAlloc.removeDeadStructural input12442 value6226 value1 value2 = (output12442, value6227, value1))
    (child12443 : Flapjack.WordAlloc.removeDeadStructural input12443 value6227 value1 value2 = (output12443, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12444 value6226 value1 value2 = (output12444, value5, value1) := by
  rw [input12444_def, output12444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12442]
  dsimp only
  rw [child12443]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12442_skip, output12443_skip]
  kernel_rfl

theorem node12445_cond_eq
    (child12441 : Flapjack.WordAlloc.removeDeadStructural input12441 value6225 value1 value2 = (output12441, value6226, value1))
    (child12444 : Flapjack.WordAlloc.removeDeadStructural input12444 value6226 value1 value2 = (output12444, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12445 value6225 value1 value2 = (output12445, value5, value1) := by
  rw [input12445_def, output12445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12441]
  dsimp only
  rw [child12444]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12441_skip, output12444_skip]
  kernel_rfl

theorem node12446_cond_eq
    (child12440 : Flapjack.WordAlloc.removeDeadStructural input12440 value6224 value1 value2 = (output12440, value6225, value1))
    (child12445 : Flapjack.WordAlloc.removeDeadStructural input12445 value6225 value1 value2 = (output12445, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12446 value6224 value1 value2 = (output12446, value5, value1) := by
  rw [input12446_def, output12446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12440]
  dsimp only
  rw [child12445]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12440_skip, output12445_skip]
  kernel_rfl

theorem node12447_cond_eq
    (child12439 : Flapjack.WordAlloc.removeDeadStructural input12439 value6223 value1 value2 = (output12439, value6224, value1))
    (child12446 : Flapjack.WordAlloc.removeDeadStructural input12446 value6224 value1 value2 = (output12446, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12447 value6223 value1 value2 = (output12447, value5, value1) := by
  rw [input12447_def, output12447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12439]
  dsimp only
  rw [child12446]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12439_skip, output12446_skip]
  kernel_rfl

theorem node12448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12448 value5 value1 value2 = (output12448, value6228, value1) := by
  rw [input12448_def, output12448_def]
  kernel_rfl

theorem node12449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12449 value6228 value1 value2 = (output12449, value6229, value1) := by
  rw [input12449_def, output12449_def]
  kernel_rfl

theorem node12450_cond_eq
    (child12448 : Flapjack.WordAlloc.removeDeadStructural input12448 value5 value1 value2 = (output12448, value6228, value1))
    (child12449 : Flapjack.WordAlloc.removeDeadStructural input12449 value6228 value1 value2 = (output12449, value6229, value1)) : Flapjack.WordAlloc.removeDeadStructural input12450 value5 value1 value2 = (output12450, value6229, value1) := by
  rw [input12450_def, output12450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12448]
  dsimp only
  rw [child12449]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12448_skip, output12449_skip]
  kernel_rfl

theorem node12451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12451 value6229 value1 value2 = (output12451, value6230, value1) := by
  rw [input12451_def, output12451_def]
  kernel_rfl

theorem node12452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12452 value6230 value1 value2 = (output12452, value6230, value1) := by
  rw [input12452_def, output12452_def]
  kernel_rfl

theorem node12453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12453 value6230 value1 value2 = (output12453, value6231, value1) := by
  rw [input12453_def, output12453_def]
  kernel_rfl

theorem node12454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12454 value6231 value1 value2 = (output12454, value6232, value1) := by
  rw [input12454_def, output12454_def]
  kernel_rfl

theorem node12455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12455 value6232 value1 value2 = (output12455, value6233, value1) := by
  rw [input12455_def, output12455_def]
  kernel_rfl

theorem node12456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12456 value6233 value1 value2 = (output12456, value6234, value1) := by
  rw [input12456_def, output12456_def]
  kernel_rfl

theorem node12457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12457 value6234 value1 value2 = (output12457, value5, value1) := by
  rw [input12457_def, output12457_def]
  kernel_rfl

theorem node12458_cond_eq
    (child12456 : Flapjack.WordAlloc.removeDeadStructural input12456 value6233 value1 value2 = (output12456, value6234, value1))
    (child12457 : Flapjack.WordAlloc.removeDeadStructural input12457 value6234 value1 value2 = (output12457, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12458 value6233 value1 value2 = (output12458, value5, value1) := by
  rw [input12458_def, output12458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12456]
  dsimp only
  rw [child12457]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12456_skip, output12457_skip]
  kernel_rfl

theorem node12459_cond_eq
    (child12455 : Flapjack.WordAlloc.removeDeadStructural input12455 value6232 value1 value2 = (output12455, value6233, value1))
    (child12458 : Flapjack.WordAlloc.removeDeadStructural input12458 value6233 value1 value2 = (output12458, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12459 value6232 value1 value2 = (output12459, value5, value1) := by
  rw [input12459_def, output12459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12455]
  dsimp only
  rw [child12458]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12455_skip, output12458_skip]
  kernel_rfl

theorem node12460_cond_eq
    (child12454 : Flapjack.WordAlloc.removeDeadStructural input12454 value6231 value1 value2 = (output12454, value6232, value1))
    (child12459 : Flapjack.WordAlloc.removeDeadStructural input12459 value6232 value1 value2 = (output12459, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12460 value6231 value1 value2 = (output12460, value5, value1) := by
  rw [input12460_def, output12460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12454]
  dsimp only
  rw [child12459]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12454_skip, output12459_skip]
  kernel_rfl

theorem node12461_cond_eq
    (child12453 : Flapjack.WordAlloc.removeDeadStructural input12453 value6230 value1 value2 = (output12453, value6231, value1))
    (child12460 : Flapjack.WordAlloc.removeDeadStructural input12460 value6231 value1 value2 = (output12460, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12461 value6230 value1 value2 = (output12461, value5, value1) := by
  rw [input12461_def, output12461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12453]
  dsimp only
  rw [child12460]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12453_skip, output12460_skip]
  kernel_rfl

theorem node12462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12462 value5 value1 value2 = (output12462, value6235, value1) := by
  rw [input12462_def, output12462_def]
  kernel_rfl

theorem node12463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12463 value6235 value1 value2 = (output12463, value6236, value1) := by
  rw [input12463_def, output12463_def]
  kernel_rfl

theorem node12464_cond_eq
    (child12462 : Flapjack.WordAlloc.removeDeadStructural input12462 value5 value1 value2 = (output12462, value6235, value1))
    (child12463 : Flapjack.WordAlloc.removeDeadStructural input12463 value6235 value1 value2 = (output12463, value6236, value1)) : Flapjack.WordAlloc.removeDeadStructural input12464 value5 value1 value2 = (output12464, value6236, value1) := by
  rw [input12464_def, output12464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12462]
  dsimp only
  rw [child12463]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12462_skip, output12463_skip]
  kernel_rfl

theorem node12465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12465 value6236 value1 value2 = (output12465, value6237, value1) := by
  rw [input12465_def, output12465_def]
  kernel_rfl

theorem node12466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12466 value6237 value1 value2 = (output12466, value6237, value1) := by
  rw [input12466_def, output12466_def]
  kernel_rfl

theorem node12467_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12467 value6237 value1 value2 = (output12467, value6238, value1) := by
  rw [input12467_def, output12467_def]
  kernel_rfl

theorem node12468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12468 value6238 value1 value2 = (output12468, value6239, value1) := by
  rw [input12468_def, output12468_def]
  kernel_rfl

theorem node12469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12469 value6239 value1 value2 = (output12469, value6240, value1) := by
  rw [input12469_def, output12469_def]
  kernel_rfl

theorem node12470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12470 value6240 value1 value2 = (output12470, value6241, value1) := by
  rw [input12470_def, output12470_def]
  kernel_rfl

theorem node12471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12471 value6241 value1 value2 = (output12471, value5, value1) := by
  rw [input12471_def, output12471_def]
  kernel_rfl

theorem node12472_cond_eq
    (child12470 : Flapjack.WordAlloc.removeDeadStructural input12470 value6240 value1 value2 = (output12470, value6241, value1))
    (child12471 : Flapjack.WordAlloc.removeDeadStructural input12471 value6241 value1 value2 = (output12471, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12472 value6240 value1 value2 = (output12472, value5, value1) := by
  rw [input12472_def, output12472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12470]
  dsimp only
  rw [child12471]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12470_skip, output12471_skip]
  kernel_rfl

theorem node12473_cond_eq
    (child12469 : Flapjack.WordAlloc.removeDeadStructural input12469 value6239 value1 value2 = (output12469, value6240, value1))
    (child12472 : Flapjack.WordAlloc.removeDeadStructural input12472 value6240 value1 value2 = (output12472, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12473 value6239 value1 value2 = (output12473, value5, value1) := by
  rw [input12473_def, output12473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12469]
  dsimp only
  rw [child12472]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12469_skip, output12472_skip]
  kernel_rfl

theorem node12474_cond_eq
    (child12468 : Flapjack.WordAlloc.removeDeadStructural input12468 value6238 value1 value2 = (output12468, value6239, value1))
    (child12473 : Flapjack.WordAlloc.removeDeadStructural input12473 value6239 value1 value2 = (output12473, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12474 value6238 value1 value2 = (output12474, value5, value1) := by
  rw [input12474_def, output12474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12468]
  dsimp only
  rw [child12473]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12468_skip, output12473_skip]
  kernel_rfl

theorem node12475_cond_eq
    (child12467 : Flapjack.WordAlloc.removeDeadStructural input12467 value6237 value1 value2 = (output12467, value6238, value1))
    (child12474 : Flapjack.WordAlloc.removeDeadStructural input12474 value6238 value1 value2 = (output12474, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12475 value6237 value1 value2 = (output12475, value5, value1) := by
  rw [input12475_def, output12475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12467]
  dsimp only
  rw [child12474]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12467_skip, output12474_skip]
  kernel_rfl

theorem node12476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12476 value5 value1 value2 = (output12476, value6242, value1) := by
  rw [input12476_def, output12476_def]
  kernel_rfl

theorem node12477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12477 value6242 value1 value2 = (output12477, value6243, value1) := by
  rw [input12477_def, output12477_def]
  kernel_rfl

theorem node12478_cond_eq
    (child12476 : Flapjack.WordAlloc.removeDeadStructural input12476 value5 value1 value2 = (output12476, value6242, value1))
    (child12477 : Flapjack.WordAlloc.removeDeadStructural input12477 value6242 value1 value2 = (output12477, value6243, value1)) : Flapjack.WordAlloc.removeDeadStructural input12478 value5 value1 value2 = (output12478, value6243, value1) := by
  rw [input12478_def, output12478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12476]
  dsimp only
  rw [child12477]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12476_skip, output12477_skip]
  kernel_rfl

theorem node12479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12479 value6243 value1 value2 = (output12479, value6244, value1) := by
  rw [input12479_def, output12479_def]
  kernel_rfl

theorem node12480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12480 value6244 value1 value2 = (output12480, value6244, value1) := by
  rw [input12480_def, output12480_def]
  kernel_rfl

theorem node12481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12481 value6244 value1 value2 = (output12481, value6245, value1) := by
  rw [input12481_def, output12481_def]
  kernel_rfl

theorem node12482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12482 value6245 value1 value2 = (output12482, value6246, value1) := by
  rw [input12482_def, output12482_def]
  kernel_rfl

theorem node12483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12483 value6246 value1 value2 = (output12483, value6247, value1) := by
  rw [input12483_def, output12483_def]
  kernel_rfl

theorem node12484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12484 value6247 value1 value2 = (output12484, value6248, value1) := by
  rw [input12484_def, output12484_def]
  kernel_rfl

theorem node12485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12485 value6248 value1 value2 = (output12485, value5, value1) := by
  rw [input12485_def, output12485_def]
  kernel_rfl

theorem node12486_cond_eq
    (child12484 : Flapjack.WordAlloc.removeDeadStructural input12484 value6247 value1 value2 = (output12484, value6248, value1))
    (child12485 : Flapjack.WordAlloc.removeDeadStructural input12485 value6248 value1 value2 = (output12485, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12486 value6247 value1 value2 = (output12486, value5, value1) := by
  rw [input12486_def, output12486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12484]
  dsimp only
  rw [child12485]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12484_skip, output12485_skip]
  kernel_rfl

theorem node12487_cond_eq
    (child12483 : Flapjack.WordAlloc.removeDeadStructural input12483 value6246 value1 value2 = (output12483, value6247, value1))
    (child12486 : Flapjack.WordAlloc.removeDeadStructural input12486 value6247 value1 value2 = (output12486, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12487 value6246 value1 value2 = (output12487, value5, value1) := by
  rw [input12487_def, output12487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12483]
  dsimp only
  rw [child12486]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12483_skip, output12486_skip]
  kernel_rfl

theorem node12488_cond_eq
    (child12482 : Flapjack.WordAlloc.removeDeadStructural input12482 value6245 value1 value2 = (output12482, value6246, value1))
    (child12487 : Flapjack.WordAlloc.removeDeadStructural input12487 value6246 value1 value2 = (output12487, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12488 value6245 value1 value2 = (output12488, value5, value1) := by
  rw [input12488_def, output12488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12482]
  dsimp only
  rw [child12487]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12482_skip, output12487_skip]
  kernel_rfl

theorem node12489_cond_eq
    (child12481 : Flapjack.WordAlloc.removeDeadStructural input12481 value6244 value1 value2 = (output12481, value6245, value1))
    (child12488 : Flapjack.WordAlloc.removeDeadStructural input12488 value6245 value1 value2 = (output12488, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12489 value6244 value1 value2 = (output12489, value5, value1) := by
  rw [input12489_def, output12489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12481]
  dsimp only
  rw [child12488]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12481_skip, output12488_skip]
  kernel_rfl

theorem node12490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12490 value5 value1 value2 = (output12490, value6249, value1) := by
  rw [input12490_def, output12490_def]
  kernel_rfl

theorem node12491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12491 value6249 value1 value2 = (output12491, value6250, value1) := by
  rw [input12491_def, output12491_def]
  kernel_rfl

theorem node12492_cond_eq
    (child12490 : Flapjack.WordAlloc.removeDeadStructural input12490 value5 value1 value2 = (output12490, value6249, value1))
    (child12491 : Flapjack.WordAlloc.removeDeadStructural input12491 value6249 value1 value2 = (output12491, value6250, value1)) : Flapjack.WordAlloc.removeDeadStructural input12492 value5 value1 value2 = (output12492, value6250, value1) := by
  rw [input12492_def, output12492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12490]
  dsimp only
  rw [child12491]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12490_skip, output12491_skip]
  kernel_rfl

theorem node12493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12493 value6250 value1 value2 = (output12493, value6251, value1) := by
  rw [input12493_def, output12493_def]
  kernel_rfl

theorem node12494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12494 value6251 value1 value2 = (output12494, value6251, value1) := by
  rw [input12494_def, output12494_def]
  kernel_rfl

theorem node12495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12495 value6251 value1 value2 = (output12495, value6252, value1) := by
  rw [input12495_def, output12495_def]
  kernel_rfl

theorem node12496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12496 value6252 value1 value2 = (output12496, value6253, value1) := by
  rw [input12496_def, output12496_def]
  kernel_rfl

theorem node12497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12497 value6253 value1 value2 = (output12497, value6254, value1) := by
  rw [input12497_def, output12497_def]
  kernel_rfl

theorem node12498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12498 value6254 value1 value2 = (output12498, value6255, value1) := by
  rw [input12498_def, output12498_def]
  kernel_rfl

theorem node12499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12499 value6255 value1 value2 = (output12499, value5, value1) := by
  rw [input12499_def, output12499_def]
  kernel_rfl

theorem node12500_cond_eq
    (child12498 : Flapjack.WordAlloc.removeDeadStructural input12498 value6254 value1 value2 = (output12498, value6255, value1))
    (child12499 : Flapjack.WordAlloc.removeDeadStructural input12499 value6255 value1 value2 = (output12499, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12500 value6254 value1 value2 = (output12500, value5, value1) := by
  rw [input12500_def, output12500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12498]
  dsimp only
  rw [child12499]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12498_skip, output12499_skip]
  kernel_rfl

theorem node12501_cond_eq
    (child12497 : Flapjack.WordAlloc.removeDeadStructural input12497 value6253 value1 value2 = (output12497, value6254, value1))
    (child12500 : Flapjack.WordAlloc.removeDeadStructural input12500 value6254 value1 value2 = (output12500, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12501 value6253 value1 value2 = (output12501, value5, value1) := by
  rw [input12501_def, output12501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12497]
  dsimp only
  rw [child12500]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12497_skip, output12500_skip]
  kernel_rfl

theorem node12502_cond_eq
    (child12496 : Flapjack.WordAlloc.removeDeadStructural input12496 value6252 value1 value2 = (output12496, value6253, value1))
    (child12501 : Flapjack.WordAlloc.removeDeadStructural input12501 value6253 value1 value2 = (output12501, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12502 value6252 value1 value2 = (output12502, value5, value1) := by
  rw [input12502_def, output12502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12496]
  dsimp only
  rw [child12501]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12496_skip, output12501_skip]
  kernel_rfl

theorem node12503_cond_eq
    (child12495 : Flapjack.WordAlloc.removeDeadStructural input12495 value6251 value1 value2 = (output12495, value6252, value1))
    (child12502 : Flapjack.WordAlloc.removeDeadStructural input12502 value6252 value1 value2 = (output12502, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12503 value6251 value1 value2 = (output12503, value5, value1) := by
  rw [input12503_def, output12503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12495]
  dsimp only
  rw [child12502]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12495_skip, output12502_skip]
  kernel_rfl

theorem node12504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12504 value5 value1 value2 = (output12504, value6256, value1) := by
  rw [input12504_def, output12504_def]
  kernel_rfl

theorem node12505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12505 value6256 value1 value2 = (output12505, value6257, value1) := by
  rw [input12505_def, output12505_def]
  kernel_rfl

theorem node12506_cond_eq
    (child12504 : Flapjack.WordAlloc.removeDeadStructural input12504 value5 value1 value2 = (output12504, value6256, value1))
    (child12505 : Flapjack.WordAlloc.removeDeadStructural input12505 value6256 value1 value2 = (output12505, value6257, value1)) : Flapjack.WordAlloc.removeDeadStructural input12506 value5 value1 value2 = (output12506, value6257, value1) := by
  rw [input12506_def, output12506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12504]
  dsimp only
  rw [child12505]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12504_skip, output12505_skip]
  kernel_rfl

theorem node12507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12507 value6257 value1 value2 = (output12507, value6258, value1) := by
  rw [input12507_def, output12507_def]
  kernel_rfl

theorem node12508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12508 value6258 value1 value2 = (output12508, value6258, value1) := by
  rw [input12508_def, output12508_def]
  kernel_rfl

theorem node12509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12509 value6258 value1 value2 = (output12509, value6259, value1) := by
  rw [input12509_def, output12509_def]
  kernel_rfl

theorem node12510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12510 value6259 value1 value2 = (output12510, value6260, value1) := by
  rw [input12510_def, output12510_def]
  kernel_rfl

theorem node12511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12511 value6260 value1 value2 = (output12511, value6261, value1) := by
  rw [input12511_def, output12511_def]
  kernel_rfl

theorem node12512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12512 value6261 value1 value2 = (output12512, value6262, value1) := by
  rw [input12512_def, output12512_def]
  kernel_rfl

theorem node12513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12513 value6262 value1 value2 = (output12513, value5, value1) := by
  rw [input12513_def, output12513_def]
  kernel_rfl

theorem node12514_cond_eq
    (child12512 : Flapjack.WordAlloc.removeDeadStructural input12512 value6261 value1 value2 = (output12512, value6262, value1))
    (child12513 : Flapjack.WordAlloc.removeDeadStructural input12513 value6262 value1 value2 = (output12513, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12514 value6261 value1 value2 = (output12514, value5, value1) := by
  rw [input12514_def, output12514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12512]
  dsimp only
  rw [child12513]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12512_skip, output12513_skip]
  kernel_rfl

theorem node12515_cond_eq
    (child12511 : Flapjack.WordAlloc.removeDeadStructural input12511 value6260 value1 value2 = (output12511, value6261, value1))
    (child12514 : Flapjack.WordAlloc.removeDeadStructural input12514 value6261 value1 value2 = (output12514, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12515 value6260 value1 value2 = (output12515, value5, value1) := by
  rw [input12515_def, output12515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12511]
  dsimp only
  rw [child12514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12511_skip, output12514_skip]
  kernel_rfl

theorem node12516_cond_eq
    (child12510 : Flapjack.WordAlloc.removeDeadStructural input12510 value6259 value1 value2 = (output12510, value6260, value1))
    (child12515 : Flapjack.WordAlloc.removeDeadStructural input12515 value6260 value1 value2 = (output12515, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12516 value6259 value1 value2 = (output12516, value5, value1) := by
  rw [input12516_def, output12516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12510]
  dsimp only
  rw [child12515]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12510_skip, output12515_skip]
  kernel_rfl

theorem node12517_cond_eq
    (child12509 : Flapjack.WordAlloc.removeDeadStructural input12509 value6258 value1 value2 = (output12509, value6259, value1))
    (child12516 : Flapjack.WordAlloc.removeDeadStructural input12516 value6259 value1 value2 = (output12516, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12517 value6258 value1 value2 = (output12517, value5, value1) := by
  rw [input12517_def, output12517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12509]
  dsimp only
  rw [child12516]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12509_skip, output12516_skip]
  kernel_rfl

theorem node12518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12518 value5 value1 value2 = (output12518, value6263, value1) := by
  rw [input12518_def, output12518_def]
  kernel_rfl

theorem node12519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12519 value6263 value1 value2 = (output12519, value6264, value1) := by
  rw [input12519_def, output12519_def]
  kernel_rfl

theorem node12520_cond_eq
    (child12518 : Flapjack.WordAlloc.removeDeadStructural input12518 value5 value1 value2 = (output12518, value6263, value1))
    (child12519 : Flapjack.WordAlloc.removeDeadStructural input12519 value6263 value1 value2 = (output12519, value6264, value1)) : Flapjack.WordAlloc.removeDeadStructural input12520 value5 value1 value2 = (output12520, value6264, value1) := by
  rw [input12520_def, output12520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12518]
  dsimp only
  rw [child12519]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12518_skip, output12519_skip]
  kernel_rfl

theorem node12521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12521 value6264 value1 value2 = (output12521, value6265, value1) := by
  rw [input12521_def, output12521_def]
  kernel_rfl

theorem node12522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12522 value6265 value1 value2 = (output12522, value6265, value1) := by
  rw [input12522_def, output12522_def]
  kernel_rfl

theorem node12523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12523 value6265 value1 value2 = (output12523, value6266, value1) := by
  rw [input12523_def, output12523_def]
  kernel_rfl

theorem node12524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12524 value6266 value1 value2 = (output12524, value6267, value1) := by
  rw [input12524_def, output12524_def]
  kernel_rfl

theorem node12525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12525 value6267 value1 value2 = (output12525, value6268, value1) := by
  rw [input12525_def, output12525_def]
  kernel_rfl

theorem node12526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12526 value6268 value1 value2 = (output12526, value6269, value1) := by
  rw [input12526_def, output12526_def]
  kernel_rfl

theorem node12527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12527 value6269 value1 value2 = (output12527, value5, value1) := by
  rw [input12527_def, output12527_def]
  kernel_rfl

theorem node12528_cond_eq
    (child12526 : Flapjack.WordAlloc.removeDeadStructural input12526 value6268 value1 value2 = (output12526, value6269, value1))
    (child12527 : Flapjack.WordAlloc.removeDeadStructural input12527 value6269 value1 value2 = (output12527, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12528 value6268 value1 value2 = (output12528, value5, value1) := by
  rw [input12528_def, output12528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12526]
  dsimp only
  rw [child12527]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12526_skip, output12527_skip]
  kernel_rfl

theorem node12529_cond_eq
    (child12525 : Flapjack.WordAlloc.removeDeadStructural input12525 value6267 value1 value2 = (output12525, value6268, value1))
    (child12528 : Flapjack.WordAlloc.removeDeadStructural input12528 value6268 value1 value2 = (output12528, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12529 value6267 value1 value2 = (output12529, value5, value1) := by
  rw [input12529_def, output12529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12525]
  dsimp only
  rw [child12528]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12525_skip, output12528_skip]
  kernel_rfl

theorem node12530_cond_eq
    (child12524 : Flapjack.WordAlloc.removeDeadStructural input12524 value6266 value1 value2 = (output12524, value6267, value1))
    (child12529 : Flapjack.WordAlloc.removeDeadStructural input12529 value6267 value1 value2 = (output12529, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12530 value6266 value1 value2 = (output12530, value5, value1) := by
  rw [input12530_def, output12530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12524]
  dsimp only
  rw [child12529]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12524_skip, output12529_skip]
  kernel_rfl

theorem node12531_cond_eq
    (child12523 : Flapjack.WordAlloc.removeDeadStructural input12523 value6265 value1 value2 = (output12523, value6266, value1))
    (child12530 : Flapjack.WordAlloc.removeDeadStructural input12530 value6266 value1 value2 = (output12530, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12531 value6265 value1 value2 = (output12531, value5, value1) := by
  rw [input12531_def, output12531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12523]
  dsimp only
  rw [child12530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12523_skip, output12530_skip]
  kernel_rfl

theorem node12532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12532 value5 value1 value2 = (output12532, value6270, value1) := by
  rw [input12532_def, output12532_def]
  kernel_rfl

theorem node12533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12533 value6270 value1 value2 = (output12533, value6271, value1) := by
  rw [input12533_def, output12533_def]
  kernel_rfl

theorem node12534_cond_eq
    (child12532 : Flapjack.WordAlloc.removeDeadStructural input12532 value5 value1 value2 = (output12532, value6270, value1))
    (child12533 : Flapjack.WordAlloc.removeDeadStructural input12533 value6270 value1 value2 = (output12533, value6271, value1)) : Flapjack.WordAlloc.removeDeadStructural input12534 value5 value1 value2 = (output12534, value6271, value1) := by
  rw [input12534_def, output12534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12532]
  dsimp only
  rw [child12533]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12532_skip, output12533_skip]
  kernel_rfl

theorem node12535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12535 value6271 value1 value2 = (output12535, value6272, value1) := by
  rw [input12535_def, output12535_def]
  kernel_rfl

theorem node12536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12536 value6272 value1 value2 = (output12536, value6272, value1) := by
  rw [input12536_def, output12536_def]
  kernel_rfl

theorem node12537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12537 value6272 value1 value2 = (output12537, value6273, value1) := by
  rw [input12537_def, output12537_def]
  kernel_rfl

theorem node12538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12538 value6273 value1 value2 = (output12538, value6274, value1) := by
  rw [input12538_def, output12538_def]
  kernel_rfl

theorem node12539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12539 value6274 value1 value2 = (output12539, value6275, value1) := by
  rw [input12539_def, output12539_def]
  kernel_rfl

theorem node12540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12540 value6275 value1 value2 = (output12540, value6276, value1) := by
  rw [input12540_def, output12540_def]
  kernel_rfl

theorem node12541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12541 value6276 value1 value2 = (output12541, value5, value1) := by
  rw [input12541_def, output12541_def]
  kernel_rfl

theorem node12542_cond_eq
    (child12540 : Flapjack.WordAlloc.removeDeadStructural input12540 value6275 value1 value2 = (output12540, value6276, value1))
    (child12541 : Flapjack.WordAlloc.removeDeadStructural input12541 value6276 value1 value2 = (output12541, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12542 value6275 value1 value2 = (output12542, value5, value1) := by
  rw [input12542_def, output12542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12540]
  dsimp only
  rw [child12541]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12540_skip, output12541_skip]
  kernel_rfl

theorem node12543_cond_eq
    (child12539 : Flapjack.WordAlloc.removeDeadStructural input12539 value6274 value1 value2 = (output12539, value6275, value1))
    (child12542 : Flapjack.WordAlloc.removeDeadStructural input12542 value6275 value1 value2 = (output12542, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12543 value6274 value1 value2 = (output12543, value5, value1) := by
  rw [input12543_def, output12543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12539]
  dsimp only
  rw [child12542]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12539_skip, output12542_skip]
  kernel_rfl

#print axioms node12543_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
