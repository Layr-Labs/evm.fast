import InitECandidate.Proofs.BackendStages.Native
import InitECandidate.Solver.Concrete.Stack.Chunk64_79
import InitECandidate.Solver.Concrete.Stack.Chunk80_95
import InitECandidate.Solver.Concrete.Stack.Chunk96_111
import InitECandidate.Solver.Concrete.Stack.Chunk112_127
import InitECandidate.Solver.Concrete.Stack.Chunk128_143
import InitECandidate.Solver.Concrete.Stack.Chunk144_159
import InitECandidate.Solver.Concrete.Stack.Chunk160_175
import InitECandidate.Solver.Concrete.Stack.Chunk176_191
import InitECandidate.Solver.Concrete.Stack.Chunk192_207
import InitECandidate.Solver.Concrete.Stack.Chunk208_223
import InitECandidate.Solver.Concrete.Stack.Chunk224_239
import InitECandidate.Solver.Concrete.Stack.Chunk240_255
import InitECandidate.Solver.Concrete.Stack.Chunk256_271
import InitECandidate.Solver.Concrete.Stack.Chunk272_287
import InitECandidate.Solver.Concrete.Stack.Chunk288_303
import InitECandidate.Solver.Concrete.Stack.Chunk304_319
import InitECandidate.Solver.Concrete.Stack.Chunk320_335
import InitECandidate.Solver.Concrete.Stack.Chunk336_351
import InitECandidate.Solver.Concrete.Stack.Chunk352_367
import InitECandidate.Solver.Concrete.Stack.Chunk368_383
import InitECandidate.Solver.Concrete.Stack.Chunk384_399
import InitECandidate.Solver.Concrete.Stack.Chunk400_415
import InitECandidate.Solver.Concrete.Stack.Chunk416_431
import InitECandidate.Solver.Concrete.Stack.Chunk432_447
import InitECandidate.Solver.Concrete.Stack.Chunk448_463
import InitECandidate.Solver.Concrete.Stack.Chunk464_479
import InitECandidate.Solver.Concrete.Stack.Chunk480_495
import InitECandidate.Solver.Concrete.Stack.Chunk496_511
import InitECandidate.Solver.Concrete.Stack.Chunk512_527
import InitECandidate.Solver.Concrete.Stack.Chunk528_543
import InitECandidate.Solver.Concrete.Stack.Chunk544_559
import InitECandidate.Solver.Concrete.Stack.Chunk560_575
import InitECandidate.Solver.Concrete.Stack.Chunk576_591
import InitECandidate.Solver.Concrete.Stack.Chunk592_607
import InitECandidate.Solver.Concrete.Stack.Chunk608_623
import InitECandidate.Solver.Concrete.Stack.Chunk624_639
import InitECandidate.Solver.Concrete.Stack.Chunk640_655
import InitECandidate.Solver.Concrete.Stack.Chunk656_671
import InitECandidate.Solver.Concrete.Stack.Chunk672_687
import InitECandidate.Solver.Concrete.Stack.Chunk688_703
import InitECandidate.Solver.Concrete.Stack.Chunk704_719
import InitECandidate.Solver.Concrete.Stack.Chunk720_735
import InitECandidate.Solver.Concrete.Stack.Chunk736_751
import InitECandidate.Solver.Concrete.Stack.Chunk752_767
import InitECandidate.Solver.Concrete.Stack.Chunk768_783
import InitECandidate.Solver.Concrete.Stack.Chunk784_799
import InitECandidate.Solver.Concrete.Stack.Chunk800_815
import InitECandidate.Solver.Concrete.Stack.Chunk816_831
import InitECandidate.Solver.Concrete.Stack.Chunk832_847
import InitECandidate.Solver.Concrete.Stack.Chunk848_863
import InitECandidate.Solver.Concrete.Stack.Chunk864_877

/-!
# `noA` / `okP` on the baseline's `word_to_stack` output

The stack program the baseline feeds to `stack_rawcall` (the `code` argument of Flapjack's
`full_make_init`) is `BackendStages.Native.stack`: the `word_to_stack` output of the
post-`word_to_word` program `Native.programs0` (`Native.native_eq`), i.e. the raise stub (label
`5`), the constant-store stub (label `6`) and the 814 compiled procedures (labels `64`–`877`,
`Native.bodies0 = Chunk64_79.bodies ++ … ++ Chunk864_877.bodies`).

