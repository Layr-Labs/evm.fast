import InitECandidate.Solver.Compiler.Flatten.Semantics
import InitECandidate.Solver.Compiler.LabToTarget
import Flapjack.Compiler.Backend.StackNames.Proofs.CompCorrect
import Flapjack.Compiler.Backend.StackToLab.Proofs.FullMakeInitSemantics

/-!
# Bounded stack → lab pass (`flatten`), composed with lab → target

Bounded counterparts of Flapjack's stack-to-lab simulation (pinned flapjack rev
034bb5a1ed0b757082768d5406206bd2f8e31b7c):

* `flattenCorrect_bounded` (`Flatten/Induction.lean`): Flapjack's `flattenCorrect` with
  `CodeBounded S s1` (every procedure body, and every program the compile oracle can install,
  has node count `psize ≤ S`) and `psize prog ≤ S`; the extra LabSem clock is
  `ck ≤ (2 * S + 2) * (s1.clock - s2.clock) + 2 * psize prog`, and a halting LabSem run ends
  with at least `s2.clock` left.
* `flattenCallCorrect_bounded`, `stackRunsSim_bounded`, `stackCall_labHalt_bounded`
  (`Flatten/Semantics.lean`): the whole-call and semantics-level (`stackRuns`/`labRuns`)
  forms; a complete StackSem entry run from clock `k` ending with clock `s2.clock` is matched
  by a halting LabSem run from clock `k - 1 + ck`,
  `ck ≤ (2 * S + 2) * (k - 1 - s2.clock) + 4 * S`.
* `riscv_stackCall_target_bounded_24` (here): composed with
  `LabToTarget.riscv_labHalt_target_bounded_24`, the RISC-V target halts with the same outcome
  and FFI state within `7 * ((2 * S + 3) * (k - 1 - s2.clock) + 4 * S) + 7` machine steps.
  `k - s2.clock` is the StackSem clock consumed by the entry call (one tick for the call
  itself), so the bound is `7 * ((2 * S + 3) * (Δ - 1) + 4 * S) + 7` in `Δ`.
