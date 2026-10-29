import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk051
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node13056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13056 value6532 value1 value2 = (output13056, value6533, value1) := by
  rw [input13056_def, output13056_def]
  kernel_rfl

theorem node13057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13057 value6533 value1 value2 = (output13057, value6534, value1) := by
  rw [input13057_def, output13057_def]
  kernel_rfl

theorem node13058_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13058 value6534 value1 value2 = (output13058, value6535, value1) := by
  rw [input13058_def, output13058_def]
  kernel_rfl

theorem node13059_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13059 value6535 value1 value2 = (output13059, value5, value1) := by
  rw [input13059_def, output13059_def]
  kernel_rfl

theorem node13060_cond_eq
    (child13058 : Flapjack.WordAlloc.removeDeadStructural input13058 value6534 value1 value2 = (output13058, value6535, value1))
    (child13059 : Flapjack.WordAlloc.removeDeadStructural input13059 value6535 value1 value2 = (output13059, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13060 value6534 value1 value2 = (output13060, value5, value1) := by
  rw [input13060_def, output13060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13058]
  dsimp only
  rw [child13059]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13058_skip, output13059_skip]
  kernel_rfl

theorem node13061_cond_eq
    (child13057 : Flapjack.WordAlloc.removeDeadStructural input13057 value6533 value1 value2 = (output13057, value6534, value1))
    (child13060 : Flapjack.WordAlloc.removeDeadStructural input13060 value6534 value1 value2 = (output13060, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13061 value6533 value1 value2 = (output13061, value5, value1) := by
  rw [input13061_def, output13061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13057]
  dsimp only
  rw [child13060]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13057_skip, output13060_skip]
  kernel_rfl

theorem node13062_cond_eq
    (child13056 : Flapjack.WordAlloc.removeDeadStructural input13056 value6532 value1 value2 = (output13056, value6533, value1))
    (child13061 : Flapjack.WordAlloc.removeDeadStructural input13061 value6533 value1 value2 = (output13061, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13062 value6532 value1 value2 = (output13062, value5, value1) := by
  rw [input13062_def, output13062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13056]
  dsimp only
  rw [child13061]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13056_skip, output13061_skip]
  kernel_rfl

theorem node13063_cond_eq
    (child13055 : Flapjack.WordAlloc.removeDeadStructural input13055 value6531 value1 value2 = (output13055, value6532, value1))
    (child13062 : Flapjack.WordAlloc.removeDeadStructural input13062 value6532 value1 value2 = (output13062, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13063 value6531 value1 value2 = (output13063, value5, value1) := by
  rw [input13063_def, output13063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13055]
  dsimp only
  rw [child13062]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13055_skip, output13062_skip]
  kernel_rfl

theorem node13064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13064 value5 value1 value2 = (output13064, value6536, value1) := by
  rw [input13064_def, output13064_def]
  kernel_rfl

theorem node13065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13065 value6536 value1 value2 = (output13065, value6537, value1) := by
  rw [input13065_def, output13065_def]
  kernel_rfl

theorem node13066_cond_eq
    (child13064 : Flapjack.WordAlloc.removeDeadStructural input13064 value5 value1 value2 = (output13064, value6536, value1))
    (child13065 : Flapjack.WordAlloc.removeDeadStructural input13065 value6536 value1 value2 = (output13065, value6537, value1)) : Flapjack.WordAlloc.removeDeadStructural input13066 value5 value1 value2 = (output13066, value6537, value1) := by
  rw [input13066_def, output13066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13064]
  dsimp only
  rw [child13065]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13064_skip, output13065_skip]
  kernel_rfl

theorem node13067_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13067 value6537 value1 value2 = (output13067, value6538, value1) := by
  rw [input13067_def, output13067_def]
  kernel_rfl

theorem node13068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13068 value6538 value1 value2 = (output13068, value6538, value1) := by
  rw [input13068_def, output13068_def]
  kernel_rfl

theorem node13069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13069 value6538 value1 value2 = (output13069, value6539, value1) := by
  rw [input13069_def, output13069_def]
  kernel_rfl

theorem node13070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13070 value6539 value1 value2 = (output13070, value6540, value1) := by
  rw [input13070_def, output13070_def]
  kernel_rfl

theorem node13071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13071 value6540 value1 value2 = (output13071, value6541, value1) := by
  rw [input13071_def, output13071_def]
  kernel_rfl

theorem node13072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13072 value6541 value1 value2 = (output13072, value6542, value1) := by
  rw [input13072_def, output13072_def]
  kernel_rfl

theorem node13073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13073 value6542 value1 value2 = (output13073, value5, value1) := by
  rw [input13073_def, output13073_def]
  kernel_rfl

theorem node13074_cond_eq
    (child13072 : Flapjack.WordAlloc.removeDeadStructural input13072 value6541 value1 value2 = (output13072, value6542, value1))
    (child13073 : Flapjack.WordAlloc.removeDeadStructural input13073 value6542 value1 value2 = (output13073, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13074 value6541 value1 value2 = (output13074, value5, value1) := by
  rw [input13074_def, output13074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13072]
  dsimp only
  rw [child13073]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13072_skip, output13073_skip]
  kernel_rfl

theorem node13075_cond_eq
    (child13071 : Flapjack.WordAlloc.removeDeadStructural input13071 value6540 value1 value2 = (output13071, value6541, value1))
    (child13074 : Flapjack.WordAlloc.removeDeadStructural input13074 value6541 value1 value2 = (output13074, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13075 value6540 value1 value2 = (output13075, value5, value1) := by
  rw [input13075_def, output13075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13071]
  dsimp only
  rw [child13074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13071_skip, output13074_skip]
  kernel_rfl

theorem node13076_cond_eq
    (child13070 : Flapjack.WordAlloc.removeDeadStructural input13070 value6539 value1 value2 = (output13070, value6540, value1))
    (child13075 : Flapjack.WordAlloc.removeDeadStructural input13075 value6540 value1 value2 = (output13075, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13076 value6539 value1 value2 = (output13076, value5, value1) := by
  rw [input13076_def, output13076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13070]
  dsimp only
  rw [child13075]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13070_skip, output13075_skip]
  kernel_rfl

theorem node13077_cond_eq
    (child13069 : Flapjack.WordAlloc.removeDeadStructural input13069 value6538 value1 value2 = (output13069, value6539, value1))
    (child13076 : Flapjack.WordAlloc.removeDeadStructural input13076 value6539 value1 value2 = (output13076, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13077 value6538 value1 value2 = (output13077, value5, value1) := by
  rw [input13077_def, output13077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13069]
  dsimp only
  rw [child13076]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13069_skip, output13076_skip]
  kernel_rfl

theorem node13078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13078 value5 value1 value2 = (output13078, value6543, value1) := by
  rw [input13078_def, output13078_def]
  kernel_rfl

theorem node13079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13079 value6543 value1 value2 = (output13079, value6544, value1) := by
  rw [input13079_def, output13079_def]
  kernel_rfl

theorem node13080_cond_eq
    (child13078 : Flapjack.WordAlloc.removeDeadStructural input13078 value5 value1 value2 = (output13078, value6543, value1))
    (child13079 : Flapjack.WordAlloc.removeDeadStructural input13079 value6543 value1 value2 = (output13079, value6544, value1)) : Flapjack.WordAlloc.removeDeadStructural input13080 value5 value1 value2 = (output13080, value6544, value1) := by
  rw [input13080_def, output13080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13078]
  dsimp only
  rw [child13079]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13078_skip, output13079_skip]
  kernel_rfl

theorem node13081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13081 value6544 value1 value2 = (output13081, value6545, value1) := by
  rw [input13081_def, output13081_def]
  kernel_rfl

theorem node13082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13082 value6545 value1 value2 = (output13082, value6545, value1) := by
  rw [input13082_def, output13082_def]
  kernel_rfl

theorem node13083_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13083 value6545 value1 value2 = (output13083, value6546, value1) := by
  rw [input13083_def, output13083_def]
  kernel_rfl

theorem node13084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13084 value6546 value1 value2 = (output13084, value6547, value1) := by
  rw [input13084_def, output13084_def]
  kernel_rfl

theorem node13085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13085 value6547 value1 value2 = (output13085, value6548, value1) := by
  rw [input13085_def, output13085_def]
  kernel_rfl

theorem node13086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13086 value6548 value1 value2 = (output13086, value6549, value1) := by
  rw [input13086_def, output13086_def]
  kernel_rfl

theorem node13087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13087 value6549 value1 value2 = (output13087, value5, value1) := by
  rw [input13087_def, output13087_def]
  kernel_rfl

theorem node13088_cond_eq
    (child13086 : Flapjack.WordAlloc.removeDeadStructural input13086 value6548 value1 value2 = (output13086, value6549, value1))
    (child13087 : Flapjack.WordAlloc.removeDeadStructural input13087 value6549 value1 value2 = (output13087, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13088 value6548 value1 value2 = (output13088, value5, value1) := by
  rw [input13088_def, output13088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13086]
  dsimp only
  rw [child13087]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13086_skip, output13087_skip]
  kernel_rfl

theorem node13089_cond_eq
    (child13085 : Flapjack.WordAlloc.removeDeadStructural input13085 value6547 value1 value2 = (output13085, value6548, value1))
    (child13088 : Flapjack.WordAlloc.removeDeadStructural input13088 value6548 value1 value2 = (output13088, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13089 value6547 value1 value2 = (output13089, value5, value1) := by
  rw [input13089_def, output13089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13085]
  dsimp only
  rw [child13088]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13085_skip, output13088_skip]
  kernel_rfl

theorem node13090_cond_eq
    (child13084 : Flapjack.WordAlloc.removeDeadStructural input13084 value6546 value1 value2 = (output13084, value6547, value1))
    (child13089 : Flapjack.WordAlloc.removeDeadStructural input13089 value6547 value1 value2 = (output13089, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13090 value6546 value1 value2 = (output13090, value5, value1) := by
  rw [input13090_def, output13090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13084]
  dsimp only
  rw [child13089]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13084_skip, output13089_skip]
  kernel_rfl

theorem node13091_cond_eq
    (child13083 : Flapjack.WordAlloc.removeDeadStructural input13083 value6545 value1 value2 = (output13083, value6546, value1))
    (child13090 : Flapjack.WordAlloc.removeDeadStructural input13090 value6546 value1 value2 = (output13090, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13091 value6545 value1 value2 = (output13091, value5, value1) := by
  rw [input13091_def, output13091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13083]
  dsimp only
  rw [child13090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13083_skip, output13090_skip]
  kernel_rfl

theorem node13092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13092 value5 value1 value2 = (output13092, value6550, value1) := by
  rw [input13092_def, output13092_def]
  kernel_rfl

theorem node13093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13093 value6550 value1 value2 = (output13093, value6551, value1) := by
  rw [input13093_def, output13093_def]
  kernel_rfl

theorem node13094_cond_eq
    (child13092 : Flapjack.WordAlloc.removeDeadStructural input13092 value5 value1 value2 = (output13092, value6550, value1))
    (child13093 : Flapjack.WordAlloc.removeDeadStructural input13093 value6550 value1 value2 = (output13093, value6551, value1)) : Flapjack.WordAlloc.removeDeadStructural input13094 value5 value1 value2 = (output13094, value6551, value1) := by
  rw [input13094_def, output13094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13092]
  dsimp only
  rw [child13093]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13092_skip, output13093_skip]
  kernel_rfl

theorem node13095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13095 value6551 value1 value2 = (output13095, value6552, value1) := by
  rw [input13095_def, output13095_def]
  kernel_rfl

theorem node13096_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13096 value6552 value1 value2 = (output13096, value6552, value1) := by
  rw [input13096_def, output13096_def]
  kernel_rfl

theorem node13097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13097 value6552 value1 value2 = (output13097, value6553, value1) := by
  rw [input13097_def, output13097_def]
  kernel_rfl

theorem node13098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13098 value6553 value1 value2 = (output13098, value6554, value1) := by
  rw [input13098_def, output13098_def]
  kernel_rfl

theorem node13099_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13099 value6554 value1 value2 = (output13099, value6555, value1) := by
  rw [input13099_def, output13099_def]
  kernel_rfl

theorem node13100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13100 value6555 value1 value2 = (output13100, value6556, value1) := by
  rw [input13100_def, output13100_def]
  kernel_rfl

theorem node13101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13101 value6556 value1 value2 = (output13101, value5, value1) := by
  rw [input13101_def, output13101_def]
  kernel_rfl

theorem node13102_cond_eq
    (child13100 : Flapjack.WordAlloc.removeDeadStructural input13100 value6555 value1 value2 = (output13100, value6556, value1))
    (child13101 : Flapjack.WordAlloc.removeDeadStructural input13101 value6556 value1 value2 = (output13101, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13102 value6555 value1 value2 = (output13102, value5, value1) := by
  rw [input13102_def, output13102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13100]
  dsimp only
  rw [child13101]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13100_skip, output13101_skip]
  kernel_rfl

theorem node13103_cond_eq
    (child13099 : Flapjack.WordAlloc.removeDeadStructural input13099 value6554 value1 value2 = (output13099, value6555, value1))
    (child13102 : Flapjack.WordAlloc.removeDeadStructural input13102 value6555 value1 value2 = (output13102, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13103 value6554 value1 value2 = (output13103, value5, value1) := by
  rw [input13103_def, output13103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13099]
  dsimp only
  rw [child13102]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13099_skip, output13102_skip]
  kernel_rfl

theorem node13104_cond_eq
    (child13098 : Flapjack.WordAlloc.removeDeadStructural input13098 value6553 value1 value2 = (output13098, value6554, value1))
    (child13103 : Flapjack.WordAlloc.removeDeadStructural input13103 value6554 value1 value2 = (output13103, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13104 value6553 value1 value2 = (output13104, value5, value1) := by
  rw [input13104_def, output13104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13098]
  dsimp only
  rw [child13103]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13098_skip, output13103_skip]
  kernel_rfl

theorem node13105_cond_eq
    (child13097 : Flapjack.WordAlloc.removeDeadStructural input13097 value6552 value1 value2 = (output13097, value6553, value1))
    (child13104 : Flapjack.WordAlloc.removeDeadStructural input13104 value6553 value1 value2 = (output13104, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13105 value6552 value1 value2 = (output13105, value5, value1) := by
  rw [input13105_def, output13105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13097]
  dsimp only
  rw [child13104]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13097_skip, output13104_skip]
  kernel_rfl

theorem node13106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13106 value5 value1 value2 = (output13106, value6557, value1) := by
  rw [input13106_def, output13106_def]
  kernel_rfl

theorem node13107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13107 value6557 value1 value2 = (output13107, value6558, value1) := by
  rw [input13107_def, output13107_def]
  kernel_rfl

theorem node13108_cond_eq
    (child13106 : Flapjack.WordAlloc.removeDeadStructural input13106 value5 value1 value2 = (output13106, value6557, value1))
    (child13107 : Flapjack.WordAlloc.removeDeadStructural input13107 value6557 value1 value2 = (output13107, value6558, value1)) : Flapjack.WordAlloc.removeDeadStructural input13108 value5 value1 value2 = (output13108, value6558, value1) := by
  rw [input13108_def, output13108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13106]
  dsimp only
  rw [child13107]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13106_skip, output13107_skip]
  kernel_rfl

theorem node13109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13109 value6558 value1 value2 = (output13109, value6559, value1) := by
  rw [input13109_def, output13109_def]
  kernel_rfl

theorem node13110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13110 value6559 value1 value2 = (output13110, value6559, value1) := by
  rw [input13110_def, output13110_def]
  kernel_rfl

theorem node13111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13111 value6559 value1 value2 = (output13111, value6560, value1) := by
  rw [input13111_def, output13111_def]
  kernel_rfl

theorem node13112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13112 value6560 value1 value2 = (output13112, value6561, value1) := by
  rw [input13112_def, output13112_def]
  kernel_rfl

theorem node13113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13113 value6561 value1 value2 = (output13113, value6562, value1) := by
  rw [input13113_def, output13113_def]
  kernel_rfl

theorem node13114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13114 value6562 value1 value2 = (output13114, value6563, value1) := by
  rw [input13114_def, output13114_def]
  kernel_rfl

theorem node13115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13115 value6563 value1 value2 = (output13115, value5, value1) := by
  rw [input13115_def, output13115_def]
  kernel_rfl

theorem node13116_cond_eq
    (child13114 : Flapjack.WordAlloc.removeDeadStructural input13114 value6562 value1 value2 = (output13114, value6563, value1))
    (child13115 : Flapjack.WordAlloc.removeDeadStructural input13115 value6563 value1 value2 = (output13115, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13116 value6562 value1 value2 = (output13116, value5, value1) := by
  rw [input13116_def, output13116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13114]
  dsimp only
  rw [child13115]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13114_skip, output13115_skip]
  kernel_rfl

theorem node13117_cond_eq
    (child13113 : Flapjack.WordAlloc.removeDeadStructural input13113 value6561 value1 value2 = (output13113, value6562, value1))
    (child13116 : Flapjack.WordAlloc.removeDeadStructural input13116 value6562 value1 value2 = (output13116, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13117 value6561 value1 value2 = (output13117, value5, value1) := by
  rw [input13117_def, output13117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13113]
  dsimp only
  rw [child13116]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13113_skip, output13116_skip]
  kernel_rfl

theorem node13118_cond_eq
    (child13112 : Flapjack.WordAlloc.removeDeadStructural input13112 value6560 value1 value2 = (output13112, value6561, value1))
    (child13117 : Flapjack.WordAlloc.removeDeadStructural input13117 value6561 value1 value2 = (output13117, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13118 value6560 value1 value2 = (output13118, value5, value1) := by
  rw [input13118_def, output13118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13112]
  dsimp only
  rw [child13117]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13112_skip, output13117_skip]
  kernel_rfl

theorem node13119_cond_eq
    (child13111 : Flapjack.WordAlloc.removeDeadStructural input13111 value6559 value1 value2 = (output13111, value6560, value1))
    (child13118 : Flapjack.WordAlloc.removeDeadStructural input13118 value6560 value1 value2 = (output13118, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13119 value6559 value1 value2 = (output13119, value5, value1) := by
  rw [input13119_def, output13119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13111]
  dsimp only
  rw [child13118]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13111_skip, output13118_skip]
  kernel_rfl

theorem node13120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13120 value5 value1 value2 = (output13120, value6564, value1) := by
  rw [input13120_def, output13120_def]
  kernel_rfl

theorem node13121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13121 value6564 value1 value2 = (output13121, value6565, value1) := by
  rw [input13121_def, output13121_def]
  kernel_rfl

theorem node13122_cond_eq
    (child13120 : Flapjack.WordAlloc.removeDeadStructural input13120 value5 value1 value2 = (output13120, value6564, value1))
    (child13121 : Flapjack.WordAlloc.removeDeadStructural input13121 value6564 value1 value2 = (output13121, value6565, value1)) : Flapjack.WordAlloc.removeDeadStructural input13122 value5 value1 value2 = (output13122, value6565, value1) := by
  rw [input13122_def, output13122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13120]
  dsimp only
  rw [child13121]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13120_skip, output13121_skip]
  kernel_rfl

theorem node13123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13123 value6565 value1 value2 = (output13123, value6566, value1) := by
  rw [input13123_def, output13123_def]
  kernel_rfl

theorem node13124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13124 value6566 value1 value2 = (output13124, value6566, value1) := by
  rw [input13124_def, output13124_def]
  kernel_rfl

theorem node13125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13125 value6566 value1 value2 = (output13125, value6567, value1) := by
  rw [input13125_def, output13125_def]
  kernel_rfl

theorem node13126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13126 value6567 value1 value2 = (output13126, value6568, value1) := by
  rw [input13126_def, output13126_def]
  kernel_rfl

theorem node13127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13127 value6568 value1 value2 = (output13127, value6569, value1) := by
  rw [input13127_def, output13127_def]
  kernel_rfl

theorem node13128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13128 value6569 value1 value2 = (output13128, value6570, value1) := by
  rw [input13128_def, output13128_def]
  kernel_rfl

theorem node13129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13129 value6570 value1 value2 = (output13129, value5, value1) := by
  rw [input13129_def, output13129_def]
  kernel_rfl

theorem node13130_cond_eq
    (child13128 : Flapjack.WordAlloc.removeDeadStructural input13128 value6569 value1 value2 = (output13128, value6570, value1))
    (child13129 : Flapjack.WordAlloc.removeDeadStructural input13129 value6570 value1 value2 = (output13129, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13130 value6569 value1 value2 = (output13130, value5, value1) := by
  rw [input13130_def, output13130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13128]
  dsimp only
  rw [child13129]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13128_skip, output13129_skip]
  kernel_rfl

theorem node13131_cond_eq
    (child13127 : Flapjack.WordAlloc.removeDeadStructural input13127 value6568 value1 value2 = (output13127, value6569, value1))
    (child13130 : Flapjack.WordAlloc.removeDeadStructural input13130 value6569 value1 value2 = (output13130, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13131 value6568 value1 value2 = (output13131, value5, value1) := by
  rw [input13131_def, output13131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13127]
  dsimp only
  rw [child13130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13127_skip, output13130_skip]
  kernel_rfl

theorem node13132_cond_eq
    (child13126 : Flapjack.WordAlloc.removeDeadStructural input13126 value6567 value1 value2 = (output13126, value6568, value1))
    (child13131 : Flapjack.WordAlloc.removeDeadStructural input13131 value6568 value1 value2 = (output13131, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13132 value6567 value1 value2 = (output13132, value5, value1) := by
  rw [input13132_def, output13132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13126]
  dsimp only
  rw [child13131]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13126_skip, output13131_skip]
  kernel_rfl

theorem node13133_cond_eq
    (child13125 : Flapjack.WordAlloc.removeDeadStructural input13125 value6566 value1 value2 = (output13125, value6567, value1))
    (child13132 : Flapjack.WordAlloc.removeDeadStructural input13132 value6567 value1 value2 = (output13132, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13133 value6566 value1 value2 = (output13133, value5, value1) := by
  rw [input13133_def, output13133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13125]
  dsimp only
  rw [child13132]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13125_skip, output13132_skip]
  kernel_rfl

theorem node13134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13134 value5 value1 value2 = (output13134, value6571, value1) := by
  rw [input13134_def, output13134_def]
  kernel_rfl

theorem node13135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13135 value6571 value1 value2 = (output13135, value6572, value1) := by
  rw [input13135_def, output13135_def]
  kernel_rfl

theorem node13136_cond_eq
    (child13134 : Flapjack.WordAlloc.removeDeadStructural input13134 value5 value1 value2 = (output13134, value6571, value1))
    (child13135 : Flapjack.WordAlloc.removeDeadStructural input13135 value6571 value1 value2 = (output13135, value6572, value1)) : Flapjack.WordAlloc.removeDeadStructural input13136 value5 value1 value2 = (output13136, value6572, value1) := by
  rw [input13136_def, output13136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13134]
  dsimp only
  rw [child13135]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13134_skip, output13135_skip]
  kernel_rfl

theorem node13137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13137 value6572 value1 value2 = (output13137, value6573, value1) := by
  rw [input13137_def, output13137_def]
  kernel_rfl

theorem node13138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13138 value6573 value1 value2 = (output13138, value6573, value1) := by
  rw [input13138_def, output13138_def]
  kernel_rfl

theorem node13139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13139 value6573 value1 value2 = (output13139, value6574, value1) := by
  rw [input13139_def, output13139_def]
  kernel_rfl

theorem node13140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13140 value6574 value1 value2 = (output13140, value6575, value1) := by
  rw [input13140_def, output13140_def]
  kernel_rfl

theorem node13141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13141 value6575 value1 value2 = (output13141, value6576, value1) := by
  rw [input13141_def, output13141_def]
  kernel_rfl

theorem node13142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13142 value6576 value1 value2 = (output13142, value6577, value1) := by
  rw [input13142_def, output13142_def]
  kernel_rfl

theorem node13143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13143 value6577 value1 value2 = (output13143, value5, value1) := by
  rw [input13143_def, output13143_def]
  kernel_rfl

theorem node13144_cond_eq
    (child13142 : Flapjack.WordAlloc.removeDeadStructural input13142 value6576 value1 value2 = (output13142, value6577, value1))
    (child13143 : Flapjack.WordAlloc.removeDeadStructural input13143 value6577 value1 value2 = (output13143, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13144 value6576 value1 value2 = (output13144, value5, value1) := by
  rw [input13144_def, output13144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13142]
  dsimp only
  rw [child13143]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13142_skip, output13143_skip]
  kernel_rfl

theorem node13145_cond_eq
    (child13141 : Flapjack.WordAlloc.removeDeadStructural input13141 value6575 value1 value2 = (output13141, value6576, value1))
    (child13144 : Flapjack.WordAlloc.removeDeadStructural input13144 value6576 value1 value2 = (output13144, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13145 value6575 value1 value2 = (output13145, value5, value1) := by
  rw [input13145_def, output13145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13141]
  dsimp only
  rw [child13144]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13141_skip, output13144_skip]
  kernel_rfl

theorem node13146_cond_eq
    (child13140 : Flapjack.WordAlloc.removeDeadStructural input13140 value6574 value1 value2 = (output13140, value6575, value1))
    (child13145 : Flapjack.WordAlloc.removeDeadStructural input13145 value6575 value1 value2 = (output13145, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13146 value6574 value1 value2 = (output13146, value5, value1) := by
  rw [input13146_def, output13146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13140]
  dsimp only
  rw [child13145]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13140_skip, output13145_skip]
  kernel_rfl

theorem node13147_cond_eq
    (child13139 : Flapjack.WordAlloc.removeDeadStructural input13139 value6573 value1 value2 = (output13139, value6574, value1))
    (child13146 : Flapjack.WordAlloc.removeDeadStructural input13146 value6574 value1 value2 = (output13146, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13147 value6573 value1 value2 = (output13147, value5, value1) := by
  rw [input13147_def, output13147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13139]
  dsimp only
  rw [child13146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13139_skip, output13146_skip]
  kernel_rfl

theorem node13148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13148 value5 value1 value2 = (output13148, value6578, value1) := by
  rw [input13148_def, output13148_def]
  kernel_rfl

theorem node13149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13149 value6578 value1 value2 = (output13149, value6579, value1) := by
  rw [input13149_def, output13149_def]
  kernel_rfl

theorem node13150_cond_eq
    (child13148 : Flapjack.WordAlloc.removeDeadStructural input13148 value5 value1 value2 = (output13148, value6578, value1))
    (child13149 : Flapjack.WordAlloc.removeDeadStructural input13149 value6578 value1 value2 = (output13149, value6579, value1)) : Flapjack.WordAlloc.removeDeadStructural input13150 value5 value1 value2 = (output13150, value6579, value1) := by
  rw [input13150_def, output13150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13148]
  dsimp only
  rw [child13149]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13148_skip, output13149_skip]
  kernel_rfl

theorem node13151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13151 value6579 value1 value2 = (output13151, value6580, value1) := by
  rw [input13151_def, output13151_def]
  kernel_rfl

theorem node13152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13152 value6580 value1 value2 = (output13152, value6580, value1) := by
  rw [input13152_def, output13152_def]
  kernel_rfl

theorem node13153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13153 value6580 value1 value2 = (output13153, value6581, value1) := by
  rw [input13153_def, output13153_def]
  kernel_rfl

theorem node13154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13154 value6581 value1 value2 = (output13154, value6582, value1) := by
  rw [input13154_def, output13154_def]
  kernel_rfl

theorem node13155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13155 value6582 value1 value2 = (output13155, value6583, value1) := by
  rw [input13155_def, output13155_def]
  kernel_rfl

theorem node13156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13156 value6583 value1 value2 = (output13156, value6584, value1) := by
  rw [input13156_def, output13156_def]
  kernel_rfl

theorem node13157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13157 value6584 value1 value2 = (output13157, value5, value1) := by
  rw [input13157_def, output13157_def]
  kernel_rfl

theorem node13158_cond_eq
    (child13156 : Flapjack.WordAlloc.removeDeadStructural input13156 value6583 value1 value2 = (output13156, value6584, value1))
    (child13157 : Flapjack.WordAlloc.removeDeadStructural input13157 value6584 value1 value2 = (output13157, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13158 value6583 value1 value2 = (output13158, value5, value1) := by
  rw [input13158_def, output13158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13156]
  dsimp only
  rw [child13157]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13156_skip, output13157_skip]
  kernel_rfl

theorem node13159_cond_eq
    (child13155 : Flapjack.WordAlloc.removeDeadStructural input13155 value6582 value1 value2 = (output13155, value6583, value1))
    (child13158 : Flapjack.WordAlloc.removeDeadStructural input13158 value6583 value1 value2 = (output13158, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13159 value6582 value1 value2 = (output13159, value5, value1) := by
  rw [input13159_def, output13159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13155]
  dsimp only
  rw [child13158]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13155_skip, output13158_skip]
  kernel_rfl

theorem node13160_cond_eq
    (child13154 : Flapjack.WordAlloc.removeDeadStructural input13154 value6581 value1 value2 = (output13154, value6582, value1))
    (child13159 : Flapjack.WordAlloc.removeDeadStructural input13159 value6582 value1 value2 = (output13159, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13160 value6581 value1 value2 = (output13160, value5, value1) := by
  rw [input13160_def, output13160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13154]
  dsimp only
  rw [child13159]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13154_skip, output13159_skip]
  kernel_rfl

theorem node13161_cond_eq
    (child13153 : Flapjack.WordAlloc.removeDeadStructural input13153 value6580 value1 value2 = (output13153, value6581, value1))
    (child13160 : Flapjack.WordAlloc.removeDeadStructural input13160 value6581 value1 value2 = (output13160, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13161 value6580 value1 value2 = (output13161, value5, value1) := by
  rw [input13161_def, output13161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13153]
  dsimp only
  rw [child13160]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13153_skip, output13160_skip]
  kernel_rfl

theorem node13162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13162 value5 value1 value2 = (output13162, value6585, value1) := by
  rw [input13162_def, output13162_def]
  kernel_rfl

theorem node13163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13163 value6585 value1 value2 = (output13163, value6586, value1) := by
  rw [input13163_def, output13163_def]
  kernel_rfl

theorem node13164_cond_eq
    (child13162 : Flapjack.WordAlloc.removeDeadStructural input13162 value5 value1 value2 = (output13162, value6585, value1))
    (child13163 : Flapjack.WordAlloc.removeDeadStructural input13163 value6585 value1 value2 = (output13163, value6586, value1)) : Flapjack.WordAlloc.removeDeadStructural input13164 value5 value1 value2 = (output13164, value6586, value1) := by
  rw [input13164_def, output13164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13162]
  dsimp only
  rw [child13163]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13162_skip, output13163_skip]
  kernel_rfl

theorem node13165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13165 value6586 value1 value2 = (output13165, value6587, value1) := by
  rw [input13165_def, output13165_def]
  kernel_rfl

theorem node13166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13166 value6587 value1 value2 = (output13166, value6587, value1) := by
  rw [input13166_def, output13166_def]
  kernel_rfl

theorem node13167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13167 value6587 value1 value2 = (output13167, value6588, value1) := by
  rw [input13167_def, output13167_def]
  kernel_rfl

theorem node13168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13168 value6588 value1 value2 = (output13168, value6589, value1) := by
  rw [input13168_def, output13168_def]
  kernel_rfl

theorem node13169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13169 value6589 value1 value2 = (output13169, value6590, value1) := by
  rw [input13169_def, output13169_def]
  kernel_rfl

theorem node13170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13170 value6590 value1 value2 = (output13170, value6591, value1) := by
  rw [input13170_def, output13170_def]
  kernel_rfl

theorem node13171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13171 value6591 value1 value2 = (output13171, value5, value1) := by
  rw [input13171_def, output13171_def]
  kernel_rfl

theorem node13172_cond_eq
    (child13170 : Flapjack.WordAlloc.removeDeadStructural input13170 value6590 value1 value2 = (output13170, value6591, value1))
    (child13171 : Flapjack.WordAlloc.removeDeadStructural input13171 value6591 value1 value2 = (output13171, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13172 value6590 value1 value2 = (output13172, value5, value1) := by
  rw [input13172_def, output13172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13170]
  dsimp only
  rw [child13171]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13170_skip, output13171_skip]
  kernel_rfl

theorem node13173_cond_eq
    (child13169 : Flapjack.WordAlloc.removeDeadStructural input13169 value6589 value1 value2 = (output13169, value6590, value1))
    (child13172 : Flapjack.WordAlloc.removeDeadStructural input13172 value6590 value1 value2 = (output13172, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13173 value6589 value1 value2 = (output13173, value5, value1) := by
  rw [input13173_def, output13173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13169]
  dsimp only
  rw [child13172]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13169_skip, output13172_skip]
  kernel_rfl

theorem node13174_cond_eq
    (child13168 : Flapjack.WordAlloc.removeDeadStructural input13168 value6588 value1 value2 = (output13168, value6589, value1))
    (child13173 : Flapjack.WordAlloc.removeDeadStructural input13173 value6589 value1 value2 = (output13173, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13174 value6588 value1 value2 = (output13174, value5, value1) := by
  rw [input13174_def, output13174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13168]
  dsimp only
  rw [child13173]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13168_skip, output13173_skip]
  kernel_rfl

theorem node13175_cond_eq
    (child13167 : Flapjack.WordAlloc.removeDeadStructural input13167 value6587 value1 value2 = (output13167, value6588, value1))
    (child13174 : Flapjack.WordAlloc.removeDeadStructural input13174 value6588 value1 value2 = (output13174, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13175 value6587 value1 value2 = (output13175, value5, value1) := by
  rw [input13175_def, output13175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13167]
  dsimp only
  rw [child13174]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13167_skip, output13174_skip]
  kernel_rfl

theorem node13176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13176 value5 value1 value2 = (output13176, value6592, value1) := by
  rw [input13176_def, output13176_def]
  kernel_rfl

theorem node13177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13177 value6592 value1 value2 = (output13177, value6593, value1) := by
  rw [input13177_def, output13177_def]
  kernel_rfl

theorem node13178_cond_eq
    (child13176 : Flapjack.WordAlloc.removeDeadStructural input13176 value5 value1 value2 = (output13176, value6592, value1))
    (child13177 : Flapjack.WordAlloc.removeDeadStructural input13177 value6592 value1 value2 = (output13177, value6593, value1)) : Flapjack.WordAlloc.removeDeadStructural input13178 value5 value1 value2 = (output13178, value6593, value1) := by
  rw [input13178_def, output13178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13176]
  dsimp only
  rw [child13177]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13176_skip, output13177_skip]
  kernel_rfl

theorem node13179_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13179 value6593 value1 value2 = (output13179, value6594, value1) := by
  rw [input13179_def, output13179_def]
  kernel_rfl

theorem node13180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13180 value6594 value1 value2 = (output13180, value6594, value1) := by
  rw [input13180_def, output13180_def]
  kernel_rfl

theorem node13181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13181 value6594 value1 value2 = (output13181, value6595, value1) := by
  rw [input13181_def, output13181_def]
  kernel_rfl

theorem node13182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13182 value6595 value1 value2 = (output13182, value6596, value1) := by
  rw [input13182_def, output13182_def]
  kernel_rfl

theorem node13183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13183 value6596 value1 value2 = (output13183, value6597, value1) := by
  rw [input13183_def, output13183_def]
  kernel_rfl

theorem node13184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13184 value6597 value1 value2 = (output13184, value6598, value1) := by
  rw [input13184_def, output13184_def]
  kernel_rfl

theorem node13185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13185 value6598 value1 value2 = (output13185, value5, value1) := by
  rw [input13185_def, output13185_def]
  kernel_rfl

theorem node13186_cond_eq
    (child13184 : Flapjack.WordAlloc.removeDeadStructural input13184 value6597 value1 value2 = (output13184, value6598, value1))
    (child13185 : Flapjack.WordAlloc.removeDeadStructural input13185 value6598 value1 value2 = (output13185, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13186 value6597 value1 value2 = (output13186, value5, value1) := by
  rw [input13186_def, output13186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13184]
  dsimp only
  rw [child13185]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13184_skip, output13185_skip]
  kernel_rfl

theorem node13187_cond_eq
    (child13183 : Flapjack.WordAlloc.removeDeadStructural input13183 value6596 value1 value2 = (output13183, value6597, value1))
    (child13186 : Flapjack.WordAlloc.removeDeadStructural input13186 value6597 value1 value2 = (output13186, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13187 value6596 value1 value2 = (output13187, value5, value1) := by
  rw [input13187_def, output13187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13183]
  dsimp only
  rw [child13186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13183_skip, output13186_skip]
  kernel_rfl

theorem node13188_cond_eq
    (child13182 : Flapjack.WordAlloc.removeDeadStructural input13182 value6595 value1 value2 = (output13182, value6596, value1))
    (child13187 : Flapjack.WordAlloc.removeDeadStructural input13187 value6596 value1 value2 = (output13187, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13188 value6595 value1 value2 = (output13188, value5, value1) := by
  rw [input13188_def, output13188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13182]
  dsimp only
  rw [child13187]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13182_skip, output13187_skip]
  kernel_rfl

theorem node13189_cond_eq
    (child13181 : Flapjack.WordAlloc.removeDeadStructural input13181 value6594 value1 value2 = (output13181, value6595, value1))
    (child13188 : Flapjack.WordAlloc.removeDeadStructural input13188 value6595 value1 value2 = (output13188, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13189 value6594 value1 value2 = (output13189, value5, value1) := by
  rw [input13189_def, output13189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13181]
  dsimp only
  rw [child13188]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13181_skip, output13188_skip]
  kernel_rfl

theorem node13190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13190 value5 value1 value2 = (output13190, value6599, value1) := by
  rw [input13190_def, output13190_def]
  kernel_rfl

theorem node13191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13191 value6599 value1 value2 = (output13191, value6600, value1) := by
  rw [input13191_def, output13191_def]
  kernel_rfl

theorem node13192_cond_eq
    (child13190 : Flapjack.WordAlloc.removeDeadStructural input13190 value5 value1 value2 = (output13190, value6599, value1))
    (child13191 : Flapjack.WordAlloc.removeDeadStructural input13191 value6599 value1 value2 = (output13191, value6600, value1)) : Flapjack.WordAlloc.removeDeadStructural input13192 value5 value1 value2 = (output13192, value6600, value1) := by
  rw [input13192_def, output13192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13190]
  dsimp only
  rw [child13191]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13190_skip, output13191_skip]
  kernel_rfl

theorem node13193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13193 value6600 value1 value2 = (output13193, value6601, value1) := by
  rw [input13193_def, output13193_def]
  kernel_rfl

theorem node13194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13194 value6601 value1 value2 = (output13194, value6601, value1) := by
  rw [input13194_def, output13194_def]
  kernel_rfl

theorem node13195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13195 value6601 value1 value2 = (output13195, value6602, value1) := by
  rw [input13195_def, output13195_def]
  kernel_rfl

theorem node13196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13196 value6602 value1 value2 = (output13196, value6603, value1) := by
  rw [input13196_def, output13196_def]
  kernel_rfl

theorem node13197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13197 value6603 value1 value2 = (output13197, value6604, value1) := by
  rw [input13197_def, output13197_def]
  kernel_rfl

theorem node13198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13198 value6604 value1 value2 = (output13198, value6605, value1) := by
  rw [input13198_def, output13198_def]
  kernel_rfl

theorem node13199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13199 value6605 value1 value2 = (output13199, value5, value1) := by
  rw [input13199_def, output13199_def]
  kernel_rfl

theorem node13200_cond_eq
    (child13198 : Flapjack.WordAlloc.removeDeadStructural input13198 value6604 value1 value2 = (output13198, value6605, value1))
    (child13199 : Flapjack.WordAlloc.removeDeadStructural input13199 value6605 value1 value2 = (output13199, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13200 value6604 value1 value2 = (output13200, value5, value1) := by
  rw [input13200_def, output13200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13198]
  dsimp only
  rw [child13199]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13198_skip, output13199_skip]
  kernel_rfl

theorem node13201_cond_eq
    (child13197 : Flapjack.WordAlloc.removeDeadStructural input13197 value6603 value1 value2 = (output13197, value6604, value1))
    (child13200 : Flapjack.WordAlloc.removeDeadStructural input13200 value6604 value1 value2 = (output13200, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13201 value6603 value1 value2 = (output13201, value5, value1) := by
  rw [input13201_def, output13201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13197]
  dsimp only
  rw [child13200]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13197_skip, output13200_skip]
  kernel_rfl

theorem node13202_cond_eq
    (child13196 : Flapjack.WordAlloc.removeDeadStructural input13196 value6602 value1 value2 = (output13196, value6603, value1))
    (child13201 : Flapjack.WordAlloc.removeDeadStructural input13201 value6603 value1 value2 = (output13201, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13202 value6602 value1 value2 = (output13202, value5, value1) := by
  rw [input13202_def, output13202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13196]
  dsimp only
  rw [child13201]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13196_skip, output13201_skip]
  kernel_rfl

theorem node13203_cond_eq
    (child13195 : Flapjack.WordAlloc.removeDeadStructural input13195 value6601 value1 value2 = (output13195, value6602, value1))
    (child13202 : Flapjack.WordAlloc.removeDeadStructural input13202 value6602 value1 value2 = (output13202, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13203 value6601 value1 value2 = (output13203, value5, value1) := by
  rw [input13203_def, output13203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13195]
  dsimp only
  rw [child13202]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13195_skip, output13202_skip]
  kernel_rfl

theorem node13204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13204 value5 value1 value2 = (output13204, value6606, value1) := by
  rw [input13204_def, output13204_def]
  kernel_rfl

theorem node13205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13205 value6606 value1 value2 = (output13205, value6607, value1) := by
  rw [input13205_def, output13205_def]
  kernel_rfl

theorem node13206_cond_eq
    (child13204 : Flapjack.WordAlloc.removeDeadStructural input13204 value5 value1 value2 = (output13204, value6606, value1))
    (child13205 : Flapjack.WordAlloc.removeDeadStructural input13205 value6606 value1 value2 = (output13205, value6607, value1)) : Flapjack.WordAlloc.removeDeadStructural input13206 value5 value1 value2 = (output13206, value6607, value1) := by
  rw [input13206_def, output13206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13204]
  dsimp only
  rw [child13205]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13204_skip, output13205_skip]
  kernel_rfl

theorem node13207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13207 value6607 value1 value2 = (output13207, value6608, value1) := by
  rw [input13207_def, output13207_def]
  kernel_rfl

theorem node13208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13208 value6608 value1 value2 = (output13208, value6608, value1) := by
  rw [input13208_def, output13208_def]
  kernel_rfl

theorem node13209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13209 value6608 value1 value2 = (output13209, value6609, value1) := by
  rw [input13209_def, output13209_def]
  kernel_rfl

theorem node13210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13210 value6609 value1 value2 = (output13210, value6610, value1) := by
  rw [input13210_def, output13210_def]
  kernel_rfl

theorem node13211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13211 value6610 value1 value2 = (output13211, value6611, value1) := by
  rw [input13211_def, output13211_def]
  kernel_rfl

theorem node13212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13212 value6611 value1 value2 = (output13212, value6612, value1) := by
  rw [input13212_def, output13212_def]
  kernel_rfl

theorem node13213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13213 value6612 value1 value2 = (output13213, value5, value1) := by
  rw [input13213_def, output13213_def]
  kernel_rfl

theorem node13214_cond_eq
    (child13212 : Flapjack.WordAlloc.removeDeadStructural input13212 value6611 value1 value2 = (output13212, value6612, value1))
    (child13213 : Flapjack.WordAlloc.removeDeadStructural input13213 value6612 value1 value2 = (output13213, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13214 value6611 value1 value2 = (output13214, value5, value1) := by
  rw [input13214_def, output13214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13212]
  dsimp only
  rw [child13213]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13212_skip, output13213_skip]
  kernel_rfl

theorem node13215_cond_eq
    (child13211 : Flapjack.WordAlloc.removeDeadStructural input13211 value6610 value1 value2 = (output13211, value6611, value1))
    (child13214 : Flapjack.WordAlloc.removeDeadStructural input13214 value6611 value1 value2 = (output13214, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13215 value6610 value1 value2 = (output13215, value5, value1) := by
  rw [input13215_def, output13215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13211]
  dsimp only
  rw [child13214]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13211_skip, output13214_skip]
  kernel_rfl

theorem node13216_cond_eq
    (child13210 : Flapjack.WordAlloc.removeDeadStructural input13210 value6609 value1 value2 = (output13210, value6610, value1))
    (child13215 : Flapjack.WordAlloc.removeDeadStructural input13215 value6610 value1 value2 = (output13215, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13216 value6609 value1 value2 = (output13216, value5, value1) := by
  rw [input13216_def, output13216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13210]
  dsimp only
  rw [child13215]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13210_skip, output13215_skip]
  kernel_rfl

theorem node13217_cond_eq
    (child13209 : Flapjack.WordAlloc.removeDeadStructural input13209 value6608 value1 value2 = (output13209, value6609, value1))
    (child13216 : Flapjack.WordAlloc.removeDeadStructural input13216 value6609 value1 value2 = (output13216, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13217 value6608 value1 value2 = (output13217, value5, value1) := by
  rw [input13217_def, output13217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13209]
  dsimp only
  rw [child13216]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13209_skip, output13216_skip]
  kernel_rfl

theorem node13218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13218 value5 value1 value2 = (output13218, value6613, value1) := by
  rw [input13218_def, output13218_def]
  kernel_rfl

theorem node13219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13219 value6613 value1 value2 = (output13219, value6614, value1) := by
  rw [input13219_def, output13219_def]
  kernel_rfl

theorem node13220_cond_eq
    (child13218 : Flapjack.WordAlloc.removeDeadStructural input13218 value5 value1 value2 = (output13218, value6613, value1))
    (child13219 : Flapjack.WordAlloc.removeDeadStructural input13219 value6613 value1 value2 = (output13219, value6614, value1)) : Flapjack.WordAlloc.removeDeadStructural input13220 value5 value1 value2 = (output13220, value6614, value1) := by
  rw [input13220_def, output13220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13218]
  dsimp only
  rw [child13219]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13218_skip, output13219_skip]
  kernel_rfl

theorem node13221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13221 value6614 value1 value2 = (output13221, value6615, value1) := by
  rw [input13221_def, output13221_def]
  kernel_rfl

theorem node13222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13222 value6615 value1 value2 = (output13222, value6615, value1) := by
  rw [input13222_def, output13222_def]
  kernel_rfl

theorem node13223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13223 value6615 value1 value2 = (output13223, value6616, value1) := by
  rw [input13223_def, output13223_def]
  kernel_rfl

theorem node13224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13224 value6616 value1 value2 = (output13224, value6617, value1) := by
  rw [input13224_def, output13224_def]
  kernel_rfl

theorem node13225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13225 value6617 value1 value2 = (output13225, value6618, value1) := by
  rw [input13225_def, output13225_def]
  kernel_rfl

theorem node13226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13226 value6618 value1 value2 = (output13226, value6619, value1) := by
  rw [input13226_def, output13226_def]
  kernel_rfl

theorem node13227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13227 value6619 value1 value2 = (output13227, value5, value1) := by
  rw [input13227_def, output13227_def]
  kernel_rfl

theorem node13228_cond_eq
    (child13226 : Flapjack.WordAlloc.removeDeadStructural input13226 value6618 value1 value2 = (output13226, value6619, value1))
    (child13227 : Flapjack.WordAlloc.removeDeadStructural input13227 value6619 value1 value2 = (output13227, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13228 value6618 value1 value2 = (output13228, value5, value1) := by
  rw [input13228_def, output13228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13226]
  dsimp only
  rw [child13227]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13226_skip, output13227_skip]
  kernel_rfl

theorem node13229_cond_eq
    (child13225 : Flapjack.WordAlloc.removeDeadStructural input13225 value6617 value1 value2 = (output13225, value6618, value1))
    (child13228 : Flapjack.WordAlloc.removeDeadStructural input13228 value6618 value1 value2 = (output13228, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13229 value6617 value1 value2 = (output13229, value5, value1) := by
  rw [input13229_def, output13229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13225]
  dsimp only
  rw [child13228]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13225_skip, output13228_skip]
  kernel_rfl

theorem node13230_cond_eq
    (child13224 : Flapjack.WordAlloc.removeDeadStructural input13224 value6616 value1 value2 = (output13224, value6617, value1))
    (child13229 : Flapjack.WordAlloc.removeDeadStructural input13229 value6617 value1 value2 = (output13229, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13230 value6616 value1 value2 = (output13230, value5, value1) := by
  rw [input13230_def, output13230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13224]
  dsimp only
  rw [child13229]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13224_skip, output13229_skip]
  kernel_rfl

theorem node13231_cond_eq
    (child13223 : Flapjack.WordAlloc.removeDeadStructural input13223 value6615 value1 value2 = (output13223, value6616, value1))
    (child13230 : Flapjack.WordAlloc.removeDeadStructural input13230 value6616 value1 value2 = (output13230, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13231 value6615 value1 value2 = (output13231, value5, value1) := by
  rw [input13231_def, output13231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13223]
  dsimp only
  rw [child13230]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13223_skip, output13230_skip]
  kernel_rfl

theorem node13232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13232 value5 value1 value2 = (output13232, value6620, value1) := by
  rw [input13232_def, output13232_def]
  kernel_rfl

theorem node13233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13233 value6620 value1 value2 = (output13233, value6621, value1) := by
  rw [input13233_def, output13233_def]
  kernel_rfl

theorem node13234_cond_eq
    (child13232 : Flapjack.WordAlloc.removeDeadStructural input13232 value5 value1 value2 = (output13232, value6620, value1))
    (child13233 : Flapjack.WordAlloc.removeDeadStructural input13233 value6620 value1 value2 = (output13233, value6621, value1)) : Flapjack.WordAlloc.removeDeadStructural input13234 value5 value1 value2 = (output13234, value6621, value1) := by
  rw [input13234_def, output13234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13232]
  dsimp only
  rw [child13233]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13232_skip, output13233_skip]
  kernel_rfl

theorem node13235_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13235 value6621 value1 value2 = (output13235, value6622, value1) := by
  rw [input13235_def, output13235_def]
  kernel_rfl

theorem node13236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13236 value6622 value1 value2 = (output13236, value6622, value1) := by
  rw [input13236_def, output13236_def]
  kernel_rfl

theorem node13237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13237 value6622 value1 value2 = (output13237, value6623, value1) := by
  rw [input13237_def, output13237_def]
  kernel_rfl

theorem node13238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13238 value6623 value1 value2 = (output13238, value6624, value1) := by
  rw [input13238_def, output13238_def]
  kernel_rfl

theorem node13239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13239 value6624 value1 value2 = (output13239, value6625, value1) := by
  rw [input13239_def, output13239_def]
  kernel_rfl

theorem node13240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13240 value6625 value1 value2 = (output13240, value6626, value1) := by
  rw [input13240_def, output13240_def]
  kernel_rfl

theorem node13241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13241 value6626 value1 value2 = (output13241, value5, value1) := by
  rw [input13241_def, output13241_def]
  kernel_rfl

theorem node13242_cond_eq
    (child13240 : Flapjack.WordAlloc.removeDeadStructural input13240 value6625 value1 value2 = (output13240, value6626, value1))
    (child13241 : Flapjack.WordAlloc.removeDeadStructural input13241 value6626 value1 value2 = (output13241, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13242 value6625 value1 value2 = (output13242, value5, value1) := by
  rw [input13242_def, output13242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13240]
  dsimp only
  rw [child13241]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13240_skip, output13241_skip]
  kernel_rfl

theorem node13243_cond_eq
    (child13239 : Flapjack.WordAlloc.removeDeadStructural input13239 value6624 value1 value2 = (output13239, value6625, value1))
    (child13242 : Flapjack.WordAlloc.removeDeadStructural input13242 value6625 value1 value2 = (output13242, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13243 value6624 value1 value2 = (output13243, value5, value1) := by
  rw [input13243_def, output13243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13239]
  dsimp only
  rw [child13242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13239_skip, output13242_skip]
  kernel_rfl

theorem node13244_cond_eq
    (child13238 : Flapjack.WordAlloc.removeDeadStructural input13238 value6623 value1 value2 = (output13238, value6624, value1))
    (child13243 : Flapjack.WordAlloc.removeDeadStructural input13243 value6624 value1 value2 = (output13243, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13244 value6623 value1 value2 = (output13244, value5, value1) := by
  rw [input13244_def, output13244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13238]
  dsimp only
  rw [child13243]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13238_skip, output13243_skip]
  kernel_rfl

theorem node13245_cond_eq
    (child13237 : Flapjack.WordAlloc.removeDeadStructural input13237 value6622 value1 value2 = (output13237, value6623, value1))
    (child13244 : Flapjack.WordAlloc.removeDeadStructural input13244 value6623 value1 value2 = (output13244, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13245 value6622 value1 value2 = (output13245, value5, value1) := by
  rw [input13245_def, output13245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13237]
  dsimp only
  rw [child13244]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13237_skip, output13244_skip]
  kernel_rfl

theorem node13246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13246 value5 value1 value2 = (output13246, value6627, value1) := by
  rw [input13246_def, output13246_def]
  kernel_rfl

theorem node13247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13247 value6627 value1 value2 = (output13247, value6628, value1) := by
  rw [input13247_def, output13247_def]
  kernel_rfl

theorem node13248_cond_eq
    (child13246 : Flapjack.WordAlloc.removeDeadStructural input13246 value5 value1 value2 = (output13246, value6627, value1))
    (child13247 : Flapjack.WordAlloc.removeDeadStructural input13247 value6627 value1 value2 = (output13247, value6628, value1)) : Flapjack.WordAlloc.removeDeadStructural input13248 value5 value1 value2 = (output13248, value6628, value1) := by
  rw [input13248_def, output13248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13246]
  dsimp only
  rw [child13247]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13246_skip, output13247_skip]
  kernel_rfl

theorem node13249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13249 value6628 value1 value2 = (output13249, value6629, value1) := by
  rw [input13249_def, output13249_def]
  kernel_rfl

theorem node13250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13250 value6629 value1 value2 = (output13250, value6629, value1) := by
  rw [input13250_def, output13250_def]
  kernel_rfl

theorem node13251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13251 value6629 value1 value2 = (output13251, value6630, value1) := by
  rw [input13251_def, output13251_def]
  kernel_rfl

theorem node13252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13252 value6630 value1 value2 = (output13252, value6631, value1) := by
  rw [input13252_def, output13252_def]
  kernel_rfl

theorem node13253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13253 value6631 value1 value2 = (output13253, value6632, value1) := by
  rw [input13253_def, output13253_def]
  kernel_rfl

theorem node13254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13254 value6632 value1 value2 = (output13254, value6633, value1) := by
  rw [input13254_def, output13254_def]
  kernel_rfl

theorem node13255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13255 value6633 value1 value2 = (output13255, value5, value1) := by
  rw [input13255_def, output13255_def]
  kernel_rfl

theorem node13256_cond_eq
    (child13254 : Flapjack.WordAlloc.removeDeadStructural input13254 value6632 value1 value2 = (output13254, value6633, value1))
    (child13255 : Flapjack.WordAlloc.removeDeadStructural input13255 value6633 value1 value2 = (output13255, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13256 value6632 value1 value2 = (output13256, value5, value1) := by
  rw [input13256_def, output13256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13254]
  dsimp only
  rw [child13255]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13254_skip, output13255_skip]
  kernel_rfl

theorem node13257_cond_eq
    (child13253 : Flapjack.WordAlloc.removeDeadStructural input13253 value6631 value1 value2 = (output13253, value6632, value1))
    (child13256 : Flapjack.WordAlloc.removeDeadStructural input13256 value6632 value1 value2 = (output13256, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13257 value6631 value1 value2 = (output13257, value5, value1) := by
  rw [input13257_def, output13257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13253]
  dsimp only
  rw [child13256]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13253_skip, output13256_skip]
  kernel_rfl

theorem node13258_cond_eq
    (child13252 : Flapjack.WordAlloc.removeDeadStructural input13252 value6630 value1 value2 = (output13252, value6631, value1))
    (child13257 : Flapjack.WordAlloc.removeDeadStructural input13257 value6631 value1 value2 = (output13257, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13258 value6630 value1 value2 = (output13258, value5, value1) := by
  rw [input13258_def, output13258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13252]
  dsimp only
  rw [child13257]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13252_skip, output13257_skip]
  kernel_rfl

theorem node13259_cond_eq
    (child13251 : Flapjack.WordAlloc.removeDeadStructural input13251 value6629 value1 value2 = (output13251, value6630, value1))
    (child13258 : Flapjack.WordAlloc.removeDeadStructural input13258 value6630 value1 value2 = (output13258, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13259 value6629 value1 value2 = (output13259, value5, value1) := by
  rw [input13259_def, output13259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13251]
  dsimp only
  rw [child13258]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13251_skip, output13258_skip]
  kernel_rfl

theorem node13260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13260 value5 value1 value2 = (output13260, value6634, value1) := by
  rw [input13260_def, output13260_def]
  kernel_rfl

theorem node13261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13261 value6634 value1 value2 = (output13261, value6635, value1) := by
  rw [input13261_def, output13261_def]
  kernel_rfl

theorem node13262_cond_eq
    (child13260 : Flapjack.WordAlloc.removeDeadStructural input13260 value5 value1 value2 = (output13260, value6634, value1))
    (child13261 : Flapjack.WordAlloc.removeDeadStructural input13261 value6634 value1 value2 = (output13261, value6635, value1)) : Flapjack.WordAlloc.removeDeadStructural input13262 value5 value1 value2 = (output13262, value6635, value1) := by
  rw [input13262_def, output13262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13260]
  dsimp only
  rw [child13261]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13260_skip, output13261_skip]
  kernel_rfl

theorem node13263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13263 value6635 value1 value2 = (output13263, value6636, value1) := by
  rw [input13263_def, output13263_def]
  kernel_rfl

theorem node13264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13264 value6636 value1 value2 = (output13264, value6636, value1) := by
  rw [input13264_def, output13264_def]
  kernel_rfl

theorem node13265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13265 value6636 value1 value2 = (output13265, value6637, value1) := by
  rw [input13265_def, output13265_def]
  kernel_rfl

theorem node13266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13266 value6637 value1 value2 = (output13266, value6638, value1) := by
  rw [input13266_def, output13266_def]
  kernel_rfl

theorem node13267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13267 value6638 value1 value2 = (output13267, value6639, value1) := by
  rw [input13267_def, output13267_def]
  kernel_rfl

theorem node13268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13268 value6639 value1 value2 = (output13268, value6640, value1) := by
  rw [input13268_def, output13268_def]
  kernel_rfl

theorem node13269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13269 value6640 value1 value2 = (output13269, value5, value1) := by
  rw [input13269_def, output13269_def]
  kernel_rfl

theorem node13270_cond_eq
    (child13268 : Flapjack.WordAlloc.removeDeadStructural input13268 value6639 value1 value2 = (output13268, value6640, value1))
    (child13269 : Flapjack.WordAlloc.removeDeadStructural input13269 value6640 value1 value2 = (output13269, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13270 value6639 value1 value2 = (output13270, value5, value1) := by
  rw [input13270_def, output13270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13268]
  dsimp only
  rw [child13269]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13268_skip, output13269_skip]
  kernel_rfl

theorem node13271_cond_eq
    (child13267 : Flapjack.WordAlloc.removeDeadStructural input13267 value6638 value1 value2 = (output13267, value6639, value1))
    (child13270 : Flapjack.WordAlloc.removeDeadStructural input13270 value6639 value1 value2 = (output13270, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13271 value6638 value1 value2 = (output13271, value5, value1) := by
  rw [input13271_def, output13271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13267]
  dsimp only
  rw [child13270]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13267_skip, output13270_skip]
  kernel_rfl

theorem node13272_cond_eq
    (child13266 : Flapjack.WordAlloc.removeDeadStructural input13266 value6637 value1 value2 = (output13266, value6638, value1))
    (child13271 : Flapjack.WordAlloc.removeDeadStructural input13271 value6638 value1 value2 = (output13271, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13272 value6637 value1 value2 = (output13272, value5, value1) := by
  rw [input13272_def, output13272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13266]
  dsimp only
  rw [child13271]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13266_skip, output13271_skip]
  kernel_rfl

theorem node13273_cond_eq
    (child13265 : Flapjack.WordAlloc.removeDeadStructural input13265 value6636 value1 value2 = (output13265, value6637, value1))
    (child13272 : Flapjack.WordAlloc.removeDeadStructural input13272 value6637 value1 value2 = (output13272, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13273 value6636 value1 value2 = (output13273, value5, value1) := by
  rw [input13273_def, output13273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13265]
  dsimp only
  rw [child13272]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13265_skip, output13272_skip]
  kernel_rfl

theorem node13274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13274 value5 value1 value2 = (output13274, value6641, value1) := by
  rw [input13274_def, output13274_def]
  kernel_rfl

theorem node13275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13275 value6641 value1 value2 = (output13275, value6642, value1) := by
  rw [input13275_def, output13275_def]
  kernel_rfl

theorem node13276_cond_eq
    (child13274 : Flapjack.WordAlloc.removeDeadStructural input13274 value5 value1 value2 = (output13274, value6641, value1))
    (child13275 : Flapjack.WordAlloc.removeDeadStructural input13275 value6641 value1 value2 = (output13275, value6642, value1)) : Flapjack.WordAlloc.removeDeadStructural input13276 value5 value1 value2 = (output13276, value6642, value1) := by
  rw [input13276_def, output13276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13274]
  dsimp only
  rw [child13275]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13274_skip, output13275_skip]
  kernel_rfl

theorem node13277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13277 value6642 value1 value2 = (output13277, value6643, value1) := by
  rw [input13277_def, output13277_def]
  kernel_rfl

theorem node13278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13278 value6643 value1 value2 = (output13278, value6643, value1) := by
  rw [input13278_def, output13278_def]
  kernel_rfl

theorem node13279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13279 value6643 value1 value2 = (output13279, value6644, value1) := by
  rw [input13279_def, output13279_def]
  kernel_rfl

theorem node13280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13280 value6644 value1 value2 = (output13280, value6645, value1) := by
  rw [input13280_def, output13280_def]
  kernel_rfl

theorem node13281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13281 value6645 value1 value2 = (output13281, value6646, value1) := by
  rw [input13281_def, output13281_def]
  kernel_rfl

theorem node13282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13282 value6646 value1 value2 = (output13282, value6647, value1) := by
  rw [input13282_def, output13282_def]
  kernel_rfl

theorem node13283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13283 value6647 value1 value2 = (output13283, value5, value1) := by
  rw [input13283_def, output13283_def]
  kernel_rfl

theorem node13284_cond_eq
    (child13282 : Flapjack.WordAlloc.removeDeadStructural input13282 value6646 value1 value2 = (output13282, value6647, value1))
    (child13283 : Flapjack.WordAlloc.removeDeadStructural input13283 value6647 value1 value2 = (output13283, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13284 value6646 value1 value2 = (output13284, value5, value1) := by
  rw [input13284_def, output13284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13282]
  dsimp only
  rw [child13283]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13282_skip, output13283_skip]
  kernel_rfl

theorem node13285_cond_eq
    (child13281 : Flapjack.WordAlloc.removeDeadStructural input13281 value6645 value1 value2 = (output13281, value6646, value1))
    (child13284 : Flapjack.WordAlloc.removeDeadStructural input13284 value6646 value1 value2 = (output13284, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13285 value6645 value1 value2 = (output13285, value5, value1) := by
  rw [input13285_def, output13285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13281]
  dsimp only
  rw [child13284]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13281_skip, output13284_skip]
  kernel_rfl

theorem node13286_cond_eq
    (child13280 : Flapjack.WordAlloc.removeDeadStructural input13280 value6644 value1 value2 = (output13280, value6645, value1))
    (child13285 : Flapjack.WordAlloc.removeDeadStructural input13285 value6645 value1 value2 = (output13285, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13286 value6644 value1 value2 = (output13286, value5, value1) := by
  rw [input13286_def, output13286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13280]
  dsimp only
  rw [child13285]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13280_skip, output13285_skip]
  kernel_rfl

theorem node13287_cond_eq
    (child13279 : Flapjack.WordAlloc.removeDeadStructural input13279 value6643 value1 value2 = (output13279, value6644, value1))
    (child13286 : Flapjack.WordAlloc.removeDeadStructural input13286 value6644 value1 value2 = (output13286, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13287 value6643 value1 value2 = (output13287, value5, value1) := by
  rw [input13287_def, output13287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13279]
  dsimp only
  rw [child13286]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13279_skip, output13286_skip]
  kernel_rfl

theorem node13288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13288 value5 value1 value2 = (output13288, value6648, value1) := by
  rw [input13288_def, output13288_def]
  kernel_rfl

theorem node13289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13289 value6648 value1 value2 = (output13289, value6649, value1) := by
  rw [input13289_def, output13289_def]
  kernel_rfl

theorem node13290_cond_eq
    (child13288 : Flapjack.WordAlloc.removeDeadStructural input13288 value5 value1 value2 = (output13288, value6648, value1))
    (child13289 : Flapjack.WordAlloc.removeDeadStructural input13289 value6648 value1 value2 = (output13289, value6649, value1)) : Flapjack.WordAlloc.removeDeadStructural input13290 value5 value1 value2 = (output13290, value6649, value1) := by
  rw [input13290_def, output13290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13288]
  dsimp only
  rw [child13289]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13288_skip, output13289_skip]
  kernel_rfl

theorem node13291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13291 value6649 value1 value2 = (output13291, value6650, value1) := by
  rw [input13291_def, output13291_def]
  kernel_rfl

theorem node13292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13292 value6650 value1 value2 = (output13292, value6650, value1) := by
  rw [input13292_def, output13292_def]
  kernel_rfl

theorem node13293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13293 value6650 value1 value2 = (output13293, value6651, value1) := by
  rw [input13293_def, output13293_def]
  kernel_rfl

theorem node13294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13294 value6651 value1 value2 = (output13294, value6652, value1) := by
  rw [input13294_def, output13294_def]
  kernel_rfl

theorem node13295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13295 value6652 value1 value2 = (output13295, value6653, value1) := by
  rw [input13295_def, output13295_def]
  kernel_rfl

theorem node13296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13296 value6653 value1 value2 = (output13296, value6654, value1) := by
  rw [input13296_def, output13296_def]
  kernel_rfl

theorem node13297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13297 value6654 value1 value2 = (output13297, value5, value1) := by
  rw [input13297_def, output13297_def]
  kernel_rfl

theorem node13298_cond_eq
    (child13296 : Flapjack.WordAlloc.removeDeadStructural input13296 value6653 value1 value2 = (output13296, value6654, value1))
    (child13297 : Flapjack.WordAlloc.removeDeadStructural input13297 value6654 value1 value2 = (output13297, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13298 value6653 value1 value2 = (output13298, value5, value1) := by
  rw [input13298_def, output13298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13296]
  dsimp only
  rw [child13297]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13296_skip, output13297_skip]
  kernel_rfl

theorem node13299_cond_eq
    (child13295 : Flapjack.WordAlloc.removeDeadStructural input13295 value6652 value1 value2 = (output13295, value6653, value1))
    (child13298 : Flapjack.WordAlloc.removeDeadStructural input13298 value6653 value1 value2 = (output13298, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13299 value6652 value1 value2 = (output13299, value5, value1) := by
  rw [input13299_def, output13299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13295]
  dsimp only
  rw [child13298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13295_skip, output13298_skip]
  kernel_rfl

theorem node13300_cond_eq
    (child13294 : Flapjack.WordAlloc.removeDeadStructural input13294 value6651 value1 value2 = (output13294, value6652, value1))
    (child13299 : Flapjack.WordAlloc.removeDeadStructural input13299 value6652 value1 value2 = (output13299, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13300 value6651 value1 value2 = (output13300, value5, value1) := by
  rw [input13300_def, output13300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13294]
  dsimp only
  rw [child13299]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13294_skip, output13299_skip]
  kernel_rfl

theorem node13301_cond_eq
    (child13293 : Flapjack.WordAlloc.removeDeadStructural input13293 value6650 value1 value2 = (output13293, value6651, value1))
    (child13300 : Flapjack.WordAlloc.removeDeadStructural input13300 value6651 value1 value2 = (output13300, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13301 value6650 value1 value2 = (output13301, value5, value1) := by
  rw [input13301_def, output13301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13293]
  dsimp only
  rw [child13300]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13293_skip, output13300_skip]
  kernel_rfl

theorem node13302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13302 value5 value1 value2 = (output13302, value6655, value1) := by
  rw [input13302_def, output13302_def]
  kernel_rfl

theorem node13303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13303 value6655 value1 value2 = (output13303, value6656, value1) := by
  rw [input13303_def, output13303_def]
  kernel_rfl

theorem node13304_cond_eq
    (child13302 : Flapjack.WordAlloc.removeDeadStructural input13302 value5 value1 value2 = (output13302, value6655, value1))
    (child13303 : Flapjack.WordAlloc.removeDeadStructural input13303 value6655 value1 value2 = (output13303, value6656, value1)) : Flapjack.WordAlloc.removeDeadStructural input13304 value5 value1 value2 = (output13304, value6656, value1) := by
  rw [input13304_def, output13304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13302]
  dsimp only
  rw [child13303]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13302_skip, output13303_skip]
  kernel_rfl

theorem node13305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13305 value6656 value1 value2 = (output13305, value6657, value1) := by
  rw [input13305_def, output13305_def]
  kernel_rfl

theorem node13306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13306 value6657 value1 value2 = (output13306, value6657, value1) := by
  rw [input13306_def, output13306_def]
  kernel_rfl

theorem node13307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13307 value6657 value1 value2 = (output13307, value6658, value1) := by
  rw [input13307_def, output13307_def]
  kernel_rfl

theorem node13308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13308 value6658 value1 value2 = (output13308, value6659, value1) := by
  rw [input13308_def, output13308_def]
  kernel_rfl

theorem node13309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13309 value6659 value1 value2 = (output13309, value6660, value1) := by
  rw [input13309_def, output13309_def]
  kernel_rfl

theorem node13310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13310 value6660 value1 value2 = (output13310, value6661, value1) := by
  rw [input13310_def, output13310_def]
  kernel_rfl

theorem node13311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13311 value6661 value1 value2 = (output13311, value5, value1) := by
  rw [input13311_def, output13311_def]
  kernel_rfl

#print axioms node13311_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