Every body satisfies `noA`, and every body except the constant-store stub satisfies
`okP [storeConstsStubLocation]` (no `Alloc`, no `StoreConsts`, only direct calls, no
call/jump into label `6`). Checked per baseline shard (`Concrete/Stack/Chunk*.lean`), composed
along the baseline's own `Native.bodies_k` chain.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Stack

open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
open InitECandidate.Solver.Compiler

theorem bodies51_ok : Native.bodies51.all stackOkB = true := rfl
theorem bodies50_ok : Native.bodies50.all stackOkB = true := by
  unfold Native.bodies50
  exact all_append_of Stack.Chunk864_877.ok bodies51_ok
theorem bodies49_ok : Native.bodies49.all stackOkB = true := by
  unfold Native.bodies49
  exact all_append_of Stack.Chunk848_863.ok bodies50_ok
theorem bodies48_ok : Native.bodies48.all stackOkB = true := by
  unfold Native.bodies48
  exact all_append_of Stack.Chunk832_847.ok bodies49_ok
theorem bodies47_ok : Native.bodies47.all stackOkB = true := by
  unfold Native.bodies47
  exact all_append_of Stack.Chunk816_831.ok bodies48_ok
theorem bodies46_ok : Native.bodies46.all stackOkB = true := by
  unfold Native.bodies46
  exact all_append_of Stack.Chunk800_815.ok bodies47_ok
theorem bodies45_ok : Native.bodies45.all stackOkB = true := by
  unfold Native.bodies45
  exact all_append_of Stack.Chunk784_799.ok bodies46_ok
theorem bodies44_ok : Native.bodies44.all stackOkB = true := by
  unfold Native.bodies44
  exact all_append_of Stack.Chunk768_783.ok bodies45_ok
theorem bodies43_ok : Native.bodies43.all stackOkB = true := by
  unfold Native.bodies43
  exact all_append_of Stack.Chunk752_767.ok bodies44_ok
theorem bodies42_ok : Native.bodies42.all stackOkB = true := by
  unfold Native.bodies42
  exact all_append_of Stack.Chunk736_751.ok bodies43_ok
theorem bodies41_ok : Native.bodies41.all stackOkB = true := by
  unfold Native.bodies41
  exact all_append_of Stack.Chunk720_735.ok bodies42_ok
theorem bodies40_ok : Native.bodies40.all stackOkB = true := by
  unfold Native.bodies40
  exact all_append_of Stack.Chunk704_719.ok bodies41_ok
theorem bodies39_ok : Native.bodies39.all stackOkB = true := by
  unfold Native.bodies39
  exact all_append_of Stack.Chunk688_703.ok bodies40_ok
theorem bodies38_ok : Native.bodies38.all stackOkB = true := by
  unfold Native.bodies38
  exact all_append_of Stack.Chunk672_687.ok bodies39_ok
theorem bodies37_ok : Native.bodies37.all stackOkB = true := by
  unfold Native.bodies37
  exact all_append_of Stack.Chunk656_671.ok bodies38_ok
theorem bodies36_ok : Native.bodies36.all stackOkB = true := by
  unfold Native.bodies36
  exact all_append_of Stack.Chunk640_655.ok bodies37_ok
theorem bodies35_ok : Native.bodies35.all stackOkB = true := by
  unfold Native.bodies35
  exact all_append_of Stack.Chunk624_639.ok bodies36_ok
theorem bodies34_ok : Native.bodies34.all stackOkB = true := by
  unfold Native.bodies34
  exact all_append_of Stack.Chunk608_623.ok bodies35_ok
theorem bodies33_ok : Native.bodies33.all stackOkB = true := by
  unfold Native.bodies33
  exact all_append_of Stack.Chunk592_607.ok bodies34_ok
theorem bodies32_ok : Native.bodies32.all stackOkB = true := by
  unfold Native.bodies32
  exact all_append_of Stack.Chunk576_591.ok bodies33_ok
theorem bodies31_ok : Native.bodies31.all stackOkB = true := by
  unfold Native.bodies31
  exact all_append_of Stack.Chunk560_575.ok bodies32_ok
theorem bodies30_ok : Native.bodies30.all stackOkB = true := by
  unfold Native.bodies30
  exact all_append_of Stack.Chunk544_559.ok bodies31_ok
theorem bodies29_ok : Native.bodies29.all stackOkB = true := by
  unfold Native.bodies29
  exact all_append_of Stack.Chunk528_543.ok bodies30_ok
