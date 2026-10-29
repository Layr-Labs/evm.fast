import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk063
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node16128_cond_eq
    (child5110 : Flapjack.WordAlloc.removeDeadStructural input5110 value5 value1 value2 = (output5110, value2559, value1))
    (child16127 : Flapjack.WordAlloc.removeDeadStructural input16127 value2559 value1 value2 = (output16127, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16128 value5 value1 value2 = (output16128, value6896, value1) := by
  rw [input16128_def, output16128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5110]
  try dsimp only
  rw [child16127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5110_skip, output16127_skip]
  kernel_rfl

theorem node16129_cond_eq
    (child5107 : Flapjack.WordAlloc.removeDeadStructural input5107 value2552 value1 value2 = (output5107, value5, value1))
    (child16128 : Flapjack.WordAlloc.removeDeadStructural input16128 value5 value1 value2 = (output16128, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16129 value2552 value1 value2 = (output16129, value6896, value1) := by
  rw [input16129_def, output16129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5107]
  try dsimp only
  rw [child16128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5107_skip, output16128_skip]
  kernel_rfl

theorem node16130_cond_eq
    (child5096 : Flapjack.WordAlloc.removeDeadStructural input5096 value2552 value1 value2 = (output5096, value2552, value1))
    (child16129 : Flapjack.WordAlloc.removeDeadStructural input16129 value2552 value1 value2 = (output16129, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16130 value2552 value1 value2 = (output16130, value6896, value1) := by
  rw [input16130_def, output16130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5096]
  try dsimp only
  rw [child16129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5096_skip, output16129_skip]
  kernel_rfl

theorem node16131_cond_eq
    (child5095 : Flapjack.WordAlloc.removeDeadStructural input5095 value2551 value1 value2 = (output5095, value2552, value1))
    (child16130 : Flapjack.WordAlloc.removeDeadStructural input16130 value2552 value1 value2 = (output16130, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16131 value2551 value1 value2 = (output16131, value6896, value1) := by
  rw [input16131_def, output16131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5095]
  try dsimp only
  rw [child16130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5095_skip, output16130_skip]
  kernel_rfl

theorem node16132_cond_eq
    (child5094 : Flapjack.WordAlloc.removeDeadStructural input5094 value5 value1 value2 = (output5094, value2551, value1))
    (child16131 : Flapjack.WordAlloc.removeDeadStructural input16131 value2551 value1 value2 = (output16131, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16132 value5 value1 value2 = (output16132, value6896, value1) := by
  rw [input16132_def, output16132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5094]
  try dsimp only
  rw [child16131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5094_skip, output16131_skip]
  kernel_rfl

theorem node16133_cond_eq
    (child5091 : Flapjack.WordAlloc.removeDeadStructural input5091 value2544 value1 value2 = (output5091, value5, value1))
    (child16132 : Flapjack.WordAlloc.removeDeadStructural input16132 value5 value1 value2 = (output16132, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16133 value2544 value1 value2 = (output16133, value6896, value1) := by
  rw [input16133_def, output16133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5091]
  try dsimp only
  rw [child16132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5091_skip, output16132_skip]
  kernel_rfl

theorem node16134_cond_eq
    (child5080 : Flapjack.WordAlloc.removeDeadStructural input5080 value2544 value1 value2 = (output5080, value2544, value1))
    (child16133 : Flapjack.WordAlloc.removeDeadStructural input16133 value2544 value1 value2 = (output16133, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16134 value2544 value1 value2 = (output16134, value6896, value1) := by
  rw [input16134_def, output16134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5080]
  try dsimp only
  rw [child16133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5080_skip, output16133_skip]
  kernel_rfl

theorem node16135_cond_eq
    (child5079 : Flapjack.WordAlloc.removeDeadStructural input5079 value2543 value1 value2 = (output5079, value2544, value1))
    (child16134 : Flapjack.WordAlloc.removeDeadStructural input16134 value2544 value1 value2 = (output16134, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16135 value2543 value1 value2 = (output16135, value6896, value1) := by
  rw [input16135_def, output16135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5079]
  try dsimp only
  rw [child16134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5079_skip, output16134_skip]
  kernel_rfl

theorem node16136_cond_eq
    (child5078 : Flapjack.WordAlloc.removeDeadStructural input5078 value5 value1 value2 = (output5078, value2543, value1))
    (child16135 : Flapjack.WordAlloc.removeDeadStructural input16135 value2543 value1 value2 = (output16135, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16136 value5 value1 value2 = (output16136, value6896, value1) := by
  rw [input16136_def, output16136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5078]
  try dsimp only
  rw [child16135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5078_skip, output16135_skip]
  kernel_rfl

theorem node16137_cond_eq
    (child5075 : Flapjack.WordAlloc.removeDeadStructural input5075 value2536 value1 value2 = (output5075, value5, value1))
    (child16136 : Flapjack.WordAlloc.removeDeadStructural input16136 value5 value1 value2 = (output16136, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16137 value2536 value1 value2 = (output16137, value6896, value1) := by
  rw [input16137_def, output16137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5075]
  try dsimp only
  rw [child16136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5075_skip, output16136_skip]
  kernel_rfl

theorem node16138_cond_eq
    (child5064 : Flapjack.WordAlloc.removeDeadStructural input5064 value2536 value1 value2 = (output5064, value2536, value1))
    (child16137 : Flapjack.WordAlloc.removeDeadStructural input16137 value2536 value1 value2 = (output16137, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16138 value2536 value1 value2 = (output16138, value6896, value1) := by
  rw [input16138_def, output16138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5064]
  try dsimp only
  rw [child16137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5064_skip, output16137_skip]
  kernel_rfl

theorem node16139_cond_eq
    (child5063 : Flapjack.WordAlloc.removeDeadStructural input5063 value2535 value1 value2 = (output5063, value2536, value1))
    (child16138 : Flapjack.WordAlloc.removeDeadStructural input16138 value2536 value1 value2 = (output16138, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16139 value2535 value1 value2 = (output16139, value6896, value1) := by
  rw [input16139_def, output16139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5063]
  try dsimp only
  rw [child16138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5063_skip, output16138_skip]
  kernel_rfl

theorem node16140_cond_eq
    (child5062 : Flapjack.WordAlloc.removeDeadStructural input5062 value5 value1 value2 = (output5062, value2535, value1))
    (child16139 : Flapjack.WordAlloc.removeDeadStructural input16139 value2535 value1 value2 = (output16139, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16140 value5 value1 value2 = (output16140, value6896, value1) := by
  rw [input16140_def, output16140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5062]
  try dsimp only
  rw [child16139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5062_skip, output16139_skip]
  kernel_rfl

theorem node16141_cond_eq
    (child5059 : Flapjack.WordAlloc.removeDeadStructural input5059 value2528 value1 value2 = (output5059, value5, value1))
    (child16140 : Flapjack.WordAlloc.removeDeadStructural input16140 value5 value1 value2 = (output16140, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16141 value2528 value1 value2 = (output16141, value6896, value1) := by
  rw [input16141_def, output16141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5059]
  try dsimp only
  rw [child16140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5059_skip, output16140_skip]
  kernel_rfl

theorem node16142_cond_eq
    (child5048 : Flapjack.WordAlloc.removeDeadStructural input5048 value2528 value1 value2 = (output5048, value2528, value1))
    (child16141 : Flapjack.WordAlloc.removeDeadStructural input16141 value2528 value1 value2 = (output16141, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16142 value2528 value1 value2 = (output16142, value6896, value1) := by
  rw [input16142_def, output16142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5048]
  try dsimp only
  rw [child16141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5048_skip, output16141_skip]
  kernel_rfl

theorem node16143_cond_eq
    (child5047 : Flapjack.WordAlloc.removeDeadStructural input5047 value2527 value1 value2 = (output5047, value2528, value1))
    (child16142 : Flapjack.WordAlloc.removeDeadStructural input16142 value2528 value1 value2 = (output16142, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16143 value2527 value1 value2 = (output16143, value6896, value1) := by
  rw [input16143_def, output16143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5047]
  try dsimp only
  rw [child16142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5047_skip, output16142_skip]
  kernel_rfl

theorem node16144_cond_eq
    (child5046 : Flapjack.WordAlloc.removeDeadStructural input5046 value5 value1 value2 = (output5046, value2527, value1))
    (child16143 : Flapjack.WordAlloc.removeDeadStructural input16143 value2527 value1 value2 = (output16143, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16144 value5 value1 value2 = (output16144, value6896, value1) := by
  rw [input16144_def, output16144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5046]
  try dsimp only
  rw [child16143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5046_skip, output16143_skip]
  kernel_rfl

theorem node16145_cond_eq
    (child5043 : Flapjack.WordAlloc.removeDeadStructural input5043 value2520 value1 value2 = (output5043, value5, value1))
    (child16144 : Flapjack.WordAlloc.removeDeadStructural input16144 value5 value1 value2 = (output16144, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16145 value2520 value1 value2 = (output16145, value6896, value1) := by
  rw [input16145_def, output16145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5043]
  try dsimp only
  rw [child16144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5043_skip, output16144_skip]
  kernel_rfl

theorem node16146_cond_eq
    (child5032 : Flapjack.WordAlloc.removeDeadStructural input5032 value2520 value1 value2 = (output5032, value2520, value1))
    (child16145 : Flapjack.WordAlloc.removeDeadStructural input16145 value2520 value1 value2 = (output16145, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16146 value2520 value1 value2 = (output16146, value6896, value1) := by
  rw [input16146_def, output16146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5032]
  try dsimp only
  rw [child16145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5032_skip, output16145_skip]
  kernel_rfl

theorem node16147_cond_eq
    (child5031 : Flapjack.WordAlloc.removeDeadStructural input5031 value2519 value1 value2 = (output5031, value2520, value1))
    (child16146 : Flapjack.WordAlloc.removeDeadStructural input16146 value2520 value1 value2 = (output16146, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16147 value2519 value1 value2 = (output16147, value6896, value1) := by
  rw [input16147_def, output16147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5031]
  try dsimp only
  rw [child16146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5031_skip, output16146_skip]
  kernel_rfl

theorem node16148_cond_eq
    (child5030 : Flapjack.WordAlloc.removeDeadStructural input5030 value5 value1 value2 = (output5030, value2519, value1))
    (child16147 : Flapjack.WordAlloc.removeDeadStructural input16147 value2519 value1 value2 = (output16147, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16148 value5 value1 value2 = (output16148, value6896, value1) := by
  rw [input16148_def, output16148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5030]
  try dsimp only
  rw [child16147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5030_skip, output16147_skip]
  kernel_rfl

theorem node16149_cond_eq
    (child5027 : Flapjack.WordAlloc.removeDeadStructural input5027 value2512 value1 value2 = (output5027, value5, value1))
    (child16148 : Flapjack.WordAlloc.removeDeadStructural input16148 value5 value1 value2 = (output16148, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16149 value2512 value1 value2 = (output16149, value6896, value1) := by
  rw [input16149_def, output16149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5027]
  try dsimp only
  rw [child16148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5027_skip, output16148_skip]
  kernel_rfl

theorem node16150_cond_eq
    (child5016 : Flapjack.WordAlloc.removeDeadStructural input5016 value2512 value1 value2 = (output5016, value2512, value1))
    (child16149 : Flapjack.WordAlloc.removeDeadStructural input16149 value2512 value1 value2 = (output16149, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16150 value2512 value1 value2 = (output16150, value6896, value1) := by
  rw [input16150_def, output16150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5016]
  try dsimp only
  rw [child16149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5016_skip, output16149_skip]
  kernel_rfl

theorem node16151_cond_eq
    (child5015 : Flapjack.WordAlloc.removeDeadStructural input5015 value2511 value1 value2 = (output5015, value2512, value1))
    (child16150 : Flapjack.WordAlloc.removeDeadStructural input16150 value2512 value1 value2 = (output16150, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16151 value2511 value1 value2 = (output16151, value6896, value1) := by
  rw [input16151_def, output16151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5015]
  try dsimp only
  rw [child16150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5015_skip, output16150_skip]
  kernel_rfl

theorem node16152_cond_eq
    (child5014 : Flapjack.WordAlloc.removeDeadStructural input5014 value5 value1 value2 = (output5014, value2511, value1))
    (child16151 : Flapjack.WordAlloc.removeDeadStructural input16151 value2511 value1 value2 = (output16151, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16152 value5 value1 value2 = (output16152, value6896, value1) := by
  rw [input16152_def, output16152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5014]
  try dsimp only
  rw [child16151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5014_skip, output16151_skip]
  kernel_rfl

theorem node16153_cond_eq
    (child5011 : Flapjack.WordAlloc.removeDeadStructural input5011 value2504 value1 value2 = (output5011, value5, value1))
    (child16152 : Flapjack.WordAlloc.removeDeadStructural input16152 value5 value1 value2 = (output16152, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16153 value2504 value1 value2 = (output16153, value6896, value1) := by
  rw [input16153_def, output16153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5011]
  try dsimp only
  rw [child16152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5011_skip, output16152_skip]
  kernel_rfl

theorem node16154_cond_eq
    (child5000 : Flapjack.WordAlloc.removeDeadStructural input5000 value2504 value1 value2 = (output5000, value2504, value1))
    (child16153 : Flapjack.WordAlloc.removeDeadStructural input16153 value2504 value1 value2 = (output16153, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16154 value2504 value1 value2 = (output16154, value6896, value1) := by
  rw [input16154_def, output16154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5000]
  try dsimp only
  rw [child16153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5000_skip, output16153_skip]
  kernel_rfl

theorem node16155_cond_eq
    (child4999 : Flapjack.WordAlloc.removeDeadStructural input4999 value2503 value1 value2 = (output4999, value2504, value1))
    (child16154 : Flapjack.WordAlloc.removeDeadStructural input16154 value2504 value1 value2 = (output16154, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16155 value2503 value1 value2 = (output16155, value6896, value1) := by
  rw [input16155_def, output16155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4999]
  try dsimp only
  rw [child16154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4999_skip, output16154_skip]
  kernel_rfl

theorem node16156_cond_eq
    (child4998 : Flapjack.WordAlloc.removeDeadStructural input4998 value5 value1 value2 = (output4998, value2503, value1))
    (child16155 : Flapjack.WordAlloc.removeDeadStructural input16155 value2503 value1 value2 = (output16155, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16156 value5 value1 value2 = (output16156, value6896, value1) := by
  rw [input16156_def, output16156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4998]
  try dsimp only
  rw [child16155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4998_skip, output16155_skip]
  kernel_rfl

theorem node16157_cond_eq
    (child4995 : Flapjack.WordAlloc.removeDeadStructural input4995 value2496 value1 value2 = (output4995, value5, value1))
    (child16156 : Flapjack.WordAlloc.removeDeadStructural input16156 value5 value1 value2 = (output16156, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16157 value2496 value1 value2 = (output16157, value6896, value1) := by
  rw [input16157_def, output16157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4995]
  try dsimp only
  rw [child16156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4995_skip, output16156_skip]
  kernel_rfl

theorem node16158_cond_eq
    (child4984 : Flapjack.WordAlloc.removeDeadStructural input4984 value2496 value1 value2 = (output4984, value2496, value1))
    (child16157 : Flapjack.WordAlloc.removeDeadStructural input16157 value2496 value1 value2 = (output16157, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16158 value2496 value1 value2 = (output16158, value6896, value1) := by
  rw [input16158_def, output16158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4984]
  try dsimp only
  rw [child16157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4984_skip, output16157_skip]
  kernel_rfl

theorem node16159_cond_eq
    (child4983 : Flapjack.WordAlloc.removeDeadStructural input4983 value2495 value1 value2 = (output4983, value2496, value1))
    (child16158 : Flapjack.WordAlloc.removeDeadStructural input16158 value2496 value1 value2 = (output16158, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16159 value2495 value1 value2 = (output16159, value6896, value1) := by
  rw [input16159_def, output16159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4983]
  try dsimp only
  rw [child16158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4983_skip, output16158_skip]
  kernel_rfl

theorem node16160_cond_eq
    (child4982 : Flapjack.WordAlloc.removeDeadStructural input4982 value5 value1 value2 = (output4982, value2495, value1))
    (child16159 : Flapjack.WordAlloc.removeDeadStructural input16159 value2495 value1 value2 = (output16159, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16160 value5 value1 value2 = (output16160, value6896, value1) := by
  rw [input16160_def, output16160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4982]
  try dsimp only
  rw [child16159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4982_skip, output16159_skip]
  kernel_rfl

theorem node16161_cond_eq
    (child4979 : Flapjack.WordAlloc.removeDeadStructural input4979 value2488 value1 value2 = (output4979, value5, value1))
    (child16160 : Flapjack.WordAlloc.removeDeadStructural input16160 value5 value1 value2 = (output16160, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16161 value2488 value1 value2 = (output16161, value6896, value1) := by
  rw [input16161_def, output16161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4979]
  try dsimp only
  rw [child16160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4979_skip, output16160_skip]
  kernel_rfl

theorem node16162_cond_eq
    (child4968 : Flapjack.WordAlloc.removeDeadStructural input4968 value2488 value1 value2 = (output4968, value2488, value1))
    (child16161 : Flapjack.WordAlloc.removeDeadStructural input16161 value2488 value1 value2 = (output16161, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16162 value2488 value1 value2 = (output16162, value6896, value1) := by
  rw [input16162_def, output16162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4968]
  try dsimp only
  rw [child16161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4968_skip, output16161_skip]
  kernel_rfl

theorem node16163_cond_eq
    (child4967 : Flapjack.WordAlloc.removeDeadStructural input4967 value2487 value1 value2 = (output4967, value2488, value1))
    (child16162 : Flapjack.WordAlloc.removeDeadStructural input16162 value2488 value1 value2 = (output16162, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16163 value2487 value1 value2 = (output16163, value6896, value1) := by
  rw [input16163_def, output16163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4967]
  try dsimp only
  rw [child16162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4967_skip, output16162_skip]
  kernel_rfl

theorem node16164_cond_eq
    (child4966 : Flapjack.WordAlloc.removeDeadStructural input4966 value5 value1 value2 = (output4966, value2487, value1))
    (child16163 : Flapjack.WordAlloc.removeDeadStructural input16163 value2487 value1 value2 = (output16163, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16164 value5 value1 value2 = (output16164, value6896, value1) := by
  rw [input16164_def, output16164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4966]
  try dsimp only
  rw [child16163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4966_skip, output16163_skip]
  kernel_rfl

theorem node16165_cond_eq
    (child4963 : Flapjack.WordAlloc.removeDeadStructural input4963 value2480 value1 value2 = (output4963, value5, value1))
    (child16164 : Flapjack.WordAlloc.removeDeadStructural input16164 value5 value1 value2 = (output16164, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16165 value2480 value1 value2 = (output16165, value6896, value1) := by
  rw [input16165_def, output16165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4963]
  try dsimp only
  rw [child16164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4963_skip, output16164_skip]
  kernel_rfl

theorem node16166_cond_eq
    (child4952 : Flapjack.WordAlloc.removeDeadStructural input4952 value2480 value1 value2 = (output4952, value2480, value1))
    (child16165 : Flapjack.WordAlloc.removeDeadStructural input16165 value2480 value1 value2 = (output16165, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16166 value2480 value1 value2 = (output16166, value6896, value1) := by
  rw [input16166_def, output16166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4952]
  try dsimp only
  rw [child16165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4952_skip, output16165_skip]
  kernel_rfl

theorem node16167_cond_eq
    (child4951 : Flapjack.WordAlloc.removeDeadStructural input4951 value2479 value1 value2 = (output4951, value2480, value1))
    (child16166 : Flapjack.WordAlloc.removeDeadStructural input16166 value2480 value1 value2 = (output16166, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16167 value2479 value1 value2 = (output16167, value6896, value1) := by
  rw [input16167_def, output16167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4951]
  try dsimp only
  rw [child16166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4951_skip, output16166_skip]
  kernel_rfl

theorem node16168_cond_eq
    (child4950 : Flapjack.WordAlloc.removeDeadStructural input4950 value5 value1 value2 = (output4950, value2479, value1))
    (child16167 : Flapjack.WordAlloc.removeDeadStructural input16167 value2479 value1 value2 = (output16167, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16168 value5 value1 value2 = (output16168, value6896, value1) := by
  rw [input16168_def, output16168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4950]
  try dsimp only
  rw [child16167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4950_skip, output16167_skip]
  kernel_rfl

theorem node16169_cond_eq
    (child4947 : Flapjack.WordAlloc.removeDeadStructural input4947 value2472 value1 value2 = (output4947, value5, value1))
    (child16168 : Flapjack.WordAlloc.removeDeadStructural input16168 value5 value1 value2 = (output16168, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16169 value2472 value1 value2 = (output16169, value6896, value1) := by
  rw [input16169_def, output16169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4947]
  try dsimp only
  rw [child16168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4947_skip, output16168_skip]
  kernel_rfl

theorem node16170_cond_eq
    (child4936 : Flapjack.WordAlloc.removeDeadStructural input4936 value2472 value1 value2 = (output4936, value2472, value1))
    (child16169 : Flapjack.WordAlloc.removeDeadStructural input16169 value2472 value1 value2 = (output16169, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16170 value2472 value1 value2 = (output16170, value6896, value1) := by
  rw [input16170_def, output16170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4936]
  try dsimp only
  rw [child16169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4936_skip, output16169_skip]
  kernel_rfl

theorem node16171_cond_eq
    (child4935 : Flapjack.WordAlloc.removeDeadStructural input4935 value2471 value1 value2 = (output4935, value2472, value1))
    (child16170 : Flapjack.WordAlloc.removeDeadStructural input16170 value2472 value1 value2 = (output16170, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16171 value2471 value1 value2 = (output16171, value6896, value1) := by
  rw [input16171_def, output16171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4935]
  try dsimp only
  rw [child16170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4935_skip, output16170_skip]
  kernel_rfl

theorem node16172_cond_eq
    (child4934 : Flapjack.WordAlloc.removeDeadStructural input4934 value5 value1 value2 = (output4934, value2471, value1))
    (child16171 : Flapjack.WordAlloc.removeDeadStructural input16171 value2471 value1 value2 = (output16171, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16172 value5 value1 value2 = (output16172, value6896, value1) := by
  rw [input16172_def, output16172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4934]
  try dsimp only
  rw [child16171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4934_skip, output16171_skip]
  kernel_rfl

theorem node16173_cond_eq
    (child4931 : Flapjack.WordAlloc.removeDeadStructural input4931 value2464 value1 value2 = (output4931, value5, value1))
    (child16172 : Flapjack.WordAlloc.removeDeadStructural input16172 value5 value1 value2 = (output16172, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16173 value2464 value1 value2 = (output16173, value6896, value1) := by
  rw [input16173_def, output16173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4931]
  try dsimp only
  rw [child16172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4931_skip, output16172_skip]
  kernel_rfl

theorem node16174_cond_eq
    (child4920 : Flapjack.WordAlloc.removeDeadStructural input4920 value2464 value1 value2 = (output4920, value2464, value1))
    (child16173 : Flapjack.WordAlloc.removeDeadStructural input16173 value2464 value1 value2 = (output16173, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16174 value2464 value1 value2 = (output16174, value6896, value1) := by
  rw [input16174_def, output16174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4920]
  try dsimp only
  rw [child16173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4920_skip, output16173_skip]
  kernel_rfl

theorem node16175_cond_eq
    (child4919 : Flapjack.WordAlloc.removeDeadStructural input4919 value2463 value1 value2 = (output4919, value2464, value1))
    (child16174 : Flapjack.WordAlloc.removeDeadStructural input16174 value2464 value1 value2 = (output16174, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16175 value2463 value1 value2 = (output16175, value6896, value1) := by
  rw [input16175_def, output16175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4919]
  try dsimp only
  rw [child16174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4919_skip, output16174_skip]
  kernel_rfl

theorem node16176_cond_eq
    (child4918 : Flapjack.WordAlloc.removeDeadStructural input4918 value5 value1 value2 = (output4918, value2463, value1))
    (child16175 : Flapjack.WordAlloc.removeDeadStructural input16175 value2463 value1 value2 = (output16175, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16176 value5 value1 value2 = (output16176, value6896, value1) := by
  rw [input16176_def, output16176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4918]
  try dsimp only
  rw [child16175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4918_skip, output16175_skip]
  kernel_rfl

theorem node16177_cond_eq
    (child4915 : Flapjack.WordAlloc.removeDeadStructural input4915 value2456 value1 value2 = (output4915, value5, value1))
    (child16176 : Flapjack.WordAlloc.removeDeadStructural input16176 value5 value1 value2 = (output16176, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16177 value2456 value1 value2 = (output16177, value6896, value1) := by
  rw [input16177_def, output16177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4915]
  try dsimp only
  rw [child16176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4915_skip, output16176_skip]
  kernel_rfl

theorem node16178_cond_eq
    (child4904 : Flapjack.WordAlloc.removeDeadStructural input4904 value2456 value1 value2 = (output4904, value2456, value1))
    (child16177 : Flapjack.WordAlloc.removeDeadStructural input16177 value2456 value1 value2 = (output16177, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16178 value2456 value1 value2 = (output16178, value6896, value1) := by
  rw [input16178_def, output16178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4904]
  try dsimp only
  rw [child16177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4904_skip, output16177_skip]
  kernel_rfl

theorem node16179_cond_eq
    (child4903 : Flapjack.WordAlloc.removeDeadStructural input4903 value2455 value1 value2 = (output4903, value2456, value1))
    (child16178 : Flapjack.WordAlloc.removeDeadStructural input16178 value2456 value1 value2 = (output16178, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16179 value2455 value1 value2 = (output16179, value6896, value1) := by
  rw [input16179_def, output16179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4903]
  try dsimp only
  rw [child16178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4903_skip, output16178_skip]
  kernel_rfl

theorem node16180_cond_eq
    (child4902 : Flapjack.WordAlloc.removeDeadStructural input4902 value5 value1 value2 = (output4902, value2455, value1))
    (child16179 : Flapjack.WordAlloc.removeDeadStructural input16179 value2455 value1 value2 = (output16179, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16180 value5 value1 value2 = (output16180, value6896, value1) := by
  rw [input16180_def, output16180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4902]
  try dsimp only
  rw [child16179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4902_skip, output16179_skip]
  kernel_rfl

theorem node16181_cond_eq
    (child4899 : Flapjack.WordAlloc.removeDeadStructural input4899 value2448 value1 value2 = (output4899, value5, value1))
    (child16180 : Flapjack.WordAlloc.removeDeadStructural input16180 value5 value1 value2 = (output16180, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16181 value2448 value1 value2 = (output16181, value6896, value1) := by
  rw [input16181_def, output16181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4899]
  try dsimp only
  rw [child16180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4899_skip, output16180_skip]
  kernel_rfl

theorem node16182_cond_eq
    (child4888 : Flapjack.WordAlloc.removeDeadStructural input4888 value2448 value1 value2 = (output4888, value2448, value1))
    (child16181 : Flapjack.WordAlloc.removeDeadStructural input16181 value2448 value1 value2 = (output16181, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16182 value2448 value1 value2 = (output16182, value6896, value1) := by
  rw [input16182_def, output16182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4888]
  try dsimp only
  rw [child16181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4888_skip, output16181_skip]
  kernel_rfl

theorem node16183_cond_eq
    (child4887 : Flapjack.WordAlloc.removeDeadStructural input4887 value2447 value1 value2 = (output4887, value2448, value1))
    (child16182 : Flapjack.WordAlloc.removeDeadStructural input16182 value2448 value1 value2 = (output16182, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16183 value2447 value1 value2 = (output16183, value6896, value1) := by
  rw [input16183_def, output16183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4887]
  try dsimp only
  rw [child16182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4887_skip, output16182_skip]
  kernel_rfl

theorem node16184_cond_eq
    (child4886 : Flapjack.WordAlloc.removeDeadStructural input4886 value5 value1 value2 = (output4886, value2447, value1))
    (child16183 : Flapjack.WordAlloc.removeDeadStructural input16183 value2447 value1 value2 = (output16183, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16184 value5 value1 value2 = (output16184, value6896, value1) := by
  rw [input16184_def, output16184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4886]
  try dsimp only
  rw [child16183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4886_skip, output16183_skip]
  kernel_rfl

theorem node16185_cond_eq
    (child4883 : Flapjack.WordAlloc.removeDeadStructural input4883 value2440 value1 value2 = (output4883, value5, value1))
    (child16184 : Flapjack.WordAlloc.removeDeadStructural input16184 value5 value1 value2 = (output16184, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16185 value2440 value1 value2 = (output16185, value6896, value1) := by
  rw [input16185_def, output16185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4883]
  try dsimp only
  rw [child16184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4883_skip, output16184_skip]
  kernel_rfl

theorem node16186_cond_eq
    (child4872 : Flapjack.WordAlloc.removeDeadStructural input4872 value2440 value1 value2 = (output4872, value2440, value1))
    (child16185 : Flapjack.WordAlloc.removeDeadStructural input16185 value2440 value1 value2 = (output16185, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16186 value2440 value1 value2 = (output16186, value6896, value1) := by
  rw [input16186_def, output16186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4872]
  try dsimp only
  rw [child16185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4872_skip, output16185_skip]
  kernel_rfl

theorem node16187_cond_eq
    (child4871 : Flapjack.WordAlloc.removeDeadStructural input4871 value2439 value1 value2 = (output4871, value2440, value1))
    (child16186 : Flapjack.WordAlloc.removeDeadStructural input16186 value2440 value1 value2 = (output16186, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16187 value2439 value1 value2 = (output16187, value6896, value1) := by
  rw [input16187_def, output16187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4871]
  try dsimp only
  rw [child16186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4871_skip, output16186_skip]
  kernel_rfl

theorem node16188_cond_eq
    (child4870 : Flapjack.WordAlloc.removeDeadStructural input4870 value5 value1 value2 = (output4870, value2439, value1))
    (child16187 : Flapjack.WordAlloc.removeDeadStructural input16187 value2439 value1 value2 = (output16187, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16188 value5 value1 value2 = (output16188, value6896, value1) := by
  rw [input16188_def, output16188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4870]
  try dsimp only
  rw [child16187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4870_skip, output16187_skip]
  kernel_rfl

theorem node16189_cond_eq
    (child4867 : Flapjack.WordAlloc.removeDeadStructural input4867 value2432 value1 value2 = (output4867, value5, value1))
    (child16188 : Flapjack.WordAlloc.removeDeadStructural input16188 value5 value1 value2 = (output16188, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16189 value2432 value1 value2 = (output16189, value6896, value1) := by
  rw [input16189_def, output16189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4867]
  try dsimp only
  rw [child16188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4867_skip, output16188_skip]
  kernel_rfl

theorem node16190_cond_eq
    (child4856 : Flapjack.WordAlloc.removeDeadStructural input4856 value2432 value1 value2 = (output4856, value2432, value1))
    (child16189 : Flapjack.WordAlloc.removeDeadStructural input16189 value2432 value1 value2 = (output16189, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16190 value2432 value1 value2 = (output16190, value6896, value1) := by
  rw [input16190_def, output16190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4856]
  try dsimp only
  rw [child16189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4856_skip, output16189_skip]
  kernel_rfl

theorem node16191_cond_eq
    (child4855 : Flapjack.WordAlloc.removeDeadStructural input4855 value2431 value1 value2 = (output4855, value2432, value1))
    (child16190 : Flapjack.WordAlloc.removeDeadStructural input16190 value2432 value1 value2 = (output16190, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16191 value2431 value1 value2 = (output16191, value6896, value1) := by
  rw [input16191_def, output16191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4855]
  try dsimp only
  rw [child16190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4855_skip, output16190_skip]
  kernel_rfl

theorem node16192_cond_eq
    (child4854 : Flapjack.WordAlloc.removeDeadStructural input4854 value5 value1 value2 = (output4854, value2431, value1))
    (child16191 : Flapjack.WordAlloc.removeDeadStructural input16191 value2431 value1 value2 = (output16191, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16192 value5 value1 value2 = (output16192, value6896, value1) := by
  rw [input16192_def, output16192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4854]
  try dsimp only
  rw [child16191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4854_skip, output16191_skip]
  kernel_rfl

theorem node16193_cond_eq
    (child4851 : Flapjack.WordAlloc.removeDeadStructural input4851 value2424 value1 value2 = (output4851, value5, value1))
    (child16192 : Flapjack.WordAlloc.removeDeadStructural input16192 value5 value1 value2 = (output16192, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16193 value2424 value1 value2 = (output16193, value6896, value1) := by
  rw [input16193_def, output16193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4851]
  try dsimp only
  rw [child16192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4851_skip, output16192_skip]
  kernel_rfl

theorem node16194_cond_eq
    (child4840 : Flapjack.WordAlloc.removeDeadStructural input4840 value2424 value1 value2 = (output4840, value2424, value1))
    (child16193 : Flapjack.WordAlloc.removeDeadStructural input16193 value2424 value1 value2 = (output16193, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16194 value2424 value1 value2 = (output16194, value6896, value1) := by
  rw [input16194_def, output16194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4840]
  try dsimp only
  rw [child16193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4840_skip, output16193_skip]
  kernel_rfl

theorem node16195_cond_eq
    (child4839 : Flapjack.WordAlloc.removeDeadStructural input4839 value2423 value1 value2 = (output4839, value2424, value1))
    (child16194 : Flapjack.WordAlloc.removeDeadStructural input16194 value2424 value1 value2 = (output16194, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16195 value2423 value1 value2 = (output16195, value6896, value1) := by
  rw [input16195_def, output16195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4839]
  try dsimp only
  rw [child16194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4839_skip, output16194_skip]
  kernel_rfl

theorem node16196_cond_eq
    (child4838 : Flapjack.WordAlloc.removeDeadStructural input4838 value5 value1 value2 = (output4838, value2423, value1))
    (child16195 : Flapjack.WordAlloc.removeDeadStructural input16195 value2423 value1 value2 = (output16195, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16196 value5 value1 value2 = (output16196, value6896, value1) := by
  rw [input16196_def, output16196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4838]
  try dsimp only
  rw [child16195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4838_skip, output16195_skip]
  kernel_rfl

theorem node16197_cond_eq
    (child4835 : Flapjack.WordAlloc.removeDeadStructural input4835 value2416 value1 value2 = (output4835, value5, value1))
    (child16196 : Flapjack.WordAlloc.removeDeadStructural input16196 value5 value1 value2 = (output16196, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16197 value2416 value1 value2 = (output16197, value6896, value1) := by
  rw [input16197_def, output16197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4835]
  try dsimp only
  rw [child16196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4835_skip, output16196_skip]
  kernel_rfl

theorem node16198_cond_eq
    (child4824 : Flapjack.WordAlloc.removeDeadStructural input4824 value2416 value1 value2 = (output4824, value2416, value1))
    (child16197 : Flapjack.WordAlloc.removeDeadStructural input16197 value2416 value1 value2 = (output16197, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16198 value2416 value1 value2 = (output16198, value6896, value1) := by
  rw [input16198_def, output16198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4824]
  try dsimp only
  rw [child16197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4824_skip, output16197_skip]
  kernel_rfl

theorem node16199_cond_eq
    (child4823 : Flapjack.WordAlloc.removeDeadStructural input4823 value2415 value1 value2 = (output4823, value2416, value1))
    (child16198 : Flapjack.WordAlloc.removeDeadStructural input16198 value2416 value1 value2 = (output16198, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16199 value2415 value1 value2 = (output16199, value6896, value1) := by
  rw [input16199_def, output16199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4823]
  try dsimp only
  rw [child16198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4823_skip, output16198_skip]
  kernel_rfl

theorem node16200_cond_eq
    (child4822 : Flapjack.WordAlloc.removeDeadStructural input4822 value5 value1 value2 = (output4822, value2415, value1))
    (child16199 : Flapjack.WordAlloc.removeDeadStructural input16199 value2415 value1 value2 = (output16199, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16200 value5 value1 value2 = (output16200, value6896, value1) := by
  rw [input16200_def, output16200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4822]
  try dsimp only
  rw [child16199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4822_skip, output16199_skip]
  kernel_rfl

theorem node16201_cond_eq
    (child4819 : Flapjack.WordAlloc.removeDeadStructural input4819 value2408 value1 value2 = (output4819, value5, value1))
    (child16200 : Flapjack.WordAlloc.removeDeadStructural input16200 value5 value1 value2 = (output16200, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16201 value2408 value1 value2 = (output16201, value6896, value1) := by
  rw [input16201_def, output16201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4819]
  try dsimp only
  rw [child16200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4819_skip, output16200_skip]
  kernel_rfl

theorem node16202_cond_eq
    (child4808 : Flapjack.WordAlloc.removeDeadStructural input4808 value2408 value1 value2 = (output4808, value2408, value1))
    (child16201 : Flapjack.WordAlloc.removeDeadStructural input16201 value2408 value1 value2 = (output16201, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16202 value2408 value1 value2 = (output16202, value6896, value1) := by
  rw [input16202_def, output16202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4808]
  try dsimp only
  rw [child16201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4808_skip, output16201_skip]
  kernel_rfl

theorem node16203_cond_eq
    (child4807 : Flapjack.WordAlloc.removeDeadStructural input4807 value2407 value1 value2 = (output4807, value2408, value1))
    (child16202 : Flapjack.WordAlloc.removeDeadStructural input16202 value2408 value1 value2 = (output16202, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16203 value2407 value1 value2 = (output16203, value6896, value1) := by
  rw [input16203_def, output16203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4807]
  try dsimp only
  rw [child16202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4807_skip, output16202_skip]
  kernel_rfl

theorem node16204_cond_eq
    (child4806 : Flapjack.WordAlloc.removeDeadStructural input4806 value5 value1 value2 = (output4806, value2407, value1))
    (child16203 : Flapjack.WordAlloc.removeDeadStructural input16203 value2407 value1 value2 = (output16203, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16204 value5 value1 value2 = (output16204, value6896, value1) := by
  rw [input16204_def, output16204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4806]
  try dsimp only
  rw [child16203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4806_skip, output16203_skip]
  kernel_rfl

theorem node16205_cond_eq
    (child4803 : Flapjack.WordAlloc.removeDeadStructural input4803 value2400 value1 value2 = (output4803, value5, value1))
    (child16204 : Flapjack.WordAlloc.removeDeadStructural input16204 value5 value1 value2 = (output16204, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16205 value2400 value1 value2 = (output16205, value6896, value1) := by
  rw [input16205_def, output16205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4803]
  try dsimp only
  rw [child16204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4803_skip, output16204_skip]
  kernel_rfl

theorem node16206_cond_eq
    (child4792 : Flapjack.WordAlloc.removeDeadStructural input4792 value2400 value1 value2 = (output4792, value2400, value1))
    (child16205 : Flapjack.WordAlloc.removeDeadStructural input16205 value2400 value1 value2 = (output16205, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16206 value2400 value1 value2 = (output16206, value6896, value1) := by
  rw [input16206_def, output16206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4792]
  try dsimp only
  rw [child16205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4792_skip, output16205_skip]
  kernel_rfl

theorem node16207_cond_eq
    (child4791 : Flapjack.WordAlloc.removeDeadStructural input4791 value2399 value1 value2 = (output4791, value2400, value1))
    (child16206 : Flapjack.WordAlloc.removeDeadStructural input16206 value2400 value1 value2 = (output16206, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16207 value2399 value1 value2 = (output16207, value6896, value1) := by
  rw [input16207_def, output16207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4791]
  try dsimp only
  rw [child16206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4791_skip, output16206_skip]
  kernel_rfl

theorem node16208_cond_eq
    (child4790 : Flapjack.WordAlloc.removeDeadStructural input4790 value5 value1 value2 = (output4790, value2399, value1))
    (child16207 : Flapjack.WordAlloc.removeDeadStructural input16207 value2399 value1 value2 = (output16207, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16208 value5 value1 value2 = (output16208, value6896, value1) := by
  rw [input16208_def, output16208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4790]
  try dsimp only
  rw [child16207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4790_skip, output16207_skip]
  kernel_rfl

theorem node16209_cond_eq
    (child4787 : Flapjack.WordAlloc.removeDeadStructural input4787 value2392 value1 value2 = (output4787, value5, value1))
    (child16208 : Flapjack.WordAlloc.removeDeadStructural input16208 value5 value1 value2 = (output16208, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16209 value2392 value1 value2 = (output16209, value6896, value1) := by
  rw [input16209_def, output16209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4787]
  try dsimp only
  rw [child16208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4787_skip, output16208_skip]
  kernel_rfl

theorem node16210_cond_eq
    (child4776 : Flapjack.WordAlloc.removeDeadStructural input4776 value2392 value1 value2 = (output4776, value2392, value1))
    (child16209 : Flapjack.WordAlloc.removeDeadStructural input16209 value2392 value1 value2 = (output16209, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16210 value2392 value1 value2 = (output16210, value6896, value1) := by
  rw [input16210_def, output16210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4776]
  try dsimp only
  rw [child16209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4776_skip, output16209_skip]
  kernel_rfl

theorem node16211_cond_eq
    (child4775 : Flapjack.WordAlloc.removeDeadStructural input4775 value2391 value1 value2 = (output4775, value2392, value1))
    (child16210 : Flapjack.WordAlloc.removeDeadStructural input16210 value2392 value1 value2 = (output16210, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16211 value2391 value1 value2 = (output16211, value6896, value1) := by
  rw [input16211_def, output16211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4775]
  try dsimp only
  rw [child16210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4775_skip, output16210_skip]
  kernel_rfl

theorem node16212_cond_eq
    (child4774 : Flapjack.WordAlloc.removeDeadStructural input4774 value5 value1 value2 = (output4774, value2391, value1))
    (child16211 : Flapjack.WordAlloc.removeDeadStructural input16211 value2391 value1 value2 = (output16211, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16212 value5 value1 value2 = (output16212, value6896, value1) := by
  rw [input16212_def, output16212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4774]
  try dsimp only
  rw [child16211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4774_skip, output16211_skip]
  kernel_rfl

theorem node16213_cond_eq
    (child4771 : Flapjack.WordAlloc.removeDeadStructural input4771 value2384 value1 value2 = (output4771, value5, value1))
    (child16212 : Flapjack.WordAlloc.removeDeadStructural input16212 value5 value1 value2 = (output16212, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16213 value2384 value1 value2 = (output16213, value6896, value1) := by
  rw [input16213_def, output16213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4771]
  try dsimp only
  rw [child16212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4771_skip, output16212_skip]
  kernel_rfl

theorem node16214_cond_eq
    (child4760 : Flapjack.WordAlloc.removeDeadStructural input4760 value2384 value1 value2 = (output4760, value2384, value1))
    (child16213 : Flapjack.WordAlloc.removeDeadStructural input16213 value2384 value1 value2 = (output16213, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16214 value2384 value1 value2 = (output16214, value6896, value1) := by
  rw [input16214_def, output16214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4760]
  try dsimp only
  rw [child16213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4760_skip, output16213_skip]
  kernel_rfl

theorem node16215_cond_eq
    (child4759 : Flapjack.WordAlloc.removeDeadStructural input4759 value2383 value1 value2 = (output4759, value2384, value1))
    (child16214 : Flapjack.WordAlloc.removeDeadStructural input16214 value2384 value1 value2 = (output16214, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16215 value2383 value1 value2 = (output16215, value6896, value1) := by
  rw [input16215_def, output16215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4759]
  try dsimp only
  rw [child16214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4759_skip, output16214_skip]
  kernel_rfl

theorem node16216_cond_eq
    (child4758 : Flapjack.WordAlloc.removeDeadStructural input4758 value5 value1 value2 = (output4758, value2383, value1))
    (child16215 : Flapjack.WordAlloc.removeDeadStructural input16215 value2383 value1 value2 = (output16215, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16216 value5 value1 value2 = (output16216, value6896, value1) := by
  rw [input16216_def, output16216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4758]
  try dsimp only
  rw [child16215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4758_skip, output16215_skip]
  kernel_rfl

theorem node16217_cond_eq
    (child4755 : Flapjack.WordAlloc.removeDeadStructural input4755 value2376 value1 value2 = (output4755, value5, value1))
    (child16216 : Flapjack.WordAlloc.removeDeadStructural input16216 value5 value1 value2 = (output16216, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16217 value2376 value1 value2 = (output16217, value6896, value1) := by
  rw [input16217_def, output16217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4755]
  try dsimp only
  rw [child16216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4755_skip, output16216_skip]
  kernel_rfl

theorem node16218_cond_eq
    (child4744 : Flapjack.WordAlloc.removeDeadStructural input4744 value2376 value1 value2 = (output4744, value2376, value1))
    (child16217 : Flapjack.WordAlloc.removeDeadStructural input16217 value2376 value1 value2 = (output16217, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16218 value2376 value1 value2 = (output16218, value6896, value1) := by
  rw [input16218_def, output16218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4744]
  try dsimp only
  rw [child16217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4744_skip, output16217_skip]
  kernel_rfl

theorem node16219_cond_eq
    (child4743 : Flapjack.WordAlloc.removeDeadStructural input4743 value2375 value1 value2 = (output4743, value2376, value1))
    (child16218 : Flapjack.WordAlloc.removeDeadStructural input16218 value2376 value1 value2 = (output16218, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16219 value2375 value1 value2 = (output16219, value6896, value1) := by
  rw [input16219_def, output16219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4743]
  try dsimp only
  rw [child16218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4743_skip, output16218_skip]
  kernel_rfl

theorem node16220_cond_eq
    (child4742 : Flapjack.WordAlloc.removeDeadStructural input4742 value5 value1 value2 = (output4742, value2375, value1))
    (child16219 : Flapjack.WordAlloc.removeDeadStructural input16219 value2375 value1 value2 = (output16219, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16220 value5 value1 value2 = (output16220, value6896, value1) := by
  rw [input16220_def, output16220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4742]
  try dsimp only
  rw [child16219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4742_skip, output16219_skip]
  kernel_rfl

theorem node16221_cond_eq
    (child4739 : Flapjack.WordAlloc.removeDeadStructural input4739 value2368 value1 value2 = (output4739, value5, value1))
    (child16220 : Flapjack.WordAlloc.removeDeadStructural input16220 value5 value1 value2 = (output16220, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16221 value2368 value1 value2 = (output16221, value6896, value1) := by
  rw [input16221_def, output16221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4739]
  try dsimp only
  rw [child16220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4739_skip, output16220_skip]
  kernel_rfl

theorem node16222_cond_eq
    (child4728 : Flapjack.WordAlloc.removeDeadStructural input4728 value2368 value1 value2 = (output4728, value2368, value1))
    (child16221 : Flapjack.WordAlloc.removeDeadStructural input16221 value2368 value1 value2 = (output16221, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16222 value2368 value1 value2 = (output16222, value6896, value1) := by
  rw [input16222_def, output16222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4728]
  try dsimp only
  rw [child16221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4728_skip, output16221_skip]
  kernel_rfl

theorem node16223_cond_eq
    (child4727 : Flapjack.WordAlloc.removeDeadStructural input4727 value2367 value1 value2 = (output4727, value2368, value1))
    (child16222 : Flapjack.WordAlloc.removeDeadStructural input16222 value2368 value1 value2 = (output16222, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16223 value2367 value1 value2 = (output16223, value6896, value1) := by
  rw [input16223_def, output16223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4727]
  try dsimp only
  rw [child16222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4727_skip, output16222_skip]
  kernel_rfl

theorem node16224_cond_eq
    (child4726 : Flapjack.WordAlloc.removeDeadStructural input4726 value5 value1 value2 = (output4726, value2367, value1))
    (child16223 : Flapjack.WordAlloc.removeDeadStructural input16223 value2367 value1 value2 = (output16223, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16224 value5 value1 value2 = (output16224, value6896, value1) := by
  rw [input16224_def, output16224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4726]
  try dsimp only
  rw [child16223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4726_skip, output16223_skip]
  kernel_rfl

theorem node16225_cond_eq
    (child4723 : Flapjack.WordAlloc.removeDeadStructural input4723 value2360 value1 value2 = (output4723, value5, value1))
    (child16224 : Flapjack.WordAlloc.removeDeadStructural input16224 value5 value1 value2 = (output16224, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16225 value2360 value1 value2 = (output16225, value6896, value1) := by
  rw [input16225_def, output16225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4723]
  try dsimp only
  rw [child16224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4723_skip, output16224_skip]
  kernel_rfl

theorem node16226_cond_eq
    (child4712 : Flapjack.WordAlloc.removeDeadStructural input4712 value2360 value1 value2 = (output4712, value2360, value1))
    (child16225 : Flapjack.WordAlloc.removeDeadStructural input16225 value2360 value1 value2 = (output16225, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16226 value2360 value1 value2 = (output16226, value6896, value1) := by
  rw [input16226_def, output16226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4712]
  try dsimp only
  rw [child16225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4712_skip, output16225_skip]
  kernel_rfl

theorem node16227_cond_eq
    (child4711 : Flapjack.WordAlloc.removeDeadStructural input4711 value2359 value1 value2 = (output4711, value2360, value1))
    (child16226 : Flapjack.WordAlloc.removeDeadStructural input16226 value2360 value1 value2 = (output16226, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16227 value2359 value1 value2 = (output16227, value6896, value1) := by
  rw [input16227_def, output16227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4711]
  try dsimp only
  rw [child16226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4711_skip, output16226_skip]
  kernel_rfl

theorem node16228_cond_eq
    (child4710 : Flapjack.WordAlloc.removeDeadStructural input4710 value5 value1 value2 = (output4710, value2359, value1))
    (child16227 : Flapjack.WordAlloc.removeDeadStructural input16227 value2359 value1 value2 = (output16227, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16228 value5 value1 value2 = (output16228, value6896, value1) := by
  rw [input16228_def, output16228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4710]
  try dsimp only
  rw [child16227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4710_skip, output16227_skip]
  kernel_rfl

theorem node16229_cond_eq
    (child4707 : Flapjack.WordAlloc.removeDeadStructural input4707 value2352 value1 value2 = (output4707, value5, value1))
    (child16228 : Flapjack.WordAlloc.removeDeadStructural input16228 value5 value1 value2 = (output16228, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16229 value2352 value1 value2 = (output16229, value6896, value1) := by
  rw [input16229_def, output16229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4707]
  try dsimp only
  rw [child16228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4707_skip, output16228_skip]
  kernel_rfl

theorem node16230_cond_eq
    (child4696 : Flapjack.WordAlloc.removeDeadStructural input4696 value2352 value1 value2 = (output4696, value2352, value1))
    (child16229 : Flapjack.WordAlloc.removeDeadStructural input16229 value2352 value1 value2 = (output16229, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16230 value2352 value1 value2 = (output16230, value6896, value1) := by
  rw [input16230_def, output16230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4696]
  try dsimp only
  rw [child16229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4696_skip, output16229_skip]
  kernel_rfl

theorem node16231_cond_eq
    (child4695 : Flapjack.WordAlloc.removeDeadStructural input4695 value2351 value1 value2 = (output4695, value2352, value1))
    (child16230 : Flapjack.WordAlloc.removeDeadStructural input16230 value2352 value1 value2 = (output16230, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16231 value2351 value1 value2 = (output16231, value6896, value1) := by
  rw [input16231_def, output16231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4695]
  try dsimp only
  rw [child16230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4695_skip, output16230_skip]
  kernel_rfl

theorem node16232_cond_eq
    (child4694 : Flapjack.WordAlloc.removeDeadStructural input4694 value5 value1 value2 = (output4694, value2351, value1))
    (child16231 : Flapjack.WordAlloc.removeDeadStructural input16231 value2351 value1 value2 = (output16231, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16232 value5 value1 value2 = (output16232, value6896, value1) := by
  rw [input16232_def, output16232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4694]
  try dsimp only
  rw [child16231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4694_skip, output16231_skip]
  kernel_rfl

theorem node16233_cond_eq
    (child4691 : Flapjack.WordAlloc.removeDeadStructural input4691 value2344 value1 value2 = (output4691, value5, value1))
    (child16232 : Flapjack.WordAlloc.removeDeadStructural input16232 value5 value1 value2 = (output16232, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16233 value2344 value1 value2 = (output16233, value6896, value1) := by
  rw [input16233_def, output16233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4691]
  try dsimp only
  rw [child16232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4691_skip, output16232_skip]
  kernel_rfl

theorem node16234_cond_eq
    (child4680 : Flapjack.WordAlloc.removeDeadStructural input4680 value2344 value1 value2 = (output4680, value2344, value1))
    (child16233 : Flapjack.WordAlloc.removeDeadStructural input16233 value2344 value1 value2 = (output16233, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16234 value2344 value1 value2 = (output16234, value6896, value1) := by
  rw [input16234_def, output16234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4680]
  try dsimp only
  rw [child16233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4680_skip, output16233_skip]
  kernel_rfl

theorem node16235_cond_eq
    (child4679 : Flapjack.WordAlloc.removeDeadStructural input4679 value2343 value1 value2 = (output4679, value2344, value1))
    (child16234 : Flapjack.WordAlloc.removeDeadStructural input16234 value2344 value1 value2 = (output16234, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16235 value2343 value1 value2 = (output16235, value6896, value1) := by
  rw [input16235_def, output16235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4679]
  try dsimp only
  rw [child16234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4679_skip, output16234_skip]
  kernel_rfl

theorem node16236_cond_eq
    (child4678 : Flapjack.WordAlloc.removeDeadStructural input4678 value5 value1 value2 = (output4678, value2343, value1))
    (child16235 : Flapjack.WordAlloc.removeDeadStructural input16235 value2343 value1 value2 = (output16235, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16236 value5 value1 value2 = (output16236, value6896, value1) := by
  rw [input16236_def, output16236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4678]
  try dsimp only
  rw [child16235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4678_skip, output16235_skip]
  kernel_rfl

theorem node16237_cond_eq
    (child4675 : Flapjack.WordAlloc.removeDeadStructural input4675 value2336 value1 value2 = (output4675, value5, value1))
    (child16236 : Flapjack.WordAlloc.removeDeadStructural input16236 value5 value1 value2 = (output16236, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16237 value2336 value1 value2 = (output16237, value6896, value1) := by
  rw [input16237_def, output16237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4675]
  try dsimp only
  rw [child16236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4675_skip, output16236_skip]
  kernel_rfl

theorem node16238_cond_eq
    (child4664 : Flapjack.WordAlloc.removeDeadStructural input4664 value2336 value1 value2 = (output4664, value2336, value1))
    (child16237 : Flapjack.WordAlloc.removeDeadStructural input16237 value2336 value1 value2 = (output16237, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16238 value2336 value1 value2 = (output16238, value6896, value1) := by
  rw [input16238_def, output16238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4664]
  try dsimp only
  rw [child16237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4664_skip, output16237_skip]
  kernel_rfl

theorem node16239_cond_eq
    (child4663 : Flapjack.WordAlloc.removeDeadStructural input4663 value2335 value1 value2 = (output4663, value2336, value1))
    (child16238 : Flapjack.WordAlloc.removeDeadStructural input16238 value2336 value1 value2 = (output16238, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16239 value2335 value1 value2 = (output16239, value6896, value1) := by
  rw [input16239_def, output16239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4663]
  try dsimp only
  rw [child16238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4663_skip, output16238_skip]
  kernel_rfl

theorem node16240_cond_eq
    (child4662 : Flapjack.WordAlloc.removeDeadStructural input4662 value5 value1 value2 = (output4662, value2335, value1))
    (child16239 : Flapjack.WordAlloc.removeDeadStructural input16239 value2335 value1 value2 = (output16239, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16240 value5 value1 value2 = (output16240, value6896, value1) := by
  rw [input16240_def, output16240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4662]
  try dsimp only
  rw [child16239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4662_skip, output16239_skip]
  kernel_rfl

theorem node16241_cond_eq
    (child4659 : Flapjack.WordAlloc.removeDeadStructural input4659 value2328 value1 value2 = (output4659, value5, value1))
    (child16240 : Flapjack.WordAlloc.removeDeadStructural input16240 value5 value1 value2 = (output16240, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16241 value2328 value1 value2 = (output16241, value6896, value1) := by
  rw [input16241_def, output16241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4659]
  try dsimp only
  rw [child16240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4659_skip, output16240_skip]
  kernel_rfl

theorem node16242_cond_eq
    (child4648 : Flapjack.WordAlloc.removeDeadStructural input4648 value2328 value1 value2 = (output4648, value2328, value1))
    (child16241 : Flapjack.WordAlloc.removeDeadStructural input16241 value2328 value1 value2 = (output16241, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16242 value2328 value1 value2 = (output16242, value6896, value1) := by
  rw [input16242_def, output16242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4648]
  try dsimp only
  rw [child16241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4648_skip, output16241_skip]
  kernel_rfl

theorem node16243_cond_eq
    (child4647 : Flapjack.WordAlloc.removeDeadStructural input4647 value2327 value1 value2 = (output4647, value2328, value1))
    (child16242 : Flapjack.WordAlloc.removeDeadStructural input16242 value2328 value1 value2 = (output16242, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16243 value2327 value1 value2 = (output16243, value6896, value1) := by
  rw [input16243_def, output16243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4647]
  try dsimp only
  rw [child16242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4647_skip, output16242_skip]
  kernel_rfl

theorem node16244_cond_eq
    (child4646 : Flapjack.WordAlloc.removeDeadStructural input4646 value5 value1 value2 = (output4646, value2327, value1))
    (child16243 : Flapjack.WordAlloc.removeDeadStructural input16243 value2327 value1 value2 = (output16243, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16244 value5 value1 value2 = (output16244, value6896, value1) := by
  rw [input16244_def, output16244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4646]
  try dsimp only
  rw [child16243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4646_skip, output16243_skip]
  kernel_rfl

theorem node16245_cond_eq
    (child4643 : Flapjack.WordAlloc.removeDeadStructural input4643 value2320 value1 value2 = (output4643, value5, value1))
    (child16244 : Flapjack.WordAlloc.removeDeadStructural input16244 value5 value1 value2 = (output16244, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16245 value2320 value1 value2 = (output16245, value6896, value1) := by
  rw [input16245_def, output16245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4643]
  try dsimp only
  rw [child16244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4643_skip, output16244_skip]
  kernel_rfl

theorem node16246_cond_eq
    (child4632 : Flapjack.WordAlloc.removeDeadStructural input4632 value2320 value1 value2 = (output4632, value2320, value1))
    (child16245 : Flapjack.WordAlloc.removeDeadStructural input16245 value2320 value1 value2 = (output16245, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16246 value2320 value1 value2 = (output16246, value6896, value1) := by
  rw [input16246_def, output16246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4632]
  try dsimp only
  rw [child16245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4632_skip, output16245_skip]
  kernel_rfl

theorem node16247_cond_eq
    (child4631 : Flapjack.WordAlloc.removeDeadStructural input4631 value2319 value1 value2 = (output4631, value2320, value1))
    (child16246 : Flapjack.WordAlloc.removeDeadStructural input16246 value2320 value1 value2 = (output16246, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16247 value2319 value1 value2 = (output16247, value6896, value1) := by
  rw [input16247_def, output16247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4631]
  try dsimp only
  rw [child16246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4631_skip, output16246_skip]
  kernel_rfl

theorem node16248_cond_eq
    (child4630 : Flapjack.WordAlloc.removeDeadStructural input4630 value5 value1 value2 = (output4630, value2319, value1))
    (child16247 : Flapjack.WordAlloc.removeDeadStructural input16247 value2319 value1 value2 = (output16247, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16248 value5 value1 value2 = (output16248, value6896, value1) := by
  rw [input16248_def, output16248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4630]
  try dsimp only
  rw [child16247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4630_skip, output16247_skip]
  kernel_rfl

theorem node16249_cond_eq
    (child4627 : Flapjack.WordAlloc.removeDeadStructural input4627 value2312 value1 value2 = (output4627, value5, value1))
    (child16248 : Flapjack.WordAlloc.removeDeadStructural input16248 value5 value1 value2 = (output16248, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16249 value2312 value1 value2 = (output16249, value6896, value1) := by
  rw [input16249_def, output16249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4627]
  try dsimp only
  rw [child16248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4627_skip, output16248_skip]
  kernel_rfl

theorem node16250_cond_eq
    (child4616 : Flapjack.WordAlloc.removeDeadStructural input4616 value2312 value1 value2 = (output4616, value2312, value1))
    (child16249 : Flapjack.WordAlloc.removeDeadStructural input16249 value2312 value1 value2 = (output16249, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16250 value2312 value1 value2 = (output16250, value6896, value1) := by
  rw [input16250_def, output16250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4616]
  try dsimp only
  rw [child16249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4616_skip, output16249_skip]
  kernel_rfl

theorem node16251_cond_eq
    (child4615 : Flapjack.WordAlloc.removeDeadStructural input4615 value2311 value1 value2 = (output4615, value2312, value1))
    (child16250 : Flapjack.WordAlloc.removeDeadStructural input16250 value2312 value1 value2 = (output16250, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16251 value2311 value1 value2 = (output16251, value6896, value1) := by
  rw [input16251_def, output16251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4615]
  try dsimp only
  rw [child16250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4615_skip, output16250_skip]
  kernel_rfl

theorem node16252_cond_eq
    (child4614 : Flapjack.WordAlloc.removeDeadStructural input4614 value5 value1 value2 = (output4614, value2311, value1))
    (child16251 : Flapjack.WordAlloc.removeDeadStructural input16251 value2311 value1 value2 = (output16251, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16252 value5 value1 value2 = (output16252, value6896, value1) := by
  rw [input16252_def, output16252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4614]
  try dsimp only
  rw [child16251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4614_skip, output16251_skip]
  kernel_rfl

theorem node16253_cond_eq
    (child4611 : Flapjack.WordAlloc.removeDeadStructural input4611 value2304 value1 value2 = (output4611, value5, value1))
    (child16252 : Flapjack.WordAlloc.removeDeadStructural input16252 value5 value1 value2 = (output16252, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16253 value2304 value1 value2 = (output16253, value6896, value1) := by
  rw [input16253_def, output16253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4611]
  try dsimp only
  rw [child16252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4611_skip, output16252_skip]
  kernel_rfl

theorem node16254_cond_eq
    (child4600 : Flapjack.WordAlloc.removeDeadStructural input4600 value2304 value1 value2 = (output4600, value2304, value1))
    (child16253 : Flapjack.WordAlloc.removeDeadStructural input16253 value2304 value1 value2 = (output16253, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16254 value2304 value1 value2 = (output16254, value6896, value1) := by
  rw [input16254_def, output16254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4600]
  try dsimp only
  rw [child16253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4600_skip, output16253_skip]
  kernel_rfl

theorem node16255_cond_eq
    (child4599 : Flapjack.WordAlloc.removeDeadStructural input4599 value2303 value1 value2 = (output4599, value2304, value1))
    (child16254 : Flapjack.WordAlloc.removeDeadStructural input16254 value2304 value1 value2 = (output16254, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16255 value2303 value1 value2 = (output16255, value6896, value1) := by
  rw [input16255_def, output16255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4599]
  try dsimp only
  rw [child16254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4599_skip, output16254_skip]
  kernel_rfl

theorem node16256_cond_eq
    (child4598 : Flapjack.WordAlloc.removeDeadStructural input4598 value5 value1 value2 = (output4598, value2303, value1))
    (child16255 : Flapjack.WordAlloc.removeDeadStructural input16255 value2303 value1 value2 = (output16255, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16256 value5 value1 value2 = (output16256, value6896, value1) := by
  rw [input16256_def, output16256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4598]
  try dsimp only
  rw [child16255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4598_skip, output16255_skip]
  kernel_rfl

theorem node16257_cond_eq
    (child4595 : Flapjack.WordAlloc.removeDeadStructural input4595 value2296 value1 value2 = (output4595, value5, value1))
    (child16256 : Flapjack.WordAlloc.removeDeadStructural input16256 value5 value1 value2 = (output16256, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16257 value2296 value1 value2 = (output16257, value6896, value1) := by
  rw [input16257_def, output16257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4595]
  try dsimp only
  rw [child16256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4595_skip, output16256_skip]
  kernel_rfl

theorem node16258_cond_eq
    (child4584 : Flapjack.WordAlloc.removeDeadStructural input4584 value2296 value1 value2 = (output4584, value2296, value1))
    (child16257 : Flapjack.WordAlloc.removeDeadStructural input16257 value2296 value1 value2 = (output16257, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16258 value2296 value1 value2 = (output16258, value6896, value1) := by
  rw [input16258_def, output16258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4584]
  try dsimp only
  rw [child16257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4584_skip, output16257_skip]
  kernel_rfl

theorem node16259_cond_eq
    (child4583 : Flapjack.WordAlloc.removeDeadStructural input4583 value2295 value1 value2 = (output4583, value2296, value1))
    (child16258 : Flapjack.WordAlloc.removeDeadStructural input16258 value2296 value1 value2 = (output16258, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16259 value2295 value1 value2 = (output16259, value6896, value1) := by
  rw [input16259_def, output16259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4583]
  try dsimp only
  rw [child16258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4583_skip, output16258_skip]
  kernel_rfl

theorem node16260_cond_eq
    (child4582 : Flapjack.WordAlloc.removeDeadStructural input4582 value5 value1 value2 = (output4582, value2295, value1))
    (child16259 : Flapjack.WordAlloc.removeDeadStructural input16259 value2295 value1 value2 = (output16259, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16260 value5 value1 value2 = (output16260, value6896, value1) := by
  rw [input16260_def, output16260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4582]
  try dsimp only
  rw [child16259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4582_skip, output16259_skip]
  kernel_rfl

theorem node16261_cond_eq
    (child4579 : Flapjack.WordAlloc.removeDeadStructural input4579 value2288 value1 value2 = (output4579, value5, value1))
    (child16260 : Flapjack.WordAlloc.removeDeadStructural input16260 value5 value1 value2 = (output16260, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16261 value2288 value1 value2 = (output16261, value6896, value1) := by
  rw [input16261_def, output16261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4579]
  try dsimp only
  rw [child16260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4579_skip, output16260_skip]
  kernel_rfl

theorem node16262_cond_eq
    (child4568 : Flapjack.WordAlloc.removeDeadStructural input4568 value2288 value1 value2 = (output4568, value2288, value1))
    (child16261 : Flapjack.WordAlloc.removeDeadStructural input16261 value2288 value1 value2 = (output16261, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16262 value2288 value1 value2 = (output16262, value6896, value1) := by
  rw [input16262_def, output16262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4568]
  try dsimp only
  rw [child16261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4568_skip, output16261_skip]
  kernel_rfl

theorem node16263_cond_eq
    (child4567 : Flapjack.WordAlloc.removeDeadStructural input4567 value2287 value1 value2 = (output4567, value2288, value1))
    (child16262 : Flapjack.WordAlloc.removeDeadStructural input16262 value2288 value1 value2 = (output16262, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16263 value2287 value1 value2 = (output16263, value6896, value1) := by
  rw [input16263_def, output16263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4567]
  try dsimp only
  rw [child16262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4567_skip, output16262_skip]
  kernel_rfl

theorem node16264_cond_eq
    (child4566 : Flapjack.WordAlloc.removeDeadStructural input4566 value5 value1 value2 = (output4566, value2287, value1))
    (child16263 : Flapjack.WordAlloc.removeDeadStructural input16263 value2287 value1 value2 = (output16263, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16264 value5 value1 value2 = (output16264, value6896, value1) := by
  rw [input16264_def, output16264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4566]
  try dsimp only
  rw [child16263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4566_skip, output16263_skip]
  kernel_rfl

theorem node16265_cond_eq
    (child4563 : Flapjack.WordAlloc.removeDeadStructural input4563 value2280 value1 value2 = (output4563, value5, value1))
    (child16264 : Flapjack.WordAlloc.removeDeadStructural input16264 value5 value1 value2 = (output16264, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16265 value2280 value1 value2 = (output16265, value6896, value1) := by
  rw [input16265_def, output16265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4563]
  try dsimp only
  rw [child16264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4563_skip, output16264_skip]
  kernel_rfl

theorem node16266_cond_eq
    (child4552 : Flapjack.WordAlloc.removeDeadStructural input4552 value2280 value1 value2 = (output4552, value2280, value1))
    (child16265 : Flapjack.WordAlloc.removeDeadStructural input16265 value2280 value1 value2 = (output16265, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16266 value2280 value1 value2 = (output16266, value6896, value1) := by
  rw [input16266_def, output16266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4552]
  try dsimp only
  rw [child16265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4552_skip, output16265_skip]
  kernel_rfl

theorem node16267_cond_eq
    (child4551 : Flapjack.WordAlloc.removeDeadStructural input4551 value2279 value1 value2 = (output4551, value2280, value1))
    (child16266 : Flapjack.WordAlloc.removeDeadStructural input16266 value2280 value1 value2 = (output16266, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16267 value2279 value1 value2 = (output16267, value6896, value1) := by
  rw [input16267_def, output16267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4551]
  try dsimp only
  rw [child16266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4551_skip, output16266_skip]
  kernel_rfl

theorem node16268_cond_eq
    (child4550 : Flapjack.WordAlloc.removeDeadStructural input4550 value5 value1 value2 = (output4550, value2279, value1))
    (child16267 : Flapjack.WordAlloc.removeDeadStructural input16267 value2279 value1 value2 = (output16267, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16268 value5 value1 value2 = (output16268, value6896, value1) := by
  rw [input16268_def, output16268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4550]
  try dsimp only
  rw [child16267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4550_skip, output16267_skip]
  kernel_rfl

theorem node16269_cond_eq
    (child4547 : Flapjack.WordAlloc.removeDeadStructural input4547 value2272 value1 value2 = (output4547, value5, value1))
    (child16268 : Flapjack.WordAlloc.removeDeadStructural input16268 value5 value1 value2 = (output16268, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16269 value2272 value1 value2 = (output16269, value6896, value1) := by
  rw [input16269_def, output16269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4547]
  try dsimp only
  rw [child16268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4547_skip, output16268_skip]
  kernel_rfl

theorem node16270_cond_eq
    (child4536 : Flapjack.WordAlloc.removeDeadStructural input4536 value2272 value1 value2 = (output4536, value2272, value1))
    (child16269 : Flapjack.WordAlloc.removeDeadStructural input16269 value2272 value1 value2 = (output16269, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16270 value2272 value1 value2 = (output16270, value6896, value1) := by
  rw [input16270_def, output16270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4536]
  try dsimp only
  rw [child16269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4536_skip, output16269_skip]
  kernel_rfl

theorem node16271_cond_eq
    (child4535 : Flapjack.WordAlloc.removeDeadStructural input4535 value2271 value1 value2 = (output4535, value2272, value1))
    (child16270 : Flapjack.WordAlloc.removeDeadStructural input16270 value2272 value1 value2 = (output16270, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16271 value2271 value1 value2 = (output16271, value6896, value1) := by
  rw [input16271_def, output16271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4535]
  try dsimp only
  rw [child16270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4535_skip, output16270_skip]
  kernel_rfl

theorem node16272_cond_eq
    (child4534 : Flapjack.WordAlloc.removeDeadStructural input4534 value5 value1 value2 = (output4534, value2271, value1))
    (child16271 : Flapjack.WordAlloc.removeDeadStructural input16271 value2271 value1 value2 = (output16271, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16272 value5 value1 value2 = (output16272, value6896, value1) := by
  rw [input16272_def, output16272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4534]
  try dsimp only
  rw [child16271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4534_skip, output16271_skip]
  kernel_rfl

theorem node16273_cond_eq
    (child4531 : Flapjack.WordAlloc.removeDeadStructural input4531 value2264 value1 value2 = (output4531, value5, value1))
    (child16272 : Flapjack.WordAlloc.removeDeadStructural input16272 value5 value1 value2 = (output16272, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16273 value2264 value1 value2 = (output16273, value6896, value1) := by
  rw [input16273_def, output16273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4531]
  try dsimp only
  rw [child16272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4531_skip, output16272_skip]
  kernel_rfl

theorem node16274_cond_eq
    (child4520 : Flapjack.WordAlloc.removeDeadStructural input4520 value2264 value1 value2 = (output4520, value2264, value1))
    (child16273 : Flapjack.WordAlloc.removeDeadStructural input16273 value2264 value1 value2 = (output16273, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16274 value2264 value1 value2 = (output16274, value6896, value1) := by
  rw [input16274_def, output16274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4520]
  try dsimp only
  rw [child16273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4520_skip, output16273_skip]
  kernel_rfl

theorem node16275_cond_eq
    (child4519 : Flapjack.WordAlloc.removeDeadStructural input4519 value2263 value1 value2 = (output4519, value2264, value1))
    (child16274 : Flapjack.WordAlloc.removeDeadStructural input16274 value2264 value1 value2 = (output16274, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16275 value2263 value1 value2 = (output16275, value6896, value1) := by
  rw [input16275_def, output16275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4519]
  try dsimp only
  rw [child16274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4519_skip, output16274_skip]
  kernel_rfl

theorem node16276_cond_eq
    (child4518 : Flapjack.WordAlloc.removeDeadStructural input4518 value5 value1 value2 = (output4518, value2263, value1))
    (child16275 : Flapjack.WordAlloc.removeDeadStructural input16275 value2263 value1 value2 = (output16275, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16276 value5 value1 value2 = (output16276, value6896, value1) := by
  rw [input16276_def, output16276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4518]
  try dsimp only
  rw [child16275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4518_skip, output16275_skip]
  kernel_rfl

theorem node16277_cond_eq
    (child4515 : Flapjack.WordAlloc.removeDeadStructural input4515 value2256 value1 value2 = (output4515, value5, value1))
    (child16276 : Flapjack.WordAlloc.removeDeadStructural input16276 value5 value1 value2 = (output16276, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16277 value2256 value1 value2 = (output16277, value6896, value1) := by
  rw [input16277_def, output16277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4515]
  try dsimp only
  rw [child16276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4515_skip, output16276_skip]
  kernel_rfl

theorem node16278_cond_eq
    (child4504 : Flapjack.WordAlloc.removeDeadStructural input4504 value2256 value1 value2 = (output4504, value2256, value1))
    (child16277 : Flapjack.WordAlloc.removeDeadStructural input16277 value2256 value1 value2 = (output16277, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16278 value2256 value1 value2 = (output16278, value6896, value1) := by
  rw [input16278_def, output16278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4504]
  try dsimp only
  rw [child16277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4504_skip, output16277_skip]
  kernel_rfl

theorem node16279_cond_eq
    (child4503 : Flapjack.WordAlloc.removeDeadStructural input4503 value2255 value1 value2 = (output4503, value2256, value1))
    (child16278 : Flapjack.WordAlloc.removeDeadStructural input16278 value2256 value1 value2 = (output16278, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16279 value2255 value1 value2 = (output16279, value6896, value1) := by
  rw [input16279_def, output16279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4503]
  try dsimp only
  rw [child16278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4503_skip, output16278_skip]
  kernel_rfl

theorem node16280_cond_eq
    (child4502 : Flapjack.WordAlloc.removeDeadStructural input4502 value5 value1 value2 = (output4502, value2255, value1))
    (child16279 : Flapjack.WordAlloc.removeDeadStructural input16279 value2255 value1 value2 = (output16279, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16280 value5 value1 value2 = (output16280, value6896, value1) := by
  rw [input16280_def, output16280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4502]
  try dsimp only
  rw [child16279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4502_skip, output16279_skip]
  kernel_rfl

theorem node16281_cond_eq
    (child4499 : Flapjack.WordAlloc.removeDeadStructural input4499 value2248 value1 value2 = (output4499, value5, value1))
    (child16280 : Flapjack.WordAlloc.removeDeadStructural input16280 value5 value1 value2 = (output16280, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16281 value2248 value1 value2 = (output16281, value6896, value1) := by
  rw [input16281_def, output16281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4499]
  try dsimp only
  rw [child16280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4499_skip, output16280_skip]
  kernel_rfl

theorem node16282_cond_eq
    (child4488 : Flapjack.WordAlloc.removeDeadStructural input4488 value2248 value1 value2 = (output4488, value2248, value1))
    (child16281 : Flapjack.WordAlloc.removeDeadStructural input16281 value2248 value1 value2 = (output16281, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16282 value2248 value1 value2 = (output16282, value6896, value1) := by
  rw [input16282_def, output16282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4488]
  try dsimp only
  rw [child16281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4488_skip, output16281_skip]
  kernel_rfl

theorem node16283_cond_eq
    (child4487 : Flapjack.WordAlloc.removeDeadStructural input4487 value2247 value1 value2 = (output4487, value2248, value1))
    (child16282 : Flapjack.WordAlloc.removeDeadStructural input16282 value2248 value1 value2 = (output16282, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16283 value2247 value1 value2 = (output16283, value6896, value1) := by
  rw [input16283_def, output16283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4487]
  try dsimp only
  rw [child16282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4487_skip, output16282_skip]
  kernel_rfl

theorem node16284_cond_eq
    (child4486 : Flapjack.WordAlloc.removeDeadStructural input4486 value5 value1 value2 = (output4486, value2247, value1))
    (child16283 : Flapjack.WordAlloc.removeDeadStructural input16283 value2247 value1 value2 = (output16283, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16284 value5 value1 value2 = (output16284, value6896, value1) := by
  rw [input16284_def, output16284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4486]
  try dsimp only
  rw [child16283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4486_skip, output16283_skip]
  kernel_rfl

theorem node16285_cond_eq
    (child4483 : Flapjack.WordAlloc.removeDeadStructural input4483 value2240 value1 value2 = (output4483, value5, value1))
    (child16284 : Flapjack.WordAlloc.removeDeadStructural input16284 value5 value1 value2 = (output16284, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16285 value2240 value1 value2 = (output16285, value6896, value1) := by
  rw [input16285_def, output16285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4483]
  try dsimp only
  rw [child16284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4483_skip, output16284_skip]
  kernel_rfl

theorem node16286_cond_eq
    (child4472 : Flapjack.WordAlloc.removeDeadStructural input4472 value2240 value1 value2 = (output4472, value2240, value1))
    (child16285 : Flapjack.WordAlloc.removeDeadStructural input16285 value2240 value1 value2 = (output16285, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16286 value2240 value1 value2 = (output16286, value6896, value1) := by
  rw [input16286_def, output16286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4472]
  try dsimp only
  rw [child16285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4472_skip, output16285_skip]
  kernel_rfl

theorem node16287_cond_eq
    (child4471 : Flapjack.WordAlloc.removeDeadStructural input4471 value2239 value1 value2 = (output4471, value2240, value1))
    (child16286 : Flapjack.WordAlloc.removeDeadStructural input16286 value2240 value1 value2 = (output16286, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16287 value2239 value1 value2 = (output16287, value6896, value1) := by
  rw [input16287_def, output16287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4471]
  try dsimp only
  rw [child16286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4471_skip, output16286_skip]
  kernel_rfl

theorem node16288_cond_eq
    (child4470 : Flapjack.WordAlloc.removeDeadStructural input4470 value5 value1 value2 = (output4470, value2239, value1))
    (child16287 : Flapjack.WordAlloc.removeDeadStructural input16287 value2239 value1 value2 = (output16287, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16288 value5 value1 value2 = (output16288, value6896, value1) := by
  rw [input16288_def, output16288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4470]
  try dsimp only
  rw [child16287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4470_skip, output16287_skip]
  kernel_rfl

theorem node16289_cond_eq
    (child4467 : Flapjack.WordAlloc.removeDeadStructural input4467 value2232 value1 value2 = (output4467, value5, value1))
    (child16288 : Flapjack.WordAlloc.removeDeadStructural input16288 value5 value1 value2 = (output16288, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16289 value2232 value1 value2 = (output16289, value6896, value1) := by
  rw [input16289_def, output16289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4467]
  try dsimp only
  rw [child16288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4467_skip, output16288_skip]
  kernel_rfl

theorem node16290_cond_eq
    (child4456 : Flapjack.WordAlloc.removeDeadStructural input4456 value2232 value1 value2 = (output4456, value2232, value1))
    (child16289 : Flapjack.WordAlloc.removeDeadStructural input16289 value2232 value1 value2 = (output16289, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16290 value2232 value1 value2 = (output16290, value6896, value1) := by
  rw [input16290_def, output16290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4456]
  try dsimp only
  rw [child16289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4456_skip, output16289_skip]
  kernel_rfl

theorem node16291_cond_eq
    (child4455 : Flapjack.WordAlloc.removeDeadStructural input4455 value2231 value1 value2 = (output4455, value2232, value1))
    (child16290 : Flapjack.WordAlloc.removeDeadStructural input16290 value2232 value1 value2 = (output16290, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16291 value2231 value1 value2 = (output16291, value6896, value1) := by
  rw [input16291_def, output16291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4455]
  try dsimp only
  rw [child16290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4455_skip, output16290_skip]
  kernel_rfl

theorem node16292_cond_eq
    (child4454 : Flapjack.WordAlloc.removeDeadStructural input4454 value5 value1 value2 = (output4454, value2231, value1))
    (child16291 : Flapjack.WordAlloc.removeDeadStructural input16291 value2231 value1 value2 = (output16291, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16292 value5 value1 value2 = (output16292, value6896, value1) := by
  rw [input16292_def, output16292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4454]
  try dsimp only
  rw [child16291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4454_skip, output16291_skip]
  kernel_rfl

theorem node16293_cond_eq
    (child4451 : Flapjack.WordAlloc.removeDeadStructural input4451 value2224 value1 value2 = (output4451, value5, value1))
    (child16292 : Flapjack.WordAlloc.removeDeadStructural input16292 value5 value1 value2 = (output16292, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16293 value2224 value1 value2 = (output16293, value6896, value1) := by
  rw [input16293_def, output16293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4451]
  try dsimp only
  rw [child16292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4451_skip, output16292_skip]
  kernel_rfl

theorem node16294_cond_eq
    (child4440 : Flapjack.WordAlloc.removeDeadStructural input4440 value2224 value1 value2 = (output4440, value2224, value1))
    (child16293 : Flapjack.WordAlloc.removeDeadStructural input16293 value2224 value1 value2 = (output16293, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16294 value2224 value1 value2 = (output16294, value6896, value1) := by
  rw [input16294_def, output16294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4440]
  try dsimp only
  rw [child16293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4440_skip, output16293_skip]
  kernel_rfl

theorem node16295_cond_eq
    (child4439 : Flapjack.WordAlloc.removeDeadStructural input4439 value2223 value1 value2 = (output4439, value2224, value1))
    (child16294 : Flapjack.WordAlloc.removeDeadStructural input16294 value2224 value1 value2 = (output16294, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16295 value2223 value1 value2 = (output16295, value6896, value1) := by
  rw [input16295_def, output16295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4439]
  try dsimp only
  rw [child16294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4439_skip, output16294_skip]
  kernel_rfl

theorem node16296_cond_eq
    (child4438 : Flapjack.WordAlloc.removeDeadStructural input4438 value5 value1 value2 = (output4438, value2223, value1))
    (child16295 : Flapjack.WordAlloc.removeDeadStructural input16295 value2223 value1 value2 = (output16295, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16296 value5 value1 value2 = (output16296, value6896, value1) := by
  rw [input16296_def, output16296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4438]
  try dsimp only
  rw [child16295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4438_skip, output16295_skip]
  kernel_rfl

theorem node16297_cond_eq
    (child4435 : Flapjack.WordAlloc.removeDeadStructural input4435 value2216 value1 value2 = (output4435, value5, value1))
    (child16296 : Flapjack.WordAlloc.removeDeadStructural input16296 value5 value1 value2 = (output16296, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16297 value2216 value1 value2 = (output16297, value6896, value1) := by
  rw [input16297_def, output16297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4435]
  try dsimp only
  rw [child16296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4435_skip, output16296_skip]
  kernel_rfl

theorem node16298_cond_eq
    (child4424 : Flapjack.WordAlloc.removeDeadStructural input4424 value2216 value1 value2 = (output4424, value2216, value1))
    (child16297 : Flapjack.WordAlloc.removeDeadStructural input16297 value2216 value1 value2 = (output16297, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16298 value2216 value1 value2 = (output16298, value6896, value1) := by
  rw [input16298_def, output16298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4424]
  try dsimp only
  rw [child16297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4424_skip, output16297_skip]
  kernel_rfl

theorem node16299_cond_eq
    (child4423 : Flapjack.WordAlloc.removeDeadStructural input4423 value2215 value1 value2 = (output4423, value2216, value1))
    (child16298 : Flapjack.WordAlloc.removeDeadStructural input16298 value2216 value1 value2 = (output16298, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16299 value2215 value1 value2 = (output16299, value6896, value1) := by
  rw [input16299_def, output16299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4423]
  try dsimp only
  rw [child16298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4423_skip, output16298_skip]
  kernel_rfl

theorem node16300_cond_eq
    (child4422 : Flapjack.WordAlloc.removeDeadStructural input4422 value5 value1 value2 = (output4422, value2215, value1))
    (child16299 : Flapjack.WordAlloc.removeDeadStructural input16299 value2215 value1 value2 = (output16299, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16300 value5 value1 value2 = (output16300, value6896, value1) := by
  rw [input16300_def, output16300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4422]
  try dsimp only
  rw [child16299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4422_skip, output16299_skip]
  kernel_rfl

theorem node16301_cond_eq
    (child4419 : Flapjack.WordAlloc.removeDeadStructural input4419 value2208 value1 value2 = (output4419, value5, value1))
    (child16300 : Flapjack.WordAlloc.removeDeadStructural input16300 value5 value1 value2 = (output16300, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16301 value2208 value1 value2 = (output16301, value6896, value1) := by
  rw [input16301_def, output16301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4419]
  try dsimp only
  rw [child16300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4419_skip, output16300_skip]
  kernel_rfl

theorem node16302_cond_eq
    (child4408 : Flapjack.WordAlloc.removeDeadStructural input4408 value2208 value1 value2 = (output4408, value2208, value1))
    (child16301 : Flapjack.WordAlloc.removeDeadStructural input16301 value2208 value1 value2 = (output16301, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16302 value2208 value1 value2 = (output16302, value6896, value1) := by
  rw [input16302_def, output16302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4408]
  try dsimp only
  rw [child16301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4408_skip, output16301_skip]
  kernel_rfl

theorem node16303_cond_eq
    (child4407 : Flapjack.WordAlloc.removeDeadStructural input4407 value2207 value1 value2 = (output4407, value2208, value1))
    (child16302 : Flapjack.WordAlloc.removeDeadStructural input16302 value2208 value1 value2 = (output16302, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16303 value2207 value1 value2 = (output16303, value6896, value1) := by
  rw [input16303_def, output16303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4407]
  try dsimp only
  rw [child16302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4407_skip, output16302_skip]
  kernel_rfl

theorem node16304_cond_eq
    (child4406 : Flapjack.WordAlloc.removeDeadStructural input4406 value5 value1 value2 = (output4406, value2207, value1))
    (child16303 : Flapjack.WordAlloc.removeDeadStructural input16303 value2207 value1 value2 = (output16303, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16304 value5 value1 value2 = (output16304, value6896, value1) := by
  rw [input16304_def, output16304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4406]
  try dsimp only
  rw [child16303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4406_skip, output16303_skip]
  kernel_rfl

theorem node16305_cond_eq
    (child4403 : Flapjack.WordAlloc.removeDeadStructural input4403 value2200 value1 value2 = (output4403, value5, value1))
    (child16304 : Flapjack.WordAlloc.removeDeadStructural input16304 value5 value1 value2 = (output16304, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16305 value2200 value1 value2 = (output16305, value6896, value1) := by
  rw [input16305_def, output16305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4403]
  try dsimp only
  rw [child16304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4403_skip, output16304_skip]
  kernel_rfl

theorem node16306_cond_eq
    (child4392 : Flapjack.WordAlloc.removeDeadStructural input4392 value2200 value1 value2 = (output4392, value2200, value1))
    (child16305 : Flapjack.WordAlloc.removeDeadStructural input16305 value2200 value1 value2 = (output16305, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16306 value2200 value1 value2 = (output16306, value6896, value1) := by
  rw [input16306_def, output16306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4392]
  try dsimp only
  rw [child16305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4392_skip, output16305_skip]
  kernel_rfl

theorem node16307_cond_eq
    (child4391 : Flapjack.WordAlloc.removeDeadStructural input4391 value2199 value1 value2 = (output4391, value2200, value1))
    (child16306 : Flapjack.WordAlloc.removeDeadStructural input16306 value2200 value1 value2 = (output16306, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16307 value2199 value1 value2 = (output16307, value6896, value1) := by
  rw [input16307_def, output16307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4391]
  try dsimp only
  rw [child16306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4391_skip, output16306_skip]
  kernel_rfl

theorem node16308_cond_eq
    (child4390 : Flapjack.WordAlloc.removeDeadStructural input4390 value5 value1 value2 = (output4390, value2199, value1))
    (child16307 : Flapjack.WordAlloc.removeDeadStructural input16307 value2199 value1 value2 = (output16307, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16308 value5 value1 value2 = (output16308, value6896, value1) := by
  rw [input16308_def, output16308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4390]
  try dsimp only
  rw [child16307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4390_skip, output16307_skip]
  kernel_rfl

theorem node16309_cond_eq
    (child4387 : Flapjack.WordAlloc.removeDeadStructural input4387 value2192 value1 value2 = (output4387, value5, value1))
    (child16308 : Flapjack.WordAlloc.removeDeadStructural input16308 value5 value1 value2 = (output16308, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16309 value2192 value1 value2 = (output16309, value6896, value1) := by
  rw [input16309_def, output16309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4387]
  try dsimp only
  rw [child16308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4387_skip, output16308_skip]
  kernel_rfl

theorem node16310_cond_eq
    (child4376 : Flapjack.WordAlloc.removeDeadStructural input4376 value2192 value1 value2 = (output4376, value2192, value1))
    (child16309 : Flapjack.WordAlloc.removeDeadStructural input16309 value2192 value1 value2 = (output16309, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16310 value2192 value1 value2 = (output16310, value6896, value1) := by
  rw [input16310_def, output16310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4376]
  try dsimp only
  rw [child16309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4376_skip, output16309_skip]
  kernel_rfl

theorem node16311_cond_eq
    (child4375 : Flapjack.WordAlloc.removeDeadStructural input4375 value2191 value1 value2 = (output4375, value2192, value1))
    (child16310 : Flapjack.WordAlloc.removeDeadStructural input16310 value2192 value1 value2 = (output16310, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16311 value2191 value1 value2 = (output16311, value6896, value1) := by
  rw [input16311_def, output16311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4375]
  try dsimp only
  rw [child16310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4375_skip, output16310_skip]
  kernel_rfl

theorem node16312_cond_eq
    (child4374 : Flapjack.WordAlloc.removeDeadStructural input4374 value5 value1 value2 = (output4374, value2191, value1))
    (child16311 : Flapjack.WordAlloc.removeDeadStructural input16311 value2191 value1 value2 = (output16311, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16312 value5 value1 value2 = (output16312, value6896, value1) := by
  rw [input16312_def, output16312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4374]
  try dsimp only
  rw [child16311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4374_skip, output16311_skip]
  kernel_rfl

theorem node16313_cond_eq
    (child4371 : Flapjack.WordAlloc.removeDeadStructural input4371 value2184 value1 value2 = (output4371, value5, value1))
    (child16312 : Flapjack.WordAlloc.removeDeadStructural input16312 value5 value1 value2 = (output16312, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16313 value2184 value1 value2 = (output16313, value6896, value1) := by
  rw [input16313_def, output16313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4371]
  try dsimp only
  rw [child16312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4371_skip, output16312_skip]
  kernel_rfl

theorem node16314_cond_eq
    (child4360 : Flapjack.WordAlloc.removeDeadStructural input4360 value2184 value1 value2 = (output4360, value2184, value1))
    (child16313 : Flapjack.WordAlloc.removeDeadStructural input16313 value2184 value1 value2 = (output16313, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16314 value2184 value1 value2 = (output16314, value6896, value1) := by
  rw [input16314_def, output16314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4360]
  try dsimp only
  rw [child16313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4360_skip, output16313_skip]
  kernel_rfl

theorem node16315_cond_eq
    (child4359 : Flapjack.WordAlloc.removeDeadStructural input4359 value2183 value1 value2 = (output4359, value2184, value1))
    (child16314 : Flapjack.WordAlloc.removeDeadStructural input16314 value2184 value1 value2 = (output16314, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16315 value2183 value1 value2 = (output16315, value6896, value1) := by
  rw [input16315_def, output16315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4359]
  try dsimp only
  rw [child16314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4359_skip, output16314_skip]
  kernel_rfl

theorem node16316_cond_eq
    (child4358 : Flapjack.WordAlloc.removeDeadStructural input4358 value5 value1 value2 = (output4358, value2183, value1))
    (child16315 : Flapjack.WordAlloc.removeDeadStructural input16315 value2183 value1 value2 = (output16315, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16316 value5 value1 value2 = (output16316, value6896, value1) := by
  rw [input16316_def, output16316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4358]
  try dsimp only
  rw [child16315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4358_skip, output16315_skip]
  kernel_rfl

theorem node16317_cond_eq
    (child4355 : Flapjack.WordAlloc.removeDeadStructural input4355 value2176 value1 value2 = (output4355, value5, value1))
    (child16316 : Flapjack.WordAlloc.removeDeadStructural input16316 value5 value1 value2 = (output16316, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16317 value2176 value1 value2 = (output16317, value6896, value1) := by
  rw [input16317_def, output16317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4355]
  try dsimp only
  rw [child16316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4355_skip, output16316_skip]
  kernel_rfl

theorem node16318_cond_eq
    (child4344 : Flapjack.WordAlloc.removeDeadStructural input4344 value2176 value1 value2 = (output4344, value2176, value1))
    (child16317 : Flapjack.WordAlloc.removeDeadStructural input16317 value2176 value1 value2 = (output16317, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16318 value2176 value1 value2 = (output16318, value6896, value1) := by
  rw [input16318_def, output16318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4344]
  try dsimp only
  rw [child16317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4344_skip, output16317_skip]
  kernel_rfl

theorem node16319_cond_eq
    (child4343 : Flapjack.WordAlloc.removeDeadStructural input4343 value2175 value1 value2 = (output4343, value2176, value1))
    (child16318 : Flapjack.WordAlloc.removeDeadStructural input16318 value2176 value1 value2 = (output16318, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16319 value2175 value1 value2 = (output16319, value6896, value1) := by
  rw [input16319_def, output16319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4343]
  try dsimp only
  rw [child16318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4343_skip, output16318_skip]
  kernel_rfl

theorem node16320_cond_eq
    (child4342 : Flapjack.WordAlloc.removeDeadStructural input4342 value5 value1 value2 = (output4342, value2175, value1))
    (child16319 : Flapjack.WordAlloc.removeDeadStructural input16319 value2175 value1 value2 = (output16319, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16320 value5 value1 value2 = (output16320, value6896, value1) := by
  rw [input16320_def, output16320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4342]
  try dsimp only
  rw [child16319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4342_skip, output16319_skip]
  kernel_rfl

theorem node16321_cond_eq
    (child4339 : Flapjack.WordAlloc.removeDeadStructural input4339 value2168 value1 value2 = (output4339, value5, value1))
    (child16320 : Flapjack.WordAlloc.removeDeadStructural input16320 value5 value1 value2 = (output16320, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16321 value2168 value1 value2 = (output16321, value6896, value1) := by
  rw [input16321_def, output16321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4339]
  try dsimp only
  rw [child16320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4339_skip, output16320_skip]
  kernel_rfl

theorem node16322_cond_eq
    (child4328 : Flapjack.WordAlloc.removeDeadStructural input4328 value2168 value1 value2 = (output4328, value2168, value1))
    (child16321 : Flapjack.WordAlloc.removeDeadStructural input16321 value2168 value1 value2 = (output16321, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16322 value2168 value1 value2 = (output16322, value6896, value1) := by
  rw [input16322_def, output16322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4328]
  try dsimp only
  rw [child16321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4328_skip, output16321_skip]
  kernel_rfl

theorem node16323_cond_eq
    (child4327 : Flapjack.WordAlloc.removeDeadStructural input4327 value2167 value1 value2 = (output4327, value2168, value1))
    (child16322 : Flapjack.WordAlloc.removeDeadStructural input16322 value2168 value1 value2 = (output16322, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16323 value2167 value1 value2 = (output16323, value6896, value1) := by
  rw [input16323_def, output16323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4327]
  try dsimp only
  rw [child16322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4327_skip, output16322_skip]
  kernel_rfl

theorem node16324_cond_eq
    (child4326 : Flapjack.WordAlloc.removeDeadStructural input4326 value5 value1 value2 = (output4326, value2167, value1))
    (child16323 : Flapjack.WordAlloc.removeDeadStructural input16323 value2167 value1 value2 = (output16323, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16324 value5 value1 value2 = (output16324, value6896, value1) := by
  rw [input16324_def, output16324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4326]
  try dsimp only
  rw [child16323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4326_skip, output16323_skip]
  kernel_rfl

theorem node16325_cond_eq
    (child4323 : Flapjack.WordAlloc.removeDeadStructural input4323 value2160 value1 value2 = (output4323, value5, value1))
    (child16324 : Flapjack.WordAlloc.removeDeadStructural input16324 value5 value1 value2 = (output16324, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16325 value2160 value1 value2 = (output16325, value6896, value1) := by
  rw [input16325_def, output16325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4323]
  try dsimp only
  rw [child16324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4323_skip, output16324_skip]
  kernel_rfl

theorem node16326_cond_eq
    (child4312 : Flapjack.WordAlloc.removeDeadStructural input4312 value2160 value1 value2 = (output4312, value2160, value1))
    (child16325 : Flapjack.WordAlloc.removeDeadStructural input16325 value2160 value1 value2 = (output16325, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16326 value2160 value1 value2 = (output16326, value6896, value1) := by
  rw [input16326_def, output16326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4312]
  try dsimp only
  rw [child16325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4312_skip, output16325_skip]
  kernel_rfl

theorem node16327_cond_eq
    (child4311 : Flapjack.WordAlloc.removeDeadStructural input4311 value2159 value1 value2 = (output4311, value2160, value1))
    (child16326 : Flapjack.WordAlloc.removeDeadStructural input16326 value2160 value1 value2 = (output16326, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16327 value2159 value1 value2 = (output16327, value6896, value1) := by
  rw [input16327_def, output16327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4311]
  try dsimp only
  rw [child16326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4311_skip, output16326_skip]
  kernel_rfl

theorem node16328_cond_eq
    (child4310 : Flapjack.WordAlloc.removeDeadStructural input4310 value5 value1 value2 = (output4310, value2159, value1))
    (child16327 : Flapjack.WordAlloc.removeDeadStructural input16327 value2159 value1 value2 = (output16327, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16328 value5 value1 value2 = (output16328, value6896, value1) := by
  rw [input16328_def, output16328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4310]
  try dsimp only
  rw [child16327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4310_skip, output16327_skip]
  kernel_rfl

theorem node16329_cond_eq
    (child4307 : Flapjack.WordAlloc.removeDeadStructural input4307 value2152 value1 value2 = (output4307, value5, value1))
    (child16328 : Flapjack.WordAlloc.removeDeadStructural input16328 value5 value1 value2 = (output16328, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16329 value2152 value1 value2 = (output16329, value6896, value1) := by
  rw [input16329_def, output16329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4307]
  try dsimp only
  rw [child16328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4307_skip, output16328_skip]
  kernel_rfl

theorem node16330_cond_eq
    (child4296 : Flapjack.WordAlloc.removeDeadStructural input4296 value2152 value1 value2 = (output4296, value2152, value1))
    (child16329 : Flapjack.WordAlloc.removeDeadStructural input16329 value2152 value1 value2 = (output16329, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16330 value2152 value1 value2 = (output16330, value6896, value1) := by
  rw [input16330_def, output16330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4296]
  try dsimp only
  rw [child16329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4296_skip, output16329_skip]
  kernel_rfl

theorem node16331_cond_eq
    (child4295 : Flapjack.WordAlloc.removeDeadStructural input4295 value2151 value1 value2 = (output4295, value2152, value1))
    (child16330 : Flapjack.WordAlloc.removeDeadStructural input16330 value2152 value1 value2 = (output16330, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16331 value2151 value1 value2 = (output16331, value6896, value1) := by
  rw [input16331_def, output16331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4295]
  try dsimp only
  rw [child16330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4295_skip, output16330_skip]
  kernel_rfl

theorem node16332_cond_eq
    (child4294 : Flapjack.WordAlloc.removeDeadStructural input4294 value5 value1 value2 = (output4294, value2151, value1))
    (child16331 : Flapjack.WordAlloc.removeDeadStructural input16331 value2151 value1 value2 = (output16331, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16332 value5 value1 value2 = (output16332, value6896, value1) := by
  rw [input16332_def, output16332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4294]
  try dsimp only
  rw [child16331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4294_skip, output16331_skip]
  kernel_rfl

theorem node16333_cond_eq
    (child4291 : Flapjack.WordAlloc.removeDeadStructural input4291 value2144 value1 value2 = (output4291, value5, value1))
    (child16332 : Flapjack.WordAlloc.removeDeadStructural input16332 value5 value1 value2 = (output16332, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16333 value2144 value1 value2 = (output16333, value6896, value1) := by
  rw [input16333_def, output16333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4291]
  try dsimp only
  rw [child16332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4291_skip, output16332_skip]
  kernel_rfl

theorem node16334_cond_eq
    (child4280 : Flapjack.WordAlloc.removeDeadStructural input4280 value2144 value1 value2 = (output4280, value2144, value1))
    (child16333 : Flapjack.WordAlloc.removeDeadStructural input16333 value2144 value1 value2 = (output16333, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16334 value2144 value1 value2 = (output16334, value6896, value1) := by
  rw [input16334_def, output16334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4280]
  try dsimp only
  rw [child16333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4280_skip, output16333_skip]
  kernel_rfl

theorem node16335_cond_eq
    (child4279 : Flapjack.WordAlloc.removeDeadStructural input4279 value2143 value1 value2 = (output4279, value2144, value1))
    (child16334 : Flapjack.WordAlloc.removeDeadStructural input16334 value2144 value1 value2 = (output16334, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16335 value2143 value1 value2 = (output16335, value6896, value1) := by
  rw [input16335_def, output16335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4279]
  try dsimp only
  rw [child16334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4279_skip, output16334_skip]
  kernel_rfl

theorem node16336_cond_eq
    (child4278 : Flapjack.WordAlloc.removeDeadStructural input4278 value5 value1 value2 = (output4278, value2143, value1))
    (child16335 : Flapjack.WordAlloc.removeDeadStructural input16335 value2143 value1 value2 = (output16335, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16336 value5 value1 value2 = (output16336, value6896, value1) := by
  rw [input16336_def, output16336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4278]
  try dsimp only
  rw [child16335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4278_skip, output16335_skip]
  kernel_rfl

theorem node16337_cond_eq
    (child4275 : Flapjack.WordAlloc.removeDeadStructural input4275 value2136 value1 value2 = (output4275, value5, value1))
    (child16336 : Flapjack.WordAlloc.removeDeadStructural input16336 value5 value1 value2 = (output16336, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16337 value2136 value1 value2 = (output16337, value6896, value1) := by
  rw [input16337_def, output16337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4275]
  try dsimp only
  rw [child16336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4275_skip, output16336_skip]
  kernel_rfl

theorem node16338_cond_eq
    (child4264 : Flapjack.WordAlloc.removeDeadStructural input4264 value2136 value1 value2 = (output4264, value2136, value1))
    (child16337 : Flapjack.WordAlloc.removeDeadStructural input16337 value2136 value1 value2 = (output16337, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16338 value2136 value1 value2 = (output16338, value6896, value1) := by
  rw [input16338_def, output16338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4264]
  try dsimp only
  rw [child16337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4264_skip, output16337_skip]
  kernel_rfl

theorem node16339_cond_eq
    (child4263 : Flapjack.WordAlloc.removeDeadStructural input4263 value2135 value1 value2 = (output4263, value2136, value1))
    (child16338 : Flapjack.WordAlloc.removeDeadStructural input16338 value2136 value1 value2 = (output16338, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16339 value2135 value1 value2 = (output16339, value6896, value1) := by
  rw [input16339_def, output16339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4263]
  try dsimp only
  rw [child16338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4263_skip, output16338_skip]
  kernel_rfl

theorem node16340_cond_eq
    (child4262 : Flapjack.WordAlloc.removeDeadStructural input4262 value5 value1 value2 = (output4262, value2135, value1))
    (child16339 : Flapjack.WordAlloc.removeDeadStructural input16339 value2135 value1 value2 = (output16339, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16340 value5 value1 value2 = (output16340, value6896, value1) := by
  rw [input16340_def, output16340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4262]
  try dsimp only
  rw [child16339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4262_skip, output16339_skip]
  kernel_rfl

theorem node16341_cond_eq
    (child4259 : Flapjack.WordAlloc.removeDeadStructural input4259 value2128 value1 value2 = (output4259, value5, value1))
    (child16340 : Flapjack.WordAlloc.removeDeadStructural input16340 value5 value1 value2 = (output16340, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16341 value2128 value1 value2 = (output16341, value6896, value1) := by
  rw [input16341_def, output16341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4259]
  try dsimp only
  rw [child16340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4259_skip, output16340_skip]
  kernel_rfl

theorem node16342_cond_eq
    (child4248 : Flapjack.WordAlloc.removeDeadStructural input4248 value2128 value1 value2 = (output4248, value2128, value1))
    (child16341 : Flapjack.WordAlloc.removeDeadStructural input16341 value2128 value1 value2 = (output16341, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16342 value2128 value1 value2 = (output16342, value6896, value1) := by
  rw [input16342_def, output16342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4248]
  try dsimp only
  rw [child16341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4248_skip, output16341_skip]
  kernel_rfl

theorem node16343_cond_eq
    (child4247 : Flapjack.WordAlloc.removeDeadStructural input4247 value2127 value1 value2 = (output4247, value2128, value1))
    (child16342 : Flapjack.WordAlloc.removeDeadStructural input16342 value2128 value1 value2 = (output16342, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16343 value2127 value1 value2 = (output16343, value6896, value1) := by
  rw [input16343_def, output16343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4247]
  try dsimp only
  rw [child16342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4247_skip, output16342_skip]
  kernel_rfl

theorem node16344_cond_eq
    (child4246 : Flapjack.WordAlloc.removeDeadStructural input4246 value5 value1 value2 = (output4246, value2127, value1))
    (child16343 : Flapjack.WordAlloc.removeDeadStructural input16343 value2127 value1 value2 = (output16343, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16344 value5 value1 value2 = (output16344, value6896, value1) := by
  rw [input16344_def, output16344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4246]
  try dsimp only
  rw [child16343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4246_skip, output16343_skip]
  kernel_rfl

theorem node16345_cond_eq
    (child4243 : Flapjack.WordAlloc.removeDeadStructural input4243 value2120 value1 value2 = (output4243, value5, value1))
    (child16344 : Flapjack.WordAlloc.removeDeadStructural input16344 value5 value1 value2 = (output16344, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16345 value2120 value1 value2 = (output16345, value6896, value1) := by
  rw [input16345_def, output16345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4243]
  try dsimp only
  rw [child16344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4243_skip, output16344_skip]
  kernel_rfl

theorem node16346_cond_eq
    (child4232 : Flapjack.WordAlloc.removeDeadStructural input4232 value2120 value1 value2 = (output4232, value2120, value1))
    (child16345 : Flapjack.WordAlloc.removeDeadStructural input16345 value2120 value1 value2 = (output16345, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16346 value2120 value1 value2 = (output16346, value6896, value1) := by
  rw [input16346_def, output16346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4232]
  try dsimp only
  rw [child16345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4232_skip, output16345_skip]
  kernel_rfl

theorem node16347_cond_eq
    (child4231 : Flapjack.WordAlloc.removeDeadStructural input4231 value2119 value1 value2 = (output4231, value2120, value1))
    (child16346 : Flapjack.WordAlloc.removeDeadStructural input16346 value2120 value1 value2 = (output16346, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16347 value2119 value1 value2 = (output16347, value6896, value1) := by
  rw [input16347_def, output16347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4231]
  try dsimp only
  rw [child16346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4231_skip, output16346_skip]
  kernel_rfl

theorem node16348_cond_eq
    (child4230 : Flapjack.WordAlloc.removeDeadStructural input4230 value5 value1 value2 = (output4230, value2119, value1))
    (child16347 : Flapjack.WordAlloc.removeDeadStructural input16347 value2119 value1 value2 = (output16347, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16348 value5 value1 value2 = (output16348, value6896, value1) := by
  rw [input16348_def, output16348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4230]
  try dsimp only
  rw [child16347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4230_skip, output16347_skip]
  kernel_rfl

theorem node16349_cond_eq
    (child4227 : Flapjack.WordAlloc.removeDeadStructural input4227 value2112 value1 value2 = (output4227, value5, value1))
    (child16348 : Flapjack.WordAlloc.removeDeadStructural input16348 value5 value1 value2 = (output16348, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16349 value2112 value1 value2 = (output16349, value6896, value1) := by
  rw [input16349_def, output16349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4227]
  try dsimp only
  rw [child16348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4227_skip, output16348_skip]
  kernel_rfl

theorem node16350_cond_eq
    (child4216 : Flapjack.WordAlloc.removeDeadStructural input4216 value2112 value1 value2 = (output4216, value2112, value1))
    (child16349 : Flapjack.WordAlloc.removeDeadStructural input16349 value2112 value1 value2 = (output16349, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16350 value2112 value1 value2 = (output16350, value6896, value1) := by
  rw [input16350_def, output16350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4216]
  try dsimp only
  rw [child16349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4216_skip, output16349_skip]
  kernel_rfl

theorem node16351_cond_eq
    (child4215 : Flapjack.WordAlloc.removeDeadStructural input4215 value2111 value1 value2 = (output4215, value2112, value1))
    (child16350 : Flapjack.WordAlloc.removeDeadStructural input16350 value2112 value1 value2 = (output16350, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16351 value2111 value1 value2 = (output16351, value6896, value1) := by
  rw [input16351_def, output16351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4215]
  try dsimp only
  rw [child16350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4215_skip, output16350_skip]
  kernel_rfl

theorem node16352_cond_eq
    (child4214 : Flapjack.WordAlloc.removeDeadStructural input4214 value5 value1 value2 = (output4214, value2111, value1))
    (child16351 : Flapjack.WordAlloc.removeDeadStructural input16351 value2111 value1 value2 = (output16351, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16352 value5 value1 value2 = (output16352, value6896, value1) := by
  rw [input16352_def, output16352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4214]
  try dsimp only
  rw [child16351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4214_skip, output16351_skip]
  kernel_rfl

theorem node16353_cond_eq
    (child4211 : Flapjack.WordAlloc.removeDeadStructural input4211 value2104 value1 value2 = (output4211, value5, value1))
    (child16352 : Flapjack.WordAlloc.removeDeadStructural input16352 value5 value1 value2 = (output16352, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16353 value2104 value1 value2 = (output16353, value6896, value1) := by
  rw [input16353_def, output16353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4211]
  try dsimp only
  rw [child16352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4211_skip, output16352_skip]
  kernel_rfl

theorem node16354_cond_eq
    (child4200 : Flapjack.WordAlloc.removeDeadStructural input4200 value2104 value1 value2 = (output4200, value2104, value1))
    (child16353 : Flapjack.WordAlloc.removeDeadStructural input16353 value2104 value1 value2 = (output16353, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16354 value2104 value1 value2 = (output16354, value6896, value1) := by
  rw [input16354_def, output16354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4200]
  try dsimp only
  rw [child16353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4200_skip, output16353_skip]
  kernel_rfl

theorem node16355_cond_eq
    (child4199 : Flapjack.WordAlloc.removeDeadStructural input4199 value2103 value1 value2 = (output4199, value2104, value1))
    (child16354 : Flapjack.WordAlloc.removeDeadStructural input16354 value2104 value1 value2 = (output16354, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16355 value2103 value1 value2 = (output16355, value6896, value1) := by
  rw [input16355_def, output16355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4199]
  try dsimp only
  rw [child16354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4199_skip, output16354_skip]
  kernel_rfl

theorem node16356_cond_eq
    (child4198 : Flapjack.WordAlloc.removeDeadStructural input4198 value5 value1 value2 = (output4198, value2103, value1))
    (child16355 : Flapjack.WordAlloc.removeDeadStructural input16355 value2103 value1 value2 = (output16355, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16356 value5 value1 value2 = (output16356, value6896, value1) := by
  rw [input16356_def, output16356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4198]
  try dsimp only
  rw [child16355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4198_skip, output16355_skip]
  kernel_rfl

theorem node16357_cond_eq
    (child4195 : Flapjack.WordAlloc.removeDeadStructural input4195 value2096 value1 value2 = (output4195, value5, value1))
    (child16356 : Flapjack.WordAlloc.removeDeadStructural input16356 value5 value1 value2 = (output16356, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16357 value2096 value1 value2 = (output16357, value6896, value1) := by
  rw [input16357_def, output16357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4195]
  try dsimp only
  rw [child16356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4195_skip, output16356_skip]
  kernel_rfl

theorem node16358_cond_eq
    (child4184 : Flapjack.WordAlloc.removeDeadStructural input4184 value2096 value1 value2 = (output4184, value2096, value1))
    (child16357 : Flapjack.WordAlloc.removeDeadStructural input16357 value2096 value1 value2 = (output16357, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16358 value2096 value1 value2 = (output16358, value6896, value1) := by
  rw [input16358_def, output16358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4184]
  try dsimp only
  rw [child16357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4184_skip, output16357_skip]
  kernel_rfl

theorem node16359_cond_eq
    (child4183 : Flapjack.WordAlloc.removeDeadStructural input4183 value2095 value1 value2 = (output4183, value2096, value1))
    (child16358 : Flapjack.WordAlloc.removeDeadStructural input16358 value2096 value1 value2 = (output16358, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16359 value2095 value1 value2 = (output16359, value6896, value1) := by
  rw [input16359_def, output16359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4183]
  try dsimp only
  rw [child16358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4183_skip, output16358_skip]
  kernel_rfl

theorem node16360_cond_eq
    (child4182 : Flapjack.WordAlloc.removeDeadStructural input4182 value5 value1 value2 = (output4182, value2095, value1))
    (child16359 : Flapjack.WordAlloc.removeDeadStructural input16359 value2095 value1 value2 = (output16359, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16360 value5 value1 value2 = (output16360, value6896, value1) := by
  rw [input16360_def, output16360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4182]
  try dsimp only
  rw [child16359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4182_skip, output16359_skip]
  kernel_rfl

theorem node16361_cond_eq
    (child4179 : Flapjack.WordAlloc.removeDeadStructural input4179 value2088 value1 value2 = (output4179, value5, value1))
    (child16360 : Flapjack.WordAlloc.removeDeadStructural input16360 value5 value1 value2 = (output16360, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16361 value2088 value1 value2 = (output16361, value6896, value1) := by
  rw [input16361_def, output16361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4179]
  try dsimp only
  rw [child16360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4179_skip, output16360_skip]
  kernel_rfl

theorem node16362_cond_eq
    (child4168 : Flapjack.WordAlloc.removeDeadStructural input4168 value2088 value1 value2 = (output4168, value2088, value1))
    (child16361 : Flapjack.WordAlloc.removeDeadStructural input16361 value2088 value1 value2 = (output16361, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16362 value2088 value1 value2 = (output16362, value6896, value1) := by
  rw [input16362_def, output16362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4168]
  try dsimp only
  rw [child16361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4168_skip, output16361_skip]
  kernel_rfl

theorem node16363_cond_eq
    (child4167 : Flapjack.WordAlloc.removeDeadStructural input4167 value2087 value1 value2 = (output4167, value2088, value1))
    (child16362 : Flapjack.WordAlloc.removeDeadStructural input16362 value2088 value1 value2 = (output16362, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16363 value2087 value1 value2 = (output16363, value6896, value1) := by
  rw [input16363_def, output16363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4167]
  try dsimp only
  rw [child16362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4167_skip, output16362_skip]
  kernel_rfl

theorem node16364_cond_eq
    (child4166 : Flapjack.WordAlloc.removeDeadStructural input4166 value5 value1 value2 = (output4166, value2087, value1))
    (child16363 : Flapjack.WordAlloc.removeDeadStructural input16363 value2087 value1 value2 = (output16363, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16364 value5 value1 value2 = (output16364, value6896, value1) := by
  rw [input16364_def, output16364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4166]
  try dsimp only
  rw [child16363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4166_skip, output16363_skip]
  kernel_rfl

theorem node16365_cond_eq
    (child4163 : Flapjack.WordAlloc.removeDeadStructural input4163 value2080 value1 value2 = (output4163, value5, value1))
    (child16364 : Flapjack.WordAlloc.removeDeadStructural input16364 value5 value1 value2 = (output16364, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16365 value2080 value1 value2 = (output16365, value6896, value1) := by
  rw [input16365_def, output16365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4163]
  try dsimp only
  rw [child16364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4163_skip, output16364_skip]
  kernel_rfl

theorem node16366_cond_eq
    (child4152 : Flapjack.WordAlloc.removeDeadStructural input4152 value2080 value1 value2 = (output4152, value2080, value1))
    (child16365 : Flapjack.WordAlloc.removeDeadStructural input16365 value2080 value1 value2 = (output16365, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16366 value2080 value1 value2 = (output16366, value6896, value1) := by
  rw [input16366_def, output16366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4152]
  try dsimp only
  rw [child16365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4152_skip, output16365_skip]
  kernel_rfl

theorem node16367_cond_eq
    (child4151 : Flapjack.WordAlloc.removeDeadStructural input4151 value2079 value1 value2 = (output4151, value2080, value1))
    (child16366 : Flapjack.WordAlloc.removeDeadStructural input16366 value2080 value1 value2 = (output16366, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16367 value2079 value1 value2 = (output16367, value6896, value1) := by
  rw [input16367_def, output16367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4151]
  try dsimp only
  rw [child16366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4151_skip, output16366_skip]
  kernel_rfl

theorem node16368_cond_eq
    (child4150 : Flapjack.WordAlloc.removeDeadStructural input4150 value5 value1 value2 = (output4150, value2079, value1))
    (child16367 : Flapjack.WordAlloc.removeDeadStructural input16367 value2079 value1 value2 = (output16367, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16368 value5 value1 value2 = (output16368, value6896, value1) := by
  rw [input16368_def, output16368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4150]
  try dsimp only
  rw [child16367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4150_skip, output16367_skip]
  kernel_rfl

theorem node16369_cond_eq
    (child4147 : Flapjack.WordAlloc.removeDeadStructural input4147 value2072 value1 value2 = (output4147, value5, value1))
    (child16368 : Flapjack.WordAlloc.removeDeadStructural input16368 value5 value1 value2 = (output16368, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16369 value2072 value1 value2 = (output16369, value6896, value1) := by
  rw [input16369_def, output16369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4147]
  try dsimp only
  rw [child16368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4147_skip, output16368_skip]
  kernel_rfl

theorem node16370_cond_eq
    (child4136 : Flapjack.WordAlloc.removeDeadStructural input4136 value2072 value1 value2 = (output4136, value2072, value1))
    (child16369 : Flapjack.WordAlloc.removeDeadStructural input16369 value2072 value1 value2 = (output16369, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16370 value2072 value1 value2 = (output16370, value6896, value1) := by
  rw [input16370_def, output16370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4136]
  try dsimp only
  rw [child16369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4136_skip, output16369_skip]
  kernel_rfl

theorem node16371_cond_eq
    (child4135 : Flapjack.WordAlloc.removeDeadStructural input4135 value2071 value1 value2 = (output4135, value2072, value1))
    (child16370 : Flapjack.WordAlloc.removeDeadStructural input16370 value2072 value1 value2 = (output16370, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16371 value2071 value1 value2 = (output16371, value6896, value1) := by
  rw [input16371_def, output16371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4135]
  try dsimp only
  rw [child16370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4135_skip, output16370_skip]
  kernel_rfl

theorem node16372_cond_eq
    (child4134 : Flapjack.WordAlloc.removeDeadStructural input4134 value5 value1 value2 = (output4134, value2071, value1))
    (child16371 : Flapjack.WordAlloc.removeDeadStructural input16371 value2071 value1 value2 = (output16371, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16372 value5 value1 value2 = (output16372, value6896, value1) := by
  rw [input16372_def, output16372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4134]
  try dsimp only
  rw [child16371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4134_skip, output16371_skip]
  kernel_rfl

theorem node16373_cond_eq
    (child4131 : Flapjack.WordAlloc.removeDeadStructural input4131 value2064 value1 value2 = (output4131, value5, value1))
    (child16372 : Flapjack.WordAlloc.removeDeadStructural input16372 value5 value1 value2 = (output16372, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16373 value2064 value1 value2 = (output16373, value6896, value1) := by
  rw [input16373_def, output16373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4131]
  try dsimp only
  rw [child16372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4131_skip, output16372_skip]
  kernel_rfl

theorem node16374_cond_eq
    (child4120 : Flapjack.WordAlloc.removeDeadStructural input4120 value2064 value1 value2 = (output4120, value2064, value1))
    (child16373 : Flapjack.WordAlloc.removeDeadStructural input16373 value2064 value1 value2 = (output16373, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16374 value2064 value1 value2 = (output16374, value6896, value1) := by
  rw [input16374_def, output16374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4120]
  try dsimp only
  rw [child16373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4120_skip, output16373_skip]
  kernel_rfl

theorem node16375_cond_eq
    (child4119 : Flapjack.WordAlloc.removeDeadStructural input4119 value2063 value1 value2 = (output4119, value2064, value1))
    (child16374 : Flapjack.WordAlloc.removeDeadStructural input16374 value2064 value1 value2 = (output16374, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16375 value2063 value1 value2 = (output16375, value6896, value1) := by
  rw [input16375_def, output16375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4119]
  try dsimp only
  rw [child16374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4119_skip, output16374_skip]
  kernel_rfl

theorem node16376_cond_eq
    (child4118 : Flapjack.WordAlloc.removeDeadStructural input4118 value5 value1 value2 = (output4118, value2063, value1))
    (child16375 : Flapjack.WordAlloc.removeDeadStructural input16375 value2063 value1 value2 = (output16375, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16376 value5 value1 value2 = (output16376, value6896, value1) := by
  rw [input16376_def, output16376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4118]
  try dsimp only
  rw [child16375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4118_skip, output16375_skip]
  kernel_rfl

theorem node16377_cond_eq
    (child4115 : Flapjack.WordAlloc.removeDeadStructural input4115 value2056 value1 value2 = (output4115, value5, value1))
    (child16376 : Flapjack.WordAlloc.removeDeadStructural input16376 value5 value1 value2 = (output16376, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16377 value2056 value1 value2 = (output16377, value6896, value1) := by
  rw [input16377_def, output16377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4115]
  try dsimp only
  rw [child16376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4115_skip, output16376_skip]
  kernel_rfl

theorem node16378_cond_eq
    (child4104 : Flapjack.WordAlloc.removeDeadStructural input4104 value2056 value1 value2 = (output4104, value2056, value1))
    (child16377 : Flapjack.WordAlloc.removeDeadStructural input16377 value2056 value1 value2 = (output16377, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16378 value2056 value1 value2 = (output16378, value6896, value1) := by
  rw [input16378_def, output16378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4104]
  try dsimp only
  rw [child16377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4104_skip, output16377_skip]
  kernel_rfl

theorem node16379_cond_eq
    (child4103 : Flapjack.WordAlloc.removeDeadStructural input4103 value2055 value1 value2 = (output4103, value2056, value1))
    (child16378 : Flapjack.WordAlloc.removeDeadStructural input16378 value2056 value1 value2 = (output16378, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16379 value2055 value1 value2 = (output16379, value6896, value1) := by
  rw [input16379_def, output16379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4103]
  try dsimp only
  rw [child16378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4103_skip, output16378_skip]
  kernel_rfl

theorem node16380_cond_eq
    (child4102 : Flapjack.WordAlloc.removeDeadStructural input4102 value5 value1 value2 = (output4102, value2055, value1))
    (child16379 : Flapjack.WordAlloc.removeDeadStructural input16379 value2055 value1 value2 = (output16379, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16380 value5 value1 value2 = (output16380, value6896, value1) := by
  rw [input16380_def, output16380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4102]
  try dsimp only
  rw [child16379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4102_skip, output16379_skip]
  kernel_rfl

theorem node16381_cond_eq
    (child4099 : Flapjack.WordAlloc.removeDeadStructural input4099 value2048 value1 value2 = (output4099, value5, value1))
    (child16380 : Flapjack.WordAlloc.removeDeadStructural input16380 value5 value1 value2 = (output16380, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16381 value2048 value1 value2 = (output16381, value6896, value1) := by
  rw [input16381_def, output16381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4099]
  try dsimp only
  rw [child16380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4099_skip, output16380_skip]
  kernel_rfl

theorem node16382_cond_eq
    (child4088 : Flapjack.WordAlloc.removeDeadStructural input4088 value2048 value1 value2 = (output4088, value2048, value1))
    (child16381 : Flapjack.WordAlloc.removeDeadStructural input16381 value2048 value1 value2 = (output16381, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16382 value2048 value1 value2 = (output16382, value6896, value1) := by
  rw [input16382_def, output16382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4088]
  try dsimp only
  rw [child16381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4088_skip, output16381_skip]
  kernel_rfl

theorem node16383_cond_eq
    (child4087 : Flapjack.WordAlloc.removeDeadStructural input4087 value2047 value1 value2 = (output4087, value2048, value1))
    (child16382 : Flapjack.WordAlloc.removeDeadStructural input16382 value2048 value1 value2 = (output16382, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16383 value2047 value1 value2 = (output16383, value6896, value1) := by
  rw [input16383_def, output16383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4087]
  try dsimp only
  rw [child16382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4087_skip, output16382_skip]
  kernel_rfl

#print axioms node16383_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
