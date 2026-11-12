import InitECandidate.Proofs.BackendStages.Native
import InitECandidate.Proofs.StackAnalysis.Data
import InitECandidate.Solver.Concrete.Word.Chunk64_79
import InitECandidate.Solver.Concrete.Word.Chunk80_95
import InitECandidate.Solver.Concrete.Word.Chunk96_111
import InitECandidate.Solver.Concrete.Word.Chunk112_127
import InitECandidate.Solver.Concrete.Word.Chunk128_143
import InitECandidate.Solver.Concrete.Word.Chunk144_159
import InitECandidate.Solver.Concrete.Word.Chunk160_175
import InitECandidate.Solver.Concrete.Word.Chunk176_191
import InitECandidate.Solver.Concrete.Word.Chunk192_207
import InitECandidate.Solver.Concrete.Word.Chunk208_223
import InitECandidate.Solver.Concrete.Word.Chunk224_239
import InitECandidate.Solver.Concrete.Word.Chunk240_255
import InitECandidate.Solver.Concrete.Word.Chunk256_271
import InitECandidate.Solver.Concrete.Word.Chunk272_287
import InitECandidate.Solver.Concrete.Word.Chunk288_303
import InitECandidate.Solver.Concrete.Word.Chunk304_319
import InitECandidate.Solver.Concrete.Word.Chunk320_335
import InitECandidate.Solver.Concrete.Word.Chunk336_351
import InitECandidate.Solver.Concrete.Word.Chunk352_367
import InitECandidate.Solver.Concrete.Word.Chunk368_383
import InitECandidate.Solver.Concrete.Word.Chunk384_399
import InitECandidate.Solver.Concrete.Word.Chunk400_415
import InitECandidate.Solver.Concrete.Word.Chunk416_431
import InitECandidate.Solver.Concrete.Word.Chunk432_447
import InitECandidate.Solver.Concrete.Word.Chunk448_463
import InitECandidate.Solver.Concrete.Word.Chunk464_479
import InitECandidate.Solver.Concrete.Word.Chunk480_495
import InitECandidate.Solver.Concrete.Word.Chunk496_511
import InitECandidate.Solver.Concrete.Word.Chunk512_527
import InitECandidate.Solver.Concrete.Word.Chunk528_543
import InitECandidate.Solver.Concrete.Word.Chunk544_559
import InitECandidate.Solver.Concrete.Word.Chunk560_575
import InitECandidate.Solver.Concrete.Word.Chunk576_591
import InitECandidate.Solver.Concrete.Word.Chunk592_607
import InitECandidate.Solver.Concrete.Word.Chunk608_623
import InitECandidate.Solver.Concrete.Word.Chunk624_639
import InitECandidate.Solver.Concrete.Word.Chunk640_655
import InitECandidate.Solver.Concrete.Word.Chunk656_671
import InitECandidate.Solver.Concrete.Word.Chunk672_687
import InitECandidate.Solver.Concrete.Word.Chunk688_703
import InitECandidate.Solver.Concrete.Word.Chunk704_719
import InitECandidate.Solver.Concrete.Word.Chunk720_735
import InitECandidate.Solver.Concrete.Word.Chunk736_751
import InitECandidate.Solver.Concrete.Word.Chunk752_767
import InitECandidate.Solver.Concrete.Word.Chunk768_783
import InitECandidate.Solver.Concrete.Word.Chunk784_799
import InitECandidate.Solver.Concrete.Word.Chunk800_815
import InitECandidate.Solver.Concrete.Word.Chunk816_831
import InitECandidate.Solver.Concrete.Word.Chunk832_847
import InitECandidate.Solver.Concrete.Word.Chunk848_863
import InitECandidate.Solver.Concrete.Word.Chunk864_877

/-!
# `wsize ≤ wordS` on the baseline's post-`word_to_word` program