theorem bodies28_ok : Native.bodies28.all stackOkB = true := by
  unfold Native.bodies28
  exact all_append_of Stack.Chunk512_527.ok bodies29_ok
theorem bodies27_ok : Native.bodies27.all stackOkB = true := by
  unfold Native.bodies27
  exact all_append_of Stack.Chunk496_511.ok bodies28_ok
theorem bodies26_ok : Native.bodies26.all stackOkB = true := by
  unfold Native.bodies26
  exact all_append_of Stack.Chunk480_495.ok bodies27_ok
theorem bodies25_ok : Native.bodies25.all stackOkB = true := by
  unfold Native.bodies25
  exact all_append_of Stack.Chunk464_479.ok bodies26_ok
theorem bodies24_ok : Native.bodies24.all stackOkB = true := by
  unfold Native.bodies24
  exact all_append_of Stack.Chunk448_463.ok bodies25_ok
theorem bodies23_ok : Native.bodies23.all stackOkB = true := by
  unfold Native.bodies23
  exact all_append_of Stack.Chunk432_447.ok bodies24_ok
theorem bodies22_ok : Native.bodies22.all stackOkB = true := by
  unfold Native.bodies22
  exact all_append_of Stack.Chunk416_431.ok bodies23_ok
theorem bodies21_ok : Native.bodies21.all stackOkB = true := by
  unfold Native.bodies21
  exact all_append_of Stack.Chunk400_415.ok bodies22_ok
theorem bodies20_ok : Native.bodies20.all stackOkB = true := by
  unfold Native.bodies20
  exact all_append_of Stack.Chunk384_399.ok bodies21_ok
theorem bodies19_ok : Native.bodies19.all stackOkB = true := by
  unfold Native.bodies19
  exact all_append_of Stack.Chunk368_383.ok bodies20_ok
theorem bodies18_ok : Native.bodies18.all stackOkB = true := by
  unfold Native.bodies18
  exact all_append_of Stack.Chunk352_367.ok bodies19_ok
theorem bodies17_ok : Native.bodies17.all stackOkB = true := by
  unfold Native.bodies17
  exact all_append_of Stack.Chunk336_351.ok bodies18_ok
theorem bodies16_ok : Native.bodies16.all stackOkB = true := by
  unfold Native.bodies16
  exact all_append_of Stack.Chunk320_335.ok bodies17_ok
theorem bodies15_ok : Native.bodies15.all stackOkB = true := by
  unfold Native.bodies15
  exact all_append_of Stack.Chunk304_319.ok bodies16_ok
theorem bodies14_ok : Native.bodies14.all stackOkB = true := by
  unfold Native.bodies14
  exact all_append_of Stack.Chunk288_303.ok bodies15_ok
theorem bodies13_ok : Native.bodies13.all stackOkB = true := by
  unfold Native.bodies13
  exact all_append_of Stack.Chunk272_287.ok bodies14_ok
theorem bodies12_ok : Native.bodies12.all stackOkB = true := by
  unfold Native.bodies12
  exact all_append_of Stack.Chunk256_271.ok bodies13_ok
theorem bodies11_ok : Native.bodies11.all stackOkB = true := by
  unfold Native.bodies11
  exact all_append_of Stack.Chunk240_255.ok bodies12_ok
theorem bodies10_ok : Native.bodies10.all stackOkB = true := by
  unfold Native.bodies10
  exact all_append_of Stack.Chunk224_239.ok bodies11_ok
theorem bodies9_ok : Native.bodies9.all stackOkB = true := by
  unfold Native.bodies9
  exact all_append_of Stack.Chunk208_223.ok bodies10_ok
theorem bodies8_ok : Native.bodies8.all stackOkB = true := by
  unfold Native.bodies8
  exact all_append_of Stack.Chunk192_207.ok bodies9_ok
theorem bodies7_ok : Native.bodies7.all stackOkB = true := by
  unfold Native.bodies7
  exact all_append_of Stack.Chunk176_191.ok bodies8_ok
theorem bodies6_ok : Native.bodies6.all stackOkB = true := by
  unfold Native.bodies6
  exact all_append_of Stack.Chunk160_175.ok bodies7_ok
theorem bodies5_ok : Native.bodies5.all stackOkB = true := by
  unfold Native.bodies5
  exact all_append_of Stack.Chunk144_159.ok bodies6_ok
