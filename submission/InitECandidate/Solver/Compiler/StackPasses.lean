import InitECandidate.Solver.Compiler.StackPasses.RawCall
import InitECandidate.Solver.Compiler.StackPasses.Alloc
import InitECandidate.Solver.Compiler.StackPasses.Remove
import InitECandidate.Solver.Compiler.StackPasses.Names
import InitECandidate.Solver.Compiler.Flatten
import Flapjack.Compiler.Backend.WordToStack.NativeStubs

/-!
# Bounded stack sub-passes `stack_rawcall` → `stack_alloc` → `stack_remove` → `stack_names`

Pinned flapjack rev 034bb5a1ed0b757082768d5406206bd2f8e31b7c. Per-pass bounded simulations
(all copies of Flapjack's simulations with a bound conjunct):

* `RawCall.compCorrect_bounded` / `RawCall.entrySimulation_bounded`: extra clock
  `≤ s.clock - post.clock` (the source clock consumed). No program hypothesis.
* `Alloc.comp_correct_noA` / `Alloc.make_init_entry_noA`: extra clock `0` (lock-step) for code
  without `Alloc` and `StoreConsts _ _ (some _)` (`noA`, `CodeNoA`).
* `Remove.compCorrect_bounded` / `Remove.entrySimulation_bounded`: extra clock
  `≤ extraR result` (`1` for a `Halt`, `0` otherwise), final clocks equal, for code whose
  reachable part is `StoreConsts`-free (`okP X`, `CodeOk X`);
  `Remove.makeInit_entry_bounded`: through the clock-neutral initialiser, `+ 1` for the call
  of procedure `0`.
* `stackNames_entry_run`, `renameState_makeInit` (`Names.lean`): `stack_names` is lock-step and
  its renamed `make_init` source state is the output state (the gap left by the flatten bound:
  Flapjack proves it only inside `StackNames.makeInitSemantics`).

Composition (here):

* `stackChain_entry_bounded`: at Flapjack's `full_make_init` (`FullMakeInitSemantics.lean`), a
  run of `Call NONE (INL InitGlobals_location) NONE` from the `stack_rawcall` source state `s`
  (the `full_make_init` result, i.e. the `word_to_stack` output state) at clock `k` ending at
  `post` is matched by a run of procedure `0` from the flatten-level state `s3` at clock
  `k + e + 1` with `e ≤ (k - post.clock) + extraR res`, same result, FFI state and final clock
  (so the `s3` run consumes at most `2 * (k - post.clock) + 2` ticks).
* `riscv_stackChain_target_bounded_24`: composed with Flatten's
  `riscv_fullMakeInit_target_bounded_24`: for a complete source result consuming
  `Δ = k - post.clock` stack ticks, the RISC-V target halts with the same outcome and FFI state
  within `7 * ((2 * S + 3) * (2 * Δ + 1) + 4 * S) + 7` steps.

Hypotheses beyond Flapjack's `full_make_init_semantics` premises (all kernel-checkable
Booleans on the concrete program): `noA` on every source procedure body; `okP X` on every source
procedure body at a label outside `X` and on every compile-oracle program; the entry label
outside `X`; and the flatten/lab/target hypotheses of `riscv_fullMakeInit_target_bounded_24`.
`X` is a list of never-called labels: for `word_to_stack` output `X = [storeConstsStubLocation]`
(its `Seq (StoreConsts k (k+1) NONE) (Return 0)` stub satisfies `noA` but not `okP`;
`riscv_stackChain_target_bounded_24_w2s` and `noA_storeConstsStub`).
-/

namespace InitECandidate.Solver.Compiler.StackPasses

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps
open Flapjack.Compiler.Backend
open Flapjack.Compiler.Backend.StackToLab.Proofs
open Flapjack.Compiler.Backend.StackToLab.Proofs.FullMakeInit
open Flapjack.Compiler.Backend.StackToLab.Proofs.FullMakeInitSemantics

set_option autoImplicit false

