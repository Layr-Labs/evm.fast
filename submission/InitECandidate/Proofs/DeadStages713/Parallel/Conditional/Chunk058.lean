import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk058
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node14848_cond_eq
    (child10224 : Flapjack.WordAlloc.removeDeadStructural input10224 value5 value1 value2 = (output10224, value5116, value1))
    (child14847 : Flapjack.WordAlloc.removeDeadStructural input14847 value5116 value1 value2 = (output14847, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14848 value5 value1 value2 = (output14848, value6896, value1) := by
  rw [input14848_def, output14848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10224]
  try dsimp only
  rw [child14847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10224_skip, output14847_skip]
  kernel_rfl

theorem node14849_cond_eq
    (child10221 : Flapjack.WordAlloc.removeDeadStructural input10221 value5110 value1 value2 = (output10221, value5, value1))
    (child14848 : Flapjack.WordAlloc.removeDeadStructural input14848 value5 value1 value2 = (output14848, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14849 value5110 value1 value2 = (output14849, value6896, value1) := by
  rw [input14849_def, output14849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10221]
  try dsimp only
  rw [child14848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10221_skip, output14848_skip]
  kernel_rfl

theorem node14850_cond_eq
    (child10212 : Flapjack.WordAlloc.removeDeadStructural input10212 value5110 value1 value2 = (output10212, value5110, value1))
    (child14849 : Flapjack.WordAlloc.removeDeadStructural input14849 value5110 value1 value2 = (output14849, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14850 value5110 value1 value2 = (output14850, value6896, value1) := by
  rw [input14850_def, output14850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10212]
  try dsimp only
  rw [child14849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10212_skip, output14849_skip]
  kernel_rfl

theorem node14851_cond_eq
    (child10211 : Flapjack.WordAlloc.removeDeadStructural input10211 value5109 value1 value2 = (output10211, value5110, value1))
    (child14850 : Flapjack.WordAlloc.removeDeadStructural input14850 value5110 value1 value2 = (output14850, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14851 value5109 value1 value2 = (output14851, value6896, value1) := by
  rw [input14851_def, output14851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10211]
  try dsimp only
  rw [child14850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10211_skip, output14850_skip]
  kernel_rfl

theorem node14852_cond_eq
    (child10210 : Flapjack.WordAlloc.removeDeadStructural input10210 value5 value1 value2 = (output10210, value5109, value1))
    (child14851 : Flapjack.WordAlloc.removeDeadStructural input14851 value5109 value1 value2 = (output14851, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14852 value5 value1 value2 = (output14852, value6896, value1) := by
  rw [input14852_def, output14852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10210]
  try dsimp only
  rw [child14851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10210_skip, output14851_skip]
  kernel_rfl

theorem node14853_cond_eq
    (child10207 : Flapjack.WordAlloc.removeDeadStructural input10207 value5103 value1 value2 = (output10207, value5, value1))
    (child14852 : Flapjack.WordAlloc.removeDeadStructural input14852 value5 value1 value2 = (output14852, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14853 value5103 value1 value2 = (output14853, value6896, value1) := by
  rw [input14853_def, output14853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10207]
  try dsimp only
  rw [child14852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10207_skip, output14852_skip]
  kernel_rfl

theorem node14854_cond_eq
    (child10198 : Flapjack.WordAlloc.removeDeadStructural input10198 value5103 value1 value2 = (output10198, value5103, value1))
    (child14853 : Flapjack.WordAlloc.removeDeadStructural input14853 value5103 value1 value2 = (output14853, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14854 value5103 value1 value2 = (output14854, value6896, value1) := by
  rw [input14854_def, output14854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10198]
  try dsimp only
  rw [child14853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10198_skip, output14853_skip]
  kernel_rfl

theorem node14855_cond_eq
    (child10197 : Flapjack.WordAlloc.removeDeadStructural input10197 value5102 value1 value2 = (output10197, value5103, value1))
    (child14854 : Flapjack.WordAlloc.removeDeadStructural input14854 value5103 value1 value2 = (output14854, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14855 value5102 value1 value2 = (output14855, value6896, value1) := by
  rw [input14855_def, output14855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10197]
  try dsimp only
  rw [child14854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10197_skip, output14854_skip]
  kernel_rfl

theorem node14856_cond_eq
    (child10196 : Flapjack.WordAlloc.removeDeadStructural input10196 value5 value1 value2 = (output10196, value5102, value1))
    (child14855 : Flapjack.WordAlloc.removeDeadStructural input14855 value5102 value1 value2 = (output14855, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14856 value5 value1 value2 = (output14856, value6896, value1) := by
  rw [input14856_def, output14856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10196]
  try dsimp only
  rw [child14855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10196_skip, output14855_skip]
  kernel_rfl

theorem node14857_cond_eq
    (child10193 : Flapjack.WordAlloc.removeDeadStructural input10193 value5096 value1 value2 = (output10193, value5, value1))
    (child14856 : Flapjack.WordAlloc.removeDeadStructural input14856 value5 value1 value2 = (output14856, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14857 value5096 value1 value2 = (output14857, value6896, value1) := by
  rw [input14857_def, output14857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10193]
  try dsimp only
  rw [child14856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10193_skip, output14856_skip]
  kernel_rfl

theorem node14858_cond_eq
    (child10184 : Flapjack.WordAlloc.removeDeadStructural input10184 value5096 value1 value2 = (output10184, value5096, value1))
    (child14857 : Flapjack.WordAlloc.removeDeadStructural input14857 value5096 value1 value2 = (output14857, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14858 value5096 value1 value2 = (output14858, value6896, value1) := by
  rw [input14858_def, output14858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10184]
  try dsimp only
  rw [child14857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10184_skip, output14857_skip]
  kernel_rfl

theorem node14859_cond_eq
    (child10183 : Flapjack.WordAlloc.removeDeadStructural input10183 value5095 value1 value2 = (output10183, value5096, value1))
    (child14858 : Flapjack.WordAlloc.removeDeadStructural input14858 value5096 value1 value2 = (output14858, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14859 value5095 value1 value2 = (output14859, value6896, value1) := by
  rw [input14859_def, output14859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10183]
  try dsimp only
  rw [child14858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10183_skip, output14858_skip]
  kernel_rfl

theorem node14860_cond_eq
    (child10182 : Flapjack.WordAlloc.removeDeadStructural input10182 value5 value1 value2 = (output10182, value5095, value1))
    (child14859 : Flapjack.WordAlloc.removeDeadStructural input14859 value5095 value1 value2 = (output14859, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14860 value5 value1 value2 = (output14860, value6896, value1) := by
  rw [input14860_def, output14860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10182]
  try dsimp only
  rw [child14859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10182_skip, output14859_skip]
  kernel_rfl

theorem node14861_cond_eq
    (child10179 : Flapjack.WordAlloc.removeDeadStructural input10179 value5088 value1 value2 = (output10179, value5, value1))
    (child14860 : Flapjack.WordAlloc.removeDeadStructural input14860 value5 value1 value2 = (output14860, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14861 value5088 value1 value2 = (output14861, value6896, value1) := by
  rw [input14861_def, output14861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10179]
  try dsimp only
  rw [child14860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10179_skip, output14860_skip]
  kernel_rfl

theorem node14862_cond_eq
    (child10168 : Flapjack.WordAlloc.removeDeadStructural input10168 value5088 value1 value2 = (output10168, value5088, value1))
    (child14861 : Flapjack.WordAlloc.removeDeadStructural input14861 value5088 value1 value2 = (output14861, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14862 value5088 value1 value2 = (output14862, value6896, value1) := by
  rw [input14862_def, output14862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10168]
  try dsimp only
  rw [child14861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10168_skip, output14861_skip]
  kernel_rfl

theorem node14863_cond_eq
    (child10167 : Flapjack.WordAlloc.removeDeadStructural input10167 value5087 value1 value2 = (output10167, value5088, value1))
    (child14862 : Flapjack.WordAlloc.removeDeadStructural input14862 value5088 value1 value2 = (output14862, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14863 value5087 value1 value2 = (output14863, value6896, value1) := by
  rw [input14863_def, output14863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10167]
  try dsimp only
  rw [child14862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10167_skip, output14862_skip]
  kernel_rfl

theorem node14864_cond_eq
    (child10166 : Flapjack.WordAlloc.removeDeadStructural input10166 value5 value1 value2 = (output10166, value5087, value1))
    (child14863 : Flapjack.WordAlloc.removeDeadStructural input14863 value5087 value1 value2 = (output14863, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14864 value5 value1 value2 = (output14864, value6896, value1) := by
  rw [input14864_def, output14864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10166]
  try dsimp only
  rw [child14863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10166_skip, output14863_skip]
  kernel_rfl

theorem node14865_cond_eq
    (child10163 : Flapjack.WordAlloc.removeDeadStructural input10163 value5080 value1 value2 = (output10163, value5, value1))
    (child14864 : Flapjack.WordAlloc.removeDeadStructural input14864 value5 value1 value2 = (output14864, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14865 value5080 value1 value2 = (output14865, value6896, value1) := by
  rw [input14865_def, output14865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10163]
  try dsimp only
  rw [child14864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10163_skip, output14864_skip]
  kernel_rfl

theorem node14866_cond_eq
    (child10152 : Flapjack.WordAlloc.removeDeadStructural input10152 value5080 value1 value2 = (output10152, value5080, value1))
    (child14865 : Flapjack.WordAlloc.removeDeadStructural input14865 value5080 value1 value2 = (output14865, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14866 value5080 value1 value2 = (output14866, value6896, value1) := by
  rw [input14866_def, output14866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10152]
  try dsimp only
  rw [child14865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10152_skip, output14865_skip]
  kernel_rfl

theorem node14867_cond_eq
    (child10151 : Flapjack.WordAlloc.removeDeadStructural input10151 value5079 value1 value2 = (output10151, value5080, value1))
    (child14866 : Flapjack.WordAlloc.removeDeadStructural input14866 value5080 value1 value2 = (output14866, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14867 value5079 value1 value2 = (output14867, value6896, value1) := by
  rw [input14867_def, output14867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10151]
  try dsimp only
  rw [child14866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10151_skip, output14866_skip]
  kernel_rfl

theorem node14868_cond_eq
    (child10150 : Flapjack.WordAlloc.removeDeadStructural input10150 value5 value1 value2 = (output10150, value5079, value1))
    (child14867 : Flapjack.WordAlloc.removeDeadStructural input14867 value5079 value1 value2 = (output14867, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14868 value5 value1 value2 = (output14868, value6896, value1) := by
  rw [input14868_def, output14868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10150]
  try dsimp only
  rw [child14867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10150_skip, output14867_skip]
  kernel_rfl

theorem node14869_cond_eq
    (child10147 : Flapjack.WordAlloc.removeDeadStructural input10147 value5072 value1 value2 = (output10147, value5, value1))
    (child14868 : Flapjack.WordAlloc.removeDeadStructural input14868 value5 value1 value2 = (output14868, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14869 value5072 value1 value2 = (output14869, value6896, value1) := by
  rw [input14869_def, output14869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10147]
  try dsimp only
  rw [child14868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10147_skip, output14868_skip]
  kernel_rfl

theorem node14870_cond_eq
    (child10136 : Flapjack.WordAlloc.removeDeadStructural input10136 value5072 value1 value2 = (output10136, value5072, value1))
    (child14869 : Flapjack.WordAlloc.removeDeadStructural input14869 value5072 value1 value2 = (output14869, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14870 value5072 value1 value2 = (output14870, value6896, value1) := by
  rw [input14870_def, output14870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10136]
  try dsimp only
  rw [child14869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10136_skip, output14869_skip]
  kernel_rfl

theorem node14871_cond_eq
    (child10135 : Flapjack.WordAlloc.removeDeadStructural input10135 value5071 value1 value2 = (output10135, value5072, value1))
    (child14870 : Flapjack.WordAlloc.removeDeadStructural input14870 value5072 value1 value2 = (output14870, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14871 value5071 value1 value2 = (output14871, value6896, value1) := by
  rw [input14871_def, output14871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10135]
  try dsimp only
  rw [child14870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10135_skip, output14870_skip]
  kernel_rfl

theorem node14872_cond_eq
    (child10134 : Flapjack.WordAlloc.removeDeadStructural input10134 value5 value1 value2 = (output10134, value5071, value1))
    (child14871 : Flapjack.WordAlloc.removeDeadStructural input14871 value5071 value1 value2 = (output14871, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14872 value5 value1 value2 = (output14872, value6896, value1) := by
  rw [input14872_def, output14872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10134]
  try dsimp only
  rw [child14871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10134_skip, output14871_skip]
  kernel_rfl

theorem node14873_cond_eq
    (child10131 : Flapjack.WordAlloc.removeDeadStructural input10131 value5064 value1 value2 = (output10131, value5, value1))
    (child14872 : Flapjack.WordAlloc.removeDeadStructural input14872 value5 value1 value2 = (output14872, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14873 value5064 value1 value2 = (output14873, value6896, value1) := by
  rw [input14873_def, output14873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10131]
  try dsimp only
  rw [child14872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10131_skip, output14872_skip]
  kernel_rfl

theorem node14874_cond_eq
    (child10120 : Flapjack.WordAlloc.removeDeadStructural input10120 value5064 value1 value2 = (output10120, value5064, value1))
    (child14873 : Flapjack.WordAlloc.removeDeadStructural input14873 value5064 value1 value2 = (output14873, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14874 value5064 value1 value2 = (output14874, value6896, value1) := by
  rw [input14874_def, output14874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10120]
  try dsimp only
  rw [child14873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10120_skip, output14873_skip]
  kernel_rfl

theorem node14875_cond_eq
    (child10119 : Flapjack.WordAlloc.removeDeadStructural input10119 value5063 value1 value2 = (output10119, value5064, value1))
    (child14874 : Flapjack.WordAlloc.removeDeadStructural input14874 value5064 value1 value2 = (output14874, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14875 value5063 value1 value2 = (output14875, value6896, value1) := by
  rw [input14875_def, output14875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10119]
  try dsimp only
  rw [child14874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10119_skip, output14874_skip]
  kernel_rfl

theorem node14876_cond_eq
    (child10118 : Flapjack.WordAlloc.removeDeadStructural input10118 value5 value1 value2 = (output10118, value5063, value1))
    (child14875 : Flapjack.WordAlloc.removeDeadStructural input14875 value5063 value1 value2 = (output14875, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14876 value5 value1 value2 = (output14876, value6896, value1) := by
  rw [input14876_def, output14876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10118]
  try dsimp only
  rw [child14875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10118_skip, output14875_skip]
  kernel_rfl

theorem node14877_cond_eq
    (child10115 : Flapjack.WordAlloc.removeDeadStructural input10115 value5056 value1 value2 = (output10115, value5, value1))
    (child14876 : Flapjack.WordAlloc.removeDeadStructural input14876 value5 value1 value2 = (output14876, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14877 value5056 value1 value2 = (output14877, value6896, value1) := by
  rw [input14877_def, output14877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10115]
  try dsimp only
  rw [child14876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10115_skip, output14876_skip]
  kernel_rfl

theorem node14878_cond_eq
    (child10104 : Flapjack.WordAlloc.removeDeadStructural input10104 value5056 value1 value2 = (output10104, value5056, value1))
    (child14877 : Flapjack.WordAlloc.removeDeadStructural input14877 value5056 value1 value2 = (output14877, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14878 value5056 value1 value2 = (output14878, value6896, value1) := by
  rw [input14878_def, output14878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10104]
  try dsimp only
  rw [child14877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10104_skip, output14877_skip]
  kernel_rfl

theorem node14879_cond_eq
    (child10103 : Flapjack.WordAlloc.removeDeadStructural input10103 value5055 value1 value2 = (output10103, value5056, value1))
    (child14878 : Flapjack.WordAlloc.removeDeadStructural input14878 value5056 value1 value2 = (output14878, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14879 value5055 value1 value2 = (output14879, value6896, value1) := by
  rw [input14879_def, output14879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10103]
  try dsimp only
  rw [child14878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10103_skip, output14878_skip]
  kernel_rfl

theorem node14880_cond_eq
    (child10102 : Flapjack.WordAlloc.removeDeadStructural input10102 value5 value1 value2 = (output10102, value5055, value1))
    (child14879 : Flapjack.WordAlloc.removeDeadStructural input14879 value5055 value1 value2 = (output14879, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14880 value5 value1 value2 = (output14880, value6896, value1) := by
  rw [input14880_def, output14880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10102]
  try dsimp only
  rw [child14879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10102_skip, output14879_skip]
  kernel_rfl

theorem node14881_cond_eq
    (child10099 : Flapjack.WordAlloc.removeDeadStructural input10099 value5048 value1 value2 = (output10099, value5, value1))
    (child14880 : Flapjack.WordAlloc.removeDeadStructural input14880 value5 value1 value2 = (output14880, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14881 value5048 value1 value2 = (output14881, value6896, value1) := by
  rw [input14881_def, output14881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10099]
  try dsimp only
  rw [child14880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10099_skip, output14880_skip]
  kernel_rfl

theorem node14882_cond_eq
    (child10088 : Flapjack.WordAlloc.removeDeadStructural input10088 value5048 value1 value2 = (output10088, value5048, value1))
    (child14881 : Flapjack.WordAlloc.removeDeadStructural input14881 value5048 value1 value2 = (output14881, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14882 value5048 value1 value2 = (output14882, value6896, value1) := by
  rw [input14882_def, output14882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10088]
  try dsimp only
  rw [child14881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10088_skip, output14881_skip]
  kernel_rfl

theorem node14883_cond_eq
    (child10087 : Flapjack.WordAlloc.removeDeadStructural input10087 value5047 value1 value2 = (output10087, value5048, value1))
    (child14882 : Flapjack.WordAlloc.removeDeadStructural input14882 value5048 value1 value2 = (output14882, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14883 value5047 value1 value2 = (output14883, value6896, value1) := by
  rw [input14883_def, output14883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10087]
  try dsimp only
  rw [child14882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10087_skip, output14882_skip]
  kernel_rfl

theorem node14884_cond_eq
    (child10086 : Flapjack.WordAlloc.removeDeadStructural input10086 value5 value1 value2 = (output10086, value5047, value1))
    (child14883 : Flapjack.WordAlloc.removeDeadStructural input14883 value5047 value1 value2 = (output14883, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14884 value5 value1 value2 = (output14884, value6896, value1) := by
  rw [input14884_def, output14884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10086]
  try dsimp only
  rw [child14883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10086_skip, output14883_skip]
  kernel_rfl

theorem node14885_cond_eq
    (child10083 : Flapjack.WordAlloc.removeDeadStructural input10083 value5040 value1 value2 = (output10083, value5, value1))
    (child14884 : Flapjack.WordAlloc.removeDeadStructural input14884 value5 value1 value2 = (output14884, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14885 value5040 value1 value2 = (output14885, value6896, value1) := by
  rw [input14885_def, output14885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10083]
  try dsimp only
  rw [child14884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10083_skip, output14884_skip]
  kernel_rfl

theorem node14886_cond_eq
    (child10072 : Flapjack.WordAlloc.removeDeadStructural input10072 value5040 value1 value2 = (output10072, value5040, value1))
    (child14885 : Flapjack.WordAlloc.removeDeadStructural input14885 value5040 value1 value2 = (output14885, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14886 value5040 value1 value2 = (output14886, value6896, value1) := by
  rw [input14886_def, output14886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10072]
  try dsimp only
  rw [child14885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10072_skip, output14885_skip]
  kernel_rfl

theorem node14887_cond_eq
    (child10071 : Flapjack.WordAlloc.removeDeadStructural input10071 value5039 value1 value2 = (output10071, value5040, value1))
    (child14886 : Flapjack.WordAlloc.removeDeadStructural input14886 value5040 value1 value2 = (output14886, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14887 value5039 value1 value2 = (output14887, value6896, value1) := by
  rw [input14887_def, output14887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10071]
  try dsimp only
  rw [child14886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10071_skip, output14886_skip]
  kernel_rfl

theorem node14888_cond_eq
    (child10070 : Flapjack.WordAlloc.removeDeadStructural input10070 value5 value1 value2 = (output10070, value5039, value1))
    (child14887 : Flapjack.WordAlloc.removeDeadStructural input14887 value5039 value1 value2 = (output14887, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14888 value5 value1 value2 = (output14888, value6896, value1) := by
  rw [input14888_def, output14888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10070]
  try dsimp only
  rw [child14887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10070_skip, output14887_skip]
  kernel_rfl

theorem node14889_cond_eq
    (child10067 : Flapjack.WordAlloc.removeDeadStructural input10067 value5032 value1 value2 = (output10067, value5, value1))
    (child14888 : Flapjack.WordAlloc.removeDeadStructural input14888 value5 value1 value2 = (output14888, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14889 value5032 value1 value2 = (output14889, value6896, value1) := by
  rw [input14889_def, output14889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10067]
  try dsimp only
  rw [child14888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10067_skip, output14888_skip]
  kernel_rfl

theorem node14890_cond_eq
    (child10056 : Flapjack.WordAlloc.removeDeadStructural input10056 value5032 value1 value2 = (output10056, value5032, value1))
    (child14889 : Flapjack.WordAlloc.removeDeadStructural input14889 value5032 value1 value2 = (output14889, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14890 value5032 value1 value2 = (output14890, value6896, value1) := by
  rw [input14890_def, output14890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10056]
  try dsimp only
  rw [child14889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10056_skip, output14889_skip]
  kernel_rfl

theorem node14891_cond_eq
    (child10055 : Flapjack.WordAlloc.removeDeadStructural input10055 value5031 value1 value2 = (output10055, value5032, value1))
    (child14890 : Flapjack.WordAlloc.removeDeadStructural input14890 value5032 value1 value2 = (output14890, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14891 value5031 value1 value2 = (output14891, value6896, value1) := by
  rw [input14891_def, output14891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10055]
  try dsimp only
  rw [child14890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10055_skip, output14890_skip]
  kernel_rfl

theorem node14892_cond_eq
    (child10054 : Flapjack.WordAlloc.removeDeadStructural input10054 value5 value1 value2 = (output10054, value5031, value1))
    (child14891 : Flapjack.WordAlloc.removeDeadStructural input14891 value5031 value1 value2 = (output14891, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14892 value5 value1 value2 = (output14892, value6896, value1) := by
  rw [input14892_def, output14892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10054]
  try dsimp only
  rw [child14891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10054_skip, output14891_skip]
  kernel_rfl

theorem node14893_cond_eq
    (child10051 : Flapjack.WordAlloc.removeDeadStructural input10051 value5024 value1 value2 = (output10051, value5, value1))
    (child14892 : Flapjack.WordAlloc.removeDeadStructural input14892 value5 value1 value2 = (output14892, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14893 value5024 value1 value2 = (output14893, value6896, value1) := by
  rw [input14893_def, output14893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10051]
  try dsimp only
  rw [child14892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10051_skip, output14892_skip]
  kernel_rfl

theorem node14894_cond_eq
    (child10040 : Flapjack.WordAlloc.removeDeadStructural input10040 value5024 value1 value2 = (output10040, value5024, value1))
    (child14893 : Flapjack.WordAlloc.removeDeadStructural input14893 value5024 value1 value2 = (output14893, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14894 value5024 value1 value2 = (output14894, value6896, value1) := by
  rw [input14894_def, output14894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10040]
  try dsimp only
  rw [child14893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10040_skip, output14893_skip]
  kernel_rfl

theorem node14895_cond_eq
    (child10039 : Flapjack.WordAlloc.removeDeadStructural input10039 value5023 value1 value2 = (output10039, value5024, value1))
    (child14894 : Flapjack.WordAlloc.removeDeadStructural input14894 value5024 value1 value2 = (output14894, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14895 value5023 value1 value2 = (output14895, value6896, value1) := by
  rw [input14895_def, output14895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10039]
  try dsimp only
  rw [child14894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10039_skip, output14894_skip]
  kernel_rfl

theorem node14896_cond_eq
    (child10038 : Flapjack.WordAlloc.removeDeadStructural input10038 value5 value1 value2 = (output10038, value5023, value1))
    (child14895 : Flapjack.WordAlloc.removeDeadStructural input14895 value5023 value1 value2 = (output14895, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14896 value5 value1 value2 = (output14896, value6896, value1) := by
  rw [input14896_def, output14896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10038]
  try dsimp only
  rw [child14895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10038_skip, output14895_skip]
  kernel_rfl

theorem node14897_cond_eq
    (child10035 : Flapjack.WordAlloc.removeDeadStructural input10035 value5016 value1 value2 = (output10035, value5, value1))
    (child14896 : Flapjack.WordAlloc.removeDeadStructural input14896 value5 value1 value2 = (output14896, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14897 value5016 value1 value2 = (output14897, value6896, value1) := by
  rw [input14897_def, output14897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10035]
  try dsimp only
  rw [child14896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10035_skip, output14896_skip]
  kernel_rfl

theorem node14898_cond_eq
    (child10024 : Flapjack.WordAlloc.removeDeadStructural input10024 value5016 value1 value2 = (output10024, value5016, value1))
    (child14897 : Flapjack.WordAlloc.removeDeadStructural input14897 value5016 value1 value2 = (output14897, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14898 value5016 value1 value2 = (output14898, value6896, value1) := by
  rw [input14898_def, output14898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10024]
  try dsimp only
  rw [child14897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10024_skip, output14897_skip]
  kernel_rfl

theorem node14899_cond_eq
    (child10023 : Flapjack.WordAlloc.removeDeadStructural input10023 value5015 value1 value2 = (output10023, value5016, value1))
    (child14898 : Flapjack.WordAlloc.removeDeadStructural input14898 value5016 value1 value2 = (output14898, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14899 value5015 value1 value2 = (output14899, value6896, value1) := by
  rw [input14899_def, output14899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10023]
  try dsimp only
  rw [child14898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10023_skip, output14898_skip]
  kernel_rfl

theorem node14900_cond_eq
    (child10022 : Flapjack.WordAlloc.removeDeadStructural input10022 value5 value1 value2 = (output10022, value5015, value1))
    (child14899 : Flapjack.WordAlloc.removeDeadStructural input14899 value5015 value1 value2 = (output14899, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14900 value5 value1 value2 = (output14900, value6896, value1) := by
  rw [input14900_def, output14900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10022]
  try dsimp only
  rw [child14899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10022_skip, output14899_skip]
  kernel_rfl

theorem node14901_cond_eq
    (child10019 : Flapjack.WordAlloc.removeDeadStructural input10019 value5008 value1 value2 = (output10019, value5, value1))
    (child14900 : Flapjack.WordAlloc.removeDeadStructural input14900 value5 value1 value2 = (output14900, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14901 value5008 value1 value2 = (output14901, value6896, value1) := by
  rw [input14901_def, output14901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10019]
  try dsimp only
  rw [child14900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10019_skip, output14900_skip]
  kernel_rfl

theorem node14902_cond_eq
    (child10008 : Flapjack.WordAlloc.removeDeadStructural input10008 value5008 value1 value2 = (output10008, value5008, value1))
    (child14901 : Flapjack.WordAlloc.removeDeadStructural input14901 value5008 value1 value2 = (output14901, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14902 value5008 value1 value2 = (output14902, value6896, value1) := by
  rw [input14902_def, output14902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10008]
  try dsimp only
  rw [child14901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10008_skip, output14901_skip]
  kernel_rfl

theorem node14903_cond_eq
    (child10007 : Flapjack.WordAlloc.removeDeadStructural input10007 value5007 value1 value2 = (output10007, value5008, value1))
    (child14902 : Flapjack.WordAlloc.removeDeadStructural input14902 value5008 value1 value2 = (output14902, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14903 value5007 value1 value2 = (output14903, value6896, value1) := by
  rw [input14903_def, output14903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10007]
  try dsimp only
  rw [child14902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10007_skip, output14902_skip]
  kernel_rfl

theorem node14904_cond_eq
    (child10006 : Flapjack.WordAlloc.removeDeadStructural input10006 value5 value1 value2 = (output10006, value5007, value1))
    (child14903 : Flapjack.WordAlloc.removeDeadStructural input14903 value5007 value1 value2 = (output14903, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14904 value5 value1 value2 = (output14904, value6896, value1) := by
  rw [input14904_def, output14904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10006]
  try dsimp only
  rw [child14903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10006_skip, output14903_skip]
  kernel_rfl

theorem node14905_cond_eq
    (child10003 : Flapjack.WordAlloc.removeDeadStructural input10003 value5000 value1 value2 = (output10003, value5, value1))
    (child14904 : Flapjack.WordAlloc.removeDeadStructural input14904 value5 value1 value2 = (output14904, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14905 value5000 value1 value2 = (output14905, value6896, value1) := by
  rw [input14905_def, output14905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10003]
  try dsimp only
  rw [child14904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10003_skip, output14904_skip]
  kernel_rfl

theorem node14906_cond_eq
    (child9992 : Flapjack.WordAlloc.removeDeadStructural input9992 value5000 value1 value2 = (output9992, value5000, value1))
    (child14905 : Flapjack.WordAlloc.removeDeadStructural input14905 value5000 value1 value2 = (output14905, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14906 value5000 value1 value2 = (output14906, value6896, value1) := by
  rw [input14906_def, output14906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9992]
  try dsimp only
  rw [child14905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9992_skip, output14905_skip]
  kernel_rfl

theorem node14907_cond_eq
    (child9991 : Flapjack.WordAlloc.removeDeadStructural input9991 value4999 value1 value2 = (output9991, value5000, value1))
    (child14906 : Flapjack.WordAlloc.removeDeadStructural input14906 value5000 value1 value2 = (output14906, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14907 value4999 value1 value2 = (output14907, value6896, value1) := by
  rw [input14907_def, output14907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9991]
  try dsimp only
  rw [child14906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9991_skip, output14906_skip]
  kernel_rfl

theorem node14908_cond_eq
    (child9990 : Flapjack.WordAlloc.removeDeadStructural input9990 value5 value1 value2 = (output9990, value4999, value1))
    (child14907 : Flapjack.WordAlloc.removeDeadStructural input14907 value4999 value1 value2 = (output14907, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14908 value5 value1 value2 = (output14908, value6896, value1) := by
  rw [input14908_def, output14908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9990]
  try dsimp only
  rw [child14907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9990_skip, output14907_skip]
  kernel_rfl

theorem node14909_cond_eq
    (child9987 : Flapjack.WordAlloc.removeDeadStructural input9987 value4992 value1 value2 = (output9987, value5, value1))
    (child14908 : Flapjack.WordAlloc.removeDeadStructural input14908 value5 value1 value2 = (output14908, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14909 value4992 value1 value2 = (output14909, value6896, value1) := by
  rw [input14909_def, output14909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9987]
  try dsimp only
  rw [child14908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9987_skip, output14908_skip]
  kernel_rfl

theorem node14910_cond_eq
    (child9976 : Flapjack.WordAlloc.removeDeadStructural input9976 value4992 value1 value2 = (output9976, value4992, value1))
    (child14909 : Flapjack.WordAlloc.removeDeadStructural input14909 value4992 value1 value2 = (output14909, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14910 value4992 value1 value2 = (output14910, value6896, value1) := by
  rw [input14910_def, output14910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9976]
  try dsimp only
  rw [child14909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9976_skip, output14909_skip]
  kernel_rfl

theorem node14911_cond_eq
    (child9975 : Flapjack.WordAlloc.removeDeadStructural input9975 value4991 value1 value2 = (output9975, value4992, value1))
    (child14910 : Flapjack.WordAlloc.removeDeadStructural input14910 value4992 value1 value2 = (output14910, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14911 value4991 value1 value2 = (output14911, value6896, value1) := by
  rw [input14911_def, output14911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9975]
  try dsimp only
  rw [child14910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9975_skip, output14910_skip]
  kernel_rfl

theorem node14912_cond_eq
    (child9974 : Flapjack.WordAlloc.removeDeadStructural input9974 value5 value1 value2 = (output9974, value4991, value1))
    (child14911 : Flapjack.WordAlloc.removeDeadStructural input14911 value4991 value1 value2 = (output14911, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14912 value5 value1 value2 = (output14912, value6896, value1) := by
  rw [input14912_def, output14912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9974]
  try dsimp only
  rw [child14911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9974_skip, output14911_skip]
  kernel_rfl

theorem node14913_cond_eq
    (child9971 : Flapjack.WordAlloc.removeDeadStructural input9971 value4984 value1 value2 = (output9971, value5, value1))
    (child14912 : Flapjack.WordAlloc.removeDeadStructural input14912 value5 value1 value2 = (output14912, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14913 value4984 value1 value2 = (output14913, value6896, value1) := by
  rw [input14913_def, output14913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9971]
  try dsimp only
  rw [child14912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9971_skip, output14912_skip]
  kernel_rfl

theorem node14914_cond_eq
    (child9960 : Flapjack.WordAlloc.removeDeadStructural input9960 value4984 value1 value2 = (output9960, value4984, value1))
    (child14913 : Flapjack.WordAlloc.removeDeadStructural input14913 value4984 value1 value2 = (output14913, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14914 value4984 value1 value2 = (output14914, value6896, value1) := by
  rw [input14914_def, output14914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9960]
  try dsimp only
  rw [child14913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9960_skip, output14913_skip]
  kernel_rfl

theorem node14915_cond_eq
    (child9959 : Flapjack.WordAlloc.removeDeadStructural input9959 value4983 value1 value2 = (output9959, value4984, value1))
    (child14914 : Flapjack.WordAlloc.removeDeadStructural input14914 value4984 value1 value2 = (output14914, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14915 value4983 value1 value2 = (output14915, value6896, value1) := by
  rw [input14915_def, output14915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9959]
  try dsimp only
  rw [child14914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9959_skip, output14914_skip]
  kernel_rfl

theorem node14916_cond_eq
    (child9958 : Flapjack.WordAlloc.removeDeadStructural input9958 value5 value1 value2 = (output9958, value4983, value1))
    (child14915 : Flapjack.WordAlloc.removeDeadStructural input14915 value4983 value1 value2 = (output14915, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14916 value5 value1 value2 = (output14916, value6896, value1) := by
  rw [input14916_def, output14916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9958]
  try dsimp only
  rw [child14915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9958_skip, output14915_skip]
  kernel_rfl

theorem node14917_cond_eq
    (child9955 : Flapjack.WordAlloc.removeDeadStructural input9955 value4976 value1 value2 = (output9955, value5, value1))
    (child14916 : Flapjack.WordAlloc.removeDeadStructural input14916 value5 value1 value2 = (output14916, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14917 value4976 value1 value2 = (output14917, value6896, value1) := by
  rw [input14917_def, output14917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9955]
  try dsimp only
  rw [child14916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9955_skip, output14916_skip]
  kernel_rfl

theorem node14918_cond_eq
    (child9944 : Flapjack.WordAlloc.removeDeadStructural input9944 value4976 value1 value2 = (output9944, value4976, value1))
    (child14917 : Flapjack.WordAlloc.removeDeadStructural input14917 value4976 value1 value2 = (output14917, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14918 value4976 value1 value2 = (output14918, value6896, value1) := by
  rw [input14918_def, output14918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9944]
  try dsimp only
  rw [child14917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9944_skip, output14917_skip]
  kernel_rfl

theorem node14919_cond_eq
    (child9943 : Flapjack.WordAlloc.removeDeadStructural input9943 value4975 value1 value2 = (output9943, value4976, value1))
    (child14918 : Flapjack.WordAlloc.removeDeadStructural input14918 value4976 value1 value2 = (output14918, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14919 value4975 value1 value2 = (output14919, value6896, value1) := by
  rw [input14919_def, output14919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9943]
  try dsimp only
  rw [child14918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9943_skip, output14918_skip]
  kernel_rfl

theorem node14920_cond_eq
    (child9942 : Flapjack.WordAlloc.removeDeadStructural input9942 value5 value1 value2 = (output9942, value4975, value1))
    (child14919 : Flapjack.WordAlloc.removeDeadStructural input14919 value4975 value1 value2 = (output14919, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14920 value5 value1 value2 = (output14920, value6896, value1) := by
  rw [input14920_def, output14920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9942]
  try dsimp only
  rw [child14919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9942_skip, output14919_skip]
  kernel_rfl

theorem node14921_cond_eq
    (child9939 : Flapjack.WordAlloc.removeDeadStructural input9939 value4968 value1 value2 = (output9939, value5, value1))
    (child14920 : Flapjack.WordAlloc.removeDeadStructural input14920 value5 value1 value2 = (output14920, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14921 value4968 value1 value2 = (output14921, value6896, value1) := by
  rw [input14921_def, output14921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9939]
  try dsimp only
  rw [child14920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9939_skip, output14920_skip]
  kernel_rfl

theorem node14922_cond_eq
    (child9928 : Flapjack.WordAlloc.removeDeadStructural input9928 value4968 value1 value2 = (output9928, value4968, value1))
    (child14921 : Flapjack.WordAlloc.removeDeadStructural input14921 value4968 value1 value2 = (output14921, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14922 value4968 value1 value2 = (output14922, value6896, value1) := by
  rw [input14922_def, output14922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9928]
  try dsimp only
  rw [child14921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9928_skip, output14921_skip]
  kernel_rfl

theorem node14923_cond_eq
    (child9927 : Flapjack.WordAlloc.removeDeadStructural input9927 value4967 value1 value2 = (output9927, value4968, value1))
    (child14922 : Flapjack.WordAlloc.removeDeadStructural input14922 value4968 value1 value2 = (output14922, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14923 value4967 value1 value2 = (output14923, value6896, value1) := by
  rw [input14923_def, output14923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9927]
  try dsimp only
  rw [child14922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9927_skip, output14922_skip]
  kernel_rfl

theorem node14924_cond_eq
    (child9926 : Flapjack.WordAlloc.removeDeadStructural input9926 value5 value1 value2 = (output9926, value4967, value1))
    (child14923 : Flapjack.WordAlloc.removeDeadStructural input14923 value4967 value1 value2 = (output14923, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14924 value5 value1 value2 = (output14924, value6896, value1) := by
  rw [input14924_def, output14924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9926]
  try dsimp only
  rw [child14923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9926_skip, output14923_skip]
  kernel_rfl

theorem node14925_cond_eq
    (child9923 : Flapjack.WordAlloc.removeDeadStructural input9923 value4960 value1 value2 = (output9923, value5, value1))
    (child14924 : Flapjack.WordAlloc.removeDeadStructural input14924 value5 value1 value2 = (output14924, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14925 value4960 value1 value2 = (output14925, value6896, value1) := by
  rw [input14925_def, output14925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9923]
  try dsimp only
  rw [child14924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9923_skip, output14924_skip]
  kernel_rfl

theorem node14926_cond_eq
    (child9912 : Flapjack.WordAlloc.removeDeadStructural input9912 value4960 value1 value2 = (output9912, value4960, value1))
    (child14925 : Flapjack.WordAlloc.removeDeadStructural input14925 value4960 value1 value2 = (output14925, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14926 value4960 value1 value2 = (output14926, value6896, value1) := by
  rw [input14926_def, output14926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9912]
  try dsimp only
  rw [child14925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9912_skip, output14925_skip]
  kernel_rfl

theorem node14927_cond_eq
    (child9911 : Flapjack.WordAlloc.removeDeadStructural input9911 value4959 value1 value2 = (output9911, value4960, value1))
    (child14926 : Flapjack.WordAlloc.removeDeadStructural input14926 value4960 value1 value2 = (output14926, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14927 value4959 value1 value2 = (output14927, value6896, value1) := by
  rw [input14927_def, output14927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9911]
  try dsimp only
  rw [child14926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9911_skip, output14926_skip]
  kernel_rfl

theorem node14928_cond_eq
    (child9910 : Flapjack.WordAlloc.removeDeadStructural input9910 value5 value1 value2 = (output9910, value4959, value1))
    (child14927 : Flapjack.WordAlloc.removeDeadStructural input14927 value4959 value1 value2 = (output14927, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14928 value5 value1 value2 = (output14928, value6896, value1) := by
  rw [input14928_def, output14928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9910]
  try dsimp only
  rw [child14927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9910_skip, output14927_skip]
  kernel_rfl

theorem node14929_cond_eq
    (child9907 : Flapjack.WordAlloc.removeDeadStructural input9907 value4952 value1 value2 = (output9907, value5, value1))
    (child14928 : Flapjack.WordAlloc.removeDeadStructural input14928 value5 value1 value2 = (output14928, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14929 value4952 value1 value2 = (output14929, value6896, value1) := by
  rw [input14929_def, output14929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9907]
  try dsimp only
  rw [child14928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9907_skip, output14928_skip]
  kernel_rfl

theorem node14930_cond_eq
    (child9896 : Flapjack.WordAlloc.removeDeadStructural input9896 value4952 value1 value2 = (output9896, value4952, value1))
    (child14929 : Flapjack.WordAlloc.removeDeadStructural input14929 value4952 value1 value2 = (output14929, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14930 value4952 value1 value2 = (output14930, value6896, value1) := by
  rw [input14930_def, output14930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9896]
  try dsimp only
  rw [child14929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9896_skip, output14929_skip]
  kernel_rfl

theorem node14931_cond_eq
    (child9895 : Flapjack.WordAlloc.removeDeadStructural input9895 value4951 value1 value2 = (output9895, value4952, value1))
    (child14930 : Flapjack.WordAlloc.removeDeadStructural input14930 value4952 value1 value2 = (output14930, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14931 value4951 value1 value2 = (output14931, value6896, value1) := by
  rw [input14931_def, output14931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9895]
  try dsimp only
  rw [child14930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9895_skip, output14930_skip]
  kernel_rfl

theorem node14932_cond_eq
    (child9894 : Flapjack.WordAlloc.removeDeadStructural input9894 value5 value1 value2 = (output9894, value4951, value1))
    (child14931 : Flapjack.WordAlloc.removeDeadStructural input14931 value4951 value1 value2 = (output14931, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14932 value5 value1 value2 = (output14932, value6896, value1) := by
  rw [input14932_def, output14932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9894]
  try dsimp only
  rw [child14931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9894_skip, output14931_skip]
  kernel_rfl

theorem node14933_cond_eq
    (child9891 : Flapjack.WordAlloc.removeDeadStructural input9891 value4944 value1 value2 = (output9891, value5, value1))
    (child14932 : Flapjack.WordAlloc.removeDeadStructural input14932 value5 value1 value2 = (output14932, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14933 value4944 value1 value2 = (output14933, value6896, value1) := by
  rw [input14933_def, output14933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9891]
  try dsimp only
  rw [child14932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9891_skip, output14932_skip]
  kernel_rfl

theorem node14934_cond_eq
    (child9880 : Flapjack.WordAlloc.removeDeadStructural input9880 value4944 value1 value2 = (output9880, value4944, value1))
    (child14933 : Flapjack.WordAlloc.removeDeadStructural input14933 value4944 value1 value2 = (output14933, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14934 value4944 value1 value2 = (output14934, value6896, value1) := by
  rw [input14934_def, output14934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9880]
  try dsimp only
  rw [child14933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9880_skip, output14933_skip]
  kernel_rfl

theorem node14935_cond_eq
    (child9879 : Flapjack.WordAlloc.removeDeadStructural input9879 value4943 value1 value2 = (output9879, value4944, value1))
    (child14934 : Flapjack.WordAlloc.removeDeadStructural input14934 value4944 value1 value2 = (output14934, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14935 value4943 value1 value2 = (output14935, value6896, value1) := by
  rw [input14935_def, output14935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9879]
  try dsimp only
  rw [child14934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9879_skip, output14934_skip]
  kernel_rfl

theorem node14936_cond_eq
    (child9878 : Flapjack.WordAlloc.removeDeadStructural input9878 value5 value1 value2 = (output9878, value4943, value1))
    (child14935 : Flapjack.WordAlloc.removeDeadStructural input14935 value4943 value1 value2 = (output14935, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14936 value5 value1 value2 = (output14936, value6896, value1) := by
  rw [input14936_def, output14936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9878]
  try dsimp only
  rw [child14935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9878_skip, output14935_skip]
  kernel_rfl

theorem node14937_cond_eq
    (child9875 : Flapjack.WordAlloc.removeDeadStructural input9875 value4936 value1 value2 = (output9875, value5, value1))
    (child14936 : Flapjack.WordAlloc.removeDeadStructural input14936 value5 value1 value2 = (output14936, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14937 value4936 value1 value2 = (output14937, value6896, value1) := by
  rw [input14937_def, output14937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9875]
  try dsimp only
  rw [child14936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9875_skip, output14936_skip]
  kernel_rfl

theorem node14938_cond_eq
    (child9864 : Flapjack.WordAlloc.removeDeadStructural input9864 value4936 value1 value2 = (output9864, value4936, value1))
    (child14937 : Flapjack.WordAlloc.removeDeadStructural input14937 value4936 value1 value2 = (output14937, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14938 value4936 value1 value2 = (output14938, value6896, value1) := by
  rw [input14938_def, output14938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9864]
  try dsimp only
  rw [child14937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9864_skip, output14937_skip]
  kernel_rfl

theorem node14939_cond_eq
    (child9863 : Flapjack.WordAlloc.removeDeadStructural input9863 value4935 value1 value2 = (output9863, value4936, value1))
    (child14938 : Flapjack.WordAlloc.removeDeadStructural input14938 value4936 value1 value2 = (output14938, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14939 value4935 value1 value2 = (output14939, value6896, value1) := by
  rw [input14939_def, output14939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9863]
  try dsimp only
  rw [child14938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9863_skip, output14938_skip]
  kernel_rfl

theorem node14940_cond_eq
    (child9862 : Flapjack.WordAlloc.removeDeadStructural input9862 value5 value1 value2 = (output9862, value4935, value1))
    (child14939 : Flapjack.WordAlloc.removeDeadStructural input14939 value4935 value1 value2 = (output14939, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14940 value5 value1 value2 = (output14940, value6896, value1) := by
  rw [input14940_def, output14940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9862]
  try dsimp only
  rw [child14939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9862_skip, output14939_skip]
  kernel_rfl

theorem node14941_cond_eq
    (child9859 : Flapjack.WordAlloc.removeDeadStructural input9859 value4928 value1 value2 = (output9859, value5, value1))
    (child14940 : Flapjack.WordAlloc.removeDeadStructural input14940 value5 value1 value2 = (output14940, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14941 value4928 value1 value2 = (output14941, value6896, value1) := by
  rw [input14941_def, output14941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9859]
  try dsimp only
  rw [child14940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9859_skip, output14940_skip]
  kernel_rfl

theorem node14942_cond_eq
    (child9848 : Flapjack.WordAlloc.removeDeadStructural input9848 value4928 value1 value2 = (output9848, value4928, value1))
    (child14941 : Flapjack.WordAlloc.removeDeadStructural input14941 value4928 value1 value2 = (output14941, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14942 value4928 value1 value2 = (output14942, value6896, value1) := by
  rw [input14942_def, output14942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9848]
  try dsimp only
  rw [child14941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9848_skip, output14941_skip]
  kernel_rfl

theorem node14943_cond_eq
    (child9847 : Flapjack.WordAlloc.removeDeadStructural input9847 value4927 value1 value2 = (output9847, value4928, value1))
    (child14942 : Flapjack.WordAlloc.removeDeadStructural input14942 value4928 value1 value2 = (output14942, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14943 value4927 value1 value2 = (output14943, value6896, value1) := by
  rw [input14943_def, output14943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9847]
  try dsimp only
  rw [child14942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9847_skip, output14942_skip]
  kernel_rfl

theorem node14944_cond_eq
    (child9846 : Flapjack.WordAlloc.removeDeadStructural input9846 value5 value1 value2 = (output9846, value4927, value1))
    (child14943 : Flapjack.WordAlloc.removeDeadStructural input14943 value4927 value1 value2 = (output14943, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14944 value5 value1 value2 = (output14944, value6896, value1) := by
  rw [input14944_def, output14944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9846]
  try dsimp only
  rw [child14943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9846_skip, output14943_skip]
  kernel_rfl

theorem node14945_cond_eq
    (child9843 : Flapjack.WordAlloc.removeDeadStructural input9843 value4920 value1 value2 = (output9843, value5, value1))
    (child14944 : Flapjack.WordAlloc.removeDeadStructural input14944 value5 value1 value2 = (output14944, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14945 value4920 value1 value2 = (output14945, value6896, value1) := by
  rw [input14945_def, output14945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9843]
  try dsimp only
  rw [child14944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9843_skip, output14944_skip]
  kernel_rfl

theorem node14946_cond_eq
    (child9832 : Flapjack.WordAlloc.removeDeadStructural input9832 value4920 value1 value2 = (output9832, value4920, value1))
    (child14945 : Flapjack.WordAlloc.removeDeadStructural input14945 value4920 value1 value2 = (output14945, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14946 value4920 value1 value2 = (output14946, value6896, value1) := by
  rw [input14946_def, output14946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9832]
  try dsimp only
  rw [child14945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9832_skip, output14945_skip]
  kernel_rfl

theorem node14947_cond_eq
    (child9831 : Flapjack.WordAlloc.removeDeadStructural input9831 value4919 value1 value2 = (output9831, value4920, value1))
    (child14946 : Flapjack.WordAlloc.removeDeadStructural input14946 value4920 value1 value2 = (output14946, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14947 value4919 value1 value2 = (output14947, value6896, value1) := by
  rw [input14947_def, output14947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9831]
  try dsimp only
  rw [child14946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9831_skip, output14946_skip]
  kernel_rfl

theorem node14948_cond_eq
    (child9830 : Flapjack.WordAlloc.removeDeadStructural input9830 value5 value1 value2 = (output9830, value4919, value1))
    (child14947 : Flapjack.WordAlloc.removeDeadStructural input14947 value4919 value1 value2 = (output14947, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14948 value5 value1 value2 = (output14948, value6896, value1) := by
  rw [input14948_def, output14948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9830]
  try dsimp only
  rw [child14947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9830_skip, output14947_skip]
  kernel_rfl

theorem node14949_cond_eq
    (child9827 : Flapjack.WordAlloc.removeDeadStructural input9827 value4912 value1 value2 = (output9827, value5, value1))
    (child14948 : Flapjack.WordAlloc.removeDeadStructural input14948 value5 value1 value2 = (output14948, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14949 value4912 value1 value2 = (output14949, value6896, value1) := by
  rw [input14949_def, output14949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9827]
  try dsimp only
  rw [child14948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9827_skip, output14948_skip]
  kernel_rfl

theorem node14950_cond_eq
    (child9816 : Flapjack.WordAlloc.removeDeadStructural input9816 value4912 value1 value2 = (output9816, value4912, value1))
    (child14949 : Flapjack.WordAlloc.removeDeadStructural input14949 value4912 value1 value2 = (output14949, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14950 value4912 value1 value2 = (output14950, value6896, value1) := by
  rw [input14950_def, output14950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9816]
  try dsimp only
  rw [child14949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9816_skip, output14949_skip]
  kernel_rfl

theorem node14951_cond_eq
    (child9815 : Flapjack.WordAlloc.removeDeadStructural input9815 value4911 value1 value2 = (output9815, value4912, value1))
    (child14950 : Flapjack.WordAlloc.removeDeadStructural input14950 value4912 value1 value2 = (output14950, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14951 value4911 value1 value2 = (output14951, value6896, value1) := by
  rw [input14951_def, output14951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9815]
  try dsimp only
  rw [child14950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9815_skip, output14950_skip]
  kernel_rfl

theorem node14952_cond_eq
    (child9814 : Flapjack.WordAlloc.removeDeadStructural input9814 value5 value1 value2 = (output9814, value4911, value1))
    (child14951 : Flapjack.WordAlloc.removeDeadStructural input14951 value4911 value1 value2 = (output14951, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14952 value5 value1 value2 = (output14952, value6896, value1) := by
  rw [input14952_def, output14952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9814]
  try dsimp only
  rw [child14951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9814_skip, output14951_skip]
  kernel_rfl

theorem node14953_cond_eq
    (child9811 : Flapjack.WordAlloc.removeDeadStructural input9811 value4904 value1 value2 = (output9811, value5, value1))
    (child14952 : Flapjack.WordAlloc.removeDeadStructural input14952 value5 value1 value2 = (output14952, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14953 value4904 value1 value2 = (output14953, value6896, value1) := by
  rw [input14953_def, output14953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9811]
  try dsimp only
  rw [child14952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9811_skip, output14952_skip]
  kernel_rfl

theorem node14954_cond_eq
    (child9800 : Flapjack.WordAlloc.removeDeadStructural input9800 value4904 value1 value2 = (output9800, value4904, value1))
    (child14953 : Flapjack.WordAlloc.removeDeadStructural input14953 value4904 value1 value2 = (output14953, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14954 value4904 value1 value2 = (output14954, value6896, value1) := by
  rw [input14954_def, output14954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9800]
  try dsimp only
  rw [child14953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9800_skip, output14953_skip]
  kernel_rfl

theorem node14955_cond_eq
    (child9799 : Flapjack.WordAlloc.removeDeadStructural input9799 value4903 value1 value2 = (output9799, value4904, value1))
    (child14954 : Flapjack.WordAlloc.removeDeadStructural input14954 value4904 value1 value2 = (output14954, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14955 value4903 value1 value2 = (output14955, value6896, value1) := by
  rw [input14955_def, output14955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9799]
  try dsimp only
  rw [child14954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9799_skip, output14954_skip]
  kernel_rfl

theorem node14956_cond_eq
    (child9798 : Flapjack.WordAlloc.removeDeadStructural input9798 value5 value1 value2 = (output9798, value4903, value1))
    (child14955 : Flapjack.WordAlloc.removeDeadStructural input14955 value4903 value1 value2 = (output14955, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14956 value5 value1 value2 = (output14956, value6896, value1) := by
  rw [input14956_def, output14956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9798]
  try dsimp only
  rw [child14955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9798_skip, output14955_skip]
  kernel_rfl

theorem node14957_cond_eq
    (child9795 : Flapjack.WordAlloc.removeDeadStructural input9795 value4896 value1 value2 = (output9795, value5, value1))
    (child14956 : Flapjack.WordAlloc.removeDeadStructural input14956 value5 value1 value2 = (output14956, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14957 value4896 value1 value2 = (output14957, value6896, value1) := by
  rw [input14957_def, output14957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9795]
  try dsimp only
  rw [child14956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9795_skip, output14956_skip]
  kernel_rfl

theorem node14958_cond_eq
    (child9784 : Flapjack.WordAlloc.removeDeadStructural input9784 value4896 value1 value2 = (output9784, value4896, value1))
    (child14957 : Flapjack.WordAlloc.removeDeadStructural input14957 value4896 value1 value2 = (output14957, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14958 value4896 value1 value2 = (output14958, value6896, value1) := by
  rw [input14958_def, output14958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9784]
  try dsimp only
  rw [child14957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9784_skip, output14957_skip]
  kernel_rfl

theorem node14959_cond_eq
    (child9783 : Flapjack.WordAlloc.removeDeadStructural input9783 value4895 value1 value2 = (output9783, value4896, value1))
    (child14958 : Flapjack.WordAlloc.removeDeadStructural input14958 value4896 value1 value2 = (output14958, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14959 value4895 value1 value2 = (output14959, value6896, value1) := by
  rw [input14959_def, output14959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9783]
  try dsimp only
  rw [child14958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9783_skip, output14958_skip]
  kernel_rfl

theorem node14960_cond_eq
    (child9782 : Flapjack.WordAlloc.removeDeadStructural input9782 value5 value1 value2 = (output9782, value4895, value1))
    (child14959 : Flapjack.WordAlloc.removeDeadStructural input14959 value4895 value1 value2 = (output14959, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14960 value5 value1 value2 = (output14960, value6896, value1) := by
  rw [input14960_def, output14960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9782]
  try dsimp only
  rw [child14959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9782_skip, output14959_skip]
  kernel_rfl

theorem node14961_cond_eq
    (child9779 : Flapjack.WordAlloc.removeDeadStructural input9779 value4888 value1 value2 = (output9779, value5, value1))
    (child14960 : Flapjack.WordAlloc.removeDeadStructural input14960 value5 value1 value2 = (output14960, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14961 value4888 value1 value2 = (output14961, value6896, value1) := by
  rw [input14961_def, output14961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9779]
  try dsimp only
  rw [child14960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9779_skip, output14960_skip]
  kernel_rfl

theorem node14962_cond_eq
    (child9768 : Flapjack.WordAlloc.removeDeadStructural input9768 value4888 value1 value2 = (output9768, value4888, value1))
    (child14961 : Flapjack.WordAlloc.removeDeadStructural input14961 value4888 value1 value2 = (output14961, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14962 value4888 value1 value2 = (output14962, value6896, value1) := by
  rw [input14962_def, output14962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9768]
  try dsimp only
  rw [child14961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9768_skip, output14961_skip]
  kernel_rfl

theorem node14963_cond_eq
    (child9767 : Flapjack.WordAlloc.removeDeadStructural input9767 value4887 value1 value2 = (output9767, value4888, value1))
    (child14962 : Flapjack.WordAlloc.removeDeadStructural input14962 value4888 value1 value2 = (output14962, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14963 value4887 value1 value2 = (output14963, value6896, value1) := by
  rw [input14963_def, output14963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9767]
  try dsimp only
  rw [child14962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9767_skip, output14962_skip]
  kernel_rfl

theorem node14964_cond_eq
    (child9766 : Flapjack.WordAlloc.removeDeadStructural input9766 value5 value1 value2 = (output9766, value4887, value1))
    (child14963 : Flapjack.WordAlloc.removeDeadStructural input14963 value4887 value1 value2 = (output14963, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14964 value5 value1 value2 = (output14964, value6896, value1) := by
  rw [input14964_def, output14964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9766]
  try dsimp only
  rw [child14963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9766_skip, output14963_skip]
  kernel_rfl

theorem node14965_cond_eq
    (child9763 : Flapjack.WordAlloc.removeDeadStructural input9763 value4880 value1 value2 = (output9763, value5, value1))
    (child14964 : Flapjack.WordAlloc.removeDeadStructural input14964 value5 value1 value2 = (output14964, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14965 value4880 value1 value2 = (output14965, value6896, value1) := by
  rw [input14965_def, output14965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9763]
  try dsimp only
  rw [child14964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9763_skip, output14964_skip]
  kernel_rfl

theorem node14966_cond_eq
    (child9752 : Flapjack.WordAlloc.removeDeadStructural input9752 value4880 value1 value2 = (output9752, value4880, value1))
    (child14965 : Flapjack.WordAlloc.removeDeadStructural input14965 value4880 value1 value2 = (output14965, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14966 value4880 value1 value2 = (output14966, value6896, value1) := by
  rw [input14966_def, output14966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9752]
  try dsimp only
  rw [child14965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9752_skip, output14965_skip]
  kernel_rfl

theorem node14967_cond_eq
    (child9751 : Flapjack.WordAlloc.removeDeadStructural input9751 value4879 value1 value2 = (output9751, value4880, value1))
    (child14966 : Flapjack.WordAlloc.removeDeadStructural input14966 value4880 value1 value2 = (output14966, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14967 value4879 value1 value2 = (output14967, value6896, value1) := by
  rw [input14967_def, output14967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9751]
  try dsimp only
  rw [child14966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9751_skip, output14966_skip]
  kernel_rfl

theorem node14968_cond_eq
    (child9750 : Flapjack.WordAlloc.removeDeadStructural input9750 value5 value1 value2 = (output9750, value4879, value1))
    (child14967 : Flapjack.WordAlloc.removeDeadStructural input14967 value4879 value1 value2 = (output14967, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14968 value5 value1 value2 = (output14968, value6896, value1) := by
  rw [input14968_def, output14968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9750]
  try dsimp only
  rw [child14967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9750_skip, output14967_skip]
  kernel_rfl

theorem node14969_cond_eq
    (child9747 : Flapjack.WordAlloc.removeDeadStructural input9747 value4872 value1 value2 = (output9747, value5, value1))
    (child14968 : Flapjack.WordAlloc.removeDeadStructural input14968 value5 value1 value2 = (output14968, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14969 value4872 value1 value2 = (output14969, value6896, value1) := by
  rw [input14969_def, output14969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9747]
  try dsimp only
  rw [child14968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9747_skip, output14968_skip]
  kernel_rfl

theorem node14970_cond_eq
    (child9736 : Flapjack.WordAlloc.removeDeadStructural input9736 value4872 value1 value2 = (output9736, value4872, value1))
    (child14969 : Flapjack.WordAlloc.removeDeadStructural input14969 value4872 value1 value2 = (output14969, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14970 value4872 value1 value2 = (output14970, value6896, value1) := by
  rw [input14970_def, output14970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9736]
  try dsimp only
  rw [child14969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9736_skip, output14969_skip]
  kernel_rfl

theorem node14971_cond_eq
    (child9735 : Flapjack.WordAlloc.removeDeadStructural input9735 value4871 value1 value2 = (output9735, value4872, value1))
    (child14970 : Flapjack.WordAlloc.removeDeadStructural input14970 value4872 value1 value2 = (output14970, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14971 value4871 value1 value2 = (output14971, value6896, value1) := by
  rw [input14971_def, output14971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9735]
  try dsimp only
  rw [child14970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9735_skip, output14970_skip]
  kernel_rfl

theorem node14972_cond_eq
    (child9734 : Flapjack.WordAlloc.removeDeadStructural input9734 value5 value1 value2 = (output9734, value4871, value1))
    (child14971 : Flapjack.WordAlloc.removeDeadStructural input14971 value4871 value1 value2 = (output14971, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14972 value5 value1 value2 = (output14972, value6896, value1) := by
  rw [input14972_def, output14972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9734]
  try dsimp only
  rw [child14971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9734_skip, output14971_skip]
  kernel_rfl

theorem node14973_cond_eq
    (child9731 : Flapjack.WordAlloc.removeDeadStructural input9731 value4864 value1 value2 = (output9731, value5, value1))
    (child14972 : Flapjack.WordAlloc.removeDeadStructural input14972 value5 value1 value2 = (output14972, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14973 value4864 value1 value2 = (output14973, value6896, value1) := by
  rw [input14973_def, output14973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9731]
  try dsimp only
  rw [child14972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9731_skip, output14972_skip]
  kernel_rfl

theorem node14974_cond_eq
    (child9720 : Flapjack.WordAlloc.removeDeadStructural input9720 value4864 value1 value2 = (output9720, value4864, value1))
    (child14973 : Flapjack.WordAlloc.removeDeadStructural input14973 value4864 value1 value2 = (output14973, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14974 value4864 value1 value2 = (output14974, value6896, value1) := by
  rw [input14974_def, output14974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9720]
  try dsimp only
  rw [child14973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9720_skip, output14973_skip]
  kernel_rfl

theorem node14975_cond_eq
    (child9719 : Flapjack.WordAlloc.removeDeadStructural input9719 value4863 value1 value2 = (output9719, value4864, value1))
    (child14974 : Flapjack.WordAlloc.removeDeadStructural input14974 value4864 value1 value2 = (output14974, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14975 value4863 value1 value2 = (output14975, value6896, value1) := by
  rw [input14975_def, output14975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9719]
  try dsimp only
  rw [child14974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9719_skip, output14974_skip]
  kernel_rfl

theorem node14976_cond_eq
    (child9718 : Flapjack.WordAlloc.removeDeadStructural input9718 value5 value1 value2 = (output9718, value4863, value1))
    (child14975 : Flapjack.WordAlloc.removeDeadStructural input14975 value4863 value1 value2 = (output14975, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14976 value5 value1 value2 = (output14976, value6896, value1) := by
  rw [input14976_def, output14976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9718]
  try dsimp only
  rw [child14975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9718_skip, output14975_skip]
  kernel_rfl

theorem node14977_cond_eq
    (child9715 : Flapjack.WordAlloc.removeDeadStructural input9715 value4856 value1 value2 = (output9715, value5, value1))
    (child14976 : Flapjack.WordAlloc.removeDeadStructural input14976 value5 value1 value2 = (output14976, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14977 value4856 value1 value2 = (output14977, value6896, value1) := by
  rw [input14977_def, output14977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9715]
  try dsimp only
  rw [child14976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9715_skip, output14976_skip]
  kernel_rfl

theorem node14978_cond_eq
    (child9704 : Flapjack.WordAlloc.removeDeadStructural input9704 value4856 value1 value2 = (output9704, value4856, value1))
    (child14977 : Flapjack.WordAlloc.removeDeadStructural input14977 value4856 value1 value2 = (output14977, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14978 value4856 value1 value2 = (output14978, value6896, value1) := by
  rw [input14978_def, output14978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9704]
  try dsimp only
  rw [child14977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9704_skip, output14977_skip]
  kernel_rfl

theorem node14979_cond_eq
    (child9703 : Flapjack.WordAlloc.removeDeadStructural input9703 value4855 value1 value2 = (output9703, value4856, value1))
    (child14978 : Flapjack.WordAlloc.removeDeadStructural input14978 value4856 value1 value2 = (output14978, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14979 value4855 value1 value2 = (output14979, value6896, value1) := by
  rw [input14979_def, output14979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9703]
  try dsimp only
  rw [child14978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9703_skip, output14978_skip]
  kernel_rfl

theorem node14980_cond_eq
    (child9702 : Flapjack.WordAlloc.removeDeadStructural input9702 value5 value1 value2 = (output9702, value4855, value1))
    (child14979 : Flapjack.WordAlloc.removeDeadStructural input14979 value4855 value1 value2 = (output14979, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14980 value5 value1 value2 = (output14980, value6896, value1) := by
  rw [input14980_def, output14980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9702]
  try dsimp only
  rw [child14979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9702_skip, output14979_skip]
  kernel_rfl

theorem node14981_cond_eq
    (child9699 : Flapjack.WordAlloc.removeDeadStructural input9699 value4848 value1 value2 = (output9699, value5, value1))
    (child14980 : Flapjack.WordAlloc.removeDeadStructural input14980 value5 value1 value2 = (output14980, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14981 value4848 value1 value2 = (output14981, value6896, value1) := by
  rw [input14981_def, output14981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9699]
  try dsimp only
  rw [child14980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9699_skip, output14980_skip]
  kernel_rfl

theorem node14982_cond_eq
    (child9688 : Flapjack.WordAlloc.removeDeadStructural input9688 value4848 value1 value2 = (output9688, value4848, value1))
    (child14981 : Flapjack.WordAlloc.removeDeadStructural input14981 value4848 value1 value2 = (output14981, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14982 value4848 value1 value2 = (output14982, value6896, value1) := by
  rw [input14982_def, output14982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9688]
  try dsimp only
  rw [child14981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9688_skip, output14981_skip]
  kernel_rfl

theorem node14983_cond_eq
    (child9687 : Flapjack.WordAlloc.removeDeadStructural input9687 value4847 value1 value2 = (output9687, value4848, value1))
    (child14982 : Flapjack.WordAlloc.removeDeadStructural input14982 value4848 value1 value2 = (output14982, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14983 value4847 value1 value2 = (output14983, value6896, value1) := by
  rw [input14983_def, output14983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9687]
  try dsimp only
  rw [child14982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9687_skip, output14982_skip]
  kernel_rfl

theorem node14984_cond_eq
    (child9686 : Flapjack.WordAlloc.removeDeadStructural input9686 value5 value1 value2 = (output9686, value4847, value1))
    (child14983 : Flapjack.WordAlloc.removeDeadStructural input14983 value4847 value1 value2 = (output14983, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14984 value5 value1 value2 = (output14984, value6896, value1) := by
  rw [input14984_def, output14984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9686]
  try dsimp only
  rw [child14983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9686_skip, output14983_skip]
  kernel_rfl

theorem node14985_cond_eq
    (child9683 : Flapjack.WordAlloc.removeDeadStructural input9683 value4840 value1 value2 = (output9683, value5, value1))
    (child14984 : Flapjack.WordAlloc.removeDeadStructural input14984 value5 value1 value2 = (output14984, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14985 value4840 value1 value2 = (output14985, value6896, value1) := by
  rw [input14985_def, output14985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9683]
  try dsimp only
  rw [child14984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9683_skip, output14984_skip]
  kernel_rfl

theorem node14986_cond_eq
    (child9672 : Flapjack.WordAlloc.removeDeadStructural input9672 value4840 value1 value2 = (output9672, value4840, value1))
    (child14985 : Flapjack.WordAlloc.removeDeadStructural input14985 value4840 value1 value2 = (output14985, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14986 value4840 value1 value2 = (output14986, value6896, value1) := by
  rw [input14986_def, output14986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9672]
  try dsimp only
  rw [child14985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9672_skip, output14985_skip]
  kernel_rfl

theorem node14987_cond_eq
    (child9671 : Flapjack.WordAlloc.removeDeadStructural input9671 value4839 value1 value2 = (output9671, value4840, value1))
    (child14986 : Flapjack.WordAlloc.removeDeadStructural input14986 value4840 value1 value2 = (output14986, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14987 value4839 value1 value2 = (output14987, value6896, value1) := by
  rw [input14987_def, output14987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9671]
  try dsimp only
  rw [child14986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9671_skip, output14986_skip]
  kernel_rfl

theorem node14988_cond_eq
    (child9670 : Flapjack.WordAlloc.removeDeadStructural input9670 value5 value1 value2 = (output9670, value4839, value1))
    (child14987 : Flapjack.WordAlloc.removeDeadStructural input14987 value4839 value1 value2 = (output14987, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14988 value5 value1 value2 = (output14988, value6896, value1) := by
  rw [input14988_def, output14988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9670]
  try dsimp only
  rw [child14987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9670_skip, output14987_skip]
  kernel_rfl

theorem node14989_cond_eq
    (child9667 : Flapjack.WordAlloc.removeDeadStructural input9667 value4832 value1 value2 = (output9667, value5, value1))
    (child14988 : Flapjack.WordAlloc.removeDeadStructural input14988 value5 value1 value2 = (output14988, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14989 value4832 value1 value2 = (output14989, value6896, value1) := by
  rw [input14989_def, output14989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9667]
  try dsimp only
  rw [child14988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9667_skip, output14988_skip]
  kernel_rfl

theorem node14990_cond_eq
    (child9656 : Flapjack.WordAlloc.removeDeadStructural input9656 value4832 value1 value2 = (output9656, value4832, value1))
    (child14989 : Flapjack.WordAlloc.removeDeadStructural input14989 value4832 value1 value2 = (output14989, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14990 value4832 value1 value2 = (output14990, value6896, value1) := by
  rw [input14990_def, output14990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9656]
  try dsimp only
  rw [child14989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9656_skip, output14989_skip]
  kernel_rfl

theorem node14991_cond_eq
    (child9655 : Flapjack.WordAlloc.removeDeadStructural input9655 value4831 value1 value2 = (output9655, value4832, value1))
    (child14990 : Flapjack.WordAlloc.removeDeadStructural input14990 value4832 value1 value2 = (output14990, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14991 value4831 value1 value2 = (output14991, value6896, value1) := by
  rw [input14991_def, output14991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9655]
  try dsimp only
  rw [child14990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9655_skip, output14990_skip]
  kernel_rfl

theorem node14992_cond_eq
    (child9654 : Flapjack.WordAlloc.removeDeadStructural input9654 value5 value1 value2 = (output9654, value4831, value1))
    (child14991 : Flapjack.WordAlloc.removeDeadStructural input14991 value4831 value1 value2 = (output14991, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14992 value5 value1 value2 = (output14992, value6896, value1) := by
  rw [input14992_def, output14992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9654]
  try dsimp only
  rw [child14991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9654_skip, output14991_skip]
  kernel_rfl

theorem node14993_cond_eq
    (child9651 : Flapjack.WordAlloc.removeDeadStructural input9651 value4824 value1 value2 = (output9651, value5, value1))
    (child14992 : Flapjack.WordAlloc.removeDeadStructural input14992 value5 value1 value2 = (output14992, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14993 value4824 value1 value2 = (output14993, value6896, value1) := by
  rw [input14993_def, output14993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9651]
  try dsimp only
  rw [child14992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9651_skip, output14992_skip]
  kernel_rfl

theorem node14994_cond_eq
    (child9640 : Flapjack.WordAlloc.removeDeadStructural input9640 value4824 value1 value2 = (output9640, value4824, value1))
    (child14993 : Flapjack.WordAlloc.removeDeadStructural input14993 value4824 value1 value2 = (output14993, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14994 value4824 value1 value2 = (output14994, value6896, value1) := by
  rw [input14994_def, output14994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9640]
  try dsimp only
  rw [child14993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9640_skip, output14993_skip]
  kernel_rfl

theorem node14995_cond_eq
    (child9639 : Flapjack.WordAlloc.removeDeadStructural input9639 value4823 value1 value2 = (output9639, value4824, value1))
    (child14994 : Flapjack.WordAlloc.removeDeadStructural input14994 value4824 value1 value2 = (output14994, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14995 value4823 value1 value2 = (output14995, value6896, value1) := by
  rw [input14995_def, output14995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9639]
  try dsimp only
  rw [child14994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9639_skip, output14994_skip]
  kernel_rfl

theorem node14996_cond_eq
    (child9638 : Flapjack.WordAlloc.removeDeadStructural input9638 value5 value1 value2 = (output9638, value4823, value1))
    (child14995 : Flapjack.WordAlloc.removeDeadStructural input14995 value4823 value1 value2 = (output14995, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14996 value5 value1 value2 = (output14996, value6896, value1) := by
  rw [input14996_def, output14996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9638]
  try dsimp only
  rw [child14995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9638_skip, output14995_skip]
  kernel_rfl

theorem node14997_cond_eq
    (child9635 : Flapjack.WordAlloc.removeDeadStructural input9635 value4816 value1 value2 = (output9635, value5, value1))
    (child14996 : Flapjack.WordAlloc.removeDeadStructural input14996 value5 value1 value2 = (output14996, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14997 value4816 value1 value2 = (output14997, value6896, value1) := by
  rw [input14997_def, output14997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9635]
  try dsimp only
  rw [child14996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9635_skip, output14996_skip]
  kernel_rfl

theorem node14998_cond_eq
    (child9624 : Flapjack.WordAlloc.removeDeadStructural input9624 value4816 value1 value2 = (output9624, value4816, value1))
    (child14997 : Flapjack.WordAlloc.removeDeadStructural input14997 value4816 value1 value2 = (output14997, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14998 value4816 value1 value2 = (output14998, value6896, value1) := by
  rw [input14998_def, output14998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9624]
  try dsimp only
  rw [child14997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9624_skip, output14997_skip]
  kernel_rfl

theorem node14999_cond_eq
    (child9623 : Flapjack.WordAlloc.removeDeadStructural input9623 value4815 value1 value2 = (output9623, value4816, value1))
    (child14998 : Flapjack.WordAlloc.removeDeadStructural input14998 value4816 value1 value2 = (output14998, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14999 value4815 value1 value2 = (output14999, value6896, value1) := by
  rw [input14999_def, output14999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9623]
  try dsimp only
  rw [child14998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9623_skip, output14998_skip]
  kernel_rfl

theorem node15000_cond_eq
    (child9622 : Flapjack.WordAlloc.removeDeadStructural input9622 value5 value1 value2 = (output9622, value4815, value1))
    (child14999 : Flapjack.WordAlloc.removeDeadStructural input14999 value4815 value1 value2 = (output14999, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15000 value5 value1 value2 = (output15000, value6896, value1) := by
  rw [input15000_def, output15000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9622]
  try dsimp only
  rw [child14999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9622_skip, output14999_skip]
  kernel_rfl

theorem node15001_cond_eq
    (child9619 : Flapjack.WordAlloc.removeDeadStructural input9619 value4808 value1 value2 = (output9619, value5, value1))
    (child15000 : Flapjack.WordAlloc.removeDeadStructural input15000 value5 value1 value2 = (output15000, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15001 value4808 value1 value2 = (output15001, value6896, value1) := by
  rw [input15001_def, output15001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9619]
  try dsimp only
  rw [child15000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9619_skip, output15000_skip]
  kernel_rfl

theorem node15002_cond_eq
    (child9608 : Flapjack.WordAlloc.removeDeadStructural input9608 value4808 value1 value2 = (output9608, value4808, value1))
    (child15001 : Flapjack.WordAlloc.removeDeadStructural input15001 value4808 value1 value2 = (output15001, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15002 value4808 value1 value2 = (output15002, value6896, value1) := by
  rw [input15002_def, output15002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9608]
  try dsimp only
  rw [child15001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9608_skip, output15001_skip]
  kernel_rfl

theorem node15003_cond_eq
    (child9607 : Flapjack.WordAlloc.removeDeadStructural input9607 value4807 value1 value2 = (output9607, value4808, value1))
    (child15002 : Flapjack.WordAlloc.removeDeadStructural input15002 value4808 value1 value2 = (output15002, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15003 value4807 value1 value2 = (output15003, value6896, value1) := by
  rw [input15003_def, output15003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9607]
  try dsimp only
  rw [child15002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9607_skip, output15002_skip]
  kernel_rfl

theorem node15004_cond_eq
    (child9606 : Flapjack.WordAlloc.removeDeadStructural input9606 value5 value1 value2 = (output9606, value4807, value1))
    (child15003 : Flapjack.WordAlloc.removeDeadStructural input15003 value4807 value1 value2 = (output15003, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15004 value5 value1 value2 = (output15004, value6896, value1) := by
  rw [input15004_def, output15004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9606]
  try dsimp only
  rw [child15003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9606_skip, output15003_skip]
  kernel_rfl

theorem node15005_cond_eq
    (child9603 : Flapjack.WordAlloc.removeDeadStructural input9603 value4800 value1 value2 = (output9603, value5, value1))
    (child15004 : Flapjack.WordAlloc.removeDeadStructural input15004 value5 value1 value2 = (output15004, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15005 value4800 value1 value2 = (output15005, value6896, value1) := by
  rw [input15005_def, output15005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9603]
  try dsimp only
  rw [child15004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9603_skip, output15004_skip]
  kernel_rfl

theorem node15006_cond_eq
    (child9592 : Flapjack.WordAlloc.removeDeadStructural input9592 value4800 value1 value2 = (output9592, value4800, value1))
    (child15005 : Flapjack.WordAlloc.removeDeadStructural input15005 value4800 value1 value2 = (output15005, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15006 value4800 value1 value2 = (output15006, value6896, value1) := by
  rw [input15006_def, output15006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9592]
  try dsimp only
  rw [child15005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9592_skip, output15005_skip]
  kernel_rfl

theorem node15007_cond_eq
    (child9591 : Flapjack.WordAlloc.removeDeadStructural input9591 value4799 value1 value2 = (output9591, value4800, value1))
    (child15006 : Flapjack.WordAlloc.removeDeadStructural input15006 value4800 value1 value2 = (output15006, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15007 value4799 value1 value2 = (output15007, value6896, value1) := by
  rw [input15007_def, output15007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9591]
  try dsimp only
  rw [child15006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9591_skip, output15006_skip]
  kernel_rfl

theorem node15008_cond_eq
    (child9590 : Flapjack.WordAlloc.removeDeadStructural input9590 value5 value1 value2 = (output9590, value4799, value1))
    (child15007 : Flapjack.WordAlloc.removeDeadStructural input15007 value4799 value1 value2 = (output15007, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15008 value5 value1 value2 = (output15008, value6896, value1) := by
  rw [input15008_def, output15008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9590]
  try dsimp only
  rw [child15007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9590_skip, output15007_skip]
  kernel_rfl

theorem node15009_cond_eq
    (child9587 : Flapjack.WordAlloc.removeDeadStructural input9587 value4792 value1 value2 = (output9587, value5, value1))
    (child15008 : Flapjack.WordAlloc.removeDeadStructural input15008 value5 value1 value2 = (output15008, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15009 value4792 value1 value2 = (output15009, value6896, value1) := by
  rw [input15009_def, output15009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9587]
  try dsimp only
  rw [child15008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9587_skip, output15008_skip]
  kernel_rfl

theorem node15010_cond_eq
    (child9576 : Flapjack.WordAlloc.removeDeadStructural input9576 value4792 value1 value2 = (output9576, value4792, value1))
    (child15009 : Flapjack.WordAlloc.removeDeadStructural input15009 value4792 value1 value2 = (output15009, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15010 value4792 value1 value2 = (output15010, value6896, value1) := by
  rw [input15010_def, output15010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9576]
  try dsimp only
  rw [child15009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9576_skip, output15009_skip]
  kernel_rfl

theorem node15011_cond_eq
    (child9575 : Flapjack.WordAlloc.removeDeadStructural input9575 value4791 value1 value2 = (output9575, value4792, value1))
    (child15010 : Flapjack.WordAlloc.removeDeadStructural input15010 value4792 value1 value2 = (output15010, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15011 value4791 value1 value2 = (output15011, value6896, value1) := by
  rw [input15011_def, output15011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9575]
  try dsimp only
  rw [child15010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9575_skip, output15010_skip]
  kernel_rfl

theorem node15012_cond_eq
    (child9574 : Flapjack.WordAlloc.removeDeadStructural input9574 value5 value1 value2 = (output9574, value4791, value1))
    (child15011 : Flapjack.WordAlloc.removeDeadStructural input15011 value4791 value1 value2 = (output15011, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15012 value5 value1 value2 = (output15012, value6896, value1) := by
  rw [input15012_def, output15012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9574]
  try dsimp only
  rw [child15011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9574_skip, output15011_skip]
  kernel_rfl

theorem node15013_cond_eq
    (child9571 : Flapjack.WordAlloc.removeDeadStructural input9571 value4784 value1 value2 = (output9571, value5, value1))
    (child15012 : Flapjack.WordAlloc.removeDeadStructural input15012 value5 value1 value2 = (output15012, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15013 value4784 value1 value2 = (output15013, value6896, value1) := by
  rw [input15013_def, output15013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9571]
  try dsimp only
  rw [child15012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9571_skip, output15012_skip]
  kernel_rfl

theorem node15014_cond_eq
    (child9560 : Flapjack.WordAlloc.removeDeadStructural input9560 value4784 value1 value2 = (output9560, value4784, value1))
    (child15013 : Flapjack.WordAlloc.removeDeadStructural input15013 value4784 value1 value2 = (output15013, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15014 value4784 value1 value2 = (output15014, value6896, value1) := by
  rw [input15014_def, output15014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9560]
  try dsimp only
  rw [child15013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9560_skip, output15013_skip]
  kernel_rfl

theorem node15015_cond_eq
    (child9559 : Flapjack.WordAlloc.removeDeadStructural input9559 value4783 value1 value2 = (output9559, value4784, value1))
    (child15014 : Flapjack.WordAlloc.removeDeadStructural input15014 value4784 value1 value2 = (output15014, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15015 value4783 value1 value2 = (output15015, value6896, value1) := by
  rw [input15015_def, output15015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9559]
  try dsimp only
  rw [child15014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9559_skip, output15014_skip]
  kernel_rfl

theorem node15016_cond_eq
    (child9558 : Flapjack.WordAlloc.removeDeadStructural input9558 value5 value1 value2 = (output9558, value4783, value1))
    (child15015 : Flapjack.WordAlloc.removeDeadStructural input15015 value4783 value1 value2 = (output15015, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15016 value5 value1 value2 = (output15016, value6896, value1) := by
  rw [input15016_def, output15016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9558]
  try dsimp only
  rw [child15015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9558_skip, output15015_skip]
  kernel_rfl

theorem node15017_cond_eq
    (child9555 : Flapjack.WordAlloc.removeDeadStructural input9555 value4776 value1 value2 = (output9555, value5, value1))
    (child15016 : Flapjack.WordAlloc.removeDeadStructural input15016 value5 value1 value2 = (output15016, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15017 value4776 value1 value2 = (output15017, value6896, value1) := by
  rw [input15017_def, output15017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9555]
  try dsimp only
  rw [child15016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9555_skip, output15016_skip]
  kernel_rfl

theorem node15018_cond_eq
    (child9544 : Flapjack.WordAlloc.removeDeadStructural input9544 value4776 value1 value2 = (output9544, value4776, value1))
    (child15017 : Flapjack.WordAlloc.removeDeadStructural input15017 value4776 value1 value2 = (output15017, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15018 value4776 value1 value2 = (output15018, value6896, value1) := by
  rw [input15018_def, output15018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9544]
  try dsimp only
  rw [child15017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9544_skip, output15017_skip]
  kernel_rfl

theorem node15019_cond_eq
    (child9543 : Flapjack.WordAlloc.removeDeadStructural input9543 value4775 value1 value2 = (output9543, value4776, value1))
    (child15018 : Flapjack.WordAlloc.removeDeadStructural input15018 value4776 value1 value2 = (output15018, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15019 value4775 value1 value2 = (output15019, value6896, value1) := by
  rw [input15019_def, output15019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9543]
  try dsimp only
  rw [child15018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9543_skip, output15018_skip]
  kernel_rfl

theorem node15020_cond_eq
    (child9542 : Flapjack.WordAlloc.removeDeadStructural input9542 value5 value1 value2 = (output9542, value4775, value1))
    (child15019 : Flapjack.WordAlloc.removeDeadStructural input15019 value4775 value1 value2 = (output15019, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15020 value5 value1 value2 = (output15020, value6896, value1) := by
  rw [input15020_def, output15020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9542]
  try dsimp only
  rw [child15019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9542_skip, output15019_skip]
  kernel_rfl

theorem node15021_cond_eq
    (child9539 : Flapjack.WordAlloc.removeDeadStructural input9539 value4768 value1 value2 = (output9539, value5, value1))
    (child15020 : Flapjack.WordAlloc.removeDeadStructural input15020 value5 value1 value2 = (output15020, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15021 value4768 value1 value2 = (output15021, value6896, value1) := by
  rw [input15021_def, output15021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9539]
  try dsimp only
  rw [child15020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9539_skip, output15020_skip]
  kernel_rfl

theorem node15022_cond_eq
    (child9528 : Flapjack.WordAlloc.removeDeadStructural input9528 value4768 value1 value2 = (output9528, value4768, value1))
    (child15021 : Flapjack.WordAlloc.removeDeadStructural input15021 value4768 value1 value2 = (output15021, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15022 value4768 value1 value2 = (output15022, value6896, value1) := by
  rw [input15022_def, output15022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9528]
  try dsimp only
  rw [child15021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9528_skip, output15021_skip]
  kernel_rfl

theorem node15023_cond_eq
    (child9527 : Flapjack.WordAlloc.removeDeadStructural input9527 value4767 value1 value2 = (output9527, value4768, value1))
    (child15022 : Flapjack.WordAlloc.removeDeadStructural input15022 value4768 value1 value2 = (output15022, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15023 value4767 value1 value2 = (output15023, value6896, value1) := by
  rw [input15023_def, output15023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9527]
  try dsimp only
  rw [child15022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9527_skip, output15022_skip]
  kernel_rfl

theorem node15024_cond_eq
    (child9526 : Flapjack.WordAlloc.removeDeadStructural input9526 value5 value1 value2 = (output9526, value4767, value1))
    (child15023 : Flapjack.WordAlloc.removeDeadStructural input15023 value4767 value1 value2 = (output15023, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15024 value5 value1 value2 = (output15024, value6896, value1) := by
  rw [input15024_def, output15024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9526]
  try dsimp only
  rw [child15023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9526_skip, output15023_skip]
  kernel_rfl

theorem node15025_cond_eq
    (child9523 : Flapjack.WordAlloc.removeDeadStructural input9523 value4760 value1 value2 = (output9523, value5, value1))
    (child15024 : Flapjack.WordAlloc.removeDeadStructural input15024 value5 value1 value2 = (output15024, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15025 value4760 value1 value2 = (output15025, value6896, value1) := by
  rw [input15025_def, output15025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9523]
  try dsimp only
  rw [child15024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9523_skip, output15024_skip]
  kernel_rfl

theorem node15026_cond_eq
    (child9512 : Flapjack.WordAlloc.removeDeadStructural input9512 value4760 value1 value2 = (output9512, value4760, value1))
    (child15025 : Flapjack.WordAlloc.removeDeadStructural input15025 value4760 value1 value2 = (output15025, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15026 value4760 value1 value2 = (output15026, value6896, value1) := by
  rw [input15026_def, output15026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9512]
  try dsimp only
  rw [child15025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9512_skip, output15025_skip]
  kernel_rfl

theorem node15027_cond_eq
    (child9511 : Flapjack.WordAlloc.removeDeadStructural input9511 value4759 value1 value2 = (output9511, value4760, value1))
    (child15026 : Flapjack.WordAlloc.removeDeadStructural input15026 value4760 value1 value2 = (output15026, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15027 value4759 value1 value2 = (output15027, value6896, value1) := by
  rw [input15027_def, output15027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9511]
  try dsimp only
  rw [child15026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9511_skip, output15026_skip]
  kernel_rfl

theorem node15028_cond_eq
    (child9510 : Flapjack.WordAlloc.removeDeadStructural input9510 value5 value1 value2 = (output9510, value4759, value1))
    (child15027 : Flapjack.WordAlloc.removeDeadStructural input15027 value4759 value1 value2 = (output15027, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15028 value5 value1 value2 = (output15028, value6896, value1) := by
  rw [input15028_def, output15028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9510]
  try dsimp only
  rw [child15027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9510_skip, output15027_skip]
  kernel_rfl

theorem node15029_cond_eq
    (child9507 : Flapjack.WordAlloc.removeDeadStructural input9507 value4752 value1 value2 = (output9507, value5, value1))
    (child15028 : Flapjack.WordAlloc.removeDeadStructural input15028 value5 value1 value2 = (output15028, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15029 value4752 value1 value2 = (output15029, value6896, value1) := by
  rw [input15029_def, output15029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9507]
  try dsimp only
  rw [child15028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9507_skip, output15028_skip]
  kernel_rfl

theorem node15030_cond_eq
    (child9496 : Flapjack.WordAlloc.removeDeadStructural input9496 value4752 value1 value2 = (output9496, value4752, value1))
    (child15029 : Flapjack.WordAlloc.removeDeadStructural input15029 value4752 value1 value2 = (output15029, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15030 value4752 value1 value2 = (output15030, value6896, value1) := by
  rw [input15030_def, output15030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9496]
  try dsimp only
  rw [child15029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9496_skip, output15029_skip]
  kernel_rfl

theorem node15031_cond_eq
    (child9495 : Flapjack.WordAlloc.removeDeadStructural input9495 value4751 value1 value2 = (output9495, value4752, value1))
    (child15030 : Flapjack.WordAlloc.removeDeadStructural input15030 value4752 value1 value2 = (output15030, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15031 value4751 value1 value2 = (output15031, value6896, value1) := by
  rw [input15031_def, output15031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9495]
  try dsimp only
  rw [child15030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9495_skip, output15030_skip]
  kernel_rfl

theorem node15032_cond_eq
    (child9494 : Flapjack.WordAlloc.removeDeadStructural input9494 value5 value1 value2 = (output9494, value4751, value1))
    (child15031 : Flapjack.WordAlloc.removeDeadStructural input15031 value4751 value1 value2 = (output15031, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15032 value5 value1 value2 = (output15032, value6896, value1) := by
  rw [input15032_def, output15032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9494]
  try dsimp only
  rw [child15031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9494_skip, output15031_skip]
  kernel_rfl

theorem node15033_cond_eq
    (child9491 : Flapjack.WordAlloc.removeDeadStructural input9491 value4744 value1 value2 = (output9491, value5, value1))
    (child15032 : Flapjack.WordAlloc.removeDeadStructural input15032 value5 value1 value2 = (output15032, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15033 value4744 value1 value2 = (output15033, value6896, value1) := by
  rw [input15033_def, output15033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9491]
  try dsimp only
  rw [child15032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9491_skip, output15032_skip]
  kernel_rfl

theorem node15034_cond_eq
    (child9480 : Flapjack.WordAlloc.removeDeadStructural input9480 value4744 value1 value2 = (output9480, value4744, value1))
    (child15033 : Flapjack.WordAlloc.removeDeadStructural input15033 value4744 value1 value2 = (output15033, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15034 value4744 value1 value2 = (output15034, value6896, value1) := by
  rw [input15034_def, output15034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9480]
  try dsimp only
  rw [child15033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9480_skip, output15033_skip]
  kernel_rfl

theorem node15035_cond_eq
    (child9479 : Flapjack.WordAlloc.removeDeadStructural input9479 value4743 value1 value2 = (output9479, value4744, value1))
    (child15034 : Flapjack.WordAlloc.removeDeadStructural input15034 value4744 value1 value2 = (output15034, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15035 value4743 value1 value2 = (output15035, value6896, value1) := by
  rw [input15035_def, output15035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9479]
  try dsimp only
  rw [child15034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9479_skip, output15034_skip]
  kernel_rfl

theorem node15036_cond_eq
    (child9478 : Flapjack.WordAlloc.removeDeadStructural input9478 value5 value1 value2 = (output9478, value4743, value1))
    (child15035 : Flapjack.WordAlloc.removeDeadStructural input15035 value4743 value1 value2 = (output15035, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15036 value5 value1 value2 = (output15036, value6896, value1) := by
  rw [input15036_def, output15036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9478]
  try dsimp only
  rw [child15035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9478_skip, output15035_skip]
  kernel_rfl

theorem node15037_cond_eq
    (child9475 : Flapjack.WordAlloc.removeDeadStructural input9475 value4736 value1 value2 = (output9475, value5, value1))
    (child15036 : Flapjack.WordAlloc.removeDeadStructural input15036 value5 value1 value2 = (output15036, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15037 value4736 value1 value2 = (output15037, value6896, value1) := by
  rw [input15037_def, output15037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9475]
  try dsimp only
  rw [child15036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9475_skip, output15036_skip]
  kernel_rfl

theorem node15038_cond_eq
    (child9464 : Flapjack.WordAlloc.removeDeadStructural input9464 value4736 value1 value2 = (output9464, value4736, value1))
    (child15037 : Flapjack.WordAlloc.removeDeadStructural input15037 value4736 value1 value2 = (output15037, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15038 value4736 value1 value2 = (output15038, value6896, value1) := by
  rw [input15038_def, output15038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9464]
  try dsimp only
  rw [child15037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9464_skip, output15037_skip]
  kernel_rfl

theorem node15039_cond_eq
    (child9463 : Flapjack.WordAlloc.removeDeadStructural input9463 value4735 value1 value2 = (output9463, value4736, value1))
    (child15038 : Flapjack.WordAlloc.removeDeadStructural input15038 value4736 value1 value2 = (output15038, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15039 value4735 value1 value2 = (output15039, value6896, value1) := by
  rw [input15039_def, output15039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9463]
  try dsimp only
  rw [child15038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9463_skip, output15038_skip]
  kernel_rfl

theorem node15040_cond_eq
    (child9462 : Flapjack.WordAlloc.removeDeadStructural input9462 value5 value1 value2 = (output9462, value4735, value1))
    (child15039 : Flapjack.WordAlloc.removeDeadStructural input15039 value4735 value1 value2 = (output15039, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15040 value5 value1 value2 = (output15040, value6896, value1) := by
  rw [input15040_def, output15040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9462]
  try dsimp only
  rw [child15039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9462_skip, output15039_skip]
  kernel_rfl

theorem node15041_cond_eq
    (child9459 : Flapjack.WordAlloc.removeDeadStructural input9459 value4728 value1 value2 = (output9459, value5, value1))
    (child15040 : Flapjack.WordAlloc.removeDeadStructural input15040 value5 value1 value2 = (output15040, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15041 value4728 value1 value2 = (output15041, value6896, value1) := by
  rw [input15041_def, output15041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9459]
  try dsimp only
  rw [child15040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9459_skip, output15040_skip]
  kernel_rfl

theorem node15042_cond_eq
    (child9448 : Flapjack.WordAlloc.removeDeadStructural input9448 value4728 value1 value2 = (output9448, value4728, value1))
    (child15041 : Flapjack.WordAlloc.removeDeadStructural input15041 value4728 value1 value2 = (output15041, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15042 value4728 value1 value2 = (output15042, value6896, value1) := by
  rw [input15042_def, output15042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9448]
  try dsimp only
  rw [child15041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9448_skip, output15041_skip]
  kernel_rfl

theorem node15043_cond_eq
    (child9447 : Flapjack.WordAlloc.removeDeadStructural input9447 value4727 value1 value2 = (output9447, value4728, value1))
    (child15042 : Flapjack.WordAlloc.removeDeadStructural input15042 value4728 value1 value2 = (output15042, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15043 value4727 value1 value2 = (output15043, value6896, value1) := by
  rw [input15043_def, output15043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9447]
  try dsimp only
  rw [child15042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9447_skip, output15042_skip]
  kernel_rfl

theorem node15044_cond_eq
    (child9446 : Flapjack.WordAlloc.removeDeadStructural input9446 value5 value1 value2 = (output9446, value4727, value1))
    (child15043 : Flapjack.WordAlloc.removeDeadStructural input15043 value4727 value1 value2 = (output15043, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15044 value5 value1 value2 = (output15044, value6896, value1) := by
  rw [input15044_def, output15044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9446]
  try dsimp only
  rw [child15043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9446_skip, output15043_skip]
  kernel_rfl

theorem node15045_cond_eq
    (child9443 : Flapjack.WordAlloc.removeDeadStructural input9443 value4720 value1 value2 = (output9443, value5, value1))
    (child15044 : Flapjack.WordAlloc.removeDeadStructural input15044 value5 value1 value2 = (output15044, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15045 value4720 value1 value2 = (output15045, value6896, value1) := by
  rw [input15045_def, output15045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9443]
  try dsimp only
  rw [child15044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9443_skip, output15044_skip]
  kernel_rfl

theorem node15046_cond_eq
    (child9432 : Flapjack.WordAlloc.removeDeadStructural input9432 value4720 value1 value2 = (output9432, value4720, value1))
    (child15045 : Flapjack.WordAlloc.removeDeadStructural input15045 value4720 value1 value2 = (output15045, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15046 value4720 value1 value2 = (output15046, value6896, value1) := by
  rw [input15046_def, output15046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9432]
  try dsimp only
  rw [child15045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9432_skip, output15045_skip]
  kernel_rfl

theorem node15047_cond_eq
    (child9431 : Flapjack.WordAlloc.removeDeadStructural input9431 value4719 value1 value2 = (output9431, value4720, value1))
    (child15046 : Flapjack.WordAlloc.removeDeadStructural input15046 value4720 value1 value2 = (output15046, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15047 value4719 value1 value2 = (output15047, value6896, value1) := by
  rw [input15047_def, output15047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9431]
  try dsimp only
  rw [child15046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9431_skip, output15046_skip]
  kernel_rfl

theorem node15048_cond_eq
    (child9430 : Flapjack.WordAlloc.removeDeadStructural input9430 value5 value1 value2 = (output9430, value4719, value1))
    (child15047 : Flapjack.WordAlloc.removeDeadStructural input15047 value4719 value1 value2 = (output15047, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15048 value5 value1 value2 = (output15048, value6896, value1) := by
  rw [input15048_def, output15048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9430]
  try dsimp only
  rw [child15047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9430_skip, output15047_skip]
  kernel_rfl

theorem node15049_cond_eq
    (child9427 : Flapjack.WordAlloc.removeDeadStructural input9427 value4712 value1 value2 = (output9427, value5, value1))
    (child15048 : Flapjack.WordAlloc.removeDeadStructural input15048 value5 value1 value2 = (output15048, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15049 value4712 value1 value2 = (output15049, value6896, value1) := by
  rw [input15049_def, output15049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9427]
  try dsimp only
  rw [child15048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9427_skip, output15048_skip]
  kernel_rfl

theorem node15050_cond_eq
    (child9416 : Flapjack.WordAlloc.removeDeadStructural input9416 value4712 value1 value2 = (output9416, value4712, value1))
    (child15049 : Flapjack.WordAlloc.removeDeadStructural input15049 value4712 value1 value2 = (output15049, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15050 value4712 value1 value2 = (output15050, value6896, value1) := by
  rw [input15050_def, output15050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9416]
  try dsimp only
  rw [child15049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9416_skip, output15049_skip]
  kernel_rfl

theorem node15051_cond_eq
    (child9415 : Flapjack.WordAlloc.removeDeadStructural input9415 value4711 value1 value2 = (output9415, value4712, value1))
    (child15050 : Flapjack.WordAlloc.removeDeadStructural input15050 value4712 value1 value2 = (output15050, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15051 value4711 value1 value2 = (output15051, value6896, value1) := by
  rw [input15051_def, output15051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9415]
  try dsimp only
  rw [child15050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9415_skip, output15050_skip]
  kernel_rfl

theorem node15052_cond_eq
    (child9414 : Flapjack.WordAlloc.removeDeadStructural input9414 value5 value1 value2 = (output9414, value4711, value1))
    (child15051 : Flapjack.WordAlloc.removeDeadStructural input15051 value4711 value1 value2 = (output15051, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15052 value5 value1 value2 = (output15052, value6896, value1) := by
  rw [input15052_def, output15052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9414]
  try dsimp only
  rw [child15051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9414_skip, output15051_skip]
  kernel_rfl

theorem node15053_cond_eq
    (child9411 : Flapjack.WordAlloc.removeDeadStructural input9411 value4704 value1 value2 = (output9411, value5, value1))
    (child15052 : Flapjack.WordAlloc.removeDeadStructural input15052 value5 value1 value2 = (output15052, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15053 value4704 value1 value2 = (output15053, value6896, value1) := by
  rw [input15053_def, output15053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9411]
  try dsimp only
  rw [child15052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9411_skip, output15052_skip]
  kernel_rfl

theorem node15054_cond_eq
    (child9400 : Flapjack.WordAlloc.removeDeadStructural input9400 value4704 value1 value2 = (output9400, value4704, value1))
    (child15053 : Flapjack.WordAlloc.removeDeadStructural input15053 value4704 value1 value2 = (output15053, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15054 value4704 value1 value2 = (output15054, value6896, value1) := by
  rw [input15054_def, output15054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9400]
  try dsimp only
  rw [child15053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9400_skip, output15053_skip]
  kernel_rfl

theorem node15055_cond_eq
    (child9399 : Flapjack.WordAlloc.removeDeadStructural input9399 value4703 value1 value2 = (output9399, value4704, value1))
    (child15054 : Flapjack.WordAlloc.removeDeadStructural input15054 value4704 value1 value2 = (output15054, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15055 value4703 value1 value2 = (output15055, value6896, value1) := by
  rw [input15055_def, output15055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9399]
  try dsimp only
  rw [child15054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9399_skip, output15054_skip]
  kernel_rfl

theorem node15056_cond_eq
    (child9398 : Flapjack.WordAlloc.removeDeadStructural input9398 value5 value1 value2 = (output9398, value4703, value1))
    (child15055 : Flapjack.WordAlloc.removeDeadStructural input15055 value4703 value1 value2 = (output15055, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15056 value5 value1 value2 = (output15056, value6896, value1) := by
  rw [input15056_def, output15056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9398]
  try dsimp only
  rw [child15055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9398_skip, output15055_skip]
  kernel_rfl

theorem node15057_cond_eq
    (child9395 : Flapjack.WordAlloc.removeDeadStructural input9395 value4696 value1 value2 = (output9395, value5, value1))
    (child15056 : Flapjack.WordAlloc.removeDeadStructural input15056 value5 value1 value2 = (output15056, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15057 value4696 value1 value2 = (output15057, value6896, value1) := by
  rw [input15057_def, output15057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9395]
  try dsimp only
  rw [child15056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9395_skip, output15056_skip]
  kernel_rfl

theorem node15058_cond_eq
    (child9384 : Flapjack.WordAlloc.removeDeadStructural input9384 value4696 value1 value2 = (output9384, value4696, value1))
    (child15057 : Flapjack.WordAlloc.removeDeadStructural input15057 value4696 value1 value2 = (output15057, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15058 value4696 value1 value2 = (output15058, value6896, value1) := by
  rw [input15058_def, output15058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9384]
  try dsimp only
  rw [child15057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9384_skip, output15057_skip]
  kernel_rfl

theorem node15059_cond_eq
    (child9383 : Flapjack.WordAlloc.removeDeadStructural input9383 value4695 value1 value2 = (output9383, value4696, value1))
    (child15058 : Flapjack.WordAlloc.removeDeadStructural input15058 value4696 value1 value2 = (output15058, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15059 value4695 value1 value2 = (output15059, value6896, value1) := by
  rw [input15059_def, output15059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9383]
  try dsimp only
  rw [child15058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9383_skip, output15058_skip]
  kernel_rfl

theorem node15060_cond_eq
    (child9382 : Flapjack.WordAlloc.removeDeadStructural input9382 value5 value1 value2 = (output9382, value4695, value1))
    (child15059 : Flapjack.WordAlloc.removeDeadStructural input15059 value4695 value1 value2 = (output15059, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15060 value5 value1 value2 = (output15060, value6896, value1) := by
  rw [input15060_def, output15060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9382]
  try dsimp only
  rw [child15059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9382_skip, output15059_skip]
  kernel_rfl

theorem node15061_cond_eq
    (child9379 : Flapjack.WordAlloc.removeDeadStructural input9379 value4688 value1 value2 = (output9379, value5, value1))
    (child15060 : Flapjack.WordAlloc.removeDeadStructural input15060 value5 value1 value2 = (output15060, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15061 value4688 value1 value2 = (output15061, value6896, value1) := by
  rw [input15061_def, output15061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9379]
  try dsimp only
  rw [child15060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9379_skip, output15060_skip]
  kernel_rfl

theorem node15062_cond_eq
    (child9368 : Flapjack.WordAlloc.removeDeadStructural input9368 value4688 value1 value2 = (output9368, value4688, value1))
    (child15061 : Flapjack.WordAlloc.removeDeadStructural input15061 value4688 value1 value2 = (output15061, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15062 value4688 value1 value2 = (output15062, value6896, value1) := by
  rw [input15062_def, output15062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9368]
  try dsimp only
  rw [child15061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9368_skip, output15061_skip]
  kernel_rfl

theorem node15063_cond_eq
    (child9367 : Flapjack.WordAlloc.removeDeadStructural input9367 value4687 value1 value2 = (output9367, value4688, value1))
    (child15062 : Flapjack.WordAlloc.removeDeadStructural input15062 value4688 value1 value2 = (output15062, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15063 value4687 value1 value2 = (output15063, value6896, value1) := by
  rw [input15063_def, output15063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9367]
  try dsimp only
  rw [child15062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9367_skip, output15062_skip]
  kernel_rfl

theorem node15064_cond_eq
    (child9366 : Flapjack.WordAlloc.removeDeadStructural input9366 value5 value1 value2 = (output9366, value4687, value1))
    (child15063 : Flapjack.WordAlloc.removeDeadStructural input15063 value4687 value1 value2 = (output15063, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15064 value5 value1 value2 = (output15064, value6896, value1) := by
  rw [input15064_def, output15064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9366]
  try dsimp only
  rw [child15063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9366_skip, output15063_skip]
  kernel_rfl

theorem node15065_cond_eq
    (child9363 : Flapjack.WordAlloc.removeDeadStructural input9363 value4680 value1 value2 = (output9363, value5, value1))
    (child15064 : Flapjack.WordAlloc.removeDeadStructural input15064 value5 value1 value2 = (output15064, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15065 value4680 value1 value2 = (output15065, value6896, value1) := by
  rw [input15065_def, output15065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9363]
  try dsimp only
  rw [child15064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9363_skip, output15064_skip]
  kernel_rfl

theorem node15066_cond_eq
    (child9352 : Flapjack.WordAlloc.removeDeadStructural input9352 value4680 value1 value2 = (output9352, value4680, value1))
    (child15065 : Flapjack.WordAlloc.removeDeadStructural input15065 value4680 value1 value2 = (output15065, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15066 value4680 value1 value2 = (output15066, value6896, value1) := by
  rw [input15066_def, output15066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9352]
  try dsimp only
  rw [child15065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9352_skip, output15065_skip]
  kernel_rfl

theorem node15067_cond_eq
    (child9351 : Flapjack.WordAlloc.removeDeadStructural input9351 value4679 value1 value2 = (output9351, value4680, value1))
    (child15066 : Flapjack.WordAlloc.removeDeadStructural input15066 value4680 value1 value2 = (output15066, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15067 value4679 value1 value2 = (output15067, value6896, value1) := by
  rw [input15067_def, output15067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9351]
  try dsimp only
  rw [child15066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9351_skip, output15066_skip]
  kernel_rfl

theorem node15068_cond_eq
    (child9350 : Flapjack.WordAlloc.removeDeadStructural input9350 value5 value1 value2 = (output9350, value4679, value1))
    (child15067 : Flapjack.WordAlloc.removeDeadStructural input15067 value4679 value1 value2 = (output15067, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15068 value5 value1 value2 = (output15068, value6896, value1) := by
  rw [input15068_def, output15068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9350]
  try dsimp only
  rw [child15067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9350_skip, output15067_skip]
  kernel_rfl

theorem node15069_cond_eq
    (child9347 : Flapjack.WordAlloc.removeDeadStructural input9347 value4672 value1 value2 = (output9347, value5, value1))
    (child15068 : Flapjack.WordAlloc.removeDeadStructural input15068 value5 value1 value2 = (output15068, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15069 value4672 value1 value2 = (output15069, value6896, value1) := by
  rw [input15069_def, output15069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9347]
  try dsimp only
  rw [child15068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9347_skip, output15068_skip]
  kernel_rfl

theorem node15070_cond_eq
    (child9336 : Flapjack.WordAlloc.removeDeadStructural input9336 value4672 value1 value2 = (output9336, value4672, value1))
    (child15069 : Flapjack.WordAlloc.removeDeadStructural input15069 value4672 value1 value2 = (output15069, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15070 value4672 value1 value2 = (output15070, value6896, value1) := by
  rw [input15070_def, output15070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9336]
  try dsimp only
  rw [child15069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9336_skip, output15069_skip]
  kernel_rfl

theorem node15071_cond_eq
    (child9335 : Flapjack.WordAlloc.removeDeadStructural input9335 value4671 value1 value2 = (output9335, value4672, value1))
    (child15070 : Flapjack.WordAlloc.removeDeadStructural input15070 value4672 value1 value2 = (output15070, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15071 value4671 value1 value2 = (output15071, value6896, value1) := by
  rw [input15071_def, output15071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9335]
  try dsimp only
  rw [child15070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9335_skip, output15070_skip]
  kernel_rfl

theorem node15072_cond_eq
    (child9334 : Flapjack.WordAlloc.removeDeadStructural input9334 value5 value1 value2 = (output9334, value4671, value1))
    (child15071 : Flapjack.WordAlloc.removeDeadStructural input15071 value4671 value1 value2 = (output15071, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15072 value5 value1 value2 = (output15072, value6896, value1) := by
  rw [input15072_def, output15072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9334]
  try dsimp only
  rw [child15071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9334_skip, output15071_skip]
  kernel_rfl

theorem node15073_cond_eq
    (child9331 : Flapjack.WordAlloc.removeDeadStructural input9331 value4664 value1 value2 = (output9331, value5, value1))
    (child15072 : Flapjack.WordAlloc.removeDeadStructural input15072 value5 value1 value2 = (output15072, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15073 value4664 value1 value2 = (output15073, value6896, value1) := by
  rw [input15073_def, output15073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9331]
  try dsimp only
  rw [child15072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9331_skip, output15072_skip]
  kernel_rfl

theorem node15074_cond_eq
    (child9320 : Flapjack.WordAlloc.removeDeadStructural input9320 value4664 value1 value2 = (output9320, value4664, value1))
    (child15073 : Flapjack.WordAlloc.removeDeadStructural input15073 value4664 value1 value2 = (output15073, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15074 value4664 value1 value2 = (output15074, value6896, value1) := by
  rw [input15074_def, output15074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9320]
  try dsimp only
  rw [child15073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9320_skip, output15073_skip]
  kernel_rfl

theorem node15075_cond_eq
    (child9319 : Flapjack.WordAlloc.removeDeadStructural input9319 value4663 value1 value2 = (output9319, value4664, value1))
    (child15074 : Flapjack.WordAlloc.removeDeadStructural input15074 value4664 value1 value2 = (output15074, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15075 value4663 value1 value2 = (output15075, value6896, value1) := by
  rw [input15075_def, output15075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9319]
  try dsimp only
  rw [child15074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9319_skip, output15074_skip]
  kernel_rfl

theorem node15076_cond_eq
    (child9318 : Flapjack.WordAlloc.removeDeadStructural input9318 value5 value1 value2 = (output9318, value4663, value1))
    (child15075 : Flapjack.WordAlloc.removeDeadStructural input15075 value4663 value1 value2 = (output15075, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15076 value5 value1 value2 = (output15076, value6896, value1) := by
  rw [input15076_def, output15076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9318]
  try dsimp only
  rw [child15075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9318_skip, output15075_skip]
  kernel_rfl

theorem node15077_cond_eq
    (child9315 : Flapjack.WordAlloc.removeDeadStructural input9315 value4656 value1 value2 = (output9315, value5, value1))
    (child15076 : Flapjack.WordAlloc.removeDeadStructural input15076 value5 value1 value2 = (output15076, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15077 value4656 value1 value2 = (output15077, value6896, value1) := by
  rw [input15077_def, output15077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9315]
  try dsimp only
  rw [child15076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9315_skip, output15076_skip]
  kernel_rfl

theorem node15078_cond_eq
    (child9304 : Flapjack.WordAlloc.removeDeadStructural input9304 value4656 value1 value2 = (output9304, value4656, value1))
    (child15077 : Flapjack.WordAlloc.removeDeadStructural input15077 value4656 value1 value2 = (output15077, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15078 value4656 value1 value2 = (output15078, value6896, value1) := by
  rw [input15078_def, output15078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9304]
  try dsimp only
  rw [child15077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9304_skip, output15077_skip]
  kernel_rfl

theorem node15079_cond_eq
    (child9303 : Flapjack.WordAlloc.removeDeadStructural input9303 value4655 value1 value2 = (output9303, value4656, value1))
    (child15078 : Flapjack.WordAlloc.removeDeadStructural input15078 value4656 value1 value2 = (output15078, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15079 value4655 value1 value2 = (output15079, value6896, value1) := by
  rw [input15079_def, output15079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9303]
  try dsimp only
  rw [child15078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9303_skip, output15078_skip]
  kernel_rfl

theorem node15080_cond_eq
    (child9302 : Flapjack.WordAlloc.removeDeadStructural input9302 value5 value1 value2 = (output9302, value4655, value1))
    (child15079 : Flapjack.WordAlloc.removeDeadStructural input15079 value4655 value1 value2 = (output15079, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15080 value5 value1 value2 = (output15080, value6896, value1) := by
  rw [input15080_def, output15080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9302]
  try dsimp only
  rw [child15079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9302_skip, output15079_skip]
  kernel_rfl

theorem node15081_cond_eq
    (child9299 : Flapjack.WordAlloc.removeDeadStructural input9299 value4648 value1 value2 = (output9299, value5, value1))
    (child15080 : Flapjack.WordAlloc.removeDeadStructural input15080 value5 value1 value2 = (output15080, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15081 value4648 value1 value2 = (output15081, value6896, value1) := by
  rw [input15081_def, output15081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9299]
  try dsimp only
  rw [child15080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9299_skip, output15080_skip]
  kernel_rfl

theorem node15082_cond_eq
    (child9288 : Flapjack.WordAlloc.removeDeadStructural input9288 value4648 value1 value2 = (output9288, value4648, value1))
    (child15081 : Flapjack.WordAlloc.removeDeadStructural input15081 value4648 value1 value2 = (output15081, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15082 value4648 value1 value2 = (output15082, value6896, value1) := by
  rw [input15082_def, output15082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9288]
  try dsimp only
  rw [child15081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9288_skip, output15081_skip]
  kernel_rfl

theorem node15083_cond_eq
    (child9287 : Flapjack.WordAlloc.removeDeadStructural input9287 value4647 value1 value2 = (output9287, value4648, value1))
    (child15082 : Flapjack.WordAlloc.removeDeadStructural input15082 value4648 value1 value2 = (output15082, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15083 value4647 value1 value2 = (output15083, value6896, value1) := by
  rw [input15083_def, output15083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9287]
  try dsimp only
  rw [child15082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9287_skip, output15082_skip]
  kernel_rfl

theorem node15084_cond_eq
    (child9286 : Flapjack.WordAlloc.removeDeadStructural input9286 value5 value1 value2 = (output9286, value4647, value1))
    (child15083 : Flapjack.WordAlloc.removeDeadStructural input15083 value4647 value1 value2 = (output15083, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15084 value5 value1 value2 = (output15084, value6896, value1) := by
  rw [input15084_def, output15084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9286]
  try dsimp only
  rw [child15083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9286_skip, output15083_skip]
  kernel_rfl

theorem node15085_cond_eq
    (child9283 : Flapjack.WordAlloc.removeDeadStructural input9283 value4640 value1 value2 = (output9283, value5, value1))
    (child15084 : Flapjack.WordAlloc.removeDeadStructural input15084 value5 value1 value2 = (output15084, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15085 value4640 value1 value2 = (output15085, value6896, value1) := by
  rw [input15085_def, output15085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9283]
  try dsimp only
  rw [child15084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9283_skip, output15084_skip]
  kernel_rfl

theorem node15086_cond_eq
    (child9272 : Flapjack.WordAlloc.removeDeadStructural input9272 value4640 value1 value2 = (output9272, value4640, value1))
    (child15085 : Flapjack.WordAlloc.removeDeadStructural input15085 value4640 value1 value2 = (output15085, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15086 value4640 value1 value2 = (output15086, value6896, value1) := by
  rw [input15086_def, output15086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9272]
  try dsimp only
  rw [child15085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9272_skip, output15085_skip]
  kernel_rfl

theorem node15087_cond_eq
    (child9271 : Flapjack.WordAlloc.removeDeadStructural input9271 value4639 value1 value2 = (output9271, value4640, value1))
    (child15086 : Flapjack.WordAlloc.removeDeadStructural input15086 value4640 value1 value2 = (output15086, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15087 value4639 value1 value2 = (output15087, value6896, value1) := by
  rw [input15087_def, output15087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9271]
  try dsimp only
  rw [child15086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9271_skip, output15086_skip]
  kernel_rfl

theorem node15088_cond_eq
    (child9270 : Flapjack.WordAlloc.removeDeadStructural input9270 value5 value1 value2 = (output9270, value4639, value1))
    (child15087 : Flapjack.WordAlloc.removeDeadStructural input15087 value4639 value1 value2 = (output15087, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15088 value5 value1 value2 = (output15088, value6896, value1) := by
  rw [input15088_def, output15088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9270]
  try dsimp only
  rw [child15087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9270_skip, output15087_skip]
  kernel_rfl

theorem node15089_cond_eq
    (child9267 : Flapjack.WordAlloc.removeDeadStructural input9267 value4632 value1 value2 = (output9267, value5, value1))
    (child15088 : Flapjack.WordAlloc.removeDeadStructural input15088 value5 value1 value2 = (output15088, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15089 value4632 value1 value2 = (output15089, value6896, value1) := by
  rw [input15089_def, output15089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9267]
  try dsimp only
  rw [child15088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9267_skip, output15088_skip]
  kernel_rfl

theorem node15090_cond_eq
    (child9256 : Flapjack.WordAlloc.removeDeadStructural input9256 value4632 value1 value2 = (output9256, value4632, value1))
    (child15089 : Flapjack.WordAlloc.removeDeadStructural input15089 value4632 value1 value2 = (output15089, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15090 value4632 value1 value2 = (output15090, value6896, value1) := by
  rw [input15090_def, output15090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9256]
  try dsimp only
  rw [child15089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9256_skip, output15089_skip]
  kernel_rfl

theorem node15091_cond_eq
    (child9255 : Flapjack.WordAlloc.removeDeadStructural input9255 value4631 value1 value2 = (output9255, value4632, value1))
    (child15090 : Flapjack.WordAlloc.removeDeadStructural input15090 value4632 value1 value2 = (output15090, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15091 value4631 value1 value2 = (output15091, value6896, value1) := by
  rw [input15091_def, output15091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9255]
  try dsimp only
  rw [child15090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9255_skip, output15090_skip]
  kernel_rfl

theorem node15092_cond_eq
    (child9254 : Flapjack.WordAlloc.removeDeadStructural input9254 value5 value1 value2 = (output9254, value4631, value1))
    (child15091 : Flapjack.WordAlloc.removeDeadStructural input15091 value4631 value1 value2 = (output15091, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15092 value5 value1 value2 = (output15092, value6896, value1) := by
  rw [input15092_def, output15092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9254]
  try dsimp only
  rw [child15091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9254_skip, output15091_skip]
  kernel_rfl

theorem node15093_cond_eq
    (child9251 : Flapjack.WordAlloc.removeDeadStructural input9251 value4624 value1 value2 = (output9251, value5, value1))
    (child15092 : Flapjack.WordAlloc.removeDeadStructural input15092 value5 value1 value2 = (output15092, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15093 value4624 value1 value2 = (output15093, value6896, value1) := by
  rw [input15093_def, output15093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9251]
  try dsimp only
  rw [child15092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9251_skip, output15092_skip]
  kernel_rfl

theorem node15094_cond_eq
    (child9240 : Flapjack.WordAlloc.removeDeadStructural input9240 value4624 value1 value2 = (output9240, value4624, value1))
    (child15093 : Flapjack.WordAlloc.removeDeadStructural input15093 value4624 value1 value2 = (output15093, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15094 value4624 value1 value2 = (output15094, value6896, value1) := by
  rw [input15094_def, output15094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9240]
  try dsimp only
  rw [child15093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9240_skip, output15093_skip]
  kernel_rfl

theorem node15095_cond_eq
    (child9239 : Flapjack.WordAlloc.removeDeadStructural input9239 value4623 value1 value2 = (output9239, value4624, value1))
    (child15094 : Flapjack.WordAlloc.removeDeadStructural input15094 value4624 value1 value2 = (output15094, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15095 value4623 value1 value2 = (output15095, value6896, value1) := by
  rw [input15095_def, output15095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9239]
  try dsimp only
  rw [child15094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9239_skip, output15094_skip]
  kernel_rfl

theorem node15096_cond_eq
    (child9238 : Flapjack.WordAlloc.removeDeadStructural input9238 value5 value1 value2 = (output9238, value4623, value1))
    (child15095 : Flapjack.WordAlloc.removeDeadStructural input15095 value4623 value1 value2 = (output15095, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15096 value5 value1 value2 = (output15096, value6896, value1) := by
  rw [input15096_def, output15096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9238]
  try dsimp only
  rw [child15095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9238_skip, output15095_skip]
  kernel_rfl

theorem node15097_cond_eq
    (child9235 : Flapjack.WordAlloc.removeDeadStructural input9235 value4616 value1 value2 = (output9235, value5, value1))
    (child15096 : Flapjack.WordAlloc.removeDeadStructural input15096 value5 value1 value2 = (output15096, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15097 value4616 value1 value2 = (output15097, value6896, value1) := by
  rw [input15097_def, output15097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9235]
  try dsimp only
  rw [child15096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9235_skip, output15096_skip]
  kernel_rfl

theorem node15098_cond_eq
    (child9224 : Flapjack.WordAlloc.removeDeadStructural input9224 value4616 value1 value2 = (output9224, value4616, value1))
    (child15097 : Flapjack.WordAlloc.removeDeadStructural input15097 value4616 value1 value2 = (output15097, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15098 value4616 value1 value2 = (output15098, value6896, value1) := by
  rw [input15098_def, output15098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9224]
  try dsimp only
  rw [child15097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9224_skip, output15097_skip]
  kernel_rfl

theorem node15099_cond_eq
    (child9223 : Flapjack.WordAlloc.removeDeadStructural input9223 value4615 value1 value2 = (output9223, value4616, value1))
    (child15098 : Flapjack.WordAlloc.removeDeadStructural input15098 value4616 value1 value2 = (output15098, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15099 value4615 value1 value2 = (output15099, value6896, value1) := by
  rw [input15099_def, output15099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9223]
  try dsimp only
  rw [child15098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9223_skip, output15098_skip]
  kernel_rfl

theorem node15100_cond_eq
    (child9222 : Flapjack.WordAlloc.removeDeadStructural input9222 value5 value1 value2 = (output9222, value4615, value1))
    (child15099 : Flapjack.WordAlloc.removeDeadStructural input15099 value4615 value1 value2 = (output15099, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15100 value5 value1 value2 = (output15100, value6896, value1) := by
  rw [input15100_def, output15100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9222]
  try dsimp only
  rw [child15099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9222_skip, output15099_skip]
  kernel_rfl

theorem node15101_cond_eq
    (child9219 : Flapjack.WordAlloc.removeDeadStructural input9219 value4608 value1 value2 = (output9219, value5, value1))
    (child15100 : Flapjack.WordAlloc.removeDeadStructural input15100 value5 value1 value2 = (output15100, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15101 value4608 value1 value2 = (output15101, value6896, value1) := by
  rw [input15101_def, output15101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9219]
  try dsimp only
  rw [child15100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9219_skip, output15100_skip]
  kernel_rfl

theorem node15102_cond_eq
    (child9208 : Flapjack.WordAlloc.removeDeadStructural input9208 value4608 value1 value2 = (output9208, value4608, value1))
    (child15101 : Flapjack.WordAlloc.removeDeadStructural input15101 value4608 value1 value2 = (output15101, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15102 value4608 value1 value2 = (output15102, value6896, value1) := by
  rw [input15102_def, output15102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9208]
  try dsimp only
  rw [child15101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9208_skip, output15101_skip]
  kernel_rfl

theorem node15103_cond_eq
    (child9207 : Flapjack.WordAlloc.removeDeadStructural input9207 value4607 value1 value2 = (output9207, value4608, value1))
    (child15102 : Flapjack.WordAlloc.removeDeadStructural input15102 value4608 value1 value2 = (output15102, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15103 value4607 value1 value2 = (output15103, value6896, value1) := by
  rw [input15103_def, output15103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9207]
  try dsimp only
  rw [child15102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9207_skip, output15102_skip]
  kernel_rfl

#print axioms node15103_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