theorem bodies4_ok : Native.bodies4.all stackOkB = true := by
  unfold Native.bodies4
  exact all_append_of Stack.Chunk128_143.ok bodies5_ok
theorem bodies3_ok : Native.bodies3.all stackOkB = true := by
  unfold Native.bodies3
  exact all_append_of Stack.Chunk112_127.ok bodies4_ok
theorem bodies2_ok : Native.bodies2.all stackOkB = true := by
  unfold Native.bodies2
  exact all_append_of Stack.Chunk96_111.ok bodies3_ok
theorem bodies1_ok : Native.bodies1.all stackOkB = true := by
  unfold Native.bodies1
  exact all_append_of Stack.Chunk80_95.ok bodies2_ok
theorem bodies0_ok : Native.bodies0.all stackOkB = true := by
  unfold Native.bodies0
  exact all_append_of Stack.Chunk64_79.ok bodies1_ok

/-- The two `word_to_stack` stubs and all 814 procedures pass `stackOkB`. -/
theorem stack_ok : Native.stack.all stackOkB = true := by
  unfold Native.stack
  exact all_cons_of (by kernel_rfl) (all_cons_of (by kernel_rfl) bodies0_ok)

/-- `noA` on every body of the baseline's `word_to_stack` output (hypothesis `hnoA` of
`riscv_stackChain_target_bounded_24_w2s`). -/
theorem stack_noA : ∀ np ∈ Native.stack, StackPasses.noA np.2 = true :=
  fun np h => stackOkB_noA (forall_of_all stack_ok np h)

/-- `okP [storeConstsStubLocation]` on every body of the baseline's `word_to_stack` output
outside the constant-store stub (hypothesis `hok` of `riscv_stackChain_target_bounded_24_w2s`). -/
theorem stack_okP : ∀ np ∈ Native.stack, np.1 ≠ storeConstsStubLocation →
    StackPasses.okP [storeConstsStubLocation] np.2 = true :=
  fun np h hx => stackOkB_okP (forall_of_all stack_ok np h) hx

/-- `stack_okP` in the `X`-form of `riscv_stackChain_target_bounded_24` / `stackChain_entry_bounded`
(`X = [storeConstsStubLocation]`). -/
theorem stack_okP_X : ∀ np ∈ Native.stack, np.1 ∉ [storeConstsStubLocation] →
    StackPasses.okP [storeConstsStubLocation] np.2 = true :=
  fun np h hx => stack_okP np h (by simpa using hx)

/-- The entry label is outside `X = [storeConstsStubLocation]` (hypothesis `hstart`). -/
theorem entry_not_X : BvlToBvi.initGlobalsLocation ∉ [storeConstsStubLocation] :=
  StackPasses.initGlobals_not_storeConstsStub

/-- Any `word_to_stack` (`compileNative`) output of the baseline's post-`word_to_word` program is
`Native.stack`. -/
theorem stack_of_compileNative {bitmaps : List (BitVec 64)} {c : WordToStack.Native.Config}
    {fs : List Nat} {p : List (Nat × HolProg 64)}
    (h : WordToStack.Native.compileNative riscvConfig false Native.programs0 =
      (bitmaps, c, fs, p)) : p = Native.stack := by
  rw [Native.native_eq] at h
  simp only [Prod.mk.injEq] at h
  exact h.2.2.2.symm

/-- The stack-level compile oracle of Flapjack's pan-to-target proof is `fun _ => (cfg, [], [])`
(`panToTargetFullMakeInitAssumptions`): `hokO` holds vacuously. -/
theorem constOracle_okP {C : Type} (cfg : C) (X : List Nat) :
    ∀ i : Nat, ∀ np ∈ ((fun _ => (cfg, ([] : List (Nat × HolProg 64)), ([] : List (BitVec 64)))) i :
      C × List (Nat × HolProg 64) × List (BitVec 64)).2.1, StackPasses.okP X np.2 = true := by
  intro i np h
  simp at h

end InitECandidate.Solver.Concrete.Stack

#print axioms InitECandidate.Solver.Concrete.Stack.stack_ok
#print axioms InitECandidate.Solver.Concrete.Stack.stack_noA
#print axioms InitECandidate.Solver.Concrete.Stack.stack_okP
#print axioms InitECandidate.Solver.Concrete.Stack.stack_okP_X
#print axioms InitECandidate.Solver.Concrete.Stack.stack_of_compileNative
#print axioms InitECandidate.Solver.Concrete.Stack.constOracle_okP