/-- `noA` on the `stack_rawcall` output code. -/
theorem noA_rawcallCompile {width : Nat} [NeZero width] {code : List (Nat × HolProg width)}
    (h : ∀ np ∈ code, noA np.2 = true) :
    ∀ np ∈ StackRawCall.compile code, noA np.2 = true := by
  intro np hnp
  simp only [StackRawCall.compile, List.mem_map] at hnp
  obtain ⟨⟨n, b⟩, hm, rfl⟩ := hnp
  exact noA_rawcallCompTop _ b (h _ hm)

/-- `okP X` on the `stack_alloc` ∘ `stack_rawcall` output code, at labels outside `X`
(GC stub included). -/
theorem okP_code1 {width : Nat} [NeZero width] (X : List Nat) (c : DataToWord.Config)
    {code : List (Nat × HolProg width)} (h : ∀ np ∈ code, np.1 ∉ X → okP X np.2 = true) :
    ∀ np ∈ StackAlloc.compile c (StackRawCall.compile code), np.1 ∉ X → okP X np.2 = true := by
  intro np hnp hx
  simp only [StackAlloc.compile, StackAlloc.stubs, List.mem_append, List.mem_cons,
    List.not_mem_nil, or_false, List.mem_map] at hnp
  rcases hnp with rfl | ⟨⟨n, b⟩, hm, rfl⟩
  · simp [okP_gcStub, okP]
  · simp only [StackRawCall.compile, List.mem_map] at hm
    obtain ⟨⟨n0, b0⟩, hm0, he⟩ := hm
    simp only [Prod.mk.injEq] at he
    obtain ⟨rfl, rfl⟩ := he
    exact okP_allocComp _ _ _ (okP_rawcallCompTop _ b0 (h _ hm0 hx))

