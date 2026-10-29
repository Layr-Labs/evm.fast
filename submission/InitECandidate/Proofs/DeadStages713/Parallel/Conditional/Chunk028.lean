import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk028
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node7168_cond_eq
    (child7166 : Flapjack.WordAlloc.removeDeadStructural input7166 value3588 value1 value2 = (output7166, value3589, value1))
    (child7167 : Flapjack.WordAlloc.removeDeadStructural input7167 value3589 value1 value2 = (output7167, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7168 value3588 value1 value2 = (output7168, value5, value1) := by
  rw [input7168_def, output7168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7166]
  dsimp only
  rw [child7167]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7166_skip, output7167_skip]
  kernel_rfl

theorem node7169_cond_eq
    (child7165 : Flapjack.WordAlloc.removeDeadStructural input7165 value3587 value1 value2 = (output7165, value3588, value1))
    (child7168 : Flapjack.WordAlloc.removeDeadStructural input7168 value3588 value1 value2 = (output7168, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7169 value3587 value1 value2 = (output7169, value5, value1) := by
  rw [input7169_def, output7169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7165]
  dsimp only
  rw [child7168]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7165_skip, output7168_skip]
  kernel_rfl

theorem node7170_cond_eq
    (child7164 : Flapjack.WordAlloc.removeDeadStructural input7164 value3586 value1 value2 = (output7164, value3587, value1))
    (child7169 : Flapjack.WordAlloc.removeDeadStructural input7169 value3587 value1 value2 = (output7169, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7170 value3586 value1 value2 = (output7170, value5, value1) := by
  rw [input7170_def, output7170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7164]
  dsimp only
  rw [child7169]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7164_skip, output7169_skip]
  kernel_rfl

theorem node7171_cond_eq
    (child7163 : Flapjack.WordAlloc.removeDeadStructural input7163 value3584 value1 value2 = (output7163, value3586, value1))
    (child7170 : Flapjack.WordAlloc.removeDeadStructural input7170 value3586 value1 value2 = (output7170, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7171 value3584 value1 value2 = (output7171, value5, value1) := by
  rw [input7171_def, output7171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7163]
  dsimp only
  rw [child7170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7163_skip, output7170_skip]
  kernel_rfl

theorem node7172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7172 value5 value1 value2 = (output7172, value3590, value1) := by
  rw [input7172_def, output7172_def]
  kernel_rfl

theorem node7173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7173 value3590 value1 value2 = (output7173, value3591, value1) := by
  rw [input7173_def, output7173_def]
  kernel_rfl

theorem node7174_cond_eq
    (child7172 : Flapjack.WordAlloc.removeDeadStructural input7172 value5 value1 value2 = (output7172, value3590, value1))
    (child7173 : Flapjack.WordAlloc.removeDeadStructural input7173 value3590 value1 value2 = (output7173, value3591, value1)) : Flapjack.WordAlloc.removeDeadStructural input7174 value5 value1 value2 = (output7174, value3591, value1) := by
  rw [input7174_def, output7174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7172]
  dsimp only
  rw [child7173]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7172_skip, output7173_skip]
  kernel_rfl

theorem node7175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7175 value3591 value1 value2 = (output7175, value3592, value1) := by
  rw [input7175_def, output7175_def]
  kernel_rfl

theorem node7176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7176 value3592 value1 value2 = (output7176, value3592, value1) := by
  rw [input7176_def, output7176_def]
  kernel_rfl

theorem node7177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7177 value3592 value1 value2 = (output7177, value3593, value1) := by
  rw [input7177_def, output7177_def]
  kernel_rfl

theorem node7178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7178 value3593 value1 value2 = (output7178, value3594, value1) := by
  rw [input7178_def, output7178_def]
  kernel_rfl

theorem node7179_cond_eq
    (child7177 : Flapjack.WordAlloc.removeDeadStructural input7177 value3592 value1 value2 = (output7177, value3593, value1))
    (child7178 : Flapjack.WordAlloc.removeDeadStructural input7178 value3593 value1 value2 = (output7178, value3594, value1)) : Flapjack.WordAlloc.removeDeadStructural input7179 value3592 value1 value2 = (output7179, value3594, value1) := by
  rw [input7179_def, output7179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7177]
  dsimp only
  rw [child7178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7177_skip, output7178_skip]
  kernel_rfl

theorem node7180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7180 value3594 value1 value2 = (output7180, value3595, value1) := by
  rw [input7180_def, output7180_def]
  kernel_rfl

theorem node7181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7181 value3595 value1 value2 = (output7181, value3596, value1) := by
  rw [input7181_def, output7181_def]
  kernel_rfl

theorem node7182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7182 value3596 value1 value2 = (output7182, value3597, value1) := by
  rw [input7182_def, output7182_def]
  kernel_rfl

theorem node7183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7183 value3597 value1 value2 = (output7183, value5, value1) := by
  rw [input7183_def, output7183_def]
  kernel_rfl

theorem node7184_cond_eq
    (child7182 : Flapjack.WordAlloc.removeDeadStructural input7182 value3596 value1 value2 = (output7182, value3597, value1))
    (child7183 : Flapjack.WordAlloc.removeDeadStructural input7183 value3597 value1 value2 = (output7183, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7184 value3596 value1 value2 = (output7184, value5, value1) := by
  rw [input7184_def, output7184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7182]
  dsimp only
  rw [child7183]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7182_skip, output7183_skip]
  kernel_rfl

theorem node7185_cond_eq
    (child7181 : Flapjack.WordAlloc.removeDeadStructural input7181 value3595 value1 value2 = (output7181, value3596, value1))
    (child7184 : Flapjack.WordAlloc.removeDeadStructural input7184 value3596 value1 value2 = (output7184, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7185 value3595 value1 value2 = (output7185, value5, value1) := by
  rw [input7185_def, output7185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7181]
  dsimp only
  rw [child7184]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7181_skip, output7184_skip]
  kernel_rfl

theorem node7186_cond_eq
    (child7180 : Flapjack.WordAlloc.removeDeadStructural input7180 value3594 value1 value2 = (output7180, value3595, value1))
    (child7185 : Flapjack.WordAlloc.removeDeadStructural input7185 value3595 value1 value2 = (output7185, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7186 value3594 value1 value2 = (output7186, value5, value1) := by
  rw [input7186_def, output7186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7180]
  dsimp only
  rw [child7185]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7180_skip, output7185_skip]
  kernel_rfl

theorem node7187_cond_eq
    (child7179 : Flapjack.WordAlloc.removeDeadStructural input7179 value3592 value1 value2 = (output7179, value3594, value1))
    (child7186 : Flapjack.WordAlloc.removeDeadStructural input7186 value3594 value1 value2 = (output7186, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7187 value3592 value1 value2 = (output7187, value5, value1) := by
  rw [input7187_def, output7187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7179]
  dsimp only
  rw [child7186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7179_skip, output7186_skip]
  kernel_rfl

theorem node7188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7188 value5 value1 value2 = (output7188, value3598, value1) := by
  rw [input7188_def, output7188_def]
  kernel_rfl

theorem node7189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7189 value3598 value1 value2 = (output7189, value3599, value1) := by
  rw [input7189_def, output7189_def]
  kernel_rfl

theorem node7190_cond_eq
    (child7188 : Flapjack.WordAlloc.removeDeadStructural input7188 value5 value1 value2 = (output7188, value3598, value1))
    (child7189 : Flapjack.WordAlloc.removeDeadStructural input7189 value3598 value1 value2 = (output7189, value3599, value1)) : Flapjack.WordAlloc.removeDeadStructural input7190 value5 value1 value2 = (output7190, value3599, value1) := by
  rw [input7190_def, output7190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7188]
  dsimp only
  rw [child7189]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7188_skip, output7189_skip]
  kernel_rfl

theorem node7191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7191 value3599 value1 value2 = (output7191, value3600, value1) := by
  rw [input7191_def, output7191_def]
  kernel_rfl

theorem node7192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7192 value3600 value1 value2 = (output7192, value3600, value1) := by
  rw [input7192_def, output7192_def]
  kernel_rfl

theorem node7193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7193 value3600 value1 value2 = (output7193, value3601, value1) := by
  rw [input7193_def, output7193_def]
  kernel_rfl

theorem node7194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7194 value3601 value1 value2 = (output7194, value3602, value1) := by
  rw [input7194_def, output7194_def]
  kernel_rfl

theorem node7195_cond_eq
    (child7193 : Flapjack.WordAlloc.removeDeadStructural input7193 value3600 value1 value2 = (output7193, value3601, value1))
    (child7194 : Flapjack.WordAlloc.removeDeadStructural input7194 value3601 value1 value2 = (output7194, value3602, value1)) : Flapjack.WordAlloc.removeDeadStructural input7195 value3600 value1 value2 = (output7195, value3602, value1) := by
  rw [input7195_def, output7195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7193]
  dsimp only
  rw [child7194]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7193_skip, output7194_skip]
  kernel_rfl

theorem node7196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7196 value3602 value1 value2 = (output7196, value3603, value1) := by
  rw [input7196_def, output7196_def]
  kernel_rfl

theorem node7197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7197 value3603 value1 value2 = (output7197, value3604, value1) := by
  rw [input7197_def, output7197_def]
  kernel_rfl

theorem node7198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7198 value3604 value1 value2 = (output7198, value3605, value1) := by
  rw [input7198_def, output7198_def]
  kernel_rfl

theorem node7199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7199 value3605 value1 value2 = (output7199, value5, value1) := by
  rw [input7199_def, output7199_def]
  kernel_rfl

theorem node7200_cond_eq
    (child7198 : Flapjack.WordAlloc.removeDeadStructural input7198 value3604 value1 value2 = (output7198, value3605, value1))
    (child7199 : Flapjack.WordAlloc.removeDeadStructural input7199 value3605 value1 value2 = (output7199, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7200 value3604 value1 value2 = (output7200, value5, value1) := by
  rw [input7200_def, output7200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7198]
  dsimp only
  rw [child7199]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7198_skip, output7199_skip]
  kernel_rfl

theorem node7201_cond_eq
    (child7197 : Flapjack.WordAlloc.removeDeadStructural input7197 value3603 value1 value2 = (output7197, value3604, value1))
    (child7200 : Flapjack.WordAlloc.removeDeadStructural input7200 value3604 value1 value2 = (output7200, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7201 value3603 value1 value2 = (output7201, value5, value1) := by
  rw [input7201_def, output7201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7197]
  dsimp only
  rw [child7200]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7197_skip, output7200_skip]
  kernel_rfl

theorem node7202_cond_eq
    (child7196 : Flapjack.WordAlloc.removeDeadStructural input7196 value3602 value1 value2 = (output7196, value3603, value1))
    (child7201 : Flapjack.WordAlloc.removeDeadStructural input7201 value3603 value1 value2 = (output7201, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7202 value3602 value1 value2 = (output7202, value5, value1) := by
  rw [input7202_def, output7202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7196]
  dsimp only
  rw [child7201]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7196_skip, output7201_skip]
  kernel_rfl

theorem node7203_cond_eq
    (child7195 : Flapjack.WordAlloc.removeDeadStructural input7195 value3600 value1 value2 = (output7195, value3602, value1))
    (child7202 : Flapjack.WordAlloc.removeDeadStructural input7202 value3602 value1 value2 = (output7202, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7203 value3600 value1 value2 = (output7203, value5, value1) := by
  rw [input7203_def, output7203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7195]
  dsimp only
  rw [child7202]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7195_skip, output7202_skip]
  kernel_rfl

theorem node7204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7204 value5 value1 value2 = (output7204, value3606, value1) := by
  rw [input7204_def, output7204_def]
  kernel_rfl

theorem node7205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7205 value3606 value1 value2 = (output7205, value3607, value1) := by
  rw [input7205_def, output7205_def]
  kernel_rfl

theorem node7206_cond_eq
    (child7204 : Flapjack.WordAlloc.removeDeadStructural input7204 value5 value1 value2 = (output7204, value3606, value1))
    (child7205 : Flapjack.WordAlloc.removeDeadStructural input7205 value3606 value1 value2 = (output7205, value3607, value1)) : Flapjack.WordAlloc.removeDeadStructural input7206 value5 value1 value2 = (output7206, value3607, value1) := by
  rw [input7206_def, output7206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7204]
  dsimp only
  rw [child7205]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7204_skip, output7205_skip]
  kernel_rfl

theorem node7207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7207 value3607 value1 value2 = (output7207, value3608, value1) := by
  rw [input7207_def, output7207_def]
  kernel_rfl

theorem node7208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7208 value3608 value1 value2 = (output7208, value3608, value1) := by
  rw [input7208_def, output7208_def]
  kernel_rfl

theorem node7209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7209 value3608 value1 value2 = (output7209, value3609, value1) := by
  rw [input7209_def, output7209_def]
  kernel_rfl

theorem node7210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7210 value3609 value1 value2 = (output7210, value3610, value1) := by
  rw [input7210_def, output7210_def]
  kernel_rfl

theorem node7211_cond_eq
    (child7209 : Flapjack.WordAlloc.removeDeadStructural input7209 value3608 value1 value2 = (output7209, value3609, value1))
    (child7210 : Flapjack.WordAlloc.removeDeadStructural input7210 value3609 value1 value2 = (output7210, value3610, value1)) : Flapjack.WordAlloc.removeDeadStructural input7211 value3608 value1 value2 = (output7211, value3610, value1) := by
  rw [input7211_def, output7211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7209]
  dsimp only
  rw [child7210]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7209_skip, output7210_skip]
  kernel_rfl

theorem node7212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7212 value3610 value1 value2 = (output7212, value3611, value1) := by
  rw [input7212_def, output7212_def]
  kernel_rfl

theorem node7213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7213 value3611 value1 value2 = (output7213, value3612, value1) := by
  rw [input7213_def, output7213_def]
  kernel_rfl

theorem node7214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7214 value3612 value1 value2 = (output7214, value3613, value1) := by
  rw [input7214_def, output7214_def]
  kernel_rfl

theorem node7215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7215 value3613 value1 value2 = (output7215, value5, value1) := by
  rw [input7215_def, output7215_def]
  kernel_rfl

theorem node7216_cond_eq
    (child7214 : Flapjack.WordAlloc.removeDeadStructural input7214 value3612 value1 value2 = (output7214, value3613, value1))
    (child7215 : Flapjack.WordAlloc.removeDeadStructural input7215 value3613 value1 value2 = (output7215, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7216 value3612 value1 value2 = (output7216, value5, value1) := by
  rw [input7216_def, output7216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7214]
  dsimp only
  rw [child7215]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7214_skip, output7215_skip]
  kernel_rfl

theorem node7217_cond_eq
    (child7213 : Flapjack.WordAlloc.removeDeadStructural input7213 value3611 value1 value2 = (output7213, value3612, value1))
    (child7216 : Flapjack.WordAlloc.removeDeadStructural input7216 value3612 value1 value2 = (output7216, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7217 value3611 value1 value2 = (output7217, value5, value1) := by
  rw [input7217_def, output7217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7213]
  dsimp only
  rw [child7216]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7213_skip, output7216_skip]
  kernel_rfl

theorem node7218_cond_eq
    (child7212 : Flapjack.WordAlloc.removeDeadStructural input7212 value3610 value1 value2 = (output7212, value3611, value1))
    (child7217 : Flapjack.WordAlloc.removeDeadStructural input7217 value3611 value1 value2 = (output7217, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7218 value3610 value1 value2 = (output7218, value5, value1) := by
  rw [input7218_def, output7218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7212]
  dsimp only
  rw [child7217]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7212_skip, output7217_skip]
  kernel_rfl

theorem node7219_cond_eq
    (child7211 : Flapjack.WordAlloc.removeDeadStructural input7211 value3608 value1 value2 = (output7211, value3610, value1))
    (child7218 : Flapjack.WordAlloc.removeDeadStructural input7218 value3610 value1 value2 = (output7218, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7219 value3608 value1 value2 = (output7219, value5, value1) := by
  rw [input7219_def, output7219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7211]
  dsimp only
  rw [child7218]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7211_skip, output7218_skip]
  kernel_rfl

theorem node7220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7220 value5 value1 value2 = (output7220, value3614, value1) := by
  rw [input7220_def, output7220_def]
  kernel_rfl

theorem node7221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7221 value3614 value1 value2 = (output7221, value3615, value1) := by
  rw [input7221_def, output7221_def]
  kernel_rfl

theorem node7222_cond_eq
    (child7220 : Flapjack.WordAlloc.removeDeadStructural input7220 value5 value1 value2 = (output7220, value3614, value1))
    (child7221 : Flapjack.WordAlloc.removeDeadStructural input7221 value3614 value1 value2 = (output7221, value3615, value1)) : Flapjack.WordAlloc.removeDeadStructural input7222 value5 value1 value2 = (output7222, value3615, value1) := by
  rw [input7222_def, output7222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7220]
  dsimp only
  rw [child7221]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7220_skip, output7221_skip]
  kernel_rfl

theorem node7223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7223 value3615 value1 value2 = (output7223, value3616, value1) := by
  rw [input7223_def, output7223_def]
  kernel_rfl

theorem node7224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7224 value3616 value1 value2 = (output7224, value3616, value1) := by
  rw [input7224_def, output7224_def]
  kernel_rfl

theorem node7225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7225 value3616 value1 value2 = (output7225, value3617, value1) := by
  rw [input7225_def, output7225_def]
  kernel_rfl

theorem node7226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7226 value3617 value1 value2 = (output7226, value3618, value1) := by
  rw [input7226_def, output7226_def]
  kernel_rfl

theorem node7227_cond_eq
    (child7225 : Flapjack.WordAlloc.removeDeadStructural input7225 value3616 value1 value2 = (output7225, value3617, value1))
    (child7226 : Flapjack.WordAlloc.removeDeadStructural input7226 value3617 value1 value2 = (output7226, value3618, value1)) : Flapjack.WordAlloc.removeDeadStructural input7227 value3616 value1 value2 = (output7227, value3618, value1) := by
  rw [input7227_def, output7227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7225]
  dsimp only
  rw [child7226]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7225_skip, output7226_skip]
  kernel_rfl

theorem node7228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7228 value3618 value1 value2 = (output7228, value3619, value1) := by
  rw [input7228_def, output7228_def]
  kernel_rfl

theorem node7229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7229 value3619 value1 value2 = (output7229, value3620, value1) := by
  rw [input7229_def, output7229_def]
  kernel_rfl

theorem node7230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7230 value3620 value1 value2 = (output7230, value3621, value1) := by
  rw [input7230_def, output7230_def]
  kernel_rfl

theorem node7231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7231 value3621 value1 value2 = (output7231, value5, value1) := by
  rw [input7231_def, output7231_def]
  kernel_rfl

theorem node7232_cond_eq
    (child7230 : Flapjack.WordAlloc.removeDeadStructural input7230 value3620 value1 value2 = (output7230, value3621, value1))
    (child7231 : Flapjack.WordAlloc.removeDeadStructural input7231 value3621 value1 value2 = (output7231, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7232 value3620 value1 value2 = (output7232, value5, value1) := by
  rw [input7232_def, output7232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7230]
  dsimp only
  rw [child7231]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7230_skip, output7231_skip]
  kernel_rfl

theorem node7233_cond_eq
    (child7229 : Flapjack.WordAlloc.removeDeadStructural input7229 value3619 value1 value2 = (output7229, value3620, value1))
    (child7232 : Flapjack.WordAlloc.removeDeadStructural input7232 value3620 value1 value2 = (output7232, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7233 value3619 value1 value2 = (output7233, value5, value1) := by
  rw [input7233_def, output7233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7229]
  dsimp only
  rw [child7232]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7229_skip, output7232_skip]
  kernel_rfl

theorem node7234_cond_eq
    (child7228 : Flapjack.WordAlloc.removeDeadStructural input7228 value3618 value1 value2 = (output7228, value3619, value1))
    (child7233 : Flapjack.WordAlloc.removeDeadStructural input7233 value3619 value1 value2 = (output7233, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7234 value3618 value1 value2 = (output7234, value5, value1) := by
  rw [input7234_def, output7234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7228]
  dsimp only
  rw [child7233]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7228_skip, output7233_skip]
  kernel_rfl

theorem node7235_cond_eq
    (child7227 : Flapjack.WordAlloc.removeDeadStructural input7227 value3616 value1 value2 = (output7227, value3618, value1))
    (child7234 : Flapjack.WordAlloc.removeDeadStructural input7234 value3618 value1 value2 = (output7234, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7235 value3616 value1 value2 = (output7235, value5, value1) := by
  rw [input7235_def, output7235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7227]
  dsimp only
  rw [child7234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7227_skip, output7234_skip]
  kernel_rfl

theorem node7236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7236 value5 value1 value2 = (output7236, value3622, value1) := by
  rw [input7236_def, output7236_def]
  kernel_rfl

theorem node7237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7237 value3622 value1 value2 = (output7237, value3623, value1) := by
  rw [input7237_def, output7237_def]
  kernel_rfl

theorem node7238_cond_eq
    (child7236 : Flapjack.WordAlloc.removeDeadStructural input7236 value5 value1 value2 = (output7236, value3622, value1))
    (child7237 : Flapjack.WordAlloc.removeDeadStructural input7237 value3622 value1 value2 = (output7237, value3623, value1)) : Flapjack.WordAlloc.removeDeadStructural input7238 value5 value1 value2 = (output7238, value3623, value1) := by
  rw [input7238_def, output7238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7236]
  dsimp only
  rw [child7237]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7236_skip, output7237_skip]
  kernel_rfl

theorem node7239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7239 value3623 value1 value2 = (output7239, value3624, value1) := by
  rw [input7239_def, output7239_def]
  kernel_rfl

theorem node7240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7240 value3624 value1 value2 = (output7240, value3624, value1) := by
  rw [input7240_def, output7240_def]
  kernel_rfl

theorem node7241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7241 value3624 value1 value2 = (output7241, value3625, value1) := by
  rw [input7241_def, output7241_def]
  kernel_rfl

theorem node7242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7242 value3625 value1 value2 = (output7242, value3626, value1) := by
  rw [input7242_def, output7242_def]
  kernel_rfl

theorem node7243_cond_eq
    (child7241 : Flapjack.WordAlloc.removeDeadStructural input7241 value3624 value1 value2 = (output7241, value3625, value1))
    (child7242 : Flapjack.WordAlloc.removeDeadStructural input7242 value3625 value1 value2 = (output7242, value3626, value1)) : Flapjack.WordAlloc.removeDeadStructural input7243 value3624 value1 value2 = (output7243, value3626, value1) := by
  rw [input7243_def, output7243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7241]
  dsimp only
  rw [child7242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7241_skip, output7242_skip]
  kernel_rfl

theorem node7244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7244 value3626 value1 value2 = (output7244, value3627, value1) := by
  rw [input7244_def, output7244_def]
  kernel_rfl

theorem node7245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7245 value3627 value1 value2 = (output7245, value3628, value1) := by
  rw [input7245_def, output7245_def]
  kernel_rfl

theorem node7246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7246 value3628 value1 value2 = (output7246, value3629, value1) := by
  rw [input7246_def, output7246_def]
  kernel_rfl

theorem node7247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7247 value3629 value1 value2 = (output7247, value5, value1) := by
  rw [input7247_def, output7247_def]
  kernel_rfl

theorem node7248_cond_eq
    (child7246 : Flapjack.WordAlloc.removeDeadStructural input7246 value3628 value1 value2 = (output7246, value3629, value1))
    (child7247 : Flapjack.WordAlloc.removeDeadStructural input7247 value3629 value1 value2 = (output7247, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7248 value3628 value1 value2 = (output7248, value5, value1) := by
  rw [input7248_def, output7248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7246]
  dsimp only
  rw [child7247]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7246_skip, output7247_skip]
  kernel_rfl

theorem node7249_cond_eq
    (child7245 : Flapjack.WordAlloc.removeDeadStructural input7245 value3627 value1 value2 = (output7245, value3628, value1))
    (child7248 : Flapjack.WordAlloc.removeDeadStructural input7248 value3628 value1 value2 = (output7248, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7249 value3627 value1 value2 = (output7249, value5, value1) := by
  rw [input7249_def, output7249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7245]
  dsimp only
  rw [child7248]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7245_skip, output7248_skip]
  kernel_rfl

theorem node7250_cond_eq
    (child7244 : Flapjack.WordAlloc.removeDeadStructural input7244 value3626 value1 value2 = (output7244, value3627, value1))
    (child7249 : Flapjack.WordAlloc.removeDeadStructural input7249 value3627 value1 value2 = (output7249, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7250 value3626 value1 value2 = (output7250, value5, value1) := by
  rw [input7250_def, output7250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7244]
  dsimp only
  rw [child7249]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7244_skip, output7249_skip]
  kernel_rfl

theorem node7251_cond_eq
    (child7243 : Flapjack.WordAlloc.removeDeadStructural input7243 value3624 value1 value2 = (output7243, value3626, value1))
    (child7250 : Flapjack.WordAlloc.removeDeadStructural input7250 value3626 value1 value2 = (output7250, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7251 value3624 value1 value2 = (output7251, value5, value1) := by
  rw [input7251_def, output7251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7243]
  dsimp only
  rw [child7250]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7243_skip, output7250_skip]
  kernel_rfl

theorem node7252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7252 value5 value1 value2 = (output7252, value3630, value1) := by
  rw [input7252_def, output7252_def]
  kernel_rfl

theorem node7253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7253 value3630 value1 value2 = (output7253, value3631, value1) := by
  rw [input7253_def, output7253_def]
  kernel_rfl

theorem node7254_cond_eq
    (child7252 : Flapjack.WordAlloc.removeDeadStructural input7252 value5 value1 value2 = (output7252, value3630, value1))
    (child7253 : Flapjack.WordAlloc.removeDeadStructural input7253 value3630 value1 value2 = (output7253, value3631, value1)) : Flapjack.WordAlloc.removeDeadStructural input7254 value5 value1 value2 = (output7254, value3631, value1) := by
  rw [input7254_def, output7254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7252]
  dsimp only
  rw [child7253]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7252_skip, output7253_skip]
  kernel_rfl

theorem node7255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7255 value3631 value1 value2 = (output7255, value3632, value1) := by
  rw [input7255_def, output7255_def]
  kernel_rfl

theorem node7256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7256 value3632 value1 value2 = (output7256, value3632, value1) := by
  rw [input7256_def, output7256_def]
  kernel_rfl

theorem node7257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7257 value3632 value1 value2 = (output7257, value3633, value1) := by
  rw [input7257_def, output7257_def]
  kernel_rfl

theorem node7258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7258 value3633 value1 value2 = (output7258, value3634, value1) := by
  rw [input7258_def, output7258_def]
  kernel_rfl

theorem node7259_cond_eq
    (child7257 : Flapjack.WordAlloc.removeDeadStructural input7257 value3632 value1 value2 = (output7257, value3633, value1))
    (child7258 : Flapjack.WordAlloc.removeDeadStructural input7258 value3633 value1 value2 = (output7258, value3634, value1)) : Flapjack.WordAlloc.removeDeadStructural input7259 value3632 value1 value2 = (output7259, value3634, value1) := by
  rw [input7259_def, output7259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7257]
  dsimp only
  rw [child7258]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7257_skip, output7258_skip]
  kernel_rfl

theorem node7260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7260 value3634 value1 value2 = (output7260, value3635, value1) := by
  rw [input7260_def, output7260_def]
  kernel_rfl

theorem node7261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7261 value3635 value1 value2 = (output7261, value3636, value1) := by
  rw [input7261_def, output7261_def]
  kernel_rfl

theorem node7262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7262 value3636 value1 value2 = (output7262, value3637, value1) := by
  rw [input7262_def, output7262_def]
  kernel_rfl

theorem node7263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7263 value3637 value1 value2 = (output7263, value5, value1) := by
  rw [input7263_def, output7263_def]
  kernel_rfl

theorem node7264_cond_eq
    (child7262 : Flapjack.WordAlloc.removeDeadStructural input7262 value3636 value1 value2 = (output7262, value3637, value1))
    (child7263 : Flapjack.WordAlloc.removeDeadStructural input7263 value3637 value1 value2 = (output7263, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7264 value3636 value1 value2 = (output7264, value5, value1) := by
  rw [input7264_def, output7264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7262]
  dsimp only
  rw [child7263]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7262_skip, output7263_skip]
  kernel_rfl

theorem node7265_cond_eq
    (child7261 : Flapjack.WordAlloc.removeDeadStructural input7261 value3635 value1 value2 = (output7261, value3636, value1))
    (child7264 : Flapjack.WordAlloc.removeDeadStructural input7264 value3636 value1 value2 = (output7264, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7265 value3635 value1 value2 = (output7265, value5, value1) := by
  rw [input7265_def, output7265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7261]
  dsimp only
  rw [child7264]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7261_skip, output7264_skip]
  kernel_rfl

theorem node7266_cond_eq
    (child7260 : Flapjack.WordAlloc.removeDeadStructural input7260 value3634 value1 value2 = (output7260, value3635, value1))
    (child7265 : Flapjack.WordAlloc.removeDeadStructural input7265 value3635 value1 value2 = (output7265, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7266 value3634 value1 value2 = (output7266, value5, value1) := by
  rw [input7266_def, output7266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7260]
  dsimp only
  rw [child7265]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7260_skip, output7265_skip]
  kernel_rfl

theorem node7267_cond_eq
    (child7259 : Flapjack.WordAlloc.removeDeadStructural input7259 value3632 value1 value2 = (output7259, value3634, value1))
    (child7266 : Flapjack.WordAlloc.removeDeadStructural input7266 value3634 value1 value2 = (output7266, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7267 value3632 value1 value2 = (output7267, value5, value1) := by
  rw [input7267_def, output7267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7259]
  dsimp only
  rw [child7266]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7259_skip, output7266_skip]
  kernel_rfl

theorem node7268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7268 value5 value1 value2 = (output7268, value3638, value1) := by
  rw [input7268_def, output7268_def]
  kernel_rfl

theorem node7269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7269 value3638 value1 value2 = (output7269, value3639, value1) := by
  rw [input7269_def, output7269_def]
  kernel_rfl

theorem node7270_cond_eq
    (child7268 : Flapjack.WordAlloc.removeDeadStructural input7268 value5 value1 value2 = (output7268, value3638, value1))
    (child7269 : Flapjack.WordAlloc.removeDeadStructural input7269 value3638 value1 value2 = (output7269, value3639, value1)) : Flapjack.WordAlloc.removeDeadStructural input7270 value5 value1 value2 = (output7270, value3639, value1) := by
  rw [input7270_def, output7270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7268]
  dsimp only
  rw [child7269]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7268_skip, output7269_skip]
  kernel_rfl

theorem node7271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7271 value3639 value1 value2 = (output7271, value3640, value1) := by
  rw [input7271_def, output7271_def]
  kernel_rfl

theorem node7272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7272 value3640 value1 value2 = (output7272, value3640, value1) := by
  rw [input7272_def, output7272_def]
  kernel_rfl

theorem node7273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7273 value3640 value1 value2 = (output7273, value3641, value1) := by
  rw [input7273_def, output7273_def]
  kernel_rfl

theorem node7274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7274 value3641 value1 value2 = (output7274, value3642, value1) := by
  rw [input7274_def, output7274_def]
  kernel_rfl

theorem node7275_cond_eq
    (child7273 : Flapjack.WordAlloc.removeDeadStructural input7273 value3640 value1 value2 = (output7273, value3641, value1))
    (child7274 : Flapjack.WordAlloc.removeDeadStructural input7274 value3641 value1 value2 = (output7274, value3642, value1)) : Flapjack.WordAlloc.removeDeadStructural input7275 value3640 value1 value2 = (output7275, value3642, value1) := by
  rw [input7275_def, output7275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7273]
  dsimp only
  rw [child7274]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7273_skip, output7274_skip]
  kernel_rfl

theorem node7276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7276 value3642 value1 value2 = (output7276, value3643, value1) := by
  rw [input7276_def, output7276_def]
  kernel_rfl

theorem node7277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7277 value3643 value1 value2 = (output7277, value3644, value1) := by
  rw [input7277_def, output7277_def]
  kernel_rfl

theorem node7278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7278 value3644 value1 value2 = (output7278, value3645, value1) := by
  rw [input7278_def, output7278_def]
  kernel_rfl

theorem node7279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7279 value3645 value1 value2 = (output7279, value5, value1) := by
  rw [input7279_def, output7279_def]
  kernel_rfl

theorem node7280_cond_eq
    (child7278 : Flapjack.WordAlloc.removeDeadStructural input7278 value3644 value1 value2 = (output7278, value3645, value1))
    (child7279 : Flapjack.WordAlloc.removeDeadStructural input7279 value3645 value1 value2 = (output7279, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7280 value3644 value1 value2 = (output7280, value5, value1) := by
  rw [input7280_def, output7280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7278]
  dsimp only
  rw [child7279]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7278_skip, output7279_skip]
  kernel_rfl

theorem node7281_cond_eq
    (child7277 : Flapjack.WordAlloc.removeDeadStructural input7277 value3643 value1 value2 = (output7277, value3644, value1))
    (child7280 : Flapjack.WordAlloc.removeDeadStructural input7280 value3644 value1 value2 = (output7280, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7281 value3643 value1 value2 = (output7281, value5, value1) := by
  rw [input7281_def, output7281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7277]
  dsimp only
  rw [child7280]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7277_skip, output7280_skip]
  kernel_rfl

theorem node7282_cond_eq
    (child7276 : Flapjack.WordAlloc.removeDeadStructural input7276 value3642 value1 value2 = (output7276, value3643, value1))
    (child7281 : Flapjack.WordAlloc.removeDeadStructural input7281 value3643 value1 value2 = (output7281, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7282 value3642 value1 value2 = (output7282, value5, value1) := by
  rw [input7282_def, output7282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7276]
  dsimp only
  rw [child7281]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7276_skip, output7281_skip]
  kernel_rfl

theorem node7283_cond_eq
    (child7275 : Flapjack.WordAlloc.removeDeadStructural input7275 value3640 value1 value2 = (output7275, value3642, value1))
    (child7282 : Flapjack.WordAlloc.removeDeadStructural input7282 value3642 value1 value2 = (output7282, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7283 value3640 value1 value2 = (output7283, value5, value1) := by
  rw [input7283_def, output7283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7275]
  dsimp only
  rw [child7282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7275_skip, output7282_skip]
  kernel_rfl

theorem node7284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7284 value5 value1 value2 = (output7284, value3646, value1) := by
  rw [input7284_def, output7284_def]
  kernel_rfl

theorem node7285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7285 value3646 value1 value2 = (output7285, value3647, value1) := by
  rw [input7285_def, output7285_def]
  kernel_rfl

theorem node7286_cond_eq
    (child7284 : Flapjack.WordAlloc.removeDeadStructural input7284 value5 value1 value2 = (output7284, value3646, value1))
    (child7285 : Flapjack.WordAlloc.removeDeadStructural input7285 value3646 value1 value2 = (output7285, value3647, value1)) : Flapjack.WordAlloc.removeDeadStructural input7286 value5 value1 value2 = (output7286, value3647, value1) := by
  rw [input7286_def, output7286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7284]
  dsimp only
  rw [child7285]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7284_skip, output7285_skip]
  kernel_rfl

theorem node7287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7287 value3647 value1 value2 = (output7287, value3648, value1) := by
  rw [input7287_def, output7287_def]
  kernel_rfl

theorem node7288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7288 value3648 value1 value2 = (output7288, value3648, value1) := by
  rw [input7288_def, output7288_def]
  kernel_rfl

theorem node7289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7289 value3648 value1 value2 = (output7289, value3649, value1) := by
  rw [input7289_def, output7289_def]
  kernel_rfl

theorem node7290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7290 value3649 value1 value2 = (output7290, value3650, value1) := by
  rw [input7290_def, output7290_def]
  kernel_rfl

theorem node7291_cond_eq
    (child7289 : Flapjack.WordAlloc.removeDeadStructural input7289 value3648 value1 value2 = (output7289, value3649, value1))
    (child7290 : Flapjack.WordAlloc.removeDeadStructural input7290 value3649 value1 value2 = (output7290, value3650, value1)) : Flapjack.WordAlloc.removeDeadStructural input7291 value3648 value1 value2 = (output7291, value3650, value1) := by
  rw [input7291_def, output7291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7289]
  dsimp only
  rw [child7290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7289_skip, output7290_skip]
  kernel_rfl

theorem node7292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7292 value3650 value1 value2 = (output7292, value3651, value1) := by
  rw [input7292_def, output7292_def]
  kernel_rfl

theorem node7293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7293 value3651 value1 value2 = (output7293, value3652, value1) := by
  rw [input7293_def, output7293_def]
  kernel_rfl

theorem node7294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7294 value3652 value1 value2 = (output7294, value3653, value1) := by
  rw [input7294_def, output7294_def]
  kernel_rfl

theorem node7295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7295 value3653 value1 value2 = (output7295, value5, value1) := by
  rw [input7295_def, output7295_def]
  kernel_rfl

theorem node7296_cond_eq
    (child7294 : Flapjack.WordAlloc.removeDeadStructural input7294 value3652 value1 value2 = (output7294, value3653, value1))
    (child7295 : Flapjack.WordAlloc.removeDeadStructural input7295 value3653 value1 value2 = (output7295, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7296 value3652 value1 value2 = (output7296, value5, value1) := by
  rw [input7296_def, output7296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7294]
  dsimp only
  rw [child7295]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7294_skip, output7295_skip]
  kernel_rfl

theorem node7297_cond_eq
    (child7293 : Flapjack.WordAlloc.removeDeadStructural input7293 value3651 value1 value2 = (output7293, value3652, value1))
    (child7296 : Flapjack.WordAlloc.removeDeadStructural input7296 value3652 value1 value2 = (output7296, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7297 value3651 value1 value2 = (output7297, value5, value1) := by
  rw [input7297_def, output7297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7293]
  dsimp only
  rw [child7296]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7293_skip, output7296_skip]
  kernel_rfl

theorem node7298_cond_eq
    (child7292 : Flapjack.WordAlloc.removeDeadStructural input7292 value3650 value1 value2 = (output7292, value3651, value1))
    (child7297 : Flapjack.WordAlloc.removeDeadStructural input7297 value3651 value1 value2 = (output7297, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7298 value3650 value1 value2 = (output7298, value5, value1) := by
  rw [input7298_def, output7298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7292]
  dsimp only
  rw [child7297]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7292_skip, output7297_skip]
  kernel_rfl

theorem node7299_cond_eq
    (child7291 : Flapjack.WordAlloc.removeDeadStructural input7291 value3648 value1 value2 = (output7291, value3650, value1))
    (child7298 : Flapjack.WordAlloc.removeDeadStructural input7298 value3650 value1 value2 = (output7298, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7299 value3648 value1 value2 = (output7299, value5, value1) := by
  rw [input7299_def, output7299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7291]
  dsimp only
  rw [child7298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7291_skip, output7298_skip]
  kernel_rfl

theorem node7300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7300 value5 value1 value2 = (output7300, value3654, value1) := by
  rw [input7300_def, output7300_def]
  kernel_rfl

theorem node7301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7301 value3654 value1 value2 = (output7301, value3655, value1) := by
  rw [input7301_def, output7301_def]
  kernel_rfl

theorem node7302_cond_eq
    (child7300 : Flapjack.WordAlloc.removeDeadStructural input7300 value5 value1 value2 = (output7300, value3654, value1))
    (child7301 : Flapjack.WordAlloc.removeDeadStructural input7301 value3654 value1 value2 = (output7301, value3655, value1)) : Flapjack.WordAlloc.removeDeadStructural input7302 value5 value1 value2 = (output7302, value3655, value1) := by
  rw [input7302_def, output7302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7300]
  dsimp only
  rw [child7301]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7300_skip, output7301_skip]
  kernel_rfl

theorem node7303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7303 value3655 value1 value2 = (output7303, value3656, value1) := by
  rw [input7303_def, output7303_def]
  kernel_rfl

theorem node7304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7304 value3656 value1 value2 = (output7304, value3656, value1) := by
  rw [input7304_def, output7304_def]
  kernel_rfl

theorem node7305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7305 value3656 value1 value2 = (output7305, value3657, value1) := by
  rw [input7305_def, output7305_def]
  kernel_rfl

theorem node7306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7306 value3657 value1 value2 = (output7306, value3658, value1) := by
  rw [input7306_def, output7306_def]
  kernel_rfl

theorem node7307_cond_eq
    (child7305 : Flapjack.WordAlloc.removeDeadStructural input7305 value3656 value1 value2 = (output7305, value3657, value1))
    (child7306 : Flapjack.WordAlloc.removeDeadStructural input7306 value3657 value1 value2 = (output7306, value3658, value1)) : Flapjack.WordAlloc.removeDeadStructural input7307 value3656 value1 value2 = (output7307, value3658, value1) := by
  rw [input7307_def, output7307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7305]
  dsimp only
  rw [child7306]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7305_skip, output7306_skip]
  kernel_rfl

theorem node7308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7308 value3658 value1 value2 = (output7308, value3659, value1) := by
  rw [input7308_def, output7308_def]
  kernel_rfl

theorem node7309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7309 value3659 value1 value2 = (output7309, value3660, value1) := by
  rw [input7309_def, output7309_def]
  kernel_rfl

theorem node7310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7310 value3660 value1 value2 = (output7310, value3661, value1) := by
  rw [input7310_def, output7310_def]
  kernel_rfl

theorem node7311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7311 value3661 value1 value2 = (output7311, value5, value1) := by
  rw [input7311_def, output7311_def]
  kernel_rfl

theorem node7312_cond_eq
    (child7310 : Flapjack.WordAlloc.removeDeadStructural input7310 value3660 value1 value2 = (output7310, value3661, value1))
    (child7311 : Flapjack.WordAlloc.removeDeadStructural input7311 value3661 value1 value2 = (output7311, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7312 value3660 value1 value2 = (output7312, value5, value1) := by
  rw [input7312_def, output7312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7310]
  dsimp only
  rw [child7311]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7310_skip, output7311_skip]
  kernel_rfl

theorem node7313_cond_eq
    (child7309 : Flapjack.WordAlloc.removeDeadStructural input7309 value3659 value1 value2 = (output7309, value3660, value1))
    (child7312 : Flapjack.WordAlloc.removeDeadStructural input7312 value3660 value1 value2 = (output7312, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7313 value3659 value1 value2 = (output7313, value5, value1) := by
  rw [input7313_def, output7313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7309]
  dsimp only
  rw [child7312]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7309_skip, output7312_skip]
  kernel_rfl

theorem node7314_cond_eq
    (child7308 : Flapjack.WordAlloc.removeDeadStructural input7308 value3658 value1 value2 = (output7308, value3659, value1))
    (child7313 : Flapjack.WordAlloc.removeDeadStructural input7313 value3659 value1 value2 = (output7313, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7314 value3658 value1 value2 = (output7314, value5, value1) := by
  rw [input7314_def, output7314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7308]
  dsimp only
  rw [child7313]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7308_skip, output7313_skip]
  kernel_rfl

theorem node7315_cond_eq
    (child7307 : Flapjack.WordAlloc.removeDeadStructural input7307 value3656 value1 value2 = (output7307, value3658, value1))
    (child7314 : Flapjack.WordAlloc.removeDeadStructural input7314 value3658 value1 value2 = (output7314, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7315 value3656 value1 value2 = (output7315, value5, value1) := by
  rw [input7315_def, output7315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7307]
  dsimp only
  rw [child7314]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7307_skip, output7314_skip]
  kernel_rfl

theorem node7316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7316 value5 value1 value2 = (output7316, value3662, value1) := by
  rw [input7316_def, output7316_def]
  kernel_rfl

theorem node7317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7317 value3662 value1 value2 = (output7317, value3663, value1) := by
  rw [input7317_def, output7317_def]
  kernel_rfl

theorem node7318_cond_eq
    (child7316 : Flapjack.WordAlloc.removeDeadStructural input7316 value5 value1 value2 = (output7316, value3662, value1))
    (child7317 : Flapjack.WordAlloc.removeDeadStructural input7317 value3662 value1 value2 = (output7317, value3663, value1)) : Flapjack.WordAlloc.removeDeadStructural input7318 value5 value1 value2 = (output7318, value3663, value1) := by
  rw [input7318_def, output7318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7316]
  dsimp only
  rw [child7317]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7316_skip, output7317_skip]
  kernel_rfl

theorem node7319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7319 value3663 value1 value2 = (output7319, value3664, value1) := by
  rw [input7319_def, output7319_def]
  kernel_rfl

theorem node7320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7320 value3664 value1 value2 = (output7320, value3664, value1) := by
  rw [input7320_def, output7320_def]
  kernel_rfl

theorem node7321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7321 value3664 value1 value2 = (output7321, value3665, value1) := by
  rw [input7321_def, output7321_def]
  kernel_rfl

theorem node7322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7322 value3665 value1 value2 = (output7322, value3666, value1) := by
  rw [input7322_def, output7322_def]
  kernel_rfl

theorem node7323_cond_eq
    (child7321 : Flapjack.WordAlloc.removeDeadStructural input7321 value3664 value1 value2 = (output7321, value3665, value1))
    (child7322 : Flapjack.WordAlloc.removeDeadStructural input7322 value3665 value1 value2 = (output7322, value3666, value1)) : Flapjack.WordAlloc.removeDeadStructural input7323 value3664 value1 value2 = (output7323, value3666, value1) := by
  rw [input7323_def, output7323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7321]
  dsimp only
  rw [child7322]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7321_skip, output7322_skip]
  kernel_rfl

theorem node7324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7324 value3666 value1 value2 = (output7324, value3667, value1) := by
  rw [input7324_def, output7324_def]
  kernel_rfl

theorem node7325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7325 value3667 value1 value2 = (output7325, value3668, value1) := by
  rw [input7325_def, output7325_def]
  kernel_rfl

theorem node7326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7326 value3668 value1 value2 = (output7326, value3669, value1) := by
  rw [input7326_def, output7326_def]
  kernel_rfl

theorem node7327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7327 value3669 value1 value2 = (output7327, value5, value1) := by
  rw [input7327_def, output7327_def]
  kernel_rfl

theorem node7328_cond_eq
    (child7326 : Flapjack.WordAlloc.removeDeadStructural input7326 value3668 value1 value2 = (output7326, value3669, value1))
    (child7327 : Flapjack.WordAlloc.removeDeadStructural input7327 value3669 value1 value2 = (output7327, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7328 value3668 value1 value2 = (output7328, value5, value1) := by
  rw [input7328_def, output7328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7326]
  dsimp only
  rw [child7327]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7326_skip, output7327_skip]
  kernel_rfl

theorem node7329_cond_eq
    (child7325 : Flapjack.WordAlloc.removeDeadStructural input7325 value3667 value1 value2 = (output7325, value3668, value1))
    (child7328 : Flapjack.WordAlloc.removeDeadStructural input7328 value3668 value1 value2 = (output7328, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7329 value3667 value1 value2 = (output7329, value5, value1) := by
  rw [input7329_def, output7329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7325]
  dsimp only
  rw [child7328]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7325_skip, output7328_skip]
  kernel_rfl

theorem node7330_cond_eq
    (child7324 : Flapjack.WordAlloc.removeDeadStructural input7324 value3666 value1 value2 = (output7324, value3667, value1))
    (child7329 : Flapjack.WordAlloc.removeDeadStructural input7329 value3667 value1 value2 = (output7329, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7330 value3666 value1 value2 = (output7330, value5, value1) := by
  rw [input7330_def, output7330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7324]
  dsimp only
  rw [child7329]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7324_skip, output7329_skip]
  kernel_rfl

theorem node7331_cond_eq
    (child7323 : Flapjack.WordAlloc.removeDeadStructural input7323 value3664 value1 value2 = (output7323, value3666, value1))
    (child7330 : Flapjack.WordAlloc.removeDeadStructural input7330 value3666 value1 value2 = (output7330, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7331 value3664 value1 value2 = (output7331, value5, value1) := by
  rw [input7331_def, output7331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7323]
  dsimp only
  rw [child7330]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7323_skip, output7330_skip]
  kernel_rfl

theorem node7332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7332 value5 value1 value2 = (output7332, value3670, value1) := by
  rw [input7332_def, output7332_def]
  kernel_rfl

theorem node7333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7333 value3670 value1 value2 = (output7333, value3671, value1) := by
  rw [input7333_def, output7333_def]
  kernel_rfl

theorem node7334_cond_eq
    (child7332 : Flapjack.WordAlloc.removeDeadStructural input7332 value5 value1 value2 = (output7332, value3670, value1))
    (child7333 : Flapjack.WordAlloc.removeDeadStructural input7333 value3670 value1 value2 = (output7333, value3671, value1)) : Flapjack.WordAlloc.removeDeadStructural input7334 value5 value1 value2 = (output7334, value3671, value1) := by
  rw [input7334_def, output7334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7332]
  dsimp only
  rw [child7333]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7332_skip, output7333_skip]
  kernel_rfl

theorem node7335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7335 value3671 value1 value2 = (output7335, value3672, value1) := by
  rw [input7335_def, output7335_def]
  kernel_rfl

theorem node7336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7336 value3672 value1 value2 = (output7336, value3672, value1) := by
  rw [input7336_def, output7336_def]
  kernel_rfl

theorem node7337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7337 value3672 value1 value2 = (output7337, value3673, value1) := by
  rw [input7337_def, output7337_def]
  kernel_rfl

theorem node7338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7338 value3673 value1 value2 = (output7338, value3674, value1) := by
  rw [input7338_def, output7338_def]
  kernel_rfl

theorem node7339_cond_eq
    (child7337 : Flapjack.WordAlloc.removeDeadStructural input7337 value3672 value1 value2 = (output7337, value3673, value1))
    (child7338 : Flapjack.WordAlloc.removeDeadStructural input7338 value3673 value1 value2 = (output7338, value3674, value1)) : Flapjack.WordAlloc.removeDeadStructural input7339 value3672 value1 value2 = (output7339, value3674, value1) := by
  rw [input7339_def, output7339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7337]
  dsimp only
  rw [child7338]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7337_skip, output7338_skip]
  kernel_rfl

theorem node7340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7340 value3674 value1 value2 = (output7340, value3675, value1) := by
  rw [input7340_def, output7340_def]
  kernel_rfl

theorem node7341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7341 value3675 value1 value2 = (output7341, value3676, value1) := by
  rw [input7341_def, output7341_def]
  kernel_rfl

theorem node7342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7342 value3676 value1 value2 = (output7342, value3677, value1) := by
  rw [input7342_def, output7342_def]
  kernel_rfl

theorem node7343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7343 value3677 value1 value2 = (output7343, value5, value1) := by
  rw [input7343_def, output7343_def]
  kernel_rfl

theorem node7344_cond_eq
    (child7342 : Flapjack.WordAlloc.removeDeadStructural input7342 value3676 value1 value2 = (output7342, value3677, value1))
    (child7343 : Flapjack.WordAlloc.removeDeadStructural input7343 value3677 value1 value2 = (output7343, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7344 value3676 value1 value2 = (output7344, value5, value1) := by
  rw [input7344_def, output7344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7342]
  dsimp only
  rw [child7343]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7342_skip, output7343_skip]
  kernel_rfl

theorem node7345_cond_eq
    (child7341 : Flapjack.WordAlloc.removeDeadStructural input7341 value3675 value1 value2 = (output7341, value3676, value1))
    (child7344 : Flapjack.WordAlloc.removeDeadStructural input7344 value3676 value1 value2 = (output7344, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7345 value3675 value1 value2 = (output7345, value5, value1) := by
  rw [input7345_def, output7345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7341]
  dsimp only
  rw [child7344]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7341_skip, output7344_skip]
  kernel_rfl

theorem node7346_cond_eq
    (child7340 : Flapjack.WordAlloc.removeDeadStructural input7340 value3674 value1 value2 = (output7340, value3675, value1))
    (child7345 : Flapjack.WordAlloc.removeDeadStructural input7345 value3675 value1 value2 = (output7345, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7346 value3674 value1 value2 = (output7346, value5, value1) := by
  rw [input7346_def, output7346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7340]
  dsimp only
  rw [child7345]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7340_skip, output7345_skip]
  kernel_rfl

theorem node7347_cond_eq
    (child7339 : Flapjack.WordAlloc.removeDeadStructural input7339 value3672 value1 value2 = (output7339, value3674, value1))
    (child7346 : Flapjack.WordAlloc.removeDeadStructural input7346 value3674 value1 value2 = (output7346, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7347 value3672 value1 value2 = (output7347, value5, value1) := by
  rw [input7347_def, output7347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7339]
  dsimp only
  rw [child7346]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7339_skip, output7346_skip]
  kernel_rfl

theorem node7348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7348 value5 value1 value2 = (output7348, value3678, value1) := by
  rw [input7348_def, output7348_def]
  kernel_rfl

theorem node7349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7349 value3678 value1 value2 = (output7349, value3679, value1) := by
  rw [input7349_def, output7349_def]
  kernel_rfl

theorem node7350_cond_eq
    (child7348 : Flapjack.WordAlloc.removeDeadStructural input7348 value5 value1 value2 = (output7348, value3678, value1))
    (child7349 : Flapjack.WordAlloc.removeDeadStructural input7349 value3678 value1 value2 = (output7349, value3679, value1)) : Flapjack.WordAlloc.removeDeadStructural input7350 value5 value1 value2 = (output7350, value3679, value1) := by
  rw [input7350_def, output7350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7348]
  dsimp only
  rw [child7349]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7348_skip, output7349_skip]
  kernel_rfl

theorem node7351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7351 value3679 value1 value2 = (output7351, value3680, value1) := by
  rw [input7351_def, output7351_def]
  kernel_rfl

theorem node7352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7352 value3680 value1 value2 = (output7352, value3680, value1) := by
  rw [input7352_def, output7352_def]
  kernel_rfl

theorem node7353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7353 value3680 value1 value2 = (output7353, value3681, value1) := by
  rw [input7353_def, output7353_def]
  kernel_rfl

theorem node7354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7354 value3681 value1 value2 = (output7354, value3682, value1) := by
  rw [input7354_def, output7354_def]
  kernel_rfl

theorem node7355_cond_eq
    (child7353 : Flapjack.WordAlloc.removeDeadStructural input7353 value3680 value1 value2 = (output7353, value3681, value1))
    (child7354 : Flapjack.WordAlloc.removeDeadStructural input7354 value3681 value1 value2 = (output7354, value3682, value1)) : Flapjack.WordAlloc.removeDeadStructural input7355 value3680 value1 value2 = (output7355, value3682, value1) := by
  rw [input7355_def, output7355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7353]
  dsimp only
  rw [child7354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7353_skip, output7354_skip]
  kernel_rfl

theorem node7356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7356 value3682 value1 value2 = (output7356, value3683, value1) := by
  rw [input7356_def, output7356_def]
  kernel_rfl

theorem node7357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7357 value3683 value1 value2 = (output7357, value3684, value1) := by
  rw [input7357_def, output7357_def]
  kernel_rfl

theorem node7358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7358 value3684 value1 value2 = (output7358, value3685, value1) := by
  rw [input7358_def, output7358_def]
  kernel_rfl

theorem node7359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7359 value3685 value1 value2 = (output7359, value5, value1) := by
  rw [input7359_def, output7359_def]
  kernel_rfl

theorem node7360_cond_eq
    (child7358 : Flapjack.WordAlloc.removeDeadStructural input7358 value3684 value1 value2 = (output7358, value3685, value1))
    (child7359 : Flapjack.WordAlloc.removeDeadStructural input7359 value3685 value1 value2 = (output7359, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7360 value3684 value1 value2 = (output7360, value5, value1) := by
  rw [input7360_def, output7360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7358]
  dsimp only
  rw [child7359]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7358_skip, output7359_skip]
  kernel_rfl

theorem node7361_cond_eq
    (child7357 : Flapjack.WordAlloc.removeDeadStructural input7357 value3683 value1 value2 = (output7357, value3684, value1))
    (child7360 : Flapjack.WordAlloc.removeDeadStructural input7360 value3684 value1 value2 = (output7360, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7361 value3683 value1 value2 = (output7361, value5, value1) := by
  rw [input7361_def, output7361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7357]
  dsimp only
  rw [child7360]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7357_skip, output7360_skip]
  kernel_rfl

theorem node7362_cond_eq
    (child7356 : Flapjack.WordAlloc.removeDeadStructural input7356 value3682 value1 value2 = (output7356, value3683, value1))
    (child7361 : Flapjack.WordAlloc.removeDeadStructural input7361 value3683 value1 value2 = (output7361, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7362 value3682 value1 value2 = (output7362, value5, value1) := by
  rw [input7362_def, output7362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7356]
  dsimp only
  rw [child7361]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7356_skip, output7361_skip]
  kernel_rfl

theorem node7363_cond_eq
    (child7355 : Flapjack.WordAlloc.removeDeadStructural input7355 value3680 value1 value2 = (output7355, value3682, value1))
    (child7362 : Flapjack.WordAlloc.removeDeadStructural input7362 value3682 value1 value2 = (output7362, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7363 value3680 value1 value2 = (output7363, value5, value1) := by
  rw [input7363_def, output7363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7355]
  dsimp only
  rw [child7362]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7355_skip, output7362_skip]
  kernel_rfl

theorem node7364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7364 value5 value1 value2 = (output7364, value3686, value1) := by
  rw [input7364_def, output7364_def]
  kernel_rfl

theorem node7365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7365 value3686 value1 value2 = (output7365, value3687, value1) := by
  rw [input7365_def, output7365_def]
  kernel_rfl

theorem node7366_cond_eq
    (child7364 : Flapjack.WordAlloc.removeDeadStructural input7364 value5 value1 value2 = (output7364, value3686, value1))
    (child7365 : Flapjack.WordAlloc.removeDeadStructural input7365 value3686 value1 value2 = (output7365, value3687, value1)) : Flapjack.WordAlloc.removeDeadStructural input7366 value5 value1 value2 = (output7366, value3687, value1) := by
  rw [input7366_def, output7366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7364]
  dsimp only
  rw [child7365]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7364_skip, output7365_skip]
  kernel_rfl

theorem node7367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7367 value3687 value1 value2 = (output7367, value3688, value1) := by
  rw [input7367_def, output7367_def]
  kernel_rfl

theorem node7368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7368 value3688 value1 value2 = (output7368, value3688, value1) := by
  rw [input7368_def, output7368_def]
  kernel_rfl

theorem node7369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7369 value3688 value1 value2 = (output7369, value3689, value1) := by
  rw [input7369_def, output7369_def]
  kernel_rfl

theorem node7370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7370 value3689 value1 value2 = (output7370, value3690, value1) := by
  rw [input7370_def, output7370_def]
  kernel_rfl

theorem node7371_cond_eq
    (child7369 : Flapjack.WordAlloc.removeDeadStructural input7369 value3688 value1 value2 = (output7369, value3689, value1))
    (child7370 : Flapjack.WordAlloc.removeDeadStructural input7370 value3689 value1 value2 = (output7370, value3690, value1)) : Flapjack.WordAlloc.removeDeadStructural input7371 value3688 value1 value2 = (output7371, value3690, value1) := by
  rw [input7371_def, output7371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7369]
  dsimp only
  rw [child7370]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7369_skip, output7370_skip]
  kernel_rfl

theorem node7372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7372 value3690 value1 value2 = (output7372, value3691, value1) := by
  rw [input7372_def, output7372_def]
  kernel_rfl

theorem node7373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7373 value3691 value1 value2 = (output7373, value3692, value1) := by
  rw [input7373_def, output7373_def]
  kernel_rfl

theorem node7374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7374 value3692 value1 value2 = (output7374, value3693, value1) := by
  rw [input7374_def, output7374_def]
  kernel_rfl

theorem node7375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7375 value3693 value1 value2 = (output7375, value5, value1) := by
  rw [input7375_def, output7375_def]
  kernel_rfl

theorem node7376_cond_eq
    (child7374 : Flapjack.WordAlloc.removeDeadStructural input7374 value3692 value1 value2 = (output7374, value3693, value1))
    (child7375 : Flapjack.WordAlloc.removeDeadStructural input7375 value3693 value1 value2 = (output7375, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7376 value3692 value1 value2 = (output7376, value5, value1) := by
  rw [input7376_def, output7376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7374]
  dsimp only
  rw [child7375]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7374_skip, output7375_skip]
  kernel_rfl

theorem node7377_cond_eq
    (child7373 : Flapjack.WordAlloc.removeDeadStructural input7373 value3691 value1 value2 = (output7373, value3692, value1))
    (child7376 : Flapjack.WordAlloc.removeDeadStructural input7376 value3692 value1 value2 = (output7376, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7377 value3691 value1 value2 = (output7377, value5, value1) := by
  rw [input7377_def, output7377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7373]
  dsimp only
  rw [child7376]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7373_skip, output7376_skip]
  kernel_rfl

theorem node7378_cond_eq
    (child7372 : Flapjack.WordAlloc.removeDeadStructural input7372 value3690 value1 value2 = (output7372, value3691, value1))
    (child7377 : Flapjack.WordAlloc.removeDeadStructural input7377 value3691 value1 value2 = (output7377, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7378 value3690 value1 value2 = (output7378, value5, value1) := by
  rw [input7378_def, output7378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7372]
  dsimp only
  rw [child7377]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7372_skip, output7377_skip]
  kernel_rfl

theorem node7379_cond_eq
    (child7371 : Flapjack.WordAlloc.removeDeadStructural input7371 value3688 value1 value2 = (output7371, value3690, value1))
    (child7378 : Flapjack.WordAlloc.removeDeadStructural input7378 value3690 value1 value2 = (output7378, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7379 value3688 value1 value2 = (output7379, value5, value1) := by
  rw [input7379_def, output7379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7371]
  dsimp only
  rw [child7378]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7371_skip, output7378_skip]
  kernel_rfl

theorem node7380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7380 value5 value1 value2 = (output7380, value3694, value1) := by
  rw [input7380_def, output7380_def]
  kernel_rfl

theorem node7381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7381 value3694 value1 value2 = (output7381, value3695, value1) := by
  rw [input7381_def, output7381_def]
  kernel_rfl

theorem node7382_cond_eq
    (child7380 : Flapjack.WordAlloc.removeDeadStructural input7380 value5 value1 value2 = (output7380, value3694, value1))
    (child7381 : Flapjack.WordAlloc.removeDeadStructural input7381 value3694 value1 value2 = (output7381, value3695, value1)) : Flapjack.WordAlloc.removeDeadStructural input7382 value5 value1 value2 = (output7382, value3695, value1) := by
  rw [input7382_def, output7382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7380]
  dsimp only
  rw [child7381]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7380_skip, output7381_skip]
  kernel_rfl

theorem node7383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7383 value3695 value1 value2 = (output7383, value3696, value1) := by
  rw [input7383_def, output7383_def]
  kernel_rfl

theorem node7384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7384 value3696 value1 value2 = (output7384, value3696, value1) := by
  rw [input7384_def, output7384_def]
  kernel_rfl

theorem node7385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7385 value3696 value1 value2 = (output7385, value3697, value1) := by
  rw [input7385_def, output7385_def]
  kernel_rfl

theorem node7386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7386 value3697 value1 value2 = (output7386, value3698, value1) := by
  rw [input7386_def, output7386_def]
  kernel_rfl

theorem node7387_cond_eq
    (child7385 : Flapjack.WordAlloc.removeDeadStructural input7385 value3696 value1 value2 = (output7385, value3697, value1))
    (child7386 : Flapjack.WordAlloc.removeDeadStructural input7386 value3697 value1 value2 = (output7386, value3698, value1)) : Flapjack.WordAlloc.removeDeadStructural input7387 value3696 value1 value2 = (output7387, value3698, value1) := by
  rw [input7387_def, output7387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7385]
  dsimp only
  rw [child7386]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7385_skip, output7386_skip]
  kernel_rfl

theorem node7388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7388 value3698 value1 value2 = (output7388, value3699, value1) := by
  rw [input7388_def, output7388_def]
  kernel_rfl

theorem node7389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7389 value3699 value1 value2 = (output7389, value3700, value1) := by
  rw [input7389_def, output7389_def]
  kernel_rfl

theorem node7390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7390 value3700 value1 value2 = (output7390, value3701, value1) := by
  rw [input7390_def, output7390_def]
  kernel_rfl

theorem node7391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7391 value3701 value1 value2 = (output7391, value5, value1) := by
  rw [input7391_def, output7391_def]
  kernel_rfl

theorem node7392_cond_eq
    (child7390 : Flapjack.WordAlloc.removeDeadStructural input7390 value3700 value1 value2 = (output7390, value3701, value1))
    (child7391 : Flapjack.WordAlloc.removeDeadStructural input7391 value3701 value1 value2 = (output7391, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7392 value3700 value1 value2 = (output7392, value5, value1) := by
  rw [input7392_def, output7392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7390]
  dsimp only
  rw [child7391]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7390_skip, output7391_skip]
  kernel_rfl

theorem node7393_cond_eq
    (child7389 : Flapjack.WordAlloc.removeDeadStructural input7389 value3699 value1 value2 = (output7389, value3700, value1))
    (child7392 : Flapjack.WordAlloc.removeDeadStructural input7392 value3700 value1 value2 = (output7392, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7393 value3699 value1 value2 = (output7393, value5, value1) := by
  rw [input7393_def, output7393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7389]
  dsimp only
  rw [child7392]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7389_skip, output7392_skip]
  kernel_rfl

theorem node7394_cond_eq
    (child7388 : Flapjack.WordAlloc.removeDeadStructural input7388 value3698 value1 value2 = (output7388, value3699, value1))
    (child7393 : Flapjack.WordAlloc.removeDeadStructural input7393 value3699 value1 value2 = (output7393, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7394 value3698 value1 value2 = (output7394, value5, value1) := by
  rw [input7394_def, output7394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7388]
  dsimp only
  rw [child7393]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7388_skip, output7393_skip]
  kernel_rfl

theorem node7395_cond_eq
    (child7387 : Flapjack.WordAlloc.removeDeadStructural input7387 value3696 value1 value2 = (output7387, value3698, value1))
    (child7394 : Flapjack.WordAlloc.removeDeadStructural input7394 value3698 value1 value2 = (output7394, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7395 value3696 value1 value2 = (output7395, value5, value1) := by
  rw [input7395_def, output7395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7387]
  dsimp only
  rw [child7394]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7387_skip, output7394_skip]
  kernel_rfl

theorem node7396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7396 value5 value1 value2 = (output7396, value3702, value1) := by
  rw [input7396_def, output7396_def]
  kernel_rfl

theorem node7397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7397 value3702 value1 value2 = (output7397, value3703, value1) := by
  rw [input7397_def, output7397_def]
  kernel_rfl

theorem node7398_cond_eq
    (child7396 : Flapjack.WordAlloc.removeDeadStructural input7396 value5 value1 value2 = (output7396, value3702, value1))
    (child7397 : Flapjack.WordAlloc.removeDeadStructural input7397 value3702 value1 value2 = (output7397, value3703, value1)) : Flapjack.WordAlloc.removeDeadStructural input7398 value5 value1 value2 = (output7398, value3703, value1) := by
  rw [input7398_def, output7398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7396]
  dsimp only
  rw [child7397]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7396_skip, output7397_skip]
  kernel_rfl

theorem node7399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7399 value3703 value1 value2 = (output7399, value3704, value1) := by
  rw [input7399_def, output7399_def]
  kernel_rfl

theorem node7400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7400 value3704 value1 value2 = (output7400, value3704, value1) := by
  rw [input7400_def, output7400_def]
  kernel_rfl

theorem node7401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7401 value3704 value1 value2 = (output7401, value3705, value1) := by
  rw [input7401_def, output7401_def]
  kernel_rfl

theorem node7402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7402 value3705 value1 value2 = (output7402, value3706, value1) := by
  rw [input7402_def, output7402_def]
  kernel_rfl

theorem node7403_cond_eq
    (child7401 : Flapjack.WordAlloc.removeDeadStructural input7401 value3704 value1 value2 = (output7401, value3705, value1))
    (child7402 : Flapjack.WordAlloc.removeDeadStructural input7402 value3705 value1 value2 = (output7402, value3706, value1)) : Flapjack.WordAlloc.removeDeadStructural input7403 value3704 value1 value2 = (output7403, value3706, value1) := by
  rw [input7403_def, output7403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7401]
  dsimp only
  rw [child7402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7401_skip, output7402_skip]
  kernel_rfl

theorem node7404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7404 value3706 value1 value2 = (output7404, value3707, value1) := by
  rw [input7404_def, output7404_def]
  kernel_rfl

theorem node7405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7405 value3707 value1 value2 = (output7405, value3708, value1) := by
  rw [input7405_def, output7405_def]
  kernel_rfl

theorem node7406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7406 value3708 value1 value2 = (output7406, value3709, value1) := by
  rw [input7406_def, output7406_def]
  kernel_rfl

theorem node7407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7407 value3709 value1 value2 = (output7407, value5, value1) := by
  rw [input7407_def, output7407_def]
  kernel_rfl

theorem node7408_cond_eq
    (child7406 : Flapjack.WordAlloc.removeDeadStructural input7406 value3708 value1 value2 = (output7406, value3709, value1))
    (child7407 : Flapjack.WordAlloc.removeDeadStructural input7407 value3709 value1 value2 = (output7407, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7408 value3708 value1 value2 = (output7408, value5, value1) := by
  rw [input7408_def, output7408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7406]
  dsimp only
  rw [child7407]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7406_skip, output7407_skip]
  kernel_rfl

theorem node7409_cond_eq
    (child7405 : Flapjack.WordAlloc.removeDeadStructural input7405 value3707 value1 value2 = (output7405, value3708, value1))
    (child7408 : Flapjack.WordAlloc.removeDeadStructural input7408 value3708 value1 value2 = (output7408, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7409 value3707 value1 value2 = (output7409, value5, value1) := by
  rw [input7409_def, output7409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7405]
  dsimp only
  rw [child7408]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7405_skip, output7408_skip]
  kernel_rfl

theorem node7410_cond_eq
    (child7404 : Flapjack.WordAlloc.removeDeadStructural input7404 value3706 value1 value2 = (output7404, value3707, value1))
    (child7409 : Flapjack.WordAlloc.removeDeadStructural input7409 value3707 value1 value2 = (output7409, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7410 value3706 value1 value2 = (output7410, value5, value1) := by
  rw [input7410_def, output7410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7404]
  dsimp only
  rw [child7409]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7404_skip, output7409_skip]
  kernel_rfl

theorem node7411_cond_eq
    (child7403 : Flapjack.WordAlloc.removeDeadStructural input7403 value3704 value1 value2 = (output7403, value3706, value1))
    (child7410 : Flapjack.WordAlloc.removeDeadStructural input7410 value3706 value1 value2 = (output7410, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7411 value3704 value1 value2 = (output7411, value5, value1) := by
  rw [input7411_def, output7411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7403]
  dsimp only
  rw [child7410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7403_skip, output7410_skip]
  kernel_rfl

theorem node7412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7412 value5 value1 value2 = (output7412, value3710, value1) := by
  rw [input7412_def, output7412_def]
  kernel_rfl

theorem node7413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7413 value3710 value1 value2 = (output7413, value3711, value1) := by
  rw [input7413_def, output7413_def]
  kernel_rfl

theorem node7414_cond_eq
    (child7412 : Flapjack.WordAlloc.removeDeadStructural input7412 value5 value1 value2 = (output7412, value3710, value1))
    (child7413 : Flapjack.WordAlloc.removeDeadStructural input7413 value3710 value1 value2 = (output7413, value3711, value1)) : Flapjack.WordAlloc.removeDeadStructural input7414 value5 value1 value2 = (output7414, value3711, value1) := by
  rw [input7414_def, output7414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7412]
  dsimp only
  rw [child7413]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7412_skip, output7413_skip]
  kernel_rfl

theorem node7415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7415 value3711 value1 value2 = (output7415, value3712, value1) := by
  rw [input7415_def, output7415_def]
  kernel_rfl

theorem node7416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7416 value3712 value1 value2 = (output7416, value3712, value1) := by
  rw [input7416_def, output7416_def]
  kernel_rfl

theorem node7417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7417 value3712 value1 value2 = (output7417, value3713, value1) := by
  rw [input7417_def, output7417_def]
  kernel_rfl

theorem node7418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7418 value3713 value1 value2 = (output7418, value3714, value1) := by
  rw [input7418_def, output7418_def]
  kernel_rfl

theorem node7419_cond_eq
    (child7417 : Flapjack.WordAlloc.removeDeadStructural input7417 value3712 value1 value2 = (output7417, value3713, value1))
    (child7418 : Flapjack.WordAlloc.removeDeadStructural input7418 value3713 value1 value2 = (output7418, value3714, value1)) : Flapjack.WordAlloc.removeDeadStructural input7419 value3712 value1 value2 = (output7419, value3714, value1) := by
  rw [input7419_def, output7419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7417]
  dsimp only
  rw [child7418]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7417_skip, output7418_skip]
  kernel_rfl

theorem node7420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7420 value3714 value1 value2 = (output7420, value3715, value1) := by
  rw [input7420_def, output7420_def]
  kernel_rfl

theorem node7421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7421 value3715 value1 value2 = (output7421, value3716, value1) := by
  rw [input7421_def, output7421_def]
  kernel_rfl

theorem node7422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7422 value3716 value1 value2 = (output7422, value3717, value1) := by
  rw [input7422_def, output7422_def]
  kernel_rfl

theorem node7423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7423 value3717 value1 value2 = (output7423, value5, value1) := by
  rw [input7423_def, output7423_def]
  kernel_rfl

#print axioms node7423_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
