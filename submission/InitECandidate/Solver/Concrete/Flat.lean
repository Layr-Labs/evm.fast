import InitECandidate.Proofs.BackendStages.Removed
import InitECandidate.Solver.Concrete.Flat.Stubs
import InitECandidate.Solver.Concrete.Flat.Chunk64_79
import InitECandidate.Solver.Concrete.Flat.Chunk80_95
import InitECandidate.Solver.Concrete.Flat.Chunk96_111
import InitECandidate.Solver.Concrete.Flat.Chunk112_127
import InitECandidate.Solver.Concrete.Flat.Chunk128_143
import InitECandidate.Solver.Concrete.Flat.Chunk144_159
import InitECandidate.Solver.Concrete.Flat.Chunk160_175
import InitECandidate.Solver.Concrete.Flat.Chunk176_191
import InitECandidate.Solver.Concrete.Flat.Chunk192_207
import InitECandidate.Solver.Concrete.Flat.Chunk208_223
import InitECandidate.Solver.Concrete.Flat.Chunk224_239
import InitECandidate.Solver.Concrete.Flat.Chunk240_255
import InitECandidate.Solver.Concrete.Flat.Chunk256_271
import InitECandidate.Solver.Concrete.Flat.Chunk272_287
import InitECandidate.Solver.Concrete.Flat.Chunk288_303
import InitECandidate.Solver.Concrete.Flat.Chunk304_319
import InitECandidate.Solver.Concrete.Flat.Chunk320_335
import InitECandidate.Solver.Concrete.Flat.Chunk336_351
import InitECandidate.Solver.Concrete.Flat.Chunk352_367
import InitECandidate.Solver.Concrete.Flat.Chunk368_383
import InitECandidate.Solver.Concrete.Flat.Chunk384_399
import InitECandidate.Solver.Concrete.Flat.Chunk400_415
import InitECandidate.Solver.Concrete.Flat.Chunk416_431
import InitECandidate.Solver.Concrete.Flat.Chunk432_447
import InitECandidate.Solver.Concrete.Flat.Chunk448_463
import InitECandidate.Solver.Concrete.Flat.Chunk464_479
import InitECandidate.Solver.Concrete.Flat.Chunk480_495
import InitECandidate.Solver.Concrete.Flat.Chunk496_511
import InitECandidate.Solver.Concrete.Flat.Chunk512_527
import InitECandidate.Solver.Concrete.Flat.Chunk528_543
import InitECandidate.Solver.Concrete.Flat.Chunk544_559
import InitECandidate.Solver.Concrete.Flat.Chunk560_575
import InitECandidate.Solver.Concrete.Flat.Chunk576_591
import InitECandidate.Solver.Concrete.Flat.Chunk592_607
import InitECandidate.Solver.Concrete.Flat.Chunk608_623
import InitECandidate.Solver.Concrete.Flat.Chunk624_639
import InitECandidate.Solver.Concrete.Flat.Chunk640_655
import InitECandidate.Solver.Concrete.Flat.Chunk656_671
import InitECandidate.Solver.Concrete.Flat.Chunk672_687
import InitECandidate.Solver.Concrete.Flat.Chunk688_703
import InitECandidate.Solver.Concrete.Flat.Chunk704_719
import InitECandidate.Solver.Concrete.Flat.Chunk720_735
import InitECandidate.Solver.Concrete.Flat.Chunk736_751
import InitECandidate.Solver.Concrete.Flat.Chunk752_767
import InitECandidate.Solver.Concrete.Flat.Chunk768_783
import InitECandidate.Solver.Concrete.Flat.Chunk784_799
import InitECandidate.Solver.Concrete.Flat.Chunk800_815
import InitECandidate.Solver.Concrete.Flat.Chunk816_831
import InitECandidate.Solver.Concrete.Flat.Chunk832_847
import InitECandidate.Solver.Concrete.Flat.Chunk848_863
import InitECandidate.Solver.Concrete.Flat.Chunk864_877

/-!
# `psize ≤ stackS` on the baseline's `stack_remove` output

Flatten's `riscv_fullMakeInit_target_bounded_24` (and `riscv_stackChain_target_bounded_24*`)
needs `psize ≤ S` on every entry of `FullMakeInitSemantics.code2 stackConf dataConf maxHeap sp
offset code`, the `stack_remove ∘ stack_alloc ∘ stack_rawcall` output of the `full_make_init`
code. For the baseline (`code = Native.stack`, the baseline backend configuration, as in
`Sections.compile_eq`) this is `BackendStages.Removed.stack` (`code2_eq`, from the baseline's
`Raw.compile_eq`, `Alloc.compile_eq`, `Removed.compile_eq`): the six `stack_remove` stubs
(`RemovedStubs`, labels `0, 1, 2, 4, 5, 6`) and the 814 procedures. All have
`psize ≤ stackS = 20339` (attained at label `877`). Checked per baseline shard
(`Concrete/Flat/{Stubs,Chunk*}.lean`), composed along the baseline's `Removed.bodies_k` chain.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Flat

