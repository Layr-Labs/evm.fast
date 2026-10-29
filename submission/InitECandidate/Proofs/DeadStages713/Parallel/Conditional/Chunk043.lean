import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk043
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node11008_cond_eq
    (child11006 : Flapjack.WordAlloc.removeDeadStructural input11006 value5 value1 value2 = (output11006, value5507, value1))
    (child11007 : Flapjack.WordAlloc.removeDeadStructural input11007 value5507 value1 value2 = (output11007, value5508, value1)) : Flapjack.WordAlloc.removeDeadStructural input11008 value5 value1 value2 = (output11008, value5508, value1) := by
  rw [input11008_def, output11008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11006]
  dsimp only
  rw [child11007]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11006_skip, output11007_skip]
  kernel_rfl

theorem node11009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11009 value5508 value1 value2 = (output11009, value5509, value1) := by
  rw [input11009_def, output11009_def]
  kernel_rfl

theorem node11010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11010 value5509 value1 value2 = (output11010, value5509, value1) := by
  rw [input11010_def, output11010_def]
  kernel_rfl

theorem node11011_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11011 value5509 value1 value2 = (output11011, value5510, value1) := by
  rw [input11011_def, output11011_def]
  kernel_rfl

theorem node11012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11012 value5510 value1 value2 = (output11012, value5511, value1) := by
  rw [input11012_def, output11012_def]
  kernel_rfl

theorem node11013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11013 value5511 value1 value2 = (output11013, value5512, value1) := by
  rw [input11013_def, output11013_def]
  kernel_rfl

theorem node11014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11014 value5512 value1 value2 = (output11014, value5513, value1) := by
  rw [input11014_def, output11014_def]
  kernel_rfl

theorem node11015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11015 value5513 value1 value2 = (output11015, value5, value1) := by
  rw [input11015_def, output11015_def]
  kernel_rfl