/-- **The stack sub-passes, bounded.** Under Flapjack's `full_make_init_semantics` premises
(`hfm`, `hA`), `noA` on the source code, `okP X` on the source code outside the never-called
labels `X` and on the compile oracle's programs, and the entry label outside `X`, a run of the
entry call from the `stack_rawcall` source state `s` at clock `k` ending at `post` is matched
by a run of procedure `0` from Flapjack's flatten-level state `s3` at clock `k + e + 1`, with
`e ≤ (k - post.clock) + extraR res` (rawcall: one tick per optimised call, at most the
source clock consumed; stack_alloc and stack_names: none; stack_remove: one tick for a
stack-overflow `Halt`; `+ 1`: the initialiser's call of procedure `0`), with the same result
and FFI state, ending at the same clock. -/
theorem stackChain_entry_bounded {width : Nat} [NeZero width] {C F : Type} (X : List Nat)
    {stackConf : StackToLab.Config} {dataConf : DataToWord.Config} {maxHeap sp : Nat}
    {offset : BitVec width × BitVec width} {bitmaps : List (BitVec width)}
    {code : List (Nat × HolProg width)} {t : Flapjack.Compiler.Backend.LabSem.State width C F}
    {saveRegs : Nat → Bool} {dataSp : Nat}
    {coracle : Nat → C × List (Nat × HolProg width) × List (BitVec width)}
    {s : StackSemStateFiniteExact width C F} {opt : Option (StackSemStateFiniteExact width C F)}
    (hfm : fullMakeInit stackConf dataConf maxHeap sp offset bitmaps code t saveRegs dataSp
      coracle = (s, opt))
    (hA : Assumptions stackConf dataConf maxHeap sp offset bitmaps code t saveRegs dataSp coracle)
    (hnoA : ∀ np ∈ code, noA np.2 = true)
    (hok : ∀ np ∈ code, np.1 ∉ X → okP X np.2 = true)
    (hokO : ∀ i, ∀ np ∈ (coracle i).2.1, okP X np.2 = true)
    (hstart : BvlToBvi.initGlobalsLocation ∉ X)
    (k : Nat) (res : Option (StackSemResult width)) (post : StackSemStateFiniteExact width C F)
    (run : evaluate ((.call none (.inl BvlToBvi.initGlobalsLocation) none : HolProg width),
      { s with clock := k }) = (res, post))
    (hne : res ≠ some .error) :
    ∃ (e : Nat) (post3 : StackSemStateFiniteExact width C F),
      e ≤ (k - post.clock) + Remove.extraR res ∧
      evaluate ((.call none (.inl 0) none : HolProg width),
        { s3 stackConf dataConf maxHeap sp offset code t saveRegs coracle with
          clock := k + e + 1 }) = (res, post3) ∧
      post3.ffi = post.ffi ∧ post3.clock = post.clock := by
  rw [fullMakeInit_eq] at hfm
  simp only [Prod.mk.injEq] at hfm
  obtain ⟨rfl, rfl⟩ := hfm
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, hgood, hgoodO, -, -, -, -, -, -, -, hbij⟩ := id hA
  obtain ⟨s1, hopt, -⟩ := StackRemove.Proofs.InitSemantics.makeInitSemantics stackConf.jump
    offset (StackToLab.isGenGc dataConf.gcKind) maxHeap sp BvlToBvi.initGlobalsLocation
    (coracle1 coracle) (code1 dataConf code)
    (s2 stackConf dataConf maxHeap sp offset code t saveRegs coracle) bitmaps dataSp
    ⟨dischargeThese_s2 hA, propagateThese_s2 hA⟩
  have hs1 : StackRemove.Proofs.InitMake.makeInitAny (StackToLab.isGenGc dataConf.gcKind) maxHeap
      bitmaps dataSp (coracle1 coracle) stackConf.jump offset sp
      (sptFromAList (code1 dataConf code))
      (s2 stackConf dataConf maxHeap sp offset code t saveRegs coracle) = s1 := by
    unfold StackRemove.Proofs.InitMake.makeInitAny
    rw [hopt]
  rw [hs1] at run
  -- stack_rawcall
  obtain ⟨e1, T1, he1, run1, ffi1, clk1⟩ := RawCall.entrySimulation_bounded code
    (StackAlloc.makeInit dataConf (sptFromAList code) coracle s1) BvlToBvi.initGlobalsLocation k
    res post hgood.1 rfl run hne
  have hm : ({ StackAlloc.makeInit dataConf (sptFromAList code) coracle s1 with
      code := sptFromAList (StackRawCall.compile code), clock := k + e1 } :
        StackSemStateFiniteExact width C F) =
      { StackAlloc.makeInit dataConf (sptFromAList (StackRawCall.compile code)) coracle s1 with
        clock := k + e1 } := by
    simp [StackAlloc.makeInit]
  rw [hm] at run1
  -- stack_alloc
  have hu := StackRemove.Proofs.InitAny.makeInitAnyUseStack (StackToLab.isGenGc dataConf.gcKind)
    maxHeap bitmaps dataSp (coracle1 coracle) stackConf.jump offset sp
    (sptFromAList (code1 dataConf code))
    (s2 stackConf dataConf maxHeap sp offset code t saveRegs coracle)
  have hus := StackRemove.Proofs.InitAny.makeInitAnyUseStore (StackToLab.isGenGc dataConf.gcKind)
    maxHeap bitmaps dataSp (coracle1 coracle) stackConf.jump offset sp
    (sptFromAList (code1 dataConf code))
    (s2 stackConf dataConf maxHeap sp offset code t saveRegs coracle)
  have hua := StackRemove.Proofs.InitAny.makeInitAnyUseAlloc (StackToLab.isGenGc dataConf.gcKind)
    maxHeap bitmaps dataSp (coracle1 coracle) stackConf.jump offset sp
    (sptFromAList (code1 dataConf code))
    (s2 stackConf dataConf maxHeap sp offset code t saveRegs coracle)
  have hcd := StackRemove.Proofs.InitAny.makeInitAnyCode (StackToLab.isGenGc dataConf.gcKind)
    maxHeap bitmaps dataSp (coracle1 coracle) stackConf.jump offset sp
    (sptFromAList (code1 dataConf code))
    (s2 stackConf dataConf maxHeap sp offset code t saveRegs coracle)
  have hco := StackRemove.Proofs.InitAny.makeInitAnyCompileOracle
    (StackToLab.isGenGc dataConf.gcKind)
    maxHeap bitmaps dataSp (coracle1 coracle) stackConf.jump offset sp
    (sptFromAList (code1 dataConf code))
    (s2 stackConf dataConf maxHeap sp offset code t saveRegs coracle)
  rw [hs1] at hu hus hua hcd hco
  have hbuf : s1.bitmaps.length + s1.dataBuffer.buffer.length + s1.dataBuffer.spaceLeft <
      2 ^ width - 1 := by
    obtain ⟨post', hpost, hprop⟩ := StackRemove.Proofs.InitAny.makeInitOpt_eq_some hopt
    subst hpost
    rcases hprop with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
      hdb, _, _, _, hbl, _⟩
    simp only [StackRemove.Proofs.InitReduce.initReduce] at hbl hdb ⊢
    simp only [List.length_nil, Nat.add_zero]
    omega
  have hst : s1.stack.length * (width / 8) < 2 ^ width := by
    obtain ⟨post', hpost, hprop⟩ := StackRemove.Proofs.InitAny.makeInitOpt_eq_some hopt
    subst hpost
    rcases hprop with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, hsb, _⟩
    exact hsb
  have hcodeA : ∀ k prog, sptAListLookup k (StackRawCall.compile code) = some prog →
      k ≠ gcStubLocation ∧ StackProps.allocArg prog := by
    intro k prog hk
    obtain ⟨⟨n0, p0⟩, hm0, he⟩ := List.mem_map.mp (sptAListLookup_mem hk)
    simp only [Prod.mk.injEq] at he
    obtain ⟨rfl, rfl⟩ := he
    obtain ⟨hst, hal⟩ := hgood.2.1 _ hm0
    exact ⟨by simp only [stackNumStubs, gcStubLocation] at hst ⊢; omega,
      (StackRawCall.callArgComp _ _).2.mpr hal⟩
  have horacleA : ∀ (i k : Nat) (q : HolProg width), (k, q) ∈ (coracle i).2.1 →
      k ≠ gcStubLocation ∧ StackProps.allocArg q := by
    intro i k q hq
    obtain ⟨hst, hal⟩ := (hgoodO i).2.1 _ hq
    exact ⟨by simp only [stackNumStubs, gcStubLocation] at hst ⊢; omega, hal⟩
  obtain ⟨T2, run2, ffi2, clk2⟩ := Alloc.make_init_entry_noA (code := StackRawCall.compile code)
    (oracle := coracle) (s := s1) (c := dataConf) hcodeA horacleA hu hus hua hcd hco hbuf hst
    (noA_rawcallCompile hnoA) (fun i np h => noA_of_okP (hokO i np h))
    BvlToBvi.initGlobalsLocation (k + e1) res T1 run1 hne
  -- stack_remove
  have hokCode1 : ∀ np ∈ code1 dataConf code, np.1 ∉ X → okP X np.2 = true :=
    okP_code1 X dataConf hok
  have hokOracle1 : ∀ i, ∀ np ∈ (coracle1 coracle i).2.1, okP X np.2 = true := by
    intro i np hnp
    simp only [coracle1, Function.comp_apply, Prod.map, id, List.mem_map] at hnp
    obtain ⟨⟨n0, p0⟩, hm0, rfl⟩ := hnp
    exact okP_allocComp _ _ p0 (hokO i _ hm0)
  rw [← hs1] at run2
  obtain ⟨e3, T3, he3, run3, ffi3, clk3⟩ := Remove.makeInit_entry_bounded X stackConf.jump offset
    (StackToLab.isGenGc dataConf.gcKind) maxHeap sp BvlToBvi.initGlobalsLocation
    (coracle1 coracle) (code1 dataConf code)
    (s2 stackConf dataConf maxHeap sp offset code t saveRegs coracle) bitmaps dataSp
    ⟨dischargeThese_s2 hA, propagateThese_s2 hA⟩ hokCode1 hokOracle1 hstart (k + e1) res T2 run2
    hne
  -- stack_names
  have run3' : evaluate ((.call none (.inl 0) none : HolProg width),
      { StackNames.makeInit stackConf.regNames
          (sptFromAList (code2 stackConf dataConf maxHeap sp offset code))
          (coracle2 stackConf sp offset coracle)
          (s3 stackConf dataConf maxHeap sp offset code t saveRegs coracle) with
        clock := e3 + (k + e1) + 1 }) = (res, T3) := run3
  obtain ⟨T4, run4, ffi4, clk4⟩ := stackNames_entry_run (by simp [s3, MakeInit.makeInit])
    (by simp [s3, MakeInit.makeInit]) (by simp [s3, MakeInit.makeInit]) hbij rfl rfl 0
    (e3 + (k + e1) + 1) res T3 run3'
  refine ⟨e1 + e3, T4, by omega, ?_, by rw [ffi4, ffi3, ffi2, ffi1],
    by rw [clk4, clk3, clk2, clk1]⟩
  rw [show k + (e1 + e3) + 1 = e3 + (k + e1) + 1 by omega]
  exact run4