open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.StackToLab.Proofs
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler

theorem bodies51_ok : Removed.bodies51.all (flatOkB stackS) = true := rfl
theorem bodies50_ok : Removed.bodies50.all (flatOkB stackS) = true := by
  unfold Removed.bodies50
  exact all_append_of Flat.Chunk864_877.ok bodies51_ok
theorem bodies49_ok : Removed.bodies49.all (flatOkB stackS) = true := by
  unfold Removed.bodies49
  exact all_append_of Flat.Chunk848_863.ok bodies50_ok
theorem bodies48_ok : Removed.bodies48.all (flatOkB stackS) = true := by
  unfold Removed.bodies48
  exact all_append_of Flat.Chunk832_847.ok bodies49_ok
theorem bodies47_ok : Removed.bodies47.all (flatOkB stackS) = true := by
  unfold Removed.bodies47
  exact all_append_of Flat.Chunk816_831.ok bodies48_ok
theorem bodies46_ok : Removed.bodies46.all (flatOkB stackS) = true := by
  unfold Removed.bodies46
  exact all_append_of Flat.Chunk800_815.ok bodies47_ok
theorem bodies45_ok : Removed.bodies45.all (flatOkB stackS) = true := by
  unfold Removed.bodies45
  exact all_append_of Flat.Chunk784_799.ok bodies46_ok
theorem bodies44_ok : Removed.bodies44.all (flatOkB stackS) = true := by
  unfold Removed.bodies44
  exact all_append_of Flat.Chunk768_783.ok bodies45_ok
theorem bodies43_ok : Removed.bodies43.all (flatOkB stackS) = true := by
  unfold Removed.bodies43
  exact all_append_of Flat.Chunk752_767.ok bodies44_ok
theorem bodies42_ok : Removed.bodies42.all (flatOkB stackS) = true := by
  unfold Removed.bodies42
  exact all_append_of Flat.Chunk736_751.ok bodies43_ok
theorem bodies41_ok : Removed.bodies41.all (flatOkB stackS) = true := by
  unfold Removed.bodies41
  exact all_append_of Flat.Chunk720_735.ok bodies42_ok
theorem bodies40_ok : Removed.bodies40.all (flatOkB stackS) = true := by
  unfold Removed.bodies40
  exact all_append_of Flat.Chunk704_719.ok bodies41_ok
theorem bodies39_ok : Removed.bodies39.all (flatOkB stackS) = true := by
  unfold Removed.bodies39
  exact all_append_of Flat.Chunk688_703.ok bodies40_ok
theorem bodies38_ok : Removed.bodies38.all (flatOkB stackS) = true := by
  unfold Removed.bodies38
  exact all_append_of Flat.Chunk672_687.ok bodies39_ok
theorem bodies37_ok : Removed.bodies37.all (flatOkB stackS) = true := by
  unfold Removed.bodies37
  exact all_append_of Flat.Chunk656_671.ok bodies38_ok
theorem bodies36_ok : Removed.bodies36.all (flatOkB stackS) = true := by
  unfold Removed.bodies36
  exact all_append_of Flat.Chunk640_655.ok bodies37_ok
theorem bodies35_ok : Removed.bodies35.all (flatOkB stackS) = true := by
  unfold Removed.bodies35
  exact all_append_of Flat.Chunk624_639.ok bodies36_ok
theorem bodies34_ok : Removed.bodies34.all (flatOkB stackS) = true := by
  unfold Removed.bodies34
  exact all_append_of Flat.Chunk608_623.ok bodies35_ok
theorem bodies33_ok : Removed.bodies33.all (flatOkB stackS) = true := by
  unfold Removed.bodies33
  exact all_append_of Flat.Chunk592_607.ok bodies34_ok
theorem bodies32_ok : Removed.bodies32.all (flatOkB stackS) = true := by
  unfold Removed.bodies32
  exact all_append_of Flat.Chunk576_591.ok bodies33_ok
theorem bodies31_ok : Removed.bodies31.all (flatOkB stackS) = true := by
  unfold Removed.bodies31
  exact all_append_of Flat.Chunk560_575.ok bodies32_ok
