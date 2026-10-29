import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk044
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node11264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11264 value5636 value1 value2 = (output11264, value5637, value1) := by
  rw [input11264_def, output11264_def]
  kernel_rfl

theorem node11265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11265 value5637 value1 value2 = (output11265, value5638, value1) := by
  rw [input11265_def, output11265_def]
  kernel_rfl

theorem node11266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11266 value5638 value1 value2 = (output11266, value5639, value1) := by
  rw [input11266_def, output11266_def]
  kernel_rfl

theorem node11267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11267 value5639 value1 value2 = (output11267, value5, value1) := by
  rw [input11267_def, output11267_def]
  kernel_rfl

theorem node11268_cond_eq
    (child11266 : Flapjack.WordAlloc.removeDeadStructural input11266 value5638 value1 value2 = (output11266, value5639, value1))
    (child11267 : Flapjack.WordAlloc.removeDeadStructural input11267 value5639 value1 value2 = (output11267, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11268 value5638 value1 value2 = (output11268, value5, value1) := by
  rw [input11268_def, output11268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11266]
  dsimp only
  rw [child11267]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11266_skip, output11267_skip]
  kernel_rfl

theorem node11269_cond_eq
    (child11265 : Flapjack.WordAlloc.removeDeadStructural input11265 value5637 value1 value2 = (output11265, value5638, value1))
    (child11268 : Flapjack.WordAlloc.removeDeadStructural input11268 value5638 value1 value2 = (output11268, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11269 value5637 value1 value2 = (output11269, value5, value1) := by
  rw [input11269_def, output11269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11265]
  dsimp only
  rw [child11268]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11265_skip, output11268_skip]
  kernel_rfl

theorem node11270_cond_eq
    (child11264 : Flapjack.WordAlloc.removeDeadStructural input11264 value5636 value1 value2 = (output11264, value5637, value1))
    (child11269 : Flapjack.WordAlloc.removeDeadStructural input11269 value5637 value1 value2 = (output11269, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11270 value5636 value1 value2 = (output11270, value5, value1) := by
  rw [input11270_def, output11270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11264]
  dsimp only
  rw [child11269]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11264_skip, output11269_skip]
  kernel_rfl

theorem node11271_cond_eq
    (child11263 : Flapjack.WordAlloc.removeDeadStructural input11263 value5635 value1 value2 = (output11263, value5636, value1))
    (child11270 : Flapjack.WordAlloc.removeDeadStructural input11270 value5636 value1 value2 = (output11270, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11271 value5635 value1 value2 = (output11271, value5, value1) := by
  rw [input11271_def, output11271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11263]
  dsimp only
  rw [child11270]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11263_skip, output11270_skip]
  kernel_rfl

theorem node11272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11272 value5 value1 value2 = (output11272, value5640, value1) := by
  rw [input11272_def, output11272_def]
  kernel_rfl

theorem node11273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11273 value5640 value1 value2 = (output11273, value5641, value1) := by
  rw [input11273_def, output11273_def]
  kernel_rfl

theorem node11274_cond_eq
    (child11272 : Flapjack.WordAlloc.removeDeadStructural input11272 value5 value1 value2 = (output11272, value5640, value1))
    (child11273 : Flapjack.WordAlloc.removeDeadStructural input11273 value5640 value1 value2 = (output11273, value5641, value1)) : Flapjack.WordAlloc.removeDeadStructural input11274 value5 value1 value2 = (output11274, value5641, value1) := by
  rw [input11274_def, output11274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11272]
  dsimp only
  rw [child11273]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11272_skip, output11273_skip]
  kernel_rfl

theorem node11275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11275 value5641 value1 value2 = (output11275, value5642, value1) := by
  rw [input11275_def, output11275_def]
  kernel_rfl

theorem node11276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11276 value5642 value1 value2 = (output11276, value5642, value1) := by
  rw [input11276_def, output11276_def]
  kernel_rfl

theorem node11277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11277 value5642 value1 value2 = (output11277, value5643, value1) := by
  rw [input11277_def, output11277_def]
  kernel_rfl

theorem node11278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11278 value5643 value1 value2 = (output11278, value5644, value1) := by
  rw [input11278_def, output11278_def]
  kernel_rfl

theorem node11279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11279 value5644 value1 value2 = (output11279, value5645, value1) := by
  rw [input11279_def, output11279_def]
  kernel_rfl

theorem node11280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11280 value5645 value1 value2 = (output11280, value5646, value1) := by
  rw [input11280_def, output11280_def]
  kernel_rfl

theorem node11281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11281 value5646 value1 value2 = (output11281, value5, value1) := by
  rw [input11281_def, output11281_def]
  kernel_rfl

theorem node11282_cond_eq
    (child11280 : Flapjack.WordAlloc.removeDeadStructural input11280 value5645 value1 value2 = (output11280, value5646, value1))
    (child11281 : Flapjack.WordAlloc.removeDeadStructural input11281 value5646 value1 value2 = (output11281, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11282 value5645 value1 value2 = (output11282, value5, value1) := by
  rw [input11282_def, output11282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11280]
  dsimp only
  rw [child11281]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11280_skip, output11281_skip]
  kernel_rfl

theorem node11283_cond_eq
    (child11279 : Flapjack.WordAlloc.removeDeadStructural input11279 value5644 value1 value2 = (output11279, value5645, value1))
    (child11282 : Flapjack.WordAlloc.removeDeadStructural input11282 value5645 value1 value2 = (output11282, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11283 value5644 value1 value2 = (output11283, value5, value1) := by
  rw [input11283_def, output11283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11279]
  dsimp only
  rw [child11282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11279_skip, output11282_skip]
  kernel_rfl

theorem node11284_cond_eq
    (child11278 : Flapjack.WordAlloc.removeDeadStructural input11278 value5643 value1 value2 = (output11278, value5644, value1))
    (child11283 : Flapjack.WordAlloc.removeDeadStructural input11283 value5644 value1 value2 = (output11283, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11284 value5643 value1 value2 = (output11284, value5, value1) := by
  rw [input11284_def, output11284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11278]
  dsimp only
  rw [child11283]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11278_skip, output11283_skip]
  kernel_rfl

theorem node11285_cond_eq
    (child11277 : Flapjack.WordAlloc.removeDeadStructural input11277 value5642 value1 value2 = (output11277, value5643, value1))
    (child11284 : Flapjack.WordAlloc.removeDeadStructural input11284 value5643 value1 value2 = (output11284, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11285 value5642 value1 value2 = (output11285, value5, value1) := by
  rw [input11285_def, output11285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11277]
  dsimp only
  rw [child11284]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11277_skip, output11284_skip]
  kernel_rfl

theorem node11286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11286 value5 value1 value2 = (output11286, value5647, value1) := by
  rw [input11286_def, output11286_def]
  kernel_rfl

theorem node11287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11287 value5647 value1 value2 = (output11287, value5648, value1) := by
  rw [input11287_def, output11287_def]
  kernel_rfl

theorem node11288_cond_eq
    (child11286 : Flapjack.WordAlloc.removeDeadStructural input11286 value5 value1 value2 = (output11286, value5647, value1))
    (child11287 : Flapjack.WordAlloc.removeDeadStructural input11287 value5647 value1 value2 = (output11287, value5648, value1)) : Flapjack.WordAlloc.removeDeadStructural input11288 value5 value1 value2 = (output11288, value5648, value1) := by
  rw [input11288_def, output11288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11286]
  dsimp only
  rw [child11287]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11286_skip, output11287_skip]
  kernel_rfl

theorem node11289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11289 value5648 value1 value2 = (output11289, value5649, value1) := by
  rw [input11289_def, output11289_def]
  kernel_rfl

theorem node11290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11290 value5649 value1 value2 = (output11290, value5649, value1) := by
  rw [input11290_def, output11290_def]
  kernel_rfl

theorem node11291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11291 value5649 value1 value2 = (output11291, value5650, value1) := by
  rw [input11291_def, output11291_def]
  kernel_rfl

theorem node11292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11292 value5650 value1 value2 = (output11292, value5651, value1) := by
  rw [input11292_def, output11292_def]
  kernel_rfl

theorem node11293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11293 value5651 value1 value2 = (output11293, value5652, value1) := by
  rw [input11293_def, output11293_def]
  kernel_rfl

theorem node11294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11294 value5652 value1 value2 = (output11294, value5653, value1) := by
  rw [input11294_def, output11294_def]
  kernel_rfl

theorem node11295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11295 value5653 value1 value2 = (output11295, value5, value1) := by
  rw [input11295_def, output11295_def]
  kernel_rfl

theorem node11296_cond_eq
    (child11294 : Flapjack.WordAlloc.removeDeadStructural input11294 value5652 value1 value2 = (output11294, value5653, value1))
    (child11295 : Flapjack.WordAlloc.removeDeadStructural input11295 value5653 value1 value2 = (output11295, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11296 value5652 value1 value2 = (output11296, value5, value1) := by
  rw [input11296_def, output11296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11294]
  dsimp only
  rw [child11295]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11294_skip, output11295_skip]
  kernel_rfl

theorem node11297_cond_eq
    (child11293 : Flapjack.WordAlloc.removeDeadStructural input11293 value5651 value1 value2 = (output11293, value5652, value1))
    (child11296 : Flapjack.WordAlloc.removeDeadStructural input11296 value5652 value1 value2 = (output11296, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11297 value5651 value1 value2 = (output11297, value5, value1) := by
  rw [input11297_def, output11297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11293]
  dsimp only
  rw [child11296]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11293_skip, output11296_skip]
  kernel_rfl

theorem node11298_cond_eq
    (child11292 : Flapjack.WordAlloc.removeDeadStructural input11292 value5650 value1 value2 = (output11292, value5651, value1))
    (child11297 : Flapjack.WordAlloc.removeDeadStructural input11297 value5651 value1 value2 = (output11297, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11298 value5650 value1 value2 = (output11298, value5, value1) := by
  rw [input11298_def, output11298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11292]
  dsimp only
  rw [child11297]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11292_skip, output11297_skip]
  kernel_rfl

theorem node11299_cond_eq
    (child11291 : Flapjack.WordAlloc.removeDeadStructural input11291 value5649 value1 value2 = (output11291, value5650, value1))
    (child11298 : Flapjack.WordAlloc.removeDeadStructural input11298 value5650 value1 value2 = (output11298, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11299 value5649 value1 value2 = (output11299, value5, value1) := by
  rw [input11299_def, output11299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11291]
  dsimp only
  rw [child11298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11291_skip, output11298_skip]
  kernel_rfl

theorem node11300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11300 value5 value1 value2 = (output11300, value5654, value1) := by
  rw [input11300_def, output11300_def]
  kernel_rfl

theorem node11301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11301 value5654 value1 value2 = (output11301, value5655, value1) := by
  rw [input11301_def, output11301_def]
  kernel_rfl

theorem node11302_cond_eq
    (child11300 : Flapjack.WordAlloc.removeDeadStructural input11300 value5 value1 value2 = (output11300, value5654, value1))
    (child11301 : Flapjack.WordAlloc.removeDeadStructural input11301 value5654 value1 value2 = (output11301, value5655, value1)) : Flapjack.WordAlloc.removeDeadStructural input11302 value5 value1 value2 = (output11302, value5655, value1) := by
  rw [input11302_def, output11302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11300]
  dsimp only
  rw [child11301]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11300_skip, output11301_skip]
  kernel_rfl

theorem node11303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11303 value5655 value1 value2 = (output11303, value5656, value1) := by
  rw [input11303_def, output11303_def]
  kernel_rfl

theorem node11304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11304 value5656 value1 value2 = (output11304, value5656, value1) := by
  rw [input11304_def, output11304_def]
  kernel_rfl

theorem node11305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11305 value5656 value1 value2 = (output11305, value5657, value1) := by
  rw [input11305_def, output11305_def]
  kernel_rfl

theorem node11306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11306 value5657 value1 value2 = (output11306, value5658, value1) := by
  rw [input11306_def, output11306_def]
  kernel_rfl

theorem node11307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11307 value5658 value1 value2 = (output11307, value5659, value1) := by
  rw [input11307_def, output11307_def]
  kernel_rfl

theorem node11308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11308 value5659 value1 value2 = (output11308, value5660, value1) := by
  rw [input11308_def, output11308_def]
  kernel_rfl

theorem node11309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11309 value5660 value1 value2 = (output11309, value5, value1) := by
  rw [input11309_def, output11309_def]
  kernel_rfl

theorem node11310_cond_eq
    (child11308 : Flapjack.WordAlloc.removeDeadStructural input11308 value5659 value1 value2 = (output11308, value5660, value1))
    (child11309 : Flapjack.WordAlloc.removeDeadStructural input11309 value5660 value1 value2 = (output11309, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11310 value5659 value1 value2 = (output11310, value5, value1) := by
  rw [input11310_def, output11310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11308]
  dsimp only
  rw [child11309]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11308_skip, output11309_skip]
  kernel_rfl

theorem node11311_cond_eq
    (child11307 : Flapjack.WordAlloc.removeDeadStructural input11307 value5658 value1 value2 = (output11307, value5659, value1))
    (child11310 : Flapjack.WordAlloc.removeDeadStructural input11310 value5659 value1 value2 = (output11310, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11311 value5658 value1 value2 = (output11311, value5, value1) := by
  rw [input11311_def, output11311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11307]
  dsimp only
  rw [child11310]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11307_skip, output11310_skip]
  kernel_rfl

theorem node11312_cond_eq
    (child11306 : Flapjack.WordAlloc.removeDeadStructural input11306 value5657 value1 value2 = (output11306, value5658, value1))
    (child11311 : Flapjack.WordAlloc.removeDeadStructural input11311 value5658 value1 value2 = (output11311, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11312 value5657 value1 value2 = (output11312, value5, value1) := by
  rw [input11312_def, output11312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11306]
  dsimp only
  rw [child11311]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11306_skip, output11311_skip]
  kernel_rfl

theorem node11313_cond_eq
    (child11305 : Flapjack.WordAlloc.removeDeadStructural input11305 value5656 value1 value2 = (output11305, value5657, value1))
    (child11312 : Flapjack.WordAlloc.removeDeadStructural input11312 value5657 value1 value2 = (output11312, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11313 value5656 value1 value2 = (output11313, value5, value1) := by
  rw [input11313_def, output11313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11305]
  dsimp only
  rw [child11312]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11305_skip, output11312_skip]
  kernel_rfl

theorem node11314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11314 value5 value1 value2 = (output11314, value5661, value1) := by
  rw [input11314_def, output11314_def]
  kernel_rfl

theorem node11315_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11315 value5661 value1 value2 = (output11315, value5662, value1) := by
  rw [input11315_def, output11315_def]
  kernel_rfl

theorem node11316_cond_eq
    (child11314 : Flapjack.WordAlloc.removeDeadStructural input11314 value5 value1 value2 = (output11314, value5661, value1))
    (child11315 : Flapjack.WordAlloc.removeDeadStructural input11315 value5661 value1 value2 = (output11315, value5662, value1)) : Flapjack.WordAlloc.removeDeadStructural input11316 value5 value1 value2 = (output11316, value5662, value1) := by
  rw [input11316_def, output11316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11314]
  dsimp only
  rw [child11315]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11314_skip, output11315_skip]
  kernel_rfl

theorem node11317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11317 value5662 value1 value2 = (output11317, value5663, value1) := by
  rw [input11317_def, output11317_def]
  kernel_rfl

theorem node11318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11318 value5663 value1 value2 = (output11318, value5663, value1) := by
  rw [input11318_def, output11318_def]
  kernel_rfl

theorem node11319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11319 value5663 value1 value2 = (output11319, value5664, value1) := by
  rw [input11319_def, output11319_def]
  kernel_rfl

theorem node11320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11320 value5664 value1 value2 = (output11320, value5665, value1) := by
  rw [input11320_def, output11320_def]
  kernel_rfl

theorem node11321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11321 value5665 value1 value2 = (output11321, value5666, value1) := by
  rw [input11321_def, output11321_def]
  kernel_rfl

theorem node11322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11322 value5666 value1 value2 = (output11322, value5667, value1) := by
  rw [input11322_def, output11322_def]
  kernel_rfl

theorem node11323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11323 value5667 value1 value2 = (output11323, value5, value1) := by
  rw [input11323_def, output11323_def]
  kernel_rfl

theorem node11324_cond_eq
    (child11322 : Flapjack.WordAlloc.removeDeadStructural input11322 value5666 value1 value2 = (output11322, value5667, value1))
    (child11323 : Flapjack.WordAlloc.removeDeadStructural input11323 value5667 value1 value2 = (output11323, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11324 value5666 value1 value2 = (output11324, value5, value1) := by
  rw [input11324_def, output11324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11322]
  dsimp only
  rw [child11323]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11322_skip, output11323_skip]
  kernel_rfl

theorem node11325_cond_eq
    (child11321 : Flapjack.WordAlloc.removeDeadStructural input11321 value5665 value1 value2 = (output11321, value5666, value1))
    (child11324 : Flapjack.WordAlloc.removeDeadStructural input11324 value5666 value1 value2 = (output11324, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11325 value5665 value1 value2 = (output11325, value5, value1) := by
  rw [input11325_def, output11325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11321]
  dsimp only
  rw [child11324]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11321_skip, output11324_skip]
  kernel_rfl

theorem node11326_cond_eq
    (child11320 : Flapjack.WordAlloc.removeDeadStructural input11320 value5664 value1 value2 = (output11320, value5665, value1))
    (child11325 : Flapjack.WordAlloc.removeDeadStructural input11325 value5665 value1 value2 = (output11325, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11326 value5664 value1 value2 = (output11326, value5, value1) := by
  rw [input11326_def, output11326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11320]
  dsimp only
  rw [child11325]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11320_skip, output11325_skip]
  kernel_rfl

theorem node11327_cond_eq
    (child11319 : Flapjack.WordAlloc.removeDeadStructural input11319 value5663 value1 value2 = (output11319, value5664, value1))
    (child11326 : Flapjack.WordAlloc.removeDeadStructural input11326 value5664 value1 value2 = (output11326, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11327 value5663 value1 value2 = (output11327, value5, value1) := by
  rw [input11327_def, output11327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11319]
  dsimp only
  rw [child11326]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11319_skip, output11326_skip]
  kernel_rfl

theorem node11328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11328 value5 value1 value2 = (output11328, value5668, value1) := by
  rw [input11328_def, output11328_def]
  kernel_rfl

theorem node11329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11329 value5668 value1 value2 = (output11329, value5669, value1) := by
  rw [input11329_def, output11329_def]
  kernel_rfl

theorem node11330_cond_eq
    (child11328 : Flapjack.WordAlloc.removeDeadStructural input11328 value5 value1 value2 = (output11328, value5668, value1))
    (child11329 : Flapjack.WordAlloc.removeDeadStructural input11329 value5668 value1 value2 = (output11329, value5669, value1)) : Flapjack.WordAlloc.removeDeadStructural input11330 value5 value1 value2 = (output11330, value5669, value1) := by
  rw [input11330_def, output11330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11328]
  dsimp only
  rw [child11329]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11328_skip, output11329_skip]
  kernel_rfl

theorem node11331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11331 value5669 value1 value2 = (output11331, value5670, value1) := by
  rw [input11331_def, output11331_def]
  kernel_rfl

theorem node11332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11332 value5670 value1 value2 = (output11332, value5670, value1) := by
  rw [input11332_def, output11332_def]
  kernel_rfl

theorem node11333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11333 value5670 value1 value2 = (output11333, value5671, value1) := by
  rw [input11333_def, output11333_def]
  kernel_rfl

theorem node11334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11334 value5671 value1 value2 = (output11334, value5672, value1) := by
  rw [input11334_def, output11334_def]
  kernel_rfl

theorem node11335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11335 value5672 value1 value2 = (output11335, value5673, value1) := by
  rw [input11335_def, output11335_def]
  kernel_rfl

theorem node11336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11336 value5673 value1 value2 = (output11336, value5674, value1) := by
  rw [input11336_def, output11336_def]
  kernel_rfl

theorem node11337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11337 value5674 value1 value2 = (output11337, value5, value1) := by
  rw [input11337_def, output11337_def]
  kernel_rfl

theorem node11338_cond_eq
    (child11336 : Flapjack.WordAlloc.removeDeadStructural input11336 value5673 value1 value2 = (output11336, value5674, value1))
    (child11337 : Flapjack.WordAlloc.removeDeadStructural input11337 value5674 value1 value2 = (output11337, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11338 value5673 value1 value2 = (output11338, value5, value1) := by
  rw [input11338_def, output11338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11336]
  dsimp only
  rw [child11337]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11336_skip, output11337_skip]
  kernel_rfl

theorem node11339_cond_eq
    (child11335 : Flapjack.WordAlloc.removeDeadStructural input11335 value5672 value1 value2 = (output11335, value5673, value1))
    (child11338 : Flapjack.WordAlloc.removeDeadStructural input11338 value5673 value1 value2 = (output11338, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11339 value5672 value1 value2 = (output11339, value5, value1) := by
  rw [input11339_def, output11339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11335]
  dsimp only
  rw [child11338]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11335_skip, output11338_skip]
  kernel_rfl

theorem node11340_cond_eq
    (child11334 : Flapjack.WordAlloc.removeDeadStructural input11334 value5671 value1 value2 = (output11334, value5672, value1))
    (child11339 : Flapjack.WordAlloc.removeDeadStructural input11339 value5672 value1 value2 = (output11339, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11340 value5671 value1 value2 = (output11340, value5, value1) := by
  rw [input11340_def, output11340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11334]
  dsimp only
  rw [child11339]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11334_skip, output11339_skip]
  kernel_rfl

theorem node11341_cond_eq
    (child11333 : Flapjack.WordAlloc.removeDeadStructural input11333 value5670 value1 value2 = (output11333, value5671, value1))
    (child11340 : Flapjack.WordAlloc.removeDeadStructural input11340 value5671 value1 value2 = (output11340, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11341 value5670 value1 value2 = (output11341, value5, value1) := by
  rw [input11341_def, output11341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11333]
  dsimp only
  rw [child11340]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11333_skip, output11340_skip]
  kernel_rfl

theorem node11342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11342 value5 value1 value2 = (output11342, value5675, value1) := by
  rw [input11342_def, output11342_def]
  kernel_rfl

theorem node11343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11343 value5675 value1 value2 = (output11343, value5676, value1) := by
  rw [input11343_def, output11343_def]
  kernel_rfl

theorem node11344_cond_eq
    (child11342 : Flapjack.WordAlloc.removeDeadStructural input11342 value5 value1 value2 = (output11342, value5675, value1))
    (child11343 : Flapjack.WordAlloc.removeDeadStructural input11343 value5675 value1 value2 = (output11343, value5676, value1)) : Flapjack.WordAlloc.removeDeadStructural input11344 value5 value1 value2 = (output11344, value5676, value1) := by
  rw [input11344_def, output11344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11342]
  dsimp only
  rw [child11343]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11342_skip, output11343_skip]
  kernel_rfl

theorem node11345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11345 value5676 value1 value2 = (output11345, value5677, value1) := by
  rw [input11345_def, output11345_def]
  kernel_rfl

theorem node11346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11346 value5677 value1 value2 = (output11346, value5677, value1) := by
  rw [input11346_def, output11346_def]
  kernel_rfl

theorem node11347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11347 value5677 value1 value2 = (output11347, value5678, value1) := by
  rw [input11347_def, output11347_def]
  kernel_rfl

theorem node11348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11348 value5678 value1 value2 = (output11348, value5679, value1) := by
  rw [input11348_def, output11348_def]
  kernel_rfl

theorem node11349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11349 value5679 value1 value2 = (output11349, value5680, value1) := by
  rw [input11349_def, output11349_def]
  kernel_rfl

theorem node11350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11350 value5680 value1 value2 = (output11350, value5681, value1) := by
  rw [input11350_def, output11350_def]
  kernel_rfl

theorem node11351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11351 value5681 value1 value2 = (output11351, value5, value1) := by
  rw [input11351_def, output11351_def]
  kernel_rfl

theorem node11352_cond_eq
    (child11350 : Flapjack.WordAlloc.removeDeadStructural input11350 value5680 value1 value2 = (output11350, value5681, value1))
    (child11351 : Flapjack.WordAlloc.removeDeadStructural input11351 value5681 value1 value2 = (output11351, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11352 value5680 value1 value2 = (output11352, value5, value1) := by
  rw [input11352_def, output11352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11350]
  dsimp only
  rw [child11351]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11350_skip, output11351_skip]
  kernel_rfl

theorem node11353_cond_eq
    (child11349 : Flapjack.WordAlloc.removeDeadStructural input11349 value5679 value1 value2 = (output11349, value5680, value1))
    (child11352 : Flapjack.WordAlloc.removeDeadStructural input11352 value5680 value1 value2 = (output11352, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11353 value5679 value1 value2 = (output11353, value5, value1) := by
  rw [input11353_def, output11353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11349]
  dsimp only
  rw [child11352]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11349_skip, output11352_skip]
  kernel_rfl

theorem node11354_cond_eq
    (child11348 : Flapjack.WordAlloc.removeDeadStructural input11348 value5678 value1 value2 = (output11348, value5679, value1))
    (child11353 : Flapjack.WordAlloc.removeDeadStructural input11353 value5679 value1 value2 = (output11353, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11354 value5678 value1 value2 = (output11354, value5, value1) := by
  rw [input11354_def, output11354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11348]
  dsimp only
  rw [child11353]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11348_skip, output11353_skip]
  kernel_rfl

theorem node11355_cond_eq
    (child11347 : Flapjack.WordAlloc.removeDeadStructural input11347 value5677 value1 value2 = (output11347, value5678, value1))
    (child11354 : Flapjack.WordAlloc.removeDeadStructural input11354 value5678 value1 value2 = (output11354, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11355 value5677 value1 value2 = (output11355, value5, value1) := by
  rw [input11355_def, output11355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11347]
  dsimp only
  rw [child11354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11347_skip, output11354_skip]
  kernel_rfl

theorem node11356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11356 value5 value1 value2 = (output11356, value5682, value1) := by
  rw [input11356_def, output11356_def]
  kernel_rfl

theorem node11357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11357 value5682 value1 value2 = (output11357, value5683, value1) := by
  rw [input11357_def, output11357_def]
  kernel_rfl

theorem node11358_cond_eq
    (child11356 : Flapjack.WordAlloc.removeDeadStructural input11356 value5 value1 value2 = (output11356, value5682, value1))
    (child11357 : Flapjack.WordAlloc.removeDeadStructural input11357 value5682 value1 value2 = (output11357, value5683, value1)) : Flapjack.WordAlloc.removeDeadStructural input11358 value5 value1 value2 = (output11358, value5683, value1) := by
  rw [input11358_def, output11358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11356]
  dsimp only
  rw [child11357]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11356_skip, output11357_skip]
  kernel_rfl

theorem node11359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11359 value5683 value1 value2 = (output11359, value5684, value1) := by
  rw [input11359_def, output11359_def]
  kernel_rfl

theorem node11360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11360 value5684 value1 value2 = (output11360, value5684, value1) := by
  rw [input11360_def, output11360_def]
  kernel_rfl

theorem node11361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11361 value5684 value1 value2 = (output11361, value5685, value1) := by
  rw [input11361_def, output11361_def]
  kernel_rfl

theorem node11362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11362 value5685 value1 value2 = (output11362, value5686, value1) := by
  rw [input11362_def, output11362_def]
  kernel_rfl

theorem node11363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11363 value5686 value1 value2 = (output11363, value5687, value1) := by
  rw [input11363_def, output11363_def]
  kernel_rfl

theorem node11364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11364 value5687 value1 value2 = (output11364, value5688, value1) := by
  rw [input11364_def, output11364_def]
  kernel_rfl

theorem node11365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11365 value5688 value1 value2 = (output11365, value5, value1) := by
  rw [input11365_def, output11365_def]
  kernel_rfl

theorem node11366_cond_eq
    (child11364 : Flapjack.WordAlloc.removeDeadStructural input11364 value5687 value1 value2 = (output11364, value5688, value1))
    (child11365 : Flapjack.WordAlloc.removeDeadStructural input11365 value5688 value1 value2 = (output11365, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11366 value5687 value1 value2 = (output11366, value5, value1) := by
  rw [input11366_def, output11366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11364]
  dsimp only
  rw [child11365]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11364_skip, output11365_skip]
  kernel_rfl

theorem node11367_cond_eq
    (child11363 : Flapjack.WordAlloc.removeDeadStructural input11363 value5686 value1 value2 = (output11363, value5687, value1))
    (child11366 : Flapjack.WordAlloc.removeDeadStructural input11366 value5687 value1 value2 = (output11366, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11367 value5686 value1 value2 = (output11367, value5, value1) := by
  rw [input11367_def, output11367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11363]
  dsimp only
  rw [child11366]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11363_skip, output11366_skip]
  kernel_rfl

theorem node11368_cond_eq
    (child11362 : Flapjack.WordAlloc.removeDeadStructural input11362 value5685 value1 value2 = (output11362, value5686, value1))
    (child11367 : Flapjack.WordAlloc.removeDeadStructural input11367 value5686 value1 value2 = (output11367, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11368 value5685 value1 value2 = (output11368, value5, value1) := by
  rw [input11368_def, output11368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11362]
  dsimp only
  rw [child11367]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11362_skip, output11367_skip]
  kernel_rfl

theorem node11369_cond_eq
    (child11361 : Flapjack.WordAlloc.removeDeadStructural input11361 value5684 value1 value2 = (output11361, value5685, value1))
    (child11368 : Flapjack.WordAlloc.removeDeadStructural input11368 value5685 value1 value2 = (output11368, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11369 value5684 value1 value2 = (output11369, value5, value1) := by
  rw [input11369_def, output11369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11361]
  dsimp only
  rw [child11368]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11361_skip, output11368_skip]
  kernel_rfl

theorem node11370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11370 value5 value1 value2 = (output11370, value5689, value1) := by
  rw [input11370_def, output11370_def]
  kernel_rfl

theorem node11371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11371 value5689 value1 value2 = (output11371, value5690, value1) := by
  rw [input11371_def, output11371_def]
  kernel_rfl

theorem node11372_cond_eq
    (child11370 : Flapjack.WordAlloc.removeDeadStructural input11370 value5 value1 value2 = (output11370, value5689, value1))
    (child11371 : Flapjack.WordAlloc.removeDeadStructural input11371 value5689 value1 value2 = (output11371, value5690, value1)) : Flapjack.WordAlloc.removeDeadStructural input11372 value5 value1 value2 = (output11372, value5690, value1) := by
  rw [input11372_def, output11372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11370]
  dsimp only
  rw [child11371]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11370_skip, output11371_skip]
  kernel_rfl

theorem node11373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11373 value5690 value1 value2 = (output11373, value5691, value1) := by
  rw [input11373_def, output11373_def]
  kernel_rfl

theorem node11374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11374 value5691 value1 value2 = (output11374, value5691, value1) := by
  rw [input11374_def, output11374_def]
  kernel_rfl

theorem node11375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11375 value5691 value1 value2 = (output11375, value5692, value1) := by
  rw [input11375_def, output11375_def]
  kernel_rfl

theorem node11376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11376 value5692 value1 value2 = (output11376, value5693, value1) := by
  rw [input11376_def, output11376_def]
  kernel_rfl

theorem node11377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11377 value5693 value1 value2 = (output11377, value5694, value1) := by
  rw [input11377_def, output11377_def]
  kernel_rfl

theorem node11378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11378 value5694 value1 value2 = (output11378, value5695, value1) := by
  rw [input11378_def, output11378_def]
  kernel_rfl

theorem node11379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11379 value5695 value1 value2 = (output11379, value5, value1) := by
  rw [input11379_def, output11379_def]
  kernel_rfl

theorem node11380_cond_eq
    (child11378 : Flapjack.WordAlloc.removeDeadStructural input11378 value5694 value1 value2 = (output11378, value5695, value1))
    (child11379 : Flapjack.WordAlloc.removeDeadStructural input11379 value5695 value1 value2 = (output11379, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11380 value5694 value1 value2 = (output11380, value5, value1) := by
  rw [input11380_def, output11380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11378]
  dsimp only
  rw [child11379]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11378_skip, output11379_skip]
  kernel_rfl

theorem node11381_cond_eq
    (child11377 : Flapjack.WordAlloc.removeDeadStructural input11377 value5693 value1 value2 = (output11377, value5694, value1))
    (child11380 : Flapjack.WordAlloc.removeDeadStructural input11380 value5694 value1 value2 = (output11380, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11381 value5693 value1 value2 = (output11381, value5, value1) := by
  rw [input11381_def, output11381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11377]
  dsimp only
  rw [child11380]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11377_skip, output11380_skip]
  kernel_rfl

theorem node11382_cond_eq
    (child11376 : Flapjack.WordAlloc.removeDeadStructural input11376 value5692 value1 value2 = (output11376, value5693, value1))
    (child11381 : Flapjack.WordAlloc.removeDeadStructural input11381 value5693 value1 value2 = (output11381, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11382 value5692 value1 value2 = (output11382, value5, value1) := by
  rw [input11382_def, output11382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11376]
  dsimp only
  rw [child11381]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11376_skip, output11381_skip]
  kernel_rfl

theorem node11383_cond_eq
    (child11375 : Flapjack.WordAlloc.removeDeadStructural input11375 value5691 value1 value2 = (output11375, value5692, value1))
    (child11382 : Flapjack.WordAlloc.removeDeadStructural input11382 value5692 value1 value2 = (output11382, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11383 value5691 value1 value2 = (output11383, value5, value1) := by
  rw [input11383_def, output11383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11375]
  dsimp only
  rw [child11382]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11375_skip, output11382_skip]
  kernel_rfl

theorem node11384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11384 value5 value1 value2 = (output11384, value5696, value1) := by
  rw [input11384_def, output11384_def]
  kernel_rfl

theorem node11385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11385 value5696 value1 value2 = (output11385, value5697, value1) := by
  rw [input11385_def, output11385_def]
  kernel_rfl

theorem node11386_cond_eq
    (child11384 : Flapjack.WordAlloc.removeDeadStructural input11384 value5 value1 value2 = (output11384, value5696, value1))
    (child11385 : Flapjack.WordAlloc.removeDeadStructural input11385 value5696 value1 value2 = (output11385, value5697, value1)) : Flapjack.WordAlloc.removeDeadStructural input11386 value5 value1 value2 = (output11386, value5697, value1) := by
  rw [input11386_def, output11386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11384]
  dsimp only
  rw [child11385]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11384_skip, output11385_skip]
  kernel_rfl

theorem node11387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11387 value5697 value1 value2 = (output11387, value5698, value1) := by
  rw [input11387_def, output11387_def]
  kernel_rfl

theorem node11388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11388 value5698 value1 value2 = (output11388, value5698, value1) := by
  rw [input11388_def, output11388_def]
  kernel_rfl

theorem node11389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11389 value5698 value1 value2 = (output11389, value5699, value1) := by
  rw [input11389_def, output11389_def]
  kernel_rfl

theorem node11390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11390 value5699 value1 value2 = (output11390, value5700, value1) := by
  rw [input11390_def, output11390_def]
  kernel_rfl

theorem node11391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11391 value5700 value1 value2 = (output11391, value5701, value1) := by
  rw [input11391_def, output11391_def]
  kernel_rfl

theorem node11392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11392 value5701 value1 value2 = (output11392, value5702, value1) := by
  rw [input11392_def, output11392_def]
  kernel_rfl

theorem node11393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11393 value5702 value1 value2 = (output11393, value5, value1) := by
  rw [input11393_def, output11393_def]
  kernel_rfl

theorem node11394_cond_eq
    (child11392 : Flapjack.WordAlloc.removeDeadStructural input11392 value5701 value1 value2 = (output11392, value5702, value1))
    (child11393 : Flapjack.WordAlloc.removeDeadStructural input11393 value5702 value1 value2 = (output11393, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11394 value5701 value1 value2 = (output11394, value5, value1) := by
  rw [input11394_def, output11394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11392]
  dsimp only
  rw [child11393]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11392_skip, output11393_skip]
  kernel_rfl

theorem node11395_cond_eq
    (child11391 : Flapjack.WordAlloc.removeDeadStructural input11391 value5700 value1 value2 = (output11391, value5701, value1))
    (child11394 : Flapjack.WordAlloc.removeDeadStructural input11394 value5701 value1 value2 = (output11394, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11395 value5700 value1 value2 = (output11395, value5, value1) := by
  rw [input11395_def, output11395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11391]
  dsimp only
  rw [child11394]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11391_skip, output11394_skip]
  kernel_rfl

theorem node11396_cond_eq
    (child11390 : Flapjack.WordAlloc.removeDeadStructural input11390 value5699 value1 value2 = (output11390, value5700, value1))
    (child11395 : Flapjack.WordAlloc.removeDeadStructural input11395 value5700 value1 value2 = (output11395, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11396 value5699 value1 value2 = (output11396, value5, value1) := by
  rw [input11396_def, output11396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11390]
  dsimp only
  rw [child11395]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11390_skip, output11395_skip]
  kernel_rfl

theorem node11397_cond_eq
    (child11389 : Flapjack.WordAlloc.removeDeadStructural input11389 value5698 value1 value2 = (output11389, value5699, value1))
    (child11396 : Flapjack.WordAlloc.removeDeadStructural input11396 value5699 value1 value2 = (output11396, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11397 value5698 value1 value2 = (output11397, value5, value1) := by
  rw [input11397_def, output11397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11389]
  dsimp only
  rw [child11396]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11389_skip, output11396_skip]
  kernel_rfl

theorem node11398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11398 value5 value1 value2 = (output11398, value5703, value1) := by
  rw [input11398_def, output11398_def]
  kernel_rfl

theorem node11399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11399 value5703 value1 value2 = (output11399, value5704, value1) := by
  rw [input11399_def, output11399_def]
  kernel_rfl

theorem node11400_cond_eq
    (child11398 : Flapjack.WordAlloc.removeDeadStructural input11398 value5 value1 value2 = (output11398, value5703, value1))
    (child11399 : Flapjack.WordAlloc.removeDeadStructural input11399 value5703 value1 value2 = (output11399, value5704, value1)) : Flapjack.WordAlloc.removeDeadStructural input11400 value5 value1 value2 = (output11400, value5704, value1) := by
  rw [input11400_def, output11400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11398]
  dsimp only
  rw [child11399]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11398_skip, output11399_skip]
  kernel_rfl

theorem node11401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11401 value5704 value1 value2 = (output11401, value5705, value1) := by
  rw [input11401_def, output11401_def]
  kernel_rfl

theorem node11402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11402 value5705 value1 value2 = (output11402, value5705, value1) := by
  rw [input11402_def, output11402_def]
  kernel_rfl

theorem node11403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11403 value5705 value1 value2 = (output11403, value5706, value1) := by
  rw [input11403_def, output11403_def]
  kernel_rfl

theorem node11404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11404 value5706 value1 value2 = (output11404, value5707, value1) := by
  rw [input11404_def, output11404_def]
  kernel_rfl

theorem node11405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11405 value5707 value1 value2 = (output11405, value5708, value1) := by
  rw [input11405_def, output11405_def]
  kernel_rfl

theorem node11406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11406 value5708 value1 value2 = (output11406, value5709, value1) := by
  rw [input11406_def, output11406_def]
  kernel_rfl

theorem node11407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11407 value5709 value1 value2 = (output11407, value5, value1) := by
  rw [input11407_def, output11407_def]
  kernel_rfl

theorem node11408_cond_eq
    (child11406 : Flapjack.WordAlloc.removeDeadStructural input11406 value5708 value1 value2 = (output11406, value5709, value1))
    (child11407 : Flapjack.WordAlloc.removeDeadStructural input11407 value5709 value1 value2 = (output11407, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11408 value5708 value1 value2 = (output11408, value5, value1) := by
  rw [input11408_def, output11408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11406]
  dsimp only
  rw [child11407]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11406_skip, output11407_skip]
  kernel_rfl

theorem node11409_cond_eq
    (child11405 : Flapjack.WordAlloc.removeDeadStructural input11405 value5707 value1 value2 = (output11405, value5708, value1))
    (child11408 : Flapjack.WordAlloc.removeDeadStructural input11408 value5708 value1 value2 = (output11408, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11409 value5707 value1 value2 = (output11409, value5, value1) := by
  rw [input11409_def, output11409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11405]
  dsimp only
  rw [child11408]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11405_skip, output11408_skip]
  kernel_rfl

theorem node11410_cond_eq
    (child11404 : Flapjack.WordAlloc.removeDeadStructural input11404 value5706 value1 value2 = (output11404, value5707, value1))
    (child11409 : Flapjack.WordAlloc.removeDeadStructural input11409 value5707 value1 value2 = (output11409, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11410 value5706 value1 value2 = (output11410, value5, value1) := by
  rw [input11410_def, output11410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11404]
  dsimp only
  rw [child11409]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11404_skip, output11409_skip]
  kernel_rfl

theorem node11411_cond_eq
    (child11403 : Flapjack.WordAlloc.removeDeadStructural input11403 value5705 value1 value2 = (output11403, value5706, value1))
    (child11410 : Flapjack.WordAlloc.removeDeadStructural input11410 value5706 value1 value2 = (output11410, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11411 value5705 value1 value2 = (output11411, value5, value1) := by
  rw [input11411_def, output11411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11403]
  dsimp only
  rw [child11410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11403_skip, output11410_skip]
  kernel_rfl

theorem node11412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11412 value5 value1 value2 = (output11412, value5710, value1) := by
  rw [input11412_def, output11412_def]
  kernel_rfl

theorem node11413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11413 value5710 value1 value2 = (output11413, value5711, value1) := by
  rw [input11413_def, output11413_def]
  kernel_rfl

theorem node11414_cond_eq
    (child11412 : Flapjack.WordAlloc.removeDeadStructural input11412 value5 value1 value2 = (output11412, value5710, value1))
    (child11413 : Flapjack.WordAlloc.removeDeadStructural input11413 value5710 value1 value2 = (output11413, value5711, value1)) : Flapjack.WordAlloc.removeDeadStructural input11414 value5 value1 value2 = (output11414, value5711, value1) := by
  rw [input11414_def, output11414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11412]
  dsimp only
  rw [child11413]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11412_skip, output11413_skip]
  kernel_rfl

theorem node11415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11415 value5711 value1 value2 = (output11415, value5712, value1) := by
  rw [input11415_def, output11415_def]
  kernel_rfl

theorem node11416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11416 value5712 value1 value2 = (output11416, value5712, value1) := by
  rw [input11416_def, output11416_def]
  kernel_rfl

theorem node11417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11417 value5712 value1 value2 = (output11417, value5713, value1) := by
  rw [input11417_def, output11417_def]
  kernel_rfl

theorem node11418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11418 value5713 value1 value2 = (output11418, value5714, value1) := by
  rw [input11418_def, output11418_def]
  kernel_rfl

theorem node11419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11419 value5714 value1 value2 = (output11419, value5715, value1) := by
  rw [input11419_def, output11419_def]
  kernel_rfl

theorem node11420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11420 value5715 value1 value2 = (output11420, value5716, value1) := by
  rw [input11420_def, output11420_def]
  kernel_rfl

theorem node11421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11421 value5716 value1 value2 = (output11421, value5, value1) := by
  rw [input11421_def, output11421_def]
  kernel_rfl

theorem node11422_cond_eq
    (child11420 : Flapjack.WordAlloc.removeDeadStructural input11420 value5715 value1 value2 = (output11420, value5716, value1))
    (child11421 : Flapjack.WordAlloc.removeDeadStructural input11421 value5716 value1 value2 = (output11421, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11422 value5715 value1 value2 = (output11422, value5, value1) := by
  rw [input11422_def, output11422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11420]
  dsimp only
  rw [child11421]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11420_skip, output11421_skip]
  kernel_rfl

theorem node11423_cond_eq
    (child11419 : Flapjack.WordAlloc.removeDeadStructural input11419 value5714 value1 value2 = (output11419, value5715, value1))
    (child11422 : Flapjack.WordAlloc.removeDeadStructural input11422 value5715 value1 value2 = (output11422, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11423 value5714 value1 value2 = (output11423, value5, value1) := by
  rw [input11423_def, output11423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11419]
  dsimp only
  rw [child11422]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11419_skip, output11422_skip]
  kernel_rfl

theorem node11424_cond_eq
    (child11418 : Flapjack.WordAlloc.removeDeadStructural input11418 value5713 value1 value2 = (output11418, value5714, value1))
    (child11423 : Flapjack.WordAlloc.removeDeadStructural input11423 value5714 value1 value2 = (output11423, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11424 value5713 value1 value2 = (output11424, value5, value1) := by
  rw [input11424_def, output11424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11418]
  dsimp only
  rw [child11423]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11418_skip, output11423_skip]
  kernel_rfl

theorem node11425_cond_eq
    (child11417 : Flapjack.WordAlloc.removeDeadStructural input11417 value5712 value1 value2 = (output11417, value5713, value1))
    (child11424 : Flapjack.WordAlloc.removeDeadStructural input11424 value5713 value1 value2 = (output11424, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11425 value5712 value1 value2 = (output11425, value5, value1) := by
  rw [input11425_def, output11425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11417]
  dsimp only
  rw [child11424]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11417_skip, output11424_skip]
  kernel_rfl

theorem node11426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11426 value5 value1 value2 = (output11426, value5717, value1) := by
  rw [input11426_def, output11426_def]
  kernel_rfl

theorem node11427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11427 value5717 value1 value2 = (output11427, value5718, value1) := by
  rw [input11427_def, output11427_def]
  kernel_rfl

theorem node11428_cond_eq
    (child11426 : Flapjack.WordAlloc.removeDeadStructural input11426 value5 value1 value2 = (output11426, value5717, value1))
    (child11427 : Flapjack.WordAlloc.removeDeadStructural input11427 value5717 value1 value2 = (output11427, value5718, value1)) : Flapjack.WordAlloc.removeDeadStructural input11428 value5 value1 value2 = (output11428, value5718, value1) := by
  rw [input11428_def, output11428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11426]
  dsimp only
  rw [child11427]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11426_skip, output11427_skip]
  kernel_rfl

theorem node11429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11429 value5718 value1 value2 = (output11429, value5719, value1) := by
  rw [input11429_def, output11429_def]
  kernel_rfl

theorem node11430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11430 value5719 value1 value2 = (output11430, value5719, value1) := by
  rw [input11430_def, output11430_def]
  kernel_rfl

theorem node11431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11431 value5719 value1 value2 = (output11431, value5720, value1) := by
  rw [input11431_def, output11431_def]
  kernel_rfl

theorem node11432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11432 value5720 value1 value2 = (output11432, value5721, value1) := by
  rw [input11432_def, output11432_def]
  kernel_rfl

theorem node11433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11433 value5721 value1 value2 = (output11433, value5722, value1) := by
  rw [input11433_def, output11433_def]
  kernel_rfl

theorem node11434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11434 value5722 value1 value2 = (output11434, value5723, value1) := by
  rw [input11434_def, output11434_def]
  kernel_rfl

theorem node11435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11435 value5723 value1 value2 = (output11435, value5, value1) := by
  rw [input11435_def, output11435_def]
  kernel_rfl

theorem node11436_cond_eq
    (child11434 : Flapjack.WordAlloc.removeDeadStructural input11434 value5722 value1 value2 = (output11434, value5723, value1))
    (child11435 : Flapjack.WordAlloc.removeDeadStructural input11435 value5723 value1 value2 = (output11435, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11436 value5722 value1 value2 = (output11436, value5, value1) := by
  rw [input11436_def, output11436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11434]
  dsimp only
  rw [child11435]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11434_skip, output11435_skip]
  kernel_rfl

theorem node11437_cond_eq
    (child11433 : Flapjack.WordAlloc.removeDeadStructural input11433 value5721 value1 value2 = (output11433, value5722, value1))
    (child11436 : Flapjack.WordAlloc.removeDeadStructural input11436 value5722 value1 value2 = (output11436, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11437 value5721 value1 value2 = (output11437, value5, value1) := by
  rw [input11437_def, output11437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11433]
  dsimp only
  rw [child11436]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11433_skip, output11436_skip]
  kernel_rfl

theorem node11438_cond_eq
    (child11432 : Flapjack.WordAlloc.removeDeadStructural input11432 value5720 value1 value2 = (output11432, value5721, value1))
    (child11437 : Flapjack.WordAlloc.removeDeadStructural input11437 value5721 value1 value2 = (output11437, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11438 value5720 value1 value2 = (output11438, value5, value1) := by
  rw [input11438_def, output11438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11432]
  dsimp only
  rw [child11437]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11432_skip, output11437_skip]
  kernel_rfl

theorem node11439_cond_eq
    (child11431 : Flapjack.WordAlloc.removeDeadStructural input11431 value5719 value1 value2 = (output11431, value5720, value1))
    (child11438 : Flapjack.WordAlloc.removeDeadStructural input11438 value5720 value1 value2 = (output11438, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11439 value5719 value1 value2 = (output11439, value5, value1) := by
  rw [input11439_def, output11439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11431]
  dsimp only
  rw [child11438]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11431_skip, output11438_skip]
  kernel_rfl

theorem node11440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11440 value5 value1 value2 = (output11440, value5724, value1) := by
  rw [input11440_def, output11440_def]
  kernel_rfl

theorem node11441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11441 value5724 value1 value2 = (output11441, value5725, value1) := by
  rw [input11441_def, output11441_def]
  kernel_rfl

theorem node11442_cond_eq
    (child11440 : Flapjack.WordAlloc.removeDeadStructural input11440 value5 value1 value2 = (output11440, value5724, value1))
    (child11441 : Flapjack.WordAlloc.removeDeadStructural input11441 value5724 value1 value2 = (output11441, value5725, value1)) : Flapjack.WordAlloc.removeDeadStructural input11442 value5 value1 value2 = (output11442, value5725, value1) := by
  rw [input11442_def, output11442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11440]
  dsimp only
  rw [child11441]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11440_skip, output11441_skip]
  kernel_rfl

theorem node11443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11443 value5725 value1 value2 = (output11443, value5726, value1) := by
  rw [input11443_def, output11443_def]
  kernel_rfl

theorem node11444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11444 value5726 value1 value2 = (output11444, value5726, value1) := by
  rw [input11444_def, output11444_def]
  kernel_rfl

theorem node11445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11445 value5726 value1 value2 = (output11445, value5727, value1) := by
  rw [input11445_def, output11445_def]
  kernel_rfl

theorem node11446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11446 value5727 value1 value2 = (output11446, value5728, value1) := by
  rw [input11446_def, output11446_def]
  kernel_rfl

theorem node11447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11447 value5728 value1 value2 = (output11447, value5729, value1) := by
  rw [input11447_def, output11447_def]
  kernel_rfl

theorem node11448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11448 value5729 value1 value2 = (output11448, value5730, value1) := by
  rw [input11448_def, output11448_def]
  kernel_rfl

theorem node11449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11449 value5730 value1 value2 = (output11449, value5, value1) := by
  rw [input11449_def, output11449_def]
  kernel_rfl

theorem node11450_cond_eq
    (child11448 : Flapjack.WordAlloc.removeDeadStructural input11448 value5729 value1 value2 = (output11448, value5730, value1))
    (child11449 : Flapjack.WordAlloc.removeDeadStructural input11449 value5730 value1 value2 = (output11449, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11450 value5729 value1 value2 = (output11450, value5, value1) := by
  rw [input11450_def, output11450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11448]
  dsimp only
  rw [child11449]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11448_skip, output11449_skip]
  kernel_rfl

theorem node11451_cond_eq
    (child11447 : Flapjack.WordAlloc.removeDeadStructural input11447 value5728 value1 value2 = (output11447, value5729, value1))
    (child11450 : Flapjack.WordAlloc.removeDeadStructural input11450 value5729 value1 value2 = (output11450, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11451 value5728 value1 value2 = (output11451, value5, value1) := by
  rw [input11451_def, output11451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11447]
  dsimp only
  rw [child11450]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11447_skip, output11450_skip]
  kernel_rfl

theorem node11452_cond_eq
    (child11446 : Flapjack.WordAlloc.removeDeadStructural input11446 value5727 value1 value2 = (output11446, value5728, value1))
    (child11451 : Flapjack.WordAlloc.removeDeadStructural input11451 value5728 value1 value2 = (output11451, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11452 value5727 value1 value2 = (output11452, value5, value1) := by
  rw [input11452_def, output11452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11446]
  dsimp only
  rw [child11451]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11446_skip, output11451_skip]
  kernel_rfl

theorem node11453_cond_eq
    (child11445 : Flapjack.WordAlloc.removeDeadStructural input11445 value5726 value1 value2 = (output11445, value5727, value1))
    (child11452 : Flapjack.WordAlloc.removeDeadStructural input11452 value5727 value1 value2 = (output11452, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11453 value5726 value1 value2 = (output11453, value5, value1) := by
  rw [input11453_def, output11453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11445]
  dsimp only
  rw [child11452]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11445_skip, output11452_skip]
  kernel_rfl

theorem node11454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11454 value5 value1 value2 = (output11454, value5731, value1) := by
  rw [input11454_def, output11454_def]
  kernel_rfl

theorem node11455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11455 value5731 value1 value2 = (output11455, value5732, value1) := by
  rw [input11455_def, output11455_def]
  kernel_rfl

theorem node11456_cond_eq
    (child11454 : Flapjack.WordAlloc.removeDeadStructural input11454 value5 value1 value2 = (output11454, value5731, value1))
    (child11455 : Flapjack.WordAlloc.removeDeadStructural input11455 value5731 value1 value2 = (output11455, value5732, value1)) : Flapjack.WordAlloc.removeDeadStructural input11456 value5 value1 value2 = (output11456, value5732, value1) := by
  rw [input11456_def, output11456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11454]
  dsimp only
  rw [child11455]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11454_skip, output11455_skip]
  kernel_rfl

theorem node11457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11457 value5732 value1 value2 = (output11457, value5733, value1) := by
  rw [input11457_def, output11457_def]
  kernel_rfl

theorem node11458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11458 value5733 value1 value2 = (output11458, value5733, value1) := by
  rw [input11458_def, output11458_def]
  kernel_rfl

theorem node11459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11459 value5733 value1 value2 = (output11459, value5734, value1) := by
  rw [input11459_def, output11459_def]
  kernel_rfl

theorem node11460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11460 value5734 value1 value2 = (output11460, value5735, value1) := by
  rw [input11460_def, output11460_def]
  kernel_rfl

theorem node11461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11461 value5735 value1 value2 = (output11461, value5736, value1) := by
  rw [input11461_def, output11461_def]
  kernel_rfl

theorem node11462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11462 value5736 value1 value2 = (output11462, value5737, value1) := by
  rw [input11462_def, output11462_def]
  kernel_rfl

theorem node11463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11463 value5737 value1 value2 = (output11463, value5, value1) := by
  rw [input11463_def, output11463_def]
  kernel_rfl

theorem node11464_cond_eq
    (child11462 : Flapjack.WordAlloc.removeDeadStructural input11462 value5736 value1 value2 = (output11462, value5737, value1))
    (child11463 : Flapjack.WordAlloc.removeDeadStructural input11463 value5737 value1 value2 = (output11463, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11464 value5736 value1 value2 = (output11464, value5, value1) := by
  rw [input11464_def, output11464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11462]
  dsimp only
  rw [child11463]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11462_skip, output11463_skip]
  kernel_rfl

theorem node11465_cond_eq
    (child11461 : Flapjack.WordAlloc.removeDeadStructural input11461 value5735 value1 value2 = (output11461, value5736, value1))
    (child11464 : Flapjack.WordAlloc.removeDeadStructural input11464 value5736 value1 value2 = (output11464, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11465 value5735 value1 value2 = (output11465, value5, value1) := by
  rw [input11465_def, output11465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11461]
  dsimp only
  rw [child11464]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11461_skip, output11464_skip]
  kernel_rfl

theorem node11466_cond_eq
    (child11460 : Flapjack.WordAlloc.removeDeadStructural input11460 value5734 value1 value2 = (output11460, value5735, value1))
    (child11465 : Flapjack.WordAlloc.removeDeadStructural input11465 value5735 value1 value2 = (output11465, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11466 value5734 value1 value2 = (output11466, value5, value1) := by
  rw [input11466_def, output11466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11460]
  dsimp only
  rw [child11465]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11460_skip, output11465_skip]
  kernel_rfl

theorem node11467_cond_eq
    (child11459 : Flapjack.WordAlloc.removeDeadStructural input11459 value5733 value1 value2 = (output11459, value5734, value1))
    (child11466 : Flapjack.WordAlloc.removeDeadStructural input11466 value5734 value1 value2 = (output11466, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11467 value5733 value1 value2 = (output11467, value5, value1) := by
  rw [input11467_def, output11467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11459]
  dsimp only
  rw [child11466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11459_skip, output11466_skip]
  kernel_rfl

theorem node11468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11468 value5 value1 value2 = (output11468, value5738, value1) := by
  rw [input11468_def, output11468_def]
  kernel_rfl

theorem node11469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11469 value5738 value1 value2 = (output11469, value5739, value1) := by
  rw [input11469_def, output11469_def]
  kernel_rfl

theorem node11470_cond_eq
    (child11468 : Flapjack.WordAlloc.removeDeadStructural input11468 value5 value1 value2 = (output11468, value5738, value1))
    (child11469 : Flapjack.WordAlloc.removeDeadStructural input11469 value5738 value1 value2 = (output11469, value5739, value1)) : Flapjack.WordAlloc.removeDeadStructural input11470 value5 value1 value2 = (output11470, value5739, value1) := by
  rw [input11470_def, output11470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11468]
  dsimp only
  rw [child11469]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11468_skip, output11469_skip]
  kernel_rfl

theorem node11471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11471 value5739 value1 value2 = (output11471, value5740, value1) := by
  rw [input11471_def, output11471_def]
  kernel_rfl

theorem node11472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11472 value5740 value1 value2 = (output11472, value5740, value1) := by
  rw [input11472_def, output11472_def]
  kernel_rfl

theorem node11473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11473 value5740 value1 value2 = (output11473, value5741, value1) := by
  rw [input11473_def, output11473_def]
  kernel_rfl

theorem node11474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11474 value5741 value1 value2 = (output11474, value5742, value1) := by
  rw [input11474_def, output11474_def]
  kernel_rfl

theorem node11475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11475 value5742 value1 value2 = (output11475, value5743, value1) := by
  rw [input11475_def, output11475_def]
  kernel_rfl

theorem node11476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11476 value5743 value1 value2 = (output11476, value5744, value1) := by
  rw [input11476_def, output11476_def]
  kernel_rfl

theorem node11477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11477 value5744 value1 value2 = (output11477, value5, value1) := by
  rw [input11477_def, output11477_def]
  kernel_rfl

theorem node11478_cond_eq
    (child11476 : Flapjack.WordAlloc.removeDeadStructural input11476 value5743 value1 value2 = (output11476, value5744, value1))
    (child11477 : Flapjack.WordAlloc.removeDeadStructural input11477 value5744 value1 value2 = (output11477, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11478 value5743 value1 value2 = (output11478, value5, value1) := by
  rw [input11478_def, output11478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11476]
  dsimp only
  rw [child11477]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11476_skip, output11477_skip]
  kernel_rfl

theorem node11479_cond_eq
    (child11475 : Flapjack.WordAlloc.removeDeadStructural input11475 value5742 value1 value2 = (output11475, value5743, value1))
    (child11478 : Flapjack.WordAlloc.removeDeadStructural input11478 value5743 value1 value2 = (output11478, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11479 value5742 value1 value2 = (output11479, value5, value1) := by
  rw [input11479_def, output11479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11475]
  dsimp only
  rw [child11478]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11475_skip, output11478_skip]
  kernel_rfl

theorem node11480_cond_eq
    (child11474 : Flapjack.WordAlloc.removeDeadStructural input11474 value5741 value1 value2 = (output11474, value5742, value1))
    (child11479 : Flapjack.WordAlloc.removeDeadStructural input11479 value5742 value1 value2 = (output11479, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11480 value5741 value1 value2 = (output11480, value5, value1) := by
  rw [input11480_def, output11480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11474]
  dsimp only
  rw [child11479]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11474_skip, output11479_skip]
  kernel_rfl

theorem node11481_cond_eq
    (child11473 : Flapjack.WordAlloc.removeDeadStructural input11473 value5740 value1 value2 = (output11473, value5741, value1))
    (child11480 : Flapjack.WordAlloc.removeDeadStructural input11480 value5741 value1 value2 = (output11480, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11481 value5740 value1 value2 = (output11481, value5, value1) := by
  rw [input11481_def, output11481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11473]
  dsimp only
  rw [child11480]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11473_skip, output11480_skip]
  kernel_rfl

theorem node11482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11482 value5 value1 value2 = (output11482, value5745, value1) := by
  rw [input11482_def, output11482_def]
  kernel_rfl

theorem node11483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11483 value5745 value1 value2 = (output11483, value5746, value1) := by
  rw [input11483_def, output11483_def]
  kernel_rfl

theorem node11484_cond_eq
    (child11482 : Flapjack.WordAlloc.removeDeadStructural input11482 value5 value1 value2 = (output11482, value5745, value1))
    (child11483 : Flapjack.WordAlloc.removeDeadStructural input11483 value5745 value1 value2 = (output11483, value5746, value1)) : Flapjack.WordAlloc.removeDeadStructural input11484 value5 value1 value2 = (output11484, value5746, value1) := by
  rw [input11484_def, output11484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11482]
  dsimp only
  rw [child11483]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11482_skip, output11483_skip]
  kernel_rfl

theorem node11485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11485 value5746 value1 value2 = (output11485, value5747, value1) := by
  rw [input11485_def, output11485_def]
  kernel_rfl

theorem node11486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11486 value5747 value1 value2 = (output11486, value5747, value1) := by
  rw [input11486_def, output11486_def]
  kernel_rfl

theorem node11487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11487 value5747 value1 value2 = (output11487, value5748, value1) := by
  rw [input11487_def, output11487_def]
  kernel_rfl

theorem node11488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11488 value5748 value1 value2 = (output11488, value5749, value1) := by
  rw [input11488_def, output11488_def]
  kernel_rfl

theorem node11489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11489 value5749 value1 value2 = (output11489, value5750, value1) := by
  rw [input11489_def, output11489_def]
  kernel_rfl

theorem node11490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11490 value5750 value1 value2 = (output11490, value5751, value1) := by
  rw [input11490_def, output11490_def]
  kernel_rfl

theorem node11491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11491 value5751 value1 value2 = (output11491, value5, value1) := by
  rw [input11491_def, output11491_def]
  kernel_rfl

theorem node11492_cond_eq
    (child11490 : Flapjack.WordAlloc.removeDeadStructural input11490 value5750 value1 value2 = (output11490, value5751, value1))
    (child11491 : Flapjack.WordAlloc.removeDeadStructural input11491 value5751 value1 value2 = (output11491, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11492 value5750 value1 value2 = (output11492, value5, value1) := by
  rw [input11492_def, output11492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11490]
  dsimp only
  rw [child11491]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11490_skip, output11491_skip]
  kernel_rfl

theorem node11493_cond_eq
    (child11489 : Flapjack.WordAlloc.removeDeadStructural input11489 value5749 value1 value2 = (output11489, value5750, value1))
    (child11492 : Flapjack.WordAlloc.removeDeadStructural input11492 value5750 value1 value2 = (output11492, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11493 value5749 value1 value2 = (output11493, value5, value1) := by
  rw [input11493_def, output11493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11489]
  dsimp only
  rw [child11492]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11489_skip, output11492_skip]
  kernel_rfl

theorem node11494_cond_eq
    (child11488 : Flapjack.WordAlloc.removeDeadStructural input11488 value5748 value1 value2 = (output11488, value5749, value1))
    (child11493 : Flapjack.WordAlloc.removeDeadStructural input11493 value5749 value1 value2 = (output11493, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11494 value5748 value1 value2 = (output11494, value5, value1) := by
  rw [input11494_def, output11494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11488]
  dsimp only
  rw [child11493]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11488_skip, output11493_skip]
  kernel_rfl

theorem node11495_cond_eq
    (child11487 : Flapjack.WordAlloc.removeDeadStructural input11487 value5747 value1 value2 = (output11487, value5748, value1))
    (child11494 : Flapjack.WordAlloc.removeDeadStructural input11494 value5748 value1 value2 = (output11494, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11495 value5747 value1 value2 = (output11495, value5, value1) := by
  rw [input11495_def, output11495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11487]
  dsimp only
  rw [child11494]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11487_skip, output11494_skip]
  kernel_rfl

theorem node11496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11496 value5 value1 value2 = (output11496, value5752, value1) := by
  rw [input11496_def, output11496_def]
  kernel_rfl

theorem node11497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11497 value5752 value1 value2 = (output11497, value5753, value1) := by
  rw [input11497_def, output11497_def]
  kernel_rfl

theorem node11498_cond_eq
    (child11496 : Flapjack.WordAlloc.removeDeadStructural input11496 value5 value1 value2 = (output11496, value5752, value1))
    (child11497 : Flapjack.WordAlloc.removeDeadStructural input11497 value5752 value1 value2 = (output11497, value5753, value1)) : Flapjack.WordAlloc.removeDeadStructural input11498 value5 value1 value2 = (output11498, value5753, value1) := by
  rw [input11498_def, output11498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11496]
  dsimp only
  rw [child11497]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11496_skip, output11497_skip]
  kernel_rfl

theorem node11499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11499 value5753 value1 value2 = (output11499, value5754, value1) := by
  rw [input11499_def, output11499_def]
  kernel_rfl

theorem node11500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11500 value5754 value1 value2 = (output11500, value5754, value1) := by
  rw [input11500_def, output11500_def]
  kernel_rfl

theorem node11501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11501 value5754 value1 value2 = (output11501, value5755, value1) := by
  rw [input11501_def, output11501_def]
  kernel_rfl

theorem node11502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11502 value5755 value1 value2 = (output11502, value5756, value1) := by
  rw [input11502_def, output11502_def]
  kernel_rfl

theorem node11503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11503 value5756 value1 value2 = (output11503, value5757, value1) := by
  rw [input11503_def, output11503_def]
  kernel_rfl

theorem node11504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11504 value5757 value1 value2 = (output11504, value5758, value1) := by
  rw [input11504_def, output11504_def]
  kernel_rfl

theorem node11505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11505 value5758 value1 value2 = (output11505, value5, value1) := by
  rw [input11505_def, output11505_def]
  kernel_rfl

theorem node11506_cond_eq
    (child11504 : Flapjack.WordAlloc.removeDeadStructural input11504 value5757 value1 value2 = (output11504, value5758, value1))
    (child11505 : Flapjack.WordAlloc.removeDeadStructural input11505 value5758 value1 value2 = (output11505, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11506 value5757 value1 value2 = (output11506, value5, value1) := by
  rw [input11506_def, output11506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11504]
  dsimp only
  rw [child11505]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11504_skip, output11505_skip]
  kernel_rfl

theorem node11507_cond_eq
    (child11503 : Flapjack.WordAlloc.removeDeadStructural input11503 value5756 value1 value2 = (output11503, value5757, value1))
    (child11506 : Flapjack.WordAlloc.removeDeadStructural input11506 value5757 value1 value2 = (output11506, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11507 value5756 value1 value2 = (output11507, value5, value1) := by
  rw [input11507_def, output11507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11503]
  dsimp only
  rw [child11506]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11503_skip, output11506_skip]
  kernel_rfl

theorem node11508_cond_eq
    (child11502 : Flapjack.WordAlloc.removeDeadStructural input11502 value5755 value1 value2 = (output11502, value5756, value1))
    (child11507 : Flapjack.WordAlloc.removeDeadStructural input11507 value5756 value1 value2 = (output11507, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11508 value5755 value1 value2 = (output11508, value5, value1) := by
  rw [input11508_def, output11508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11502]
  dsimp only
  rw [child11507]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11502_skip, output11507_skip]
  kernel_rfl

theorem node11509_cond_eq
    (child11501 : Flapjack.WordAlloc.removeDeadStructural input11501 value5754 value1 value2 = (output11501, value5755, value1))
    (child11508 : Flapjack.WordAlloc.removeDeadStructural input11508 value5755 value1 value2 = (output11508, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11509 value5754 value1 value2 = (output11509, value5, value1) := by
  rw [input11509_def, output11509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11501]
  dsimp only
  rw [child11508]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11501_skip, output11508_skip]
  kernel_rfl

theorem node11510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11510 value5 value1 value2 = (output11510, value5759, value1) := by
  rw [input11510_def, output11510_def]
  kernel_rfl

theorem node11511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11511 value5759 value1 value2 = (output11511, value5760, value1) := by
  rw [input11511_def, output11511_def]
  kernel_rfl

theorem node11512_cond_eq
    (child11510 : Flapjack.WordAlloc.removeDeadStructural input11510 value5 value1 value2 = (output11510, value5759, value1))
    (child11511 : Flapjack.WordAlloc.removeDeadStructural input11511 value5759 value1 value2 = (output11511, value5760, value1)) : Flapjack.WordAlloc.removeDeadStructural input11512 value5 value1 value2 = (output11512, value5760, value1) := by
  rw [input11512_def, output11512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11510]
  dsimp only
  rw [child11511]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11510_skip, output11511_skip]
  kernel_rfl

theorem node11513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11513 value5760 value1 value2 = (output11513, value5761, value1) := by
  rw [input11513_def, output11513_def]
  kernel_rfl

theorem node11514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11514 value5761 value1 value2 = (output11514, value5761, value1) := by
  rw [input11514_def, output11514_def]
  kernel_rfl

theorem node11515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11515 value5761 value1 value2 = (output11515, value5762, value1) := by
  rw [input11515_def, output11515_def]
  kernel_rfl

theorem node11516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11516 value5762 value1 value2 = (output11516, value5763, value1) := by
  rw [input11516_def, output11516_def]
  kernel_rfl

theorem node11517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11517 value5763 value1 value2 = (output11517, value5764, value1) := by
  rw [input11517_def, output11517_def]
  kernel_rfl

theorem node11518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11518 value5764 value1 value2 = (output11518, value5765, value1) := by
  rw [input11518_def, output11518_def]
  kernel_rfl

theorem node11519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11519 value5765 value1 value2 = (output11519, value5, value1) := by
  rw [input11519_def, output11519_def]
  kernel_rfl

#print axioms node11519_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
