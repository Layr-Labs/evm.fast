import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk047
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node12032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12032 value6020 value1 value2 = (output12032, value6020, value1) := by
  rw [input12032_def, output12032_def]
  kernel_rfl

theorem node12033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12033 value6020 value1 value2 = (output12033, value6021, value1) := by
  rw [input12033_def, output12033_def]
  kernel_rfl

theorem node12034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12034 value6021 value1 value2 = (output12034, value6022, value1) := by
  rw [input12034_def, output12034_def]
  kernel_rfl

theorem node12035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12035 value6022 value1 value2 = (output12035, value6023, value1) := by
  rw [input12035_def, output12035_def]
  kernel_rfl

theorem node12036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12036 value6023 value1 value2 = (output12036, value6024, value1) := by
  rw [input12036_def, output12036_def]
  kernel_rfl

theorem node12037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12037 value6024 value1 value2 = (output12037, value5, value1) := by
  rw [input12037_def, output12037_def]
  kernel_rfl

theorem node12038_cond_eq
    (child12036 : Flapjack.WordAlloc.removeDeadStructural input12036 value6023 value1 value2 = (output12036, value6024, value1))
    (child12037 : Flapjack.WordAlloc.removeDeadStructural input12037 value6024 value1 value2 = (output12037, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12038 value6023 value1 value2 = (output12038, value5, value1) := by
  rw [input12038_def, output12038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12036]
  dsimp only
  rw [child12037]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12036_skip, output12037_skip]
  kernel_rfl

theorem node12039_cond_eq
    (child12035 : Flapjack.WordAlloc.removeDeadStructural input12035 value6022 value1 value2 = (output12035, value6023, value1))
    (child12038 : Flapjack.WordAlloc.removeDeadStructural input12038 value6023 value1 value2 = (output12038, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12039 value6022 value1 value2 = (output12039, value5, value1) := by
  rw [input12039_def, output12039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12035]
  dsimp only
  rw [child12038]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12035_skip, output12038_skip]
  kernel_rfl

theorem node12040_cond_eq
    (child12034 : Flapjack.WordAlloc.removeDeadStructural input12034 value6021 value1 value2 = (output12034, value6022, value1))
    (child12039 : Flapjack.WordAlloc.removeDeadStructural input12039 value6022 value1 value2 = (output12039, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12040 value6021 value1 value2 = (output12040, value5, value1) := by
  rw [input12040_def, output12040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12034]
  dsimp only
  rw [child12039]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12034_skip, output12039_skip]
  kernel_rfl

theorem node12041_cond_eq
    (child12033 : Flapjack.WordAlloc.removeDeadStructural input12033 value6020 value1 value2 = (output12033, value6021, value1))
    (child12040 : Flapjack.WordAlloc.removeDeadStructural input12040 value6021 value1 value2 = (output12040, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12041 value6020 value1 value2 = (output12041, value5, value1) := by
  rw [input12041_def, output12041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12033]
  dsimp only
  rw [child12040]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12033_skip, output12040_skip]
  kernel_rfl

theorem node12042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12042 value5 value1 value2 = (output12042, value6025, value1) := by
  rw [input12042_def, output12042_def]
  kernel_rfl

theorem node12043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12043 value6025 value1 value2 = (output12043, value6026, value1) := by
  rw [input12043_def, output12043_def]
  kernel_rfl

theorem node12044_cond_eq
    (child12042 : Flapjack.WordAlloc.removeDeadStructural input12042 value5 value1 value2 = (output12042, value6025, value1))
    (child12043 : Flapjack.WordAlloc.removeDeadStructural input12043 value6025 value1 value2 = (output12043, value6026, value1)) : Flapjack.WordAlloc.removeDeadStructural input12044 value5 value1 value2 = (output12044, value6026, value1) := by
  rw [input12044_def, output12044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12042]
  dsimp only
  rw [child12043]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12042_skip, output12043_skip]
  kernel_rfl

theorem node12045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12045 value6026 value1 value2 = (output12045, value6027, value1) := by
  rw [input12045_def, output12045_def]
  kernel_rfl

theorem node12046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12046 value6027 value1 value2 = (output12046, value6027, value1) := by
  rw [input12046_def, output12046_def]
  kernel_rfl

theorem node12047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12047 value6027 value1 value2 = (output12047, value6028, value1) := by
  rw [input12047_def, output12047_def]
  kernel_rfl

theorem node12048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12048 value6028 value1 value2 = (output12048, value6029, value1) := by
  rw [input12048_def, output12048_def]
  kernel_rfl

theorem node12049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12049 value6029 value1 value2 = (output12049, value6030, value1) := by
  rw [input12049_def, output12049_def]
  kernel_rfl

theorem node12050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12050 value6030 value1 value2 = (output12050, value6031, value1) := by
  rw [input12050_def, output12050_def]
  kernel_rfl

theorem node12051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12051 value6031 value1 value2 = (output12051, value5, value1) := by
  rw [input12051_def, output12051_def]
  kernel_rfl

theorem node12052_cond_eq
    (child12050 : Flapjack.WordAlloc.removeDeadStructural input12050 value6030 value1 value2 = (output12050, value6031, value1))
    (child12051 : Flapjack.WordAlloc.removeDeadStructural input12051 value6031 value1 value2 = (output12051, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12052 value6030 value1 value2 = (output12052, value5, value1) := by
  rw [input12052_def, output12052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12050]
  dsimp only
  rw [child12051]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12050_skip, output12051_skip]
  kernel_rfl

theorem node12053_cond_eq
    (child12049 : Flapjack.WordAlloc.removeDeadStructural input12049 value6029 value1 value2 = (output12049, value6030, value1))
    (child12052 : Flapjack.WordAlloc.removeDeadStructural input12052 value6030 value1 value2 = (output12052, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12053 value6029 value1 value2 = (output12053, value5, value1) := by
  rw [input12053_def, output12053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12049]
  dsimp only
  rw [child12052]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12049_skip, output12052_skip]
  kernel_rfl

theorem node12054_cond_eq
    (child12048 : Flapjack.WordAlloc.removeDeadStructural input12048 value6028 value1 value2 = (output12048, value6029, value1))
    (child12053 : Flapjack.WordAlloc.removeDeadStructural input12053 value6029 value1 value2 = (output12053, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12054 value6028 value1 value2 = (output12054, value5, value1) := by
  rw [input12054_def, output12054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12048]
  dsimp only
  rw [child12053]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12048_skip, output12053_skip]
  kernel_rfl

theorem node12055_cond_eq
    (child12047 : Flapjack.WordAlloc.removeDeadStructural input12047 value6027 value1 value2 = (output12047, value6028, value1))
    (child12054 : Flapjack.WordAlloc.removeDeadStructural input12054 value6028 value1 value2 = (output12054, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12055 value6027 value1 value2 = (output12055, value5, value1) := by
  rw [input12055_def, output12055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12047]
  dsimp only
  rw [child12054]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12047_skip, output12054_skip]
  kernel_rfl

theorem node12056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12056 value5 value1 value2 = (output12056, value6032, value1) := by
  rw [input12056_def, output12056_def]
  kernel_rfl

theorem node12057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12057 value6032 value1 value2 = (output12057, value6033, value1) := by
  rw [input12057_def, output12057_def]
  kernel_rfl

theorem node12058_cond_eq
    (child12056 : Flapjack.WordAlloc.removeDeadStructural input12056 value5 value1 value2 = (output12056, value6032, value1))
    (child12057 : Flapjack.WordAlloc.removeDeadStructural input12057 value6032 value1 value2 = (output12057, value6033, value1)) : Flapjack.WordAlloc.removeDeadStructural input12058 value5 value1 value2 = (output12058, value6033, value1) := by
  rw [input12058_def, output12058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12056]
  dsimp only
  rw [child12057]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12056_skip, output12057_skip]
  kernel_rfl

theorem node12059_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12059 value6033 value1 value2 = (output12059, value6034, value1) := by
  rw [input12059_def, output12059_def]
  kernel_rfl

theorem node12060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12060 value6034 value1 value2 = (output12060, value6034, value1) := by
  rw [input12060_def, output12060_def]
  kernel_rfl

theorem node12061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12061 value6034 value1 value2 = (output12061, value6035, value1) := by
  rw [input12061_def, output12061_def]
  kernel_rfl

theorem node12062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12062 value6035 value1 value2 = (output12062, value6036, value1) := by
  rw [input12062_def, output12062_def]
  kernel_rfl

theorem node12063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12063 value6036 value1 value2 = (output12063, value6037, value1) := by
  rw [input12063_def, output12063_def]
  kernel_rfl

theorem node12064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12064 value6037 value1 value2 = (output12064, value6038, value1) := by
  rw [input12064_def, output12064_def]
  kernel_rfl

theorem node12065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12065 value6038 value1 value2 = (output12065, value5, value1) := by
  rw [input12065_def, output12065_def]
  kernel_rfl

theorem node12066_cond_eq
    (child12064 : Flapjack.WordAlloc.removeDeadStructural input12064 value6037 value1 value2 = (output12064, value6038, value1))
    (child12065 : Flapjack.WordAlloc.removeDeadStructural input12065 value6038 value1 value2 = (output12065, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12066 value6037 value1 value2 = (output12066, value5, value1) := by
  rw [input12066_def, output12066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12064]
  dsimp only
  rw [child12065]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12064_skip, output12065_skip]
  kernel_rfl

theorem node12067_cond_eq
    (child12063 : Flapjack.WordAlloc.removeDeadStructural input12063 value6036 value1 value2 = (output12063, value6037, value1))
    (child12066 : Flapjack.WordAlloc.removeDeadStructural input12066 value6037 value1 value2 = (output12066, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12067 value6036 value1 value2 = (output12067, value5, value1) := by
  rw [input12067_def, output12067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12063]
  dsimp only
  rw [child12066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12063_skip, output12066_skip]
  kernel_rfl

theorem node12068_cond_eq
    (child12062 : Flapjack.WordAlloc.removeDeadStructural input12062 value6035 value1 value2 = (output12062, value6036, value1))
    (child12067 : Flapjack.WordAlloc.removeDeadStructural input12067 value6036 value1 value2 = (output12067, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12068 value6035 value1 value2 = (output12068, value5, value1) := by
  rw [input12068_def, output12068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12062]
  dsimp only
  rw [child12067]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12062_skip, output12067_skip]
  kernel_rfl

theorem node12069_cond_eq
    (child12061 : Flapjack.WordAlloc.removeDeadStructural input12061 value6034 value1 value2 = (output12061, value6035, value1))
    (child12068 : Flapjack.WordAlloc.removeDeadStructural input12068 value6035 value1 value2 = (output12068, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12069 value6034 value1 value2 = (output12069, value5, value1) := by
  rw [input12069_def, output12069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12061]
  dsimp only
  rw [child12068]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12061_skip, output12068_skip]
  kernel_rfl

theorem node12070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12070 value5 value1 value2 = (output12070, value6039, value1) := by
  rw [input12070_def, output12070_def]
  kernel_rfl

theorem node12071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12071 value6039 value1 value2 = (output12071, value6040, value1) := by
  rw [input12071_def, output12071_def]
  kernel_rfl

theorem node12072_cond_eq
    (child12070 : Flapjack.WordAlloc.removeDeadStructural input12070 value5 value1 value2 = (output12070, value6039, value1))
    (child12071 : Flapjack.WordAlloc.removeDeadStructural input12071 value6039 value1 value2 = (output12071, value6040, value1)) : Flapjack.WordAlloc.removeDeadStructural input12072 value5 value1 value2 = (output12072, value6040, value1) := by
  rw [input12072_def, output12072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12070]
  dsimp only
  rw [child12071]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12070_skip, output12071_skip]
  kernel_rfl

theorem node12073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12073 value6040 value1 value2 = (output12073, value6041, value1) := by
  rw [input12073_def, output12073_def]
  kernel_rfl

theorem node12074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12074 value6041 value1 value2 = (output12074, value6041, value1) := by
  rw [input12074_def, output12074_def]
  kernel_rfl

theorem node12075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12075 value6041 value1 value2 = (output12075, value6042, value1) := by
  rw [input12075_def, output12075_def]
  kernel_rfl

theorem node12076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12076 value6042 value1 value2 = (output12076, value6043, value1) := by
  rw [input12076_def, output12076_def]
  kernel_rfl

theorem node12077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12077 value6043 value1 value2 = (output12077, value6044, value1) := by
  rw [input12077_def, output12077_def]
  kernel_rfl

theorem node12078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12078 value6044 value1 value2 = (output12078, value6045, value1) := by
  rw [input12078_def, output12078_def]
  kernel_rfl

theorem node12079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12079 value6045 value1 value2 = (output12079, value5, value1) := by
  rw [input12079_def, output12079_def]
  kernel_rfl

theorem node12080_cond_eq
    (child12078 : Flapjack.WordAlloc.removeDeadStructural input12078 value6044 value1 value2 = (output12078, value6045, value1))
    (child12079 : Flapjack.WordAlloc.removeDeadStructural input12079 value6045 value1 value2 = (output12079, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12080 value6044 value1 value2 = (output12080, value5, value1) := by
  rw [input12080_def, output12080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12078]
  dsimp only
  rw [child12079]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12078_skip, output12079_skip]
  kernel_rfl

theorem node12081_cond_eq
    (child12077 : Flapjack.WordAlloc.removeDeadStructural input12077 value6043 value1 value2 = (output12077, value6044, value1))
    (child12080 : Flapjack.WordAlloc.removeDeadStructural input12080 value6044 value1 value2 = (output12080, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12081 value6043 value1 value2 = (output12081, value5, value1) := by
  rw [input12081_def, output12081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12077]
  dsimp only
  rw [child12080]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12077_skip, output12080_skip]
  kernel_rfl

theorem node12082_cond_eq
    (child12076 : Flapjack.WordAlloc.removeDeadStructural input12076 value6042 value1 value2 = (output12076, value6043, value1))
    (child12081 : Flapjack.WordAlloc.removeDeadStructural input12081 value6043 value1 value2 = (output12081, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12082 value6042 value1 value2 = (output12082, value5, value1) := by
  rw [input12082_def, output12082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12076]
  dsimp only
  rw [child12081]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12076_skip, output12081_skip]
  kernel_rfl

theorem node12083_cond_eq
    (child12075 : Flapjack.WordAlloc.removeDeadStructural input12075 value6041 value1 value2 = (output12075, value6042, value1))
    (child12082 : Flapjack.WordAlloc.removeDeadStructural input12082 value6042 value1 value2 = (output12082, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12083 value6041 value1 value2 = (output12083, value5, value1) := by
  rw [input12083_def, output12083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12075]
  dsimp only
  rw [child12082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12075_skip, output12082_skip]
  kernel_rfl

theorem node12084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12084 value5 value1 value2 = (output12084, value6046, value1) := by
  rw [input12084_def, output12084_def]
  kernel_rfl

theorem node12085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12085 value6046 value1 value2 = (output12085, value6047, value1) := by
  rw [input12085_def, output12085_def]
  kernel_rfl

theorem node12086_cond_eq
    (child12084 : Flapjack.WordAlloc.removeDeadStructural input12084 value5 value1 value2 = (output12084, value6046, value1))
    (child12085 : Flapjack.WordAlloc.removeDeadStructural input12085 value6046 value1 value2 = (output12085, value6047, value1)) : Flapjack.WordAlloc.removeDeadStructural input12086 value5 value1 value2 = (output12086, value6047, value1) := by
  rw [input12086_def, output12086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12084]
  dsimp only
  rw [child12085]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12084_skip, output12085_skip]
  kernel_rfl

theorem node12087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12087 value6047 value1 value2 = (output12087, value6048, value1) := by
  rw [input12087_def, output12087_def]
  kernel_rfl

theorem node12088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12088 value6048 value1 value2 = (output12088, value6048, value1) := by
  rw [input12088_def, output12088_def]
  kernel_rfl

theorem node12089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12089 value6048 value1 value2 = (output12089, value6049, value1) := by
  rw [input12089_def, output12089_def]
  kernel_rfl

theorem node12090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12090 value6049 value1 value2 = (output12090, value6050, value1) := by
  rw [input12090_def, output12090_def]
  kernel_rfl

theorem node12091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12091 value6050 value1 value2 = (output12091, value6051, value1) := by
  rw [input12091_def, output12091_def]
  kernel_rfl

theorem node12092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12092 value6051 value1 value2 = (output12092, value6052, value1) := by
  rw [input12092_def, output12092_def]
  kernel_rfl

theorem node12093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12093 value6052 value1 value2 = (output12093, value5, value1) := by
  rw [input12093_def, output12093_def]
  kernel_rfl

theorem node12094_cond_eq
    (child12092 : Flapjack.WordAlloc.removeDeadStructural input12092 value6051 value1 value2 = (output12092, value6052, value1))
    (child12093 : Flapjack.WordAlloc.removeDeadStructural input12093 value6052 value1 value2 = (output12093, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12094 value6051 value1 value2 = (output12094, value5, value1) := by
  rw [input12094_def, output12094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12092]
  dsimp only
  rw [child12093]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12092_skip, output12093_skip]
  kernel_rfl

theorem node12095_cond_eq
    (child12091 : Flapjack.WordAlloc.removeDeadStructural input12091 value6050 value1 value2 = (output12091, value6051, value1))
    (child12094 : Flapjack.WordAlloc.removeDeadStructural input12094 value6051 value1 value2 = (output12094, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12095 value6050 value1 value2 = (output12095, value5, value1) := by
  rw [input12095_def, output12095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12091]
  dsimp only
  rw [child12094]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12091_skip, output12094_skip]
  kernel_rfl

theorem node12096_cond_eq
    (child12090 : Flapjack.WordAlloc.removeDeadStructural input12090 value6049 value1 value2 = (output12090, value6050, value1))
    (child12095 : Flapjack.WordAlloc.removeDeadStructural input12095 value6050 value1 value2 = (output12095, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12096 value6049 value1 value2 = (output12096, value5, value1) := by
  rw [input12096_def, output12096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12090]
  dsimp only
  rw [child12095]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12090_skip, output12095_skip]
  kernel_rfl

theorem node12097_cond_eq
    (child12089 : Flapjack.WordAlloc.removeDeadStructural input12089 value6048 value1 value2 = (output12089, value6049, value1))
    (child12096 : Flapjack.WordAlloc.removeDeadStructural input12096 value6049 value1 value2 = (output12096, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12097 value6048 value1 value2 = (output12097, value5, value1) := by
  rw [input12097_def, output12097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12089]
  dsimp only
  rw [child12096]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12089_skip, output12096_skip]
  kernel_rfl

theorem node12098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12098 value5 value1 value2 = (output12098, value6053, value1) := by
  rw [input12098_def, output12098_def]
  kernel_rfl

theorem node12099_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12099 value6053 value1 value2 = (output12099, value6054, value1) := by
  rw [input12099_def, output12099_def]
  kernel_rfl

theorem node12100_cond_eq
    (child12098 : Flapjack.WordAlloc.removeDeadStructural input12098 value5 value1 value2 = (output12098, value6053, value1))
    (child12099 : Flapjack.WordAlloc.removeDeadStructural input12099 value6053 value1 value2 = (output12099, value6054, value1)) : Flapjack.WordAlloc.removeDeadStructural input12100 value5 value1 value2 = (output12100, value6054, value1) := by
  rw [input12100_def, output12100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12098]
  dsimp only
  rw [child12099]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12098_skip, output12099_skip]
  kernel_rfl

theorem node12101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12101 value6054 value1 value2 = (output12101, value6055, value1) := by
  rw [input12101_def, output12101_def]
  kernel_rfl

theorem node12102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12102 value6055 value1 value2 = (output12102, value6055, value1) := by
  rw [input12102_def, output12102_def]
  kernel_rfl

theorem node12103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12103 value6055 value1 value2 = (output12103, value6056, value1) := by
  rw [input12103_def, output12103_def]
  kernel_rfl

theorem node12104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12104 value6056 value1 value2 = (output12104, value6057, value1) := by
  rw [input12104_def, output12104_def]
  kernel_rfl

theorem node12105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12105 value6057 value1 value2 = (output12105, value6058, value1) := by
  rw [input12105_def, output12105_def]
  kernel_rfl

theorem node12106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12106 value6058 value1 value2 = (output12106, value6059, value1) := by
  rw [input12106_def, output12106_def]
  kernel_rfl

theorem node12107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12107 value6059 value1 value2 = (output12107, value5, value1) := by
  rw [input12107_def, output12107_def]
  kernel_rfl

theorem node12108_cond_eq
    (child12106 : Flapjack.WordAlloc.removeDeadStructural input12106 value6058 value1 value2 = (output12106, value6059, value1))
    (child12107 : Flapjack.WordAlloc.removeDeadStructural input12107 value6059 value1 value2 = (output12107, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12108 value6058 value1 value2 = (output12108, value5, value1) := by
  rw [input12108_def, output12108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12106]
  dsimp only
  rw [child12107]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12106_skip, output12107_skip]
  kernel_rfl

theorem node12109_cond_eq
    (child12105 : Flapjack.WordAlloc.removeDeadStructural input12105 value6057 value1 value2 = (output12105, value6058, value1))
    (child12108 : Flapjack.WordAlloc.removeDeadStructural input12108 value6058 value1 value2 = (output12108, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12109 value6057 value1 value2 = (output12109, value5, value1) := by
  rw [input12109_def, output12109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12105]
  dsimp only
  rw [child12108]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12105_skip, output12108_skip]
  kernel_rfl

theorem node12110_cond_eq
    (child12104 : Flapjack.WordAlloc.removeDeadStructural input12104 value6056 value1 value2 = (output12104, value6057, value1))
    (child12109 : Flapjack.WordAlloc.removeDeadStructural input12109 value6057 value1 value2 = (output12109, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12110 value6056 value1 value2 = (output12110, value5, value1) := by
  rw [input12110_def, output12110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12104]
  dsimp only
  rw [child12109]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12104_skip, output12109_skip]
  kernel_rfl

theorem node12111_cond_eq
    (child12103 : Flapjack.WordAlloc.removeDeadStructural input12103 value6055 value1 value2 = (output12103, value6056, value1))
    (child12110 : Flapjack.WordAlloc.removeDeadStructural input12110 value6056 value1 value2 = (output12110, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12111 value6055 value1 value2 = (output12111, value5, value1) := by
  rw [input12111_def, output12111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12103]
  dsimp only
  rw [child12110]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12103_skip, output12110_skip]
  kernel_rfl

theorem node12112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12112 value5 value1 value2 = (output12112, value6060, value1) := by
  rw [input12112_def, output12112_def]
  kernel_rfl

theorem node12113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12113 value6060 value1 value2 = (output12113, value6061, value1) := by
  rw [input12113_def, output12113_def]
  kernel_rfl

theorem node12114_cond_eq
    (child12112 : Flapjack.WordAlloc.removeDeadStructural input12112 value5 value1 value2 = (output12112, value6060, value1))
    (child12113 : Flapjack.WordAlloc.removeDeadStructural input12113 value6060 value1 value2 = (output12113, value6061, value1)) : Flapjack.WordAlloc.removeDeadStructural input12114 value5 value1 value2 = (output12114, value6061, value1) := by
  rw [input12114_def, output12114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12112]
  dsimp only
  rw [child12113]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12112_skip, output12113_skip]
  kernel_rfl

theorem node12115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12115 value6061 value1 value2 = (output12115, value6062, value1) := by
  rw [input12115_def, output12115_def]
  kernel_rfl

theorem node12116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12116 value6062 value1 value2 = (output12116, value6062, value1) := by
  rw [input12116_def, output12116_def]
  kernel_rfl

theorem node12117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12117 value6062 value1 value2 = (output12117, value6063, value1) := by
  rw [input12117_def, output12117_def]
  kernel_rfl

theorem node12118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12118 value6063 value1 value2 = (output12118, value6064, value1) := by
  rw [input12118_def, output12118_def]
  kernel_rfl

theorem node12119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12119 value6064 value1 value2 = (output12119, value6065, value1) := by
  rw [input12119_def, output12119_def]
  kernel_rfl

theorem node12120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12120 value6065 value1 value2 = (output12120, value6066, value1) := by
  rw [input12120_def, output12120_def]
  kernel_rfl

theorem node12121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12121 value6066 value1 value2 = (output12121, value5, value1) := by
  rw [input12121_def, output12121_def]
  kernel_rfl

theorem node12122_cond_eq
    (child12120 : Flapjack.WordAlloc.removeDeadStructural input12120 value6065 value1 value2 = (output12120, value6066, value1))
    (child12121 : Flapjack.WordAlloc.removeDeadStructural input12121 value6066 value1 value2 = (output12121, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12122 value6065 value1 value2 = (output12122, value5, value1) := by
  rw [input12122_def, output12122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12120]
  dsimp only
  rw [child12121]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12120_skip, output12121_skip]
  kernel_rfl

theorem node12123_cond_eq
    (child12119 : Flapjack.WordAlloc.removeDeadStructural input12119 value6064 value1 value2 = (output12119, value6065, value1))
    (child12122 : Flapjack.WordAlloc.removeDeadStructural input12122 value6065 value1 value2 = (output12122, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12123 value6064 value1 value2 = (output12123, value5, value1) := by
  rw [input12123_def, output12123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12119]
  dsimp only
  rw [child12122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12119_skip, output12122_skip]
  kernel_rfl

theorem node12124_cond_eq
    (child12118 : Flapjack.WordAlloc.removeDeadStructural input12118 value6063 value1 value2 = (output12118, value6064, value1))
    (child12123 : Flapjack.WordAlloc.removeDeadStructural input12123 value6064 value1 value2 = (output12123, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12124 value6063 value1 value2 = (output12124, value5, value1) := by
  rw [input12124_def, output12124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12118]
  dsimp only
  rw [child12123]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12118_skip, output12123_skip]
  kernel_rfl

theorem node12125_cond_eq
    (child12117 : Flapjack.WordAlloc.removeDeadStructural input12117 value6062 value1 value2 = (output12117, value6063, value1))
    (child12124 : Flapjack.WordAlloc.removeDeadStructural input12124 value6063 value1 value2 = (output12124, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12125 value6062 value1 value2 = (output12125, value5, value1) := by
  rw [input12125_def, output12125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12117]
  dsimp only
  rw [child12124]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12117_skip, output12124_skip]
  kernel_rfl

theorem node12126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12126 value5 value1 value2 = (output12126, value6067, value1) := by
  rw [input12126_def, output12126_def]
  kernel_rfl

theorem node12127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12127 value6067 value1 value2 = (output12127, value6068, value1) := by
  rw [input12127_def, output12127_def]
  kernel_rfl

theorem node12128_cond_eq
    (child12126 : Flapjack.WordAlloc.removeDeadStructural input12126 value5 value1 value2 = (output12126, value6067, value1))
    (child12127 : Flapjack.WordAlloc.removeDeadStructural input12127 value6067 value1 value2 = (output12127, value6068, value1)) : Flapjack.WordAlloc.removeDeadStructural input12128 value5 value1 value2 = (output12128, value6068, value1) := by
  rw [input12128_def, output12128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12126]
  dsimp only
  rw [child12127]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12126_skip, output12127_skip]
  kernel_rfl

theorem node12129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12129 value6068 value1 value2 = (output12129, value6069, value1) := by
  rw [input12129_def, output12129_def]
  kernel_rfl

theorem node12130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12130 value6069 value1 value2 = (output12130, value6069, value1) := by
  rw [input12130_def, output12130_def]
  kernel_rfl

theorem node12131_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12131 value6069 value1 value2 = (output12131, value6070, value1) := by
  rw [input12131_def, output12131_def]
  kernel_rfl

theorem node12132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12132 value6070 value1 value2 = (output12132, value6071, value1) := by
  rw [input12132_def, output12132_def]
  kernel_rfl

theorem node12133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12133 value6071 value1 value2 = (output12133, value6072, value1) := by
  rw [input12133_def, output12133_def]
  kernel_rfl

theorem node12134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12134 value6072 value1 value2 = (output12134, value6073, value1) := by
  rw [input12134_def, output12134_def]
  kernel_rfl

theorem node12135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12135 value6073 value1 value2 = (output12135, value5, value1) := by
  rw [input12135_def, output12135_def]
  kernel_rfl

theorem node12136_cond_eq
    (child12134 : Flapjack.WordAlloc.removeDeadStructural input12134 value6072 value1 value2 = (output12134, value6073, value1))
    (child12135 : Flapjack.WordAlloc.removeDeadStructural input12135 value6073 value1 value2 = (output12135, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12136 value6072 value1 value2 = (output12136, value5, value1) := by
  rw [input12136_def, output12136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12134]
  dsimp only
  rw [child12135]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12134_skip, output12135_skip]
  kernel_rfl

theorem node12137_cond_eq
    (child12133 : Flapjack.WordAlloc.removeDeadStructural input12133 value6071 value1 value2 = (output12133, value6072, value1))
    (child12136 : Flapjack.WordAlloc.removeDeadStructural input12136 value6072 value1 value2 = (output12136, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12137 value6071 value1 value2 = (output12137, value5, value1) := by
  rw [input12137_def, output12137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12133]
  dsimp only
  rw [child12136]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12133_skip, output12136_skip]
  kernel_rfl

theorem node12138_cond_eq
    (child12132 : Flapjack.WordAlloc.removeDeadStructural input12132 value6070 value1 value2 = (output12132, value6071, value1))
    (child12137 : Flapjack.WordAlloc.removeDeadStructural input12137 value6071 value1 value2 = (output12137, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12138 value6070 value1 value2 = (output12138, value5, value1) := by
  rw [input12138_def, output12138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12132]
  dsimp only
  rw [child12137]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12132_skip, output12137_skip]
  kernel_rfl

theorem node12139_cond_eq
    (child12131 : Flapjack.WordAlloc.removeDeadStructural input12131 value6069 value1 value2 = (output12131, value6070, value1))
    (child12138 : Flapjack.WordAlloc.removeDeadStructural input12138 value6070 value1 value2 = (output12138, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12139 value6069 value1 value2 = (output12139, value5, value1) := by
  rw [input12139_def, output12139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12131]
  dsimp only
  rw [child12138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12131_skip, output12138_skip]
  kernel_rfl

theorem node12140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12140 value5 value1 value2 = (output12140, value6074, value1) := by
  rw [input12140_def, output12140_def]
  kernel_rfl

theorem node12141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12141 value6074 value1 value2 = (output12141, value6075, value1) := by
  rw [input12141_def, output12141_def]
  kernel_rfl

theorem node12142_cond_eq
    (child12140 : Flapjack.WordAlloc.removeDeadStructural input12140 value5 value1 value2 = (output12140, value6074, value1))
    (child12141 : Flapjack.WordAlloc.removeDeadStructural input12141 value6074 value1 value2 = (output12141, value6075, value1)) : Flapjack.WordAlloc.removeDeadStructural input12142 value5 value1 value2 = (output12142, value6075, value1) := by
  rw [input12142_def, output12142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12140]
  dsimp only
  rw [child12141]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12140_skip, output12141_skip]
  kernel_rfl

theorem node12143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12143 value6075 value1 value2 = (output12143, value6076, value1) := by
  rw [input12143_def, output12143_def]
  kernel_rfl

theorem node12144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12144 value6076 value1 value2 = (output12144, value6076, value1) := by
  rw [input12144_def, output12144_def]
  kernel_rfl

theorem node12145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12145 value6076 value1 value2 = (output12145, value6077, value1) := by
  rw [input12145_def, output12145_def]
  kernel_rfl

theorem node12146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12146 value6077 value1 value2 = (output12146, value6078, value1) := by
  rw [input12146_def, output12146_def]
  kernel_rfl

theorem node12147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12147 value6078 value1 value2 = (output12147, value6079, value1) := by
  rw [input12147_def, output12147_def]
  kernel_rfl

theorem node12148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12148 value6079 value1 value2 = (output12148, value6080, value1) := by
  rw [input12148_def, output12148_def]
  kernel_rfl

theorem node12149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12149 value6080 value1 value2 = (output12149, value5, value1) := by
  rw [input12149_def, output12149_def]
  kernel_rfl

theorem node12150_cond_eq
    (child12148 : Flapjack.WordAlloc.removeDeadStructural input12148 value6079 value1 value2 = (output12148, value6080, value1))
    (child12149 : Flapjack.WordAlloc.removeDeadStructural input12149 value6080 value1 value2 = (output12149, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12150 value6079 value1 value2 = (output12150, value5, value1) := by
  rw [input12150_def, output12150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12148]
  dsimp only
  rw [child12149]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12148_skip, output12149_skip]
  kernel_rfl

theorem node12151_cond_eq
    (child12147 : Flapjack.WordAlloc.removeDeadStructural input12147 value6078 value1 value2 = (output12147, value6079, value1))
    (child12150 : Flapjack.WordAlloc.removeDeadStructural input12150 value6079 value1 value2 = (output12150, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12151 value6078 value1 value2 = (output12151, value5, value1) := by
  rw [input12151_def, output12151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12147]
  dsimp only
  rw [child12150]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12147_skip, output12150_skip]
  kernel_rfl

theorem node12152_cond_eq
    (child12146 : Flapjack.WordAlloc.removeDeadStructural input12146 value6077 value1 value2 = (output12146, value6078, value1))
    (child12151 : Flapjack.WordAlloc.removeDeadStructural input12151 value6078 value1 value2 = (output12151, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12152 value6077 value1 value2 = (output12152, value5, value1) := by
  rw [input12152_def, output12152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12146]
  dsimp only
  rw [child12151]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12146_skip, output12151_skip]
  kernel_rfl

theorem node12153_cond_eq
    (child12145 : Flapjack.WordAlloc.removeDeadStructural input12145 value6076 value1 value2 = (output12145, value6077, value1))
    (child12152 : Flapjack.WordAlloc.removeDeadStructural input12152 value6077 value1 value2 = (output12152, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12153 value6076 value1 value2 = (output12153, value5, value1) := by
  rw [input12153_def, output12153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12145]
  dsimp only
  rw [child12152]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12145_skip, output12152_skip]
  kernel_rfl

theorem node12154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12154 value5 value1 value2 = (output12154, value6081, value1) := by
  rw [input12154_def, output12154_def]
  kernel_rfl

theorem node12155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12155 value6081 value1 value2 = (output12155, value6082, value1) := by
  rw [input12155_def, output12155_def]
  kernel_rfl

theorem node12156_cond_eq
    (child12154 : Flapjack.WordAlloc.removeDeadStructural input12154 value5 value1 value2 = (output12154, value6081, value1))
    (child12155 : Flapjack.WordAlloc.removeDeadStructural input12155 value6081 value1 value2 = (output12155, value6082, value1)) : Flapjack.WordAlloc.removeDeadStructural input12156 value5 value1 value2 = (output12156, value6082, value1) := by
  rw [input12156_def, output12156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12154]
  dsimp only
  rw [child12155]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12154_skip, output12155_skip]
  kernel_rfl

theorem node12157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12157 value6082 value1 value2 = (output12157, value6083, value1) := by
  rw [input12157_def, output12157_def]
  kernel_rfl

theorem node12158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12158 value6083 value1 value2 = (output12158, value6083, value1) := by
  rw [input12158_def, output12158_def]
  kernel_rfl

theorem node12159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12159 value6083 value1 value2 = (output12159, value6084, value1) := by
  rw [input12159_def, output12159_def]
  kernel_rfl

theorem node12160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12160 value6084 value1 value2 = (output12160, value6085, value1) := by
  rw [input12160_def, output12160_def]
  kernel_rfl

theorem node12161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12161 value6085 value1 value2 = (output12161, value6086, value1) := by
  rw [input12161_def, output12161_def]
  kernel_rfl

theorem node12162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12162 value6086 value1 value2 = (output12162, value6087, value1) := by
  rw [input12162_def, output12162_def]
  kernel_rfl

theorem node12163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12163 value6087 value1 value2 = (output12163, value5, value1) := by
  rw [input12163_def, output12163_def]
  kernel_rfl

theorem node12164_cond_eq
    (child12162 : Flapjack.WordAlloc.removeDeadStructural input12162 value6086 value1 value2 = (output12162, value6087, value1))
    (child12163 : Flapjack.WordAlloc.removeDeadStructural input12163 value6087 value1 value2 = (output12163, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12164 value6086 value1 value2 = (output12164, value5, value1) := by
  rw [input12164_def, output12164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12162]
  dsimp only
  rw [child12163]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12162_skip, output12163_skip]
  kernel_rfl

theorem node12165_cond_eq
    (child12161 : Flapjack.WordAlloc.removeDeadStructural input12161 value6085 value1 value2 = (output12161, value6086, value1))
    (child12164 : Flapjack.WordAlloc.removeDeadStructural input12164 value6086 value1 value2 = (output12164, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12165 value6085 value1 value2 = (output12165, value5, value1) := by
  rw [input12165_def, output12165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12161]
  dsimp only
  rw [child12164]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12161_skip, output12164_skip]
  kernel_rfl

theorem node12166_cond_eq
    (child12160 : Flapjack.WordAlloc.removeDeadStructural input12160 value6084 value1 value2 = (output12160, value6085, value1))
    (child12165 : Flapjack.WordAlloc.removeDeadStructural input12165 value6085 value1 value2 = (output12165, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12166 value6084 value1 value2 = (output12166, value5, value1) := by
  rw [input12166_def, output12166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12160]
  dsimp only
  rw [child12165]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12160_skip, output12165_skip]
  kernel_rfl

theorem node12167_cond_eq
    (child12159 : Flapjack.WordAlloc.removeDeadStructural input12159 value6083 value1 value2 = (output12159, value6084, value1))
    (child12166 : Flapjack.WordAlloc.removeDeadStructural input12166 value6084 value1 value2 = (output12166, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12167 value6083 value1 value2 = (output12167, value5, value1) := by
  rw [input12167_def, output12167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12159]
  dsimp only
  rw [child12166]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12159_skip, output12166_skip]
  kernel_rfl

theorem node12168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12168 value5 value1 value2 = (output12168, value6088, value1) := by
  rw [input12168_def, output12168_def]
  kernel_rfl

theorem node12169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12169 value6088 value1 value2 = (output12169, value6089, value1) := by
  rw [input12169_def, output12169_def]
  kernel_rfl

theorem node12170_cond_eq
    (child12168 : Flapjack.WordAlloc.removeDeadStructural input12168 value5 value1 value2 = (output12168, value6088, value1))
    (child12169 : Flapjack.WordAlloc.removeDeadStructural input12169 value6088 value1 value2 = (output12169, value6089, value1)) : Flapjack.WordAlloc.removeDeadStructural input12170 value5 value1 value2 = (output12170, value6089, value1) := by
  rw [input12170_def, output12170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12168]
  dsimp only
  rw [child12169]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12168_skip, output12169_skip]
  kernel_rfl

theorem node12171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12171 value6089 value1 value2 = (output12171, value6090, value1) := by
  rw [input12171_def, output12171_def]
  kernel_rfl

theorem node12172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12172 value6090 value1 value2 = (output12172, value6090, value1) := by
  rw [input12172_def, output12172_def]
  kernel_rfl

theorem node12173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12173 value6090 value1 value2 = (output12173, value6091, value1) := by
  rw [input12173_def, output12173_def]
  kernel_rfl

theorem node12174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12174 value6091 value1 value2 = (output12174, value6092, value1) := by
  rw [input12174_def, output12174_def]
  kernel_rfl

theorem node12175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12175 value6092 value1 value2 = (output12175, value6093, value1) := by
  rw [input12175_def, output12175_def]
  kernel_rfl

theorem node12176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12176 value6093 value1 value2 = (output12176, value6094, value1) := by
  rw [input12176_def, output12176_def]
  kernel_rfl

theorem node12177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12177 value6094 value1 value2 = (output12177, value5, value1) := by
  rw [input12177_def, output12177_def]
  kernel_rfl

theorem node12178_cond_eq
    (child12176 : Flapjack.WordAlloc.removeDeadStructural input12176 value6093 value1 value2 = (output12176, value6094, value1))
    (child12177 : Flapjack.WordAlloc.removeDeadStructural input12177 value6094 value1 value2 = (output12177, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12178 value6093 value1 value2 = (output12178, value5, value1) := by
  rw [input12178_def, output12178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12176]
  dsimp only
  rw [child12177]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12176_skip, output12177_skip]
  kernel_rfl

theorem node12179_cond_eq
    (child12175 : Flapjack.WordAlloc.removeDeadStructural input12175 value6092 value1 value2 = (output12175, value6093, value1))
    (child12178 : Flapjack.WordAlloc.removeDeadStructural input12178 value6093 value1 value2 = (output12178, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12179 value6092 value1 value2 = (output12179, value5, value1) := by
  rw [input12179_def, output12179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12175]
  dsimp only
  rw [child12178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12175_skip, output12178_skip]
  kernel_rfl

theorem node12180_cond_eq
    (child12174 : Flapjack.WordAlloc.removeDeadStructural input12174 value6091 value1 value2 = (output12174, value6092, value1))
    (child12179 : Flapjack.WordAlloc.removeDeadStructural input12179 value6092 value1 value2 = (output12179, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12180 value6091 value1 value2 = (output12180, value5, value1) := by
  rw [input12180_def, output12180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12174]
  dsimp only
  rw [child12179]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12174_skip, output12179_skip]
  kernel_rfl

theorem node12181_cond_eq
    (child12173 : Flapjack.WordAlloc.removeDeadStructural input12173 value6090 value1 value2 = (output12173, value6091, value1))
    (child12180 : Flapjack.WordAlloc.removeDeadStructural input12180 value6091 value1 value2 = (output12180, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12181 value6090 value1 value2 = (output12181, value5, value1) := by
  rw [input12181_def, output12181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12173]
  dsimp only
  rw [child12180]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12173_skip, output12180_skip]
  kernel_rfl

theorem node12182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12182 value5 value1 value2 = (output12182, value6095, value1) := by
  rw [input12182_def, output12182_def]
  kernel_rfl

theorem node12183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12183 value6095 value1 value2 = (output12183, value6096, value1) := by
  rw [input12183_def, output12183_def]
  kernel_rfl

theorem node12184_cond_eq
    (child12182 : Flapjack.WordAlloc.removeDeadStructural input12182 value5 value1 value2 = (output12182, value6095, value1))
    (child12183 : Flapjack.WordAlloc.removeDeadStructural input12183 value6095 value1 value2 = (output12183, value6096, value1)) : Flapjack.WordAlloc.removeDeadStructural input12184 value5 value1 value2 = (output12184, value6096, value1) := by
  rw [input12184_def, output12184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12182]
  dsimp only
  rw [child12183]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12182_skip, output12183_skip]
  kernel_rfl

theorem node12185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12185 value6096 value1 value2 = (output12185, value6097, value1) := by
  rw [input12185_def, output12185_def]
  kernel_rfl

theorem node12186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12186 value6097 value1 value2 = (output12186, value6097, value1) := by
  rw [input12186_def, output12186_def]
  kernel_rfl

theorem node12187_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12187 value6097 value1 value2 = (output12187, value6098, value1) := by
  rw [input12187_def, output12187_def]
  kernel_rfl

theorem node12188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12188 value6098 value1 value2 = (output12188, value6099, value1) := by
  rw [input12188_def, output12188_def]
  kernel_rfl

theorem node12189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12189 value6099 value1 value2 = (output12189, value6100, value1) := by
  rw [input12189_def, output12189_def]
  kernel_rfl

theorem node12190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12190 value6100 value1 value2 = (output12190, value6101, value1) := by
  rw [input12190_def, output12190_def]
  kernel_rfl

theorem node12191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12191 value6101 value1 value2 = (output12191, value5, value1) := by
  rw [input12191_def, output12191_def]
  kernel_rfl

theorem node12192_cond_eq
    (child12190 : Flapjack.WordAlloc.removeDeadStructural input12190 value6100 value1 value2 = (output12190, value6101, value1))
    (child12191 : Flapjack.WordAlloc.removeDeadStructural input12191 value6101 value1 value2 = (output12191, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12192 value6100 value1 value2 = (output12192, value5, value1) := by
  rw [input12192_def, output12192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12190]
  dsimp only
  rw [child12191]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12190_skip, output12191_skip]
  kernel_rfl

theorem node12193_cond_eq
    (child12189 : Flapjack.WordAlloc.removeDeadStructural input12189 value6099 value1 value2 = (output12189, value6100, value1))
    (child12192 : Flapjack.WordAlloc.removeDeadStructural input12192 value6100 value1 value2 = (output12192, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12193 value6099 value1 value2 = (output12193, value5, value1) := by
  rw [input12193_def, output12193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12189]
  dsimp only
  rw [child12192]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12189_skip, output12192_skip]
  kernel_rfl

theorem node12194_cond_eq
    (child12188 : Flapjack.WordAlloc.removeDeadStructural input12188 value6098 value1 value2 = (output12188, value6099, value1))
    (child12193 : Flapjack.WordAlloc.removeDeadStructural input12193 value6099 value1 value2 = (output12193, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12194 value6098 value1 value2 = (output12194, value5, value1) := by
  rw [input12194_def, output12194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12188]
  dsimp only
  rw [child12193]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12188_skip, output12193_skip]
  kernel_rfl

theorem node12195_cond_eq
    (child12187 : Flapjack.WordAlloc.removeDeadStructural input12187 value6097 value1 value2 = (output12187, value6098, value1))
    (child12194 : Flapjack.WordAlloc.removeDeadStructural input12194 value6098 value1 value2 = (output12194, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12195 value6097 value1 value2 = (output12195, value5, value1) := by
  rw [input12195_def, output12195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12187]
  dsimp only
  rw [child12194]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12187_skip, output12194_skip]
  kernel_rfl

theorem node12196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12196 value5 value1 value2 = (output12196, value6102, value1) := by
  rw [input12196_def, output12196_def]
  kernel_rfl

theorem node12197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12197 value6102 value1 value2 = (output12197, value6103, value1) := by
  rw [input12197_def, output12197_def]
  kernel_rfl

theorem node12198_cond_eq
    (child12196 : Flapjack.WordAlloc.removeDeadStructural input12196 value5 value1 value2 = (output12196, value6102, value1))
    (child12197 : Flapjack.WordAlloc.removeDeadStructural input12197 value6102 value1 value2 = (output12197, value6103, value1)) : Flapjack.WordAlloc.removeDeadStructural input12198 value5 value1 value2 = (output12198, value6103, value1) := by
  rw [input12198_def, output12198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12196]
  dsimp only
  rw [child12197]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12196_skip, output12197_skip]
  kernel_rfl

theorem node12199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12199 value6103 value1 value2 = (output12199, value6104, value1) := by
  rw [input12199_def, output12199_def]
  kernel_rfl

theorem node12200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12200 value6104 value1 value2 = (output12200, value6104, value1) := by
  rw [input12200_def, output12200_def]
  kernel_rfl

theorem node12201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12201 value6104 value1 value2 = (output12201, value6105, value1) := by
  rw [input12201_def, output12201_def]
  kernel_rfl

theorem node12202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12202 value6105 value1 value2 = (output12202, value6106, value1) := by
  rw [input12202_def, output12202_def]
  kernel_rfl

theorem node12203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12203 value6106 value1 value2 = (output12203, value6107, value1) := by
  rw [input12203_def, output12203_def]
  kernel_rfl

theorem node12204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12204 value6107 value1 value2 = (output12204, value6108, value1) := by
  rw [input12204_def, output12204_def]
  kernel_rfl

theorem node12205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12205 value6108 value1 value2 = (output12205, value5, value1) := by
  rw [input12205_def, output12205_def]
  kernel_rfl

theorem node12206_cond_eq
    (child12204 : Flapjack.WordAlloc.removeDeadStructural input12204 value6107 value1 value2 = (output12204, value6108, value1))
    (child12205 : Flapjack.WordAlloc.removeDeadStructural input12205 value6108 value1 value2 = (output12205, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12206 value6107 value1 value2 = (output12206, value5, value1) := by
  rw [input12206_def, output12206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12204]
  dsimp only
  rw [child12205]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12204_skip, output12205_skip]
  kernel_rfl

theorem node12207_cond_eq
    (child12203 : Flapjack.WordAlloc.removeDeadStructural input12203 value6106 value1 value2 = (output12203, value6107, value1))
    (child12206 : Flapjack.WordAlloc.removeDeadStructural input12206 value6107 value1 value2 = (output12206, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12207 value6106 value1 value2 = (output12207, value5, value1) := by
  rw [input12207_def, output12207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12203]
  dsimp only
  rw [child12206]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12203_skip, output12206_skip]
  kernel_rfl

theorem node12208_cond_eq
    (child12202 : Flapjack.WordAlloc.removeDeadStructural input12202 value6105 value1 value2 = (output12202, value6106, value1))
    (child12207 : Flapjack.WordAlloc.removeDeadStructural input12207 value6106 value1 value2 = (output12207, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12208 value6105 value1 value2 = (output12208, value5, value1) := by
  rw [input12208_def, output12208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12202]
  dsimp only
  rw [child12207]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12202_skip, output12207_skip]
  kernel_rfl

theorem node12209_cond_eq
    (child12201 : Flapjack.WordAlloc.removeDeadStructural input12201 value6104 value1 value2 = (output12201, value6105, value1))
    (child12208 : Flapjack.WordAlloc.removeDeadStructural input12208 value6105 value1 value2 = (output12208, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12209 value6104 value1 value2 = (output12209, value5, value1) := by
  rw [input12209_def, output12209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12201]
  dsimp only
  rw [child12208]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12201_skip, output12208_skip]
  kernel_rfl

theorem node12210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12210 value5 value1 value2 = (output12210, value6109, value1) := by
  rw [input12210_def, output12210_def]
  kernel_rfl

theorem node12211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12211 value6109 value1 value2 = (output12211, value6110, value1) := by
  rw [input12211_def, output12211_def]
  kernel_rfl

theorem node12212_cond_eq
    (child12210 : Flapjack.WordAlloc.removeDeadStructural input12210 value5 value1 value2 = (output12210, value6109, value1))
    (child12211 : Flapjack.WordAlloc.removeDeadStructural input12211 value6109 value1 value2 = (output12211, value6110, value1)) : Flapjack.WordAlloc.removeDeadStructural input12212 value5 value1 value2 = (output12212, value6110, value1) := by
  rw [input12212_def, output12212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12210]
  dsimp only
  rw [child12211]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12210_skip, output12211_skip]
  kernel_rfl

theorem node12213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12213 value6110 value1 value2 = (output12213, value6111, value1) := by
  rw [input12213_def, output12213_def]
  kernel_rfl

theorem node12214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12214 value6111 value1 value2 = (output12214, value6111, value1) := by
  rw [input12214_def, output12214_def]
  kernel_rfl

theorem node12215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12215 value6111 value1 value2 = (output12215, value6112, value1) := by
  rw [input12215_def, output12215_def]
  kernel_rfl

theorem node12216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12216 value6112 value1 value2 = (output12216, value6113, value1) := by
  rw [input12216_def, output12216_def]
  kernel_rfl

theorem node12217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12217 value6113 value1 value2 = (output12217, value6114, value1) := by
  rw [input12217_def, output12217_def]
  kernel_rfl

theorem node12218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12218 value6114 value1 value2 = (output12218, value6115, value1) := by
  rw [input12218_def, output12218_def]
  kernel_rfl

theorem node12219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12219 value6115 value1 value2 = (output12219, value5, value1) := by
  rw [input12219_def, output12219_def]
  kernel_rfl

theorem node12220_cond_eq
    (child12218 : Flapjack.WordAlloc.removeDeadStructural input12218 value6114 value1 value2 = (output12218, value6115, value1))
    (child12219 : Flapjack.WordAlloc.removeDeadStructural input12219 value6115 value1 value2 = (output12219, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12220 value6114 value1 value2 = (output12220, value5, value1) := by
  rw [input12220_def, output12220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12218]
  dsimp only
  rw [child12219]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12218_skip, output12219_skip]
  kernel_rfl

theorem node12221_cond_eq
    (child12217 : Flapjack.WordAlloc.removeDeadStructural input12217 value6113 value1 value2 = (output12217, value6114, value1))
    (child12220 : Flapjack.WordAlloc.removeDeadStructural input12220 value6114 value1 value2 = (output12220, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12221 value6113 value1 value2 = (output12221, value5, value1) := by
  rw [input12221_def, output12221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12217]
  dsimp only
  rw [child12220]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12217_skip, output12220_skip]
  kernel_rfl

theorem node12222_cond_eq
    (child12216 : Flapjack.WordAlloc.removeDeadStructural input12216 value6112 value1 value2 = (output12216, value6113, value1))
    (child12221 : Flapjack.WordAlloc.removeDeadStructural input12221 value6113 value1 value2 = (output12221, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12222 value6112 value1 value2 = (output12222, value5, value1) := by
  rw [input12222_def, output12222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12216]
  dsimp only
  rw [child12221]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12216_skip, output12221_skip]
  kernel_rfl

theorem node12223_cond_eq
    (child12215 : Flapjack.WordAlloc.removeDeadStructural input12215 value6111 value1 value2 = (output12215, value6112, value1))
    (child12222 : Flapjack.WordAlloc.removeDeadStructural input12222 value6112 value1 value2 = (output12222, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12223 value6111 value1 value2 = (output12223, value5, value1) := by
  rw [input12223_def, output12223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12215]
  dsimp only
  rw [child12222]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12215_skip, output12222_skip]
  kernel_rfl

theorem node12224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12224 value5 value1 value2 = (output12224, value6116, value1) := by
  rw [input12224_def, output12224_def]
  kernel_rfl

theorem node12225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12225 value6116 value1 value2 = (output12225, value6117, value1) := by
  rw [input12225_def, output12225_def]
  kernel_rfl

theorem node12226_cond_eq
    (child12224 : Flapjack.WordAlloc.removeDeadStructural input12224 value5 value1 value2 = (output12224, value6116, value1))
    (child12225 : Flapjack.WordAlloc.removeDeadStructural input12225 value6116 value1 value2 = (output12225, value6117, value1)) : Flapjack.WordAlloc.removeDeadStructural input12226 value5 value1 value2 = (output12226, value6117, value1) := by
  rw [input12226_def, output12226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12224]
  dsimp only
  rw [child12225]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12224_skip, output12225_skip]
  kernel_rfl

theorem node12227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12227 value6117 value1 value2 = (output12227, value6118, value1) := by
  rw [input12227_def, output12227_def]
  kernel_rfl

theorem node12228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12228 value6118 value1 value2 = (output12228, value6118, value1) := by
  rw [input12228_def, output12228_def]
  kernel_rfl

theorem node12229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12229 value6118 value1 value2 = (output12229, value6119, value1) := by
  rw [input12229_def, output12229_def]
  kernel_rfl

theorem node12230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12230 value6119 value1 value2 = (output12230, value6120, value1) := by
  rw [input12230_def, output12230_def]
  kernel_rfl

theorem node12231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12231 value6120 value1 value2 = (output12231, value6121, value1) := by
  rw [input12231_def, output12231_def]
  kernel_rfl

theorem node12232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12232 value6121 value1 value2 = (output12232, value6122, value1) := by
  rw [input12232_def, output12232_def]
  kernel_rfl

theorem node12233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12233 value6122 value1 value2 = (output12233, value5, value1) := by
  rw [input12233_def, output12233_def]
  kernel_rfl

theorem node12234_cond_eq
    (child12232 : Flapjack.WordAlloc.removeDeadStructural input12232 value6121 value1 value2 = (output12232, value6122, value1))
    (child12233 : Flapjack.WordAlloc.removeDeadStructural input12233 value6122 value1 value2 = (output12233, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12234 value6121 value1 value2 = (output12234, value5, value1) := by
  rw [input12234_def, output12234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12232]
  dsimp only
  rw [child12233]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12232_skip, output12233_skip]
  kernel_rfl

theorem node12235_cond_eq
    (child12231 : Flapjack.WordAlloc.removeDeadStructural input12231 value6120 value1 value2 = (output12231, value6121, value1))
    (child12234 : Flapjack.WordAlloc.removeDeadStructural input12234 value6121 value1 value2 = (output12234, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12235 value6120 value1 value2 = (output12235, value5, value1) := by
  rw [input12235_def, output12235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12231]
  dsimp only
  rw [child12234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12231_skip, output12234_skip]
  kernel_rfl

theorem node12236_cond_eq
    (child12230 : Flapjack.WordAlloc.removeDeadStructural input12230 value6119 value1 value2 = (output12230, value6120, value1))
    (child12235 : Flapjack.WordAlloc.removeDeadStructural input12235 value6120 value1 value2 = (output12235, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12236 value6119 value1 value2 = (output12236, value5, value1) := by
  rw [input12236_def, output12236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12230]
  dsimp only
  rw [child12235]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12230_skip, output12235_skip]
  kernel_rfl

theorem node12237_cond_eq
    (child12229 : Flapjack.WordAlloc.removeDeadStructural input12229 value6118 value1 value2 = (output12229, value6119, value1))
    (child12236 : Flapjack.WordAlloc.removeDeadStructural input12236 value6119 value1 value2 = (output12236, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12237 value6118 value1 value2 = (output12237, value5, value1) := by
  rw [input12237_def, output12237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12229]
  dsimp only
  rw [child12236]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12229_skip, output12236_skip]
  kernel_rfl

theorem node12238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12238 value5 value1 value2 = (output12238, value6123, value1) := by
  rw [input12238_def, output12238_def]
  kernel_rfl

theorem node12239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12239 value6123 value1 value2 = (output12239, value6124, value1) := by
  rw [input12239_def, output12239_def]
  kernel_rfl

theorem node12240_cond_eq
    (child12238 : Flapjack.WordAlloc.removeDeadStructural input12238 value5 value1 value2 = (output12238, value6123, value1))
    (child12239 : Flapjack.WordAlloc.removeDeadStructural input12239 value6123 value1 value2 = (output12239, value6124, value1)) : Flapjack.WordAlloc.removeDeadStructural input12240 value5 value1 value2 = (output12240, value6124, value1) := by
  rw [input12240_def, output12240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12238]
  dsimp only
  rw [child12239]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12238_skip, output12239_skip]
  kernel_rfl

theorem node12241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12241 value6124 value1 value2 = (output12241, value6125, value1) := by
  rw [input12241_def, output12241_def]
  kernel_rfl

theorem node12242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12242 value6125 value1 value2 = (output12242, value6125, value1) := by
  rw [input12242_def, output12242_def]
  kernel_rfl

theorem node12243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12243 value6125 value1 value2 = (output12243, value6126, value1) := by
  rw [input12243_def, output12243_def]
  kernel_rfl

theorem node12244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12244 value6126 value1 value2 = (output12244, value6127, value1) := by
  rw [input12244_def, output12244_def]
  kernel_rfl

theorem node12245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12245 value6127 value1 value2 = (output12245, value6128, value1) := by
  rw [input12245_def, output12245_def]
  kernel_rfl

theorem node12246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12246 value6128 value1 value2 = (output12246, value6129, value1) := by
  rw [input12246_def, output12246_def]
  kernel_rfl

theorem node12247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12247 value6129 value1 value2 = (output12247, value5, value1) := by
  rw [input12247_def, output12247_def]
  kernel_rfl

theorem node12248_cond_eq
    (child12246 : Flapjack.WordAlloc.removeDeadStructural input12246 value6128 value1 value2 = (output12246, value6129, value1))
    (child12247 : Flapjack.WordAlloc.removeDeadStructural input12247 value6129 value1 value2 = (output12247, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12248 value6128 value1 value2 = (output12248, value5, value1) := by
  rw [input12248_def, output12248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12246]
  dsimp only
  rw [child12247]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12246_skip, output12247_skip]
  kernel_rfl

theorem node12249_cond_eq
    (child12245 : Flapjack.WordAlloc.removeDeadStructural input12245 value6127 value1 value2 = (output12245, value6128, value1))
    (child12248 : Flapjack.WordAlloc.removeDeadStructural input12248 value6128 value1 value2 = (output12248, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12249 value6127 value1 value2 = (output12249, value5, value1) := by
  rw [input12249_def, output12249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12245]
  dsimp only
  rw [child12248]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12245_skip, output12248_skip]
  kernel_rfl

theorem node12250_cond_eq
    (child12244 : Flapjack.WordAlloc.removeDeadStructural input12244 value6126 value1 value2 = (output12244, value6127, value1))
    (child12249 : Flapjack.WordAlloc.removeDeadStructural input12249 value6127 value1 value2 = (output12249, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12250 value6126 value1 value2 = (output12250, value5, value1) := by
  rw [input12250_def, output12250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12244]
  dsimp only
  rw [child12249]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12244_skip, output12249_skip]
  kernel_rfl

theorem node12251_cond_eq
    (child12243 : Flapjack.WordAlloc.removeDeadStructural input12243 value6125 value1 value2 = (output12243, value6126, value1))
    (child12250 : Flapjack.WordAlloc.removeDeadStructural input12250 value6126 value1 value2 = (output12250, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12251 value6125 value1 value2 = (output12251, value5, value1) := by
  rw [input12251_def, output12251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12243]
  dsimp only
  rw [child12250]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12243_skip, output12250_skip]
  kernel_rfl

theorem node12252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12252 value5 value1 value2 = (output12252, value6130, value1) := by
  rw [input12252_def, output12252_def]
  kernel_rfl

theorem node12253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12253 value6130 value1 value2 = (output12253, value6131, value1) := by
  rw [input12253_def, output12253_def]
  kernel_rfl

theorem node12254_cond_eq
    (child12252 : Flapjack.WordAlloc.removeDeadStructural input12252 value5 value1 value2 = (output12252, value6130, value1))
    (child12253 : Flapjack.WordAlloc.removeDeadStructural input12253 value6130 value1 value2 = (output12253, value6131, value1)) : Flapjack.WordAlloc.removeDeadStructural input12254 value5 value1 value2 = (output12254, value6131, value1) := by
  rw [input12254_def, output12254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12252]
  dsimp only
  rw [child12253]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12252_skip, output12253_skip]
  kernel_rfl

theorem node12255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12255 value6131 value1 value2 = (output12255, value6132, value1) := by
  rw [input12255_def, output12255_def]
  kernel_rfl

theorem node12256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12256 value6132 value1 value2 = (output12256, value6132, value1) := by
  rw [input12256_def, output12256_def]
  kernel_rfl

theorem node12257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12257 value6132 value1 value2 = (output12257, value6133, value1) := by
  rw [input12257_def, output12257_def]
  kernel_rfl

theorem node12258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12258 value6133 value1 value2 = (output12258, value6134, value1) := by
  rw [input12258_def, output12258_def]
  kernel_rfl

theorem node12259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12259 value6134 value1 value2 = (output12259, value6135, value1) := by
  rw [input12259_def, output12259_def]
  kernel_rfl

theorem node12260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12260 value6135 value1 value2 = (output12260, value6136, value1) := by
  rw [input12260_def, output12260_def]
  kernel_rfl

theorem node12261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12261 value6136 value1 value2 = (output12261, value5, value1) := by
  rw [input12261_def, output12261_def]
  kernel_rfl

theorem node12262_cond_eq
    (child12260 : Flapjack.WordAlloc.removeDeadStructural input12260 value6135 value1 value2 = (output12260, value6136, value1))
    (child12261 : Flapjack.WordAlloc.removeDeadStructural input12261 value6136 value1 value2 = (output12261, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12262 value6135 value1 value2 = (output12262, value5, value1) := by
  rw [input12262_def, output12262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12260]
  dsimp only
  rw [child12261]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12260_skip, output12261_skip]
  kernel_rfl

theorem node12263_cond_eq
    (child12259 : Flapjack.WordAlloc.removeDeadStructural input12259 value6134 value1 value2 = (output12259, value6135, value1))
    (child12262 : Flapjack.WordAlloc.removeDeadStructural input12262 value6135 value1 value2 = (output12262, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12263 value6134 value1 value2 = (output12263, value5, value1) := by
  rw [input12263_def, output12263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12259]
  dsimp only
  rw [child12262]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12259_skip, output12262_skip]
  kernel_rfl

theorem node12264_cond_eq
    (child12258 : Flapjack.WordAlloc.removeDeadStructural input12258 value6133 value1 value2 = (output12258, value6134, value1))
    (child12263 : Flapjack.WordAlloc.removeDeadStructural input12263 value6134 value1 value2 = (output12263, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12264 value6133 value1 value2 = (output12264, value5, value1) := by
  rw [input12264_def, output12264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12258]
  dsimp only
  rw [child12263]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12258_skip, output12263_skip]
  kernel_rfl

theorem node12265_cond_eq
    (child12257 : Flapjack.WordAlloc.removeDeadStructural input12257 value6132 value1 value2 = (output12257, value6133, value1))
    (child12264 : Flapjack.WordAlloc.removeDeadStructural input12264 value6133 value1 value2 = (output12264, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12265 value6132 value1 value2 = (output12265, value5, value1) := by
  rw [input12265_def, output12265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12257]
  dsimp only
  rw [child12264]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12257_skip, output12264_skip]
  kernel_rfl

theorem node12266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12266 value5 value1 value2 = (output12266, value6137, value1) := by
  rw [input12266_def, output12266_def]
  kernel_rfl

theorem node12267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12267 value6137 value1 value2 = (output12267, value6138, value1) := by
  rw [input12267_def, output12267_def]
  kernel_rfl

theorem node12268_cond_eq
    (child12266 : Flapjack.WordAlloc.removeDeadStructural input12266 value5 value1 value2 = (output12266, value6137, value1))
    (child12267 : Flapjack.WordAlloc.removeDeadStructural input12267 value6137 value1 value2 = (output12267, value6138, value1)) : Flapjack.WordAlloc.removeDeadStructural input12268 value5 value1 value2 = (output12268, value6138, value1) := by
  rw [input12268_def, output12268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12266]
  dsimp only
  rw [child12267]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12266_skip, output12267_skip]
  kernel_rfl

theorem node12269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12269 value6138 value1 value2 = (output12269, value6139, value1) := by
  rw [input12269_def, output12269_def]
  kernel_rfl

theorem node12270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12270 value6139 value1 value2 = (output12270, value6139, value1) := by
  rw [input12270_def, output12270_def]
  kernel_rfl

theorem node12271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12271 value6139 value1 value2 = (output12271, value6140, value1) := by
  rw [input12271_def, output12271_def]
  kernel_rfl

theorem node12272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12272 value6140 value1 value2 = (output12272, value6141, value1) := by
  rw [input12272_def, output12272_def]
  kernel_rfl

theorem node12273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12273 value6141 value1 value2 = (output12273, value6142, value1) := by
  rw [input12273_def, output12273_def]
  kernel_rfl

theorem node12274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12274 value6142 value1 value2 = (output12274, value6143, value1) := by
  rw [input12274_def, output12274_def]
  kernel_rfl

theorem node12275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12275 value6143 value1 value2 = (output12275, value5, value1) := by
  rw [input12275_def, output12275_def]
  kernel_rfl

theorem node12276_cond_eq
    (child12274 : Flapjack.WordAlloc.removeDeadStructural input12274 value6142 value1 value2 = (output12274, value6143, value1))
    (child12275 : Flapjack.WordAlloc.removeDeadStructural input12275 value6143 value1 value2 = (output12275, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12276 value6142 value1 value2 = (output12276, value5, value1) := by
  rw [input12276_def, output12276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12274]
  dsimp only
  rw [child12275]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12274_skip, output12275_skip]
  kernel_rfl

theorem node12277_cond_eq
    (child12273 : Flapjack.WordAlloc.removeDeadStructural input12273 value6141 value1 value2 = (output12273, value6142, value1))
    (child12276 : Flapjack.WordAlloc.removeDeadStructural input12276 value6142 value1 value2 = (output12276, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12277 value6141 value1 value2 = (output12277, value5, value1) := by
  rw [input12277_def, output12277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12273]
  dsimp only
  rw [child12276]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12273_skip, output12276_skip]
  kernel_rfl

theorem node12278_cond_eq
    (child12272 : Flapjack.WordAlloc.removeDeadStructural input12272 value6140 value1 value2 = (output12272, value6141, value1))
    (child12277 : Flapjack.WordAlloc.removeDeadStructural input12277 value6141 value1 value2 = (output12277, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12278 value6140 value1 value2 = (output12278, value5, value1) := by
  rw [input12278_def, output12278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12272]
  dsimp only
  rw [child12277]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12272_skip, output12277_skip]
  kernel_rfl

theorem node12279_cond_eq
    (child12271 : Flapjack.WordAlloc.removeDeadStructural input12271 value6139 value1 value2 = (output12271, value6140, value1))
    (child12278 : Flapjack.WordAlloc.removeDeadStructural input12278 value6140 value1 value2 = (output12278, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12279 value6139 value1 value2 = (output12279, value5, value1) := by
  rw [input12279_def, output12279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12271]
  dsimp only
  rw [child12278]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12271_skip, output12278_skip]
  kernel_rfl

theorem node12280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12280 value5 value1 value2 = (output12280, value6144, value1) := by
  rw [input12280_def, output12280_def]
  kernel_rfl

theorem node12281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12281 value6144 value1 value2 = (output12281, value6145, value1) := by
  rw [input12281_def, output12281_def]
  kernel_rfl

theorem node12282_cond_eq
    (child12280 : Flapjack.WordAlloc.removeDeadStructural input12280 value5 value1 value2 = (output12280, value6144, value1))
    (child12281 : Flapjack.WordAlloc.removeDeadStructural input12281 value6144 value1 value2 = (output12281, value6145, value1)) : Flapjack.WordAlloc.removeDeadStructural input12282 value5 value1 value2 = (output12282, value6145, value1) := by
  rw [input12282_def, output12282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12280]
  dsimp only
  rw [child12281]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12280_skip, output12281_skip]
  kernel_rfl

theorem node12283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12283 value6145 value1 value2 = (output12283, value6146, value1) := by
  rw [input12283_def, output12283_def]
  kernel_rfl

theorem node12284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12284 value6146 value1 value2 = (output12284, value6146, value1) := by
  rw [input12284_def, output12284_def]
  kernel_rfl

theorem node12285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12285 value6146 value1 value2 = (output12285, value6147, value1) := by
  rw [input12285_def, output12285_def]
  kernel_rfl

theorem node12286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12286 value6147 value1 value2 = (output12286, value6148, value1) := by
  rw [input12286_def, output12286_def]
  kernel_rfl

theorem node12287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12287 value6148 value1 value2 = (output12287, value6149, value1) := by
  rw [input12287_def, output12287_def]
  kernel_rfl

#print axioms node12287_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