theorem bodies30_ok : Removed.bodies30.all (flatOkB stackS) = true := by
  unfold Removed.bodies30
  exact all_append_of Flat.Chunk544_559.ok bodies31_ok
theorem bodies29_ok : Removed.bodies29.all (flatOkB stackS) = true := by
  unfold Removed.bodies29
  exact all_append_of Flat.Chunk528_543.ok bodies30_ok
theorem bodies28_ok : Removed.bodies28.all (flatOkB stackS) = true := by
  unfold Removed.bodies28
  exact all_append_of Flat.Chunk512_527.ok bodies29_ok
theorem bodies27_ok : Removed.bodies27.all (flatOkB stackS) = true := by
  unfold Removed.bodies27
  exact all_append_of Flat.Chunk496_511.ok bodies28_ok
theorem bodies26_ok : Removed.bodies26.all (flatOkB stackS) = true := by
  unfold Removed.bodies26
  exact all_append_of Flat.Chunk480_495.ok bodies27_ok
theorem bodies25_ok : Removed.bodies25.all (flatOkB stackS) = true := by
  unfold Removed.bodies25
  exact all_append_of Flat.Chunk464_479.ok bodies26_ok
theorem bodies24_ok : Removed.bodies24.all (flatOkB stackS) = true := by
  unfold Removed.bodies24
  exact all_append_of Flat.Chunk448_463.ok bodies25_ok
theorem bodies23_ok : Removed.bodies23.all (flatOkB stackS) = true := by
  unfold Removed.bodies23
  exact all_append_of Flat.Chunk432_447.ok bodies24_ok
theorem bodies22_ok : Removed.bodies22.all (flatOkB stackS) = true := by
  unfold Removed.bodies22
  exact all_append_of Flat.Chunk416_431.ok bodies23_ok
theorem bodies21_ok : Removed.bodies21.all (flatOkB stackS) = true := by
  unfold Removed.bodies21
  exact all_append_of Flat.Chunk400_415.ok bodies22_ok
theorem bodies20_ok : Removed.bodies20.all (flatOkB stackS) = true := by
  unfold Removed.bodies20
  exact all_append_of Flat.Chunk384_399.ok bodies21_ok
theorem bodies19_ok : Removed.bodies19.all (flatOkB stackS) = true := by
  unfold Removed.bodies19
  exact all_append_of Flat.Chunk368_383.ok bodies20_ok
theorem bodies18_ok : Removed.bodies18.all (flatOkB stackS) = true := by
  unfold Removed.bodies18
  exact all_append_of Flat.Chunk352_367.ok bodies19_ok
theorem bodies17_ok : Removed.bodies17.all (flatOkB stackS) = true := by
  unfold Removed.bodies17
  exact all_append_of Flat.Chunk336_351.ok bodies18_ok
theorem bodies16_ok : Removed.bodies16.all (flatOkB stackS) = true := by
  unfold Removed.bodies16
  exact all_append_of Flat.Chunk320_335.ok bodies17_ok
theorem bodies15_ok : Removed.bodies15.all (flatOkB stackS) = true := by
  unfold Removed.bodies15
  exact all_append_of Flat.Chunk304_319.ok bodies16_ok
theorem bodies14_ok : Removed.bodies14.all (flatOkB stackS) = true := by
  unfold Removed.bodies14
  exact all_append_of Flat.Chunk288_303.ok bodies15_ok
theorem bodies13_ok : Removed.bodies13.all (flatOkB stackS) = true := by
  unfold Removed.bodies13
  exact all_append_of Flat.Chunk272_287.ok bodies14_ok
theorem bodies12_ok : Removed.bodies12.all (flatOkB stackS) = true := by
  unfold Removed.bodies12
  exact all_append_of Flat.Chunk256_271.ok bodies13_ok
theorem bodies11_ok : Removed.bodies11.all (flatOkB stackS) = true := by
  unfold Removed.bodies11
  exact all_append_of Flat.Chunk240_255.ok bodies12_ok
theorem bodies10_ok : Removed.bodies10.all (flatOkB stackS) = true := by
  unfold Removed.bodies10
  exact all_append_of Flat.Chunk224_239.ok bodies11_ok
theorem bodies9_ok : Removed.bodies9.all (flatOkB stackS) = true := by
  unfold Removed.bodies9
  exact all_append_of Flat.Chunk208_223.ok bodies10_ok
theorem bodies8_ok : Removed.bodies8.all (flatOkB stackS) = true := by
  unfold Removed.bodies8
  exact all_append_of Flat.Chunk192_207.ok bodies9_ok
