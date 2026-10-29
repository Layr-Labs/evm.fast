import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.BootstrapCopyTrace
import InitECandidate.Proofs.BootstrapAsmComposition
import InitECandidate.Proofs.BaselineInstallationFacts

open scoped InitECandidate.Proofs.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

set_option autoImplicit false

namespace InitECandidate.Proofs.BootstrapCopyGuards
open InitE
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.Semantics.TargetProps
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapCopy InitECandidate.Proofs.BootstrapAsmComposition

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
/-- The fixed compiler dispatch list is above everybootstrapinstruction. -/
theorem baseline_ffi_entries_above_boot :
    baselineEntryPcs.all (fun pc => decide (0x80001030 ≤ pc.toNat)) = true := by
  decide_cbv

/-- Any instruction within the208byte bootstrap code region is ordinary
execution rather than an FFI dispatch entry. -/
theorem bootstrap_ffi_disjoint (s : AsmState 64) (length : Nat)
    (lower : initialPc ≤ s.pc.toNat)
    (upper : s.pc.toNat + length ≤ initialPc + 208) :
    ffiEntryPcsDisjoint baselineMachineConfig s length := by
  intro address both
  obtain ⟨member, offset, ho, equation⟩ := both
  have member' : address ∈ baselineEntryPcs := member
  have far := of_decide_eq_true ((List.all_eq_true.mp baseline_ffi_entries_above_boot) address member')
  rw [equation] at far
  rw [BitVec.toNat_add, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (show offset < 2 ^ 64 by norm_num [initialPc] at upper; omega),
    Nat.mod_eq_of_lt (show s.pc.toNat + offset < 2 ^ 64 by norm_num [initialPc] at upper; omega)] at far
  norm_num [initialPc] at lower upper
  omega

private theorem loop_instruction_length (stage : Nat) (hs : stage < 5) :
    (riscvEnc loopBody[stage]).length = 4 := by interval_cases stage <;> decide +revert

theorem copyBody_guard_step (k stage : Nat) (hk : k < 4606) (hs : stage < 5) :
    baselineMachineConfig.progAddresses = (bodyState (copyState k) stage).memDomain ∧
    ffiEntryPcsDisjoint baselineMachineConfig (bodyState (copyState k) stage)
      (riscvEnc loopBody[stage]).length := by
  refine ⟨?_, ?_⟩
  · rw [(bodyState_config _ _ (by omega)).2.1, (copyState_fields k).2.1]
    rfl
  · rw [loop_instruction_length stage hs]
    apply bootstrap_ffi_disjoint
    · rw [bodyState_pc _ _ hs, copyState_pc k (by omega)]
      simp only [hk, reduceIte]
      change initialPc ≤ (BitVec.ofNat 64 (0x80000018) + BitVec.ofNat 64 (4 * stage)).toNat
      rw [← BitVec.ofNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      norm_num [initialPc]; omega
    · rw [bodyState_pc _ _ hs, copyState_pc k (by omega)]
      simp only [hk, reduceIte]
      change (BitVec.ofNat 64 (0x80000018) + BitVec.ofNat 64 (4 * stage)).toNat + 4 ≤ initialPc + 208
      rw [← BitVec.ofNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      norm_num [initialPc]; omega

theorem copyBody_guards (k : Nat) (hk : k < 4606) :
    EvaluatorGuards baselineMachineConfig loopBody (copyState k) := by
  have h0 := copyBody_guard_step k 0 hk (by decide)
  have h1 := copyBody_guard_step k 1 hk (by decide)
  have h2 := copyBody_guard_step k 2 hk (by decide)
  have h3 := copyBody_guard_step k 3 hk (by decide)
  have h4 := copyBody_guard_step k 4 hk (by decide)
  simpa [EvaluatorGuards, loopBody, bodyState, run] using
    And.intro h0.1 (And.intro h0.2
      (And.intro h1.1 (And.intro h1.2
        (And.intro h2.1 (And.intro h2.2
          (And.intro h3.1 (And.intro h3.2
            (And.intro h4.1 (And.intro h4.2 True.intro)))))))))

private theorem guards_append (left right : List (HolAsm 64)) (s : AsmState 64) :
    EvaluatorGuards baselineMachineConfig (left ++ right) s ↔
      EvaluatorGuards baselineMachineConfig left s ∧
        EvaluatorGuards baselineMachineConfig right (run left s) := by
  induction left generalizing s with
  | nil => simp [EvaluatorGuards, run]
  | cons i rest ih => simp only [List.cons_append, EvaluatorGuards, run, ih, and_assoc]

theorem copyLoop_guards_from (count start : Nat) (bound : start + count ≤ 4606) :
    EvaluatorGuards baselineMachineConfig (loopProgram count) (copyState start) := by
  induction count generalizing start with
  | zero => trivial
  | succ count ih =>
    have program : loopProgram (count + 1) = loopBody ++ loopProgram count := by
      simp [loopProgram, List.replicate_succ]
    rw [program, guards_append]
    refine ⟨copyBody_guards start (by omega), ?_⟩
    have next : run loopBody (copyState start) = copyState (start + 1) := by
      simp only [copyState, Function.iterate_succ_apply']
    rw [next]
    exact ih (start + 1) (by omega)

theorem copyLoop_guards :
    EvaluatorGuards baselineMachineConfig (loopProgram 4606) copyEntryAsm :=
  copyLoop_guards_from 4606 0 (by decide)

end InitECandidate.Proofs.BootstrapCopyGuards