open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenSemantics
open Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend.LabSem (LabProgHOL)
open Flapjack.Compiler.Encoders.Asm

/-- **Stack (pre-`stack_rawcall`) → RISC-V, bounded.** Under Flapjack's
`full_make_init_semantics` premises, the program hypotheses of `stackChain_entry_bounded`, the
`psize ≤ S` bounds of Flatten's `riscv_fullMakeInit_target_bounded_24` and its lab → target
hypotheses, a run of the entry call `Call NONE (INL InitGlobals_location) NONE` from the
`full_make_init` stack state `s` at clock `k` with a complete result (outcome `o`), ending at
`post`, is simulated by the RISC-V target: it halts with outcome `o` and the final FFI state of
the source run within `7 * ((2 * S + 3) * (2 * Δ + 1) + 4 * S) + 7` evaluator steps, where
`Δ = k - post.clock` is the stack clock consumed by the source run. -/
theorem riscv_stackChain_target_bounded_24 {F : Type} (S : Nat) (X : List Nat)
    {stackConf : StackToLab.Config} {dataConf : DataToWord.Config} {maxHeap sp : Nat}
    {offset : BitVec 64 × BitVec 64} {bitmaps : List (BitVec 64)}
    {code : List (Nat × HolProg 64)}
    {t : Flapjack.Compiler.Backend.LabSem.State 64 LabToTarget.Config F}
    {saveRegs : Nat → Bool} {dataSp : Nat}
    {coracle : Nat → LabToTarget.Config × List (Nat × HolProg 64) × List (BitVec 64)}
    {s : StackSemStateFiniteExact 64 LabToTarget.Config F}
    {opt : Option (StackSemStateFiniteExact 64 LabToTarget.Config F)}
    (hfm : fullMakeInit stackConf dataConf maxHeap sp offset bitmaps code t saveRegs dataSp
      coracle = (s, opt))
    (hA : Assumptions stackConf dataConf maxHeap sp offset bitmaps code t saveRegs dataSp coracle)
    (hnoA : ∀ np ∈ code, noA np.2 = true)
    (hok : ∀ np ∈ code, np.1 ∉ X → okP X np.2 = true)
    (hokO : ∀ i, ∀ np ∈ (coracle i).2.1, okP X np.2 = true)
    (hstart : BvlToBvi.initGlobalsLocation ∉ X)
    (hcode : ∀ np ∈ code2 stackConf dataConf maxHeap sp offset code,
      Flatten.psize np.2 ≤ S)
    (horacle : ∀ n, ∀ np ∈ (coracle3 stackConf sp offset coracle n).2.1,
      Flatten.psize np.2 ≤ S)
    (mc : MachineConfig 64 riscv_state RiscVProjection) (target : mc.target = riscvTarget)
    (p : BitVec 64) (ms : riscv_state)
    (tcode : LabProgHOL 64) (labs : Spt (Spt Nat)) (ta : AsmState 64)
    (hrelT : LabToTarget.stateRel (mc, tcode, labs, p) t ta ms)
    (htie : LabToTarget.oracleTie mc ms t) (hni : LabProps.noInstall t.code)
    (hL : InitECandidate.Solver.Compiler.LabToTarget.LinesBounded 24 tcode)
    (k : Nat) (res : Option (StackSemResult 64))
    (post : StackSemStateFiniteExact 64 LabToTarget.Config F)
    (run : evaluate ((.call none (.inl BvlToBvi.initGlobalsLocation) none : HolProg 64),
      { s with clock := k }) = (res, post))
    (o : HolOutcome) (hres : stackEntryClass res = .CompleteResult o) :
    ∃ (N : Nat) (ms' : riscv_state),
      N ≤ 7 * ((2 * S + 3) * (2 * (k - post.clock) + 1) + 4 * S) + 7 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc t.ffi N' ms = (.halt o, ms', post.ffi) := by
  have hne : res ≠ some .error := by
    rcases Flatten.stackEntryClass_complete hres with ⟨w, rfl, -⟩ | ⟨e, rfl, -⟩ | ⟨rfl, -⟩ <;>
      simp
  obtain ⟨e, post3, he, run3, ffi3, clk3⟩ :=
    stackChain_entry_bounded X hfm hA hnoA hok hokO hstart k res post run hne
  have hpk : post.clock ≤ k := StackSemEvaluateClock.evaluateClock _ _ _ _ run
  obtain ⟨N, ms', hN, hrun⟩ := Flatten.riscv_fullMakeInit_target_bounded_24 S hA hcode horacle
    mc target p ms tcode labs ta hrelT htie hni hL (k + e + 1) res post3 run3 o hres
  refine ⟨N, ms', ?_, fun N' h => by rw [← ffi3]; exact hrun N' h⟩
  have hx : Remove.extraR res ≤ 1 := by
    rcases res with _ | ⟨v | v | n | n | w | _ | e | _⟩ <;> simp [Remove.extraR]
  have h1 : k + e + 1 - 1 - post3.clock ≤ 2 * (k - post.clock) + 1 := by
    omega
  have h2 : (2 * S + 3) * (k + e + 1 - 1 - post3.clock) ≤
      (2 * S + 3) * (2 * (k - post.clock) + 1) := Nat.mul_le_mul_left _ h1
  omega