theorem bodies7_ok : Removed.bodies7.all (flatOkB stackS) = true := by
  unfold Removed.bodies7
  exact all_append_of Flat.Chunk176_191.ok bodies8_ok
theorem bodies6_ok : Removed.bodies6.all (flatOkB stackS) = true := by
  unfold Removed.bodies6
  exact all_append_of Flat.Chunk160_175.ok bodies7_ok
theorem bodies5_ok : Removed.bodies5.all (flatOkB stackS) = true := by
  unfold Removed.bodies5
  exact all_append_of Flat.Chunk144_159.ok bodies6_ok
theorem bodies4_ok : Removed.bodies4.all (flatOkB stackS) = true := by
  unfold Removed.bodies4
  exact all_append_of Flat.Chunk128_143.ok bodies5_ok
theorem bodies3_ok : Removed.bodies3.all (flatOkB stackS) = true := by
  unfold Removed.bodies3
  exact all_append_of Flat.Chunk112_127.ok bodies4_ok
theorem bodies2_ok : Removed.bodies2.all (flatOkB stackS) = true := by
  unfold Removed.bodies2
  exact all_append_of Flat.Chunk96_111.ok bodies3_ok
theorem bodies1_ok : Removed.bodies1.all (flatOkB stackS) = true := by
  unfold Removed.bodies1
  exact all_append_of Flat.Chunk80_95.ok bodies2_ok
theorem bodies0_ok : Removed.bodies0.all (flatOkB stackS) = true := by
  unfold Removed.bodies0
  exact all_append_of Flat.Chunk64_79.ok bodies1_ok

theorem removed_ok : Removed.stack.all (flatOkB stackS) = true := by
  unfold Removed.stack
  exact all_append_of Stubs.ok bodies0_ok

/-- `psize ≤ stackS` on every entry of the baseline's `stack_remove` output. -/
theorem removed_psize : ∀ np ∈ Removed.stack, Flatten.psize np.2 ≤ stackS :=
  fun np h => flatOkB_le (forall_of_all removed_ok np h)

/-- Flapjack's `full_make_init` `code2` for the baseline configuration and the baseline's
`word_to_stack` output is `Removed.stack`. -/
theorem code2_eq :
    FullMakeInitSemantics.code2 RiscVConfig.pancakeRiscVBackendConfig.stackConf
      RiscVConfig.pancakeRiscVBackendConfig.dataConf
      (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1)
      (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset
      Native.stack = Removed.stack := by
  unfold FullMakeInitSemantics.code2 FullMakeInitSemantics.code1
  rw [Raw.compile_eq, Alloc.compile_eq]
  exact Removed.compile_eq

/-- Hypothesis `hcode` of `riscv_fullMakeInit_target_bounded_24` /
`riscv_stackChain_target_bounded_24_w2s` for the baseline, with `S = stackS`. -/
theorem code2_psize :
    ∀ np ∈ FullMakeInitSemantics.code2 RiscVConfig.pancakeRiscVBackendConfig.stackConf
      RiscVConfig.pancakeRiscVBackendConfig.dataConf
      (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1)
      (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) riscvConfig.addrOffset
      Native.stack, Flatten.psize np.2 ≤ stackS := by
  rw [code2_eq]
  exact removed_psize

/-- Hypothesis `horacle`: for the stack-level compile oracle `fun _ => (cfg, [], [])` of
Flapjack's pan-to-target proof, `coracle3` installs no programs. -/
theorem constOracle_psize {C : Type} (cfg : C) (stackConf : StackToLab.Config) (sp : Nat)
    (offset : BitVec 64 × BitVec 64) (S : Nat) :
    ∀ n, ∀ np ∈ (FullMakeInitSemantics.coracle3 stackConf sp offset
      (fun _ => (cfg, ([] : List (Nat × HolProg 64)), ([] : List (BitVec 64)))) n).2.1,
      Flatten.psize np.2 ≤ S := by
  intro n np h
  simp [FullMakeInitSemantics.coracle3, FullMakeInitSemantics.coracle2,
    FullMakeInitSemantics.coracle1, StackNames.compileHOL] at h

end InitECandidate.Solver.Concrete.Flat

#print axioms InitECandidate.Solver.Concrete.Flat.removed_ok
#print axioms InitECandidate.Solver.Concrete.Flat.removed_psize
#print axioms InitECandidate.Solver.Concrete.Flat.code2_eq
#print axioms InitECandidate.Solver.Concrete.Flat.code2_psize
#print axioms InitECandidate.Solver.Concrete.Flat.constOracle_psize