The word program the baseline feeds to `word_to_stack` (the `code` of
`WordToStack.entrySimulationB_makeInit`, i.e. the `wprog` of
`WordToWord.compile … (panToWordCompileProgHOL …) = (col, wprog)` in Flapjack's pan-to-target
proof) is `BackendStages.Native.programs0` (`= StackAnalysis.outputs`, `Native.programs_eq`; the
baseline's optimizer equation `WordBackend.compileWith_eq` + `StackAgreement.outputs_eq`, used in
`ArtifactComposition.lean`). Its 814 procedures (labels `64`–`877`) all have
`wsize ≤ wordS = 19619` (attained at label `877`). Checked per baseline shard
(`Concrete/Word/Chunk*.lean`), composed along the baseline's own `Native.programs_k` chain.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Word

open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler

theorem programs51_ok : Native.programs51.all (wordOkB wordS) = true := rfl
theorem programs50_ok : Native.programs50.all (wordOkB wordS) = true := by
  unfold Native.programs50
  exact all_append_of Word.Chunk864_877.ok programs51_ok
theorem programs49_ok : Native.programs49.all (wordOkB wordS) = true := by
  unfold Native.programs49
  exact all_append_of Word.Chunk848_863.ok programs50_ok
theorem programs48_ok : Native.programs48.all (wordOkB wordS) = true := by
  unfold Native.programs48
  exact all_append_of Word.Chunk832_847.ok programs49_ok
theorem programs47_ok : Native.programs47.all (wordOkB wordS) = true := by
  unfold Native.programs47
  exact all_append_of Word.Chunk816_831.ok programs48_ok
theorem programs46_ok : Native.programs46.all (wordOkB wordS) = true := by
  unfold Native.programs46
  exact all_append_of Word.Chunk800_815.ok programs47_ok
theorem programs45_ok : Native.programs45.all (wordOkB wordS) = true := by
  unfold Native.programs45
  exact all_append_of Word.Chunk784_799.ok programs46_ok
theorem programs44_ok : Native.programs44.all (wordOkB wordS) = true := by
  unfold Native.programs44
  exact all_append_of Word.Chunk768_783.ok programs45_ok
theorem programs43_ok : Native.programs43.all (wordOkB wordS) = true := by
  unfold Native.programs43
  exact all_append_of Word.Chunk752_767.ok programs44_ok
theorem programs42_ok : Native.programs42.all (wordOkB wordS) = true := by
  unfold Native.programs42
  exact all_append_of Word.Chunk736_751.ok programs43_ok
theorem programs41_ok : Native.programs41.all (wordOkB wordS) = true := by
  unfold Native.programs41
  exact all_append_of Word.Chunk720_735.ok programs42_ok
theorem programs40_ok : Native.programs40.all (wordOkB wordS) = true := by
  unfold Native.programs40
  exact all_append_of Word.Chunk704_719.ok programs41_ok
theorem programs39_ok : Native.programs39.all (wordOkB wordS) = true := by
  unfold Native.programs39
  exact all_append_of Word.Chunk688_703.ok programs40_ok
theorem programs38_ok : Native.programs38.all (wordOkB wordS) = true := by
  unfold Native.programs38
  exact all_append_of Word.Chunk672_687.ok programs39_ok
theorem programs37_ok : Native.programs37.all (wordOkB wordS) = true := by
  unfold Native.programs37
  exact all_append_of Word.Chunk656_671.ok programs38_ok
theorem programs36_ok : Native.programs36.all (wordOkB wordS) = true := by
  unfold Native.programs36
  exact all_append_of Word.Chunk640_655.ok programs37_ok
theorem programs35_ok : Native.programs35.all (wordOkB wordS) = true := by
  unfold Native.programs35
  exact all_append_of Word.Chunk624_639.ok programs36_ok
theorem programs34_ok : Native.programs34.all (wordOkB wordS) = true := by
  unfold Native.programs34
  exact all_append_of Word.Chunk608_623.ok programs35_ok