theorem node11016_cond_eq
    (child11014 : Flapjack.WordAlloc.removeDeadStructural input11014 value5512 value1 value2 = (output11014, value5513, value1))
    (child11015 : Flapjack.WordAlloc.removeDeadStructural input11015 value5513 value1 value2 = (output11015, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11016 value5512 value1 value2 = (output11016, value5, value1) := by
  rw [input11016_def, output11016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11014]
  dsimp only
  rw [child11015]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11014_skip, output11015_skip]
  kernel_rfl

theorem node11017_cond_eq
    (child11013 : Flapjack.WordAlloc.removeDeadStructural input11013 value5511 value1 value2 = (output11013, value5512, value1))
    (child11016 : Flapjack.WordAlloc.removeDeadStructural input11016 value5512 value1 value2 = (output11016, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11017 value5511 value1 value2 = (output11017, value5, value1) := by
  rw [input11017_def, output11017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11013]
  dsimp only
  rw [child11016]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11013_skip, output11016_skip]
  kernel_rfl

theorem node11018_cond_eq
    (child11012 : Flapjack.WordAlloc.removeDeadStructural input11012 value5510 value1 value2 = (output11012, value5511, value1))
    (child11017 : Flapjack.WordAlloc.removeDeadStructural input11017 value5511 value1 value2 = (output11017, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11018 value5510 value1 value2 = (output11018, value5, value1) := by
  rw [input11018_def, output11018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11012]
  dsimp only
  rw [child11017]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11012_skip, output11017_skip]
  kernel_rfl

theorem node11019_cond_eq
    (child11011 : Flapjack.WordAlloc.removeDeadStructural input11011 value5509 value1 value2 = (output11011, value5510, value1))
    (child11018 : Flapjack.WordAlloc.removeDeadStructural input11018 value5510 value1 value2 = (output11018, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11019 value5509 value1 value2 = (output11019, value5, value1) := by
  rw [input11019_def, output11019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11011]
  dsimp only
  rw [child11018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11011_skip, output11018_skip]
  kernel_rfl

theorem node11020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11020 value5 value1 value2 = (output11020, value5514, value1) := by
  rw [input11020_def, output11020_def]
  kernel_rfl

theorem node11021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11021 value5514 value1 value2 = (output11021, value5515, value1) := by
  rw [input11021_def, output11021_def]
  kernel_rfl

theorem node11022_cond_eq
    (child11020 : Flapjack.WordAlloc.removeDeadStructural input11020 value5 value1 value2 = (output11020, value5514, value1))
    (child11021 : Flapjack.WordAlloc.removeDeadStructural input11021 value5514 value1 value2 = (output11021, value5515, value1)) : Flapjack.WordAlloc.removeDeadStructural input11022 value5 value1 value2 = (output11022, value5515, value1) := by
  rw [input11022_def, output11022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11020]
  dsimp only
  rw [child11021]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11020_skip, output11021_skip]
  kernel_rfl

theorem node11023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11023 value5515 value1 value2 = (output11023, value5516, value1) := by
  rw [input11023_def, output11023_def]
  kernel_rfl

theorem node11024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11024 value5516 value1 value2 = (output11024, value5516, value1) := by
  rw [input11024_def, output11024_def]
  kernel_rfl

theorem node11025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11025 value5516 value1 value2 = (output11025, value5517, value1) := by
  rw [input11025_def, output11025_def]
  kernel_rfl

theorem node11026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11026 value5517 value1 value2 = (output11026, value5518, value1) := by
  rw [input11026_def, output11026_def]
  kernel_rfl

theorem node11027_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11027 value5518 value1 value2 = (output11027, value5519, value1) := by
  rw [input11027_def, output11027_def]
  kernel_rfl

theorem node11028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11028 value5519 value1 value2 = (output11028, value5520, value1) := by
  rw [input11028_def, output11028_def]
  kernel_rfl

theorem node11029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11029 value5520 value1 value2 = (output11029, value5, value1) := by
  rw [input11029_def, output11029_def]
  kernel_rfl

theorem node11030_cond_eq
    (child11028 : Flapjack.WordAlloc.removeDeadStructural input11028 value5519 value1 value2 = (output11028, value5520, value1))
    (child11029 : Flapjack.WordAlloc.removeDeadStructural input11029 value5520 value1 value2 = (output11029, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11030 value5519 value1 value2 = (output11030, value5, value1) := by
  rw [input11030_def, output11030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11028]
  dsimp only
  rw [child11029]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11028_skip, output11029_skip]
  kernel_rfl

theorem node11031_cond_eq
    (child11027 : Flapjack.WordAlloc.removeDeadStructural input11027 value5518 value1 value2 = (output11027, value5519, value1))
    (child11030 : Flapjack.WordAlloc.removeDeadStructural input11030 value5519 value1 value2 = (output11030, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11031 value5518 value1 value2 = (output11031, value5, value1) := by
  rw [input11031_def, output11031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11027]
  dsimp only
  rw [child11030]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11027_skip, output11030_skip]
  kernel_rfl

theorem node11032_cond_eq
    (child11026 : Flapjack.WordAlloc.removeDeadStructural input11026 value5517 value1 value2 = (output11026, value5518, value1))
    (child11031 : Flapjack.WordAlloc.removeDeadStructural input11031 value5518 value1 value2 = (output11031, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11032 value5517 value1 value2 = (output11032, value5, value1) := by
  rw [input11032_def, output11032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11026]
  dsimp only
  rw [child11031]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11026_skip, output11031_skip]
  kernel_rfl

theorem node11033_cond_eq
    (child11025 : Flapjack.WordAlloc.removeDeadStructural input11025 value5516 value1 value2 = (output11025, value5517, value1))
    (child11032 : Flapjack.WordAlloc.removeDeadStructural input11032 value5517 value1 value2 = (output11032, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11033 value5516 value1 value2 = (output11033, value5, value1) := by
  rw [input11033_def, output11033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11025]
  dsimp only
  rw [child11032]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11025_skip, output11032_skip]
  kernel_rfl

theorem node11034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11034 value5 value1 value2 = (output11034, value5521, value1) := by
  rw [input11034_def, output11034_def]
  kernel_rfl

theorem node11035_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11035 value5521 value1 value2 = (output11035, value5522, value1) := by
  rw [input11035_def, output11035_def]
  kernel_rfl

theorem node11036_cond_eq
    (child11034 : Flapjack.WordAlloc.removeDeadStructural input11034 value5 value1 value2 = (output11034, value5521, value1))
    (child11035 : Flapjack.WordAlloc.removeDeadStructural input11035 value5521 value1 value2 = (output11035, value5522, value1)) : Flapjack.WordAlloc.removeDeadStructural input11036 value5 value1 value2 = (output11036, value5522, value1) := by
  rw [input11036_def, output11036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11034]
  dsimp only
  rw [child11035]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11034_skip, output11035_skip]
  kernel_rfl

theorem node11037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11037 value5522 value1 value2 = (output11037, value5523, value1) := by
  rw [input11037_def, output11037_def]
  kernel_rfl

theorem node11038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11038 value5523 value1 value2 = (output11038, value5523, value1) := by
  rw [input11038_def, output11038_def]
  kernel_rfl

theorem node11039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11039 value5523 value1 value2 = (output11039, value5524, value1) := by
  rw [input11039_def, output11039_def]
  kernel_rfl

theorem node11040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11040 value5524 value1 value2 = (output11040, value5525, value1) := by
  rw [input11040_def, output11040_def]
  kernel_rfl

theorem node11041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11041 value5525 value1 value2 = (output11041, value5526, value1) := by
  rw [input11041_def, output11041_def]
  kernel_rfl

theorem node11042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11042 value5526 value1 value2 = (output11042, value5527, value1) := by
  rw [input11042_def, output11042_def]
  kernel_rfl

theorem node11043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11043 value5527 value1 value2 = (output11043, value5, value1) := by
  rw [input11043_def, output11043_def]
  kernel_rfl

theorem node11044_cond_eq
    (child11042 : Flapjack.WordAlloc.removeDeadStructural input11042 value5526 value1 value2 = (output11042, value5527, value1))
    (child11043 : Flapjack.WordAlloc.removeDeadStructural input11043 value5527 value1 value2 = (output11043, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11044 value5526 value1 value2 = (output11044, value5, value1) := by
  rw [input11044_def, output11044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11042]
  dsimp only
  rw [child11043]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11042_skip, output11043_skip]
  kernel_rfl

theorem node11045_cond_eq
    (child11041 : Flapjack.WordAlloc.removeDeadStructural input11041 value5525 value1 value2 = (output11041, value5526, value1))
    (child11044 : Flapjack.WordAlloc.removeDeadStructural input11044 value5526 value1 value2 = (output11044, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11045 value5525 value1 value2 = (output11045, value5, value1) := by
  rw [input11045_def, output11045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11041]
  dsimp only
  rw [child11044]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11041_skip, output11044_skip]
  kernel_rfl

theorem node11046_cond_eq
    (child11040 : Flapjack.WordAlloc.removeDeadStructural input11040 value5524 value1 value2 = (output11040, value5525, value1))
    (child11045 : Flapjack.WordAlloc.removeDeadStructural input11045 value5525 value1 value2 = (output11045, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11046 value5524 value1 value2 = (output11046, value5, value1) := by
  rw [input11046_def, output11046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11040]
  dsimp only
  rw [child11045]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11040_skip, output11045_skip]
  kernel_rfl

theorem node11047_cond_eq
    (child11039 : Flapjack.WordAlloc.removeDeadStructural input11039 value5523 value1 value2 = (output11039, value5524, value1))
    (child11046 : Flapjack.WordAlloc.removeDeadStructural input11046 value5524 value1 value2 = (output11046, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11047 value5523 value1 value2 = (output11047, value5, value1) := by
  rw [input11047_def, output11047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11039]
  dsimp only
  rw [child11046]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11039_skip, output11046_skip]
  kernel_rfl

theorem node11048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11048 value5 value1 value2 = (output11048, value5528, value1) := by
  rw [input11048_def, output11048_def]
  kernel_rfl

theorem node11049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11049 value5528 value1 value2 = (output11049, value5529, value1) := by
  rw [input11049_def, output11049_def]
  kernel_rfl

theorem node11050_cond_eq
    (child11048 : Flapjack.WordAlloc.removeDeadStructural input11048 value5 value1 value2 = (output11048, value5528, value1))
    (child11049 : Flapjack.WordAlloc.removeDeadStructural input11049 value5528 value1 value2 = (output11049, value5529, value1)) : Flapjack.WordAlloc.removeDeadStructural input11050 value5 value1 value2 = (output11050, value5529, value1) := by
  rw [input11050_def, output11050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11048]
  dsimp only
  rw [child11049]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11048_skip, output11049_skip]
  kernel_rfl

theorem node11051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11051 value5529 value1 value2 = (output11051, value5530, value1) := by
  rw [input11051_def, output11051_def]
  kernel_rfl

theorem node11052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11052 value5530 value1 value2 = (output11052, value5530, value1) := by
  rw [input11052_def, output11052_def]
  kernel_rfl

theorem node11053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11053 value5530 value1 value2 = (output11053, value5531, value1) := by
  rw [input11053_def, output11053_def]
  kernel_rfl

theorem node11054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11054 value5531 value1 value2 = (output11054, value5532, value1) := by
  rw [input11054_def, output11054_def]
  kernel_rfl

theorem node11055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11055 value5532 value1 value2 = (output11055, value5533, value1) := by
  rw [input11055_def, output11055_def]
  kernel_rfl

theorem node11056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11056 value5533 value1 value2 = (output11056, value5534, value1) := by
  rw [input11056_def, output11056_def]
  kernel_rfl

theorem node11057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11057 value5534 value1 value2 = (output11057, value5, value1) := by
  rw [input11057_def, output11057_def]
  kernel_rfl

theorem node11058_cond_eq
    (child11056 : Flapjack.WordAlloc.removeDeadStructural input11056 value5533 value1 value2 = (output11056, value5534, value1))
    (child11057 : Flapjack.WordAlloc.removeDeadStructural input11057 value5534 value1 value2 = (output11057, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11058 value5533 value1 value2 = (output11058, value5, value1) := by
  rw [input11058_def, output11058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11056]
  dsimp only
  rw [child11057]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11056_skip, output11057_skip]
  kernel_rfl

theorem node11059_cond_eq
    (child11055 : Flapjack.WordAlloc.removeDeadStructural input11055 value5532 value1 value2 = (output11055, value5533, value1))
    (child11058 : Flapjack.WordAlloc.removeDeadStructural input11058 value5533 value1 value2 = (output11058, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11059 value5532 value1 value2 = (output11059, value5, value1) := by
  rw [input11059_def, output11059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11055]
  dsimp only
  rw [child11058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11055_skip, output11058_skip]
  kernel_rfl

theorem node11060_cond_eq
    (child11054 : Flapjack.WordAlloc.removeDeadStructural input11054 value5531 value1 value2 = (output11054, value5532, value1))
    (child11059 : Flapjack.WordAlloc.removeDeadStructural input11059 value5532 value1 value2 = (output11059, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11060 value5531 value1 value2 = (output11060, value5, value1) := by
  rw [input11060_def, output11060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11054]
  dsimp only
  rw [child11059]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11054_skip, output11059_skip]
  kernel_rfl

theorem node11061_cond_eq
    (child11053 : Flapjack.WordAlloc.removeDeadStructural input11053 value5530 value1 value2 = (output11053, value5531, value1))
    (child11060 : Flapjack.WordAlloc.removeDeadStructural input11060 value5531 value1 value2 = (output11060, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11061 value5530 value1 value2 = (output11061, value5, value1) := by
  rw [input11061_def, output11061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11053]
  dsimp only
  rw [child11060]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11053_skip, output11060_skip]
  kernel_rfl

theorem node11062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11062 value5 value1 value2 = (output11062, value5535, value1) := by
  rw [input11062_def, output11062_def]
  kernel_rfl

theorem node11063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11063 value5535 value1 value2 = (output11063, value5536, value1) := by
  rw [input11063_def, output11063_def]
  kernel_rfl

theorem node11064_cond_eq
    (child11062 : Flapjack.WordAlloc.removeDeadStructural input11062 value5 value1 value2 = (output11062, value5535, value1))
    (child11063 : Flapjack.WordAlloc.removeDeadStructural input11063 value5535 value1 value2 = (output11063, value5536, value1)) : Flapjack.WordAlloc.removeDeadStructural input11064 value5 value1 value2 = (output11064, value5536, value1) := by
  rw [input11064_def, output11064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11062]
  dsimp only
  rw [child11063]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11062_skip, output11063_skip]
  kernel_rfl

theorem node11065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11065 value5536 value1 value2 = (output11065, value5537, value1) := by
  rw [input11065_def, output11065_def]
  kernel_rfl

theorem node11066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11066 value5537 value1 value2 = (output11066, value5537, value1) := by
  rw [input11066_def, output11066_def]
  kernel_rfl

theorem node11067_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11067 value5537 value1 value2 = (output11067, value5538, value1) := by
  rw [input11067_def, output11067_def]
  kernel_rfl

theorem node11068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11068 value5538 value1 value2 = (output11068, value5539, value1) := by
  rw [input11068_def, output11068_def]
  kernel_rfl

theorem node11069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11069 value5539 value1 value2 = (output11069, value5540, value1) := by
  rw [input11069_def, output11069_def]
  kernel_rfl

theorem node11070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11070 value5540 value1 value2 = (output11070, value5541, value1) := by
  rw [input11070_def, output11070_def]
  kernel_rfl

theorem node11071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11071 value5541 value1 value2 = (output11071, value5, value1) := by
  rw [input11071_def, output11071_def]
  kernel_rfl

theorem node11072_cond_eq
    (child11070 : Flapjack.WordAlloc.removeDeadStructural input11070 value5540 value1 value2 = (output11070, value5541, value1))
    (child11071 : Flapjack.WordAlloc.removeDeadStructural input11071 value5541 value1 value2 = (output11071, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11072 value5540 value1 value2 = (output11072, value5, value1) := by
  rw [input11072_def, output11072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11070]
  dsimp only
  rw [child11071]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11070_skip, output11071_skip]
  kernel_rfl

theorem node11073_cond_eq
    (child11069 : Flapjack.WordAlloc.removeDeadStructural input11069 value5539 value1 value2 = (output11069, value5540, value1))
    (child11072 : Flapjack.WordAlloc.removeDeadStructural input11072 value5540 value1 value2 = (output11072, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11073 value5539 value1 value2 = (output11073, value5, value1) := by
  rw [input11073_def, output11073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11069]
  dsimp only
  rw [child11072]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11069_skip, output11072_skip]
  kernel_rfl

theorem node11074_cond_eq
    (child11068 : Flapjack.WordAlloc.removeDeadStructural input11068 value5538 value1 value2 = (output11068, value5539, value1))
    (child11073 : Flapjack.WordAlloc.removeDeadStructural input11073 value5539 value1 value2 = (output11073, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11074 value5538 value1 value2 = (output11074, value5, value1) := by
  rw [input11074_def, output11074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11068]
  dsimp only
  rw [child11073]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11068_skip, output11073_skip]
  kernel_rfl

theorem node11075_cond_eq
    (child11067 : Flapjack.WordAlloc.removeDeadStructural input11067 value5537 value1 value2 = (output11067, value5538, value1))
    (child11074 : Flapjack.WordAlloc.removeDeadStructural input11074 value5538 value1 value2 = (output11074, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11075 value5537 value1 value2 = (output11075, value5, value1) := by
  rw [input11075_def, output11075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11067]
  dsimp only
  rw [child11074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11067_skip, output11074_skip]
  kernel_rfl

theorem node11076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11076 value5 value1 value2 = (output11076, value5542, value1) := by
  rw [input11076_def, output11076_def]
  kernel_rfl

theorem node11077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11077 value5542 value1 value2 = (output11077, value5543, value1) := by
  rw [input11077_def, output11077_def]
  kernel_rfl

theorem node11078_cond_eq
    (child11076 : Flapjack.WordAlloc.removeDeadStructural input11076 value5 value1 value2 = (output11076, value5542, value1))
    (child11077 : Flapjack.WordAlloc.removeDeadStructural input11077 value5542 value1 value2 = (output11077, value5543, value1)) : Flapjack.WordAlloc.removeDeadStructural input11078 value5 value1 value2 = (output11078, value5543, value1) := by
  rw [input11078_def, output11078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11076]
  dsimp only
  rw [child11077]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11076_skip, output11077_skip]
  kernel_rfl

theorem node11079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11079 value5543 value1 value2 = (output11079, value5544, value1) := by
  rw [input11079_def, output11079_def]
  kernel_rfl

theorem node11080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11080 value5544 value1 value2 = (output11080, value5544, value1) := by
  rw [input11080_def, output11080_def]
  kernel_rfl

theorem node11081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11081 value5544 value1 value2 = (output11081, value5545, value1) := by
  rw [input11081_def, output11081_def]
  kernel_rfl

theorem node11082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11082 value5545 value1 value2 = (output11082, value5546, value1) := by
  rw [input11082_def, output11082_def]
  kernel_rfl

theorem node11083_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11083 value5546 value1 value2 = (output11083, value5547, value1) := by
  rw [input11083_def, output11083_def]
  kernel_rfl

theorem node11084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11084 value5547 value1 value2 = (output11084, value5548, value1) := by
  rw [input11084_def, output11084_def]
  kernel_rfl

theorem node11085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11085 value5548 value1 value2 = (output11085, value5, value1) := by
  rw [input11085_def, output11085_def]
  kernel_rfl

theorem node11086_cond_eq
    (child11084 : Flapjack.WordAlloc.removeDeadStructural input11084 value5547 value1 value2 = (output11084, value5548, value1))
    (child11085 : Flapjack.WordAlloc.removeDeadStructural input11085 value5548 value1 value2 = (output11085, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11086 value5547 value1 value2 = (output11086, value5, value1) := by
  rw [input11086_def, output11086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11084]
  dsimp only
  rw [child11085]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11084_skip, output11085_skip]
  kernel_rfl

theorem node11087_cond_eq
    (child11083 : Flapjack.WordAlloc.removeDeadStructural input11083 value5546 value1 value2 = (output11083, value5547, value1))
    (child11086 : Flapjack.WordAlloc.removeDeadStructural input11086 value5547 value1 value2 = (output11086, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11087 value5546 value1 value2 = (output11087, value5, value1) := by
  rw [input11087_def, output11087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11083]
  dsimp only
  rw [child11086]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11083_skip, output11086_skip]
  kernel_rfl

theorem node11088_cond_eq
    (child11082 : Flapjack.WordAlloc.removeDeadStructural input11082 value5545 value1 value2 = (output11082, value5546, value1))
    (child11087 : Flapjack.WordAlloc.removeDeadStructural input11087 value5546 value1 value2 = (output11087, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11088 value5545 value1 value2 = (output11088, value5, value1) := by
  rw [input11088_def, output11088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11082]
  dsimp only
  rw [child11087]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11082_skip, output11087_skip]
  kernel_rfl

theorem node11089_cond_eq
    (child11081 : Flapjack.WordAlloc.removeDeadStructural input11081 value5544 value1 value2 = (output11081, value5545, value1))
    (child11088 : Flapjack.WordAlloc.removeDeadStructural input11088 value5545 value1 value2 = (output11088, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11089 value5544 value1 value2 = (output11089, value5, value1) := by
  rw [input11089_def, output11089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11081]
  dsimp only
  rw [child11088]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11081_skip, output11088_skip]
  kernel_rfl

theorem node11090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11090 value5 value1 value2 = (output11090, value5549, value1) := by
  rw [input11090_def, output11090_def]
  kernel_rfl

theorem node11091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11091 value5549 value1 value2 = (output11091, value5550, value1) := by
  rw [input11091_def, output11091_def]
  kernel_rfl

theorem node11092_cond_eq
    (child11090 : Flapjack.WordAlloc.removeDeadStructural input11090 value5 value1 value2 = (output11090, value5549, value1))
    (child11091 : Flapjack.WordAlloc.removeDeadStructural input11091 value5549 value1 value2 = (output11091, value5550, value1)) : Flapjack.WordAlloc.removeDeadStructural input11092 value5 value1 value2 = (output11092, value5550, value1) := by
  rw [input11092_def, output11092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11090]
  dsimp only
  rw [child11091]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11090_skip, output11091_skip]
  kernel_rfl

theorem node11093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11093 value5550 value1 value2 = (output11093, value5551, value1) := by
  rw [input11093_def, output11093_def]
  kernel_rfl

theorem node11094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11094 value5551 value1 value2 = (output11094, value5551, value1) := by
  rw [input11094_def, output11094_def]
  kernel_rfl

theorem node11095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11095 value5551 value1 value2 = (output11095, value5552, value1) := by
  rw [input11095_def, output11095_def]
  kernel_rfl

theorem node11096_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11096 value5552 value1 value2 = (output11096, value5553, value1) := by
  rw [input11096_def, output11096_def]
  kernel_rfl

theorem node11097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11097 value5553 value1 value2 = (output11097, value5554, value1) := by
  rw [input11097_def, output11097_def]
  kernel_rfl

theorem node11098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11098 value5554 value1 value2 = (output11098, value5555, value1) := by
  rw [input11098_def, output11098_def]
  kernel_rfl

theorem node11099_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11099 value5555 value1 value2 = (output11099, value5, value1) := by
  rw [input11099_def, output11099_def]
  kernel_rfl

theorem node11100_cond_eq
    (child11098 : Flapjack.WordAlloc.removeDeadStructural input11098 value5554 value1 value2 = (output11098, value5555, value1))
    (child11099 : Flapjack.WordAlloc.removeDeadStructural input11099 value5555 value1 value2 = (output11099, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11100 value5554 value1 value2 = (output11100, value5, value1) := by
  rw [input11100_def, output11100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11098]
  dsimp only
  rw [child11099]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11098_skip, output11099_skip]
  kernel_rfl

theorem node11101_cond_eq
    (child11097 : Flapjack.WordAlloc.removeDeadStructural input11097 value5553 value1 value2 = (output11097, value5554, value1))
    (child11100 : Flapjack.WordAlloc.removeDeadStructural input11100 value5554 value1 value2 = (output11100, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11101 value5553 value1 value2 = (output11101, value5, value1) := by
  rw [input11101_def, output11101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11097]
  dsimp only
  rw [child11100]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11097_skip, output11100_skip]
  kernel_rfl

theorem node11102_cond_eq
    (child11096 : Flapjack.WordAlloc.removeDeadStructural input11096 value5552 value1 value2 = (output11096, value5553, value1))
    (child11101 : Flapjack.WordAlloc.removeDeadStructural input11101 value5553 value1 value2 = (output11101, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11102 value5552 value1 value2 = (output11102, value5, value1) := by
  rw [input11102_def, output11102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11096]
  dsimp only
  rw [child11101]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11096_skip, output11101_skip]
  kernel_rfl

theorem node11103_cond_eq
    (child11095 : Flapjack.WordAlloc.removeDeadStructural input11095 value5551 value1 value2 = (output11095, value5552, value1))
    (child11102 : Flapjack.WordAlloc.removeDeadStructural input11102 value5552 value1 value2 = (output11102, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11103 value5551 value1 value2 = (output11103, value5, value1) := by
  rw [input11103_def, output11103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11095]
  dsimp only
  rw [child11102]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11095_skip, output11102_skip]
  kernel_rfl

theorem node11104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11104 value5 value1 value2 = (output11104, value5556, value1) := by
  rw [input11104_def, output11104_def]
  kernel_rfl

theorem node11105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11105 value5556 value1 value2 = (output11105, value5557, value1) := by
  rw [input11105_def, output11105_def]
  kernel_rfl

theorem node11106_cond_eq
    (child11104 : Flapjack.WordAlloc.removeDeadStructural input11104 value5 value1 value2 = (output11104, value5556, value1))
    (child11105 : Flapjack.WordAlloc.removeDeadStructural input11105 value5556 value1 value2 = (output11105, value5557, value1)) : Flapjack.WordAlloc.removeDeadStructural input11106 value5 value1 value2 = (output11106, value5557, value1) := by
  rw [input11106_def, output11106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11104]
  dsimp only
  rw [child11105]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11104_skip, output11105_skip]
  kernel_rfl

theorem node11107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11107 value5557 value1 value2 = (output11107, value5558, value1) := by
  rw [input11107_def, output11107_def]
  kernel_rfl

theorem node11108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11108 value5558 value1 value2 = (output11108, value5558, value1) := by
  rw [input11108_def, output11108_def]
  kernel_rfl

theorem node11109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11109 value5558 value1 value2 = (output11109, value5559, value1) := by
  rw [input11109_def, output11109_def]
  kernel_rfl

theorem node11110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11110 value5559 value1 value2 = (output11110, value5560, value1) := by
  rw [input11110_def, output11110_def]
  kernel_rfl

theorem node11111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11111 value5560 value1 value2 = (output11111, value5561, value1) := by
  rw [input11111_def, output11111_def]
  kernel_rfl

theorem node11112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11112 value5561 value1 value2 = (output11112, value5562, value1) := by
  rw [input11112_def, output11112_def]
  kernel_rfl

theorem node11113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11113 value5562 value1 value2 = (output11113, value5, value1) := by
  rw [input11113_def, output11113_def]
  kernel_rfl

theorem node11114_cond_eq
    (child11112 : Flapjack.WordAlloc.removeDeadStructural input11112 value5561 value1 value2 = (output11112, value5562, value1))
    (child11113 : Flapjack.WordAlloc.removeDeadStructural input11113 value5562 value1 value2 = (output11113, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11114 value5561 value1 value2 = (output11114, value5, value1) := by
  rw [input11114_def, output11114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11112]
  dsimp only
  rw [child11113]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11112_skip, output11113_skip]
  kernel_rfl

theorem node11115_cond_eq
    (child11111 : Flapjack.WordAlloc.removeDeadStructural input11111 value5560 value1 value2 = (output11111, value5561, value1))
    (child11114 : Flapjack.WordAlloc.removeDeadStructural input11114 value5561 value1 value2 = (output11114, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11115 value5560 value1 value2 = (output11115, value5, value1) := by
  rw [input11115_def, output11115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11111]
  dsimp only
  rw [child11114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11111_skip, output11114_skip]
  kernel_rfl

theorem node11116_cond_eq
    (child11110 : Flapjack.WordAlloc.removeDeadStructural input11110 value5559 value1 value2 = (output11110, value5560, value1))
    (child11115 : Flapjack.WordAlloc.removeDeadStructural input11115 value5560 value1 value2 = (output11115, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11116 value5559 value1 value2 = (output11116, value5, value1) := by
  rw [input11116_def, output11116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11110]
  dsimp only
  rw [child11115]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11110_skip, output11115_skip]
  kernel_rfl

theorem node11117_cond_eq
    (child11109 : Flapjack.WordAlloc.removeDeadStructural input11109 value5558 value1 value2 = (output11109, value5559, value1))
    (child11116 : Flapjack.WordAlloc.removeDeadStructural input11116 value5559 value1 value2 = (output11116, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11117 value5558 value1 value2 = (output11117, value5, value1) := by
  rw [input11117_def, output11117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11109]
  dsimp only
  rw [child11116]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11109_skip, output11116_skip]
  kernel_rfl

theorem node11118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11118 value5 value1 value2 = (output11118, value5563, value1) := by
  rw [input11118_def, output11118_def]
  kernel_rfl

theorem node11119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11119 value5563 value1 value2 = (output11119, value5564, value1) := by
  rw [input11119_def, output11119_def]
  kernel_rfl

theorem node11120_cond_eq
    (child11118 : Flapjack.WordAlloc.removeDeadStructural input11118 value5 value1 value2 = (output11118, value5563, value1))
    (child11119 : Flapjack.WordAlloc.removeDeadStructural input11119 value5563 value1 value2 = (output11119, value5564, value1)) : Flapjack.WordAlloc.removeDeadStructural input11120 value5 value1 value2 = (output11120, value5564, value1) := by
  rw [input11120_def, output11120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11118]
  dsimp only
  rw [child11119]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11118_skip, output11119_skip]
  kernel_rfl

theorem node11121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11121 value5564 value1 value2 = (output11121, value5565, value1) := by
  rw [input11121_def, output11121_def]
  kernel_rfl

theorem node11122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11122 value5565 value1 value2 = (output11122, value5565, value1) := by
  rw [input11122_def, output11122_def]
  kernel_rfl

theorem node11123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11123 value5565 value1 value2 = (output11123, value5566, value1) := by
  rw [input11123_def, output11123_def]
  kernel_rfl

theorem node11124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11124 value5566 value1 value2 = (output11124, value5567, value1) := by
  rw [input11124_def, output11124_def]
  kernel_rfl

theorem node11125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11125 value5567 value1 value2 = (output11125, value5568, value1) := by
  rw [input11125_def, output11125_def]
  kernel_rfl

theorem node11126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11126 value5568 value1 value2 = (output11126, value5569, value1) := by
  rw [input11126_def, output11126_def]
  kernel_rfl

theorem node11127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11127 value5569 value1 value2 = (output11127, value5, value1) := by
  rw [input11127_def, output11127_def]
  kernel_rfl

theorem node11128_cond_eq
    (child11126 : Flapjack.WordAlloc.removeDeadStructural input11126 value5568 value1 value2 = (output11126, value5569, value1))
    (child11127 : Flapjack.WordAlloc.removeDeadStructural input11127 value5569 value1 value2 = (output11127, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11128 value5568 value1 value2 = (output11128, value5, value1) := by
  rw [input11128_def, output11128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11126]
  dsimp only
  rw [child11127]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11126_skip, output11127_skip]
  kernel_rfl

theorem node11129_cond_eq
    (child11125 : Flapjack.WordAlloc.removeDeadStructural input11125 value5567 value1 value2 = (output11125, value5568, value1))
    (child11128 : Flapjack.WordAlloc.removeDeadStructural input11128 value5568 value1 value2 = (output11128, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11129 value5567 value1 value2 = (output11129, value5, value1) := by
  rw [input11129_def, output11129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11125]
  dsimp only
  rw [child11128]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11125_skip, output11128_skip]
  kernel_rfl

theorem node11130_cond_eq
    (child11124 : Flapjack.WordAlloc.removeDeadStructural input11124 value5566 value1 value2 = (output11124, value5567, value1))
    (child11129 : Flapjack.WordAlloc.removeDeadStructural input11129 value5567 value1 value2 = (output11129, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11130 value5566 value1 value2 = (output11130, value5, value1) := by
  rw [input11130_def, output11130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11124]
  dsimp only
  rw [child11129]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11124_skip, output11129_skip]
  kernel_rfl

theorem node11131_cond_eq
    (child11123 : Flapjack.WordAlloc.removeDeadStructural input11123 value5565 value1 value2 = (output11123, value5566, value1))
    (child11130 : Flapjack.WordAlloc.removeDeadStructural input11130 value5566 value1 value2 = (output11130, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11131 value5565 value1 value2 = (output11131, value5, value1) := by
  rw [input11131_def, output11131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11123]
  dsimp only
  rw [child11130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11123_skip, output11130_skip]
  kernel_rfl

theorem node11132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11132 value5 value1 value2 = (output11132, value5570, value1) := by
  rw [input11132_def, output11132_def]
  kernel_rfl

theorem node11133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11133 value5570 value1 value2 = (output11133, value5571, value1) := by
  rw [input11133_def, output11133_def]
  kernel_rfl

theorem node11134_cond_eq
    (child11132 : Flapjack.WordAlloc.removeDeadStructural input11132 value5 value1 value2 = (output11132, value5570, value1))
    (child11133 : Flapjack.WordAlloc.removeDeadStructural input11133 value5570 value1 value2 = (output11133, value5571, value1)) : Flapjack.WordAlloc.removeDeadStructural input11134 value5 value1 value2 = (output11134, value5571, value1) := by
  rw [input11134_def, output11134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11132]
  dsimp only
  rw [child11133]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11132_skip, output11133_skip]
  kernel_rfl

theorem node11135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11135 value5571 value1 value2 = (output11135, value5572, value1) := by
  rw [input11135_def, output11135_def]
  kernel_rfl

theorem node11136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11136 value5572 value1 value2 = (output11136, value5572, value1) := by
  rw [input11136_def, output11136_def]
  kernel_rfl

theorem node11137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11137 value5572 value1 value2 = (output11137, value5573, value1) := by
  rw [input11137_def, output11137_def]
  kernel_rfl

theorem node11138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11138 value5573 value1 value2 = (output11138, value5574, value1) := by
  rw [input11138_def, output11138_def]
  kernel_rfl

theorem node11139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11139 value5574 value1 value2 = (output11139, value5575, value1) := by
  rw [input11139_def, output11139_def]
  kernel_rfl

theorem node11140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11140 value5575 value1 value2 = (output11140, value5576, value1) := by
  rw [input11140_def, output11140_def]
  kernel_rfl

theorem node11141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11141 value5576 value1 value2 = (output11141, value5, value1) := by
  rw [input11141_def, output11141_def]
  kernel_rfl

theorem node11142_cond_eq
    (child11140 : Flapjack.WordAlloc.removeDeadStructural input11140 value5575 value1 value2 = (output11140, value5576, value1))
    (child11141 : Flapjack.WordAlloc.removeDeadStructural input11141 value5576 value1 value2 = (output11141, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11142 value5575 value1 value2 = (output11142, value5, value1) := by
  rw [input11142_def, output11142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11140]
  dsimp only
  rw [child11141]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11140_skip, output11141_skip]
  kernel_rfl

theorem node11143_cond_eq
    (child11139 : Flapjack.WordAlloc.removeDeadStructural input11139 value5574 value1 value2 = (output11139, value5575, value1))
    (child11142 : Flapjack.WordAlloc.removeDeadStructural input11142 value5575 value1 value2 = (output11142, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11143 value5574 value1 value2 = (output11143, value5, value1) := by
  rw [input11143_def, output11143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11139]
  dsimp only
  rw [child11142]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11139_skip, output11142_skip]
  kernel_rfl

theorem node11144_cond_eq
    (child11138 : Flapjack.WordAlloc.removeDeadStructural input11138 value5573 value1 value2 = (output11138, value5574, value1))
    (child11143 : Flapjack.WordAlloc.removeDeadStructural input11143 value5574 value1 value2 = (output11143, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11144 value5573 value1 value2 = (output11144, value5, value1) := by
  rw [input11144_def, output11144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11138]
  dsimp only
  rw [child11143]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11138_skip, output11143_skip]
  kernel_rfl

theorem node11145_cond_eq
    (child11137 : Flapjack.WordAlloc.removeDeadStructural input11137 value5572 value1 value2 = (output11137, value5573, value1))
    (child11144 : Flapjack.WordAlloc.removeDeadStructural input11144 value5573 value1 value2 = (output11144, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11145 value5572 value1 value2 = (output11145, value5, value1) := by
  rw [input11145_def, output11145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11137]
  dsimp only
  rw [child11144]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11137_skip, output11144_skip]
  kernel_rfl

theorem node11146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11146 value5 value1 value2 = (output11146, value5577, value1) := by
  rw [input11146_def, output11146_def]
  kernel_rfl

theorem node11147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11147 value5577 value1 value2 = (output11147, value5578, value1) := by
  rw [input11147_def, output11147_def]
  kernel_rfl

theorem node11148_cond_eq
    (child11146 : Flapjack.WordAlloc.removeDeadStructural input11146 value5 value1 value2 = (output11146, value5577, value1))
    (child11147 : Flapjack.WordAlloc.removeDeadStructural input11147 value5577 value1 value2 = (output11147, value5578, value1)) : Flapjack.WordAlloc.removeDeadStructural input11148 value5 value1 value2 = (output11148, value5578, value1) := by
  rw [input11148_def, output11148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11146]
  dsimp only
  rw [child11147]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11146_skip, output11147_skip]
  kernel_rfl

theorem node11149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11149 value5578 value1 value2 = (output11149, value5579, value1) := by
  rw [input11149_def, output11149_def]
  kernel_rfl

theorem node11150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11150 value5579 value1 value2 = (output11150, value5579, value1) := by
  rw [input11150_def, output11150_def]
  kernel_rfl

theorem node11151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11151 value5579 value1 value2 = (output11151, value5580, value1) := by
  rw [input11151_def, output11151_def]
  kernel_rfl

theorem node11152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11152 value5580 value1 value2 = (output11152, value5581, value1) := by
  rw [input11152_def, output11152_def]
  kernel_rfl

theorem node11153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11153 value5581 value1 value2 = (output11153, value5582, value1) := by
  rw [input11153_def, output11153_def]
  kernel_rfl

theorem node11154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11154 value5582 value1 value2 = (output11154, value5583, value1) := by
  rw [input11154_def, output11154_def]
  kernel_rfl

theorem node11155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11155 value5583 value1 value2 = (output11155, value5, value1) := by
  rw [input11155_def, output11155_def]
  kernel_rfl

theorem node11156_cond_eq
    (child11154 : Flapjack.WordAlloc.removeDeadStructural input11154 value5582 value1 value2 = (output11154, value5583, value1))
    (child11155 : Flapjack.WordAlloc.removeDeadStructural input11155 value5583 value1 value2 = (output11155, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11156 value5582 value1 value2 = (output11156, value5, value1) := by
  rw [input11156_def, output11156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11154]
  dsimp only
  rw [child11155]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11154_skip, output11155_skip]
  kernel_rfl

theorem node11157_cond_eq
    (child11153 : Flapjack.WordAlloc.removeDeadStructural input11153 value5581 value1 value2 = (output11153, value5582, value1))
    (child11156 : Flapjack.WordAlloc.removeDeadStructural input11156 value5582 value1 value2 = (output11156, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11157 value5581 value1 value2 = (output11157, value5, value1) := by
  rw [input11157_def, output11157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11153]
  dsimp only
  rw [child11156]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11153_skip, output11156_skip]
  kernel_rfl

theorem node11158_cond_eq
    (child11152 : Flapjack.WordAlloc.removeDeadStructural input11152 value5580 value1 value2 = (output11152, value5581, value1))
    (child11157 : Flapjack.WordAlloc.removeDeadStructural input11157 value5581 value1 value2 = (output11157, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11158 value5580 value1 value2 = (output11158, value5, value1) := by
  rw [input11158_def, output11158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11152]
  dsimp only
  rw [child11157]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11152_skip, output11157_skip]
  kernel_rfl

theorem node11159_cond_eq
    (child11151 : Flapjack.WordAlloc.removeDeadStructural input11151 value5579 value1 value2 = (output11151, value5580, value1))
    (child11158 : Flapjack.WordAlloc.removeDeadStructural input11158 value5580 value1 value2 = (output11158, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11159 value5579 value1 value2 = (output11159, value5, value1) := by
  rw [input11159_def, output11159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11151]
  dsimp only
  rw [child11158]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11151_skip, output11158_skip]
  kernel_rfl

theorem node11160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11160 value5 value1 value2 = (output11160, value5584, value1) := by
  rw [input11160_def, output11160_def]
  kernel_rfl

theorem node11161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11161 value5584 value1 value2 = (output11161, value5585, value1) := by
  rw [input11161_def, output11161_def]
  kernel_rfl

theorem node11162_cond_eq
    (child11160 : Flapjack.WordAlloc.removeDeadStructural input11160 value5 value1 value2 = (output11160, value5584, value1))
    (child11161 : Flapjack.WordAlloc.removeDeadStructural input11161 value5584 value1 value2 = (output11161, value5585, value1)) : Flapjack.WordAlloc.removeDeadStructural input11162 value5 value1 value2 = (output11162, value5585, value1) := by
  rw [input11162_def, output11162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11160]
  dsimp only
  rw [child11161]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11160_skip, output11161_skip]
  kernel_rfl

theorem node11163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11163 value5585 value1 value2 = (output11163, value5586, value1) := by
  rw [input11163_def, output11163_def]
  kernel_rfl

theorem node11164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11164 value5586 value1 value2 = (output11164, value5586, value1) := by
  rw [input11164_def, output11164_def]
  kernel_rfl

theorem node11165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11165 value5586 value1 value2 = (output11165, value5587, value1) := by
  rw [input11165_def, output11165_def]
  kernel_rfl

theorem node11166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11166 value5587 value1 value2 = (output11166, value5588, value1) := by
  rw [input11166_def, output11166_def]
  kernel_rfl

theorem node11167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11167 value5588 value1 value2 = (output11167, value5589, value1) := by
  rw [input11167_def, output11167_def]
  kernel_rfl

theorem node11168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11168 value5589 value1 value2 = (output11168, value5590, value1) := by
  rw [input11168_def, output11168_def]
  kernel_rfl

theorem node11169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11169 value5590 value1 value2 = (output11169, value5, value1) := by
  rw [input11169_def, output11169_def]
  kernel_rfl

theorem node11170_cond_eq
    (child11168 : Flapjack.WordAlloc.removeDeadStructural input11168 value5589 value1 value2 = (output11168, value5590, value1))
    (child11169 : Flapjack.WordAlloc.removeDeadStructural input11169 value5590 value1 value2 = (output11169, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11170 value5589 value1 value2 = (output11170, value5, value1) := by
  rw [input11170_def, output11170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11168]
  dsimp only
  rw [child11169]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11168_skip, output11169_skip]
  kernel_rfl

theorem node11171_cond_eq
    (child11167 : Flapjack.WordAlloc.removeDeadStructural input11167 value5588 value1 value2 = (output11167, value5589, value1))
    (child11170 : Flapjack.WordAlloc.removeDeadStructural input11170 value5589 value1 value2 = (output11170, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11171 value5588 value1 value2 = (output11171, value5, value1) := by
  rw [input11171_def, output11171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11167]
  dsimp only
  rw [child11170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11167_skip, output11170_skip]
  kernel_rfl

theorem node11172_cond_eq
    (child11166 : Flapjack.WordAlloc.removeDeadStructural input11166 value5587 value1 value2 = (output11166, value5588, value1))
    (child11171 : Flapjack.WordAlloc.removeDeadStructural input11171 value5588 value1 value2 = (output11171, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11172 value5587 value1 value2 = (output11172, value5, value1) := by
  rw [input11172_def, output11172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11166]
  dsimp only
  rw [child11171]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11166_skip, output11171_skip]
  kernel_rfl

theorem node11173_cond_eq
    (child11165 : Flapjack.WordAlloc.removeDeadStructural input11165 value5586 value1 value2 = (output11165, value5587, value1))
    (child11172 : Flapjack.WordAlloc.removeDeadStructural input11172 value5587 value1 value2 = (output11172, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11173 value5586 value1 value2 = (output11173, value5, value1) := by
  rw [input11173_def, output11173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11165]
  dsimp only
  rw [child11172]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11165_skip, output11172_skip]
  kernel_rfl

theorem node11174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11174 value5 value1 value2 = (output11174, value5591, value1) := by
  rw [input11174_def, output11174_def]
  kernel_rfl

theorem node11175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11175 value5591 value1 value2 = (output11175, value5592, value1) := by
  rw [input11175_def, output11175_def]
  kernel_rfl

theorem node11176_cond_eq
    (child11174 : Flapjack.WordAlloc.removeDeadStructural input11174 value5 value1 value2 = (output11174, value5591, value1))
    (child11175 : Flapjack.WordAlloc.removeDeadStructural input11175 value5591 value1 value2 = (output11175, value5592, value1)) : Flapjack.WordAlloc.removeDeadStructural input11176 value5 value1 value2 = (output11176, value5592, value1) := by
  rw [input11176_def, output11176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11174]
  dsimp only
  rw [child11175]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11174_skip, output11175_skip]
  kernel_rfl

theorem node11177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11177 value5592 value1 value2 = (output11177, value5593, value1) := by
  rw [input11177_def, output11177_def]
  kernel_rfl

theorem node11178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11178 value5593 value1 value2 = (output11178, value5593, value1) := by
  rw [input11178_def, output11178_def]
  kernel_rfl

theorem node11179_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11179 value5593 value1 value2 = (output11179, value5594, value1) := by
  rw [input11179_def, output11179_def]
  kernel_rfl

theorem node11180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11180 value5594 value1 value2 = (output11180, value5595, value1) := by
  rw [input11180_def, output11180_def]
  kernel_rfl

theorem node11181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11181 value5595 value1 value2 = (output11181, value5596, value1) := by
  rw [input11181_def, output11181_def]
  kernel_rfl

theorem node11182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11182 value5596 value1 value2 = (output11182, value5597, value1) := by
  rw [input11182_def, output11182_def]
  kernel_rfl

theorem node11183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11183 value5597 value1 value2 = (output11183, value5, value1) := by
  rw [input11183_def, output11183_def]
  kernel_rfl

theorem node11184_cond_eq
    (child11182 : Flapjack.WordAlloc.removeDeadStructural input11182 value5596 value1 value2 = (output11182, value5597, value1))
    (child11183 : Flapjack.WordAlloc.removeDeadStructural input11183 value5597 value1 value2 = (output11183, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11184 value5596 value1 value2 = (output11184, value5, value1) := by
  rw [input11184_def, output11184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11182]
  dsimp only
  rw [child11183]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11182_skip, output11183_skip]
  kernel_rfl

theorem node11185_cond_eq
    (child11181 : Flapjack.WordAlloc.removeDeadStructural input11181 value5595 value1 value2 = (output11181, value5596, value1))
    (child11184 : Flapjack.WordAlloc.removeDeadStructural input11184 value5596 value1 value2 = (output11184, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11185 value5595 value1 value2 = (output11185, value5, value1) := by
  rw [input11185_def, output11185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11181]
  dsimp only
  rw [child11184]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11181_skip, output11184_skip]
  kernel_rfl

theorem node11186_cond_eq
    (child11180 : Flapjack.WordAlloc.removeDeadStructural input11180 value5594 value1 value2 = (output11180, value5595, value1))
    (child11185 : Flapjack.WordAlloc.removeDeadStructural input11185 value5595 value1 value2 = (output11185, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11186 value5594 value1 value2 = (output11186, value5, value1) := by
  rw [input11186_def, output11186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11180]
  dsimp only
  rw [child11185]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11180_skip, output11185_skip]
  kernel_rfl

theorem node11187_cond_eq
    (child11179 : Flapjack.WordAlloc.removeDeadStructural input11179 value5593 value1 value2 = (output11179, value5594, value1))
    (child11186 : Flapjack.WordAlloc.removeDeadStructural input11186 value5594 value1 value2 = (output11186, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11187 value5593 value1 value2 = (output11187, value5, value1) := by
  rw [input11187_def, output11187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11179]
  dsimp only
  rw [child11186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11179_skip, output11186_skip]
  kernel_rfl

theorem node11188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11188 value5 value1 value2 = (output11188, value5598, value1) := by
  rw [input11188_def, output11188_def]
  kernel_rfl

theorem node11189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11189 value5598 value1 value2 = (output11189, value5599, value1) := by
  rw [input11189_def, output11189_def]
  kernel_rfl

theorem node11190_cond_eq
    (child11188 : Flapjack.WordAlloc.removeDeadStructural input11188 value5 value1 value2 = (output11188, value5598, value1))
    (child11189 : Flapjack.WordAlloc.removeDeadStructural input11189 value5598 value1 value2 = (output11189, value5599, value1)) : Flapjack.WordAlloc.removeDeadStructural input11190 value5 value1 value2 = (output11190, value5599, value1) := by
  rw [input11190_def, output11190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11188]
  dsimp only
  rw [child11189]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11188_skip, output11189_skip]
  kernel_rfl

theorem node11191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11191 value5599 value1 value2 = (output11191, value5600, value1) := by
  rw [input11191_def, output11191_def]
  kernel_rfl

theorem node11192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11192 value5600 value1 value2 = (output11192, value5600, value1) := by
  rw [input11192_def, output11192_def]
  kernel_rfl

theorem node11193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11193 value5600 value1 value2 = (output11193, value5601, value1) := by
  rw [input11193_def, output11193_def]
  kernel_rfl

theorem node11194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11194 value5601 value1 value2 = (output11194, value5602, value1) := by
  rw [input11194_def, output11194_def]
  kernel_rfl

theorem node11195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11195 value5602 value1 value2 = (output11195, value5603, value1) := by
  rw [input11195_def, output11195_def]
  kernel_rfl

theorem node11196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11196 value5603 value1 value2 = (output11196, value5604, value1) := by
  rw [input11196_def, output11196_def]
  kernel_rfl

theorem node11197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11197 value5604 value1 value2 = (output11197, value5, value1) := by
  rw [input11197_def, output11197_def]
  kernel_rfl

theorem node11198_cond_eq
    (child11196 : Flapjack.WordAlloc.removeDeadStructural input11196 value5603 value1 value2 = (output11196, value5604, value1))
    (child11197 : Flapjack.WordAlloc.removeDeadStructural input11197 value5604 value1 value2 = (output11197, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11198 value5603 value1 value2 = (output11198, value5, value1) := by
  rw [input11198_def, output11198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11196]
  dsimp only
  rw [child11197]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11196_skip, output11197_skip]
  kernel_rfl

theorem node11199_cond_eq
    (child11195 : Flapjack.WordAlloc.removeDeadStructural input11195 value5602 value1 value2 = (output11195, value5603, value1))
    (child11198 : Flapjack.WordAlloc.removeDeadStructural input11198 value5603 value1 value2 = (output11198, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11199 value5602 value1 value2 = (output11199, value5, value1) := by
  rw [input11199_def, output11199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11195]
  dsimp only
  rw [child11198]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11195_skip, output11198_skip]
  kernel_rfl

theorem node11200_cond_eq
    (child11194 : Flapjack.WordAlloc.removeDeadStructural input11194 value5601 value1 value2 = (output11194, value5602, value1))
    (child11199 : Flapjack.WordAlloc.removeDeadStructural input11199 value5602 value1 value2 = (output11199, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11200 value5601 value1 value2 = (output11200, value5, value1) := by
  rw [input11200_def, output11200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11194]
  dsimp only
  rw [child11199]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11194_skip, output11199_skip]
  kernel_rfl

theorem node11201_cond_eq
    (child11193 : Flapjack.WordAlloc.removeDeadStructural input11193 value5600 value1 value2 = (output11193, value5601, value1))
    (child11200 : Flapjack.WordAlloc.removeDeadStructural input11200 value5601 value1 value2 = (output11200, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11201 value5600 value1 value2 = (output11201, value5, value1) := by
  rw [input11201_def, output11201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11193]
  dsimp only
  rw [child11200]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11193_skip, output11200_skip]
  kernel_rfl

theorem node11202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11202 value5 value1 value2 = (output11202, value5605, value1) := by
  rw [input11202_def, output11202_def]
  kernel_rfl

theorem node11203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11203 value5605 value1 value2 = (output11203, value5606, value1) := by
  rw [input11203_def, output11203_def]
  kernel_rfl

theorem node11204_cond_eq
    (child11202 : Flapjack.WordAlloc.removeDeadStructural input11202 value5 value1 value2 = (output11202, value5605, value1))
    (child11203 : Flapjack.WordAlloc.removeDeadStructural input11203 value5605 value1 value2 = (output11203, value5606, value1)) : Flapjack.WordAlloc.removeDeadStructural input11204 value5 value1 value2 = (output11204, value5606, value1) := by
  rw [input11204_def, output11204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11202]
  dsimp only
  rw [child11203]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11202_skip, output11203_skip]
  kernel_rfl

theorem node11205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11205 value5606 value1 value2 = (output11205, value5607, value1) := by
  rw [input11205_def, output11205_def]
  kernel_rfl

theorem node11206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11206 value5607 value1 value2 = (output11206, value5607, value1) := by
  rw [input11206_def, output11206_def]
  kernel_rfl

theorem node11207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11207 value5607 value1 value2 = (output11207, value5608, value1) := by
  rw [input11207_def, output11207_def]
  kernel_rfl

theorem node11208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11208 value5608 value1 value2 = (output11208, value5609, value1) := by
  rw [input11208_def, output11208_def]
  kernel_rfl

theorem node11209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11209 value5609 value1 value2 = (output11209, value5610, value1) := by
  rw [input11209_def, output11209_def]
  kernel_rfl

theorem node11210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11210 value5610 value1 value2 = (output11210, value5611, value1) := by
  rw [input11210_def, output11210_def]
  kernel_rfl

theorem node11211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11211 value5611 value1 value2 = (output11211, value5, value1) := by
  rw [input11211_def, output11211_def]
  kernel_rfl

theorem node11212_cond_eq
    (child11210 : Flapjack.WordAlloc.removeDeadStructural input11210 value5610 value1 value2 = (output11210, value5611, value1))
    (child11211 : Flapjack.WordAlloc.removeDeadStructural input11211 value5611 value1 value2 = (output11211, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11212 value5610 value1 value2 = (output11212, value5, value1) := by
  rw [input11212_def, output11212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11210]
  dsimp only
  rw [child11211]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11210_skip, output11211_skip]
  kernel_rfl

theorem node11213_cond_eq
    (child11209 : Flapjack.WordAlloc.removeDeadStructural input11209 value5609 value1 value2 = (output11209, value5610, value1))
    (child11212 : Flapjack.WordAlloc.removeDeadStructural input11212 value5610 value1 value2 = (output11212, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11213 value5609 value1 value2 = (output11213, value5, value1) := by
  rw [input11213_def, output11213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11209]
  dsimp only
  rw [child11212]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11209_skip, output11212_skip]
  kernel_rfl

theorem node11214_cond_eq
    (child11208 : Flapjack.WordAlloc.removeDeadStructural input11208 value5608 value1 value2 = (output11208, value5609, value1))
    (child11213 : Flapjack.WordAlloc.removeDeadStructural input11213 value5609 value1 value2 = (output11213, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11214 value5608 value1 value2 = (output11214, value5, value1) := by
  rw [input11214_def, output11214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11208]
  dsimp only
  rw [child11213]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11208_skip, output11213_skip]
  kernel_rfl

theorem node11215_cond_eq
    (child11207 : Flapjack.WordAlloc.removeDeadStructural input11207 value5607 value1 value2 = (output11207, value5608, value1))
    (child11214 : Flapjack.WordAlloc.removeDeadStructural input11214 value5608 value1 value2 = (output11214, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11215 value5607 value1 value2 = (output11215, value5, value1) := by
  rw [input11215_def, output11215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11207]
  dsimp only
  rw [child11214]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11207_skip, output11214_skip]
  kernel_rfl

theorem node11216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11216 value5 value1 value2 = (output11216, value5612, value1) := by
  rw [input11216_def, output11216_def]
  kernel_rfl

theorem node11217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11217 value5612 value1 value2 = (output11217, value5613, value1) := by
  rw [input11217_def, output11217_def]
  kernel_rfl

theorem node11218_cond_eq
    (child11216 : Flapjack.WordAlloc.removeDeadStructural input11216 value5 value1 value2 = (output11216, value5612, value1))
    (child11217 : Flapjack.WordAlloc.removeDeadStructural input11217 value5612 value1 value2 = (output11217, value5613, value1)) : Flapjack.WordAlloc.removeDeadStructural input11218 value5 value1 value2 = (output11218, value5613, value1) := by
  rw [input11218_def, output11218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11216]
  dsimp only
  rw [child11217]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11216_skip, output11217_skip]
  kernel_rfl

theorem node11219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11219 value5613 value1 value2 = (output11219, value5614, value1) := by
  rw [input11219_def, output11219_def]
  kernel_rfl

theorem node11220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11220 value5614 value1 value2 = (output11220, value5614, value1) := by
  rw [input11220_def, output11220_def]
  kernel_rfl

theorem node11221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11221 value5614 value1 value2 = (output11221, value5615, value1) := by
  rw [input11221_def, output11221_def]
  kernel_rfl

theorem node11222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11222 value5615 value1 value2 = (output11222, value5616, value1) := by
  rw [input11222_def, output11222_def]
  kernel_rfl

theorem node11223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11223 value5616 value1 value2 = (output11223, value5617, value1) := by
  rw [input11223_def, output11223_def]
  kernel_rfl

theorem node11224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11224 value5617 value1 value2 = (output11224, value5618, value1) := by
  rw [input11224_def, output11224_def]
  kernel_rfl

theorem node11225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11225 value5618 value1 value2 = (output11225, value5, value1) := by
  rw [input11225_def, output11225_def]
  kernel_rfl

theorem node11226_cond_eq
    (child11224 : Flapjack.WordAlloc.removeDeadStructural input11224 value5617 value1 value2 = (output11224, value5618, value1))
    (child11225 : Flapjack.WordAlloc.removeDeadStructural input11225 value5618 value1 value2 = (output11225, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11226 value5617 value1 value2 = (output11226, value5, value1) := by
  rw [input11226_def, output11226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11224]
  dsimp only
  rw [child11225]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11224_skip, output11225_skip]
  kernel_rfl

theorem node11227_cond_eq
    (child11223 : Flapjack.WordAlloc.removeDeadStructural input11223 value5616 value1 value2 = (output11223, value5617, value1))
    (child11226 : Flapjack.WordAlloc.removeDeadStructural input11226 value5617 value1 value2 = (output11226, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11227 value5616 value1 value2 = (output11227, value5, value1) := by
  rw [input11227_def, output11227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11223]
  dsimp only
  rw [child11226]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11223_skip, output11226_skip]
  kernel_rfl

theorem node11228_cond_eq
    (child11222 : Flapjack.WordAlloc.removeDeadStructural input11222 value5615 value1 value2 = (output11222, value5616, value1))
    (child11227 : Flapjack.WordAlloc.removeDeadStructural input11227 value5616 value1 value2 = (output11227, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11228 value5615 value1 value2 = (output11228, value5, value1) := by
  rw [input11228_def, output11228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11222]
  dsimp only
  rw [child11227]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11222_skip, output11227_skip]
  kernel_rfl

theorem node11229_cond_eq
    (child11221 : Flapjack.WordAlloc.removeDeadStructural input11221 value5614 value1 value2 = (output11221, value5615, value1))
    (child11228 : Flapjack.WordAlloc.removeDeadStructural input11228 value5615 value1 value2 = (output11228, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11229 value5614 value1 value2 = (output11229, value5, value1) := by
  rw [input11229_def, output11229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11221]
  dsimp only
  rw [child11228]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11221_skip, output11228_skip]
  kernel_rfl

theorem node11230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11230 value5 value1 value2 = (output11230, value5619, value1) := by
  rw [input11230_def, output11230_def]
  kernel_rfl

theorem node11231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11231 value5619 value1 value2 = (output11231, value5620, value1) := by
  rw [input11231_def, output11231_def]
  kernel_rfl

theorem node11232_cond_eq
    (child11230 : Flapjack.WordAlloc.removeDeadStructural input11230 value5 value1 value2 = (output11230, value5619, value1))
    (child11231 : Flapjack.WordAlloc.removeDeadStructural input11231 value5619 value1 value2 = (output11231, value5620, value1)) : Flapjack.WordAlloc.removeDeadStructural input11232 value5 value1 value2 = (output11232, value5620, value1) := by
  rw [input11232_def, output11232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11230]
  dsimp only
  rw [child11231]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11230_skip, output11231_skip]
  kernel_rfl

theorem node11233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11233 value5620 value1 value2 = (output11233, value5621, value1) := by
  rw [input11233_def, output11233_def]
  kernel_rfl

theorem node11234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11234 value5621 value1 value2 = (output11234, value5621, value1) := by
  rw [input11234_def, output11234_def]
  kernel_rfl

theorem node11235_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11235 value5621 value1 value2 = (output11235, value5622, value1) := by
  rw [input11235_def, output11235_def]
  kernel_rfl

theorem node11236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11236 value5622 value1 value2 = (output11236, value5623, value1) := by
  rw [input11236_def, output11236_def]
  kernel_rfl

theorem node11237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11237 value5623 value1 value2 = (output11237, value5624, value1) := by
  rw [input11237_def, output11237_def]
  kernel_rfl

theorem node11238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11238 value5624 value1 value2 = (output11238, value5625, value1) := by
  rw [input11238_def, output11238_def]
  kernel_rfl

theorem node11239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11239 value5625 value1 value2 = (output11239, value5, value1) := by
  rw [input11239_def, output11239_def]
  kernel_rfl

theorem node11240_cond_eq
    (child11238 : Flapjack.WordAlloc.removeDeadStructural input11238 value5624 value1 value2 = (output11238, value5625, value1))
    (child11239 : Flapjack.WordAlloc.removeDeadStructural input11239 value5625 value1 value2 = (output11239, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11240 value5624 value1 value2 = (output11240, value5, value1) := by
  rw [input11240_def, output11240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11238]
  dsimp only
  rw [child11239]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11238_skip, output11239_skip]
  kernel_rfl

theorem node11241_cond_eq
    (child11237 : Flapjack.WordAlloc.removeDeadStructural input11237 value5623 value1 value2 = (output11237, value5624, value1))
    (child11240 : Flapjack.WordAlloc.removeDeadStructural input11240 value5624 value1 value2 = (output11240, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11241 value5623 value1 value2 = (output11241, value5, value1) := by
  rw [input11241_def, output11241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11237]
  dsimp only
  rw [child11240]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11237_skip, output11240_skip]
  kernel_rfl

theorem node11242_cond_eq
    (child11236 : Flapjack.WordAlloc.removeDeadStructural input11236 value5622 value1 value2 = (output11236, value5623, value1))
    (child11241 : Flapjack.WordAlloc.removeDeadStructural input11241 value5623 value1 value2 = (output11241, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11242 value5622 value1 value2 = (output11242, value5, value1) := by
  rw [input11242_def, output11242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11236]
  dsimp only
  rw [child11241]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11236_skip, output11241_skip]
  kernel_rfl

theorem node11243_cond_eq
    (child11235 : Flapjack.WordAlloc.removeDeadStructural input11235 value5621 value1 value2 = (output11235, value5622, value1))
    (child11242 : Flapjack.WordAlloc.removeDeadStructural input11242 value5622 value1 value2 = (output11242, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11243 value5621 value1 value2 = (output11243, value5, value1) := by
  rw [input11243_def, output11243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11235]
  dsimp only
  rw [child11242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11235_skip, output11242_skip]
  kernel_rfl

theorem node11244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11244 value5 value1 value2 = (output11244, value5626, value1) := by
  rw [input11244_def, output11244_def]
  kernel_rfl

theorem node11245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11245 value5626 value1 value2 = (output11245, value5627, value1) := by
  rw [input11245_def, output11245_def]
  kernel_rfl

theorem node11246_cond_eq
    (child11244 : Flapjack.WordAlloc.removeDeadStructural input11244 value5 value1 value2 = (output11244, value5626, value1))
    (child11245 : Flapjack.WordAlloc.removeDeadStructural input11245 value5626 value1 value2 = (output11245, value5627, value1)) : Flapjack.WordAlloc.removeDeadStructural input11246 value5 value1 value2 = (output11246, value5627, value1) := by
  rw [input11246_def, output11246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11244]
  dsimp only
  rw [child11245]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11244_skip, output11245_skip]
  kernel_rfl

theorem node11247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11247 value5627 value1 value2 = (output11247, value5628, value1) := by
  rw [input11247_def, output11247_def]
  kernel_rfl

theorem node11248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11248 value5628 value1 value2 = (output11248, value5628, value1) := by
  rw [input11248_def, output11248_def]
  kernel_rfl

theorem node11249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11249 value5628 value1 value2 = (output11249, value5629, value1) := by
  rw [input11249_def, output11249_def]
  kernel_rfl

theorem node11250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11250 value5629 value1 value2 = (output11250, value5630, value1) := by
  rw [input11250_def, output11250_def]
  kernel_rfl

theorem node11251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11251 value5630 value1 value2 = (output11251, value5631, value1) := by
  rw [input11251_def, output11251_def]
  kernel_rfl

theorem node11252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11252 value5631 value1 value2 = (output11252, value5632, value1) := by
  rw [input11252_def, output11252_def]
  kernel_rfl

theorem node11253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11253 value5632 value1 value2 = (output11253, value5, value1) := by
  rw [input11253_def, output11253_def]
  kernel_rfl

theorem node11254_cond_eq
    (child11252 : Flapjack.WordAlloc.removeDeadStructural input11252 value5631 value1 value2 = (output11252, value5632, value1))
    (child11253 : Flapjack.WordAlloc.removeDeadStructural input11253 value5632 value1 value2 = (output11253, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11254 value5631 value1 value2 = (output11254, value5, value1) := by
  rw [input11254_def, output11254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11252]
  dsimp only
  rw [child11253]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11252_skip, output11253_skip]
  kernel_rfl

theorem node11255_cond_eq
    (child11251 : Flapjack.WordAlloc.removeDeadStructural input11251 value5630 value1 value2 = (output11251, value5631, value1))
    (child11254 : Flapjack.WordAlloc.removeDeadStructural input11254 value5631 value1 value2 = (output11254, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11255 value5630 value1 value2 = (output11255, value5, value1) := by
  rw [input11255_def, output11255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11251]
  dsimp only
  rw [child11254]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11251_skip, output11254_skip]
  kernel_rfl

theorem node11256_cond_eq
    (child11250 : Flapjack.WordAlloc.removeDeadStructural input11250 value5629 value1 value2 = (output11250, value5630, value1))
    (child11255 : Flapjack.WordAlloc.removeDeadStructural input11255 value5630 value1 value2 = (output11255, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11256 value5629 value1 value2 = (output11256, value5, value1) := by
  rw [input11256_def, output11256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11250]
  dsimp only
  rw [child11255]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11250_skip, output11255_skip]
  kernel_rfl

theorem node11257_cond_eq
    (child11249 : Flapjack.WordAlloc.removeDeadStructural input11249 value5628 value1 value2 = (output11249, value5629, value1))
    (child11256 : Flapjack.WordAlloc.removeDeadStructural input11256 value5629 value1 value2 = (output11256, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11257 value5628 value1 value2 = (output11257, value5, value1) := by
  rw [input11257_def, output11257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11249]
  dsimp only
  rw [child11256]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11249_skip, output11256_skip]
  kernel_rfl

theorem node11258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11258 value5 value1 value2 = (output11258, value5633, value1) := by
  rw [input11258_def, output11258_def]
  kernel_rfl

theorem node11259_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11259 value5633 value1 value2 = (output11259, value5634, value1) := by
  rw [input11259_def, output11259_def]
  kernel_rfl

theorem node11260_cond_eq
    (child11258 : Flapjack.WordAlloc.removeDeadStructural input11258 value5 value1 value2 = (output11258, value5633, value1))
    (child11259 : Flapjack.WordAlloc.removeDeadStructural input11259 value5633 value1 value2 = (output11259, value5634, value1)) : Flapjack.WordAlloc.removeDeadStructural input11260 value5 value1 value2 = (output11260, value5634, value1) := by
  rw [input11260_def, output11260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11258]
  dsimp only
  rw [child11259]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11258_skip, output11259_skip]
  kernel_rfl

theorem node11261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11261 value5634 value1 value2 = (output11261, value5635, value1) := by
  rw [input11261_def, output11261_def]
  kernel_rfl

theorem node11262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11262 value5635 value1 value2 = (output11262, value5635, value1) := by
  rw [input11262_def, output11262_def]
  kernel_rfl

theorem node11263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11263 value5635 value1 value2 = (output11263, value5636, value1) := by
  rw [input11263_def, output11263_def]
  kernel_rfl

#print axioms node11263_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