/-- The `word_to_stack` constant-store stub satisfies `noA` (it is excluded from `okP` by
`X = [storeConstsStubLocation]`; no `okP X` program calls it). -/
theorem noA_storeConstsStub {width : Nat} [NeZero width] (k : Nat) :
    noA (WordToStack.Native.storeConstsStubNative (width := width) k) = true := rfl

/-- The entry label is not the `word_to_stack` constant-store stub label. -/
theorem initGlobals_not_storeConstsStub :
    BvlToBvi.initGlobalsLocation ∉ [storeConstsStubLocation] := by decide

/-- `riscv_stackChain_target_bounded_24` for `word_to_stack` output, `X = [storeConstsStubLocation]`
(the only `StoreConsts` of a Pancake-compiled stack program is the never-called stub there). -/
theorem riscv_stackChain_target_bounded_24_w2s {F : Type} (S : Nat)
    {stackConf : StackToLab.Config} {dataConf : DataToWord.Config} {maxHeap sp : Nat}
    {offset : BitVec 64 × BitVec 64} {bitmaps : List (BitVec 64)}
    {code : List (Nat × HolProg 64)}
    {t : Flapjack.Compiler.Backend.LabSem.State 64 LabToTarget.Config F}
    {saveRegs : Nat → Bool} {dataSp : Nat}
    {coracle : Nat → LabToTarget.Config × List (Nat × HolProg 64) × List (BitVec 64)}
    {s : StackSemStateFiniteExact 64 LabToTarget.Config F}
    {opt : Option (StackSemStateFiniteExact 64 LabToTarget.Config F)}
    (hfm : fullMakeInit stackConf dataConf maxHeap sp offset bitmaps code t saveRegs dataSp
      coracle = (s, opt))
    (hA : Assumptions stackConf dataConf maxHeap sp offset bitmaps code t saveRegs dataSp coracle)
    (hnoA : ∀ np ∈ code, noA np.2 = true)
    (hok : ∀ np ∈ code, np.1 ≠ storeConstsStubLocation →
      okP [storeConstsStubLocation] np.2 = true)
    (hokO : ∀ i, ∀ np ∈ (coracle i).2.1, okP [storeConstsStubLocation] np.2 = true)
    (hcode : ∀ np ∈ code2 stackConf dataConf maxHeap sp offset code,
      Flatten.psize np.2 ≤ S)
    (horacle : ∀ n, ∀ np ∈ (coracle3 stackConf sp offset coracle n).2.1,
      Flatten.psize np.2 ≤ S)
    (mc : MachineConfig 64 riscv_state RiscVProjection) (target : mc.target = riscvTarget)
    (p : BitVec 64) (ms : riscv_state)
    (tcode : LabProgHOL 64) (labs : Spt (Spt Nat)) (ta : AsmState 64)
    (hrelT : LabToTarget.stateRel (mc, tcode, labs, p) t ta ms)
    (htie : LabToTarget.oracleTie mc ms t) (hni : LabProps.noInstall t.code)
    (hL : InitECandidate.Solver.Compiler.LabToTarget.LinesBounded 24 tcode)
    (k : Nat) (res : Option (StackSemResult 64))
    (post : StackSemStateFiniteExact 64 LabToTarget.Config F)
    (run : evaluate ((.call none (.inl BvlToBvi.initGlobalsLocation) none : HolProg 64),
      { s with clock := k }) = (res, post))
    (o : HolOutcome) (hres : stackEntryClass res = .CompleteResult o) :
    ∃ (N : Nat) (ms' : riscv_state),
      N ≤ 7 * ((2 * S + 3) * (2 * (k - post.clock) + 1) + 4 * S) + 7 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc t.ffi N' ms = (.halt o, ms', post.ffi) :=
  riscv_stackChain_target_bounded_24 S [storeConstsStubLocation] hfm hA hnoA
    (fun np hm hx => hok np hm (by simpa using hx)) hokO initGlobals_not_storeConstsStub hcode
    horacle mc target p ms tcode labs ta hrelT htie hni hL k res post run o hres

