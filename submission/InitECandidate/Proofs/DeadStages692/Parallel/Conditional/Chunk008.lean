import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages692.Parallel.Data.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages692.Parallel
theorem node2048_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value277 value1 value2 = (output514, value280, value1))
    (child2047 : Flapjack.WordAlloc.removeDeadStructural input2047 value280 value1 value2 = (output2047, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2048 value277 value1 value2 = (output2048, value833, value1) := by
  rw [input2048_def, output2048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child2047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output2047_skip]
  kernel_rfl

theorem node2049_cond_eq
    (child509 : Flapjack.WordAlloc.removeDeadStructural input509 value277 value1 value2 = (output509, value277, value1))
    (child2048 : Flapjack.WordAlloc.removeDeadStructural input2048 value277 value1 value2 = (output2048, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2049 value277 value1 value2 = (output2049, value833, value1) := by
  rw [input2049_def, output2049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child509]
  try dsimp only
  rw [child2048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output509_skip, output2048_skip]
  kernel_rfl

theorem node2050_cond_eq
    (child508 : Flapjack.WordAlloc.removeDeadStructural input508 value276 value1 value2 = (output508, value277, value1))
    (child2049 : Flapjack.WordAlloc.removeDeadStructural input2049 value277 value1 value2 = (output2049, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2050 value276 value1 value2 = (output2050, value833, value1) := by
  rw [input2050_def, output2050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child508]
  try dsimp only
  rw [child2049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output508_skip, output2049_skip]
  kernel_rfl

theorem node2051_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value275 value1 value2 = (output507, value276, value1))
    (child2050 : Flapjack.WordAlloc.removeDeadStructural input2050 value276 value1 value2 = (output2050, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2051 value275 value1 value2 = (output2051, value833, value1) := by
  rw [input2051_def, output2051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child2050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output2050_skip]
  kernel_rfl

theorem node2052_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value274 value1 value2 = (output506, value275, value1))
    (child2051 : Flapjack.WordAlloc.removeDeadStructural input2051 value275 value1 value2 = (output2051, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2052 value274 value1 value2 = (output2052, value833, value1) := by
  rw [input2052_def, output2052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child2051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output2051_skip]
  kernel_rfl

theorem node2053_cond_eq
    (child505 : Flapjack.WordAlloc.removeDeadStructural input505 value273 value1 value2 = (output505, value274, value1))
    (child2052 : Flapjack.WordAlloc.removeDeadStructural input2052 value274 value1 value2 = (output2052, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2053 value273 value1 value2 = (output2053, value833, value1) := by
  rw [input2053_def, output2053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child505]
  try dsimp only
  rw [child2052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output505_skip, output2052_skip]
  kernel_rfl

theorem node2054_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value270 value1 value2 = (output504, value273, value1))
    (child2053 : Flapjack.WordAlloc.removeDeadStructural input2053 value273 value1 value2 = (output2053, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2054 value270 value1 value2 = (output2054, value833, value1) := by
  rw [input2054_def, output2054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child2053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output2053_skip]
  kernel_rfl

theorem node2055_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value270 value1 value2 = (output499, value270, value1))
    (child2054 : Flapjack.WordAlloc.removeDeadStructural input2054 value270 value1 value2 = (output2054, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2055 value270 value1 value2 = (output2055, value833, value1) := by
  rw [input2055_def, output2055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  try dsimp only
  rw [child2054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output499_skip, output2054_skip]
  kernel_rfl

theorem node2056_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value269 value1 value2 = (output498, value270, value1))
    (child2055 : Flapjack.WordAlloc.removeDeadStructural input2055 value270 value1 value2 = (output2055, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2056 value269 value1 value2 = (output2056, value833, value1) := by
  rw [input2056_def, output2056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child2055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output2055_skip]
  kernel_rfl

theorem node2057_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value268 value1 value2 = (output497, value269, value1))
    (child2056 : Flapjack.WordAlloc.removeDeadStructural input2056 value269 value1 value2 = (output2056, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2057 value268 value1 value2 = (output2057, value833, value1) := by
  rw [input2057_def, output2057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child2056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output2056_skip]
  kernel_rfl

theorem node2058_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value267 value1 value2 = (output496, value268, value1))
    (child2057 : Flapjack.WordAlloc.removeDeadStructural input2057 value268 value1 value2 = (output2057, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2058 value267 value1 value2 = (output2058, value833, value1) := by
  rw [input2058_def, output2058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child2057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output2057_skip]
  kernel_rfl

theorem node2059_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value266 value1 value2 = (output495, value267, value1))
    (child2058 : Flapjack.WordAlloc.removeDeadStructural input2058 value267 value1 value2 = (output2058, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2059 value266 value1 value2 = (output2059, value833, value1) := by
  rw [input2059_def, output2059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child2058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output2058_skip]
  kernel_rfl

theorem node2060_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value263 value1 value2 = (output494, value266, value1))
    (child2059 : Flapjack.WordAlloc.removeDeadStructural input2059 value266 value1 value2 = (output2059, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2060 value263 value1 value2 = (output2060, value833, value1) := by
  rw [input2060_def, output2060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child2059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output2059_skip]
  kernel_rfl

theorem node2061_cond_eq
    (child489 : Flapjack.WordAlloc.removeDeadStructural input489 value263 value1 value2 = (output489, value263, value1))
    (child2060 : Flapjack.WordAlloc.removeDeadStructural input2060 value263 value1 value2 = (output2060, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2061 value263 value1 value2 = (output2061, value833, value1) := by
  rw [input2061_def, output2061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child489]
  try dsimp only
  rw [child2060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output489_skip, output2060_skip]
  kernel_rfl

theorem node2062_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value262 value1 value2 = (output488, value263, value1))
    (child2061 : Flapjack.WordAlloc.removeDeadStructural input2061 value263 value1 value2 = (output2061, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2062 value262 value1 value2 = (output2062, value833, value1) := by
  rw [input2062_def, output2062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child2061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output2061_skip]
  kernel_rfl

theorem node2063_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value261 value1 value2 = (output487, value262, value1))
    (child2062 : Flapjack.WordAlloc.removeDeadStructural input2062 value262 value1 value2 = (output2062, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2063 value261 value1 value2 = (output2063, value833, value1) := by
  rw [input2063_def, output2063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child2062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output2062_skip]
  kernel_rfl

theorem node2064_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value260 value1 value2 = (output486, value261, value1))
    (child2063 : Flapjack.WordAlloc.removeDeadStructural input2063 value261 value1 value2 = (output2063, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2064 value260 value1 value2 = (output2064, value833, value1) := by
  rw [input2064_def, output2064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child2063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output2063_skip]
  kernel_rfl

theorem node2065_cond_eq
    (child485 : Flapjack.WordAlloc.removeDeadStructural input485 value259 value1 value2 = (output485, value260, value1))
    (child2064 : Flapjack.WordAlloc.removeDeadStructural input2064 value260 value1 value2 = (output2064, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2065 value259 value1 value2 = (output2065, value833, value1) := by
  rw [input2065_def, output2065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child485]
  try dsimp only
  rw [child2064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output485_skip, output2064_skip]
  kernel_rfl

theorem node2066_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value256 value1 value2 = (output484, value259, value1))
    (child2065 : Flapjack.WordAlloc.removeDeadStructural input2065 value259 value1 value2 = (output2065, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2066 value256 value1 value2 = (output2066, value833, value1) := by
  rw [input2066_def, output2066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child2065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output2065_skip]
  kernel_rfl

theorem node2067_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value256 value1 value2 = (output479, value256, value1))
    (child2066 : Flapjack.WordAlloc.removeDeadStructural input2066 value256 value1 value2 = (output2066, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2067 value256 value1 value2 = (output2067, value833, value1) := by
  rw [input2067_def, output2067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child2066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output2066_skip]
  kernel_rfl

theorem node2068_cond_eq
    (child478 : Flapjack.WordAlloc.removeDeadStructural input478 value255 value1 value2 = (output478, value256, value1))
    (child2067 : Flapjack.WordAlloc.removeDeadStructural input2067 value256 value1 value2 = (output2067, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2068 value255 value1 value2 = (output2068, value833, value1) := by
  rw [input2068_def, output2068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child478]
  try dsimp only
  rw [child2067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output478_skip, output2067_skip]
  kernel_rfl

theorem node2069_cond_eq
    (child477 : Flapjack.WordAlloc.removeDeadStructural input477 value254 value1 value2 = (output477, value255, value1))
    (child2068 : Flapjack.WordAlloc.removeDeadStructural input2068 value255 value1 value2 = (output2068, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2069 value254 value1 value2 = (output2069, value833, value1) := by
  rw [input2069_def, output2069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child477]
  try dsimp only
  rw [child2068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output477_skip, output2068_skip]
  kernel_rfl

theorem node2070_cond_eq
    (child476 : Flapjack.WordAlloc.removeDeadStructural input476 value253 value1 value2 = (output476, value254, value1))
    (child2069 : Flapjack.WordAlloc.removeDeadStructural input2069 value254 value1 value2 = (output2069, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2070 value253 value1 value2 = (output2070, value833, value1) := by
  rw [input2070_def, output2070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child476]
  try dsimp only
  rw [child2069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output476_skip, output2069_skip]
  kernel_rfl

theorem node2071_cond_eq
    (child475 : Flapjack.WordAlloc.removeDeadStructural input475 value252 value1 value2 = (output475, value253, value1))
    (child2070 : Flapjack.WordAlloc.removeDeadStructural input2070 value253 value1 value2 = (output2070, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2071 value252 value1 value2 = (output2071, value833, value1) := by
  rw [input2071_def, output2071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child475]
  try dsimp only
  rw [child2070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output475_skip, output2070_skip]
  kernel_rfl

theorem node2072_cond_eq
    (child474 : Flapjack.WordAlloc.removeDeadStructural input474 value249 value1 value2 = (output474, value252, value1))
    (child2071 : Flapjack.WordAlloc.removeDeadStructural input2071 value252 value1 value2 = (output2071, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2072 value249 value1 value2 = (output2072, value833, value1) := by
  rw [input2072_def, output2072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child474]
  try dsimp only
  rw [child2071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output474_skip, output2071_skip]
  kernel_rfl

theorem node2073_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value249 value1 value2 = (output469, value249, value1))
    (child2072 : Flapjack.WordAlloc.removeDeadStructural input2072 value249 value1 value2 = (output2072, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2073 value249 value1 value2 = (output2073, value833, value1) := by
  rw [input2073_def, output2073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child2072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output2072_skip]
  kernel_rfl

theorem node2074_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value248 value1 value2 = (output468, value249, value1))
    (child2073 : Flapjack.WordAlloc.removeDeadStructural input2073 value249 value1 value2 = (output2073, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2074 value248 value1 value2 = (output2074, value833, value1) := by
  rw [input2074_def, output2074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child2073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output2073_skip]
  kernel_rfl

theorem node2075_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value247 value1 value2 = (output467, value248, value1))
    (child2074 : Flapjack.WordAlloc.removeDeadStructural input2074 value248 value1 value2 = (output2074, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2075 value247 value1 value2 = (output2075, value833, value1) := by
  rw [input2075_def, output2075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child2074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output2074_skip]
  kernel_rfl

theorem node2076_cond_eq
    (child466 : Flapjack.WordAlloc.removeDeadStructural input466 value246 value1 value2 = (output466, value247, value1))
    (child2075 : Flapjack.WordAlloc.removeDeadStructural input2075 value247 value1 value2 = (output2075, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2076 value246 value1 value2 = (output2076, value833, value1) := by
  rw [input2076_def, output2076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child466]
  try dsimp only
  rw [child2075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output466_skip, output2075_skip]
  kernel_rfl

theorem node2077_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value243 value1 value2 = (output465, value246, value1))
    (child2076 : Flapjack.WordAlloc.removeDeadStructural input2076 value246 value1 value2 = (output2076, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2077 value243 value1 value2 = (output2077, value833, value1) := by
  rw [input2077_def, output2077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child2076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output2076_skip]
  kernel_rfl

theorem node2078_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value243 value1 value2 = (output460, value243, value1))
    (child2077 : Flapjack.WordAlloc.removeDeadStructural input2077 value243 value1 value2 = (output2077, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2078 value243 value1 value2 = (output2078, value833, value1) := by
  rw [input2078_def, output2078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child2077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output2077_skip]
  kernel_rfl

theorem node2079_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value242 value1 value2 = (output459, value243, value1))
    (child2078 : Flapjack.WordAlloc.removeDeadStructural input2078 value243 value1 value2 = (output2078, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2079 value242 value1 value2 = (output2079, value833, value1) := by
  rw [input2079_def, output2079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child2078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output2078_skip]
  kernel_rfl

theorem node2080_cond_eq
    (child458 : Flapjack.WordAlloc.removeDeadStructural input458 value241 value1 value2 = (output458, value242, value1))
    (child2079 : Flapjack.WordAlloc.removeDeadStructural input2079 value242 value1 value2 = (output2079, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2080 value241 value1 value2 = (output2080, value833, value1) := by
  rw [input2080_def, output2080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child458]
  try dsimp only
  rw [child2079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output458_skip, output2079_skip]
  kernel_rfl

theorem node2081_cond_eq
    (child457 : Flapjack.WordAlloc.removeDeadStructural input457 value181 value1 value2 = (output457, value241, value1))
    (child2080 : Flapjack.WordAlloc.removeDeadStructural input2080 value241 value1 value2 = (output2080, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2081 value181 value1 value2 = (output2081, value833, value1) := by
  rw [input2081_def, output2081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child457]
  try dsimp only
  rw [child2080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output457_skip, output2080_skip]
  kernel_rfl

theorem node2082_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value181 value1 value2 = (output274, value181, value1))
    (child2081 : Flapjack.WordAlloc.removeDeadStructural input2081 value181 value1 value2 = (output2081, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2082 value181 value1 value2 = (output2082, value833, value1) := by
  rw [input2082_def, output2082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child2081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output2081_skip]
  kernel_rfl

theorem node2083_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value180 value1 value2 = (output273, value181, value1))
    (child2082 : Flapjack.WordAlloc.removeDeadStructural input2082 value181 value1 value2 = (output2082, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2083 value180 value1 value2 = (output2083, value833, value1) := by
  rw [input2083_def, output2083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child2082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output2082_skip]
  kernel_rfl

theorem node2084_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value177 value1 value2 = (output272, value180, value1))
    (child2083 : Flapjack.WordAlloc.removeDeadStructural input2083 value180 value1 value2 = (output2083, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2084 value177 value1 value2 = (output2084, value833, value1) := by
  rw [input2084_def, output2084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child2083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output2083_skip]
  kernel_rfl

theorem node2085_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value177 value1 value2 = (output267, value177, value1))
    (child2084 : Flapjack.WordAlloc.removeDeadStructural input2084 value177 value1 value2 = (output2084, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2085 value177 value1 value2 = (output2085, value833, value1) := by
  rw [input2085_def, output2085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child2084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output2084_skip]
  kernel_rfl

theorem node2086_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value176 value1 value2 = (output266, value177, value1))
    (child2085 : Flapjack.WordAlloc.removeDeadStructural input2085 value177 value1 value2 = (output2085, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2086 value176 value1 value2 = (output2086, value833, value1) := by
  rw [input2086_def, output2086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child2085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output2085_skip]
  kernel_rfl

theorem node2087_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value173 value1 value2 = (output265, value176, value1))
    (child2086 : Flapjack.WordAlloc.removeDeadStructural input2086 value176 value1 value2 = (output2086, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2087 value173 value1 value2 = (output2087, value833, value1) := by
  rw [input2087_def, output2087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child2086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output2086_skip]
  kernel_rfl

theorem node2088_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value173 value1 value2 = (output260, value173, value1))
    (child2087 : Flapjack.WordAlloc.removeDeadStructural input2087 value173 value1 value2 = (output2087, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2088 value173 value1 value2 = (output2088, value833, value1) := by
  rw [input2088_def, output2088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child2087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output2087_skip]
  kernel_rfl

theorem node2089_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value172 value1 value2 = (output259, value173, value1))
    (child2088 : Flapjack.WordAlloc.removeDeadStructural input2088 value173 value1 value2 = (output2088, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2089 value172 value1 value2 = (output2089, value833, value1) := by
  rw [input2089_def, output2089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child2088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output2088_skip]
  kernel_rfl

theorem node2090_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value169 value1 value2 = (output258, value172, value1))
    (child2089 : Flapjack.WordAlloc.removeDeadStructural input2089 value172 value1 value2 = (output2089, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2090 value169 value1 value2 = (output2090, value833, value1) := by
  rw [input2090_def, output2090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child2089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output2089_skip]
  kernel_rfl

theorem node2091_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value169 value1 value2 = (output253, value169, value1))
    (child2090 : Flapjack.WordAlloc.removeDeadStructural input2090 value169 value1 value2 = (output2090, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2091 value169 value1 value2 = (output2091, value833, value1) := by
  rw [input2091_def, output2091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child2090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output2090_skip]
  kernel_rfl

theorem node2092_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value168 value1 value2 = (output252, value169, value1))
    (child2091 : Flapjack.WordAlloc.removeDeadStructural input2091 value169 value1 value2 = (output2091, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2092 value168 value1 value2 = (output2092, value833, value1) := by
  rw [input2092_def, output2092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child2091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output2091_skip]
  kernel_rfl

theorem node2093_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value165 value1 value2 = (output251, value168, value1))
    (child2092 : Flapjack.WordAlloc.removeDeadStructural input2092 value168 value1 value2 = (output2092, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2093 value165 value1 value2 = (output2093, value833, value1) := by
  rw [input2093_def, output2093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child2092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output2092_skip]
  kernel_rfl

theorem node2094_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value165 value1 value2 = (output246, value165, value1))
    (child2093 : Flapjack.WordAlloc.removeDeadStructural input2093 value165 value1 value2 = (output2093, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2094 value165 value1 value2 = (output2094, value833, value1) := by
  rw [input2094_def, output2094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  try dsimp only
  rw [child2093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output246_skip, output2093_skip]
  kernel_rfl

theorem node2095_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value164 value1 value2 = (output245, value165, value1))
    (child2094 : Flapjack.WordAlloc.removeDeadStructural input2094 value165 value1 value2 = (output2094, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2095 value164 value1 value2 = (output2095, value833, value1) := by
  rw [input2095_def, output2095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child2094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output2094_skip]
  kernel_rfl

theorem node2096_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value161 value1 value2 = (output244, value164, value1))
    (child2095 : Flapjack.WordAlloc.removeDeadStructural input2095 value164 value1 value2 = (output2095, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2096 value161 value1 value2 = (output2096, value833, value1) := by
  rw [input2096_def, output2096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child2095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output2095_skip]
  kernel_rfl

theorem node2097_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value161 value1 value2 = (output239, value161, value1))
    (child2096 : Flapjack.WordAlloc.removeDeadStructural input2096 value161 value1 value2 = (output2096, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2097 value161 value1 value2 = (output2097, value833, value1) := by
  rw [input2097_def, output2097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child2096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output239_skip, output2096_skip]
  kernel_rfl

theorem node2098_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value160 value1 value2 = (output238, value161, value1))
    (child2097 : Flapjack.WordAlloc.removeDeadStructural input2097 value161 value1 value2 = (output2097, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2098 value160 value1 value2 = (output2098, value833, value1) := by
  rw [input2098_def, output2098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child2097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output2097_skip]
  kernel_rfl

theorem node2099_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value157 value1 value2 = (output237, value160, value1))
    (child2098 : Flapjack.WordAlloc.removeDeadStructural input2098 value160 value1 value2 = (output2098, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2099 value157 value1 value2 = (output2099, value833, value1) := by
  rw [input2099_def, output2099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child2098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output2098_skip]
  kernel_rfl

theorem node2100_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value157 value1 value2 = (output232, value157, value1))
    (child2099 : Flapjack.WordAlloc.removeDeadStructural input2099 value157 value1 value2 = (output2099, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2100 value157 value1 value2 = (output2100, value833, value1) := by
  rw [input2100_def, output2100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child2099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output2099_skip]
  kernel_rfl

theorem node2101_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value156 value1 value2 = (output231, value157, value1))
    (child2100 : Flapjack.WordAlloc.removeDeadStructural input2100 value157 value1 value2 = (output2100, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2101 value156 value1 value2 = (output2101, value833, value1) := by
  rw [input2101_def, output2101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child2100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output2100_skip]
  kernel_rfl

theorem node2102_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value153 value1 value2 = (output230, value156, value1))
    (child2101 : Flapjack.WordAlloc.removeDeadStructural input2101 value156 value1 value2 = (output2101, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2102 value153 value1 value2 = (output2102, value833, value1) := by
  rw [input2102_def, output2102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child2101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output2101_skip]
  kernel_rfl

theorem node2103_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value153 value1 value2 = (output225, value153, value1))
    (child2102 : Flapjack.WordAlloc.removeDeadStructural input2102 value153 value1 value2 = (output2102, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2103 value153 value1 value2 = (output2103, value833, value1) := by
  rw [input2103_def, output2103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child2102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output2102_skip]
  kernel_rfl

theorem node2104_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value152 value1 value2 = (output224, value153, value1))
    (child2103 : Flapjack.WordAlloc.removeDeadStructural input2103 value153 value1 value2 = (output2103, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2104 value152 value1 value2 = (output2104, value833, value1) := by
  rw [input2104_def, output2104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child2103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output2103_skip]
  kernel_rfl

theorem node2105_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value149 value1 value2 = (output223, value152, value1))
    (child2104 : Flapjack.WordAlloc.removeDeadStructural input2104 value152 value1 value2 = (output2104, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2105 value149 value1 value2 = (output2105, value833, value1) := by
  rw [input2105_def, output2105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  try dsimp only
  rw [child2104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output223_skip, output2104_skip]
  kernel_rfl

theorem node2106_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value149 value1 value2 = (output218, value149, value1))
    (child2105 : Flapjack.WordAlloc.removeDeadStructural input2105 value149 value1 value2 = (output2105, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2106 value149 value1 value2 = (output2106, value833, value1) := by
  rw [input2106_def, output2106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child2105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output2105_skip]
  kernel_rfl

theorem node2107_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value148 value1 value2 = (output217, value149, value1))
    (child2106 : Flapjack.WordAlloc.removeDeadStructural input2106 value149 value1 value2 = (output2106, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2107 value148 value1 value2 = (output2107, value833, value1) := by
  rw [input2107_def, output2107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child2106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output2106_skip]
  kernel_rfl

theorem node2108_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value147 value1 value2 = (output216, value148, value1))
    (child2107 : Flapjack.WordAlloc.removeDeadStructural input2107 value148 value1 value2 = (output2107, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2108 value147 value1 value2 = (output2108, value833, value1) := by
  rw [input2108_def, output2108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child2107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output2107_skip]
  kernel_rfl

theorem node2109_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value146 value1 value2 = (output215, value147, value1))
    (child2108 : Flapjack.WordAlloc.removeDeadStructural input2108 value147 value1 value2 = (output2108, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2109 value146 value1 value2 = (output2109, value833, value1) := by
  rw [input2109_def, output2109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child2108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output2108_skip]
  kernel_rfl

theorem node2110_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value145 value1 value2 = (output214, value146, value1))
    (child2109 : Flapjack.WordAlloc.removeDeadStructural input2109 value146 value1 value2 = (output2109, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2110 value145 value1 value2 = (output2110, value833, value1) := by
  rw [input2110_def, output2110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child2109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output2109_skip]
  kernel_rfl

theorem node2111_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value142 value1 value2 = (output213, value145, value1))
    (child2110 : Flapjack.WordAlloc.removeDeadStructural input2110 value145 value1 value2 = (output2110, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2111 value142 value1 value2 = (output2111, value833, value1) := by
  rw [input2111_def, output2111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child2110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output2110_skip]
  kernel_rfl

theorem node2112_cond_eq
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value142 value1 value2 = (output208, value142, value1))
    (child2111 : Flapjack.WordAlloc.removeDeadStructural input2111 value142 value1 value2 = (output2111, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2112 value142 value1 value2 = (output2112, value833, value1) := by
  rw [input2112_def, output2112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child208]
  try dsimp only
  rw [child2111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output208_skip, output2111_skip]
  kernel_rfl

theorem node2113_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value141 value1 value2 = (output207, value142, value1))
    (child2112 : Flapjack.WordAlloc.removeDeadStructural input2112 value142 value1 value2 = (output2112, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2113 value141 value1 value2 = (output2113, value833, value1) := by
  rw [input2113_def, output2113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child2112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output2112_skip]
  kernel_rfl

theorem node2114_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value140 value1 value2 = (output206, value141, value1))
    (child2113 : Flapjack.WordAlloc.removeDeadStructural input2113 value141 value1 value2 = (output2113, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2114 value140 value1 value2 = (output2114, value833, value1) := by
  rw [input2114_def, output2114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child2113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output2113_skip]
  kernel_rfl

theorem node2115_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value139 value1 value2 = (output205, value140, value1))
    (child2114 : Flapjack.WordAlloc.removeDeadStructural input2114 value140 value1 value2 = (output2114, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2115 value139 value1 value2 = (output2115, value833, value1) := by
  rw [input2115_def, output2115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child2114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output2114_skip]
  kernel_rfl

theorem node2116_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value138 value1 value2 = (output204, value139, value1))
    (child2115 : Flapjack.WordAlloc.removeDeadStructural input2115 value139 value1 value2 = (output2115, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2116 value138 value1 value2 = (output2116, value833, value1) := by
  rw [input2116_def, output2116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child2115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output2115_skip]
  kernel_rfl

theorem node2117_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value135 value1 value2 = (output203, value138, value1))
    (child2116 : Flapjack.WordAlloc.removeDeadStructural input2116 value138 value1 value2 = (output2116, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2117 value135 value1 value2 = (output2117, value833, value1) := by
  rw [input2117_def, output2117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child2116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output2116_skip]
  kernel_rfl

theorem node2118_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value135 value1 value2 = (output198, value135, value1))
    (child2117 : Flapjack.WordAlloc.removeDeadStructural input2117 value135 value1 value2 = (output2117, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2118 value135 value1 value2 = (output2118, value833, value1) := by
  rw [input2118_def, output2118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child2117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output2117_skip]
  kernel_rfl

theorem node2119_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value134 value1 value2 = (output197, value135, value1))
    (child2118 : Flapjack.WordAlloc.removeDeadStructural input2118 value135 value1 value2 = (output2118, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2119 value134 value1 value2 = (output2119, value833, value1) := by
  rw [input2119_def, output2119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  try dsimp only
  rw [child2118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output197_skip, output2118_skip]
  kernel_rfl

theorem node2120_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value133 value1 value2 = (output196, value134, value1))
    (child2119 : Flapjack.WordAlloc.removeDeadStructural input2119 value134 value1 value2 = (output2119, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2120 value133 value1 value2 = (output2120, value833, value1) := by
  rw [input2120_def, output2120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child2119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output2119_skip]
  kernel_rfl

theorem node2121_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value132 value1 value2 = (output195, value133, value1))
    (child2120 : Flapjack.WordAlloc.removeDeadStructural input2120 value133 value1 value2 = (output2120, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2121 value132 value1 value2 = (output2121, value833, value1) := by
  rw [input2121_def, output2121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child2120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output2120_skip]
  kernel_rfl

theorem node2122_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value129 value1 value2 = (output194, value132, value1))
    (child2121 : Flapjack.WordAlloc.removeDeadStructural input2121 value132 value1 value2 = (output2121, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2122 value129 value1 value2 = (output2122, value833, value1) := by
  rw [input2122_def, output2122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child2121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output2121_skip]
  kernel_rfl

theorem node2123_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value129 value1 value2 = (output189, value129, value1))
    (child2122 : Flapjack.WordAlloc.removeDeadStructural input2122 value129 value1 value2 = (output2122, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2123 value129 value1 value2 = (output2123, value833, value1) := by
  rw [input2123_def, output2123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child2122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output2122_skip]
  kernel_rfl

theorem node2124_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value128 value1 value2 = (output188, value129, value1))
    (child2123 : Flapjack.WordAlloc.removeDeadStructural input2123 value129 value1 value2 = (output2123, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2124 value128 value1 value2 = (output2124, value833, value1) := by
  rw [input2124_def, output2124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child2123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output2123_skip]
  kernel_rfl

theorem node2125_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value127 value1 value2 = (output187, value128, value1))
    (child2124 : Flapjack.WordAlloc.removeDeadStructural input2124 value128 value1 value2 = (output2124, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2125 value127 value1 value2 = (output2125, value833, value1) := by
  rw [input2125_def, output2125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child2124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output2124_skip]
  kernel_rfl

theorem node2126_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value126 value1 value2 = (output186, value127, value1))
    (child2125 : Flapjack.WordAlloc.removeDeadStructural input2125 value127 value1 value2 = (output2125, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2126 value126 value1 value2 = (output2126, value833, value1) := by
  rw [input2126_def, output2126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child2125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output2125_skip]
  kernel_rfl

theorem node2127_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value125 value1 value2 = (output185, value126, value1))
    (child2126 : Flapjack.WordAlloc.removeDeadStructural input2126 value126 value1 value2 = (output2126, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2127 value125 value1 value2 = (output2127, value833, value1) := by
  rw [input2127_def, output2127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child2126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output2126_skip]
  kernel_rfl

theorem node2128_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value122 value1 value2 = (output184, value125, value1))
    (child2127 : Flapjack.WordAlloc.removeDeadStructural input2127 value125 value1 value2 = (output2127, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2128 value122 value1 value2 = (output2128, value833, value1) := by
  rw [input2128_def, output2128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child2127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output2127_skip]
  kernel_rfl

theorem node2129_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value122 value1 value2 = (output179, value122, value1))
    (child2128 : Flapjack.WordAlloc.removeDeadStructural input2128 value122 value1 value2 = (output2128, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2129 value122 value1 value2 = (output2129, value833, value1) := by
  rw [input2129_def, output2129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child2128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output2128_skip]
  kernel_rfl

theorem node2130_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value121 value1 value2 = (output178, value122, value1))
    (child2129 : Flapjack.WordAlloc.removeDeadStructural input2129 value122 value1 value2 = (output2129, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2130 value121 value1 value2 = (output2130, value833, value1) := by
  rw [input2130_def, output2130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child2129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output2129_skip]
  kernel_rfl

theorem node2131_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value120 value1 value2 = (output177, value121, value1))
    (child2130 : Flapjack.WordAlloc.removeDeadStructural input2130 value121 value1 value2 = (output2130, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2131 value120 value1 value2 = (output2131, value833, value1) := by
  rw [input2131_def, output2131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child2130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output2130_skip]
  kernel_rfl

theorem node2132_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value119 value1 value2 = (output176, value120, value1))
    (child2131 : Flapjack.WordAlloc.removeDeadStructural input2131 value120 value1 value2 = (output2131, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2132 value119 value1 value2 = (output2132, value833, value1) := by
  rw [input2132_def, output2132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child2131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output2131_skip]
  kernel_rfl

theorem node2133_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value118 value1 value2 = (output175, value119, value1))
    (child2132 : Flapjack.WordAlloc.removeDeadStructural input2132 value119 value1 value2 = (output2132, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2133 value118 value1 value2 = (output2133, value833, value1) := by
  rw [input2133_def, output2133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child2132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output2132_skip]
  kernel_rfl

theorem node2134_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value115 value1 value2 = (output174, value118, value1))
    (child2133 : Flapjack.WordAlloc.removeDeadStructural input2133 value118 value1 value2 = (output2133, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2134 value115 value1 value2 = (output2134, value833, value1) := by
  rw [input2134_def, output2134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child2133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output2133_skip]
  kernel_rfl

theorem node2135_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value115 value1 value2 = (output169, value115, value1))
    (child2134 : Flapjack.WordAlloc.removeDeadStructural input2134 value115 value1 value2 = (output2134, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2135 value115 value1 value2 = (output2135, value833, value1) := by
  rw [input2135_def, output2135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child2134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output2134_skip]
  kernel_rfl

theorem node2136_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value114 value1 value2 = (output168, value115, value1))
    (child2135 : Flapjack.WordAlloc.removeDeadStructural input2135 value115 value1 value2 = (output2135, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2136 value114 value1 value2 = (output2136, value833, value1) := by
  rw [input2136_def, output2136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child2135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output2135_skip]
  kernel_rfl

theorem node2137_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value113 value1 value2 = (output167, value114, value1))
    (child2136 : Flapjack.WordAlloc.removeDeadStructural input2136 value114 value1 value2 = (output2136, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2137 value113 value1 value2 = (output2137, value833, value1) := by
  rw [input2137_def, output2137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child2136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output2136_skip]
  kernel_rfl

theorem node2138_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value112 value1 value2 = (output166, value113, value1))
    (child2137 : Flapjack.WordAlloc.removeDeadStructural input2137 value113 value1 value2 = (output2137, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2138 value112 value1 value2 = (output2138, value833, value1) := by
  rw [input2138_def, output2138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child2137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output2137_skip]
  kernel_rfl

theorem node2139_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value111 value1 value2 = (output165, value112, value1))
    (child2138 : Flapjack.WordAlloc.removeDeadStructural input2138 value112 value1 value2 = (output2138, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2139 value111 value1 value2 = (output2139, value833, value1) := by
  rw [input2139_def, output2139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child2138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output2138_skip]
  kernel_rfl

theorem node2140_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value108 value1 value2 = (output164, value111, value1))
    (child2139 : Flapjack.WordAlloc.removeDeadStructural input2139 value111 value1 value2 = (output2139, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2140 value108 value1 value2 = (output2140, value833, value1) := by
  rw [input2140_def, output2140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child2139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output2139_skip]
  kernel_rfl

theorem node2141_cond_eq
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value108 value1 value2 = (output159, value108, value1))
    (child2140 : Flapjack.WordAlloc.removeDeadStructural input2140 value108 value1 value2 = (output2140, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2141 value108 value1 value2 = (output2141, value833, value1) := by
  rw [input2141_def, output2141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child159]
  try dsimp only
  rw [child2140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output159_skip, output2140_skip]
  kernel_rfl

theorem node2142_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value107 value1 value2 = (output158, value108, value1))
    (child2141 : Flapjack.WordAlloc.removeDeadStructural input2141 value108 value1 value2 = (output2141, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2142 value107 value1 value2 = (output2142, value833, value1) := by
  rw [input2142_def, output2142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  try dsimp only
  rw [child2141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output158_skip, output2141_skip]
  kernel_rfl

theorem node2143_cond_eq
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value106 value1 value2 = (output157, value107, value1))
    (child2142 : Flapjack.WordAlloc.removeDeadStructural input2142 value107 value1 value2 = (output2142, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2143 value106 value1 value2 = (output2143, value833, value1) := by
  rw [input2143_def, output2143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child157]
  try dsimp only
  rw [child2142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output157_skip, output2142_skip]
  kernel_rfl

theorem node2144_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value105 value1 value2 = (output156, value106, value1))
    (child2143 : Flapjack.WordAlloc.removeDeadStructural input2143 value106 value1 value2 = (output2143, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2144 value105 value1 value2 = (output2144, value833, value1) := by
  rw [input2144_def, output2144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child2143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output156_skip, output2143_skip]
  kernel_rfl

theorem node2145_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value102 value1 value2 = (output155, value105, value1))
    (child2144 : Flapjack.WordAlloc.removeDeadStructural input2144 value105 value1 value2 = (output2144, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2145 value102 value1 value2 = (output2145, value833, value1) := by
  rw [input2145_def, output2145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child2144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output2144_skip]
  kernel_rfl

theorem node2146_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value102 value1 value2 = (output150, value102, value1))
    (child2145 : Flapjack.WordAlloc.removeDeadStructural input2145 value102 value1 value2 = (output2145, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2146 value102 value1 value2 = (output2146, value833, value1) := by
  rw [input2146_def, output2146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child2145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output2145_skip]
  kernel_rfl

theorem node2147_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value101 value1 value2 = (output149, value102, value1))
    (child2146 : Flapjack.WordAlloc.removeDeadStructural input2146 value102 value1 value2 = (output2146, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2147 value101 value1 value2 = (output2147, value833, value1) := by
  rw [input2147_def, output2147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child2146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output2146_skip]
  kernel_rfl

theorem node2148_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value100 value1 value2 = (output148, value101, value1))
    (child2147 : Flapjack.WordAlloc.removeDeadStructural input2147 value101 value1 value2 = (output2147, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2148 value100 value1 value2 = (output2148, value833, value1) := by
  rw [input2148_def, output2148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child2147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output2147_skip]
  kernel_rfl

theorem node2149_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value99 value1 value2 = (output147, value100, value1))
    (child2148 : Flapjack.WordAlloc.removeDeadStructural input2148 value100 value1 value2 = (output2148, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2149 value99 value1 value2 = (output2149, value833, value1) := by
  rw [input2149_def, output2149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child2148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output2148_skip]
  kernel_rfl

theorem node2150_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value98 value1 value2 = (output146, value99, value1))
    (child2149 : Flapjack.WordAlloc.removeDeadStructural input2149 value99 value1 value2 = (output2149, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2150 value98 value1 value2 = (output2150, value833, value1) := by
  rw [input2150_def, output2150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child2149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output2149_skip]
  kernel_rfl

theorem node2151_cond_eq
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value95 value1 value2 = (output145, value98, value1))
    (child2150 : Flapjack.WordAlloc.removeDeadStructural input2150 value98 value1 value2 = (output2150, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2151 value95 value1 value2 = (output2151, value833, value1) := by
  rw [input2151_def, output2151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child145]
  try dsimp only
  rw [child2150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output145_skip, output2150_skip]
  kernel_rfl

theorem node2152_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value95 value1 value2 = (output140, value95, value1))
    (child2151 : Flapjack.WordAlloc.removeDeadStructural input2151 value95 value1 value2 = (output2151, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2152 value95 value1 value2 = (output2152, value833, value1) := by
  rw [input2152_def, output2152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  try dsimp only
  rw [child2151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output2151_skip]
  kernel_rfl

theorem node2153_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value94 value1 value2 = (output139, value95, value1))
    (child2152 : Flapjack.WordAlloc.removeDeadStructural input2152 value95 value1 value2 = (output2152, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2153 value94 value1 value2 = (output2153, value833, value1) := by
  rw [input2153_def, output2153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  try dsimp only
  rw [child2152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output139_skip, output2152_skip]
  kernel_rfl

theorem node2154_cond_eq
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value93 value1 value2 = (output138, value94, value1))
    (child2153 : Flapjack.WordAlloc.removeDeadStructural input2153 value94 value1 value2 = (output2153, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2154 value93 value1 value2 = (output2154, value833, value1) := by
  rw [input2154_def, output2154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child138]
  try dsimp only
  rw [child2153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output138_skip, output2153_skip]
  kernel_rfl

theorem node2155_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value92 value1 value2 = (output137, value93, value1))
    (child2154 : Flapjack.WordAlloc.removeDeadStructural input2154 value93 value1 value2 = (output2154, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2155 value92 value1 value2 = (output2155, value833, value1) := by
  rw [input2155_def, output2155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child2154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output2154_skip]
  kernel_rfl

theorem node2156_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value91 value1 value2 = (output136, value92, value1))
    (child2155 : Flapjack.WordAlloc.removeDeadStructural input2155 value92 value1 value2 = (output2155, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2156 value91 value1 value2 = (output2156, value833, value1) := by
  rw [input2156_def, output2156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child2155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output2155_skip]
  kernel_rfl

theorem node2157_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value88 value1 value2 = (output135, value91, value1))
    (child2156 : Flapjack.WordAlloc.removeDeadStructural input2156 value91 value1 value2 = (output2156, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2157 value88 value1 value2 = (output2157, value833, value1) := by
  rw [input2157_def, output2157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child2156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output2156_skip]
  kernel_rfl

theorem node2158_cond_eq
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value88 value1 value2 = (output130, value88, value1))
    (child2157 : Flapjack.WordAlloc.removeDeadStructural input2157 value88 value1 value2 = (output2157, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2158 value88 value1 value2 = (output2158, value833, value1) := by
  rw [input2158_def, output2158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child130]
  try dsimp only
  rw [child2157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output130_skip, output2157_skip]
  kernel_rfl

theorem node2159_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value87 value1 value2 = (output129, value88, value1))
    (child2158 : Flapjack.WordAlloc.removeDeadStructural input2158 value88 value1 value2 = (output2158, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2159 value87 value1 value2 = (output2159, value833, value1) := by
  rw [input2159_def, output2159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  try dsimp only
  rw [child2158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output129_skip, output2158_skip]
  kernel_rfl

theorem node2160_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value86 value1 value2 = (output128, value87, value1))
    (child2159 : Flapjack.WordAlloc.removeDeadStructural input2159 value87 value1 value2 = (output2159, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2160 value86 value1 value2 = (output2160, value833, value1) := by
  rw [input2160_def, output2160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  try dsimp only
  rw [child2159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output128_skip, output2159_skip]
  kernel_rfl

theorem node2161_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value85 value1 value2 = (output127, value86, value1))
    (child2160 : Flapjack.WordAlloc.removeDeadStructural input2160 value86 value1 value2 = (output2160, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2161 value85 value1 value2 = (output2161, value833, value1) := by
  rw [input2161_def, output2161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child2160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output2160_skip]
  kernel_rfl

theorem node2162_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value85 value1 value2 = (output126, value85, value1))
    (child2161 : Flapjack.WordAlloc.removeDeadStructural input2161 value85 value1 value2 = (output2161, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2162 value85 value1 value2 = (output2162, value833, value1) := by
  rw [input2162_def, output2162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child2161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output2161_skip]
  kernel_rfl

theorem node2163_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value81 value1 value2 = (output125, value85, value1))
    (child2162 : Flapjack.WordAlloc.removeDeadStructural input2162 value85 value1 value2 = (output2162, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2163 value81 value1 value2 = (output2163, value833, value1) := by
  rw [input2163_def, output2163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child2162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output2162_skip]
  kernel_rfl

theorem node2164_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value81 value1 value2 = (output118, value81, value1))
    (child2163 : Flapjack.WordAlloc.removeDeadStructural input2163 value81 value1 value2 = (output2163, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2164 value81 value1 value2 = (output2164, value833, value1) := by
  rw [input2164_def, output2164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child2163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output2163_skip]
  kernel_rfl

theorem node2165_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value80 value1 value2 = (output117, value81, value1))
    (child2164 : Flapjack.WordAlloc.removeDeadStructural input2164 value81 value1 value2 = (output2164, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2165 value80 value1 value2 = (output2165, value833, value1) := by
  rw [input2165_def, output2165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child2164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output2164_skip]
  kernel_rfl

theorem node2166_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value79 value1 value2 = (output116, value80, value1))
    (child2165 : Flapjack.WordAlloc.removeDeadStructural input2165 value80 value1 value2 = (output2165, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2166 value79 value1 value2 = (output2166, value833, value1) := by
  rw [input2166_def, output2166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  try dsimp only
  rw [child2165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output2165_skip]
  kernel_rfl

theorem node2167_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value78 value1 value2 = (output115, value79, value1))
    (child2166 : Flapjack.WordAlloc.removeDeadStructural input2166 value79 value1 value2 = (output2166, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2167 value78 value1 value2 = (output2167, value833, value1) := by
  rw [input2167_def, output2167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child2166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output2166_skip]
  kernel_rfl

theorem node2168_cond_eq
    (child114 : Flapjack.WordAlloc.removeDeadStructural input114 value77 value1 value2 = (output114, value78, value1))
    (child2167 : Flapjack.WordAlloc.removeDeadStructural input2167 value78 value1 value2 = (output2167, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2168 value77 value1 value2 = (output2168, value833, value1) := by
  rw [input2168_def, output2168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child114]
  try dsimp only
  rw [child2167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output114_skip, output2167_skip]
  kernel_rfl

theorem node2169_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value74 value1 value2 = (output113, value77, value1))
    (child2168 : Flapjack.WordAlloc.removeDeadStructural input2168 value77 value1 value2 = (output2168, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2169 value74 value1 value2 = (output2169, value833, value1) := by
  rw [input2169_def, output2169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child2168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output2168_skip]
  kernel_rfl

theorem node2170_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value74 value1 value2 = (output108, value74, value1))
    (child2169 : Flapjack.WordAlloc.removeDeadStructural input2169 value74 value1 value2 = (output2169, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2170 value74 value1 value2 = (output2170, value833, value1) := by
  rw [input2170_def, output2170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child2169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output2169_skip]
  kernel_rfl

theorem node2171_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value73 value1 value2 = (output107, value74, value1))
    (child2170 : Flapjack.WordAlloc.removeDeadStructural input2170 value74 value1 value2 = (output2170, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2171 value73 value1 value2 = (output2171, value833, value1) := by
  rw [input2171_def, output2171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child2170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output2170_skip]
  kernel_rfl

theorem node2172_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value72 value1 value2 = (output106, value73, value1))
    (child2171 : Flapjack.WordAlloc.removeDeadStructural input2171 value73 value1 value2 = (output2171, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2172 value72 value1 value2 = (output2172, value833, value1) := by
  rw [input2172_def, output2172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child2171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output2171_skip]
  kernel_rfl

theorem node2173_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value71 value1 value2 = (output105, value72, value1))
    (child2172 : Flapjack.WordAlloc.removeDeadStructural input2172 value72 value1 value2 = (output2172, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2173 value71 value1 value2 = (output2173, value833, value1) := by
  rw [input2173_def, output2173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child2172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output2172_skip]
  kernel_rfl

theorem node2174_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value70 value1 value2 = (output104, value71, value1))
    (child2173 : Flapjack.WordAlloc.removeDeadStructural input2173 value71 value1 value2 = (output2173, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2174 value70 value1 value2 = (output2174, value833, value1) := by
  rw [input2174_def, output2174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child2173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output2173_skip]
  kernel_rfl

theorem node2175_cond_eq
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value67 value1 value2 = (output103, value70, value1))
    (child2174 : Flapjack.WordAlloc.removeDeadStructural input2174 value70 value1 value2 = (output2174, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2175 value67 value1 value2 = (output2175, value833, value1) := by
  rw [input2175_def, output2175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child103]
  try dsimp only
  rw [child2174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output103_skip, output2174_skip]
  kernel_rfl

theorem node2176_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value67 value1 value2 = (output98, value67, value1))
    (child2175 : Flapjack.WordAlloc.removeDeadStructural input2175 value67 value1 value2 = (output2175, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2176 value67 value1 value2 = (output2176, value833, value1) := by
  rw [input2176_def, output2176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child2175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output2175_skip]
  kernel_rfl

theorem node2177_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value66 value1 value2 = (output97, value67, value1))
    (child2176 : Flapjack.WordAlloc.removeDeadStructural input2176 value67 value1 value2 = (output2176, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2177 value66 value1 value2 = (output2177, value833, value1) := by
  rw [input2177_def, output2177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child2176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output2176_skip]
  kernel_rfl

theorem node2178_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value65 value1 value2 = (output96, value66, value1))
    (child2177 : Flapjack.WordAlloc.removeDeadStructural input2177 value66 value1 value2 = (output2177, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2178 value65 value1 value2 = (output2178, value833, value1) := by
  rw [input2178_def, output2178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child2177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output2177_skip]
  kernel_rfl

theorem node2179_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value64 value1 value2 = (output95, value65, value1))
    (child2178 : Flapjack.WordAlloc.removeDeadStructural input2178 value65 value1 value2 = (output2178, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2179 value64 value1 value2 = (output2179, value833, value1) := by
  rw [input2179_def, output2179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child2178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output2178_skip]
  kernel_rfl

theorem node2180_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value63 value1 value2 = (output94, value64, value1))
    (child2179 : Flapjack.WordAlloc.removeDeadStructural input2179 value64 value1 value2 = (output2179, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2180 value63 value1 value2 = (output2180, value833, value1) := by
  rw [input2180_def, output2180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child2179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output2179_skip]
  kernel_rfl

theorem node2181_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value60 value1 value2 = (output93, value63, value1))
    (child2180 : Flapjack.WordAlloc.removeDeadStructural input2180 value63 value1 value2 = (output2180, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2181 value60 value1 value2 = (output2181, value833, value1) := by
  rw [input2181_def, output2181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child2180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output2180_skip]
  kernel_rfl

theorem node2182_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value60 value1 value2 = (output88, value60, value1))
    (child2181 : Flapjack.WordAlloc.removeDeadStructural input2181 value60 value1 value2 = (output2181, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2182 value60 value1 value2 = (output2182, value833, value1) := by
  rw [input2182_def, output2182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child2181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output2181_skip]
  kernel_rfl

theorem node2183_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value59 value1 value2 = (output87, value60, value1))
    (child2182 : Flapjack.WordAlloc.removeDeadStructural input2182 value60 value1 value2 = (output2182, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2183 value59 value1 value2 = (output2183, value833, value1) := by
  rw [input2183_def, output2183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child2182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output2182_skip]
  kernel_rfl

theorem node2184_cond_eq
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value58 value1 value2 = (output86, value59, value1))
    (child2183 : Flapjack.WordAlloc.removeDeadStructural input2183 value59 value1 value2 = (output2183, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2184 value58 value1 value2 = (output2184, value833, value1) := by
  rw [input2184_def, output2184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child86]
  try dsimp only
  rw [child2183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output86_skip, output2183_skip]
  kernel_rfl

theorem node2185_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value57 value1 value2 = (output85, value58, value1))
    (child2184 : Flapjack.WordAlloc.removeDeadStructural input2184 value58 value1 value2 = (output2184, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2185 value57 value1 value2 = (output2185, value833, value1) := by
  rw [input2185_def, output2185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child2184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output2184_skip]
  kernel_rfl

theorem node2186_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value56 value1 value2 = (output84, value57, value1))
    (child2185 : Flapjack.WordAlloc.removeDeadStructural input2185 value57 value1 value2 = (output2185, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2186 value56 value1 value2 = (output2186, value833, value1) := by
  rw [input2186_def, output2186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child2185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output2185_skip]
  kernel_rfl

theorem node2187_cond_eq
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value53 value1 value2 = (output83, value56, value1))
    (child2186 : Flapjack.WordAlloc.removeDeadStructural input2186 value56 value1 value2 = (output2186, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2187 value53 value1 value2 = (output2187, value833, value1) := by
  rw [input2187_def, output2187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child83]
  try dsimp only
  rw [child2186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output83_skip, output2186_skip]
  kernel_rfl

theorem node2188_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value53 value1 value2 = (output78, value53, value1))
    (child2187 : Flapjack.WordAlloc.removeDeadStructural input2187 value53 value1 value2 = (output2187, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2188 value53 value1 value2 = (output2188, value833, value1) := by
  rw [input2188_def, output2188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child2187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output2187_skip]
  kernel_rfl

theorem node2189_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value52 value1 value2 = (output77, value53, value1))
    (child2188 : Flapjack.WordAlloc.removeDeadStructural input2188 value53 value1 value2 = (output2188, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2189 value52 value1 value2 = (output2189, value833, value1) := by
  rw [input2189_def, output2189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child2188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output2188_skip]
  kernel_rfl

theorem node2190_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value51 value1 value2 = (output76, value52, value1))
    (child2189 : Flapjack.WordAlloc.removeDeadStructural input2189 value52 value1 value2 = (output2189, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2190 value51 value1 value2 = (output2190, value833, value1) := by
  rw [input2190_def, output2190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child2189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output2189_skip]
  kernel_rfl

theorem node2191_cond_eq
    (child75 : Flapjack.WordAlloc.removeDeadStructural input75 value50 value1 value2 = (output75, value51, value1))
    (child2190 : Flapjack.WordAlloc.removeDeadStructural input2190 value51 value1 value2 = (output2190, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2191 value50 value1 value2 = (output2191, value833, value1) := by
  rw [input2191_def, output2191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child75]
  try dsimp only
  rw [child2190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output75_skip, output2190_skip]
  kernel_rfl

theorem node2192_cond_eq
    (child74 : Flapjack.WordAlloc.removeDeadStructural input74 value49 value1 value2 = (output74, value50, value1))
    (child2191 : Flapjack.WordAlloc.removeDeadStructural input2191 value50 value1 value2 = (output2191, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2192 value49 value1 value2 = (output2192, value833, value1) := by
  rw [input2192_def, output2192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child74]
  try dsimp only
  rw [child2191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output74_skip, output2191_skip]
  kernel_rfl

theorem node2193_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value46 value1 value2 = (output73, value49, value1))
    (child2192 : Flapjack.WordAlloc.removeDeadStructural input2192 value49 value1 value2 = (output2192, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2193 value46 value1 value2 = (output2193, value833, value1) := by
  rw [input2193_def, output2193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child2192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output2192_skip]
  kernel_rfl

theorem node2194_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value46 value1 value2 = (output68, value46, value1))
    (child2193 : Flapjack.WordAlloc.removeDeadStructural input2193 value46 value1 value2 = (output2193, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2194 value46 value1 value2 = (output2194, value833, value1) := by
  rw [input2194_def, output2194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child2193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output2193_skip]
  kernel_rfl

theorem node2195_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value45 value1 value2 = (output67, value46, value1))
    (child2194 : Flapjack.WordAlloc.removeDeadStructural input2194 value46 value1 value2 = (output2194, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2195 value45 value1 value2 = (output2195, value833, value1) := by
  rw [input2195_def, output2195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child2194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output2194_skip]
  kernel_rfl

theorem node2196_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value44 value1 value2 = (output66, value45, value1))
    (child2195 : Flapjack.WordAlloc.removeDeadStructural input2195 value45 value1 value2 = (output2195, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2196 value44 value1 value2 = (output2196, value833, value1) := by
  rw [input2196_def, output2196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child2195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output2195_skip]
  kernel_rfl

theorem node2197_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value43 value1 value2 = (output65, value44, value1))
    (child2196 : Flapjack.WordAlloc.removeDeadStructural input2196 value44 value1 value2 = (output2196, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2197 value43 value1 value2 = (output2197, value833, value1) := by
  rw [input2197_def, output2197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child2196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output2196_skip]
  kernel_rfl

theorem node2198_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value42 value1 value2 = (output64, value43, value1))
    (child2197 : Flapjack.WordAlloc.removeDeadStructural input2197 value43 value1 value2 = (output2197, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2198 value42 value1 value2 = (output2198, value833, value1) := by
  rw [input2198_def, output2198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child2197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output2197_skip]
  kernel_rfl

theorem node2199_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value39 value1 value2 = (output63, value42, value1))
    (child2198 : Flapjack.WordAlloc.removeDeadStructural input2198 value42 value1 value2 = (output2198, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2199 value39 value1 value2 = (output2199, value833, value1) := by
  rw [input2199_def, output2199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child2198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output2198_skip]
  kernel_rfl

theorem node2200_cond_eq
    (child58 : Flapjack.WordAlloc.removeDeadStructural input58 value39 value1 value2 = (output58, value39, value1))
    (child2199 : Flapjack.WordAlloc.removeDeadStructural input2199 value39 value1 value2 = (output2199, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2200 value39 value1 value2 = (output2200, value833, value1) := by
  rw [input2200_def, output2200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child58]
  try dsimp only
  rw [child2199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output58_skip, output2199_skip]
  kernel_rfl

theorem node2201_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value38 value1 value2 = (output57, value39, value1))
    (child2200 : Flapjack.WordAlloc.removeDeadStructural input2200 value39 value1 value2 = (output2200, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2201 value38 value1 value2 = (output2201, value833, value1) := by
  rw [input2201_def, output2201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child2200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output2200_skip]
  kernel_rfl

theorem node2202_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value37 value1 value2 = (output56, value38, value1))
    (child2201 : Flapjack.WordAlloc.removeDeadStructural input2201 value38 value1 value2 = (output2201, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2202 value37 value1 value2 = (output2202, value833, value1) := by
  rw [input2202_def, output2202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child2201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output2201_skip]
  kernel_rfl

theorem node2203_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value36 value1 value2 = (output55, value37, value1))
    (child2202 : Flapjack.WordAlloc.removeDeadStructural input2202 value37 value1 value2 = (output2202, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2203 value36 value1 value2 = (output2203, value833, value1) := by
  rw [input2203_def, output2203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child2202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output2202_skip]
  kernel_rfl

theorem node2204_cond_eq
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value35 value1 value2 = (output54, value36, value1))
    (child2203 : Flapjack.WordAlloc.removeDeadStructural input2203 value36 value1 value2 = (output2203, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2204 value35 value1 value2 = (output2204, value833, value1) := by
  rw [input2204_def, output2204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child54]
  try dsimp only
  rw [child2203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output54_skip, output2203_skip]
  kernel_rfl

theorem node2205_cond_eq
    (child53 : Flapjack.WordAlloc.removeDeadStructural input53 value32 value1 value2 = (output53, value35, value1))
    (child2204 : Flapjack.WordAlloc.removeDeadStructural input2204 value35 value1 value2 = (output2204, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2205 value32 value1 value2 = (output2205, value833, value1) := by
  rw [input2205_def, output2205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child53]
  try dsimp only
  rw [child2204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output53_skip, output2204_skip]
  kernel_rfl

theorem node2206_cond_eq
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value32 value1 value2 = (output48, value32, value1))
    (child2205 : Flapjack.WordAlloc.removeDeadStructural input2205 value32 value1 value2 = (output2205, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2206 value32 value1 value2 = (output2206, value833, value1) := by
  rw [input2206_def, output2206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child48]
  try dsimp only
  rw [child2205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output48_skip, output2205_skip]
  kernel_rfl

theorem node2207_cond_eq
    (child47 : Flapjack.WordAlloc.removeDeadStructural input47 value31 value1 value2 = (output47, value32, value1))
    (child2206 : Flapjack.WordAlloc.removeDeadStructural input2206 value32 value1 value2 = (output2206, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2207 value31 value1 value2 = (output2207, value833, value1) := by
  rw [input2207_def, output2207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child47]
  try dsimp only
  rw [child2206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output47_skip, output2206_skip]
  kernel_rfl

theorem node2208_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value30 value1 value2 = (output46, value31, value1))
    (child2207 : Flapjack.WordAlloc.removeDeadStructural input2207 value31 value1 value2 = (output2207, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2208 value30 value1 value2 = (output2208, value833, value1) := by
  rw [input2208_def, output2208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  try dsimp only
  rw [child2207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output2207_skip]
  kernel_rfl

theorem node2209_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value29 value1 value2 = (output45, value30, value1))
    (child2208 : Flapjack.WordAlloc.removeDeadStructural input2208 value30 value1 value2 = (output2208, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2209 value29 value1 value2 = (output2209, value833, value1) := by
  rw [input2209_def, output2209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  try dsimp only
  rw [child2208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output2208_skip]
  kernel_rfl

theorem node2210_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value26 value1 value2 = (output44, value29, value1))
    (child2209 : Flapjack.WordAlloc.removeDeadStructural input2209 value29 value1 value2 = (output2209, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2210 value26 value1 value2 = (output2210, value833, value1) := by
  rw [input2210_def, output2210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child2209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output2209_skip]
  kernel_rfl

theorem node2211_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value26 value1 value2 = (output39, value26, value1))
    (child2210 : Flapjack.WordAlloc.removeDeadStructural input2210 value26 value1 value2 = (output2210, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2211 value26 value1 value2 = (output2211, value833, value1) := by
  rw [input2211_def, output2211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child2210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output2210_skip]
  kernel_rfl

theorem node2212_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value23 value1 value2 = (output38, value26, value1))
    (child2211 : Flapjack.WordAlloc.removeDeadStructural input2211 value26 value1 value2 = (output2211, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2212 value23 value1 value2 = (output2212, value833, value1) := by
  rw [input2212_def, output2212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child2211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output2211_skip]
  kernel_rfl

theorem node2213_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value22 value1 value2 = (output33, value23, value1))
    (child2212 : Flapjack.WordAlloc.removeDeadStructural input2212 value23 value1 value2 = (output2212, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2213 value22 value1 value2 = (output2213, value833, value1) := by
  rw [input2213_def, output2213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child2212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output2212_skip]
  kernel_rfl

theorem node2214_cond_eq
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value21 value1 value2 = (output32, value22, value1))
    (child2213 : Flapjack.WordAlloc.removeDeadStructural input2213 value22 value1 value2 = (output2213, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2214 value21 value1 value2 = (output2214, value833, value1) := by
  rw [input2214_def, output2214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child32]
  try dsimp only
  rw [child2213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output32_skip, output2213_skip]
  kernel_rfl

theorem node2215_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value18 value1 value2 = (output31, value21, value1))
    (child2214 : Flapjack.WordAlloc.removeDeadStructural input2214 value21 value1 value2 = (output2214, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2215 value18 value1 value2 = (output2215, value833, value1) := by
  rw [input2215_def, output2215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child2214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output2214_skip]
  kernel_rfl

theorem node2216_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value18 value1 value2 = (output26, value18, value1))
    (child2215 : Flapjack.WordAlloc.removeDeadStructural input2215 value18 value1 value2 = (output2215, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2216 value18 value1 value2 = (output2216, value833, value1) := by
  rw [input2216_def, output2216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child2215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output2215_skip]
  kernel_rfl

theorem node2217_cond_eq
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value14 value1 value2 = (output25, value18, value1))
    (child2216 : Flapjack.WordAlloc.removeDeadStructural input2216 value18 value1 value2 = (output2216, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2217 value14 value1 value2 = (output2217, value833, value1) := by
  rw [input2217_def, output2217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child25]
  try dsimp only
  rw [child2216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output25_skip, output2216_skip]
  kernel_rfl

theorem node2218_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value13 value1 value2 = (output18, value14, value1))
    (child2217 : Flapjack.WordAlloc.removeDeadStructural input2217 value14 value1 value2 = (output2217, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2218 value13 value1 value2 = (output2218, value833, value1) := by
  rw [input2218_def, output2218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child2217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output2217_skip]
  kernel_rfl

theorem node2219_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value12 value1 value2 = (output17, value13, value1))
    (child2218 : Flapjack.WordAlloc.removeDeadStructural input2218 value13 value1 value2 = (output2218, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2219 value12 value1 value2 = (output2219, value833, value1) := by
  rw [input2219_def, output2219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child2218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output2218_skip]
  kernel_rfl

theorem node2220_cond_eq
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value9 value1 value2 = (output16, value12, value1))
    (child2219 : Flapjack.WordAlloc.removeDeadStructural input2219 value12 value1 value2 = (output2219, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2220 value9 value1 value2 = (output2220, value833, value1) := by
  rw [input2220_def, output2220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child16]
  try dsimp only
  rw [child2219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output16_skip, output2219_skip]
  kernel_rfl

theorem node2221_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value9 value1 value2 = (output11, value9, value1))
    (child2220 : Flapjack.WordAlloc.removeDeadStructural input2220 value9 value1 value2 = (output2220, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2221 value9 value1 value2 = (output2221, value833, value1) := by
  rw [input2221_def, output2221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child2220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output2220_skip]
  kernel_rfl

theorem node2222_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value9, value1))
    (child2221 : Flapjack.WordAlloc.removeDeadStructural input2221 value9 value1 value2 = (output2221, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2222 value8 value1 value2 = (output2222, value833, value1) := by
  rw [input2222_def, output2222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child2221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output2221_skip]
  kernel_rfl

theorem node2223_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value8, value1))
    (child2222 : Flapjack.WordAlloc.removeDeadStructural input2222 value8 value1 value2 = (output2222, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2223 value5 value1 value2 = (output2223, value833, value1) := by
  rw [input2223_def, output2223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child2222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output2222_skip]
  kernel_rfl

theorem node2224_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child2223 : Flapjack.WordAlloc.removeDeadStructural input2223 value5 value1 value2 = (output2223, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2224 value5 value1 value2 = (output2224, value833, value1) := by
  rw [input2224_def, output2224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child2223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output2223_skip]
  kernel_rfl

theorem node2225_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child2224 : Flapjack.WordAlloc.removeDeadStructural input2224 value5 value1 value2 = (output2224, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2225 value4 value1 value2 = (output2225, value833, value1) := by
  rw [input2225_def, output2225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child2224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output2224_skip]
  kernel_rfl

theorem node2226_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child2225 : Flapjack.WordAlloc.removeDeadStructural input2225 value4 value1 value2 = (output2225, value833, value1)) : Flapjack.WordAlloc.removeDeadStructural input2226 value0 value1 value2 = (output2226, value833, value1) := by
  rw [input2226_def, output2226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child2225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output2225_skip]
  kernel_rfl

theorem node2227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2227 value833 value1 value2 = (output2227, value834, value1) := by
  rw [input2227_def, output2227_def]
  kernel_rfl

theorem node2228_cond_eq
    (child2226 : Flapjack.WordAlloc.removeDeadStructural input2226 value0 value1 value2 = (output2226, value833, value1))
    (child2227 : Flapjack.WordAlloc.removeDeadStructural input2227 value833 value1 value2 = (output2227, value834, value1)) : Flapjack.WordAlloc.removeDeadStructural input2228 value0 value1 value2 = (output2228, value834, value1) := by
  rw [input2228_def, output2228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2226]
  try dsimp only
  rw [child2227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2226_skip, output2227_skip]
  kernel_rfl

#print axioms node2228_cond_eq
end InitECandidate.Proofs.DeadStages692.Parallel