theorem programs33_ok : Native.programs33.all (wordOkB wordS) = true := by
  unfold Native.programs33
  exact all_append_of Word.Chunk592_607.ok programs34_ok
theorem programs32_ok : Native.programs32.all (wordOkB wordS) = true := by
  unfold Native.programs32
  exact all_append_of Word.Chunk576_591.ok programs33_ok
theorem programs31_ok : Native.programs31.all (wordOkB wordS) = true := by
  unfold Native.programs31
  exact all_append_of Word.Chunk560_575.ok programs32_ok
theorem programs30_ok : Native.programs30.all (wordOkB wordS) = true := by
  unfold Native.programs30
  exact all_append_of Word.Chunk544_559.ok programs31_ok
theorem programs29_ok : Native.programs29.all (wordOkB wordS) = true := by
  unfold Native.programs29
  exact all_append_of Word.Chunk528_543.ok programs30_ok
theorem programs28_ok : Native.programs28.all (wordOkB wordS) = true := by
  unfold Native.programs28
  exact all_append_of Word.Chunk512_527.ok programs29_ok
theorem programs27_ok : Native.programs27.all (wordOkB wordS) = true := by
  unfold Native.programs27
  exact all_append_of Word.Chunk496_511.ok programs28_ok
theorem programs26_ok : Native.programs26.all (wordOkB wordS) = true := by
  unfold Native.programs26
  exact all_append_of Word.Chunk480_495.ok programs27_ok
theorem programs25_ok : Native.programs25.all (wordOkB wordS) = true := by
  unfold Native.programs25
  exact all_append_of Word.Chunk464_479.ok programs26_ok
theorem programs24_ok : Native.programs24.all (wordOkB wordS) = true := by
  unfold Native.programs24
  exact all_append_of Word.Chunk448_463.ok programs25_ok
theorem programs23_ok : Native.programs23.all (wordOkB wordS) = true := by
  unfold Native.programs23
  exact all_append_of Word.Chunk432_447.ok programs24_ok
theorem programs22_ok : Native.programs22.all (wordOkB wordS) = true := by
  unfold Native.programs22
  exact all_append_of Word.Chunk416_431.ok programs23_ok
theorem programs21_ok : Native.programs21.all (wordOkB wordS) = true := by
  unfold Native.programs21
  exact all_append_of Word.Chunk400_415.ok programs22_ok
theorem programs20_ok : Native.programs20.all (wordOkB wordS) = true := by
  unfold Native.programs20
  exact all_append_of Word.Chunk384_399.ok programs21_ok
theorem programs19_ok : Native.programs19.all (wordOkB wordS) = true := by
  unfold Native.programs19
  exact all_append_of Word.Chunk368_383.ok programs20_ok
theorem programs18_ok : Native.programs18.all (wordOkB wordS) = true := by
  unfold Native.programs18
  exact all_append_of Word.Chunk352_367.ok programs19_ok
theorem programs17_ok : Native.programs17.all (wordOkB wordS) = true := by
  unfold Native.programs17
  exact all_append_of Word.Chunk336_351.ok programs18_ok
theorem programs16_ok : Native.programs16.all (wordOkB wordS) = true := by
  unfold Native.programs16
  exact all_append_of Word.Chunk320_335.ok programs17_ok
theorem programs15_ok : Native.programs15.all (wordOkB wordS) = true := by
  unfold Native.programs15
  exact all_append_of Word.Chunk304_319.ok programs16_ok
theorem programs14_ok : Native.programs14.all (wordOkB wordS) = true := by
  unfold Native.programs14
  exact all_append_of Word.Chunk288_303.ok programs15_ok
theorem programs13_ok : Native.programs13.all (wordOkB wordS) = true := by
  unfold Native.programs13
  exact all_append_of Word.Chunk272_287.ok programs14_ok
theorem programs12_ok : Native.programs12.all (wordOkB wordS) = true := by
  unfold Native.programs12
  exact all_append_of Word.Chunk256_271.ok programs13_ok