end InitECandidate.Solver.Compiler.StackPasses

#print axioms InitECandidate.Solver.Compiler.StackPasses.RawCall.compCorrect_bounded
#print axioms InitECandidate.Solver.Compiler.StackPasses.RawCall.entrySimulation_bounded
#print axioms InitECandidate.Solver.Compiler.StackPasses.Alloc.comp_correct_noA
#print axioms InitECandidate.Solver.Compiler.StackPasses.Alloc.make_init_entry_noA
#print axioms InitECandidate.Solver.Compiler.StackPasses.Remove.compCorrect_bounded
#print axioms InitECandidate.Solver.Compiler.StackPasses.Remove.entrySimulation_bounded
#print axioms InitECandidate.Solver.Compiler.StackPasses.Remove.makeInit_entry_bounded
#print axioms InitECandidate.Solver.Compiler.StackPasses.renameState_makeInit
#print axioms InitECandidate.Solver.Compiler.StackPasses.stackNames_entry_run
#print axioms InitECandidate.Solver.Compiler.StackPasses.okP_gcStub
#print axioms InitECandidate.Solver.Compiler.StackPasses.stackChain_entry_bounded
#print axioms InitECandidate.Solver.Compiler.StackPasses.riscv_stackChain_target_bounded_24
#print axioms InitECandidate.Solver.Compiler.StackPasses.riscv_stackChain_target_bounded_24_w2s