* `riscv_fullMakeInit_target_bounded_24` (here): the same at Flapjack's `full_make_init`
  flatten-level state `s3` (`FullMakeInitSemantics.lean`), with `CodeBounded` reduced to a
  `psize ≤ S` bound on the `stack_remove` output `code2` and on the compile oracle's programs
  (vacuous for the empty oracle `fun _ => (ltc, [], [])` of Flapjack's Pancake chain).
* `stackNames_compCorrect_clock`, `psize_progCompHOL`, `codeBounded_of_compileHOL` (here):
  `stack_names` is lock-step (same result, renamed final state, equal clocks), so it consumes
  exactly the same StackSem clock and preserves `psize`; no further bound is needed for it.
-/

namespace InitECandidate.Solver.Compiler.Flatten

open Flapjack hiding flattenHOL findLabHOL
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackToLab.Proofs
open Flapjack.Compiler.Backend.StackToLab (flattenHOL findLabHOL negateHOL compileJumpHOL isSeqHOL
  progToSectionHOL stackIsSkip)
open Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenCallCorrect
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenSemantics
open Flapjack.RiscV.L3 Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.Semantics.TargetProps

set_option autoImplicit false

/-- **Stack → RISC-V, bounded.** A StackSem call of the start procedure from clock `k` that
ends (state `s2`) in a complete result with outcome `o` (halt, final FFI, or return to the
halting procedure `1`) is simulated by the RISC-V target: it halts with outcome `o` and the
final FFI state of the StackSem run within
`7 * ((2 * S + 3) * (k - 1 - s2.clock) + 4 * S) + 7` evaluator steps.

Hypotheses: Flapjack's flatten-level ones (`haltAssum`, `stateRel`, start procedure at the
LabSem pc), `CodeBounded S s1`, and the lab → target ones of
`riscv_labHalt_target_bounded_24` (target relation, oracle tie, no `Install` in the LabSem
code, target lines of at most 24 bytes). -/
theorem riscv_stackCall_target_bounded_24 {F : Type} (S : Nat)
    (mc : MachineConfig 64 riscv_state RiscVProjection) (target : mc.target = riscvTarget)
    (p : BitVec 64) (ms : riscv_state)
    (t : Flapjack.Compiler.Backend.LabSem.State 64 LabToTarget.Config F)
    (code2 : LabProgHOL 64) (labs : Spt (Spt Nat)) (ta : AsmState 64)
    (hrelT : LabToTarget.stateRel (mc, code2, labs, p) t ta ms)
    (htie : LabToTarget.oracleTie mc ms t) (hni : LabProps.noInstall t.code)
    (hL : InitECandidate.Solver.Compiler.LabToTarget.LinesBounded 24 code2)
    {start : Nat} {s1 : StackSemStateFiniteExact 64 LabToTarget.Config F}
    (halt : haltAssum LabToTarget.Config F s1.code) (rel : StateRel.stateRel s1 t)
    (hpc : locToPc start 0 t.code = some t.pc) (hcb : CodeBounded S s1)
    (k : Nat) (res : Option (StackSemResult 64))
    (s2 : StackSemStateFiniteExact 64 LabToTarget.Config F)
    (hev : StackSemEvaluate.evaluate ((.call none (.inl start) none : HolProg 64),
      { s1 with clock := k }) = (res, s2))
    (o : HolOutcome) (hres : stackEntryClass res = .CompleteResult o) :
    ∃ (N : Nat) (ms' : riscv_state), N ≤ 7 * ((2 * S + 3) * (k - 1 - s2.clock) + 4 * S) + 7 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc t.ffi N' ms = (.halt o, ms', s2.ffi) := by
  obtain ⟨ck, t3, hck, hlab, hffi, hclk⟩ :=
    stackCall_labHalt_bounded halt rel hpc hcb k res s2 hev o hres
  obtain ⟨N, ms', hN, hrun⟩ := InitECandidate.Solver.Compiler.LabToTarget.riscv_labHalt_target_bounded_24
    mc target p ms t code2 labs ta hrelT htie hni hL (k - 1 + ck) o t3 hlab
  refine ⟨N, ms', ?_, fun N' h => by rw [← hffi]; exact hrun N' h⟩
  have h1 : k - 1 + ck - t3.clock ≤ (k - 1 - s2.clock) + ck := by omega
  have h2 : (2 * S + 3) * (k - 1 - s2.clock) =
      (2 * S + 2) * (k - 1 - s2.clock) + (k - 1 - s2.clock) := by
    rw [show 2 * S + 3 = (2 * S + 2) + 1 from rfl, Nat.add_mul, Nat.one_mul]
  omega

/-! ## `stack_names` is lock-step -/

section StackNames
variable {width : Nat} [NeZero width] {C F : Type}

/-- Flapjack's `stack_names` `compCorrect` with the clocks made explicit: the renamed program
from the renamed state produces the same result and the renamed final state, and renaming does
not change the clock, so both runs consume exactly the same StackSem clock. -/
theorem stackNames_compCorrect_clock
    {c : C → List (Nat × HolProg width) → Option (List (BitVec 8) × C)} {f : Spt Nat}
    (p : HolProg width) (s : StackSemStateFiniteExact width C F)
    (r : Option (StackSemResult width)) (t : StackSemStateFiniteExact width C F)
    (h : StackSemEvaluate.evaluate (p, s) = (r, t) ∧ Function.Bijective (StackNames.findNameSpt f) ∧
      ¬s.useAlloc ∧ ¬s.useStore ∧ ¬s.useStack ∧
      s.compile = (fun cfg => c cfg ∘ StackNames.compileHOL f)) :
    StackSemEvaluate.evaluate (StackNames.progCompHOL f p, StackNames.renameState c f s) =
        (r, StackNames.renameState c f t) ∧
      (StackNames.renameState c f s).clock = s.clock ∧
      (StackNames.renameState c f t).clock = t.clock ∧
      (StackNames.renameState c f s).clock - (StackNames.renameState c f t).clock =
        s.clock - t.clock :=
  ⟨StackNames.compCorrect p s r t h, rfl, rfl, rfl⟩

-- `done` is the `first` fallback guard for the `Call` case.
set_option linter.unusedTactic false in
/-- `stack_names` preserves the node count. -/
theorem psize_progCompHOL (f : Spt Nat) (p : HolProg width) :
    psize (StackNames.progCompHOL f p) = psize p := by
  induction p using StackNames.progCompHOL.induct
  all_goals first
    | (simp_all [StackNames.progCompHOL, psize]; done)
    | (rename_i ret dest handler ih1 ih2
       rcases ret with _ | ⟨r, a, b, c⟩ <;> rcases handler with _ | ⟨h, d, e⟩ <;>
         simp_all [StackNames.progCompHOL, psize])

/-- A code map produced by `stack_names` from bodies of `psize ≤ S` has all bodies of
`psize ≤ S`. -/
theorem codeBounded_of_compileHOL {S : Nat} {f : Spt Nat} {code : List (Nat × HolProg width)}
    (h : ∀ np ∈ code, psize np.2 ≤ S) :
    ∀ k q, sptLookup k (sptFromAList (StackNames.compileHOL f code)) = some q → psize q ≤ S := by
  intro k q hq
  rw [sptLookup_sptFromAList] at hq
  have hm := sptAListLookup_mem hq
  simp only [StackNames.compileHOL, List.mem_map, StackNames.progCompEntryHOL] at hm
  obtain ⟨⟨k', q'⟩, hmem, he⟩ := hm
  simp only [Prod.mk.injEq] at he
  rw [← he.2, psize_progCompHOL]
  exact h _ hmem

end StackNames

/-- `riscv_stackCall_target_bounded_24` at Flapjack's `full_make_init` flatten-level state
`s3` (whose code is the `stack_names` rename of the `stack_remove` output `code2`), from the
start procedure `0`: the `haltAssum`, `stateRel` and start-pc hypotheses are discharged by
Flapjack's `haltAssumLemma`, `stateRel_s3` and `locToPc_start`, and `CodeBounded` by
`psize ≤ S` on `code2` and on the compile oracle's programs. -/
theorem riscv_fullMakeInit_target_bounded_24 {F : Type} (S : Nat)
    {stackConf : StackToLab.Config} {dataConf : DataToWord.Config} {maxHeap sp : Nat}
    {offset : BitVec 64 × BitVec 64} {bitmaps : List (BitVec 64)}
    {code : List (Nat × HolProg 64)}
    {t : Flapjack.Compiler.Backend.LabSem.State 64 LabToTarget.Config F}
    {saveRegs : Nat → Bool} {dataSp : Nat}
    {coracle : Nat → LabToTarget.Config × List (Nat × HolProg 64) × List (BitVec 64)}
    (hA : FullMakeInitSemantics.Assumptions stackConf dataConf maxHeap sp offset bitmaps code t
      saveRegs dataSp coracle)
    (hcode : ∀ np ∈ FullMakeInitSemantics.code2 stackConf dataConf maxHeap sp offset code,
      psize np.2 ≤ S)
    (horacle : ∀ n, ∀ np ∈ (FullMakeInitSemantics.coracle3 stackConf sp offset coracle n).2.1,
      psize np.2 ≤ S)
    (mc : MachineConfig 64 riscv_state RiscVProjection) (target : mc.target = riscvTarget)
    (p : BitVec 64) (ms : riscv_state)
    (tcode : LabProgHOL 64) (labs : Spt (Spt Nat)) (ta : AsmState 64)
    (hrelT : LabToTarget.stateRel (mc, tcode, labs, p) t ta ms)
    (htie : LabToTarget.oracleTie mc ms t) (hni : LabProps.noInstall t.code)
    (hL : InitECandidate.Solver.Compiler.LabToTarget.LinesBounded 24 tcode)
    (k : Nat) (res : Option (StackSemResult 64))
    (s2 : StackSemStateFiniteExact 64 LabToTarget.Config F)
    (hev : StackSemEvaluate.evaluate ((.call none (.inl 0) none : HolProg 64),
      { FullMakeInitSemantics.s3 stackConf dataConf maxHeap sp offset code t saveRegs coracle with
        clock := k }) = (res, s2))
    (o : HolOutcome) (hres : stackEntryClass res = .CompleteResult o) :
    ∃ (N : Nat) (ms' : riscv_state), N ≤ 7 * ((2 * S + 3) * (k - 1 - s2.clock) + 4 * S) + 7 ∧
      ∀ N', N ≤ N' → evaluateTargetHOL mc t.ffi N' ms = (.halt o, ms', s2.ffi) :=
  riscv_stackCall_target_bounded_24 S mc target p ms t tcode labs ta hrelT htie hni hL
    MakeInit.haltAssumLemma (FullMakeInitSemantics.stateRel_s3 hA)
    (FullMakeInitSemantics.locToPc_start hA) ⟨codeBounded_of_compileHOL hcode, horacle⟩
    k res s2 hev o hres

end InitECandidate.Solver.Compiler.Flatten

#print axioms InitECandidate.Solver.Compiler.Flatten.flattenCorrect_bounded
#print axioms InitECandidate.Solver.Compiler.Flatten.flattenCallCorrect_bounded
#print axioms InitECandidate.Solver.Compiler.Flatten.stackRunsSim_bounded
#print axioms InitECandidate.Solver.Compiler.Flatten.stackCall_labHalt_bounded
#print axioms InitECandidate.Solver.Compiler.Flatten.riscv_stackCall_target_bounded_24
#print axioms InitECandidate.Solver.Compiler.Flatten.riscv_fullMakeInit_target_bounded_24
#print axioms InitECandidate.Solver.Compiler.Flatten.stackNames_compCorrect_clock
#print axioms InitECandidate.Solver.Compiler.Flatten.psize_progCompHOL
#print axioms InitECandidate.Solver.Compiler.Flatten.codeBounded_of_compileHOL
#print axioms InitECandidate.Solver.Compiler.Flatten.codeBounded_evaluate