theorem programs11_ok : Native.programs11.all (wordOkB wordS) = true := by
  unfold Native.programs11
  exact all_append_of Word.Chunk240_255.ok programs12_ok
theorem programs10_ok : Native.programs10.all (wordOkB wordS) = true := by
  unfold Native.programs10
  exact all_append_of Word.Chunk224_239.ok programs11_ok
theorem programs9_ok : Native.programs9.all (wordOkB wordS) = true := by
  unfold Native.programs9
  exact all_append_of Word.Chunk208_223.ok programs10_ok
theorem programs8_ok : Native.programs8.all (wordOkB wordS) = true := by
  unfold Native.programs8
  exact all_append_of Word.Chunk192_207.ok programs9_ok
theorem programs7_ok : Native.programs7.all (wordOkB wordS) = true := by
  unfold Native.programs7
  exact all_append_of Word.Chunk176_191.ok programs8_ok
theorem programs6_ok : Native.programs6.all (wordOkB wordS) = true := by
  unfold Native.programs6
  exact all_append_of Word.Chunk160_175.ok programs7_ok
theorem programs5_ok : Native.programs5.all (wordOkB wordS) = true := by
  unfold Native.programs5
  exact all_append_of Word.Chunk144_159.ok programs6_ok
theorem programs4_ok : Native.programs4.all (wordOkB wordS) = true := by
  unfold Native.programs4
  exact all_append_of Word.Chunk128_143.ok programs5_ok
theorem programs3_ok : Native.programs3.all (wordOkB wordS) = true := by
  unfold Native.programs3
  exact all_append_of Word.Chunk112_127.ok programs4_ok
theorem programs2_ok : Native.programs2.all (wordOkB wordS) = true := by
  unfold Native.programs2
  exact all_append_of Word.Chunk96_111.ok programs3_ok
theorem programs1_ok : Native.programs1.all (wordOkB wordS) = true := by
  unfold Native.programs1
  exact all_append_of Word.Chunk80_95.ok programs2_ok
theorem programs0_ok : Native.programs0.all (wordOkB wordS) = true := by
  unfold Native.programs0
  exact all_append_of Word.Chunk64_79.ok programs1_ok

/-- `wsize ≤ wordS` on every procedure of the baseline's post-`word_to_word` program
(hypothesis `hcode` of `WordToStack.entrySimulationB_makeInit`). -/
theorem programs_wsize : ∀ entry ∈ Native.programs0, WordToStack.wsize entry.2.2 ≤ wordS :=
  fun e h => wordOkB_le (forall_of_all programs0_ok e h)

/-- The same bound on `StackAnalysis.outputs` (the baseline's name for that program). -/
theorem outputs_wsize : ∀ entry ∈ StackAnalysis.outputs, WordToStack.wsize entry.2.2 ≤ wordS := by
  have h : Native.programs0 = StackAnalysis.outputs := Native.programs_eq
  rw [← h]
  exact programs_wsize

/-- The word-level compile oracle of Flapjack's pan-to-target proof is constant with no programs
(`fun _ => ((bitmaps.length, cfg), [])`, `AssemblyWordToStack.lean`): `horacle` holds
vacuously. -/
theorem constOracle_wsize {C : Type} (cfg : C) (S : Nat) :
    ∀ i : Nat, ∀ e ∈ ((fun _ => (cfg, ([] : List (Nat × Nat × WordLangProgHOL (BitVec 64))))) i :
      C × List (Nat × Nat × WordLangProgHOL (BitVec 64))).2, WordToStack.wsize e.2.2 ≤ S := by
  intro i e h
  simp at h

end InitECandidate.Solver.Concrete.Word

#print axioms InitECandidate.Solver.Concrete.Word.programs0_ok
#print axioms InitECandidate.Solver.Concrete.Word.programs_wsize
#print axioms InitECandidate.Solver.Concrete.Word.outputs_wsize
#print axioms InitECandidate.Solver.Concrete.Word.constOracle_wsize
