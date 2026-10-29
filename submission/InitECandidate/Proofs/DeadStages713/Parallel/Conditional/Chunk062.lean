import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk062
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node15872_cond_eq
    (child6134 : Flapjack.WordAlloc.removeDeadStructural input6134 value5 value1 value2 = (output6134, value3071, value1))
    (child15871 : Flapjack.WordAlloc.removeDeadStructural input15871 value3071 value1 value2 = (output15871, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15872 value5 value1 value2 = (output15872, value6896, value1) := by
  rw [input15872_def, output15872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6134]
  try dsimp only
  rw [child15871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6134_skip, output15871_skip]
  kernel_rfl

theorem node15873_cond_eq
    (child6131 : Flapjack.WordAlloc.removeDeadStructural input6131 value3064 value1 value2 = (output6131, value5, value1))
    (child15872 : Flapjack.WordAlloc.removeDeadStructural input15872 value5 value1 value2 = (output15872, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15873 value3064 value1 value2 = (output15873, value6896, value1) := by
  rw [input15873_def, output15873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6131]
  try dsimp only
  rw [child15872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6131_skip, output15872_skip]
  kernel_rfl

theorem node15874_cond_eq
    (child6120 : Flapjack.WordAlloc.removeDeadStructural input6120 value3064 value1 value2 = (output6120, value3064, value1))
    (child15873 : Flapjack.WordAlloc.removeDeadStructural input15873 value3064 value1 value2 = (output15873, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15874 value3064 value1 value2 = (output15874, value6896, value1) := by
  rw [input15874_def, output15874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6120]
  try dsimp only
  rw [child15873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6120_skip, output15873_skip]
  kernel_rfl

theorem node15875_cond_eq
    (child6119 : Flapjack.WordAlloc.removeDeadStructural input6119 value3063 value1 value2 = (output6119, value3064, value1))
    (child15874 : Flapjack.WordAlloc.removeDeadStructural input15874 value3064 value1 value2 = (output15874, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15875 value3063 value1 value2 = (output15875, value6896, value1) := by
  rw [input15875_def, output15875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6119]
  try dsimp only
  rw [child15874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6119_skip, output15874_skip]
  kernel_rfl

theorem node15876_cond_eq
    (child6118 : Flapjack.WordAlloc.removeDeadStructural input6118 value5 value1 value2 = (output6118, value3063, value1))
    (child15875 : Flapjack.WordAlloc.removeDeadStructural input15875 value3063 value1 value2 = (output15875, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15876 value5 value1 value2 = (output15876, value6896, value1) := by
  rw [input15876_def, output15876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6118]
  try dsimp only
  rw [child15875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6118_skip, output15875_skip]
  kernel_rfl

theorem node15877_cond_eq
    (child6115 : Flapjack.WordAlloc.removeDeadStructural input6115 value3056 value1 value2 = (output6115, value5, value1))
    (child15876 : Flapjack.WordAlloc.removeDeadStructural input15876 value5 value1 value2 = (output15876, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15877 value3056 value1 value2 = (output15877, value6896, value1) := by
  rw [input15877_def, output15877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6115]
  try dsimp only
  rw [child15876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6115_skip, output15876_skip]
  kernel_rfl

theorem node15878_cond_eq
    (child6104 : Flapjack.WordAlloc.removeDeadStructural input6104 value3056 value1 value2 = (output6104, value3056, value1))
    (child15877 : Flapjack.WordAlloc.removeDeadStructural input15877 value3056 value1 value2 = (output15877, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15878 value3056 value1 value2 = (output15878, value6896, value1) := by
  rw [input15878_def, output15878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6104]
  try dsimp only
  rw [child15877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6104_skip, output15877_skip]
  kernel_rfl

theorem node15879_cond_eq
    (child6103 : Flapjack.WordAlloc.removeDeadStructural input6103 value3055 value1 value2 = (output6103, value3056, value1))
    (child15878 : Flapjack.WordAlloc.removeDeadStructural input15878 value3056 value1 value2 = (output15878, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15879 value3055 value1 value2 = (output15879, value6896, value1) := by
  rw [input15879_def, output15879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6103]
  try dsimp only
  rw [child15878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6103_skip, output15878_skip]
  kernel_rfl

theorem node15880_cond_eq
    (child6102 : Flapjack.WordAlloc.removeDeadStructural input6102 value5 value1 value2 = (output6102, value3055, value1))
    (child15879 : Flapjack.WordAlloc.removeDeadStructural input15879 value3055 value1 value2 = (output15879, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15880 value5 value1 value2 = (output15880, value6896, value1) := by
  rw [input15880_def, output15880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6102]
  try dsimp only
  rw [child15879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6102_skip, output15879_skip]
  kernel_rfl

theorem node15881_cond_eq
    (child6099 : Flapjack.WordAlloc.removeDeadStructural input6099 value3048 value1 value2 = (output6099, value5, value1))
    (child15880 : Flapjack.WordAlloc.removeDeadStructural input15880 value5 value1 value2 = (output15880, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15881 value3048 value1 value2 = (output15881, value6896, value1) := by
  rw [input15881_def, output15881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6099]
  try dsimp only
  rw [child15880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6099_skip, output15880_skip]
  kernel_rfl

theorem node15882_cond_eq
    (child6088 : Flapjack.WordAlloc.removeDeadStructural input6088 value3048 value1 value2 = (output6088, value3048, value1))
    (child15881 : Flapjack.WordAlloc.removeDeadStructural input15881 value3048 value1 value2 = (output15881, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15882 value3048 value1 value2 = (output15882, value6896, value1) := by
  rw [input15882_def, output15882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6088]
  try dsimp only
  rw [child15881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6088_skip, output15881_skip]
  kernel_rfl

theorem node15883_cond_eq
    (child6087 : Flapjack.WordAlloc.removeDeadStructural input6087 value3047 value1 value2 = (output6087, value3048, value1))
    (child15882 : Flapjack.WordAlloc.removeDeadStructural input15882 value3048 value1 value2 = (output15882, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15883 value3047 value1 value2 = (output15883, value6896, value1) := by
  rw [input15883_def, output15883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6087]
  try dsimp only
  rw [child15882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6087_skip, output15882_skip]
  kernel_rfl

theorem node15884_cond_eq
    (child6086 : Flapjack.WordAlloc.removeDeadStructural input6086 value5 value1 value2 = (output6086, value3047, value1))
    (child15883 : Flapjack.WordAlloc.removeDeadStructural input15883 value3047 value1 value2 = (output15883, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15884 value5 value1 value2 = (output15884, value6896, value1) := by
  rw [input15884_def, output15884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6086]
  try dsimp only
  rw [child15883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6086_skip, output15883_skip]
  kernel_rfl

theorem node15885_cond_eq
    (child6083 : Flapjack.WordAlloc.removeDeadStructural input6083 value3040 value1 value2 = (output6083, value5, value1))
    (child15884 : Flapjack.WordAlloc.removeDeadStructural input15884 value5 value1 value2 = (output15884, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15885 value3040 value1 value2 = (output15885, value6896, value1) := by
  rw [input15885_def, output15885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6083]
  try dsimp only
  rw [child15884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6083_skip, output15884_skip]
  kernel_rfl

theorem node15886_cond_eq
    (child6072 : Flapjack.WordAlloc.removeDeadStructural input6072 value3040 value1 value2 = (output6072, value3040, value1))
    (child15885 : Flapjack.WordAlloc.removeDeadStructural input15885 value3040 value1 value2 = (output15885, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15886 value3040 value1 value2 = (output15886, value6896, value1) := by
  rw [input15886_def, output15886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6072]
  try dsimp only
  rw [child15885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6072_skip, output15885_skip]
  kernel_rfl

theorem node15887_cond_eq
    (child6071 : Flapjack.WordAlloc.removeDeadStructural input6071 value3039 value1 value2 = (output6071, value3040, value1))
    (child15886 : Flapjack.WordAlloc.removeDeadStructural input15886 value3040 value1 value2 = (output15886, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15887 value3039 value1 value2 = (output15887, value6896, value1) := by
  rw [input15887_def, output15887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6071]
  try dsimp only
  rw [child15886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6071_skip, output15886_skip]
  kernel_rfl

theorem node15888_cond_eq
    (child6070 : Flapjack.WordAlloc.removeDeadStructural input6070 value5 value1 value2 = (output6070, value3039, value1))
    (child15887 : Flapjack.WordAlloc.removeDeadStructural input15887 value3039 value1 value2 = (output15887, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15888 value5 value1 value2 = (output15888, value6896, value1) := by
  rw [input15888_def, output15888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6070]
  try dsimp only
  rw [child15887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6070_skip, output15887_skip]
  kernel_rfl

theorem node15889_cond_eq
    (child6067 : Flapjack.WordAlloc.removeDeadStructural input6067 value3032 value1 value2 = (output6067, value5, value1))
    (child15888 : Flapjack.WordAlloc.removeDeadStructural input15888 value5 value1 value2 = (output15888, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15889 value3032 value1 value2 = (output15889, value6896, value1) := by
  rw [input15889_def, output15889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6067]
  try dsimp only
  rw [child15888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6067_skip, output15888_skip]
  kernel_rfl

theorem node15890_cond_eq
    (child6056 : Flapjack.WordAlloc.removeDeadStructural input6056 value3032 value1 value2 = (output6056, value3032, value1))
    (child15889 : Flapjack.WordAlloc.removeDeadStructural input15889 value3032 value1 value2 = (output15889, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15890 value3032 value1 value2 = (output15890, value6896, value1) := by
  rw [input15890_def, output15890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6056]
  try dsimp only
  rw [child15889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6056_skip, output15889_skip]
  kernel_rfl

theorem node15891_cond_eq
    (child6055 : Flapjack.WordAlloc.removeDeadStructural input6055 value3031 value1 value2 = (output6055, value3032, value1))
    (child15890 : Flapjack.WordAlloc.removeDeadStructural input15890 value3032 value1 value2 = (output15890, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15891 value3031 value1 value2 = (output15891, value6896, value1) := by
  rw [input15891_def, output15891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6055]
  try dsimp only
  rw [child15890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6055_skip, output15890_skip]
  kernel_rfl

theorem node15892_cond_eq
    (child6054 : Flapjack.WordAlloc.removeDeadStructural input6054 value5 value1 value2 = (output6054, value3031, value1))
    (child15891 : Flapjack.WordAlloc.removeDeadStructural input15891 value3031 value1 value2 = (output15891, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15892 value5 value1 value2 = (output15892, value6896, value1) := by
  rw [input15892_def, output15892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6054]
  try dsimp only
  rw [child15891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6054_skip, output15891_skip]
  kernel_rfl

theorem node15893_cond_eq
    (child6051 : Flapjack.WordAlloc.removeDeadStructural input6051 value3024 value1 value2 = (output6051, value5, value1))
    (child15892 : Flapjack.WordAlloc.removeDeadStructural input15892 value5 value1 value2 = (output15892, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15893 value3024 value1 value2 = (output15893, value6896, value1) := by
  rw [input15893_def, output15893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6051]
  try dsimp only
  rw [child15892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6051_skip, output15892_skip]
  kernel_rfl

theorem node15894_cond_eq
    (child6040 : Flapjack.WordAlloc.removeDeadStructural input6040 value3024 value1 value2 = (output6040, value3024, value1))
    (child15893 : Flapjack.WordAlloc.removeDeadStructural input15893 value3024 value1 value2 = (output15893, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15894 value3024 value1 value2 = (output15894, value6896, value1) := by
  rw [input15894_def, output15894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6040]
  try dsimp only
  rw [child15893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6040_skip, output15893_skip]
  kernel_rfl

theorem node15895_cond_eq
    (child6039 : Flapjack.WordAlloc.removeDeadStructural input6039 value3023 value1 value2 = (output6039, value3024, value1))
    (child15894 : Flapjack.WordAlloc.removeDeadStructural input15894 value3024 value1 value2 = (output15894, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15895 value3023 value1 value2 = (output15895, value6896, value1) := by
  rw [input15895_def, output15895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6039]
  try dsimp only
  rw [child15894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6039_skip, output15894_skip]
  kernel_rfl

theorem node15896_cond_eq
    (child6038 : Flapjack.WordAlloc.removeDeadStructural input6038 value5 value1 value2 = (output6038, value3023, value1))
    (child15895 : Flapjack.WordAlloc.removeDeadStructural input15895 value3023 value1 value2 = (output15895, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15896 value5 value1 value2 = (output15896, value6896, value1) := by
  rw [input15896_def, output15896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6038]
  try dsimp only
  rw [child15895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6038_skip, output15895_skip]
  kernel_rfl

theorem node15897_cond_eq
    (child6035 : Flapjack.WordAlloc.removeDeadStructural input6035 value3016 value1 value2 = (output6035, value5, value1))
    (child15896 : Flapjack.WordAlloc.removeDeadStructural input15896 value5 value1 value2 = (output15896, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15897 value3016 value1 value2 = (output15897, value6896, value1) := by
  rw [input15897_def, output15897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6035]
  try dsimp only
  rw [child15896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6035_skip, output15896_skip]
  kernel_rfl

theorem node15898_cond_eq
    (child6024 : Flapjack.WordAlloc.removeDeadStructural input6024 value3016 value1 value2 = (output6024, value3016, value1))
    (child15897 : Flapjack.WordAlloc.removeDeadStructural input15897 value3016 value1 value2 = (output15897, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15898 value3016 value1 value2 = (output15898, value6896, value1) := by
  rw [input15898_def, output15898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6024]
  try dsimp only
  rw [child15897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6024_skip, output15897_skip]
  kernel_rfl

theorem node15899_cond_eq
    (child6023 : Flapjack.WordAlloc.removeDeadStructural input6023 value3015 value1 value2 = (output6023, value3016, value1))
    (child15898 : Flapjack.WordAlloc.removeDeadStructural input15898 value3016 value1 value2 = (output15898, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15899 value3015 value1 value2 = (output15899, value6896, value1) := by
  rw [input15899_def, output15899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6023]
  try dsimp only
  rw [child15898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6023_skip, output15898_skip]
  kernel_rfl

theorem node15900_cond_eq
    (child6022 : Flapjack.WordAlloc.removeDeadStructural input6022 value5 value1 value2 = (output6022, value3015, value1))
    (child15899 : Flapjack.WordAlloc.removeDeadStructural input15899 value3015 value1 value2 = (output15899, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15900 value5 value1 value2 = (output15900, value6896, value1) := by
  rw [input15900_def, output15900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6022]
  try dsimp only
  rw [child15899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6022_skip, output15899_skip]
  kernel_rfl

theorem node15901_cond_eq
    (child6019 : Flapjack.WordAlloc.removeDeadStructural input6019 value3008 value1 value2 = (output6019, value5, value1))
    (child15900 : Flapjack.WordAlloc.removeDeadStructural input15900 value5 value1 value2 = (output15900, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15901 value3008 value1 value2 = (output15901, value6896, value1) := by
  rw [input15901_def, output15901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6019]
  try dsimp only
  rw [child15900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6019_skip, output15900_skip]
  kernel_rfl

theorem node15902_cond_eq
    (child6008 : Flapjack.WordAlloc.removeDeadStructural input6008 value3008 value1 value2 = (output6008, value3008, value1))
    (child15901 : Flapjack.WordAlloc.removeDeadStructural input15901 value3008 value1 value2 = (output15901, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15902 value3008 value1 value2 = (output15902, value6896, value1) := by
  rw [input15902_def, output15902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6008]
  try dsimp only
  rw [child15901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6008_skip, output15901_skip]
  kernel_rfl

theorem node15903_cond_eq
    (child6007 : Flapjack.WordAlloc.removeDeadStructural input6007 value3007 value1 value2 = (output6007, value3008, value1))
    (child15902 : Flapjack.WordAlloc.removeDeadStructural input15902 value3008 value1 value2 = (output15902, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15903 value3007 value1 value2 = (output15903, value6896, value1) := by
  rw [input15903_def, output15903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6007]
  try dsimp only
  rw [child15902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6007_skip, output15902_skip]
  kernel_rfl

theorem node15904_cond_eq
    (child6006 : Flapjack.WordAlloc.removeDeadStructural input6006 value5 value1 value2 = (output6006, value3007, value1))
    (child15903 : Flapjack.WordAlloc.removeDeadStructural input15903 value3007 value1 value2 = (output15903, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15904 value5 value1 value2 = (output15904, value6896, value1) := by
  rw [input15904_def, output15904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6006]
  try dsimp only
  rw [child15903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6006_skip, output15903_skip]
  kernel_rfl

theorem node15905_cond_eq
    (child6003 : Flapjack.WordAlloc.removeDeadStructural input6003 value3000 value1 value2 = (output6003, value5, value1))
    (child15904 : Flapjack.WordAlloc.removeDeadStructural input15904 value5 value1 value2 = (output15904, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15905 value3000 value1 value2 = (output15905, value6896, value1) := by
  rw [input15905_def, output15905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6003]
  try dsimp only
  rw [child15904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6003_skip, output15904_skip]
  kernel_rfl

theorem node15906_cond_eq
    (child5992 : Flapjack.WordAlloc.removeDeadStructural input5992 value3000 value1 value2 = (output5992, value3000, value1))
    (child15905 : Flapjack.WordAlloc.removeDeadStructural input15905 value3000 value1 value2 = (output15905, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15906 value3000 value1 value2 = (output15906, value6896, value1) := by
  rw [input15906_def, output15906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5992]
  try dsimp only
  rw [child15905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5992_skip, output15905_skip]
  kernel_rfl

theorem node15907_cond_eq
    (child5991 : Flapjack.WordAlloc.removeDeadStructural input5991 value2999 value1 value2 = (output5991, value3000, value1))
    (child15906 : Flapjack.WordAlloc.removeDeadStructural input15906 value3000 value1 value2 = (output15906, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15907 value2999 value1 value2 = (output15907, value6896, value1) := by
  rw [input15907_def, output15907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5991]
  try dsimp only
  rw [child15906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5991_skip, output15906_skip]
  kernel_rfl

theorem node15908_cond_eq
    (child5990 : Flapjack.WordAlloc.removeDeadStructural input5990 value5 value1 value2 = (output5990, value2999, value1))
    (child15907 : Flapjack.WordAlloc.removeDeadStructural input15907 value2999 value1 value2 = (output15907, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15908 value5 value1 value2 = (output15908, value6896, value1) := by
  rw [input15908_def, output15908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5990]
  try dsimp only
  rw [child15907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5990_skip, output15907_skip]
  kernel_rfl

theorem node15909_cond_eq
    (child5987 : Flapjack.WordAlloc.removeDeadStructural input5987 value2992 value1 value2 = (output5987, value5, value1))
    (child15908 : Flapjack.WordAlloc.removeDeadStructural input15908 value5 value1 value2 = (output15908, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15909 value2992 value1 value2 = (output15909, value6896, value1) := by
  rw [input15909_def, output15909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5987]
  try dsimp only
  rw [child15908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5987_skip, output15908_skip]
  kernel_rfl

theorem node15910_cond_eq
    (child5976 : Flapjack.WordAlloc.removeDeadStructural input5976 value2992 value1 value2 = (output5976, value2992, value1))
    (child15909 : Flapjack.WordAlloc.removeDeadStructural input15909 value2992 value1 value2 = (output15909, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15910 value2992 value1 value2 = (output15910, value6896, value1) := by
  rw [input15910_def, output15910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5976]
  try dsimp only
  rw [child15909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5976_skip, output15909_skip]
  kernel_rfl

theorem node15911_cond_eq
    (child5975 : Flapjack.WordAlloc.removeDeadStructural input5975 value2991 value1 value2 = (output5975, value2992, value1))
    (child15910 : Flapjack.WordAlloc.removeDeadStructural input15910 value2992 value1 value2 = (output15910, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15911 value2991 value1 value2 = (output15911, value6896, value1) := by
  rw [input15911_def, output15911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5975]
  try dsimp only
  rw [child15910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5975_skip, output15910_skip]
  kernel_rfl

theorem node15912_cond_eq
    (child5974 : Flapjack.WordAlloc.removeDeadStructural input5974 value5 value1 value2 = (output5974, value2991, value1))
    (child15911 : Flapjack.WordAlloc.removeDeadStructural input15911 value2991 value1 value2 = (output15911, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15912 value5 value1 value2 = (output15912, value6896, value1) := by
  rw [input15912_def, output15912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5974]
  try dsimp only
  rw [child15911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5974_skip, output15911_skip]
  kernel_rfl

theorem node15913_cond_eq
    (child5971 : Flapjack.WordAlloc.removeDeadStructural input5971 value2984 value1 value2 = (output5971, value5, value1))
    (child15912 : Flapjack.WordAlloc.removeDeadStructural input15912 value5 value1 value2 = (output15912, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15913 value2984 value1 value2 = (output15913, value6896, value1) := by
  rw [input15913_def, output15913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5971]
  try dsimp only
  rw [child15912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5971_skip, output15912_skip]
  kernel_rfl

theorem node15914_cond_eq
    (child5960 : Flapjack.WordAlloc.removeDeadStructural input5960 value2984 value1 value2 = (output5960, value2984, value1))
    (child15913 : Flapjack.WordAlloc.removeDeadStructural input15913 value2984 value1 value2 = (output15913, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15914 value2984 value1 value2 = (output15914, value6896, value1) := by
  rw [input15914_def, output15914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5960]
  try dsimp only
  rw [child15913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5960_skip, output15913_skip]
  kernel_rfl

theorem node15915_cond_eq
    (child5959 : Flapjack.WordAlloc.removeDeadStructural input5959 value2983 value1 value2 = (output5959, value2984, value1))
    (child15914 : Flapjack.WordAlloc.removeDeadStructural input15914 value2984 value1 value2 = (output15914, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15915 value2983 value1 value2 = (output15915, value6896, value1) := by
  rw [input15915_def, output15915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5959]
  try dsimp only
  rw [child15914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5959_skip, output15914_skip]
  kernel_rfl

theorem node15916_cond_eq
    (child5958 : Flapjack.WordAlloc.removeDeadStructural input5958 value5 value1 value2 = (output5958, value2983, value1))
    (child15915 : Flapjack.WordAlloc.removeDeadStructural input15915 value2983 value1 value2 = (output15915, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15916 value5 value1 value2 = (output15916, value6896, value1) := by
  rw [input15916_def, output15916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5958]
  try dsimp only
  rw [child15915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5958_skip, output15915_skip]
  kernel_rfl

theorem node15917_cond_eq
    (child5955 : Flapjack.WordAlloc.removeDeadStructural input5955 value2976 value1 value2 = (output5955, value5, value1))
    (child15916 : Flapjack.WordAlloc.removeDeadStructural input15916 value5 value1 value2 = (output15916, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15917 value2976 value1 value2 = (output15917, value6896, value1) := by
  rw [input15917_def, output15917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5955]
  try dsimp only
  rw [child15916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5955_skip, output15916_skip]
  kernel_rfl

theorem node15918_cond_eq
    (child5944 : Flapjack.WordAlloc.removeDeadStructural input5944 value2976 value1 value2 = (output5944, value2976, value1))
    (child15917 : Flapjack.WordAlloc.removeDeadStructural input15917 value2976 value1 value2 = (output15917, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15918 value2976 value1 value2 = (output15918, value6896, value1) := by
  rw [input15918_def, output15918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5944]
  try dsimp only
  rw [child15917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5944_skip, output15917_skip]
  kernel_rfl

theorem node15919_cond_eq
    (child5943 : Flapjack.WordAlloc.removeDeadStructural input5943 value2975 value1 value2 = (output5943, value2976, value1))
    (child15918 : Flapjack.WordAlloc.removeDeadStructural input15918 value2976 value1 value2 = (output15918, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15919 value2975 value1 value2 = (output15919, value6896, value1) := by
  rw [input15919_def, output15919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5943]
  try dsimp only
  rw [child15918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5943_skip, output15918_skip]
  kernel_rfl

theorem node15920_cond_eq
    (child5942 : Flapjack.WordAlloc.removeDeadStructural input5942 value5 value1 value2 = (output5942, value2975, value1))
    (child15919 : Flapjack.WordAlloc.removeDeadStructural input15919 value2975 value1 value2 = (output15919, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15920 value5 value1 value2 = (output15920, value6896, value1) := by
  rw [input15920_def, output15920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5942]
  try dsimp only
  rw [child15919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5942_skip, output15919_skip]
  kernel_rfl

theorem node15921_cond_eq
    (child5939 : Flapjack.WordAlloc.removeDeadStructural input5939 value2968 value1 value2 = (output5939, value5, value1))
    (child15920 : Flapjack.WordAlloc.removeDeadStructural input15920 value5 value1 value2 = (output15920, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15921 value2968 value1 value2 = (output15921, value6896, value1) := by
  rw [input15921_def, output15921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5939]
  try dsimp only
  rw [child15920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5939_skip, output15920_skip]
  kernel_rfl

theorem node15922_cond_eq
    (child5928 : Flapjack.WordAlloc.removeDeadStructural input5928 value2968 value1 value2 = (output5928, value2968, value1))
    (child15921 : Flapjack.WordAlloc.removeDeadStructural input15921 value2968 value1 value2 = (output15921, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15922 value2968 value1 value2 = (output15922, value6896, value1) := by
  rw [input15922_def, output15922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5928]
  try dsimp only
  rw [child15921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5928_skip, output15921_skip]
  kernel_rfl

theorem node15923_cond_eq
    (child5927 : Flapjack.WordAlloc.removeDeadStructural input5927 value2967 value1 value2 = (output5927, value2968, value1))
    (child15922 : Flapjack.WordAlloc.removeDeadStructural input15922 value2968 value1 value2 = (output15922, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15923 value2967 value1 value2 = (output15923, value6896, value1) := by
  rw [input15923_def, output15923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5927]
  try dsimp only
  rw [child15922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5927_skip, output15922_skip]
  kernel_rfl

theorem node15924_cond_eq
    (child5926 : Flapjack.WordAlloc.removeDeadStructural input5926 value5 value1 value2 = (output5926, value2967, value1))
    (child15923 : Flapjack.WordAlloc.removeDeadStructural input15923 value2967 value1 value2 = (output15923, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15924 value5 value1 value2 = (output15924, value6896, value1) := by
  rw [input15924_def, output15924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5926]
  try dsimp only
  rw [child15923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5926_skip, output15923_skip]
  kernel_rfl

theorem node15925_cond_eq
    (child5923 : Flapjack.WordAlloc.removeDeadStructural input5923 value2960 value1 value2 = (output5923, value5, value1))
    (child15924 : Flapjack.WordAlloc.removeDeadStructural input15924 value5 value1 value2 = (output15924, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15925 value2960 value1 value2 = (output15925, value6896, value1) := by
  rw [input15925_def, output15925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5923]
  try dsimp only
  rw [child15924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5923_skip, output15924_skip]
  kernel_rfl

theorem node15926_cond_eq
    (child5912 : Flapjack.WordAlloc.removeDeadStructural input5912 value2960 value1 value2 = (output5912, value2960, value1))
    (child15925 : Flapjack.WordAlloc.removeDeadStructural input15925 value2960 value1 value2 = (output15925, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15926 value2960 value1 value2 = (output15926, value6896, value1) := by
  rw [input15926_def, output15926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5912]
  try dsimp only
  rw [child15925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5912_skip, output15925_skip]
  kernel_rfl

theorem node15927_cond_eq
    (child5911 : Flapjack.WordAlloc.removeDeadStructural input5911 value2959 value1 value2 = (output5911, value2960, value1))
    (child15926 : Flapjack.WordAlloc.removeDeadStructural input15926 value2960 value1 value2 = (output15926, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15927 value2959 value1 value2 = (output15927, value6896, value1) := by
  rw [input15927_def, output15927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5911]
  try dsimp only
  rw [child15926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5911_skip, output15926_skip]
  kernel_rfl

theorem node15928_cond_eq
    (child5910 : Flapjack.WordAlloc.removeDeadStructural input5910 value5 value1 value2 = (output5910, value2959, value1))
    (child15927 : Flapjack.WordAlloc.removeDeadStructural input15927 value2959 value1 value2 = (output15927, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15928 value5 value1 value2 = (output15928, value6896, value1) := by
  rw [input15928_def, output15928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5910]
  try dsimp only
  rw [child15927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5910_skip, output15927_skip]
  kernel_rfl

theorem node15929_cond_eq
    (child5907 : Flapjack.WordAlloc.removeDeadStructural input5907 value2952 value1 value2 = (output5907, value5, value1))
    (child15928 : Flapjack.WordAlloc.removeDeadStructural input15928 value5 value1 value2 = (output15928, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15929 value2952 value1 value2 = (output15929, value6896, value1) := by
  rw [input15929_def, output15929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5907]
  try dsimp only
  rw [child15928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5907_skip, output15928_skip]
  kernel_rfl

theorem node15930_cond_eq
    (child5896 : Flapjack.WordAlloc.removeDeadStructural input5896 value2952 value1 value2 = (output5896, value2952, value1))
    (child15929 : Flapjack.WordAlloc.removeDeadStructural input15929 value2952 value1 value2 = (output15929, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15930 value2952 value1 value2 = (output15930, value6896, value1) := by
  rw [input15930_def, output15930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5896]
  try dsimp only
  rw [child15929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5896_skip, output15929_skip]
  kernel_rfl

theorem node15931_cond_eq
    (child5895 : Flapjack.WordAlloc.removeDeadStructural input5895 value2951 value1 value2 = (output5895, value2952, value1))
    (child15930 : Flapjack.WordAlloc.removeDeadStructural input15930 value2952 value1 value2 = (output15930, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15931 value2951 value1 value2 = (output15931, value6896, value1) := by
  rw [input15931_def, output15931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5895]
  try dsimp only
  rw [child15930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5895_skip, output15930_skip]
  kernel_rfl

theorem node15932_cond_eq
    (child5894 : Flapjack.WordAlloc.removeDeadStructural input5894 value5 value1 value2 = (output5894, value2951, value1))
    (child15931 : Flapjack.WordAlloc.removeDeadStructural input15931 value2951 value1 value2 = (output15931, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15932 value5 value1 value2 = (output15932, value6896, value1) := by
  rw [input15932_def, output15932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5894]
  try dsimp only
  rw [child15931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5894_skip, output15931_skip]
  kernel_rfl

theorem node15933_cond_eq
    (child5891 : Flapjack.WordAlloc.removeDeadStructural input5891 value2944 value1 value2 = (output5891, value5, value1))
    (child15932 : Flapjack.WordAlloc.removeDeadStructural input15932 value5 value1 value2 = (output15932, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15933 value2944 value1 value2 = (output15933, value6896, value1) := by
  rw [input15933_def, output15933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5891]
  try dsimp only
  rw [child15932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5891_skip, output15932_skip]
  kernel_rfl

theorem node15934_cond_eq
    (child5880 : Flapjack.WordAlloc.removeDeadStructural input5880 value2944 value1 value2 = (output5880, value2944, value1))
    (child15933 : Flapjack.WordAlloc.removeDeadStructural input15933 value2944 value1 value2 = (output15933, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15934 value2944 value1 value2 = (output15934, value6896, value1) := by
  rw [input15934_def, output15934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5880]
  try dsimp only
  rw [child15933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5880_skip, output15933_skip]
  kernel_rfl

theorem node15935_cond_eq
    (child5879 : Flapjack.WordAlloc.removeDeadStructural input5879 value2943 value1 value2 = (output5879, value2944, value1))
    (child15934 : Flapjack.WordAlloc.removeDeadStructural input15934 value2944 value1 value2 = (output15934, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15935 value2943 value1 value2 = (output15935, value6896, value1) := by
  rw [input15935_def, output15935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5879]
  try dsimp only
  rw [child15934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5879_skip, output15934_skip]
  kernel_rfl

theorem node15936_cond_eq
    (child5878 : Flapjack.WordAlloc.removeDeadStructural input5878 value5 value1 value2 = (output5878, value2943, value1))
    (child15935 : Flapjack.WordAlloc.removeDeadStructural input15935 value2943 value1 value2 = (output15935, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15936 value5 value1 value2 = (output15936, value6896, value1) := by
  rw [input15936_def, output15936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5878]
  try dsimp only
  rw [child15935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5878_skip, output15935_skip]
  kernel_rfl

theorem node15937_cond_eq
    (child5875 : Flapjack.WordAlloc.removeDeadStructural input5875 value2936 value1 value2 = (output5875, value5, value1))
    (child15936 : Flapjack.WordAlloc.removeDeadStructural input15936 value5 value1 value2 = (output15936, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15937 value2936 value1 value2 = (output15937, value6896, value1) := by
  rw [input15937_def, output15937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5875]
  try dsimp only
  rw [child15936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5875_skip, output15936_skip]
  kernel_rfl

theorem node15938_cond_eq
    (child5864 : Flapjack.WordAlloc.removeDeadStructural input5864 value2936 value1 value2 = (output5864, value2936, value1))
    (child15937 : Flapjack.WordAlloc.removeDeadStructural input15937 value2936 value1 value2 = (output15937, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15938 value2936 value1 value2 = (output15938, value6896, value1) := by
  rw [input15938_def, output15938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5864]
  try dsimp only
  rw [child15937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5864_skip, output15937_skip]
  kernel_rfl

theorem node15939_cond_eq
    (child5863 : Flapjack.WordAlloc.removeDeadStructural input5863 value2935 value1 value2 = (output5863, value2936, value1))
    (child15938 : Flapjack.WordAlloc.removeDeadStructural input15938 value2936 value1 value2 = (output15938, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15939 value2935 value1 value2 = (output15939, value6896, value1) := by
  rw [input15939_def, output15939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5863]
  try dsimp only
  rw [child15938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5863_skip, output15938_skip]
  kernel_rfl

theorem node15940_cond_eq
    (child5862 : Flapjack.WordAlloc.removeDeadStructural input5862 value5 value1 value2 = (output5862, value2935, value1))
    (child15939 : Flapjack.WordAlloc.removeDeadStructural input15939 value2935 value1 value2 = (output15939, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15940 value5 value1 value2 = (output15940, value6896, value1) := by
  rw [input15940_def, output15940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5862]
  try dsimp only
  rw [child15939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5862_skip, output15939_skip]
  kernel_rfl

theorem node15941_cond_eq
    (child5859 : Flapjack.WordAlloc.removeDeadStructural input5859 value2928 value1 value2 = (output5859, value5, value1))
    (child15940 : Flapjack.WordAlloc.removeDeadStructural input15940 value5 value1 value2 = (output15940, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15941 value2928 value1 value2 = (output15941, value6896, value1) := by
  rw [input15941_def, output15941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5859]
  try dsimp only
  rw [child15940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5859_skip, output15940_skip]
  kernel_rfl

theorem node15942_cond_eq
    (child5848 : Flapjack.WordAlloc.removeDeadStructural input5848 value2928 value1 value2 = (output5848, value2928, value1))
    (child15941 : Flapjack.WordAlloc.removeDeadStructural input15941 value2928 value1 value2 = (output15941, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15942 value2928 value1 value2 = (output15942, value6896, value1) := by
  rw [input15942_def, output15942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5848]
  try dsimp only
  rw [child15941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5848_skip, output15941_skip]
  kernel_rfl

theorem node15943_cond_eq
    (child5847 : Flapjack.WordAlloc.removeDeadStructural input5847 value2927 value1 value2 = (output5847, value2928, value1))
    (child15942 : Flapjack.WordAlloc.removeDeadStructural input15942 value2928 value1 value2 = (output15942, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15943 value2927 value1 value2 = (output15943, value6896, value1) := by
  rw [input15943_def, output15943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5847]
  try dsimp only
  rw [child15942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5847_skip, output15942_skip]
  kernel_rfl

theorem node15944_cond_eq
    (child5846 : Flapjack.WordAlloc.removeDeadStructural input5846 value5 value1 value2 = (output5846, value2927, value1))
    (child15943 : Flapjack.WordAlloc.removeDeadStructural input15943 value2927 value1 value2 = (output15943, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15944 value5 value1 value2 = (output15944, value6896, value1) := by
  rw [input15944_def, output15944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5846]
  try dsimp only
  rw [child15943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5846_skip, output15943_skip]
  kernel_rfl

theorem node15945_cond_eq
    (child5843 : Flapjack.WordAlloc.removeDeadStructural input5843 value2920 value1 value2 = (output5843, value5, value1))
    (child15944 : Flapjack.WordAlloc.removeDeadStructural input15944 value5 value1 value2 = (output15944, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15945 value2920 value1 value2 = (output15945, value6896, value1) := by
  rw [input15945_def, output15945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5843]
  try dsimp only
  rw [child15944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5843_skip, output15944_skip]
  kernel_rfl

theorem node15946_cond_eq
    (child5832 : Flapjack.WordAlloc.removeDeadStructural input5832 value2920 value1 value2 = (output5832, value2920, value1))
    (child15945 : Flapjack.WordAlloc.removeDeadStructural input15945 value2920 value1 value2 = (output15945, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15946 value2920 value1 value2 = (output15946, value6896, value1) := by
  rw [input15946_def, output15946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5832]
  try dsimp only
  rw [child15945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5832_skip, output15945_skip]
  kernel_rfl

theorem node15947_cond_eq
    (child5831 : Flapjack.WordAlloc.removeDeadStructural input5831 value2919 value1 value2 = (output5831, value2920, value1))
    (child15946 : Flapjack.WordAlloc.removeDeadStructural input15946 value2920 value1 value2 = (output15946, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15947 value2919 value1 value2 = (output15947, value6896, value1) := by
  rw [input15947_def, output15947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5831]
  try dsimp only
  rw [child15946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5831_skip, output15946_skip]
  kernel_rfl

theorem node15948_cond_eq
    (child5830 : Flapjack.WordAlloc.removeDeadStructural input5830 value5 value1 value2 = (output5830, value2919, value1))
    (child15947 : Flapjack.WordAlloc.removeDeadStructural input15947 value2919 value1 value2 = (output15947, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15948 value5 value1 value2 = (output15948, value6896, value1) := by
  rw [input15948_def, output15948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5830]
  try dsimp only
  rw [child15947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5830_skip, output15947_skip]
  kernel_rfl

theorem node15949_cond_eq
    (child5827 : Flapjack.WordAlloc.removeDeadStructural input5827 value2912 value1 value2 = (output5827, value5, value1))
    (child15948 : Flapjack.WordAlloc.removeDeadStructural input15948 value5 value1 value2 = (output15948, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15949 value2912 value1 value2 = (output15949, value6896, value1) := by
  rw [input15949_def, output15949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5827]
  try dsimp only
  rw [child15948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5827_skip, output15948_skip]
  kernel_rfl

theorem node15950_cond_eq
    (child5816 : Flapjack.WordAlloc.removeDeadStructural input5816 value2912 value1 value2 = (output5816, value2912, value1))
    (child15949 : Flapjack.WordAlloc.removeDeadStructural input15949 value2912 value1 value2 = (output15949, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15950 value2912 value1 value2 = (output15950, value6896, value1) := by
  rw [input15950_def, output15950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5816]
  try dsimp only
  rw [child15949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5816_skip, output15949_skip]
  kernel_rfl

theorem node15951_cond_eq
    (child5815 : Flapjack.WordAlloc.removeDeadStructural input5815 value2911 value1 value2 = (output5815, value2912, value1))
    (child15950 : Flapjack.WordAlloc.removeDeadStructural input15950 value2912 value1 value2 = (output15950, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15951 value2911 value1 value2 = (output15951, value6896, value1) := by
  rw [input15951_def, output15951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5815]
  try dsimp only
  rw [child15950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5815_skip, output15950_skip]
  kernel_rfl

theorem node15952_cond_eq
    (child5814 : Flapjack.WordAlloc.removeDeadStructural input5814 value5 value1 value2 = (output5814, value2911, value1))
    (child15951 : Flapjack.WordAlloc.removeDeadStructural input15951 value2911 value1 value2 = (output15951, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15952 value5 value1 value2 = (output15952, value6896, value1) := by
  rw [input15952_def, output15952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5814]
  try dsimp only
  rw [child15951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5814_skip, output15951_skip]
  kernel_rfl

theorem node15953_cond_eq
    (child5811 : Flapjack.WordAlloc.removeDeadStructural input5811 value2904 value1 value2 = (output5811, value5, value1))
    (child15952 : Flapjack.WordAlloc.removeDeadStructural input15952 value5 value1 value2 = (output15952, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15953 value2904 value1 value2 = (output15953, value6896, value1) := by
  rw [input15953_def, output15953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5811]
  try dsimp only
  rw [child15952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5811_skip, output15952_skip]
  kernel_rfl

theorem node15954_cond_eq
    (child5800 : Flapjack.WordAlloc.removeDeadStructural input5800 value2904 value1 value2 = (output5800, value2904, value1))
    (child15953 : Flapjack.WordAlloc.removeDeadStructural input15953 value2904 value1 value2 = (output15953, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15954 value2904 value1 value2 = (output15954, value6896, value1) := by
  rw [input15954_def, output15954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5800]
  try dsimp only
  rw [child15953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5800_skip, output15953_skip]
  kernel_rfl

theorem node15955_cond_eq
    (child5799 : Flapjack.WordAlloc.removeDeadStructural input5799 value2903 value1 value2 = (output5799, value2904, value1))
    (child15954 : Flapjack.WordAlloc.removeDeadStructural input15954 value2904 value1 value2 = (output15954, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15955 value2903 value1 value2 = (output15955, value6896, value1) := by
  rw [input15955_def, output15955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5799]
  try dsimp only
  rw [child15954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5799_skip, output15954_skip]
  kernel_rfl

theorem node15956_cond_eq
    (child5798 : Flapjack.WordAlloc.removeDeadStructural input5798 value5 value1 value2 = (output5798, value2903, value1))
    (child15955 : Flapjack.WordAlloc.removeDeadStructural input15955 value2903 value1 value2 = (output15955, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15956 value5 value1 value2 = (output15956, value6896, value1) := by
  rw [input15956_def, output15956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5798]
  try dsimp only
  rw [child15955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5798_skip, output15955_skip]
  kernel_rfl

theorem node15957_cond_eq
    (child5795 : Flapjack.WordAlloc.removeDeadStructural input5795 value2896 value1 value2 = (output5795, value5, value1))
    (child15956 : Flapjack.WordAlloc.removeDeadStructural input15956 value5 value1 value2 = (output15956, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15957 value2896 value1 value2 = (output15957, value6896, value1) := by
  rw [input15957_def, output15957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5795]
  try dsimp only
  rw [child15956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5795_skip, output15956_skip]
  kernel_rfl

theorem node15958_cond_eq
    (child5784 : Flapjack.WordAlloc.removeDeadStructural input5784 value2896 value1 value2 = (output5784, value2896, value1))
    (child15957 : Flapjack.WordAlloc.removeDeadStructural input15957 value2896 value1 value2 = (output15957, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15958 value2896 value1 value2 = (output15958, value6896, value1) := by
  rw [input15958_def, output15958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5784]
  try dsimp only
  rw [child15957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5784_skip, output15957_skip]
  kernel_rfl

theorem node15959_cond_eq
    (child5783 : Flapjack.WordAlloc.removeDeadStructural input5783 value2895 value1 value2 = (output5783, value2896, value1))
    (child15958 : Flapjack.WordAlloc.removeDeadStructural input15958 value2896 value1 value2 = (output15958, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15959 value2895 value1 value2 = (output15959, value6896, value1) := by
  rw [input15959_def, output15959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5783]
  try dsimp only
  rw [child15958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5783_skip, output15958_skip]
  kernel_rfl

theorem node15960_cond_eq
    (child5782 : Flapjack.WordAlloc.removeDeadStructural input5782 value5 value1 value2 = (output5782, value2895, value1))
    (child15959 : Flapjack.WordAlloc.removeDeadStructural input15959 value2895 value1 value2 = (output15959, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15960 value5 value1 value2 = (output15960, value6896, value1) := by
  rw [input15960_def, output15960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5782]
  try dsimp only
  rw [child15959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5782_skip, output15959_skip]
  kernel_rfl

theorem node15961_cond_eq
    (child5779 : Flapjack.WordAlloc.removeDeadStructural input5779 value2888 value1 value2 = (output5779, value5, value1))
    (child15960 : Flapjack.WordAlloc.removeDeadStructural input15960 value5 value1 value2 = (output15960, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15961 value2888 value1 value2 = (output15961, value6896, value1) := by
  rw [input15961_def, output15961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5779]
  try dsimp only
  rw [child15960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5779_skip, output15960_skip]
  kernel_rfl

theorem node15962_cond_eq
    (child5768 : Flapjack.WordAlloc.removeDeadStructural input5768 value2888 value1 value2 = (output5768, value2888, value1))
    (child15961 : Flapjack.WordAlloc.removeDeadStructural input15961 value2888 value1 value2 = (output15961, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15962 value2888 value1 value2 = (output15962, value6896, value1) := by
  rw [input15962_def, output15962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5768]
  try dsimp only
  rw [child15961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5768_skip, output15961_skip]
  kernel_rfl

theorem node15963_cond_eq
    (child5767 : Flapjack.WordAlloc.removeDeadStructural input5767 value2887 value1 value2 = (output5767, value2888, value1))
    (child15962 : Flapjack.WordAlloc.removeDeadStructural input15962 value2888 value1 value2 = (output15962, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15963 value2887 value1 value2 = (output15963, value6896, value1) := by
  rw [input15963_def, output15963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5767]
  try dsimp only
  rw [child15962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5767_skip, output15962_skip]
  kernel_rfl

theorem node15964_cond_eq
    (child5766 : Flapjack.WordAlloc.removeDeadStructural input5766 value5 value1 value2 = (output5766, value2887, value1))
    (child15963 : Flapjack.WordAlloc.removeDeadStructural input15963 value2887 value1 value2 = (output15963, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15964 value5 value1 value2 = (output15964, value6896, value1) := by
  rw [input15964_def, output15964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5766]
  try dsimp only
  rw [child15963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5766_skip, output15963_skip]
  kernel_rfl

theorem node15965_cond_eq
    (child5763 : Flapjack.WordAlloc.removeDeadStructural input5763 value2880 value1 value2 = (output5763, value5, value1))
    (child15964 : Flapjack.WordAlloc.removeDeadStructural input15964 value5 value1 value2 = (output15964, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15965 value2880 value1 value2 = (output15965, value6896, value1) := by
  rw [input15965_def, output15965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5763]
  try dsimp only
  rw [child15964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5763_skip, output15964_skip]
  kernel_rfl

theorem node15966_cond_eq
    (child5752 : Flapjack.WordAlloc.removeDeadStructural input5752 value2880 value1 value2 = (output5752, value2880, value1))
    (child15965 : Flapjack.WordAlloc.removeDeadStructural input15965 value2880 value1 value2 = (output15965, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15966 value2880 value1 value2 = (output15966, value6896, value1) := by
  rw [input15966_def, output15966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5752]
  try dsimp only
  rw [child15965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5752_skip, output15965_skip]
  kernel_rfl

theorem node15967_cond_eq
    (child5751 : Flapjack.WordAlloc.removeDeadStructural input5751 value2879 value1 value2 = (output5751, value2880, value1))
    (child15966 : Flapjack.WordAlloc.removeDeadStructural input15966 value2880 value1 value2 = (output15966, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15967 value2879 value1 value2 = (output15967, value6896, value1) := by
  rw [input15967_def, output15967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5751]
  try dsimp only
  rw [child15966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5751_skip, output15966_skip]
  kernel_rfl

theorem node15968_cond_eq
    (child5750 : Flapjack.WordAlloc.removeDeadStructural input5750 value5 value1 value2 = (output5750, value2879, value1))
    (child15967 : Flapjack.WordAlloc.removeDeadStructural input15967 value2879 value1 value2 = (output15967, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15968 value5 value1 value2 = (output15968, value6896, value1) := by
  rw [input15968_def, output15968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5750]
  try dsimp only
  rw [child15967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5750_skip, output15967_skip]
  kernel_rfl

theorem node15969_cond_eq
    (child5747 : Flapjack.WordAlloc.removeDeadStructural input5747 value2872 value1 value2 = (output5747, value5, value1))
    (child15968 : Flapjack.WordAlloc.removeDeadStructural input15968 value5 value1 value2 = (output15968, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15969 value2872 value1 value2 = (output15969, value6896, value1) := by
  rw [input15969_def, output15969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5747]
  try dsimp only
  rw [child15968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5747_skip, output15968_skip]
  kernel_rfl

theorem node15970_cond_eq
    (child5736 : Flapjack.WordAlloc.removeDeadStructural input5736 value2872 value1 value2 = (output5736, value2872, value1))
    (child15969 : Flapjack.WordAlloc.removeDeadStructural input15969 value2872 value1 value2 = (output15969, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15970 value2872 value1 value2 = (output15970, value6896, value1) := by
  rw [input15970_def, output15970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5736]
  try dsimp only
  rw [child15969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5736_skip, output15969_skip]
  kernel_rfl

theorem node15971_cond_eq
    (child5735 : Flapjack.WordAlloc.removeDeadStructural input5735 value2871 value1 value2 = (output5735, value2872, value1))
    (child15970 : Flapjack.WordAlloc.removeDeadStructural input15970 value2872 value1 value2 = (output15970, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15971 value2871 value1 value2 = (output15971, value6896, value1) := by
  rw [input15971_def, output15971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5735]
  try dsimp only
  rw [child15970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5735_skip, output15970_skip]
  kernel_rfl

theorem node15972_cond_eq
    (child5734 : Flapjack.WordAlloc.removeDeadStructural input5734 value5 value1 value2 = (output5734, value2871, value1))
    (child15971 : Flapjack.WordAlloc.removeDeadStructural input15971 value2871 value1 value2 = (output15971, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15972 value5 value1 value2 = (output15972, value6896, value1) := by
  rw [input15972_def, output15972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5734]
  try dsimp only
  rw [child15971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5734_skip, output15971_skip]
  kernel_rfl

theorem node15973_cond_eq
    (child5731 : Flapjack.WordAlloc.removeDeadStructural input5731 value2864 value1 value2 = (output5731, value5, value1))
    (child15972 : Flapjack.WordAlloc.removeDeadStructural input15972 value5 value1 value2 = (output15972, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15973 value2864 value1 value2 = (output15973, value6896, value1) := by
  rw [input15973_def, output15973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5731]
  try dsimp only
  rw [child15972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5731_skip, output15972_skip]
  kernel_rfl

theorem node15974_cond_eq
    (child5720 : Flapjack.WordAlloc.removeDeadStructural input5720 value2864 value1 value2 = (output5720, value2864, value1))
    (child15973 : Flapjack.WordAlloc.removeDeadStructural input15973 value2864 value1 value2 = (output15973, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15974 value2864 value1 value2 = (output15974, value6896, value1) := by
  rw [input15974_def, output15974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5720]
  try dsimp only
  rw [child15973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5720_skip, output15973_skip]
  kernel_rfl

theorem node15975_cond_eq
    (child5719 : Flapjack.WordAlloc.removeDeadStructural input5719 value2863 value1 value2 = (output5719, value2864, value1))
    (child15974 : Flapjack.WordAlloc.removeDeadStructural input15974 value2864 value1 value2 = (output15974, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15975 value2863 value1 value2 = (output15975, value6896, value1) := by
  rw [input15975_def, output15975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5719]
  try dsimp only
  rw [child15974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5719_skip, output15974_skip]
  kernel_rfl

theorem node15976_cond_eq
    (child5718 : Flapjack.WordAlloc.removeDeadStructural input5718 value5 value1 value2 = (output5718, value2863, value1))
    (child15975 : Flapjack.WordAlloc.removeDeadStructural input15975 value2863 value1 value2 = (output15975, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15976 value5 value1 value2 = (output15976, value6896, value1) := by
  rw [input15976_def, output15976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5718]
  try dsimp only
  rw [child15975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5718_skip, output15975_skip]
  kernel_rfl

theorem node15977_cond_eq
    (child5715 : Flapjack.WordAlloc.removeDeadStructural input5715 value2856 value1 value2 = (output5715, value5, value1))
    (child15976 : Flapjack.WordAlloc.removeDeadStructural input15976 value5 value1 value2 = (output15976, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15977 value2856 value1 value2 = (output15977, value6896, value1) := by
  rw [input15977_def, output15977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5715]
  try dsimp only
  rw [child15976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5715_skip, output15976_skip]
  kernel_rfl

theorem node15978_cond_eq
    (child5704 : Flapjack.WordAlloc.removeDeadStructural input5704 value2856 value1 value2 = (output5704, value2856, value1))
    (child15977 : Flapjack.WordAlloc.removeDeadStructural input15977 value2856 value1 value2 = (output15977, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15978 value2856 value1 value2 = (output15978, value6896, value1) := by
  rw [input15978_def, output15978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5704]
  try dsimp only
  rw [child15977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5704_skip, output15977_skip]
  kernel_rfl

theorem node15979_cond_eq
    (child5703 : Flapjack.WordAlloc.removeDeadStructural input5703 value2855 value1 value2 = (output5703, value2856, value1))
    (child15978 : Flapjack.WordAlloc.removeDeadStructural input15978 value2856 value1 value2 = (output15978, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15979 value2855 value1 value2 = (output15979, value6896, value1) := by
  rw [input15979_def, output15979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5703]
  try dsimp only
  rw [child15978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5703_skip, output15978_skip]
  kernel_rfl

theorem node15980_cond_eq
    (child5702 : Flapjack.WordAlloc.removeDeadStructural input5702 value5 value1 value2 = (output5702, value2855, value1))
    (child15979 : Flapjack.WordAlloc.removeDeadStructural input15979 value2855 value1 value2 = (output15979, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15980 value5 value1 value2 = (output15980, value6896, value1) := by
  rw [input15980_def, output15980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5702]
  try dsimp only
  rw [child15979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5702_skip, output15979_skip]
  kernel_rfl

theorem node15981_cond_eq
    (child5699 : Flapjack.WordAlloc.removeDeadStructural input5699 value2848 value1 value2 = (output5699, value5, value1))
    (child15980 : Flapjack.WordAlloc.removeDeadStructural input15980 value5 value1 value2 = (output15980, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15981 value2848 value1 value2 = (output15981, value6896, value1) := by
  rw [input15981_def, output15981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5699]
  try dsimp only
  rw [child15980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5699_skip, output15980_skip]
  kernel_rfl

theorem node15982_cond_eq
    (child5688 : Flapjack.WordAlloc.removeDeadStructural input5688 value2848 value1 value2 = (output5688, value2848, value1))
    (child15981 : Flapjack.WordAlloc.removeDeadStructural input15981 value2848 value1 value2 = (output15981, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15982 value2848 value1 value2 = (output15982, value6896, value1) := by
  rw [input15982_def, output15982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5688]
  try dsimp only
  rw [child15981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5688_skip, output15981_skip]
  kernel_rfl

theorem node15983_cond_eq
    (child5687 : Flapjack.WordAlloc.removeDeadStructural input5687 value2847 value1 value2 = (output5687, value2848, value1))
    (child15982 : Flapjack.WordAlloc.removeDeadStructural input15982 value2848 value1 value2 = (output15982, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15983 value2847 value1 value2 = (output15983, value6896, value1) := by
  rw [input15983_def, output15983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5687]
  try dsimp only
  rw [child15982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5687_skip, output15982_skip]
  kernel_rfl

theorem node15984_cond_eq
    (child5686 : Flapjack.WordAlloc.removeDeadStructural input5686 value5 value1 value2 = (output5686, value2847, value1))
    (child15983 : Flapjack.WordAlloc.removeDeadStructural input15983 value2847 value1 value2 = (output15983, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15984 value5 value1 value2 = (output15984, value6896, value1) := by
  rw [input15984_def, output15984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5686]
  try dsimp only
  rw [child15983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5686_skip, output15983_skip]
  kernel_rfl

theorem node15985_cond_eq
    (child5683 : Flapjack.WordAlloc.removeDeadStructural input5683 value2840 value1 value2 = (output5683, value5, value1))
    (child15984 : Flapjack.WordAlloc.removeDeadStructural input15984 value5 value1 value2 = (output15984, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15985 value2840 value1 value2 = (output15985, value6896, value1) := by
  rw [input15985_def, output15985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5683]
  try dsimp only
  rw [child15984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5683_skip, output15984_skip]
  kernel_rfl

theorem node15986_cond_eq
    (child5672 : Flapjack.WordAlloc.removeDeadStructural input5672 value2840 value1 value2 = (output5672, value2840, value1))
    (child15985 : Flapjack.WordAlloc.removeDeadStructural input15985 value2840 value1 value2 = (output15985, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15986 value2840 value1 value2 = (output15986, value6896, value1) := by
  rw [input15986_def, output15986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5672]
  try dsimp only
  rw [child15985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5672_skip, output15985_skip]
  kernel_rfl

theorem node15987_cond_eq
    (child5671 : Flapjack.WordAlloc.removeDeadStructural input5671 value2839 value1 value2 = (output5671, value2840, value1))
    (child15986 : Flapjack.WordAlloc.removeDeadStructural input15986 value2840 value1 value2 = (output15986, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15987 value2839 value1 value2 = (output15987, value6896, value1) := by
  rw [input15987_def, output15987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5671]
  try dsimp only
  rw [child15986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5671_skip, output15986_skip]
  kernel_rfl

theorem node15988_cond_eq
    (child5670 : Flapjack.WordAlloc.removeDeadStructural input5670 value5 value1 value2 = (output5670, value2839, value1))
    (child15987 : Flapjack.WordAlloc.removeDeadStructural input15987 value2839 value1 value2 = (output15987, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15988 value5 value1 value2 = (output15988, value6896, value1) := by
  rw [input15988_def, output15988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5670]
  try dsimp only
  rw [child15987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5670_skip, output15987_skip]
  kernel_rfl

theorem node15989_cond_eq
    (child5667 : Flapjack.WordAlloc.removeDeadStructural input5667 value2832 value1 value2 = (output5667, value5, value1))
    (child15988 : Flapjack.WordAlloc.removeDeadStructural input15988 value5 value1 value2 = (output15988, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15989 value2832 value1 value2 = (output15989, value6896, value1) := by
  rw [input15989_def, output15989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5667]
  try dsimp only
  rw [child15988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5667_skip, output15988_skip]
  kernel_rfl

theorem node15990_cond_eq
    (child5656 : Flapjack.WordAlloc.removeDeadStructural input5656 value2832 value1 value2 = (output5656, value2832, value1))
    (child15989 : Flapjack.WordAlloc.removeDeadStructural input15989 value2832 value1 value2 = (output15989, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15990 value2832 value1 value2 = (output15990, value6896, value1) := by
  rw [input15990_def, output15990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5656]
  try dsimp only
  rw [child15989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5656_skip, output15989_skip]
  kernel_rfl

theorem node15991_cond_eq
    (child5655 : Flapjack.WordAlloc.removeDeadStructural input5655 value2831 value1 value2 = (output5655, value2832, value1))
    (child15990 : Flapjack.WordAlloc.removeDeadStructural input15990 value2832 value1 value2 = (output15990, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15991 value2831 value1 value2 = (output15991, value6896, value1) := by
  rw [input15991_def, output15991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5655]
  try dsimp only
  rw [child15990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5655_skip, output15990_skip]
  kernel_rfl

theorem node15992_cond_eq
    (child5654 : Flapjack.WordAlloc.removeDeadStructural input5654 value5 value1 value2 = (output5654, value2831, value1))
    (child15991 : Flapjack.WordAlloc.removeDeadStructural input15991 value2831 value1 value2 = (output15991, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15992 value5 value1 value2 = (output15992, value6896, value1) := by
  rw [input15992_def, output15992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5654]
  try dsimp only
  rw [child15991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5654_skip, output15991_skip]
  kernel_rfl

theorem node15993_cond_eq
    (child5651 : Flapjack.WordAlloc.removeDeadStructural input5651 value2824 value1 value2 = (output5651, value5, value1))
    (child15992 : Flapjack.WordAlloc.removeDeadStructural input15992 value5 value1 value2 = (output15992, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15993 value2824 value1 value2 = (output15993, value6896, value1) := by
  rw [input15993_def, output15993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5651]
  try dsimp only
  rw [child15992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5651_skip, output15992_skip]
  kernel_rfl

theorem node15994_cond_eq
    (child5640 : Flapjack.WordAlloc.removeDeadStructural input5640 value2824 value1 value2 = (output5640, value2824, value1))
    (child15993 : Flapjack.WordAlloc.removeDeadStructural input15993 value2824 value1 value2 = (output15993, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15994 value2824 value1 value2 = (output15994, value6896, value1) := by
  rw [input15994_def, output15994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5640]
  try dsimp only
  rw [child15993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5640_skip, output15993_skip]
  kernel_rfl

theorem node15995_cond_eq
    (child5639 : Flapjack.WordAlloc.removeDeadStructural input5639 value2823 value1 value2 = (output5639, value2824, value1))
    (child15994 : Flapjack.WordAlloc.removeDeadStructural input15994 value2824 value1 value2 = (output15994, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15995 value2823 value1 value2 = (output15995, value6896, value1) := by
  rw [input15995_def, output15995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5639]
  try dsimp only
  rw [child15994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5639_skip, output15994_skip]
  kernel_rfl

theorem node15996_cond_eq
    (child5638 : Flapjack.WordAlloc.removeDeadStructural input5638 value5 value1 value2 = (output5638, value2823, value1))
    (child15995 : Flapjack.WordAlloc.removeDeadStructural input15995 value2823 value1 value2 = (output15995, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15996 value5 value1 value2 = (output15996, value6896, value1) := by
  rw [input15996_def, output15996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5638]
  try dsimp only
  rw [child15995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5638_skip, output15995_skip]
  kernel_rfl

theorem node15997_cond_eq
    (child5635 : Flapjack.WordAlloc.removeDeadStructural input5635 value2816 value1 value2 = (output5635, value5, value1))
    (child15996 : Flapjack.WordAlloc.removeDeadStructural input15996 value5 value1 value2 = (output15996, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15997 value2816 value1 value2 = (output15997, value6896, value1) := by
  rw [input15997_def, output15997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5635]
  try dsimp only
  rw [child15996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5635_skip, output15996_skip]
  kernel_rfl

theorem node15998_cond_eq
    (child5624 : Flapjack.WordAlloc.removeDeadStructural input5624 value2816 value1 value2 = (output5624, value2816, value1))
    (child15997 : Flapjack.WordAlloc.removeDeadStructural input15997 value2816 value1 value2 = (output15997, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15998 value2816 value1 value2 = (output15998, value6896, value1) := by
  rw [input15998_def, output15998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5624]
  try dsimp only
  rw [child15997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5624_skip, output15997_skip]
  kernel_rfl

theorem node15999_cond_eq
    (child5623 : Flapjack.WordAlloc.removeDeadStructural input5623 value2815 value1 value2 = (output5623, value2816, value1))
    (child15998 : Flapjack.WordAlloc.removeDeadStructural input15998 value2816 value1 value2 = (output15998, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15999 value2815 value1 value2 = (output15999, value6896, value1) := by
  rw [input15999_def, output15999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5623]
  try dsimp only
  rw [child15998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5623_skip, output15998_skip]
  kernel_rfl

theorem node16000_cond_eq
    (child5622 : Flapjack.WordAlloc.removeDeadStructural input5622 value5 value1 value2 = (output5622, value2815, value1))
    (child15999 : Flapjack.WordAlloc.removeDeadStructural input15999 value2815 value1 value2 = (output15999, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16000 value5 value1 value2 = (output16000, value6896, value1) := by
  rw [input16000_def, output16000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5622]
  try dsimp only
  rw [child15999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5622_skip, output15999_skip]
  kernel_rfl

theorem node16001_cond_eq
    (child5619 : Flapjack.WordAlloc.removeDeadStructural input5619 value2808 value1 value2 = (output5619, value5, value1))
    (child16000 : Flapjack.WordAlloc.removeDeadStructural input16000 value5 value1 value2 = (output16000, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16001 value2808 value1 value2 = (output16001, value6896, value1) := by
  rw [input16001_def, output16001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5619]
  try dsimp only
  rw [child16000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5619_skip, output16000_skip]
  kernel_rfl

theorem node16002_cond_eq
    (child5608 : Flapjack.WordAlloc.removeDeadStructural input5608 value2808 value1 value2 = (output5608, value2808, value1))
    (child16001 : Flapjack.WordAlloc.removeDeadStructural input16001 value2808 value1 value2 = (output16001, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16002 value2808 value1 value2 = (output16002, value6896, value1) := by
  rw [input16002_def, output16002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5608]
  try dsimp only
  rw [child16001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5608_skip, output16001_skip]
  kernel_rfl

theorem node16003_cond_eq
    (child5607 : Flapjack.WordAlloc.removeDeadStructural input5607 value2807 value1 value2 = (output5607, value2808, value1))
    (child16002 : Flapjack.WordAlloc.removeDeadStructural input16002 value2808 value1 value2 = (output16002, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16003 value2807 value1 value2 = (output16003, value6896, value1) := by
  rw [input16003_def, output16003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5607]
  try dsimp only
  rw [child16002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5607_skip, output16002_skip]
  kernel_rfl

theorem node16004_cond_eq
    (child5606 : Flapjack.WordAlloc.removeDeadStructural input5606 value5 value1 value2 = (output5606, value2807, value1))
    (child16003 : Flapjack.WordAlloc.removeDeadStructural input16003 value2807 value1 value2 = (output16003, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16004 value5 value1 value2 = (output16004, value6896, value1) := by
  rw [input16004_def, output16004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5606]
  try dsimp only
  rw [child16003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5606_skip, output16003_skip]
  kernel_rfl

theorem node16005_cond_eq
    (child5603 : Flapjack.WordAlloc.removeDeadStructural input5603 value2800 value1 value2 = (output5603, value5, value1))
    (child16004 : Flapjack.WordAlloc.removeDeadStructural input16004 value5 value1 value2 = (output16004, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16005 value2800 value1 value2 = (output16005, value6896, value1) := by
  rw [input16005_def, output16005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5603]
  try dsimp only
  rw [child16004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5603_skip, output16004_skip]
  kernel_rfl

theorem node16006_cond_eq
    (child5592 : Flapjack.WordAlloc.removeDeadStructural input5592 value2800 value1 value2 = (output5592, value2800, value1))
    (child16005 : Flapjack.WordAlloc.removeDeadStructural input16005 value2800 value1 value2 = (output16005, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16006 value2800 value1 value2 = (output16006, value6896, value1) := by
  rw [input16006_def, output16006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5592]
  try dsimp only
  rw [child16005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5592_skip, output16005_skip]
  kernel_rfl

theorem node16007_cond_eq
    (child5591 : Flapjack.WordAlloc.removeDeadStructural input5591 value2799 value1 value2 = (output5591, value2800, value1))
    (child16006 : Flapjack.WordAlloc.removeDeadStructural input16006 value2800 value1 value2 = (output16006, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16007 value2799 value1 value2 = (output16007, value6896, value1) := by
  rw [input16007_def, output16007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5591]
  try dsimp only
  rw [child16006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5591_skip, output16006_skip]
  kernel_rfl

theorem node16008_cond_eq
    (child5590 : Flapjack.WordAlloc.removeDeadStructural input5590 value5 value1 value2 = (output5590, value2799, value1))
    (child16007 : Flapjack.WordAlloc.removeDeadStructural input16007 value2799 value1 value2 = (output16007, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16008 value5 value1 value2 = (output16008, value6896, value1) := by
  rw [input16008_def, output16008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5590]
  try dsimp only
  rw [child16007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5590_skip, output16007_skip]
  kernel_rfl

theorem node16009_cond_eq
    (child5587 : Flapjack.WordAlloc.removeDeadStructural input5587 value2792 value1 value2 = (output5587, value5, value1))
    (child16008 : Flapjack.WordAlloc.removeDeadStructural input16008 value5 value1 value2 = (output16008, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16009 value2792 value1 value2 = (output16009, value6896, value1) := by
  rw [input16009_def, output16009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5587]
  try dsimp only
  rw [child16008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5587_skip, output16008_skip]
  kernel_rfl

theorem node16010_cond_eq
    (child5576 : Flapjack.WordAlloc.removeDeadStructural input5576 value2792 value1 value2 = (output5576, value2792, value1))
    (child16009 : Flapjack.WordAlloc.removeDeadStructural input16009 value2792 value1 value2 = (output16009, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16010 value2792 value1 value2 = (output16010, value6896, value1) := by
  rw [input16010_def, output16010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5576]
  try dsimp only
  rw [child16009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5576_skip, output16009_skip]
  kernel_rfl

theorem node16011_cond_eq
    (child5575 : Flapjack.WordAlloc.removeDeadStructural input5575 value2791 value1 value2 = (output5575, value2792, value1))
    (child16010 : Flapjack.WordAlloc.removeDeadStructural input16010 value2792 value1 value2 = (output16010, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16011 value2791 value1 value2 = (output16011, value6896, value1) := by
  rw [input16011_def, output16011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5575]
  try dsimp only
  rw [child16010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5575_skip, output16010_skip]
  kernel_rfl

theorem node16012_cond_eq
    (child5574 : Flapjack.WordAlloc.removeDeadStructural input5574 value5 value1 value2 = (output5574, value2791, value1))
    (child16011 : Flapjack.WordAlloc.removeDeadStructural input16011 value2791 value1 value2 = (output16011, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16012 value5 value1 value2 = (output16012, value6896, value1) := by
  rw [input16012_def, output16012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5574]
  try dsimp only
  rw [child16011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5574_skip, output16011_skip]
  kernel_rfl

theorem node16013_cond_eq
    (child5571 : Flapjack.WordAlloc.removeDeadStructural input5571 value2784 value1 value2 = (output5571, value5, value1))
    (child16012 : Flapjack.WordAlloc.removeDeadStructural input16012 value5 value1 value2 = (output16012, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16013 value2784 value1 value2 = (output16013, value6896, value1) := by
  rw [input16013_def, output16013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5571]
  try dsimp only
  rw [child16012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5571_skip, output16012_skip]
  kernel_rfl

theorem node16014_cond_eq
    (child5560 : Flapjack.WordAlloc.removeDeadStructural input5560 value2784 value1 value2 = (output5560, value2784, value1))
    (child16013 : Flapjack.WordAlloc.removeDeadStructural input16013 value2784 value1 value2 = (output16013, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16014 value2784 value1 value2 = (output16014, value6896, value1) := by
  rw [input16014_def, output16014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5560]
  try dsimp only
  rw [child16013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5560_skip, output16013_skip]
  kernel_rfl

theorem node16015_cond_eq
    (child5559 : Flapjack.WordAlloc.removeDeadStructural input5559 value2783 value1 value2 = (output5559, value2784, value1))
    (child16014 : Flapjack.WordAlloc.removeDeadStructural input16014 value2784 value1 value2 = (output16014, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16015 value2783 value1 value2 = (output16015, value6896, value1) := by
  rw [input16015_def, output16015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5559]
  try dsimp only
  rw [child16014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5559_skip, output16014_skip]
  kernel_rfl

theorem node16016_cond_eq
    (child5558 : Flapjack.WordAlloc.removeDeadStructural input5558 value5 value1 value2 = (output5558, value2783, value1))
    (child16015 : Flapjack.WordAlloc.removeDeadStructural input16015 value2783 value1 value2 = (output16015, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16016 value5 value1 value2 = (output16016, value6896, value1) := by
  rw [input16016_def, output16016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5558]
  try dsimp only
  rw [child16015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5558_skip, output16015_skip]
  kernel_rfl

theorem node16017_cond_eq
    (child5555 : Flapjack.WordAlloc.removeDeadStructural input5555 value2776 value1 value2 = (output5555, value5, value1))
    (child16016 : Flapjack.WordAlloc.removeDeadStructural input16016 value5 value1 value2 = (output16016, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16017 value2776 value1 value2 = (output16017, value6896, value1) := by
  rw [input16017_def, output16017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5555]
  try dsimp only
  rw [child16016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5555_skip, output16016_skip]
  kernel_rfl

theorem node16018_cond_eq
    (child5544 : Flapjack.WordAlloc.removeDeadStructural input5544 value2776 value1 value2 = (output5544, value2776, value1))
    (child16017 : Flapjack.WordAlloc.removeDeadStructural input16017 value2776 value1 value2 = (output16017, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16018 value2776 value1 value2 = (output16018, value6896, value1) := by
  rw [input16018_def, output16018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5544]
  try dsimp only
  rw [child16017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5544_skip, output16017_skip]
  kernel_rfl

theorem node16019_cond_eq
    (child5543 : Flapjack.WordAlloc.removeDeadStructural input5543 value2775 value1 value2 = (output5543, value2776, value1))
    (child16018 : Flapjack.WordAlloc.removeDeadStructural input16018 value2776 value1 value2 = (output16018, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16019 value2775 value1 value2 = (output16019, value6896, value1) := by
  rw [input16019_def, output16019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5543]
  try dsimp only
  rw [child16018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5543_skip, output16018_skip]
  kernel_rfl

theorem node16020_cond_eq
    (child5542 : Flapjack.WordAlloc.removeDeadStructural input5542 value5 value1 value2 = (output5542, value2775, value1))
    (child16019 : Flapjack.WordAlloc.removeDeadStructural input16019 value2775 value1 value2 = (output16019, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16020 value5 value1 value2 = (output16020, value6896, value1) := by
  rw [input16020_def, output16020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5542]
  try dsimp only
  rw [child16019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5542_skip, output16019_skip]
  kernel_rfl

theorem node16021_cond_eq
    (child5539 : Flapjack.WordAlloc.removeDeadStructural input5539 value2768 value1 value2 = (output5539, value5, value1))
    (child16020 : Flapjack.WordAlloc.removeDeadStructural input16020 value5 value1 value2 = (output16020, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16021 value2768 value1 value2 = (output16021, value6896, value1) := by
  rw [input16021_def, output16021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5539]
  try dsimp only
  rw [child16020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5539_skip, output16020_skip]
  kernel_rfl

theorem node16022_cond_eq
    (child5528 : Flapjack.WordAlloc.removeDeadStructural input5528 value2768 value1 value2 = (output5528, value2768, value1))
    (child16021 : Flapjack.WordAlloc.removeDeadStructural input16021 value2768 value1 value2 = (output16021, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16022 value2768 value1 value2 = (output16022, value6896, value1) := by
  rw [input16022_def, output16022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5528]
  try dsimp only
  rw [child16021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5528_skip, output16021_skip]
  kernel_rfl

theorem node16023_cond_eq
    (child5527 : Flapjack.WordAlloc.removeDeadStructural input5527 value2767 value1 value2 = (output5527, value2768, value1))
    (child16022 : Flapjack.WordAlloc.removeDeadStructural input16022 value2768 value1 value2 = (output16022, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16023 value2767 value1 value2 = (output16023, value6896, value1) := by
  rw [input16023_def, output16023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5527]
  try dsimp only
  rw [child16022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5527_skip, output16022_skip]
  kernel_rfl

theorem node16024_cond_eq
    (child5526 : Flapjack.WordAlloc.removeDeadStructural input5526 value5 value1 value2 = (output5526, value2767, value1))
    (child16023 : Flapjack.WordAlloc.removeDeadStructural input16023 value2767 value1 value2 = (output16023, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16024 value5 value1 value2 = (output16024, value6896, value1) := by
  rw [input16024_def, output16024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5526]
  try dsimp only
  rw [child16023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5526_skip, output16023_skip]
  kernel_rfl

theorem node16025_cond_eq
    (child5523 : Flapjack.WordAlloc.removeDeadStructural input5523 value2760 value1 value2 = (output5523, value5, value1))
    (child16024 : Flapjack.WordAlloc.removeDeadStructural input16024 value5 value1 value2 = (output16024, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16025 value2760 value1 value2 = (output16025, value6896, value1) := by
  rw [input16025_def, output16025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5523]
  try dsimp only
  rw [child16024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5523_skip, output16024_skip]
  kernel_rfl

theorem node16026_cond_eq
    (child5512 : Flapjack.WordAlloc.removeDeadStructural input5512 value2760 value1 value2 = (output5512, value2760, value1))
    (child16025 : Flapjack.WordAlloc.removeDeadStructural input16025 value2760 value1 value2 = (output16025, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16026 value2760 value1 value2 = (output16026, value6896, value1) := by
  rw [input16026_def, output16026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5512]
  try dsimp only
  rw [child16025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5512_skip, output16025_skip]
  kernel_rfl

theorem node16027_cond_eq
    (child5511 : Flapjack.WordAlloc.removeDeadStructural input5511 value2759 value1 value2 = (output5511, value2760, value1))
    (child16026 : Flapjack.WordAlloc.removeDeadStructural input16026 value2760 value1 value2 = (output16026, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16027 value2759 value1 value2 = (output16027, value6896, value1) := by
  rw [input16027_def, output16027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5511]
  try dsimp only
  rw [child16026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5511_skip, output16026_skip]
  kernel_rfl

theorem node16028_cond_eq
    (child5510 : Flapjack.WordAlloc.removeDeadStructural input5510 value5 value1 value2 = (output5510, value2759, value1))
    (child16027 : Flapjack.WordAlloc.removeDeadStructural input16027 value2759 value1 value2 = (output16027, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16028 value5 value1 value2 = (output16028, value6896, value1) := by
  rw [input16028_def, output16028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5510]
  try dsimp only
  rw [child16027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5510_skip, output16027_skip]
  kernel_rfl

theorem node16029_cond_eq
    (child5507 : Flapjack.WordAlloc.removeDeadStructural input5507 value2752 value1 value2 = (output5507, value5, value1))
    (child16028 : Flapjack.WordAlloc.removeDeadStructural input16028 value5 value1 value2 = (output16028, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16029 value2752 value1 value2 = (output16029, value6896, value1) := by
  rw [input16029_def, output16029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5507]
  try dsimp only
  rw [child16028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5507_skip, output16028_skip]
  kernel_rfl

theorem node16030_cond_eq
    (child5496 : Flapjack.WordAlloc.removeDeadStructural input5496 value2752 value1 value2 = (output5496, value2752, value1))
    (child16029 : Flapjack.WordAlloc.removeDeadStructural input16029 value2752 value1 value2 = (output16029, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16030 value2752 value1 value2 = (output16030, value6896, value1) := by
  rw [input16030_def, output16030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5496]
  try dsimp only
  rw [child16029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5496_skip, output16029_skip]
  kernel_rfl

theorem node16031_cond_eq
    (child5495 : Flapjack.WordAlloc.removeDeadStructural input5495 value2751 value1 value2 = (output5495, value2752, value1))
    (child16030 : Flapjack.WordAlloc.removeDeadStructural input16030 value2752 value1 value2 = (output16030, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16031 value2751 value1 value2 = (output16031, value6896, value1) := by
  rw [input16031_def, output16031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5495]
  try dsimp only
  rw [child16030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5495_skip, output16030_skip]
  kernel_rfl

theorem node16032_cond_eq
    (child5494 : Flapjack.WordAlloc.removeDeadStructural input5494 value5 value1 value2 = (output5494, value2751, value1))
    (child16031 : Flapjack.WordAlloc.removeDeadStructural input16031 value2751 value1 value2 = (output16031, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16032 value5 value1 value2 = (output16032, value6896, value1) := by
  rw [input16032_def, output16032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5494]
  try dsimp only
  rw [child16031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5494_skip, output16031_skip]
  kernel_rfl

theorem node16033_cond_eq
    (child5491 : Flapjack.WordAlloc.removeDeadStructural input5491 value2744 value1 value2 = (output5491, value5, value1))
    (child16032 : Flapjack.WordAlloc.removeDeadStructural input16032 value5 value1 value2 = (output16032, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16033 value2744 value1 value2 = (output16033, value6896, value1) := by
  rw [input16033_def, output16033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5491]
  try dsimp only
  rw [child16032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5491_skip, output16032_skip]
  kernel_rfl

theorem node16034_cond_eq
    (child5480 : Flapjack.WordAlloc.removeDeadStructural input5480 value2744 value1 value2 = (output5480, value2744, value1))
    (child16033 : Flapjack.WordAlloc.removeDeadStructural input16033 value2744 value1 value2 = (output16033, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16034 value2744 value1 value2 = (output16034, value6896, value1) := by
  rw [input16034_def, output16034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5480]
  try dsimp only
  rw [child16033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5480_skip, output16033_skip]
  kernel_rfl

theorem node16035_cond_eq
    (child5479 : Flapjack.WordAlloc.removeDeadStructural input5479 value2743 value1 value2 = (output5479, value2744, value1))
    (child16034 : Flapjack.WordAlloc.removeDeadStructural input16034 value2744 value1 value2 = (output16034, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16035 value2743 value1 value2 = (output16035, value6896, value1) := by
  rw [input16035_def, output16035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5479]
  try dsimp only
  rw [child16034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5479_skip, output16034_skip]
  kernel_rfl

theorem node16036_cond_eq
    (child5478 : Flapjack.WordAlloc.removeDeadStructural input5478 value5 value1 value2 = (output5478, value2743, value1))
    (child16035 : Flapjack.WordAlloc.removeDeadStructural input16035 value2743 value1 value2 = (output16035, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16036 value5 value1 value2 = (output16036, value6896, value1) := by
  rw [input16036_def, output16036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5478]
  try dsimp only
  rw [child16035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5478_skip, output16035_skip]
  kernel_rfl

theorem node16037_cond_eq
    (child5475 : Flapjack.WordAlloc.removeDeadStructural input5475 value2736 value1 value2 = (output5475, value5, value1))
    (child16036 : Flapjack.WordAlloc.removeDeadStructural input16036 value5 value1 value2 = (output16036, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16037 value2736 value1 value2 = (output16037, value6896, value1) := by
  rw [input16037_def, output16037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5475]
  try dsimp only
  rw [child16036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5475_skip, output16036_skip]
  kernel_rfl

theorem node16038_cond_eq
    (child5464 : Flapjack.WordAlloc.removeDeadStructural input5464 value2736 value1 value2 = (output5464, value2736, value1))
    (child16037 : Flapjack.WordAlloc.removeDeadStructural input16037 value2736 value1 value2 = (output16037, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16038 value2736 value1 value2 = (output16038, value6896, value1) := by
  rw [input16038_def, output16038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5464]
  try dsimp only
  rw [child16037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5464_skip, output16037_skip]
  kernel_rfl

theorem node16039_cond_eq
    (child5463 : Flapjack.WordAlloc.removeDeadStructural input5463 value2735 value1 value2 = (output5463, value2736, value1))
    (child16038 : Flapjack.WordAlloc.removeDeadStructural input16038 value2736 value1 value2 = (output16038, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16039 value2735 value1 value2 = (output16039, value6896, value1) := by
  rw [input16039_def, output16039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5463]
  try dsimp only
  rw [child16038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5463_skip, output16038_skip]
  kernel_rfl

theorem node16040_cond_eq
    (child5462 : Flapjack.WordAlloc.removeDeadStructural input5462 value5 value1 value2 = (output5462, value2735, value1))
    (child16039 : Flapjack.WordAlloc.removeDeadStructural input16039 value2735 value1 value2 = (output16039, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16040 value5 value1 value2 = (output16040, value6896, value1) := by
  rw [input16040_def, output16040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5462]
  try dsimp only
  rw [child16039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5462_skip, output16039_skip]
  kernel_rfl

theorem node16041_cond_eq
    (child5459 : Flapjack.WordAlloc.removeDeadStructural input5459 value2728 value1 value2 = (output5459, value5, value1))
    (child16040 : Flapjack.WordAlloc.removeDeadStructural input16040 value5 value1 value2 = (output16040, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16041 value2728 value1 value2 = (output16041, value6896, value1) := by
  rw [input16041_def, output16041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5459]
  try dsimp only
  rw [child16040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5459_skip, output16040_skip]
  kernel_rfl

theorem node16042_cond_eq
    (child5448 : Flapjack.WordAlloc.removeDeadStructural input5448 value2728 value1 value2 = (output5448, value2728, value1))
    (child16041 : Flapjack.WordAlloc.removeDeadStructural input16041 value2728 value1 value2 = (output16041, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16042 value2728 value1 value2 = (output16042, value6896, value1) := by
  rw [input16042_def, output16042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5448]
  try dsimp only
  rw [child16041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5448_skip, output16041_skip]
  kernel_rfl

theorem node16043_cond_eq
    (child5447 : Flapjack.WordAlloc.removeDeadStructural input5447 value2727 value1 value2 = (output5447, value2728, value1))
    (child16042 : Flapjack.WordAlloc.removeDeadStructural input16042 value2728 value1 value2 = (output16042, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16043 value2727 value1 value2 = (output16043, value6896, value1) := by
  rw [input16043_def, output16043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5447]
  try dsimp only
  rw [child16042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5447_skip, output16042_skip]
  kernel_rfl

theorem node16044_cond_eq
    (child5446 : Flapjack.WordAlloc.removeDeadStructural input5446 value5 value1 value2 = (output5446, value2727, value1))
    (child16043 : Flapjack.WordAlloc.removeDeadStructural input16043 value2727 value1 value2 = (output16043, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16044 value5 value1 value2 = (output16044, value6896, value1) := by
  rw [input16044_def, output16044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5446]
  try dsimp only
  rw [child16043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5446_skip, output16043_skip]
  kernel_rfl

theorem node16045_cond_eq
    (child5443 : Flapjack.WordAlloc.removeDeadStructural input5443 value2720 value1 value2 = (output5443, value5, value1))
    (child16044 : Flapjack.WordAlloc.removeDeadStructural input16044 value5 value1 value2 = (output16044, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16045 value2720 value1 value2 = (output16045, value6896, value1) := by
  rw [input16045_def, output16045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5443]
  try dsimp only
  rw [child16044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5443_skip, output16044_skip]
  kernel_rfl

theorem node16046_cond_eq
    (child5432 : Flapjack.WordAlloc.removeDeadStructural input5432 value2720 value1 value2 = (output5432, value2720, value1))
    (child16045 : Flapjack.WordAlloc.removeDeadStructural input16045 value2720 value1 value2 = (output16045, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16046 value2720 value1 value2 = (output16046, value6896, value1) := by
  rw [input16046_def, output16046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5432]
  try dsimp only
  rw [child16045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5432_skip, output16045_skip]
  kernel_rfl

theorem node16047_cond_eq
    (child5431 : Flapjack.WordAlloc.removeDeadStructural input5431 value2719 value1 value2 = (output5431, value2720, value1))
    (child16046 : Flapjack.WordAlloc.removeDeadStructural input16046 value2720 value1 value2 = (output16046, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16047 value2719 value1 value2 = (output16047, value6896, value1) := by
  rw [input16047_def, output16047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5431]
  try dsimp only
  rw [child16046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5431_skip, output16046_skip]
  kernel_rfl

theorem node16048_cond_eq
    (child5430 : Flapjack.WordAlloc.removeDeadStructural input5430 value5 value1 value2 = (output5430, value2719, value1))
    (child16047 : Flapjack.WordAlloc.removeDeadStructural input16047 value2719 value1 value2 = (output16047, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16048 value5 value1 value2 = (output16048, value6896, value1) := by
  rw [input16048_def, output16048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5430]
  try dsimp only
  rw [child16047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5430_skip, output16047_skip]
  kernel_rfl

theorem node16049_cond_eq
    (child5427 : Flapjack.WordAlloc.removeDeadStructural input5427 value2712 value1 value2 = (output5427, value5, value1))
    (child16048 : Flapjack.WordAlloc.removeDeadStructural input16048 value5 value1 value2 = (output16048, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16049 value2712 value1 value2 = (output16049, value6896, value1) := by
  rw [input16049_def, output16049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5427]
  try dsimp only
  rw [child16048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5427_skip, output16048_skip]
  kernel_rfl

theorem node16050_cond_eq
    (child5416 : Flapjack.WordAlloc.removeDeadStructural input5416 value2712 value1 value2 = (output5416, value2712, value1))
    (child16049 : Flapjack.WordAlloc.removeDeadStructural input16049 value2712 value1 value2 = (output16049, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16050 value2712 value1 value2 = (output16050, value6896, value1) := by
  rw [input16050_def, output16050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5416]
  try dsimp only
  rw [child16049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5416_skip, output16049_skip]
  kernel_rfl

theorem node16051_cond_eq
    (child5415 : Flapjack.WordAlloc.removeDeadStructural input5415 value2711 value1 value2 = (output5415, value2712, value1))
    (child16050 : Flapjack.WordAlloc.removeDeadStructural input16050 value2712 value1 value2 = (output16050, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16051 value2711 value1 value2 = (output16051, value6896, value1) := by
  rw [input16051_def, output16051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5415]
  try dsimp only
  rw [child16050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5415_skip, output16050_skip]
  kernel_rfl

theorem node16052_cond_eq
    (child5414 : Flapjack.WordAlloc.removeDeadStructural input5414 value5 value1 value2 = (output5414, value2711, value1))
    (child16051 : Flapjack.WordAlloc.removeDeadStructural input16051 value2711 value1 value2 = (output16051, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16052 value5 value1 value2 = (output16052, value6896, value1) := by
  rw [input16052_def, output16052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5414]
  try dsimp only
  rw [child16051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5414_skip, output16051_skip]
  kernel_rfl

theorem node16053_cond_eq
    (child5411 : Flapjack.WordAlloc.removeDeadStructural input5411 value2704 value1 value2 = (output5411, value5, value1))
    (child16052 : Flapjack.WordAlloc.removeDeadStructural input16052 value5 value1 value2 = (output16052, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16053 value2704 value1 value2 = (output16053, value6896, value1) := by
  rw [input16053_def, output16053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5411]
  try dsimp only
  rw [child16052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5411_skip, output16052_skip]
  kernel_rfl

theorem node16054_cond_eq
    (child5400 : Flapjack.WordAlloc.removeDeadStructural input5400 value2704 value1 value2 = (output5400, value2704, value1))
    (child16053 : Flapjack.WordAlloc.removeDeadStructural input16053 value2704 value1 value2 = (output16053, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16054 value2704 value1 value2 = (output16054, value6896, value1) := by
  rw [input16054_def, output16054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5400]
  try dsimp only
  rw [child16053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5400_skip, output16053_skip]
  kernel_rfl

theorem node16055_cond_eq
    (child5399 : Flapjack.WordAlloc.removeDeadStructural input5399 value2703 value1 value2 = (output5399, value2704, value1))
    (child16054 : Flapjack.WordAlloc.removeDeadStructural input16054 value2704 value1 value2 = (output16054, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16055 value2703 value1 value2 = (output16055, value6896, value1) := by
  rw [input16055_def, output16055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5399]
  try dsimp only
  rw [child16054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5399_skip, output16054_skip]
  kernel_rfl

theorem node16056_cond_eq
    (child5398 : Flapjack.WordAlloc.removeDeadStructural input5398 value5 value1 value2 = (output5398, value2703, value1))
    (child16055 : Flapjack.WordAlloc.removeDeadStructural input16055 value2703 value1 value2 = (output16055, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16056 value5 value1 value2 = (output16056, value6896, value1) := by
  rw [input16056_def, output16056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5398]
  try dsimp only
  rw [child16055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5398_skip, output16055_skip]
  kernel_rfl

theorem node16057_cond_eq
    (child5395 : Flapjack.WordAlloc.removeDeadStructural input5395 value2696 value1 value2 = (output5395, value5, value1))
    (child16056 : Flapjack.WordAlloc.removeDeadStructural input16056 value5 value1 value2 = (output16056, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16057 value2696 value1 value2 = (output16057, value6896, value1) := by
  rw [input16057_def, output16057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5395]
  try dsimp only
  rw [child16056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5395_skip, output16056_skip]
  kernel_rfl

theorem node16058_cond_eq
    (child5384 : Flapjack.WordAlloc.removeDeadStructural input5384 value2696 value1 value2 = (output5384, value2696, value1))
    (child16057 : Flapjack.WordAlloc.removeDeadStructural input16057 value2696 value1 value2 = (output16057, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16058 value2696 value1 value2 = (output16058, value6896, value1) := by
  rw [input16058_def, output16058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5384]
  try dsimp only
  rw [child16057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5384_skip, output16057_skip]
  kernel_rfl

theorem node16059_cond_eq
    (child5383 : Flapjack.WordAlloc.removeDeadStructural input5383 value2695 value1 value2 = (output5383, value2696, value1))
    (child16058 : Flapjack.WordAlloc.removeDeadStructural input16058 value2696 value1 value2 = (output16058, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16059 value2695 value1 value2 = (output16059, value6896, value1) := by
  rw [input16059_def, output16059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5383]
  try dsimp only
  rw [child16058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5383_skip, output16058_skip]
  kernel_rfl

theorem node16060_cond_eq
    (child5382 : Flapjack.WordAlloc.removeDeadStructural input5382 value5 value1 value2 = (output5382, value2695, value1))
    (child16059 : Flapjack.WordAlloc.removeDeadStructural input16059 value2695 value1 value2 = (output16059, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16060 value5 value1 value2 = (output16060, value6896, value1) := by
  rw [input16060_def, output16060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5382]
  try dsimp only
  rw [child16059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5382_skip, output16059_skip]
  kernel_rfl

theorem node16061_cond_eq
    (child5379 : Flapjack.WordAlloc.removeDeadStructural input5379 value2688 value1 value2 = (output5379, value5, value1))
    (child16060 : Flapjack.WordAlloc.removeDeadStructural input16060 value5 value1 value2 = (output16060, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16061 value2688 value1 value2 = (output16061, value6896, value1) := by
  rw [input16061_def, output16061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5379]
  try dsimp only
  rw [child16060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5379_skip, output16060_skip]
  kernel_rfl

theorem node16062_cond_eq
    (child5368 : Flapjack.WordAlloc.removeDeadStructural input5368 value2688 value1 value2 = (output5368, value2688, value1))
    (child16061 : Flapjack.WordAlloc.removeDeadStructural input16061 value2688 value1 value2 = (output16061, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16062 value2688 value1 value2 = (output16062, value6896, value1) := by
  rw [input16062_def, output16062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5368]
  try dsimp only
  rw [child16061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5368_skip, output16061_skip]
  kernel_rfl

theorem node16063_cond_eq
    (child5367 : Flapjack.WordAlloc.removeDeadStructural input5367 value2687 value1 value2 = (output5367, value2688, value1))
    (child16062 : Flapjack.WordAlloc.removeDeadStructural input16062 value2688 value1 value2 = (output16062, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16063 value2687 value1 value2 = (output16063, value6896, value1) := by
  rw [input16063_def, output16063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5367]
  try dsimp only
  rw [child16062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5367_skip, output16062_skip]
  kernel_rfl

theorem node16064_cond_eq
    (child5366 : Flapjack.WordAlloc.removeDeadStructural input5366 value5 value1 value2 = (output5366, value2687, value1))
    (child16063 : Flapjack.WordAlloc.removeDeadStructural input16063 value2687 value1 value2 = (output16063, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16064 value5 value1 value2 = (output16064, value6896, value1) := by
  rw [input16064_def, output16064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5366]
  try dsimp only
  rw [child16063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5366_skip, output16063_skip]
  kernel_rfl

theorem node16065_cond_eq
    (child5363 : Flapjack.WordAlloc.removeDeadStructural input5363 value2680 value1 value2 = (output5363, value5, value1))
    (child16064 : Flapjack.WordAlloc.removeDeadStructural input16064 value5 value1 value2 = (output16064, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16065 value2680 value1 value2 = (output16065, value6896, value1) := by
  rw [input16065_def, output16065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5363]
  try dsimp only
  rw [child16064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5363_skip, output16064_skip]
  kernel_rfl

theorem node16066_cond_eq
    (child5352 : Flapjack.WordAlloc.removeDeadStructural input5352 value2680 value1 value2 = (output5352, value2680, value1))
    (child16065 : Flapjack.WordAlloc.removeDeadStructural input16065 value2680 value1 value2 = (output16065, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16066 value2680 value1 value2 = (output16066, value6896, value1) := by
  rw [input16066_def, output16066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5352]
  try dsimp only
  rw [child16065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5352_skip, output16065_skip]
  kernel_rfl

theorem node16067_cond_eq
    (child5351 : Flapjack.WordAlloc.removeDeadStructural input5351 value2679 value1 value2 = (output5351, value2680, value1))
    (child16066 : Flapjack.WordAlloc.removeDeadStructural input16066 value2680 value1 value2 = (output16066, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16067 value2679 value1 value2 = (output16067, value6896, value1) := by
  rw [input16067_def, output16067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5351]
  try dsimp only
  rw [child16066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5351_skip, output16066_skip]
  kernel_rfl

theorem node16068_cond_eq
    (child5350 : Flapjack.WordAlloc.removeDeadStructural input5350 value5 value1 value2 = (output5350, value2679, value1))
    (child16067 : Flapjack.WordAlloc.removeDeadStructural input16067 value2679 value1 value2 = (output16067, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16068 value5 value1 value2 = (output16068, value6896, value1) := by
  rw [input16068_def, output16068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5350]
  try dsimp only
  rw [child16067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5350_skip, output16067_skip]
  kernel_rfl

theorem node16069_cond_eq
    (child5347 : Flapjack.WordAlloc.removeDeadStructural input5347 value2672 value1 value2 = (output5347, value5, value1))
    (child16068 : Flapjack.WordAlloc.removeDeadStructural input16068 value5 value1 value2 = (output16068, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16069 value2672 value1 value2 = (output16069, value6896, value1) := by
  rw [input16069_def, output16069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5347]
  try dsimp only
  rw [child16068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5347_skip, output16068_skip]
  kernel_rfl

theorem node16070_cond_eq
    (child5336 : Flapjack.WordAlloc.removeDeadStructural input5336 value2672 value1 value2 = (output5336, value2672, value1))
    (child16069 : Flapjack.WordAlloc.removeDeadStructural input16069 value2672 value1 value2 = (output16069, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16070 value2672 value1 value2 = (output16070, value6896, value1) := by
  rw [input16070_def, output16070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5336]
  try dsimp only
  rw [child16069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5336_skip, output16069_skip]
  kernel_rfl

theorem node16071_cond_eq
    (child5335 : Flapjack.WordAlloc.removeDeadStructural input5335 value2671 value1 value2 = (output5335, value2672, value1))
    (child16070 : Flapjack.WordAlloc.removeDeadStructural input16070 value2672 value1 value2 = (output16070, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16071 value2671 value1 value2 = (output16071, value6896, value1) := by
  rw [input16071_def, output16071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5335]
  try dsimp only
  rw [child16070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5335_skip, output16070_skip]
  kernel_rfl

theorem node16072_cond_eq
    (child5334 : Flapjack.WordAlloc.removeDeadStructural input5334 value5 value1 value2 = (output5334, value2671, value1))
    (child16071 : Flapjack.WordAlloc.removeDeadStructural input16071 value2671 value1 value2 = (output16071, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16072 value5 value1 value2 = (output16072, value6896, value1) := by
  rw [input16072_def, output16072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5334]
  try dsimp only
  rw [child16071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5334_skip, output16071_skip]
  kernel_rfl

theorem node16073_cond_eq
    (child5331 : Flapjack.WordAlloc.removeDeadStructural input5331 value2664 value1 value2 = (output5331, value5, value1))
    (child16072 : Flapjack.WordAlloc.removeDeadStructural input16072 value5 value1 value2 = (output16072, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16073 value2664 value1 value2 = (output16073, value6896, value1) := by
  rw [input16073_def, output16073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5331]
  try dsimp only
  rw [child16072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5331_skip, output16072_skip]
  kernel_rfl

theorem node16074_cond_eq
    (child5320 : Flapjack.WordAlloc.removeDeadStructural input5320 value2664 value1 value2 = (output5320, value2664, value1))
    (child16073 : Flapjack.WordAlloc.removeDeadStructural input16073 value2664 value1 value2 = (output16073, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16074 value2664 value1 value2 = (output16074, value6896, value1) := by
  rw [input16074_def, output16074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5320]
  try dsimp only
  rw [child16073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5320_skip, output16073_skip]
  kernel_rfl

theorem node16075_cond_eq
    (child5319 : Flapjack.WordAlloc.removeDeadStructural input5319 value2663 value1 value2 = (output5319, value2664, value1))
    (child16074 : Flapjack.WordAlloc.removeDeadStructural input16074 value2664 value1 value2 = (output16074, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16075 value2663 value1 value2 = (output16075, value6896, value1) := by
  rw [input16075_def, output16075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5319]
  try dsimp only
  rw [child16074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5319_skip, output16074_skip]
  kernel_rfl

theorem node16076_cond_eq
    (child5318 : Flapjack.WordAlloc.removeDeadStructural input5318 value5 value1 value2 = (output5318, value2663, value1))
    (child16075 : Flapjack.WordAlloc.removeDeadStructural input16075 value2663 value1 value2 = (output16075, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16076 value5 value1 value2 = (output16076, value6896, value1) := by
  rw [input16076_def, output16076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5318]
  try dsimp only
  rw [child16075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5318_skip, output16075_skip]
  kernel_rfl

theorem node16077_cond_eq
    (child5315 : Flapjack.WordAlloc.removeDeadStructural input5315 value2656 value1 value2 = (output5315, value5, value1))
    (child16076 : Flapjack.WordAlloc.removeDeadStructural input16076 value5 value1 value2 = (output16076, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16077 value2656 value1 value2 = (output16077, value6896, value1) := by
  rw [input16077_def, output16077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5315]
  try dsimp only
  rw [child16076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5315_skip, output16076_skip]
  kernel_rfl

theorem node16078_cond_eq
    (child5304 : Flapjack.WordAlloc.removeDeadStructural input5304 value2656 value1 value2 = (output5304, value2656, value1))
    (child16077 : Flapjack.WordAlloc.removeDeadStructural input16077 value2656 value1 value2 = (output16077, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16078 value2656 value1 value2 = (output16078, value6896, value1) := by
  rw [input16078_def, output16078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5304]
  try dsimp only
  rw [child16077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5304_skip, output16077_skip]
  kernel_rfl

theorem node16079_cond_eq
    (child5303 : Flapjack.WordAlloc.removeDeadStructural input5303 value2655 value1 value2 = (output5303, value2656, value1))
    (child16078 : Flapjack.WordAlloc.removeDeadStructural input16078 value2656 value1 value2 = (output16078, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16079 value2655 value1 value2 = (output16079, value6896, value1) := by
  rw [input16079_def, output16079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5303]
  try dsimp only
  rw [child16078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5303_skip, output16078_skip]
  kernel_rfl

theorem node16080_cond_eq
    (child5302 : Flapjack.WordAlloc.removeDeadStructural input5302 value5 value1 value2 = (output5302, value2655, value1))
    (child16079 : Flapjack.WordAlloc.removeDeadStructural input16079 value2655 value1 value2 = (output16079, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16080 value5 value1 value2 = (output16080, value6896, value1) := by
  rw [input16080_def, output16080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5302]
  try dsimp only
  rw [child16079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5302_skip, output16079_skip]
  kernel_rfl

theorem node16081_cond_eq
    (child5299 : Flapjack.WordAlloc.removeDeadStructural input5299 value2648 value1 value2 = (output5299, value5, value1))
    (child16080 : Flapjack.WordAlloc.removeDeadStructural input16080 value5 value1 value2 = (output16080, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16081 value2648 value1 value2 = (output16081, value6896, value1) := by
  rw [input16081_def, output16081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5299]
  try dsimp only
  rw [child16080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5299_skip, output16080_skip]
  kernel_rfl

theorem node16082_cond_eq
    (child5288 : Flapjack.WordAlloc.removeDeadStructural input5288 value2648 value1 value2 = (output5288, value2648, value1))
    (child16081 : Flapjack.WordAlloc.removeDeadStructural input16081 value2648 value1 value2 = (output16081, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16082 value2648 value1 value2 = (output16082, value6896, value1) := by
  rw [input16082_def, output16082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5288]
  try dsimp only
  rw [child16081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5288_skip, output16081_skip]
  kernel_rfl

theorem node16083_cond_eq
    (child5287 : Flapjack.WordAlloc.removeDeadStructural input5287 value2647 value1 value2 = (output5287, value2648, value1))
    (child16082 : Flapjack.WordAlloc.removeDeadStructural input16082 value2648 value1 value2 = (output16082, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16083 value2647 value1 value2 = (output16083, value6896, value1) := by
  rw [input16083_def, output16083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5287]
  try dsimp only
  rw [child16082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5287_skip, output16082_skip]
  kernel_rfl

theorem node16084_cond_eq
    (child5286 : Flapjack.WordAlloc.removeDeadStructural input5286 value5 value1 value2 = (output5286, value2647, value1))
    (child16083 : Flapjack.WordAlloc.removeDeadStructural input16083 value2647 value1 value2 = (output16083, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16084 value5 value1 value2 = (output16084, value6896, value1) := by
  rw [input16084_def, output16084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5286]
  try dsimp only
  rw [child16083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5286_skip, output16083_skip]
  kernel_rfl

theorem node16085_cond_eq
    (child5283 : Flapjack.WordAlloc.removeDeadStructural input5283 value2640 value1 value2 = (output5283, value5, value1))
    (child16084 : Flapjack.WordAlloc.removeDeadStructural input16084 value5 value1 value2 = (output16084, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16085 value2640 value1 value2 = (output16085, value6896, value1) := by
  rw [input16085_def, output16085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5283]
  try dsimp only
  rw [child16084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5283_skip, output16084_skip]
  kernel_rfl

theorem node16086_cond_eq
    (child5272 : Flapjack.WordAlloc.removeDeadStructural input5272 value2640 value1 value2 = (output5272, value2640, value1))
    (child16085 : Flapjack.WordAlloc.removeDeadStructural input16085 value2640 value1 value2 = (output16085, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16086 value2640 value1 value2 = (output16086, value6896, value1) := by
  rw [input16086_def, output16086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5272]
  try dsimp only
  rw [child16085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5272_skip, output16085_skip]
  kernel_rfl

theorem node16087_cond_eq
    (child5271 : Flapjack.WordAlloc.removeDeadStructural input5271 value2639 value1 value2 = (output5271, value2640, value1))
    (child16086 : Flapjack.WordAlloc.removeDeadStructural input16086 value2640 value1 value2 = (output16086, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16087 value2639 value1 value2 = (output16087, value6896, value1) := by
  rw [input16087_def, output16087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5271]
  try dsimp only
  rw [child16086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5271_skip, output16086_skip]
  kernel_rfl

theorem node16088_cond_eq
    (child5270 : Flapjack.WordAlloc.removeDeadStructural input5270 value5 value1 value2 = (output5270, value2639, value1))
    (child16087 : Flapjack.WordAlloc.removeDeadStructural input16087 value2639 value1 value2 = (output16087, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16088 value5 value1 value2 = (output16088, value6896, value1) := by
  rw [input16088_def, output16088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5270]
  try dsimp only
  rw [child16087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5270_skip, output16087_skip]
  kernel_rfl

theorem node16089_cond_eq
    (child5267 : Flapjack.WordAlloc.removeDeadStructural input5267 value2632 value1 value2 = (output5267, value5, value1))
    (child16088 : Flapjack.WordAlloc.removeDeadStructural input16088 value5 value1 value2 = (output16088, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16089 value2632 value1 value2 = (output16089, value6896, value1) := by
  rw [input16089_def, output16089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5267]
  try dsimp only
  rw [child16088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5267_skip, output16088_skip]
  kernel_rfl

theorem node16090_cond_eq
    (child5256 : Flapjack.WordAlloc.removeDeadStructural input5256 value2632 value1 value2 = (output5256, value2632, value1))
    (child16089 : Flapjack.WordAlloc.removeDeadStructural input16089 value2632 value1 value2 = (output16089, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16090 value2632 value1 value2 = (output16090, value6896, value1) := by
  rw [input16090_def, output16090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5256]
  try dsimp only
  rw [child16089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5256_skip, output16089_skip]
  kernel_rfl

theorem node16091_cond_eq
    (child5255 : Flapjack.WordAlloc.removeDeadStructural input5255 value2631 value1 value2 = (output5255, value2632, value1))
    (child16090 : Flapjack.WordAlloc.removeDeadStructural input16090 value2632 value1 value2 = (output16090, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16091 value2631 value1 value2 = (output16091, value6896, value1) := by
  rw [input16091_def, output16091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5255]
  try dsimp only
  rw [child16090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5255_skip, output16090_skip]
  kernel_rfl

theorem node16092_cond_eq
    (child5254 : Flapjack.WordAlloc.removeDeadStructural input5254 value5 value1 value2 = (output5254, value2631, value1))
    (child16091 : Flapjack.WordAlloc.removeDeadStructural input16091 value2631 value1 value2 = (output16091, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16092 value5 value1 value2 = (output16092, value6896, value1) := by
  rw [input16092_def, output16092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5254]
  try dsimp only
  rw [child16091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5254_skip, output16091_skip]
  kernel_rfl

theorem node16093_cond_eq
    (child5251 : Flapjack.WordAlloc.removeDeadStructural input5251 value2624 value1 value2 = (output5251, value5, value1))
    (child16092 : Flapjack.WordAlloc.removeDeadStructural input16092 value5 value1 value2 = (output16092, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16093 value2624 value1 value2 = (output16093, value6896, value1) := by
  rw [input16093_def, output16093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5251]
  try dsimp only
  rw [child16092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5251_skip, output16092_skip]
  kernel_rfl

theorem node16094_cond_eq
    (child5240 : Flapjack.WordAlloc.removeDeadStructural input5240 value2624 value1 value2 = (output5240, value2624, value1))
    (child16093 : Flapjack.WordAlloc.removeDeadStructural input16093 value2624 value1 value2 = (output16093, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16094 value2624 value1 value2 = (output16094, value6896, value1) := by
  rw [input16094_def, output16094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5240]
  try dsimp only
  rw [child16093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5240_skip, output16093_skip]
  kernel_rfl

theorem node16095_cond_eq
    (child5239 : Flapjack.WordAlloc.removeDeadStructural input5239 value2623 value1 value2 = (output5239, value2624, value1))
    (child16094 : Flapjack.WordAlloc.removeDeadStructural input16094 value2624 value1 value2 = (output16094, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16095 value2623 value1 value2 = (output16095, value6896, value1) := by
  rw [input16095_def, output16095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5239]
  try dsimp only
  rw [child16094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5239_skip, output16094_skip]
  kernel_rfl

theorem node16096_cond_eq
    (child5238 : Flapjack.WordAlloc.removeDeadStructural input5238 value5 value1 value2 = (output5238, value2623, value1))
    (child16095 : Flapjack.WordAlloc.removeDeadStructural input16095 value2623 value1 value2 = (output16095, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16096 value5 value1 value2 = (output16096, value6896, value1) := by
  rw [input16096_def, output16096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5238]
  try dsimp only
  rw [child16095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5238_skip, output16095_skip]
  kernel_rfl

theorem node16097_cond_eq
    (child5235 : Flapjack.WordAlloc.removeDeadStructural input5235 value2616 value1 value2 = (output5235, value5, value1))
    (child16096 : Flapjack.WordAlloc.removeDeadStructural input16096 value5 value1 value2 = (output16096, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16097 value2616 value1 value2 = (output16097, value6896, value1) := by
  rw [input16097_def, output16097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5235]
  try dsimp only
  rw [child16096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5235_skip, output16096_skip]
  kernel_rfl

theorem node16098_cond_eq
    (child5224 : Flapjack.WordAlloc.removeDeadStructural input5224 value2616 value1 value2 = (output5224, value2616, value1))
    (child16097 : Flapjack.WordAlloc.removeDeadStructural input16097 value2616 value1 value2 = (output16097, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16098 value2616 value1 value2 = (output16098, value6896, value1) := by
  rw [input16098_def, output16098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5224]
  try dsimp only
  rw [child16097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5224_skip, output16097_skip]
  kernel_rfl

theorem node16099_cond_eq
    (child5223 : Flapjack.WordAlloc.removeDeadStructural input5223 value2615 value1 value2 = (output5223, value2616, value1))
    (child16098 : Flapjack.WordAlloc.removeDeadStructural input16098 value2616 value1 value2 = (output16098, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16099 value2615 value1 value2 = (output16099, value6896, value1) := by
  rw [input16099_def, output16099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5223]
  try dsimp only
  rw [child16098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5223_skip, output16098_skip]
  kernel_rfl

theorem node16100_cond_eq
    (child5222 : Flapjack.WordAlloc.removeDeadStructural input5222 value5 value1 value2 = (output5222, value2615, value1))
    (child16099 : Flapjack.WordAlloc.removeDeadStructural input16099 value2615 value1 value2 = (output16099, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16100 value5 value1 value2 = (output16100, value6896, value1) := by
  rw [input16100_def, output16100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5222]
  try dsimp only
  rw [child16099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5222_skip, output16099_skip]
  kernel_rfl

theorem node16101_cond_eq
    (child5219 : Flapjack.WordAlloc.removeDeadStructural input5219 value2608 value1 value2 = (output5219, value5, value1))
    (child16100 : Flapjack.WordAlloc.removeDeadStructural input16100 value5 value1 value2 = (output16100, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16101 value2608 value1 value2 = (output16101, value6896, value1) := by
  rw [input16101_def, output16101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5219]
  try dsimp only
  rw [child16100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5219_skip, output16100_skip]
  kernel_rfl

theorem node16102_cond_eq
    (child5208 : Flapjack.WordAlloc.removeDeadStructural input5208 value2608 value1 value2 = (output5208, value2608, value1))
    (child16101 : Flapjack.WordAlloc.removeDeadStructural input16101 value2608 value1 value2 = (output16101, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16102 value2608 value1 value2 = (output16102, value6896, value1) := by
  rw [input16102_def, output16102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5208]
  try dsimp only
  rw [child16101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5208_skip, output16101_skip]
  kernel_rfl

theorem node16103_cond_eq
    (child5207 : Flapjack.WordAlloc.removeDeadStructural input5207 value2607 value1 value2 = (output5207, value2608, value1))
    (child16102 : Flapjack.WordAlloc.removeDeadStructural input16102 value2608 value1 value2 = (output16102, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16103 value2607 value1 value2 = (output16103, value6896, value1) := by
  rw [input16103_def, output16103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5207]
  try dsimp only
  rw [child16102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5207_skip, output16102_skip]
  kernel_rfl

theorem node16104_cond_eq
    (child5206 : Flapjack.WordAlloc.removeDeadStructural input5206 value5 value1 value2 = (output5206, value2607, value1))
    (child16103 : Flapjack.WordAlloc.removeDeadStructural input16103 value2607 value1 value2 = (output16103, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16104 value5 value1 value2 = (output16104, value6896, value1) := by
  rw [input16104_def, output16104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5206]
  try dsimp only
  rw [child16103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5206_skip, output16103_skip]
  kernel_rfl

theorem node16105_cond_eq
    (child5203 : Flapjack.WordAlloc.removeDeadStructural input5203 value2600 value1 value2 = (output5203, value5, value1))
    (child16104 : Flapjack.WordAlloc.removeDeadStructural input16104 value5 value1 value2 = (output16104, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16105 value2600 value1 value2 = (output16105, value6896, value1) := by
  rw [input16105_def, output16105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5203]
  try dsimp only
  rw [child16104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5203_skip, output16104_skip]
  kernel_rfl

theorem node16106_cond_eq
    (child5192 : Flapjack.WordAlloc.removeDeadStructural input5192 value2600 value1 value2 = (output5192, value2600, value1))
    (child16105 : Flapjack.WordAlloc.removeDeadStructural input16105 value2600 value1 value2 = (output16105, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16106 value2600 value1 value2 = (output16106, value6896, value1) := by
  rw [input16106_def, output16106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5192]
  try dsimp only
  rw [child16105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5192_skip, output16105_skip]
  kernel_rfl

theorem node16107_cond_eq
    (child5191 : Flapjack.WordAlloc.removeDeadStructural input5191 value2599 value1 value2 = (output5191, value2600, value1))
    (child16106 : Flapjack.WordAlloc.removeDeadStructural input16106 value2600 value1 value2 = (output16106, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16107 value2599 value1 value2 = (output16107, value6896, value1) := by
  rw [input16107_def, output16107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5191]
  try dsimp only
  rw [child16106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5191_skip, output16106_skip]
  kernel_rfl

theorem node16108_cond_eq
    (child5190 : Flapjack.WordAlloc.removeDeadStructural input5190 value5 value1 value2 = (output5190, value2599, value1))
    (child16107 : Flapjack.WordAlloc.removeDeadStructural input16107 value2599 value1 value2 = (output16107, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16108 value5 value1 value2 = (output16108, value6896, value1) := by
  rw [input16108_def, output16108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5190]
  try dsimp only
  rw [child16107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5190_skip, output16107_skip]
  kernel_rfl

theorem node16109_cond_eq
    (child5187 : Flapjack.WordAlloc.removeDeadStructural input5187 value2592 value1 value2 = (output5187, value5, value1))
    (child16108 : Flapjack.WordAlloc.removeDeadStructural input16108 value5 value1 value2 = (output16108, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16109 value2592 value1 value2 = (output16109, value6896, value1) := by
  rw [input16109_def, output16109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5187]
  try dsimp only
  rw [child16108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5187_skip, output16108_skip]
  kernel_rfl

theorem node16110_cond_eq
    (child5176 : Flapjack.WordAlloc.removeDeadStructural input5176 value2592 value1 value2 = (output5176, value2592, value1))
    (child16109 : Flapjack.WordAlloc.removeDeadStructural input16109 value2592 value1 value2 = (output16109, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16110 value2592 value1 value2 = (output16110, value6896, value1) := by
  rw [input16110_def, output16110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5176]
  try dsimp only
  rw [child16109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5176_skip, output16109_skip]
  kernel_rfl

theorem node16111_cond_eq
    (child5175 : Flapjack.WordAlloc.removeDeadStructural input5175 value2591 value1 value2 = (output5175, value2592, value1))
    (child16110 : Flapjack.WordAlloc.removeDeadStructural input16110 value2592 value1 value2 = (output16110, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16111 value2591 value1 value2 = (output16111, value6896, value1) := by
  rw [input16111_def, output16111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5175]
  try dsimp only
  rw [child16110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5175_skip, output16110_skip]
  kernel_rfl

theorem node16112_cond_eq
    (child5174 : Flapjack.WordAlloc.removeDeadStructural input5174 value5 value1 value2 = (output5174, value2591, value1))
    (child16111 : Flapjack.WordAlloc.removeDeadStructural input16111 value2591 value1 value2 = (output16111, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16112 value5 value1 value2 = (output16112, value6896, value1) := by
  rw [input16112_def, output16112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5174]
  try dsimp only
  rw [child16111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5174_skip, output16111_skip]
  kernel_rfl

theorem node16113_cond_eq
    (child5171 : Flapjack.WordAlloc.removeDeadStructural input5171 value2584 value1 value2 = (output5171, value5, value1))
    (child16112 : Flapjack.WordAlloc.removeDeadStructural input16112 value5 value1 value2 = (output16112, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16113 value2584 value1 value2 = (output16113, value6896, value1) := by
  rw [input16113_def, output16113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5171]
  try dsimp only
  rw [child16112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5171_skip, output16112_skip]
  kernel_rfl

theorem node16114_cond_eq
    (child5160 : Flapjack.WordAlloc.removeDeadStructural input5160 value2584 value1 value2 = (output5160, value2584, value1))
    (child16113 : Flapjack.WordAlloc.removeDeadStructural input16113 value2584 value1 value2 = (output16113, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16114 value2584 value1 value2 = (output16114, value6896, value1) := by
  rw [input16114_def, output16114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5160]
  try dsimp only
  rw [child16113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5160_skip, output16113_skip]
  kernel_rfl

theorem node16115_cond_eq
    (child5159 : Flapjack.WordAlloc.removeDeadStructural input5159 value2583 value1 value2 = (output5159, value2584, value1))
    (child16114 : Flapjack.WordAlloc.removeDeadStructural input16114 value2584 value1 value2 = (output16114, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16115 value2583 value1 value2 = (output16115, value6896, value1) := by
  rw [input16115_def, output16115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5159]
  try dsimp only
  rw [child16114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5159_skip, output16114_skip]
  kernel_rfl

theorem node16116_cond_eq
    (child5158 : Flapjack.WordAlloc.removeDeadStructural input5158 value5 value1 value2 = (output5158, value2583, value1))
    (child16115 : Flapjack.WordAlloc.removeDeadStructural input16115 value2583 value1 value2 = (output16115, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16116 value5 value1 value2 = (output16116, value6896, value1) := by
  rw [input16116_def, output16116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5158]
  try dsimp only
  rw [child16115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5158_skip, output16115_skip]
  kernel_rfl

theorem node16117_cond_eq
    (child5155 : Flapjack.WordAlloc.removeDeadStructural input5155 value2576 value1 value2 = (output5155, value5, value1))
    (child16116 : Flapjack.WordAlloc.removeDeadStructural input16116 value5 value1 value2 = (output16116, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16117 value2576 value1 value2 = (output16117, value6896, value1) := by
  rw [input16117_def, output16117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5155]
  try dsimp only
  rw [child16116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5155_skip, output16116_skip]
  kernel_rfl

theorem node16118_cond_eq
    (child5144 : Flapjack.WordAlloc.removeDeadStructural input5144 value2576 value1 value2 = (output5144, value2576, value1))
    (child16117 : Flapjack.WordAlloc.removeDeadStructural input16117 value2576 value1 value2 = (output16117, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16118 value2576 value1 value2 = (output16118, value6896, value1) := by
  rw [input16118_def, output16118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5144]
  try dsimp only
  rw [child16117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5144_skip, output16117_skip]
  kernel_rfl

theorem node16119_cond_eq
    (child5143 : Flapjack.WordAlloc.removeDeadStructural input5143 value2575 value1 value2 = (output5143, value2576, value1))
    (child16118 : Flapjack.WordAlloc.removeDeadStructural input16118 value2576 value1 value2 = (output16118, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16119 value2575 value1 value2 = (output16119, value6896, value1) := by
  rw [input16119_def, output16119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5143]
  try dsimp only
  rw [child16118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5143_skip, output16118_skip]
  kernel_rfl

theorem node16120_cond_eq
    (child5142 : Flapjack.WordAlloc.removeDeadStructural input5142 value5 value1 value2 = (output5142, value2575, value1))
    (child16119 : Flapjack.WordAlloc.removeDeadStructural input16119 value2575 value1 value2 = (output16119, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16120 value5 value1 value2 = (output16120, value6896, value1) := by
  rw [input16120_def, output16120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5142]
  try dsimp only
  rw [child16119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5142_skip, output16119_skip]
  kernel_rfl

theorem node16121_cond_eq
    (child5139 : Flapjack.WordAlloc.removeDeadStructural input5139 value2568 value1 value2 = (output5139, value5, value1))
    (child16120 : Flapjack.WordAlloc.removeDeadStructural input16120 value5 value1 value2 = (output16120, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16121 value2568 value1 value2 = (output16121, value6896, value1) := by
  rw [input16121_def, output16121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5139]
  try dsimp only
  rw [child16120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5139_skip, output16120_skip]
  kernel_rfl

theorem node16122_cond_eq
    (child5128 : Flapjack.WordAlloc.removeDeadStructural input5128 value2568 value1 value2 = (output5128, value2568, value1))
    (child16121 : Flapjack.WordAlloc.removeDeadStructural input16121 value2568 value1 value2 = (output16121, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16122 value2568 value1 value2 = (output16122, value6896, value1) := by
  rw [input16122_def, output16122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5128]
  try dsimp only
  rw [child16121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5128_skip, output16121_skip]
  kernel_rfl

theorem node16123_cond_eq
    (child5127 : Flapjack.WordAlloc.removeDeadStructural input5127 value2567 value1 value2 = (output5127, value2568, value1))
    (child16122 : Flapjack.WordAlloc.removeDeadStructural input16122 value2568 value1 value2 = (output16122, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16123 value2567 value1 value2 = (output16123, value6896, value1) := by
  rw [input16123_def, output16123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5127]
  try dsimp only
  rw [child16122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5127_skip, output16122_skip]
  kernel_rfl

theorem node16124_cond_eq
    (child5126 : Flapjack.WordAlloc.removeDeadStructural input5126 value5 value1 value2 = (output5126, value2567, value1))
    (child16123 : Flapjack.WordAlloc.removeDeadStructural input16123 value2567 value1 value2 = (output16123, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16124 value5 value1 value2 = (output16124, value6896, value1) := by
  rw [input16124_def, output16124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5126]
  try dsimp only
  rw [child16123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5126_skip, output16123_skip]
  kernel_rfl

theorem node16125_cond_eq
    (child5123 : Flapjack.WordAlloc.removeDeadStructural input5123 value2560 value1 value2 = (output5123, value5, value1))
    (child16124 : Flapjack.WordAlloc.removeDeadStructural input16124 value5 value1 value2 = (output16124, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16125 value2560 value1 value2 = (output16125, value6896, value1) := by
  rw [input16125_def, output16125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5123]
  try dsimp only
  rw [child16124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5123_skip, output16124_skip]
  kernel_rfl

theorem node16126_cond_eq
    (child5112 : Flapjack.WordAlloc.removeDeadStructural input5112 value2560 value1 value2 = (output5112, value2560, value1))
    (child16125 : Flapjack.WordAlloc.removeDeadStructural input16125 value2560 value1 value2 = (output16125, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16126 value2560 value1 value2 = (output16126, value6896, value1) := by
  rw [input16126_def, output16126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5112]
  try dsimp only
  rw [child16125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5112_skip, output16125_skip]
  kernel_rfl

theorem node16127_cond_eq
    (child5111 : Flapjack.WordAlloc.removeDeadStructural input5111 value2559 value1 value2 = (output5111, value2560, value1))
    (child16126 : Flapjack.WordAlloc.removeDeadStructural input16126 value2560 value1 value2 = (output16126, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16127 value2559 value1 value2 = (output16127, value6896, value1) := by
  rw [input16127_def, output16127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5111]
  try dsimp only
  rw [child16126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5111_skip, output16126_skip]
  kernel_rfl

#print axioms node16127_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
