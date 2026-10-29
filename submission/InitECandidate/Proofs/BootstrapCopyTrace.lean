import InitECandidate.Proofs.BootstrapCopyFacts
import InitECandidate.Proofs.BootstrapCodeFacts

namespace InitECandidate.Proofs.BootstrapCopy
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BootstrapSteps InitECandidate.Proofs.BootstrapStraightLine

private theorem low_code_outside (x : BitVec 64) (lo : InitE.initialPc ≤ x.toNat)
    (hi : x.toNat < InitE.initialPc + 208) (word byte : Nat)
    (hw : word < 4606) (hb : byte < 8) :
    x ≠ wordAddress 0xa0020000 word byte := by
  intro eq
  have address := wordAddress_toNat (0xa0020000 : BitVec 64) word byte (by simp; omega)
  have base : (0xa0020000 : BitVec 64).toNat = 0xa0020000 := by decide
  rw [base] at address
  have numeric := congrArg BitVec.toNat eq
  rw [address] at numeric
  norm_num [InitE.initialPc] at lo hi
  omega

/-- Every bootstrap code byte survives previous iterations and this iteration's
store; this derives code installation at every intermediate state. -/
theorem copyBody_code_frame (k stage : Nat) (hk : k < 4606) (hs : stage ≤ 5)
    (x : BitVec 64) (lo : InitE.initialPc ≤ x.toNat)
    (hi : x.toNat < InitE.initialPc + 208) :
    (bodyState (copyState k) stage).mem x = InitE.initialMemory x := by
  rw [bodyState_memory _ _ hs]
  have prior : (copyState k).mem x = InitE.initialMemory x := by
    apply copyState_frame k (by omega) x
    intro word hw byte hb
    exact low_code_outside x lo hi word byte (by omega) hb
  split_ifs
  · exact prior
  · rw [copyWord_frame _ (copyState_fields k).1 x (by
      intro byte hb
      rw [copyState_destination]
      exact low_code_outside x lo hi k byte hk hb)]
    exact prior

private theorem loop_block_member (stage : Nat) (hs : stage < 5) :
    (0x80000018 + 4 * stage, loopBody[stage]) ∈ InitE.bootstrapBlocks := by
  interval_cases stage <;> simp [loopBody, InitE.bootstrapBlocks, InitE.bootStore, InitE.bootAdd]

private theorem loop_admitted (stage : Nat) (hs : stage < 5) :
    asmOkExact loopBody[stage] riscvConfig = true := by
  interval_cases stage <;> decide +revert

private theorem loop_instruction_length (stage : Nat) (hs : stage < 5) :
    (riscvEnc loopBody[stage]).length = 4 := by
  interval_cases stage <;> decide +revert

/-- All five instruction transitions of each actual loop iteration are checked:
code bytes, domain, alignment, source memory assertions and encoder admission. -/
theorem copyBody_steps (k stage : Nat) (hk : k < 4606) (hs : stage < 5) :
    asmStep riscvConfig (bodyState (copyState k) stage) loopBody[stage]
      (bodyState (copyState k) (stage + 1)) := by
  rw [← bodyState_succ _ _ hs]
  apply checked_step
  · have installed := block_bytes _ (loop_block_member stage hs)
    have pc : (bodyState (copyState k) stage).pc =
        BitVec.ofNat 64 (0x80000018 + 4 * stage) := by
      rw [bodyState_pc _ _ hs, copyState_pc k (by omega)]
      simp only [hk, reduceIte, BitVec.ofNat_add]
      rfl
    rw [pc, (bodyState_config _ _ (by omega)).2.1,
      (copyState_fields k).2.1]
    apply bytesInMemory_changeMem _ _ InitE.initialMemory _ InitE.bootstrapDomain
    refine ⟨installed, ?_⟩
    intro offset ho
    rw [loop_instruction_length stage hs] at ho
    apply Eq.symm
    apply copyBody_code_frame k stage hk (by omega)
    · rw [← BitVec.ofNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      norm_num [InitE.initialPc]; omega
    · rw [← BitVec.ofNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      norm_num [InitE.initialPc]; omega
  · exact (bodyState_config _ _ (by omega)).2.2.1.trans (copyState_fields k).2.2.2.1
  · exact (bodyState_config _ _ (by omega)).1.trans (copyState_fields k).1
  · exact (bodyState_config _ _ (by omega)).2.2.2.trans (copyState_fields k).2.2.2.2
  · rw [bodyState_succ _ _ hs]
    simp only [Bool.not_eq_true]
    exact copyBody_success k (stage + 1) hk (by omega)
  · exact loop_admitted stage hs

theorem copyBody_checked (k : Nat) (hk : k < 4606) : Checked loopBody (copyState k) := by
  have h0 := copyBody_steps k 0 hk (by decide)
  have h1 := copyBody_steps k 1 hk (by decide)
  have h2 := copyBody_steps k 2 hk (by decide)
  have h3 := copyBody_steps k 3 hk (by decide)
  have h4 := copyBody_steps k 4 hk (by decide)
  simpa [Checked, loopBody, bodyState, run] using
    And.intro h0 (And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 True.intro))))

private theorem checked_append (left right : List (HolAsm 64)) (s : AsmState 64) :
    Checked (left ++ right) s ↔ Checked left s ∧ Checked right (run left s) := by
  induction left generalizing s with
  | nil => simp [Checked, run]
  | cons i rest ih => simp only [List.cons_append, Checked, run, ih, and_assoc]

/-- All iterations of the fixed bitmap-copy loop satisfy the actual assembler
step checks. No concrete machine execution or installed memory is a premise. -/
theorem copyLoop_checked_from (count start : Nat) (bound : start + count ≤ 4606) :
    Checked (loopProgram count) (copyState start) := by
  induction count generalizing start with
  | zero => trivial
  | succ count ih =>
    have program : loopProgram (count + 1) = loopBody ++ loopProgram count := by
      simp [loopProgram, List.replicate_succ]
    rw [program, checked_append]
    refine ⟨copyBody_checked start (by omega), ?_⟩
    have next : run loopBody (copyState start) = copyState (start + 1) := by
      simp only [copyState, Function.iterate_succ_apply']
    rw [next]
    exact ih (start + 1) (by omega)

theorem copyLoop_checked : Checked (loopProgram 4606) InitE.copyEntryAsm :=
  copyLoop_checked_from 4606 0 (by decide)

/-- The concrete4616word copy has an unconditional finite source trace to its
calculated endpoint, ready to compose with the straight-line setup/tail. -/
theorem copyLoop_trace :
    Relation.ReflTransGen (fun before after => ∃ i, asmStep riscvConfig before i after)
      InitE.copyEntryAsm (copyState 4606) := by
  simpa only [loopProgram_run, copyState] using run_trace (loopProgram 4606) InitE.copyEntryAsm copyLoop_checked

/-- The actual RISC-V target reaches the computed end of the initialized-data
copy from every related copy-entry machine state. -/
theorem copyLoop_machine (ms : Flapjack.RiscV.L3.riscv_state)
    (related : targetStateRel riscvTarget InitE.copyEntryAsm ms) :
    ∃ n, targetStateRel riscvTarget (copyState 4606) (riscvNext^[n] ms) :=
  trace_simulation _ _ ms related copyLoop_trace

end InitECandidate.Proofs.BootstrapCopy
