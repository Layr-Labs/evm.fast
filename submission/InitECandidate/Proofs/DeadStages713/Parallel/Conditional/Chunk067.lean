import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk067
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node17152_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value5 value1 value2 = (output1014, value511, value1))
    (child17151 : Flapjack.WordAlloc.removeDeadStructural input17151 value511 value1 value2 = (output17151, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17152 value5 value1 value2 = (output17152, value6896, value1) := by
  rw [input17152_def, output17152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child17151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output17151_skip]
  kernel_rfl

theorem node17153_cond_eq
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value504 value1 value2 = (output1011, value5, value1))
    (child17152 : Flapjack.WordAlloc.removeDeadStructural input17152 value5 value1 value2 = (output17152, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17153 value504 value1 value2 = (output17153, value6896, value1) := by
  rw [input17153_def, output17153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1011]
  try dsimp only
  rw [child17152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1011_skip, output17152_skip]
  kernel_rfl

theorem node17154_cond_eq
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value504 value1 value2 = (output1000, value504, value1))
    (child17153 : Flapjack.WordAlloc.removeDeadStructural input17153 value504 value1 value2 = (output17153, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17154 value504 value1 value2 = (output17154, value6896, value1) := by
  rw [input17154_def, output17154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1000]
  try dsimp only
  rw [child17153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1000_skip, output17153_skip]
  kernel_rfl

theorem node17155_cond_eq
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value503 value1 value2 = (output999, value504, value1))
    (child17154 : Flapjack.WordAlloc.removeDeadStructural input17154 value504 value1 value2 = (output17154, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17155 value503 value1 value2 = (output17155, value6896, value1) := by
  rw [input17155_def, output17155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child999]
  try dsimp only
  rw [child17154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output999_skip, output17154_skip]
  kernel_rfl

theorem node17156_cond_eq
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value5 value1 value2 = (output998, value503, value1))
    (child17155 : Flapjack.WordAlloc.removeDeadStructural input17155 value503 value1 value2 = (output17155, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17156 value5 value1 value2 = (output17156, value6896, value1) := by
  rw [input17156_def, output17156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child998]
  try dsimp only
  rw [child17155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output998_skip, output17155_skip]
  kernel_rfl

theorem node17157_cond_eq
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value496 value1 value2 = (output995, value5, value1))
    (child17156 : Flapjack.WordAlloc.removeDeadStructural input17156 value5 value1 value2 = (output17156, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17157 value496 value1 value2 = (output17157, value6896, value1) := by
  rw [input17157_def, output17157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child995]
  try dsimp only
  rw [child17156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output995_skip, output17156_skip]
  kernel_rfl

theorem node17158_cond_eq
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value496 value1 value2 = (output984, value496, value1))
    (child17157 : Flapjack.WordAlloc.removeDeadStructural input17157 value496 value1 value2 = (output17157, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17158 value496 value1 value2 = (output17158, value6896, value1) := by
  rw [input17158_def, output17158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child984]
  try dsimp only
  rw [child17157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output984_skip, output17157_skip]
  kernel_rfl

theorem node17159_cond_eq
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value495 value1 value2 = (output983, value496, value1))
    (child17158 : Flapjack.WordAlloc.removeDeadStructural input17158 value496 value1 value2 = (output17158, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17159 value495 value1 value2 = (output17159, value6896, value1) := by
  rw [input17159_def, output17159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child983]
  try dsimp only
  rw [child17158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output983_skip, output17158_skip]
  kernel_rfl

theorem node17160_cond_eq
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value5 value1 value2 = (output982, value495, value1))
    (child17159 : Flapjack.WordAlloc.removeDeadStructural input17159 value495 value1 value2 = (output17159, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17160 value5 value1 value2 = (output17160, value6896, value1) := by
  rw [input17160_def, output17160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child982]
  try dsimp only
  rw [child17159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output982_skip, output17159_skip]
  kernel_rfl

theorem node17161_cond_eq
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value488 value1 value2 = (output979, value5, value1))
    (child17160 : Flapjack.WordAlloc.removeDeadStructural input17160 value5 value1 value2 = (output17160, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17161 value488 value1 value2 = (output17161, value6896, value1) := by
  rw [input17161_def, output17161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child979]
  try dsimp only
  rw [child17160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output979_skip, output17160_skip]
  kernel_rfl

theorem node17162_cond_eq
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value488 value1 value2 = (output968, value488, value1))
    (child17161 : Flapjack.WordAlloc.removeDeadStructural input17161 value488 value1 value2 = (output17161, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17162 value488 value1 value2 = (output17162, value6896, value1) := by
  rw [input17162_def, output17162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child968]
  try dsimp only
  rw [child17161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output968_skip, output17161_skip]
  kernel_rfl

theorem node17163_cond_eq
    (child967 : Flapjack.WordAlloc.removeDeadStructural input967 value487 value1 value2 = (output967, value488, value1))
    (child17162 : Flapjack.WordAlloc.removeDeadStructural input17162 value488 value1 value2 = (output17162, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17163 value487 value1 value2 = (output17163, value6896, value1) := by
  rw [input17163_def, output17163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child967]
  try dsimp only
  rw [child17162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output967_skip, output17162_skip]
  kernel_rfl

theorem node17164_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value5 value1 value2 = (output966, value487, value1))
    (child17163 : Flapjack.WordAlloc.removeDeadStructural input17163 value487 value1 value2 = (output17163, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17164 value5 value1 value2 = (output17164, value6896, value1) := by
  rw [input17164_def, output17164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child966]
  try dsimp only
  rw [child17163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output966_skip, output17163_skip]
  kernel_rfl

theorem node17165_cond_eq
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value480 value1 value2 = (output963, value5, value1))
    (child17164 : Flapjack.WordAlloc.removeDeadStructural input17164 value5 value1 value2 = (output17164, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17165 value480 value1 value2 = (output17165, value6896, value1) := by
  rw [input17165_def, output17165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child963]
  try dsimp only
  rw [child17164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output963_skip, output17164_skip]
  kernel_rfl

theorem node17166_cond_eq
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value480 value1 value2 = (output952, value480, value1))
    (child17165 : Flapjack.WordAlloc.removeDeadStructural input17165 value480 value1 value2 = (output17165, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17166 value480 value1 value2 = (output17166, value6896, value1) := by
  rw [input17166_def, output17166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child952]
  try dsimp only
  rw [child17165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output952_skip, output17165_skip]
  kernel_rfl

theorem node17167_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value479 value1 value2 = (output951, value480, value1))
    (child17166 : Flapjack.WordAlloc.removeDeadStructural input17166 value480 value1 value2 = (output17166, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17167 value479 value1 value2 = (output17167, value6896, value1) := by
  rw [input17167_def, output17167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  try dsimp only
  rw [child17166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output951_skip, output17166_skip]
  kernel_rfl

theorem node17168_cond_eq
    (child950 : Flapjack.WordAlloc.removeDeadStructural input950 value5 value1 value2 = (output950, value479, value1))
    (child17167 : Flapjack.WordAlloc.removeDeadStructural input17167 value479 value1 value2 = (output17167, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17168 value5 value1 value2 = (output17168, value6896, value1) := by
  rw [input17168_def, output17168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child950]
  try dsimp only
  rw [child17167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output950_skip, output17167_skip]
  kernel_rfl

theorem node17169_cond_eq
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value472 value1 value2 = (output947, value5, value1))
    (child17168 : Flapjack.WordAlloc.removeDeadStructural input17168 value5 value1 value2 = (output17168, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17169 value472 value1 value2 = (output17169, value6896, value1) := by
  rw [input17169_def, output17169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child947]
  try dsimp only
  rw [child17168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output947_skip, output17168_skip]
  kernel_rfl

theorem node17170_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value472 value1 value2 = (output936, value472, value1))
    (child17169 : Flapjack.WordAlloc.removeDeadStructural input17169 value472 value1 value2 = (output17169, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17170 value472 value1 value2 = (output17170, value6896, value1) := by
  rw [input17170_def, output17170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child17169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output17169_skip]
  kernel_rfl

theorem node17171_cond_eq
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value471 value1 value2 = (output935, value472, value1))
    (child17170 : Flapjack.WordAlloc.removeDeadStructural input17170 value472 value1 value2 = (output17170, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17171 value471 value1 value2 = (output17171, value6896, value1) := by
  rw [input17171_def, output17171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child935]
  try dsimp only
  rw [child17170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output935_skip, output17170_skip]
  kernel_rfl

theorem node17172_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value5 value1 value2 = (output934, value471, value1))
    (child17171 : Flapjack.WordAlloc.removeDeadStructural input17171 value471 value1 value2 = (output17171, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17172 value5 value1 value2 = (output17172, value6896, value1) := by
  rw [input17172_def, output17172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child17171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output17171_skip]
  kernel_rfl

theorem node17173_cond_eq
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value464 value1 value2 = (output931, value5, value1))
    (child17172 : Flapjack.WordAlloc.removeDeadStructural input17172 value5 value1 value2 = (output17172, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17173 value464 value1 value2 = (output17173, value6896, value1) := by
  rw [input17173_def, output17173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child931]
  try dsimp only
  rw [child17172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output931_skip, output17172_skip]
  kernel_rfl

theorem node17174_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value464 value1 value2 = (output920, value464, value1))
    (child17173 : Flapjack.WordAlloc.removeDeadStructural input17173 value464 value1 value2 = (output17173, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17174 value464 value1 value2 = (output17174, value6896, value1) := by
  rw [input17174_def, output17174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  try dsimp only
  rw [child17173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output920_skip, output17173_skip]
  kernel_rfl

theorem node17175_cond_eq
    (child919 : Flapjack.WordAlloc.removeDeadStructural input919 value463 value1 value2 = (output919, value464, value1))
    (child17174 : Flapjack.WordAlloc.removeDeadStructural input17174 value464 value1 value2 = (output17174, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17175 value463 value1 value2 = (output17175, value6896, value1) := by
  rw [input17175_def, output17175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child919]
  try dsimp only
  rw [child17174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output919_skip, output17174_skip]
  kernel_rfl

theorem node17176_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value5 value1 value2 = (output918, value463, value1))
    (child17175 : Flapjack.WordAlloc.removeDeadStructural input17175 value463 value1 value2 = (output17175, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17176 value5 value1 value2 = (output17176, value6896, value1) := by
  rw [input17176_def, output17176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child17175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output17175_skip]
  kernel_rfl

theorem node17177_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value456 value1 value2 = (output915, value5, value1))
    (child17176 : Flapjack.WordAlloc.removeDeadStructural input17176 value5 value1 value2 = (output17176, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17177 value456 value1 value2 = (output17177, value6896, value1) := by
  rw [input17177_def, output17177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  try dsimp only
  rw [child17176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output915_skip, output17176_skip]
  kernel_rfl

theorem node17178_cond_eq
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value456 value1 value2 = (output904, value456, value1))
    (child17177 : Flapjack.WordAlloc.removeDeadStructural input17177 value456 value1 value2 = (output17177, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17178 value456 value1 value2 = (output17178, value6896, value1) := by
  rw [input17178_def, output17178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child904]
  try dsimp only
  rw [child17177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output904_skip, output17177_skip]
  kernel_rfl

theorem node17179_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value455 value1 value2 = (output903, value456, value1))
    (child17178 : Flapjack.WordAlloc.removeDeadStructural input17178 value456 value1 value2 = (output17178, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17179 value455 value1 value2 = (output17179, value6896, value1) := by
  rw [input17179_def, output17179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child17178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output17178_skip]
  kernel_rfl

theorem node17180_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value5 value1 value2 = (output902, value455, value1))
    (child17179 : Flapjack.WordAlloc.removeDeadStructural input17179 value455 value1 value2 = (output17179, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17180 value5 value1 value2 = (output17180, value6896, value1) := by
  rw [input17180_def, output17180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  try dsimp only
  rw [child17179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output902_skip, output17179_skip]
  kernel_rfl

theorem node17181_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value448 value1 value2 = (output899, value5, value1))
    (child17180 : Flapjack.WordAlloc.removeDeadStructural input17180 value5 value1 value2 = (output17180, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17181 value448 value1 value2 = (output17181, value6896, value1) := by
  rw [input17181_def, output17181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child17180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output17180_skip]
  kernel_rfl

theorem node17182_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value448 value1 value2 = (output888, value448, value1))
    (child17181 : Flapjack.WordAlloc.removeDeadStructural input17181 value448 value1 value2 = (output17181, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17182 value448 value1 value2 = (output17182, value6896, value1) := by
  rw [input17182_def, output17182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child17181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output17181_skip]
  kernel_rfl

theorem node17183_cond_eq
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value447 value1 value2 = (output887, value448, value1))
    (child17182 : Flapjack.WordAlloc.removeDeadStructural input17182 value448 value1 value2 = (output17182, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17183 value447 value1 value2 = (output17183, value6896, value1) := by
  rw [input17183_def, output17183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child887]
  try dsimp only
  rw [child17182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output887_skip, output17182_skip]
  kernel_rfl

theorem node17184_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value5 value1 value2 = (output886, value447, value1))
    (child17183 : Flapjack.WordAlloc.removeDeadStructural input17183 value447 value1 value2 = (output17183, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17184 value5 value1 value2 = (output17184, value6896, value1) := by
  rw [input17184_def, output17184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  try dsimp only
  rw [child17183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output886_skip, output17183_skip]
  kernel_rfl

theorem node17185_cond_eq
    (child883 : Flapjack.WordAlloc.removeDeadStructural input883 value440 value1 value2 = (output883, value5, value1))
    (child17184 : Flapjack.WordAlloc.removeDeadStructural input17184 value5 value1 value2 = (output17184, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17185 value440 value1 value2 = (output17185, value6896, value1) := by
  rw [input17185_def, output17185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child883]
  try dsimp only
  rw [child17184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output883_skip, output17184_skip]
  kernel_rfl

theorem node17186_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value440 value1 value2 = (output872, value440, value1))
    (child17185 : Flapjack.WordAlloc.removeDeadStructural input17185 value440 value1 value2 = (output17185, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17186 value440 value1 value2 = (output17186, value6896, value1) := by
  rw [input17186_def, output17186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  try dsimp only
  rw [child17185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output872_skip, output17185_skip]
  kernel_rfl

theorem node17187_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value439 value1 value2 = (output871, value440, value1))
    (child17186 : Flapjack.WordAlloc.removeDeadStructural input17186 value440 value1 value2 = (output17186, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17187 value439 value1 value2 = (output17187, value6896, value1) := by
  rw [input17187_def, output17187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child17186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output17186_skip]
  kernel_rfl

theorem node17188_cond_eq
    (child870 : Flapjack.WordAlloc.removeDeadStructural input870 value5 value1 value2 = (output870, value439, value1))
    (child17187 : Flapjack.WordAlloc.removeDeadStructural input17187 value439 value1 value2 = (output17187, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17188 value5 value1 value2 = (output17188, value6896, value1) := by
  rw [input17188_def, output17188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child870]
  try dsimp only
  rw [child17187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output870_skip, output17187_skip]
  kernel_rfl

theorem node17189_cond_eq
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value432 value1 value2 = (output867, value5, value1))
    (child17188 : Flapjack.WordAlloc.removeDeadStructural input17188 value5 value1 value2 = (output17188, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17189 value432 value1 value2 = (output17189, value6896, value1) := by
  rw [input17189_def, output17189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child867]
  try dsimp only
  rw [child17188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output867_skip, output17188_skip]
  kernel_rfl

theorem node17190_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value432 value1 value2 = (output856, value432, value1))
    (child17189 : Flapjack.WordAlloc.removeDeadStructural input17189 value432 value1 value2 = (output17189, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17190 value432 value1 value2 = (output17190, value6896, value1) := by
  rw [input17190_def, output17190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child17189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output17189_skip]
  kernel_rfl

theorem node17191_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value431 value1 value2 = (output855, value432, value1))
    (child17190 : Flapjack.WordAlloc.removeDeadStructural input17190 value432 value1 value2 = (output17190, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17191 value431 value1 value2 = (output17191, value6896, value1) := by
  rw [input17191_def, output17191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  try dsimp only
  rw [child17190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output855_skip, output17190_skip]
  kernel_rfl

theorem node17192_cond_eq
    (child854 : Flapjack.WordAlloc.removeDeadStructural input854 value5 value1 value2 = (output854, value431, value1))
    (child17191 : Flapjack.WordAlloc.removeDeadStructural input17191 value431 value1 value2 = (output17191, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17192 value5 value1 value2 = (output17192, value6896, value1) := by
  rw [input17192_def, output17192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child854]
  try dsimp only
  rw [child17191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output854_skip, output17191_skip]
  kernel_rfl

theorem node17193_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value424 value1 value2 = (output851, value5, value1))
    (child17192 : Flapjack.WordAlloc.removeDeadStructural input17192 value5 value1 value2 = (output17192, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17193 value424 value1 value2 = (output17193, value6896, value1) := by
  rw [input17193_def, output17193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child17192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output17192_skip]
  kernel_rfl

theorem node17194_cond_eq
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value424 value1 value2 = (output840, value424, value1))
    (child17193 : Flapjack.WordAlloc.removeDeadStructural input17193 value424 value1 value2 = (output17193, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17194 value424 value1 value2 = (output17194, value6896, value1) := by
  rw [input17194_def, output17194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child840]
  try dsimp only
  rw [child17193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output840_skip, output17193_skip]
  kernel_rfl

theorem node17195_cond_eq
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value423 value1 value2 = (output839, value424, value1))
    (child17194 : Flapjack.WordAlloc.removeDeadStructural input17194 value424 value1 value2 = (output17194, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17195 value423 value1 value2 = (output17195, value6896, value1) := by
  rw [input17195_def, output17195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child839]
  try dsimp only
  rw [child17194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output839_skip, output17194_skip]
  kernel_rfl

theorem node17196_cond_eq
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value5 value1 value2 = (output838, value423, value1))
    (child17195 : Flapjack.WordAlloc.removeDeadStructural input17195 value423 value1 value2 = (output17195, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17196 value5 value1 value2 = (output17196, value6896, value1) := by
  rw [input17196_def, output17196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child838]
  try dsimp only
  rw [child17195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output838_skip, output17195_skip]
  kernel_rfl

theorem node17197_cond_eq
    (child835 : Flapjack.WordAlloc.removeDeadStructural input835 value416 value1 value2 = (output835, value5, value1))
    (child17196 : Flapjack.WordAlloc.removeDeadStructural input17196 value5 value1 value2 = (output17196, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17197 value416 value1 value2 = (output17197, value6896, value1) := by
  rw [input17197_def, output17197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child835]
  try dsimp only
  rw [child17196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output835_skip, output17196_skip]
  kernel_rfl

theorem node17198_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value416 value1 value2 = (output824, value416, value1))
    (child17197 : Flapjack.WordAlloc.removeDeadStructural input17197 value416 value1 value2 = (output17197, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17198 value416 value1 value2 = (output17198, value6896, value1) := by
  rw [input17198_def, output17198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  try dsimp only
  rw [child17197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output824_skip, output17197_skip]
  kernel_rfl

theorem node17199_cond_eq
    (child823 : Flapjack.WordAlloc.removeDeadStructural input823 value415 value1 value2 = (output823, value416, value1))
    (child17198 : Flapjack.WordAlloc.removeDeadStructural input17198 value416 value1 value2 = (output17198, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17199 value415 value1 value2 = (output17199, value6896, value1) := by
  rw [input17199_def, output17199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child823]
  try dsimp only
  rw [child17198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output823_skip, output17198_skip]
  kernel_rfl

theorem node17200_cond_eq
    (child822 : Flapjack.WordAlloc.removeDeadStructural input822 value5 value1 value2 = (output822, value415, value1))
    (child17199 : Flapjack.WordAlloc.removeDeadStructural input17199 value415 value1 value2 = (output17199, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17200 value5 value1 value2 = (output17200, value6896, value1) := by
  rw [input17200_def, output17200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child822]
  try dsimp only
  rw [child17199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output822_skip, output17199_skip]
  kernel_rfl

theorem node17201_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value408 value1 value2 = (output819, value5, value1))
    (child17200 : Flapjack.WordAlloc.removeDeadStructural input17200 value5 value1 value2 = (output17200, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17201 value408 value1 value2 = (output17201, value6896, value1) := by
  rw [input17201_def, output17201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child17200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output17200_skip]
  kernel_rfl

theorem node17202_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value408 value1 value2 = (output808, value408, value1))
    (child17201 : Flapjack.WordAlloc.removeDeadStructural input17201 value408 value1 value2 = (output17201, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17202 value408 value1 value2 = (output17202, value6896, value1) := by
  rw [input17202_def, output17202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child808]
  try dsimp only
  rw [child17201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output808_skip, output17201_skip]
  kernel_rfl

theorem node17203_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value407 value1 value2 = (output807, value408, value1))
    (child17202 : Flapjack.WordAlloc.removeDeadStructural input17202 value408 value1 value2 = (output17202, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17203 value407 value1 value2 = (output17203, value6896, value1) := by
  rw [input17203_def, output17203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  try dsimp only
  rw [child17202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output807_skip, output17202_skip]
  kernel_rfl

theorem node17204_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value5 value1 value2 = (output806, value407, value1))
    (child17203 : Flapjack.WordAlloc.removeDeadStructural input17203 value407 value1 value2 = (output17203, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17204 value5 value1 value2 = (output17204, value6896, value1) := by
  rw [input17204_def, output17204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child17203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output17203_skip]
  kernel_rfl

theorem node17205_cond_eq
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value400 value1 value2 = (output803, value5, value1))
    (child17204 : Flapjack.WordAlloc.removeDeadStructural input17204 value5 value1 value2 = (output17204, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17205 value400 value1 value2 = (output17205, value6896, value1) := by
  rw [input17205_def, output17205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child803]
  try dsimp only
  rw [child17204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output803_skip, output17204_skip]
  kernel_rfl

theorem node17206_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value400 value1 value2 = (output792, value400, value1))
    (child17205 : Flapjack.WordAlloc.removeDeadStructural input17205 value400 value1 value2 = (output17205, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17206 value400 value1 value2 = (output17206, value6896, value1) := by
  rw [input17206_def, output17206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child17205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output17205_skip]
  kernel_rfl

theorem node17207_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value399 value1 value2 = (output791, value400, value1))
    (child17206 : Flapjack.WordAlloc.removeDeadStructural input17206 value400 value1 value2 = (output17206, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17207 value399 value1 value2 = (output17207, value6896, value1) := by
  rw [input17207_def, output17207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child17206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output17206_skip]
  kernel_rfl

theorem node17208_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value5 value1 value2 = (output790, value399, value1))
    (child17207 : Flapjack.WordAlloc.removeDeadStructural input17207 value399 value1 value2 = (output17207, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17208 value5 value1 value2 = (output17208, value6896, value1) := by
  rw [input17208_def, output17208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  try dsimp only
  rw [child17207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output17207_skip]
  kernel_rfl

theorem node17209_cond_eq
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value392 value1 value2 = (output787, value5, value1))
    (child17208 : Flapjack.WordAlloc.removeDeadStructural input17208 value5 value1 value2 = (output17208, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17209 value392 value1 value2 = (output17209, value6896, value1) := by
  rw [input17209_def, output17209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child787]
  try dsimp only
  rw [child17208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output787_skip, output17208_skip]
  kernel_rfl

theorem node17210_cond_eq
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value392 value1 value2 = (output776, value392, value1))
    (child17209 : Flapjack.WordAlloc.removeDeadStructural input17209 value392 value1 value2 = (output17209, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17210 value392 value1 value2 = (output17210, value6896, value1) := by
  rw [input17210_def, output17210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child776]
  try dsimp only
  rw [child17209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output776_skip, output17209_skip]
  kernel_rfl

theorem node17211_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value391 value1 value2 = (output775, value392, value1))
    (child17210 : Flapjack.WordAlloc.removeDeadStructural input17210 value392 value1 value2 = (output17210, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17211 value391 value1 value2 = (output17211, value6896, value1) := by
  rw [input17211_def, output17211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child17210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output17210_skip]
  kernel_rfl

theorem node17212_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value5 value1 value2 = (output774, value391, value1))
    (child17211 : Flapjack.WordAlloc.removeDeadStructural input17211 value391 value1 value2 = (output17211, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17212 value5 value1 value2 = (output17212, value6896, value1) := by
  rw [input17212_def, output17212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child17211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output17211_skip]
  kernel_rfl

theorem node17213_cond_eq
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value384 value1 value2 = (output771, value5, value1))
    (child17212 : Flapjack.WordAlloc.removeDeadStructural input17212 value5 value1 value2 = (output17212, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17213 value384 value1 value2 = (output17213, value6896, value1) := by
  rw [input17213_def, output17213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child771]
  try dsimp only
  rw [child17212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output771_skip, output17212_skip]
  kernel_rfl

theorem node17214_cond_eq
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value384 value1 value2 = (output760, value384, value1))
    (child17213 : Flapjack.WordAlloc.removeDeadStructural input17213 value384 value1 value2 = (output17213, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17214 value384 value1 value2 = (output17214, value6896, value1) := by
  rw [input17214_def, output17214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child760]
  try dsimp only
  rw [child17213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output760_skip, output17213_skip]
  kernel_rfl

theorem node17215_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value383 value1 value2 = (output759, value384, value1))
    (child17214 : Flapjack.WordAlloc.removeDeadStructural input17214 value384 value1 value2 = (output17214, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17215 value383 value1 value2 = (output17215, value6896, value1) := by
  rw [input17215_def, output17215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child17214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output17214_skip]
  kernel_rfl

theorem node17216_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value5 value1 value2 = (output758, value383, value1))
    (child17215 : Flapjack.WordAlloc.removeDeadStructural input17215 value383 value1 value2 = (output17215, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17216 value5 value1 value2 = (output17216, value6896, value1) := by
  rw [input17216_def, output17216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child17215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output17215_skip]
  kernel_rfl

theorem node17217_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value376 value1 value2 = (output755, value5, value1))
    (child17216 : Flapjack.WordAlloc.removeDeadStructural input17216 value5 value1 value2 = (output17216, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17217 value376 value1 value2 = (output17217, value6896, value1) := by
  rw [input17217_def, output17217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child17216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output17216_skip]
  kernel_rfl

theorem node17218_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value376 value1 value2 = (output744, value376, value1))
    (child17217 : Flapjack.WordAlloc.removeDeadStructural input17217 value376 value1 value2 = (output17217, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17218 value376 value1 value2 = (output17218, value6896, value1) := by
  rw [input17218_def, output17218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child17217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output17217_skip]
  kernel_rfl

theorem node17219_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value375 value1 value2 = (output743, value376, value1))
    (child17218 : Flapjack.WordAlloc.removeDeadStructural input17218 value376 value1 value2 = (output17218, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17219 value375 value1 value2 = (output17219, value6896, value1) := by
  rw [input17219_def, output17219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child17218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output17218_skip]
  kernel_rfl

theorem node17220_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value5 value1 value2 = (output742, value375, value1))
    (child17219 : Flapjack.WordAlloc.removeDeadStructural input17219 value375 value1 value2 = (output17219, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17220 value5 value1 value2 = (output17220, value6896, value1) := by
  rw [input17220_def, output17220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child17219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output17219_skip]
  kernel_rfl

theorem node17221_cond_eq
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value368 value1 value2 = (output739, value5, value1))
    (child17220 : Flapjack.WordAlloc.removeDeadStructural input17220 value5 value1 value2 = (output17220, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17221 value368 value1 value2 = (output17221, value6896, value1) := by
  rw [input17221_def, output17221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child739]
  try dsimp only
  rw [child17220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output739_skip, output17220_skip]
  kernel_rfl

theorem node17222_cond_eq
    (child728 : Flapjack.WordAlloc.removeDeadStructural input728 value368 value1 value2 = (output728, value368, value1))
    (child17221 : Flapjack.WordAlloc.removeDeadStructural input17221 value368 value1 value2 = (output17221, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17222 value368 value1 value2 = (output17222, value6896, value1) := by
  rw [input17222_def, output17222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child728]
  try dsimp only
  rw [child17221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output728_skip, output17221_skip]
  kernel_rfl

theorem node17223_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value367 value1 value2 = (output727, value368, value1))
    (child17222 : Flapjack.WordAlloc.removeDeadStructural input17222 value368 value1 value2 = (output17222, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17223 value367 value1 value2 = (output17223, value6896, value1) := by
  rw [input17223_def, output17223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child17222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output17222_skip]
  kernel_rfl

theorem node17224_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value5 value1 value2 = (output726, value367, value1))
    (child17223 : Flapjack.WordAlloc.removeDeadStructural input17223 value367 value1 value2 = (output17223, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17224 value5 value1 value2 = (output17224, value6896, value1) := by
  rw [input17224_def, output17224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child17223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output17223_skip]
  kernel_rfl

theorem node17225_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value360 value1 value2 = (output723, value5, value1))
    (child17224 : Flapjack.WordAlloc.removeDeadStructural input17224 value5 value1 value2 = (output17224, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17225 value360 value1 value2 = (output17225, value6896, value1) := by
  rw [input17225_def, output17225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child17224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output17224_skip]
  kernel_rfl

theorem node17226_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value360 value1 value2 = (output712, value360, value1))
    (child17225 : Flapjack.WordAlloc.removeDeadStructural input17225 value360 value1 value2 = (output17225, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17226 value360 value1 value2 = (output17226, value6896, value1) := by
  rw [input17226_def, output17226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child17225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output17225_skip]
  kernel_rfl

theorem node17227_cond_eq
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value359 value1 value2 = (output711, value360, value1))
    (child17226 : Flapjack.WordAlloc.removeDeadStructural input17226 value360 value1 value2 = (output17226, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17227 value359 value1 value2 = (output17227, value6896, value1) := by
  rw [input17227_def, output17227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child711]
  try dsimp only
  rw [child17226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output711_skip, output17226_skip]
  kernel_rfl

theorem node17228_cond_eq
    (child710 : Flapjack.WordAlloc.removeDeadStructural input710 value5 value1 value2 = (output710, value359, value1))
    (child17227 : Flapjack.WordAlloc.removeDeadStructural input17227 value359 value1 value2 = (output17227, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17228 value5 value1 value2 = (output17228, value6896, value1) := by
  rw [input17228_def, output17228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child710]
  try dsimp only
  rw [child17227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output710_skip, output17227_skip]
  kernel_rfl

theorem node17229_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value352 value1 value2 = (output707, value5, value1))
    (child17228 : Flapjack.WordAlloc.removeDeadStructural input17228 value5 value1 value2 = (output17228, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17229 value352 value1 value2 = (output17229, value6896, value1) := by
  rw [input17229_def, output17229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child17228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output17228_skip]
  kernel_rfl

theorem node17230_cond_eq
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value352 value1 value2 = (output696, value352, value1))
    (child17229 : Flapjack.WordAlloc.removeDeadStructural input17229 value352 value1 value2 = (output17229, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17230 value352 value1 value2 = (output17230, value6896, value1) := by
  rw [input17230_def, output17230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child696]
  try dsimp only
  rw [child17229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output696_skip, output17229_skip]
  kernel_rfl

theorem node17231_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value351 value1 value2 = (output695, value352, value1))
    (child17230 : Flapjack.WordAlloc.removeDeadStructural input17230 value352 value1 value2 = (output17230, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17231 value351 value1 value2 = (output17231, value6896, value1) := by
  rw [input17231_def, output17231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child17230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output17230_skip]
  kernel_rfl

theorem node17232_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value5 value1 value2 = (output694, value351, value1))
    (child17231 : Flapjack.WordAlloc.removeDeadStructural input17231 value351 value1 value2 = (output17231, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17232 value5 value1 value2 = (output17232, value6896, value1) := by
  rw [input17232_def, output17232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child17231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output17231_skip]
  kernel_rfl

theorem node17233_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value344 value1 value2 = (output691, value5, value1))
    (child17232 : Flapjack.WordAlloc.removeDeadStructural input17232 value5 value1 value2 = (output17232, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17233 value344 value1 value2 = (output17233, value6896, value1) := by
  rw [input17233_def, output17233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child17232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output17232_skip]
  kernel_rfl

theorem node17234_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value344 value1 value2 = (output680, value344, value1))
    (child17233 : Flapjack.WordAlloc.removeDeadStructural input17233 value344 value1 value2 = (output17233, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17234 value344 value1 value2 = (output17234, value6896, value1) := by
  rw [input17234_def, output17234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child17233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output17233_skip]
  kernel_rfl

theorem node17235_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value343 value1 value2 = (output679, value344, value1))
    (child17234 : Flapjack.WordAlloc.removeDeadStructural input17234 value344 value1 value2 = (output17234, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17235 value343 value1 value2 = (output17235, value6896, value1) := by
  rw [input17235_def, output17235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child17234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output17234_skip]
  kernel_rfl

theorem node17236_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value5 value1 value2 = (output678, value343, value1))
    (child17235 : Flapjack.WordAlloc.removeDeadStructural input17235 value343 value1 value2 = (output17235, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17236 value5 value1 value2 = (output17236, value6896, value1) := by
  rw [input17236_def, output17236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child17235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output678_skip, output17235_skip]
  kernel_rfl

theorem node17237_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value336 value1 value2 = (output675, value5, value1))
    (child17236 : Flapjack.WordAlloc.removeDeadStructural input17236 value5 value1 value2 = (output17236, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17237 value336 value1 value2 = (output17237, value6896, value1) := by
  rw [input17237_def, output17237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child17236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output17236_skip]
  kernel_rfl

theorem node17238_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value336 value1 value2 = (output664, value336, value1))
    (child17237 : Flapjack.WordAlloc.removeDeadStructural input17237 value336 value1 value2 = (output17237, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17238 value336 value1 value2 = (output17238, value6896, value1) := by
  rw [input17238_def, output17238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child17237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output17237_skip]
  kernel_rfl

theorem node17239_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value335 value1 value2 = (output663, value336, value1))
    (child17238 : Flapjack.WordAlloc.removeDeadStructural input17238 value336 value1 value2 = (output17238, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17239 value335 value1 value2 = (output17239, value6896, value1) := by
  rw [input17239_def, output17239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child17238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output17238_skip]
  kernel_rfl

theorem node17240_cond_eq
    (child662 : Flapjack.WordAlloc.removeDeadStructural input662 value5 value1 value2 = (output662, value335, value1))
    (child17239 : Flapjack.WordAlloc.removeDeadStructural input17239 value335 value1 value2 = (output17239, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17240 value5 value1 value2 = (output17240, value6896, value1) := by
  rw [input17240_def, output17240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child662]
  try dsimp only
  rw [child17239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output662_skip, output17239_skip]
  kernel_rfl

theorem node17241_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value328 value1 value2 = (output659, value5, value1))
    (child17240 : Flapjack.WordAlloc.removeDeadStructural input17240 value5 value1 value2 = (output17240, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17241 value328 value1 value2 = (output17241, value6896, value1) := by
  rw [input17241_def, output17241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child17240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output17240_skip]
  kernel_rfl

theorem node17242_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value328 value1 value2 = (output648, value328, value1))
    (child17241 : Flapjack.WordAlloc.removeDeadStructural input17241 value328 value1 value2 = (output17241, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17242 value328 value1 value2 = (output17242, value6896, value1) := by
  rw [input17242_def, output17242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child17241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output17241_skip]
  kernel_rfl

theorem node17243_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value327 value1 value2 = (output647, value328, value1))
    (child17242 : Flapjack.WordAlloc.removeDeadStructural input17242 value328 value1 value2 = (output17242, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17243 value327 value1 value2 = (output17243, value6896, value1) := by
  rw [input17243_def, output17243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child17242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output17242_skip]
  kernel_rfl

theorem node17244_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value5 value1 value2 = (output646, value327, value1))
    (child17243 : Flapjack.WordAlloc.removeDeadStructural input17243 value327 value1 value2 = (output17243, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17244 value5 value1 value2 = (output17244, value6896, value1) := by
  rw [input17244_def, output17244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child17243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output17243_skip]
  kernel_rfl

theorem node17245_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value320 value1 value2 = (output643, value5, value1))
    (child17244 : Flapjack.WordAlloc.removeDeadStructural input17244 value5 value1 value2 = (output17244, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17245 value320 value1 value2 = (output17245, value6896, value1) := by
  rw [input17245_def, output17245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  try dsimp only
  rw [child17244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output17244_skip]
  kernel_rfl

theorem node17246_cond_eq
    (child632 : Flapjack.WordAlloc.removeDeadStructural input632 value320 value1 value2 = (output632, value320, value1))
    (child17245 : Flapjack.WordAlloc.removeDeadStructural input17245 value320 value1 value2 = (output17245, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17246 value320 value1 value2 = (output17246, value6896, value1) := by
  rw [input17246_def, output17246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child632]
  try dsimp only
  rw [child17245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output632_skip, output17245_skip]
  kernel_rfl

theorem node17247_cond_eq
    (child631 : Flapjack.WordAlloc.removeDeadStructural input631 value319 value1 value2 = (output631, value320, value1))
    (child17246 : Flapjack.WordAlloc.removeDeadStructural input17246 value320 value1 value2 = (output17246, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17247 value319 value1 value2 = (output17247, value6896, value1) := by
  rw [input17247_def, output17247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child631]
  try dsimp only
  rw [child17246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output631_skip, output17246_skip]
  kernel_rfl

theorem node17248_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value5 value1 value2 = (output630, value319, value1))
    (child17247 : Flapjack.WordAlloc.removeDeadStructural input17247 value319 value1 value2 = (output17247, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17248 value5 value1 value2 = (output17248, value6896, value1) := by
  rw [input17248_def, output17248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child17247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output17247_skip]
  kernel_rfl

theorem node17249_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value312 value1 value2 = (output627, value5, value1))
    (child17248 : Flapjack.WordAlloc.removeDeadStructural input17248 value5 value1 value2 = (output17248, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17249 value312 value1 value2 = (output17249, value6896, value1) := by
  rw [input17249_def, output17249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child17248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output17248_skip]
  kernel_rfl

theorem node17250_cond_eq
    (child616 : Flapjack.WordAlloc.removeDeadStructural input616 value312 value1 value2 = (output616, value312, value1))
    (child17249 : Flapjack.WordAlloc.removeDeadStructural input17249 value312 value1 value2 = (output17249, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17250 value312 value1 value2 = (output17250, value6896, value1) := by
  rw [input17250_def, output17250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child616]
  try dsimp only
  rw [child17249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output616_skip, output17249_skip]
  kernel_rfl

theorem node17251_cond_eq
    (child615 : Flapjack.WordAlloc.removeDeadStructural input615 value311 value1 value2 = (output615, value312, value1))
    (child17250 : Flapjack.WordAlloc.removeDeadStructural input17250 value312 value1 value2 = (output17250, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17251 value311 value1 value2 = (output17251, value6896, value1) := by
  rw [input17251_def, output17251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child615]
  try dsimp only
  rw [child17250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output615_skip, output17250_skip]
  kernel_rfl

theorem node17252_cond_eq
    (child614 : Flapjack.WordAlloc.removeDeadStructural input614 value5 value1 value2 = (output614, value311, value1))
    (child17251 : Flapjack.WordAlloc.removeDeadStructural input17251 value311 value1 value2 = (output17251, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17252 value5 value1 value2 = (output17252, value6896, value1) := by
  rw [input17252_def, output17252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child614]
  try dsimp only
  rw [child17251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output614_skip, output17251_skip]
  kernel_rfl

theorem node17253_cond_eq
    (child611 : Flapjack.WordAlloc.removeDeadStructural input611 value304 value1 value2 = (output611, value5, value1))
    (child17252 : Flapjack.WordAlloc.removeDeadStructural input17252 value5 value1 value2 = (output17252, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17253 value304 value1 value2 = (output17253, value6896, value1) := by
  rw [input17253_def, output17253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child611]
  try dsimp only
  rw [child17252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output611_skip, output17252_skip]
  kernel_rfl

theorem node17254_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value304 value1 value2 = (output600, value304, value1))
    (child17253 : Flapjack.WordAlloc.removeDeadStructural input17253 value304 value1 value2 = (output17253, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17254 value304 value1 value2 = (output17254, value6896, value1) := by
  rw [input17254_def, output17254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child17253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output17253_skip]
  kernel_rfl

theorem node17255_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value303 value1 value2 = (output599, value304, value1))
    (child17254 : Flapjack.WordAlloc.removeDeadStructural input17254 value304 value1 value2 = (output17254, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17255 value303 value1 value2 = (output17255, value6896, value1) := by
  rw [input17255_def, output17255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child17254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output17254_skip]
  kernel_rfl

theorem node17256_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value5 value1 value2 = (output598, value303, value1))
    (child17255 : Flapjack.WordAlloc.removeDeadStructural input17255 value303 value1 value2 = (output17255, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17256 value5 value1 value2 = (output17256, value6896, value1) := by
  rw [input17256_def, output17256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child17255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output17255_skip]
  kernel_rfl

theorem node17257_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value296 value1 value2 = (output595, value5, value1))
    (child17256 : Flapjack.WordAlloc.removeDeadStructural input17256 value5 value1 value2 = (output17256, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17257 value296 value1 value2 = (output17257, value6896, value1) := by
  rw [input17257_def, output17257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child17256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output17256_skip]
  kernel_rfl

theorem node17258_cond_eq
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value296 value1 value2 = (output584, value296, value1))
    (child17257 : Flapjack.WordAlloc.removeDeadStructural input17257 value296 value1 value2 = (output17257, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17258 value296 value1 value2 = (output17258, value6896, value1) := by
  rw [input17258_def, output17258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child584]
  try dsimp only
  rw [child17257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output584_skip, output17257_skip]
  kernel_rfl

theorem node17259_cond_eq
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value295 value1 value2 = (output583, value296, value1))
    (child17258 : Flapjack.WordAlloc.removeDeadStructural input17258 value296 value1 value2 = (output17258, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17259 value295 value1 value2 = (output17259, value6896, value1) := by
  rw [input17259_def, output17259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child583]
  try dsimp only
  rw [child17258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output583_skip, output17258_skip]
  kernel_rfl

theorem node17260_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value5 value1 value2 = (output582, value295, value1))
    (child17259 : Flapjack.WordAlloc.removeDeadStructural input17259 value295 value1 value2 = (output17259, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17260 value5 value1 value2 = (output17260, value6896, value1) := by
  rw [input17260_def, output17260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  try dsimp only
  rw [child17259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output582_skip, output17259_skip]
  kernel_rfl

theorem node17261_cond_eq
    (child579 : Flapjack.WordAlloc.removeDeadStructural input579 value288 value1 value2 = (output579, value5, value1))
    (child17260 : Flapjack.WordAlloc.removeDeadStructural input17260 value5 value1 value2 = (output17260, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17261 value288 value1 value2 = (output17261, value6896, value1) := by
  rw [input17261_def, output17261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child579]
  try dsimp only
  rw [child17260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output579_skip, output17260_skip]
  kernel_rfl

theorem node17262_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value288 value1 value2 = (output568, value288, value1))
    (child17261 : Flapjack.WordAlloc.removeDeadStructural input17261 value288 value1 value2 = (output17261, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17262 value288 value1 value2 = (output17262, value6896, value1) := by
  rw [input17262_def, output17262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child17261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output17261_skip]
  kernel_rfl

theorem node17263_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value287 value1 value2 = (output567, value288, value1))
    (child17262 : Flapjack.WordAlloc.removeDeadStructural input17262 value288 value1 value2 = (output17262, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17263 value287 value1 value2 = (output17263, value6896, value1) := by
  rw [input17263_def, output17263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child17262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output17262_skip]
  kernel_rfl

theorem node17264_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value5 value1 value2 = (output566, value287, value1))
    (child17263 : Flapjack.WordAlloc.removeDeadStructural input17263 value287 value1 value2 = (output17263, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17264 value5 value1 value2 = (output17264, value6896, value1) := by
  rw [input17264_def, output17264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child17263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output17263_skip]
  kernel_rfl

theorem node17265_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value280 value1 value2 = (output563, value5, value1))
    (child17264 : Flapjack.WordAlloc.removeDeadStructural input17264 value5 value1 value2 = (output17264, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17265 value280 value1 value2 = (output17265, value6896, value1) := by
  rw [input17265_def, output17265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child17264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output17264_skip]
  kernel_rfl

theorem node17266_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value280 value1 value2 = (output552, value280, value1))
    (child17265 : Flapjack.WordAlloc.removeDeadStructural input17265 value280 value1 value2 = (output17265, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17266 value280 value1 value2 = (output17266, value6896, value1) := by
  rw [input17266_def, output17266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child17265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output17265_skip]
  kernel_rfl

theorem node17267_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value279 value1 value2 = (output551, value280, value1))
    (child17266 : Flapjack.WordAlloc.removeDeadStructural input17266 value280 value1 value2 = (output17266, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17267 value279 value1 value2 = (output17267, value6896, value1) := by
  rw [input17267_def, output17267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child17266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output17266_skip]
  kernel_rfl

theorem node17268_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value5 value1 value2 = (output550, value279, value1))
    (child17267 : Flapjack.WordAlloc.removeDeadStructural input17267 value279 value1 value2 = (output17267, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17268 value5 value1 value2 = (output17268, value6896, value1) := by
  rw [input17268_def, output17268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child17267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output17267_skip]
  kernel_rfl

theorem node17269_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value272 value1 value2 = (output547, value5, value1))
    (child17268 : Flapjack.WordAlloc.removeDeadStructural input17268 value5 value1 value2 = (output17268, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17269 value272 value1 value2 = (output17269, value6896, value1) := by
  rw [input17269_def, output17269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child17268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output17268_skip]
  kernel_rfl

theorem node17270_cond_eq
    (child536 : Flapjack.WordAlloc.removeDeadStructural input536 value272 value1 value2 = (output536, value272, value1))
    (child17269 : Flapjack.WordAlloc.removeDeadStructural input17269 value272 value1 value2 = (output17269, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17270 value272 value1 value2 = (output17270, value6896, value1) := by
  rw [input17270_def, output17270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child536]
  try dsimp only
  rw [child17269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output536_skip, output17269_skip]
  kernel_rfl

theorem node17271_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value271 value1 value2 = (output535, value272, value1))
    (child17270 : Flapjack.WordAlloc.removeDeadStructural input17270 value272 value1 value2 = (output17270, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17271 value271 value1 value2 = (output17271, value6896, value1) := by
  rw [input17271_def, output17271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child17270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output17270_skip]
  kernel_rfl

theorem node17272_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value5 value1 value2 = (output534, value271, value1))
    (child17271 : Flapjack.WordAlloc.removeDeadStructural input17271 value271 value1 value2 = (output17271, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17272 value5 value1 value2 = (output17272, value6896, value1) := by
  rw [input17272_def, output17272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child17271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output17271_skip]
  kernel_rfl

theorem node17273_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value264 value1 value2 = (output531, value5, value1))
    (child17272 : Flapjack.WordAlloc.removeDeadStructural input17272 value5 value1 value2 = (output17272, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17273 value264 value1 value2 = (output17273, value6896, value1) := by
  rw [input17273_def, output17273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child17272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output17272_skip]
  kernel_rfl

theorem node17274_cond_eq
    (child520 : Flapjack.WordAlloc.removeDeadStructural input520 value264 value1 value2 = (output520, value264, value1))
    (child17273 : Flapjack.WordAlloc.removeDeadStructural input17273 value264 value1 value2 = (output17273, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17274 value264 value1 value2 = (output17274, value6896, value1) := by
  rw [input17274_def, output17274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child520]
  try dsimp only
  rw [child17273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output520_skip, output17273_skip]
  kernel_rfl

theorem node17275_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value263 value1 value2 = (output519, value264, value1))
    (child17274 : Flapjack.WordAlloc.removeDeadStructural input17274 value264 value1 value2 = (output17274, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17275 value263 value1 value2 = (output17275, value6896, value1) := by
  rw [input17275_def, output17275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child17274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output17274_skip]
  kernel_rfl

theorem node17276_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value5 value1 value2 = (output518, value263, value1))
    (child17275 : Flapjack.WordAlloc.removeDeadStructural input17275 value263 value1 value2 = (output17275, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17276 value5 value1 value2 = (output17276, value6896, value1) := by
  rw [input17276_def, output17276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child17275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output17275_skip]
  kernel_rfl

theorem node17277_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value256 value1 value2 = (output515, value5, value1))
    (child17276 : Flapjack.WordAlloc.removeDeadStructural input17276 value5 value1 value2 = (output17276, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17277 value256 value1 value2 = (output17277, value6896, value1) := by
  rw [input17277_def, output17277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child17276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output17276_skip]
  kernel_rfl

theorem node17278_cond_eq
    (child504 : Flapjack.WordAlloc.removeDeadStructural input504 value256 value1 value2 = (output504, value256, value1))
    (child17277 : Flapjack.WordAlloc.removeDeadStructural input17277 value256 value1 value2 = (output17277, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17278 value256 value1 value2 = (output17278, value6896, value1) := by
  rw [input17278_def, output17278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child504]
  try dsimp only
  rw [child17277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output504_skip, output17277_skip]
  kernel_rfl

theorem node17279_cond_eq
    (child503 : Flapjack.WordAlloc.removeDeadStructural input503 value255 value1 value2 = (output503, value256, value1))
    (child17278 : Flapjack.WordAlloc.removeDeadStructural input17278 value256 value1 value2 = (output17278, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17279 value255 value1 value2 = (output17279, value6896, value1) := by
  rw [input17279_def, output17279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child503]
  try dsimp only
  rw [child17278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output503_skip, output17278_skip]
  kernel_rfl

theorem node17280_cond_eq
    (child502 : Flapjack.WordAlloc.removeDeadStructural input502 value5 value1 value2 = (output502, value255, value1))
    (child17279 : Flapjack.WordAlloc.removeDeadStructural input17279 value255 value1 value2 = (output17279, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17280 value5 value1 value2 = (output17280, value6896, value1) := by
  rw [input17280_def, output17280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child502]
  try dsimp only
  rw [child17279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output502_skip, output17279_skip]
  kernel_rfl

theorem node17281_cond_eq
    (child499 : Flapjack.WordAlloc.removeDeadStructural input499 value248 value1 value2 = (output499, value5, value1))
    (child17280 : Flapjack.WordAlloc.removeDeadStructural input17280 value5 value1 value2 = (output17280, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17281 value248 value1 value2 = (output17281, value6896, value1) := by
  rw [input17281_def, output17281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child499]
  try dsimp only
  rw [child17280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output499_skip, output17280_skip]
  kernel_rfl

theorem node17282_cond_eq
    (child488 : Flapjack.WordAlloc.removeDeadStructural input488 value248 value1 value2 = (output488, value248, value1))
    (child17281 : Flapjack.WordAlloc.removeDeadStructural input17281 value248 value1 value2 = (output17281, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17282 value248 value1 value2 = (output17282, value6896, value1) := by
  rw [input17282_def, output17282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child488]
  try dsimp only
  rw [child17281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output488_skip, output17281_skip]
  kernel_rfl

theorem node17283_cond_eq
    (child487 : Flapjack.WordAlloc.removeDeadStructural input487 value247 value1 value2 = (output487, value248, value1))
    (child17282 : Flapjack.WordAlloc.removeDeadStructural input17282 value248 value1 value2 = (output17282, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17283 value247 value1 value2 = (output17283, value6896, value1) := by
  rw [input17283_def, output17283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child487]
  try dsimp only
  rw [child17282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output487_skip, output17282_skip]
  kernel_rfl

theorem node17284_cond_eq
    (child486 : Flapjack.WordAlloc.removeDeadStructural input486 value5 value1 value2 = (output486, value247, value1))
    (child17283 : Flapjack.WordAlloc.removeDeadStructural input17283 value247 value1 value2 = (output17283, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17284 value5 value1 value2 = (output17284, value6896, value1) := by
  rw [input17284_def, output17284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child486]
  try dsimp only
  rw [child17283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output486_skip, output17283_skip]
  kernel_rfl

theorem node17285_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value240 value1 value2 = (output483, value5, value1))
    (child17284 : Flapjack.WordAlloc.removeDeadStructural input17284 value5 value1 value2 = (output17284, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17285 value240 value1 value2 = (output17285, value6896, value1) := by
  rw [input17285_def, output17285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child17284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output17284_skip]
  kernel_rfl

theorem node17286_cond_eq
    (child472 : Flapjack.WordAlloc.removeDeadStructural input472 value240 value1 value2 = (output472, value240, value1))
    (child17285 : Flapjack.WordAlloc.removeDeadStructural input17285 value240 value1 value2 = (output17285, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17286 value240 value1 value2 = (output17286, value6896, value1) := by
  rw [input17286_def, output17286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child472]
  try dsimp only
  rw [child17285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output472_skip, output17285_skip]
  kernel_rfl

theorem node17287_cond_eq
    (child471 : Flapjack.WordAlloc.removeDeadStructural input471 value239 value1 value2 = (output471, value240, value1))
    (child17286 : Flapjack.WordAlloc.removeDeadStructural input17286 value240 value1 value2 = (output17286, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17287 value239 value1 value2 = (output17287, value6896, value1) := by
  rw [input17287_def, output17287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child471]
  try dsimp only
  rw [child17286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output471_skip, output17286_skip]
  kernel_rfl

theorem node17288_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value5 value1 value2 = (output470, value239, value1))
    (child17287 : Flapjack.WordAlloc.removeDeadStructural input17287 value239 value1 value2 = (output17287, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17288 value5 value1 value2 = (output17288, value6896, value1) := by
  rw [input17288_def, output17288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child17287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output17287_skip]
  kernel_rfl

theorem node17289_cond_eq
    (child467 : Flapjack.WordAlloc.removeDeadStructural input467 value232 value1 value2 = (output467, value5, value1))
    (child17288 : Flapjack.WordAlloc.removeDeadStructural input17288 value5 value1 value2 = (output17288, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17289 value232 value1 value2 = (output17289, value6896, value1) := by
  rw [input17289_def, output17289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child467]
  try dsimp only
  rw [child17288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output467_skip, output17288_skip]
  kernel_rfl

theorem node17290_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value232 value1 value2 = (output456, value232, value1))
    (child17289 : Flapjack.WordAlloc.removeDeadStructural input17289 value232 value1 value2 = (output17289, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17290 value232 value1 value2 = (output17290, value6896, value1) := by
  rw [input17290_def, output17290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child17289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output17289_skip]
  kernel_rfl

theorem node17291_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value231 value1 value2 = (output455, value232, value1))
    (child17290 : Flapjack.WordAlloc.removeDeadStructural input17290 value232 value1 value2 = (output17290, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17291 value231 value1 value2 = (output17291, value6896, value1) := by
  rw [input17291_def, output17291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child17290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output17290_skip]
  kernel_rfl

theorem node17292_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value5 value1 value2 = (output454, value231, value1))
    (child17291 : Flapjack.WordAlloc.removeDeadStructural input17291 value231 value1 value2 = (output17291, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17292 value5 value1 value2 = (output17292, value6896, value1) := by
  rw [input17292_def, output17292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child17291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output17291_skip]
  kernel_rfl

theorem node17293_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value224 value1 value2 = (output451, value5, value1))
    (child17292 : Flapjack.WordAlloc.removeDeadStructural input17292 value5 value1 value2 = (output17292, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17293 value224 value1 value2 = (output17293, value6896, value1) := by
  rw [input17293_def, output17293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child17292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output17292_skip]
  kernel_rfl

theorem node17294_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value224 value1 value2 = (output440, value224, value1))
    (child17293 : Flapjack.WordAlloc.removeDeadStructural input17293 value224 value1 value2 = (output17293, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17294 value224 value1 value2 = (output17294, value6896, value1) := by
  rw [input17294_def, output17294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child17293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output17293_skip]
  kernel_rfl

theorem node17295_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value223 value1 value2 = (output439, value224, value1))
    (child17294 : Flapjack.WordAlloc.removeDeadStructural input17294 value224 value1 value2 = (output17294, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17295 value223 value1 value2 = (output17295, value6896, value1) := by
  rw [input17295_def, output17295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child17294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output17294_skip]
  kernel_rfl

theorem node17296_cond_eq
    (child438 : Flapjack.WordAlloc.removeDeadStructural input438 value5 value1 value2 = (output438, value223, value1))
    (child17295 : Flapjack.WordAlloc.removeDeadStructural input17295 value223 value1 value2 = (output17295, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17296 value5 value1 value2 = (output17296, value6896, value1) := by
  rw [input17296_def, output17296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child438]
  try dsimp only
  rw [child17295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output438_skip, output17295_skip]
  kernel_rfl

theorem node17297_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value216 value1 value2 = (output435, value5, value1))
    (child17296 : Flapjack.WordAlloc.removeDeadStructural input17296 value5 value1 value2 = (output17296, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17297 value216 value1 value2 = (output17297, value6896, value1) := by
  rw [input17297_def, output17297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child17296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output17296_skip]
  kernel_rfl

theorem node17298_cond_eq
    (child424 : Flapjack.WordAlloc.removeDeadStructural input424 value216 value1 value2 = (output424, value216, value1))
    (child17297 : Flapjack.WordAlloc.removeDeadStructural input17297 value216 value1 value2 = (output17297, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17298 value216 value1 value2 = (output17298, value6896, value1) := by
  rw [input17298_def, output17298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child424]
  try dsimp only
  rw [child17297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output424_skip, output17297_skip]
  kernel_rfl

theorem node17299_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value215 value1 value2 = (output423, value216, value1))
    (child17298 : Flapjack.WordAlloc.removeDeadStructural input17298 value216 value1 value2 = (output17298, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17299 value215 value1 value2 = (output17299, value6896, value1) := by
  rw [input17299_def, output17299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child17298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output17298_skip]
  kernel_rfl

theorem node17300_cond_eq
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value5 value1 value2 = (output422, value215, value1))
    (child17299 : Flapjack.WordAlloc.removeDeadStructural input17299 value215 value1 value2 = (output17299, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17300 value5 value1 value2 = (output17300, value6896, value1) := by
  rw [input17300_def, output17300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child422]
  try dsimp only
  rw [child17299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output422_skip, output17299_skip]
  kernel_rfl

theorem node17301_cond_eq
    (child419 : Flapjack.WordAlloc.removeDeadStructural input419 value208 value1 value2 = (output419, value5, value1))
    (child17300 : Flapjack.WordAlloc.removeDeadStructural input17300 value5 value1 value2 = (output17300, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17301 value208 value1 value2 = (output17301, value6896, value1) := by
  rw [input17301_def, output17301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child419]
  try dsimp only
  rw [child17300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output419_skip, output17300_skip]
  kernel_rfl

theorem node17302_cond_eq
    (child408 : Flapjack.WordAlloc.removeDeadStructural input408 value208 value1 value2 = (output408, value208, value1))
    (child17301 : Flapjack.WordAlloc.removeDeadStructural input17301 value208 value1 value2 = (output17301, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17302 value208 value1 value2 = (output17302, value6896, value1) := by
  rw [input17302_def, output17302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child408]
  try dsimp only
  rw [child17301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output408_skip, output17301_skip]
  kernel_rfl

theorem node17303_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value207 value1 value2 = (output407, value208, value1))
    (child17302 : Flapjack.WordAlloc.removeDeadStructural input17302 value208 value1 value2 = (output17302, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17303 value207 value1 value2 = (output17303, value6896, value1) := by
  rw [input17303_def, output17303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child17302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output17302_skip]
  kernel_rfl

theorem node17304_cond_eq
    (child406 : Flapjack.WordAlloc.removeDeadStructural input406 value5 value1 value2 = (output406, value207, value1))
    (child17303 : Flapjack.WordAlloc.removeDeadStructural input17303 value207 value1 value2 = (output17303, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17304 value5 value1 value2 = (output17304, value6896, value1) := by
  rw [input17304_def, output17304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child406]
  try dsimp only
  rw [child17303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output406_skip, output17303_skip]
  kernel_rfl

theorem node17305_cond_eq
    (child403 : Flapjack.WordAlloc.removeDeadStructural input403 value200 value1 value2 = (output403, value5, value1))
    (child17304 : Flapjack.WordAlloc.removeDeadStructural input17304 value5 value1 value2 = (output17304, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17305 value200 value1 value2 = (output17305, value6896, value1) := by
  rw [input17305_def, output17305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child403]
  try dsimp only
  rw [child17304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output403_skip, output17304_skip]
  kernel_rfl

theorem node17306_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value200 value1 value2 = (output392, value200, value1))
    (child17305 : Flapjack.WordAlloc.removeDeadStructural input17305 value200 value1 value2 = (output17305, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17306 value200 value1 value2 = (output17306, value6896, value1) := by
  rw [input17306_def, output17306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child17305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output17305_skip]
  kernel_rfl

theorem node17307_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value199 value1 value2 = (output391, value200, value1))
    (child17306 : Flapjack.WordAlloc.removeDeadStructural input17306 value200 value1 value2 = (output17306, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17307 value199 value1 value2 = (output17307, value6896, value1) := by
  rw [input17307_def, output17307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child17306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output17306_skip]
  kernel_rfl

theorem node17308_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value5 value1 value2 = (output390, value199, value1))
    (child17307 : Flapjack.WordAlloc.removeDeadStructural input17307 value199 value1 value2 = (output17307, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17308 value5 value1 value2 = (output17308, value6896, value1) := by
  rw [input17308_def, output17308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child17307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output17307_skip]
  kernel_rfl

theorem node17309_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value192 value1 value2 = (output387, value5, value1))
    (child17308 : Flapjack.WordAlloc.removeDeadStructural input17308 value5 value1 value2 = (output17308, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17309 value192 value1 value2 = (output17309, value6896, value1) := by
  rw [input17309_def, output17309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child17308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output17308_skip]
  kernel_rfl

theorem node17310_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value192 value1 value2 = (output376, value192, value1))
    (child17309 : Flapjack.WordAlloc.removeDeadStructural input17309 value192 value1 value2 = (output17309, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17310 value192 value1 value2 = (output17310, value6896, value1) := by
  rw [input17310_def, output17310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child17309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output17309_skip]
  kernel_rfl

theorem node17311_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value191 value1 value2 = (output375, value192, value1))
    (child17310 : Flapjack.WordAlloc.removeDeadStructural input17310 value192 value1 value2 = (output17310, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17311 value191 value1 value2 = (output17311, value6896, value1) := by
  rw [input17311_def, output17311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child17310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output17310_skip]
  kernel_rfl

theorem node17312_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value5 value1 value2 = (output374, value191, value1))
    (child17311 : Flapjack.WordAlloc.removeDeadStructural input17311 value191 value1 value2 = (output17311, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17312 value5 value1 value2 = (output17312, value6896, value1) := by
  rw [input17312_def, output17312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child17311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output17311_skip]
  kernel_rfl

theorem node17313_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value184 value1 value2 = (output371, value5, value1))
    (child17312 : Flapjack.WordAlloc.removeDeadStructural input17312 value5 value1 value2 = (output17312, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17313 value184 value1 value2 = (output17313, value6896, value1) := by
  rw [input17313_def, output17313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child17312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output17312_skip]
  kernel_rfl

theorem node17314_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value184 value1 value2 = (output360, value184, value1))
    (child17313 : Flapjack.WordAlloc.removeDeadStructural input17313 value184 value1 value2 = (output17313, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17314 value184 value1 value2 = (output17314, value6896, value1) := by
  rw [input17314_def, output17314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child17313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output17313_skip]
  kernel_rfl

theorem node17315_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value183 value1 value2 = (output359, value184, value1))
    (child17314 : Flapjack.WordAlloc.removeDeadStructural input17314 value184 value1 value2 = (output17314, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17315 value183 value1 value2 = (output17315, value6896, value1) := by
  rw [input17315_def, output17315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child17314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output17314_skip]
  kernel_rfl

theorem node17316_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value5 value1 value2 = (output358, value183, value1))
    (child17315 : Flapjack.WordAlloc.removeDeadStructural input17315 value183 value1 value2 = (output17315, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17316 value5 value1 value2 = (output17316, value6896, value1) := by
  rw [input17316_def, output17316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child17315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output17315_skip]
  kernel_rfl

theorem node17317_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value176 value1 value2 = (output355, value5, value1))
    (child17316 : Flapjack.WordAlloc.removeDeadStructural input17316 value5 value1 value2 = (output17316, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17317 value176 value1 value2 = (output17317, value6896, value1) := by
  rw [input17317_def, output17317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child17316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output17316_skip]
  kernel_rfl

theorem node17318_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value176 value1 value2 = (output344, value176, value1))
    (child17317 : Flapjack.WordAlloc.removeDeadStructural input17317 value176 value1 value2 = (output17317, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17318 value176 value1 value2 = (output17318, value6896, value1) := by
  rw [input17318_def, output17318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child17317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output17317_skip]
  kernel_rfl

theorem node17319_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value175 value1 value2 = (output343, value176, value1))
    (child17318 : Flapjack.WordAlloc.removeDeadStructural input17318 value176 value1 value2 = (output17318, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17319 value175 value1 value2 = (output17319, value6896, value1) := by
  rw [input17319_def, output17319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child17318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output17318_skip]
  kernel_rfl

theorem node17320_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value5 value1 value2 = (output342, value175, value1))
    (child17319 : Flapjack.WordAlloc.removeDeadStructural input17319 value175 value1 value2 = (output17319, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17320 value5 value1 value2 = (output17320, value6896, value1) := by
  rw [input17320_def, output17320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child17319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output17319_skip]
  kernel_rfl

theorem node17321_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value168 value1 value2 = (output339, value5, value1))
    (child17320 : Flapjack.WordAlloc.removeDeadStructural input17320 value5 value1 value2 = (output17320, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17321 value168 value1 value2 = (output17321, value6896, value1) := by
  rw [input17321_def, output17321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child17320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output17320_skip]
  kernel_rfl

theorem node17322_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value168 value1 value2 = (output328, value168, value1))
    (child17321 : Flapjack.WordAlloc.removeDeadStructural input17321 value168 value1 value2 = (output17321, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17322 value168 value1 value2 = (output17322, value6896, value1) := by
  rw [input17322_def, output17322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child17321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output17321_skip]
  kernel_rfl

theorem node17323_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value167 value1 value2 = (output327, value168, value1))
    (child17322 : Flapjack.WordAlloc.removeDeadStructural input17322 value168 value1 value2 = (output17322, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17323 value167 value1 value2 = (output17323, value6896, value1) := by
  rw [input17323_def, output17323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child17322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output17322_skip]
  kernel_rfl

theorem node17324_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value5 value1 value2 = (output326, value167, value1))
    (child17323 : Flapjack.WordAlloc.removeDeadStructural input17323 value167 value1 value2 = (output17323, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17324 value5 value1 value2 = (output17324, value6896, value1) := by
  rw [input17324_def, output17324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child17323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output17323_skip]
  kernel_rfl

theorem node17325_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value160 value1 value2 = (output323, value5, value1))
    (child17324 : Flapjack.WordAlloc.removeDeadStructural input17324 value5 value1 value2 = (output17324, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17325 value160 value1 value2 = (output17325, value6896, value1) := by
  rw [input17325_def, output17325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child17324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output17324_skip]
  kernel_rfl

theorem node17326_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value160 value1 value2 = (output312, value160, value1))
    (child17325 : Flapjack.WordAlloc.removeDeadStructural input17325 value160 value1 value2 = (output17325, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17326 value160 value1 value2 = (output17326, value6896, value1) := by
  rw [input17326_def, output17326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child17325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output17325_skip]
  kernel_rfl

theorem node17327_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value159 value1 value2 = (output311, value160, value1))
    (child17326 : Flapjack.WordAlloc.removeDeadStructural input17326 value160 value1 value2 = (output17326, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17327 value159 value1 value2 = (output17327, value6896, value1) := by
  rw [input17327_def, output17327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child17326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output17326_skip]
  kernel_rfl

theorem node17328_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value5 value1 value2 = (output310, value159, value1))
    (child17327 : Flapjack.WordAlloc.removeDeadStructural input17327 value159 value1 value2 = (output17327, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17328 value5 value1 value2 = (output17328, value6896, value1) := by
  rw [input17328_def, output17328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child17327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output17327_skip]
  kernel_rfl

theorem node17329_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value152 value1 value2 = (output307, value5, value1))
    (child17328 : Flapjack.WordAlloc.removeDeadStructural input17328 value5 value1 value2 = (output17328, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17329 value152 value1 value2 = (output17329, value6896, value1) := by
  rw [input17329_def, output17329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child17328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output17328_skip]
  kernel_rfl

theorem node17330_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value152 value1 value2 = (output296, value152, value1))
    (child17329 : Flapjack.WordAlloc.removeDeadStructural input17329 value152 value1 value2 = (output17329, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17330 value152 value1 value2 = (output17330, value6896, value1) := by
  rw [input17330_def, output17330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child17329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output17329_skip]
  kernel_rfl

theorem node17331_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value151 value1 value2 = (output295, value152, value1))
    (child17330 : Flapjack.WordAlloc.removeDeadStructural input17330 value152 value1 value2 = (output17330, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17331 value151 value1 value2 = (output17331, value6896, value1) := by
  rw [input17331_def, output17331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  try dsimp only
  rw [child17330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output295_skip, output17330_skip]
  kernel_rfl

theorem node17332_cond_eq
    (child294 : Flapjack.WordAlloc.removeDeadStructural input294 value5 value1 value2 = (output294, value151, value1))
    (child17331 : Flapjack.WordAlloc.removeDeadStructural input17331 value151 value1 value2 = (output17331, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17332 value5 value1 value2 = (output17332, value6896, value1) := by
  rw [input17332_def, output17332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child294]
  try dsimp only
  rw [child17331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output294_skip, output17331_skip]
  kernel_rfl

theorem node17333_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value144 value1 value2 = (output291, value5, value1))
    (child17332 : Flapjack.WordAlloc.removeDeadStructural input17332 value5 value1 value2 = (output17332, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17333 value144 value1 value2 = (output17333, value6896, value1) := by
  rw [input17333_def, output17333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child17332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output17332_skip]
  kernel_rfl

theorem node17334_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value144 value1 value2 = (output280, value144, value1))
    (child17333 : Flapjack.WordAlloc.removeDeadStructural input17333 value144 value1 value2 = (output17333, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17334 value144 value1 value2 = (output17334, value6896, value1) := by
  rw [input17334_def, output17334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child17333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output17333_skip]
  kernel_rfl

theorem node17335_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value143 value1 value2 = (output279, value144, value1))
    (child17334 : Flapjack.WordAlloc.removeDeadStructural input17334 value144 value1 value2 = (output17334, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17335 value143 value1 value2 = (output17335, value6896, value1) := by
  rw [input17335_def, output17335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child17334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output17334_skip]
  kernel_rfl

theorem node17336_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value5 value1 value2 = (output278, value143, value1))
    (child17335 : Flapjack.WordAlloc.removeDeadStructural input17335 value143 value1 value2 = (output17335, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17336 value5 value1 value2 = (output17336, value6896, value1) := by
  rw [input17336_def, output17336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child17335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output17335_skip]
  kernel_rfl

theorem node17337_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value136 value1 value2 = (output275, value5, value1))
    (child17336 : Flapjack.WordAlloc.removeDeadStructural input17336 value5 value1 value2 = (output17336, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17337 value136 value1 value2 = (output17337, value6896, value1) := by
  rw [input17337_def, output17337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child17336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output17336_skip]
  kernel_rfl

theorem node17338_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value136 value1 value2 = (output264, value136, value1))
    (child17337 : Flapjack.WordAlloc.removeDeadStructural input17337 value136 value1 value2 = (output17337, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17338 value136 value1 value2 = (output17338, value6896, value1) := by
  rw [input17338_def, output17338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child17337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output17337_skip]
  kernel_rfl

theorem node17339_cond_eq
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value135 value1 value2 = (output263, value136, value1))
    (child17338 : Flapjack.WordAlloc.removeDeadStructural input17338 value136 value1 value2 = (output17338, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17339 value135 value1 value2 = (output17339, value6896, value1) := by
  rw [input17339_def, output17339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child263]
  try dsimp only
  rw [child17338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output263_skip, output17338_skip]
  kernel_rfl

theorem node17340_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value5 value1 value2 = (output262, value135, value1))
    (child17339 : Flapjack.WordAlloc.removeDeadStructural input17339 value135 value1 value2 = (output17339, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17340 value5 value1 value2 = (output17340, value6896, value1) := by
  rw [input17340_def, output17340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child17339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output17339_skip]
  kernel_rfl

theorem node17341_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value128 value1 value2 = (output259, value5, value1))
    (child17340 : Flapjack.WordAlloc.removeDeadStructural input17340 value5 value1 value2 = (output17340, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17341 value128 value1 value2 = (output17341, value6896, value1) := by
  rw [input17341_def, output17341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child17340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output17340_skip]
  kernel_rfl

theorem node17342_cond_eq
    (child248 : Flapjack.WordAlloc.removeDeadStructural input248 value128 value1 value2 = (output248, value128, value1))
    (child17341 : Flapjack.WordAlloc.removeDeadStructural input17341 value128 value1 value2 = (output17341, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17342 value128 value1 value2 = (output17342, value6896, value1) := by
  rw [input17342_def, output17342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child248]
  try dsimp only
  rw [child17341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output248_skip, output17341_skip]
  kernel_rfl

theorem node17343_cond_eq
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value127 value1 value2 = (output247, value128, value1))
    (child17342 : Flapjack.WordAlloc.removeDeadStructural input17342 value128 value1 value2 = (output17342, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17343 value127 value1 value2 = (output17343, value6896, value1) := by
  rw [input17343_def, output17343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child247]
  try dsimp only
  rw [child17342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output247_skip, output17342_skip]
  kernel_rfl

theorem node17344_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value5 value1 value2 = (output246, value127, value1))
    (child17343 : Flapjack.WordAlloc.removeDeadStructural input17343 value127 value1 value2 = (output17343, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17344 value5 value1 value2 = (output17344, value6896, value1) := by
  rw [input17344_def, output17344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  try dsimp only
  rw [child17343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output246_skip, output17343_skip]
  kernel_rfl

theorem node17345_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value120 value1 value2 = (output243, value5, value1))
    (child17344 : Flapjack.WordAlloc.removeDeadStructural input17344 value5 value1 value2 = (output17344, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17345 value120 value1 value2 = (output17345, value6896, value1) := by
  rw [input17345_def, output17345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child17344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output17344_skip]
  kernel_rfl

theorem node17346_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value120 value1 value2 = (output232, value120, value1))
    (child17345 : Flapjack.WordAlloc.removeDeadStructural input17345 value120 value1 value2 = (output17345, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17346 value120 value1 value2 = (output17346, value6896, value1) := by
  rw [input17346_def, output17346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child17345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output17345_skip]
  kernel_rfl

theorem node17347_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value119 value1 value2 = (output231, value120, value1))
    (child17346 : Flapjack.WordAlloc.removeDeadStructural input17346 value120 value1 value2 = (output17346, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17347 value119 value1 value2 = (output17347, value6896, value1) := by
  rw [input17347_def, output17347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child17346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output17346_skip]
  kernel_rfl

theorem node17348_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value5 value1 value2 = (output230, value119, value1))
    (child17347 : Flapjack.WordAlloc.removeDeadStructural input17347 value119 value1 value2 = (output17347, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17348 value5 value1 value2 = (output17348, value6896, value1) := by
  rw [input17348_def, output17348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child17347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output17347_skip]
  kernel_rfl

theorem node17349_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value112 value1 value2 = (output227, value5, value1))
    (child17348 : Flapjack.WordAlloc.removeDeadStructural input17348 value5 value1 value2 = (output17348, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17349 value112 value1 value2 = (output17349, value6896, value1) := by
  rw [input17349_def, output17349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child17348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output17348_skip]
  kernel_rfl

theorem node17350_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value112 value1 value2 = (output216, value112, value1))
    (child17349 : Flapjack.WordAlloc.removeDeadStructural input17349 value112 value1 value2 = (output17349, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17350 value112 value1 value2 = (output17350, value6896, value1) := by
  rw [input17350_def, output17350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child17349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output17349_skip]
  kernel_rfl

theorem node17351_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value111 value1 value2 = (output215, value112, value1))
    (child17350 : Flapjack.WordAlloc.removeDeadStructural input17350 value112 value1 value2 = (output17350, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17351 value111 value1 value2 = (output17351, value6896, value1) := by
  rw [input17351_def, output17351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child17350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output17350_skip]
  kernel_rfl

theorem node17352_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value5 value1 value2 = (output214, value111, value1))
    (child17351 : Flapjack.WordAlloc.removeDeadStructural input17351 value111 value1 value2 = (output17351, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17352 value5 value1 value2 = (output17352, value6896, value1) := by
  rw [input17352_def, output17352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child17351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output17351_skip]
  kernel_rfl

theorem node17353_cond_eq
    (child211 : Flapjack.WordAlloc.removeDeadStructural input211 value104 value1 value2 = (output211, value5, value1))
    (child17352 : Flapjack.WordAlloc.removeDeadStructural input17352 value5 value1 value2 = (output17352, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17353 value104 value1 value2 = (output17353, value6896, value1) := by
  rw [input17353_def, output17353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child211]
  try dsimp only
  rw [child17352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output211_skip, output17352_skip]
  kernel_rfl

theorem node17354_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value104 value1 value2 = (output200, value104, value1))
    (child17353 : Flapjack.WordAlloc.removeDeadStructural input17353 value104 value1 value2 = (output17353, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17354 value104 value1 value2 = (output17354, value6896, value1) := by
  rw [input17354_def, output17354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child17353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output17353_skip]
  kernel_rfl

theorem node17355_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value103 value1 value2 = (output199, value104, value1))
    (child17354 : Flapjack.WordAlloc.removeDeadStructural input17354 value104 value1 value2 = (output17354, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17355 value103 value1 value2 = (output17355, value6896, value1) := by
  rw [input17355_def, output17355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child17354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output17354_skip]
  kernel_rfl

theorem node17356_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value5 value1 value2 = (output198, value103, value1))
    (child17355 : Flapjack.WordAlloc.removeDeadStructural input17355 value103 value1 value2 = (output17355, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17356 value5 value1 value2 = (output17356, value6896, value1) := by
  rw [input17356_def, output17356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child17355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output17355_skip]
  kernel_rfl

theorem node17357_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value96 value1 value2 = (output195, value5, value1))
    (child17356 : Flapjack.WordAlloc.removeDeadStructural input17356 value5 value1 value2 = (output17356, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17357 value96 value1 value2 = (output17357, value6896, value1) := by
  rw [input17357_def, output17357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child17356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output17356_skip]
  kernel_rfl

theorem node17358_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value96 value1 value2 = (output184, value96, value1))
    (child17357 : Flapjack.WordAlloc.removeDeadStructural input17357 value96 value1 value2 = (output17357, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17358 value96 value1 value2 = (output17358, value6896, value1) := by
  rw [input17358_def, output17358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child17357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output17357_skip]
  kernel_rfl

theorem node17359_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value95 value1 value2 = (output183, value96, value1))
    (child17358 : Flapjack.WordAlloc.removeDeadStructural input17358 value96 value1 value2 = (output17358, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17359 value95 value1 value2 = (output17359, value6896, value1) := by
  rw [input17359_def, output17359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child17358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output17358_skip]
  kernel_rfl

theorem node17360_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value5 value1 value2 = (output182, value95, value1))
    (child17359 : Flapjack.WordAlloc.removeDeadStructural input17359 value95 value1 value2 = (output17359, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17360 value5 value1 value2 = (output17360, value6896, value1) := by
  rw [input17360_def, output17360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child17359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output17359_skip]
  kernel_rfl

theorem node17361_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value88 value1 value2 = (output179, value5, value1))
    (child17360 : Flapjack.WordAlloc.removeDeadStructural input17360 value5 value1 value2 = (output17360, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17361 value88 value1 value2 = (output17361, value6896, value1) := by
  rw [input17361_def, output17361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child17360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output17360_skip]
  kernel_rfl

theorem node17362_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value88 value1 value2 = (output168, value88, value1))
    (child17361 : Flapjack.WordAlloc.removeDeadStructural input17361 value88 value1 value2 = (output17361, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17362 value88 value1 value2 = (output17362, value6896, value1) := by
  rw [input17362_def, output17362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child17361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output17361_skip]
  kernel_rfl

theorem node17363_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value87 value1 value2 = (output167, value88, value1))
    (child17362 : Flapjack.WordAlloc.removeDeadStructural input17362 value88 value1 value2 = (output17362, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17363 value87 value1 value2 = (output17363, value6896, value1) := by
  rw [input17363_def, output17363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child17362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output17362_skip]
  kernel_rfl

theorem node17364_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value5 value1 value2 = (output166, value87, value1))
    (child17363 : Flapjack.WordAlloc.removeDeadStructural input17363 value87 value1 value2 = (output17363, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17364 value5 value1 value2 = (output17364, value6896, value1) := by
  rw [input17364_def, output17364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child17363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output17363_skip]
  kernel_rfl

theorem node17365_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value80 value1 value2 = (output163, value5, value1))
    (child17364 : Flapjack.WordAlloc.removeDeadStructural input17364 value5 value1 value2 = (output17364, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17365 value80 value1 value2 = (output17365, value6896, value1) := by
  rw [input17365_def, output17365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child17364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output17364_skip]
  kernel_rfl

theorem node17366_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value80 value1 value2 = (output152, value80, value1))
    (child17365 : Flapjack.WordAlloc.removeDeadStructural input17365 value80 value1 value2 = (output17365, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17366 value80 value1 value2 = (output17366, value6896, value1) := by
  rw [input17366_def, output17366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child17365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output17365_skip]
  kernel_rfl

theorem node17367_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value79 value1 value2 = (output151, value80, value1))
    (child17366 : Flapjack.WordAlloc.removeDeadStructural input17366 value80 value1 value2 = (output17366, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17367 value79 value1 value2 = (output17367, value6896, value1) := by
  rw [input17367_def, output17367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child17366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output17366_skip]
  kernel_rfl

theorem node17368_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value5 value1 value2 = (output150, value79, value1))
    (child17367 : Flapjack.WordAlloc.removeDeadStructural input17367 value79 value1 value2 = (output17367, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17368 value5 value1 value2 = (output17368, value6896, value1) := by
  rw [input17368_def, output17368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child17367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output17367_skip]
  kernel_rfl

theorem node17369_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value72 value1 value2 = (output147, value5, value1))
    (child17368 : Flapjack.WordAlloc.removeDeadStructural input17368 value5 value1 value2 = (output17368, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17369 value72 value1 value2 = (output17369, value6896, value1) := by
  rw [input17369_def, output17369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child17368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output17368_skip]
  kernel_rfl

theorem node17370_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value72 value1 value2 = (output136, value72, value1))
    (child17369 : Flapjack.WordAlloc.removeDeadStructural input17369 value72 value1 value2 = (output17369, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17370 value72 value1 value2 = (output17370, value6896, value1) := by
  rw [input17370_def, output17370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child17369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output17369_skip]
  kernel_rfl

theorem node17371_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value71 value1 value2 = (output135, value72, value1))
    (child17370 : Flapjack.WordAlloc.removeDeadStructural input17370 value72 value1 value2 = (output17370, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17371 value71 value1 value2 = (output17371, value6896, value1) := by
  rw [input17371_def, output17371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child17370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output17370_skip]
  kernel_rfl

theorem node17372_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value5 value1 value2 = (output134, value71, value1))
    (child17371 : Flapjack.WordAlloc.removeDeadStructural input17371 value71 value1 value2 = (output17371, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17372 value5 value1 value2 = (output17372, value6896, value1) := by
  rw [input17372_def, output17372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child17371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output17371_skip]
  kernel_rfl

theorem node17373_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value64 value1 value2 = (output131, value5, value1))
    (child17372 : Flapjack.WordAlloc.removeDeadStructural input17372 value5 value1 value2 = (output17372, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17373 value64 value1 value2 = (output17373, value6896, value1) := by
  rw [input17373_def, output17373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child17372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output131_skip, output17372_skip]
  kernel_rfl

theorem node17374_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value64 value1 value2 = (output120, value64, value1))
    (child17373 : Flapjack.WordAlloc.removeDeadStructural input17373 value64 value1 value2 = (output17373, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17374 value64 value1 value2 = (output17374, value6896, value1) := by
  rw [input17374_def, output17374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child17373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output17373_skip]
  kernel_rfl

theorem node17375_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value63 value1 value2 = (output119, value64, value1))
    (child17374 : Flapjack.WordAlloc.removeDeadStructural input17374 value64 value1 value2 = (output17374, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17375 value63 value1 value2 = (output17375, value6896, value1) := by
  rw [input17375_def, output17375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child17374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output17374_skip]
  kernel_rfl

theorem node17376_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value5 value1 value2 = (output118, value63, value1))
    (child17375 : Flapjack.WordAlloc.removeDeadStructural input17375 value63 value1 value2 = (output17375, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17376 value5 value1 value2 = (output17376, value6896, value1) := by
  rw [input17376_def, output17376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child17375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output17375_skip]
  kernel_rfl

theorem node17377_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value56 value1 value2 = (output115, value5, value1))
    (child17376 : Flapjack.WordAlloc.removeDeadStructural input17376 value5 value1 value2 = (output17376, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17377 value56 value1 value2 = (output17377, value6896, value1) := by
  rw [input17377_def, output17377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child17376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output17376_skip]
  kernel_rfl

theorem node17378_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value56 value1 value2 = (output104, value56, value1))
    (child17377 : Flapjack.WordAlloc.removeDeadStructural input17377 value56 value1 value2 = (output17377, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17378 value56 value1 value2 = (output17378, value6896, value1) := by
  rw [input17378_def, output17378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child17377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output17377_skip]
  kernel_rfl

theorem node17379_cond_eq
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value55 value1 value2 = (output103, value56, value1))
    (child17378 : Flapjack.WordAlloc.removeDeadStructural input17378 value56 value1 value2 = (output17378, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17379 value55 value1 value2 = (output17379, value6896, value1) := by
  rw [input17379_def, output17379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child103]
  try dsimp only
  rw [child17378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output103_skip, output17378_skip]
  kernel_rfl

theorem node17380_cond_eq
    (child102 : Flapjack.WordAlloc.removeDeadStructural input102 value5 value1 value2 = (output102, value55, value1))
    (child17379 : Flapjack.WordAlloc.removeDeadStructural input17379 value55 value1 value2 = (output17379, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17380 value5 value1 value2 = (output17380, value6896, value1) := by
  rw [input17380_def, output17380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child102]
  try dsimp only
  rw [child17379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output102_skip, output17379_skip]
  kernel_rfl

theorem node17381_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value48 value1 value2 = (output99, value5, value1))
    (child17380 : Flapjack.WordAlloc.removeDeadStructural input17380 value5 value1 value2 = (output17380, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17381 value48 value1 value2 = (output17381, value6896, value1) := by
  rw [input17381_def, output17381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child17380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output17380_skip]
  kernel_rfl

theorem node17382_cond_eq
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value48 value1 value2 = (output88, value48, value1))
    (child17381 : Flapjack.WordAlloc.removeDeadStructural input17381 value48 value1 value2 = (output17381, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17382 value48 value1 value2 = (output17382, value6896, value1) := by
  rw [input17382_def, output17382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child88]
  try dsimp only
  rw [child17381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output88_skip, output17381_skip]
  kernel_rfl

theorem node17383_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value47 value1 value2 = (output87, value48, value1))
    (child17382 : Flapjack.WordAlloc.removeDeadStructural input17382 value48 value1 value2 = (output17382, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17383 value47 value1 value2 = (output17383, value6896, value1) := by
  rw [input17383_def, output17383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child17382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output17382_skip]
  kernel_rfl

theorem node17384_cond_eq
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value5 value1 value2 = (output86, value47, value1))
    (child17383 : Flapjack.WordAlloc.removeDeadStructural input17383 value47 value1 value2 = (output17383, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17384 value5 value1 value2 = (output17384, value6896, value1) := by
  rw [input17384_def, output17384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child86]
  try dsimp only
  rw [child17383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output86_skip, output17383_skip]
  kernel_rfl

theorem node17385_cond_eq
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value40 value1 value2 = (output83, value5, value1))
    (child17384 : Flapjack.WordAlloc.removeDeadStructural input17384 value5 value1 value2 = (output17384, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17385 value40 value1 value2 = (output17385, value6896, value1) := by
  rw [input17385_def, output17385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child83]
  try dsimp only
  rw [child17384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output83_skip, output17384_skip]
  kernel_rfl

theorem node17386_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value40 value1 value2 = (output72, value40, value1))
    (child17385 : Flapjack.WordAlloc.removeDeadStructural input17385 value40 value1 value2 = (output17385, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17386 value40 value1 value2 = (output17386, value6896, value1) := by
  rw [input17386_def, output17386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child17385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output72_skip, output17385_skip]
  kernel_rfl

theorem node17387_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value39 value1 value2 = (output71, value40, value1))
    (child17386 : Flapjack.WordAlloc.removeDeadStructural input17386 value40 value1 value2 = (output17386, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17387 value39 value1 value2 = (output17387, value6896, value1) := by
  rw [input17387_def, output17387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child17386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output17386_skip]
  kernel_rfl

theorem node17388_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value5 value1 value2 = (output70, value39, value1))
    (child17387 : Flapjack.WordAlloc.removeDeadStructural input17387 value39 value1 value2 = (output17387, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17388 value5 value1 value2 = (output17388, value6896, value1) := by
  rw [input17388_def, output17388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child17387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output17387_skip]
  kernel_rfl

theorem node17389_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value32 value1 value2 = (output67, value5, value1))
    (child17388 : Flapjack.WordAlloc.removeDeadStructural input17388 value5 value1 value2 = (output17388, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17389 value32 value1 value2 = (output17389, value6896, value1) := by
  rw [input17389_def, output17389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child17388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output17388_skip]
  kernel_rfl

theorem node17390_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value32 value1 value2 = (output56, value32, value1))
    (child17389 : Flapjack.WordAlloc.removeDeadStructural input17389 value32 value1 value2 = (output17389, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17390 value32 value1 value2 = (output17390, value6896, value1) := by
  rw [input17390_def, output17390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child17389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output17389_skip]
  kernel_rfl

theorem node17391_cond_eq
    (child55 : Flapjack.WordAlloc.removeDeadStructural input55 value31 value1 value2 = (output55, value32, value1))
    (child17390 : Flapjack.WordAlloc.removeDeadStructural input17390 value32 value1 value2 = (output17390, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17391 value31 value1 value2 = (output17391, value6896, value1) := by
  rw [input17391_def, output17391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child55]
  try dsimp only
  rw [child17390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output55_skip, output17390_skip]
  kernel_rfl

theorem node17392_cond_eq
    (child54 : Flapjack.WordAlloc.removeDeadStructural input54 value5 value1 value2 = (output54, value31, value1))
    (child17391 : Flapjack.WordAlloc.removeDeadStructural input17391 value31 value1 value2 = (output17391, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17392 value5 value1 value2 = (output17392, value6896, value1) := by
  rw [input17392_def, output17392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child54]
  try dsimp only
  rw [child17391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output54_skip, output17391_skip]
  kernel_rfl

theorem node17393_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value24 value1 value2 = (output51, value5, value1))
    (child17392 : Flapjack.WordAlloc.removeDeadStructural input17392 value5 value1 value2 = (output17392, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17393 value24 value1 value2 = (output17393, value6896, value1) := by
  rw [input17393_def, output17393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child17392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output17392_skip]
  kernel_rfl

theorem node17394_cond_eq
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value24 value1 value2 = (output40, value24, value1))
    (child17393 : Flapjack.WordAlloc.removeDeadStructural input17393 value24 value1 value2 = (output17393, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17394 value24 value1 value2 = (output17394, value6896, value1) := by
  rw [input17394_def, output17394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child40]
  try dsimp only
  rw [child17393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output40_skip, output17393_skip]
  kernel_rfl

theorem node17395_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value23 value1 value2 = (output39, value24, value1))
    (child17394 : Flapjack.WordAlloc.removeDeadStructural input17394 value24 value1 value2 = (output17394, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17395 value23 value1 value2 = (output17395, value6896, value1) := by
  rw [input17395_def, output17395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child17394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output39_skip, output17394_skip]
  kernel_rfl

theorem node17396_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value5 value1 value2 = (output38, value23, value1))
    (child17395 : Flapjack.WordAlloc.removeDeadStructural input17395 value23 value1 value2 = (output17395, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17396 value5 value1 value2 = (output17396, value6896, value1) := by
  rw [input17396_def, output17396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child17395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output17395_skip]
  kernel_rfl

theorem node17397_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value16 value1 value2 = (output35, value5, value1))
    (child17396 : Flapjack.WordAlloc.removeDeadStructural input17396 value5 value1 value2 = (output17396, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17397 value16 value1 value2 = (output17397, value6896, value1) := by
  rw [input17397_def, output17397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child17396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output17396_skip]
  kernel_rfl

theorem node17398_cond_eq
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value16 value1 value2 = (output24, value16, value1))
    (child17397 : Flapjack.WordAlloc.removeDeadStructural input17397 value16 value1 value2 = (output17397, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17398 value16 value1 value2 = (output17398, value6896, value1) := by
  rw [input17398_def, output17398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child24]
  try dsimp only
  rw [child17397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output24_skip, output17397_skip]
  kernel_rfl

theorem node17399_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value15 value1 value2 = (output23, value16, value1))
    (child17398 : Flapjack.WordAlloc.removeDeadStructural input17398 value16 value1 value2 = (output17398, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17399 value15 value1 value2 = (output17399, value6896, value1) := by
  rw [input17399_def, output17399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child17398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output17398_skip]
  kernel_rfl

theorem node17400_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value5 value1 value2 = (output22, value15, value1))
    (child17399 : Flapjack.WordAlloc.removeDeadStructural input17399 value15 value1 value2 = (output17399, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17400 value5 value1 value2 = (output17400, value6896, value1) := by
  rw [input17400_def, output17400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child17399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output17399_skip]
  kernel_rfl

theorem node17401_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value8 value1 value2 = (output19, value5, value1))
    (child17400 : Flapjack.WordAlloc.removeDeadStructural input17400 value5 value1 value2 = (output17400, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17401 value8 value1 value2 = (output17401, value6896, value1) := by
  rw [input17401_def, output17401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child17400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output17400_skip]
  kernel_rfl

theorem node17402_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value8 value1 value2 = (output8, value8, value1))
    (child17401 : Flapjack.WordAlloc.removeDeadStructural input17401 value8 value1 value2 = (output17401, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17402 value8 value1 value2 = (output17402, value6896, value1) := by
  rw [input17402_def, output17402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child17401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output17401_skip]
  kernel_rfl

theorem node17403_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child17402 : Flapjack.WordAlloc.removeDeadStructural input17402 value8 value1 value2 = (output17402, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17403 value7 value1 value2 = (output17403, value6896, value1) := by
  rw [input17403_def, output17403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child17402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output17402_skip]
  kernel_rfl

theorem node17404_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child17403 : Flapjack.WordAlloc.removeDeadStructural input17403 value7 value1 value2 = (output17403, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17404 value5 value1 value2 = (output17404, value6896, value1) := by
  rw [input17404_def, output17404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child17403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output17403_skip]
  kernel_rfl

theorem node17405_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child17404 : Flapjack.WordAlloc.removeDeadStructural input17404 value5 value1 value2 = (output17404, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17405 value4 value1 value2 = (output17405, value6896, value1) := by
  rw [input17405_def, output17405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child17404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output17404_skip]
  kernel_rfl

theorem node17406_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child17405 : Flapjack.WordAlloc.removeDeadStructural input17405 value4 value1 value2 = (output17405, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17406 value0 value1 value2 = (output17406, value6896, value1) := by
  rw [input17406_def, output17406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child17405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output17405_skip]
  kernel_rfl

theorem node17407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input17407 value6896 value1 value2 = (output17407, value6906, value1) := by
  rw [input17407_def, output17407_def]
  kernel_rfl

#print axioms node17407_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
