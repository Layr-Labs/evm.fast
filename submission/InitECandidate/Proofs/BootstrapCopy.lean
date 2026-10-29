import InitECandidate.Proofs.BootstrapSteps
import Flapjack.RiscV.CorrectnessEncoding.MemoryRead
import Flapjack.RiscV.CorrectnessEncoding.MemoryStore

namespace InitECandidate.Proofs.BootstrapCopy
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.AsmProps Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.RiscV.TargetProof
open InitECandidate.Proofs.BootstrapSteps

/-- One actual source load/store pair, retaining both alignment/domain checks. -/
noncomputable def copyWord (s : AsmState 64) : AsmState 64 :=
  memStore 8 28 (.addr 6 0) (memLoad 8 28 (.addr 5 0) s)

/-- Byte extraction of an eight-byte source read reconstructs the source byte. -/
theorem read_selected_byte (s : AsmState 64) (p : BitVec 64)
    (little : s.be = false) (j : Nat) (bound : j < 8) :
    (((readMemWord (resultWidth := 64) p 8 s).1 >>> (8 * j)).setWidth 8) =
      s.mem (p + BitVec.ofNat 64 j) := by
  rw [source_read_word_value, little]
  apply BitVec.eq_of_getLsbD_eq
  intro bit bitBound
  simp only [BitVec.getLsbD_setWidth, BitVec.getLsbD_ushiftRight,
    bitBound, decide_true, Bool.true_and]
  rw [source_read_word_bit _ _ _ _ (by omega)]
  have range : 8 * j + bit < 64 := by omega
  have div : (8 * j + bit) / 8 = j := by omega
  have mod : (8 * j + bit) % 8 = bit := by omega
  simp only [range, div, mod, reduceIte]

private theorem load_frame (s : AsmState 64) :
    (memLoad 8 28 (.addr 5 0) s).mem = s.mem ∧
    (memLoad 8 28 (.addr 5 0) s).be = s.be ∧
    (memLoad 8 28 (.addr 5 0) s).regs 6 = s.regs 6 := by
  simp [memLoad, Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    assertState, updReg]

/-- Actual LD/SD copies all eight addressed source bytes, even though its
state still records any failed alignment/domain assertion. Successful trace
construction separately discharges those checks. -/
theorem copyWord_selected (s : AsmState 64) (little : s.be = false)
    (j : Nat) (bound : j < 8) :
    (copyWord s).mem (s.regs 6 + BitVec.ofNat 64 j) =
      s.mem (s.regs 5 + BitVec.ofNat 64 j) := by
  let loaded := memLoad 8 28 (.addr 5 0) s
  have le : loaded.be = false := (load_frame s).2.1.trans little
  have dest : addrHOL (.addr 6 0) loaded = s.regs 6 := by
    change loaded.regs 6 + 0 = s.regs 6
    rw [add_zero]
    exact (load_frame s).2.2
  have value : loaded.regs 28 = (readMemWord (resultWidth := 64) (s.regs 5) 8 s).1 := by
    simp [loaded, memLoad, addrHOL, readReg, little, updReg, assertState]
  change (memStore 8 28 (.addr 6 0) loaded).mem _ = _
  simp only [memStore, dest, le, Bool.false_eq_true, reduceIte, assertState_mem, readReg]
  rw [source_write_selected_byte _ _ _ _ le j bound (by decide), value]
  exact read_selected_byte s _ little j bound

/-- Every other byte survives the actual load/store pair. -/
theorem copyWord_frame (s : AsmState 64) (little : s.be = false)
    (x : BitVec 64) (outside : ∀ j < 8, x ≠ s.regs 6 + BitVec.ofNat 64 j) :
    (copyWord s).mem x = s.mem x := by
  let loaded := memLoad 8 28 (.addr 5 0) s
  have le : loaded.be = false := (load_frame s).2.1.trans little
  have dest : addrHOL (.addr 6 0) loaded = s.regs 6 := by
    change loaded.regs 6 + 0 = s.regs 6
    rw [add_zero]
    exact (load_frame s).2.2
  change (memStore 8 28 (.addr 6 0) loaded).mem x = _
  simp only [memStore, dest, le, Bool.false_eq_true, reduceIte, assertState_mem]
  rw [source_write_region_frame _ _ _ _ le x outside]
  exact congrFun (load_frame s).1 x

theorem copyWord_success (s : AsmState 64) (little : s.be = false)
    (nonfailed : s.failed = false)
    (sourceDomain : ∀ j < 8, s.memDomain (s.regs 5 + BitVec.ofNat 64 j))
    (destinationDomain : ∀ j < 8, s.memDomain (s.regs 6 + BitVec.ofNat 64 j))
    (sourceAligned : holAligned 3 (s.regs 5) = true)
    (destinationAligned : holAligned 3 (s.regs 6) = true) :
    (copyWord s).failed = false := by
  have log : holLOG2 8 = 3 := by simp [holLOG2_eq_log2]
  have loaded : (memLoad 8 28 (.addr 5 0) s).failed = false := by
    apply (source_memload_success 8 28 (.addr 5 0) s).mpr
    simp only [little, Bool.false_eq_true, reduceIte, addrHOL, readReg,
      add_zero, log, source_memory_domain_little]
    exact ⟨nonfailed, sourceDomain, sourceAligned⟩
  apply (source_memstore_success 8 28 (.addr 6 0) _).mpr
  have fields : (memLoad 8 28 (.addr 5 0) s).memDomain = s.memDomain := by
    simp [memLoad, Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
      assertState, updReg]
  simp only [(load_frame s).2.1, little, Bool.false_eq_true, reduceIte,
    addrHOL, readReg, (load_frame s).2.2, add_zero, log,
    fields, source_memory_domain_little]
  exact ⟨loaded, destinationDomain, destinationAligned⟩

/-- Literal instructions of one iteration of the submitted copy loop. -/
def loopBody : List (HolAsm 64) :=
  [.inst (.mem .load 28 (.addr 5 0)),
   .inst (.mem .store 28 (.addr 6 0)),
   .inst (.arith (.binop .add 5 5 (.imm 8))),
   .inst (.arith (.binop .add 6 6 (.imm 8))),
   .jumpCmp .lower 6 (.reg 7) (-16)]

/-- Execute the real assembler update; this is a source-state calculation,
not a replacement machine evaluator. -/
noncomputable def run : List (HolAsm 64) → AsmState 64 → AsmState 64
  | [], s => s
  | i :: rest, s => run rest (after s i)

/-- Increment/branch instructions do not change the bytes written by LD/SD. -/
theorem loopBody_memory (s : AsmState 64) :
    (run loopBody s).mem = (copyWord s).mem := by
  simp [run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
    jumpToOffset, updPc, updReg, memOp, memLoad, memStore, copyWord,
    addrHOL, readReg, regImm, assertState,
    Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> rfl

/-- The loop advances its source pointer by exactly one machine word. -/
theorem loopBody_source (s : AsmState 64) :
    (run loopBody s).regs 5 = s.regs 5 + 8 := by
  simp [run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
    jumpToOffset, updPc, updReg, memOp, memLoad, memStore,
    addrHOL, readReg, regImm, assertState,
    Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> rfl

/-- The loop advances its destination pointer by exactly one machine word. -/
theorem loopBody_destination (s : AsmState 64) :
    (run loopBody s).regs 6 = s.regs 6 + 8 := by
  simp [run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
    jumpToOffset, updPc, updReg, memOp, memLoad, memStore,
    addrHOL, readReg, regImm, assertState,
    Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> rfl

/-- Copy-loop control and memory domain remain fixed. -/
theorem loopBody_fields (s : AsmState 64) :
    (run loopBody s).be = s.be ∧
    (run loopBody s).memDomain = s.memDomain ∧
    (run loopBody s).regs 7 = s.regs 7 ∧
    (run loopBody s).lr = s.lr ∧
    (run loopBody s).align = s.align := by
  simp [run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
    jumpToOffset, updPc, updReg, memOp, memLoad, memStore,
    addrHOL, readReg, regImm, assertState,
    Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> simp

theorem loopBody_failed (s : AsmState 64) :
    (run loopBody s).failed = (copyWord s).failed := by
  simp [run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
    jumpToOffset, updPc, updReg, memOp, memLoad, memStore, copyWord,
    addrHOL, readReg, regImm, assertState,
    Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> rfl

private theorem instruction_lengths :
    (riscvEnc (.inst (.mem .load 28 (.addr 5 0)))).length = 4 ∧
    (riscvEnc (.inst (.mem .store 28 (.addr 6 0)))).length = 4 ∧
    (riscvEnc (.inst (.arith (.binop .add 5 5 (.imm 8))))).length = 4 ∧
    (riscvEnc (.inst (.arith (.binop .add 6 6 (.imm 8))))).length = 4 ∧
    (riscvEnc (.jumpCmp .lower 6 (.reg 7) (-16))).length = 4 := by decide

/-- Taken iterations return to the first load; the final iteration falls
through exactly twenty bytes. -/
theorem loopBody_pc (s : AsmState 64) :
    (run loopBody s).pc =
      if (s.regs 6 + 8).ult (s.regs 7) then s.pc else s.pc + 20 := by
  rcases instruction_lengths with ⟨h1, h2, h3, h4, h5⟩
  by_cases branch : (s.regs 6 + 8).ult (s.regs 7) = true
  all_goals simp [run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
    jumpToOffset, updPc, updReg, memOp, memLoad, memStore,
    addrHOL, readReg, regImm, assertState,
    Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq,
    wordCmpHOL, BitVec.ult, riscvEnc, riscvAst, riscvEncode, riscvMemop, inSignedRange] at branch ⊢
  all_goals simp_all
  all_goals split_ifs <;> norm_num at * <;> (try simp_all) <;> bv_omega

/-- Local code-admission obligations at every calculated intermediate state. -/
noncomputable def Checked : List (HolAsm 64) → AsmState 64 → Prop
  | [], _ => True
  | i :: rest, s => asmStep riscvConfig s i (after s i) ∧ Checked rest (after s i)

/-- Checked finite source programs produce an actual finite assembler trace.
The endpoint is computed by the real update definitions, never supplied as
an assumed run or postcondition. -/
theorem run_trace (code : List (HolAsm 64)) (s : AsmState 64)
    (checks : Checked code s) :
    Relation.ReflTransGen (fun before after => ∃ i, asmStep riscvConfig before i after)
      s (run code s) := by
  induction code generalizing s with
  | nil => exact .refl
  | cons i rest ih =>
    exact (Relation.ReflTransGen.single ⟨i, checks.1⟩).trans (ih _ checks.2)

/-- The 4606-word loop has 23085 source instructions. -/
def loopProgram (words : Nat) : List (HolAsm 64) :=
  (List.replicate words loopBody).flatten

theorem loopProgram_length (words : Nat) : (loopProgram words).length = 5 * words := by
  simp [loopProgram, loopBody, Nat.mul_comm]

theorem run_append (left right : List (HolAsm 64)) (s : AsmState 64) :
    run (left ++ right) s = run right (run left s) := by
  induction left generalizing s with
  | nil => rfl
  | cons i rest ih => exact ih (after s i)

/-- The expanded finite loop is exactly repeated execution of its real body. -/
theorem loopProgram_run (words : Nat) (s : AsmState 64) :
    run (loopProgram words) s = (run loopBody)^[words] s := by
  induction words generalizing s with
  | zero => rfl
  | succ words ih =>
    simp only [loopProgram, List.replicate_succ, List.flatten_cons, run_append]
    rw [show run ((List.replicate words loopBody).flatten) (run loopBody s) =
      (run loopBody)^[words] (run loopBody s) from ih _]
    exact (Function.iterate_succ_apply _ _ _).symm

theorem iterations_source (words : Nat) (s : AsmState 64) :
    ((run loopBody)^[words] s).regs 5 = s.regs 5 + BitVec.ofNat 64 (8 * words) := by
  induction words with
  | zero => simp
  | succ words ih =>
    rw [Function.iterate_succ_apply', loopBody_source, ih]
    simp [Nat.mul_succ, BitVec.ofNat_add, add_assoc]

theorem iterations_destination (words : Nat) (s : AsmState 64) :
    ((run loopBody)^[words] s).regs 6 = s.regs 6 + BitVec.ofNat 64 (8 * words) := by
  induction words with
  | zero => simp
  | succ words ih =>
    rw [Function.iterate_succ_apply', loopBody_destination, ih]
    simp [Nat.mul_succ, BitVec.ofNat_add, add_assoc]

theorem iterations_fields (words : Nat) (s : AsmState 64) :
    ((run loopBody)^[words] s).be = s.be ∧
    ((run loopBody)^[words] s).memDomain = s.memDomain ∧
    ((run loopBody)^[words] s).regs 7 = s.regs 7 ∧
    ((run loopBody)^[words] s).lr = s.lr ∧
    ((run loopBody)^[words] s).align = s.align := by
  induction words with
  | zero => exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  | succ words ih =>
    rw [Function.iterate_succ_apply']
    have frame := loopBody_fields ((run loopBody)^[words] s)
    exact ⟨frame.1.trans ih.1, frame.2.1.trans ih.2.1,
      frame.2.2.1.trans ih.2.2.1, frame.2.2.2.1.trans ih.2.2.2.1,
      frame.2.2.2.2.trans ih.2.2.2.2⟩

/-- For an arbitrary protected region, all loop iterations preserve it when
every destination-word footprint lies outside that region. This is the
ROM/source/code frame used to retain literal bootstrap code and bitmap input. -/
theorem iterations_frame (words : Nat) (s : AsmState 64) (x : BitVec 64)
    (little : ∀ k < words, ((run loopBody)^[k] s).be = false)
    (outside : ∀ k < words, ∀ j < 8,
      x ≠ ((run loopBody)^[k] s).regs 6 + BitVec.ofNat 64 j) :
    ((run loopBody)^[words] s).mem x = s.mem x := by
  induction words with
  | zero => rfl
  | succ words ih =>
    rw [Function.iterate_succ_apply']
    rw [show (run loopBody ((run loopBody)^[words] s)).mem =
      (copyWord ((run loopBody)^[words] s)).mem from loopBody_memory _]
    rw [copyWord_frame _ (little words (by omega)) x (outside words (by omega))]
    exact ih (fun k hk => little k (by omega)) (fun k hk => outside k (by omega))

/-- Address of a byte in the word-indexed copy footprint. -/
def wordAddress (base : BitVec 64) (word byte : Nat) : BitVec 64 :=
  base + BitVec.ofNat 64 (8 * word) + BitVec.ofNat 64 byte

/-- Complete copy-loop byte invariant. The only address assumptions say that
source bytes lie outside destination writes and distinct destination words
have disjoint footprints. No final memory or execution result is assumed. -/
theorem iterations_selected (words : Nat) (s : AsmState 64)
    (little : s.be = false)
    (sourceDisjoint : ∀ k < words, ∀ j < 8, ∀ l < words, ∀ b < 8,
      wordAddress (s.regs 5) k j ≠ wordAddress (s.regs 6) l b)
    (destinationDisjoint : ∀ k < words, ∀ j < 8, ∀ l < words, ∀ b < 8,
      k ≠ l → wordAddress (s.regs 6) k j ≠ wordAddress (s.regs 6) l b) :
    ∀ k < words, ∀ j < 8,
      ((run loopBody)^[words] s).mem (wordAddress (s.regs 6) k j) =
        s.mem (wordAddress (s.regs 5) k j) := by
  induction words with
  | zero => intro k hk; omega
  | succ words ih =>
    intro k hk j hj
    have currentLittle : ((run loopBody)^[words] s).be = false :=
      (iterations_fields words s).1.trans little
    rw [Function.iterate_succ_apply', loopBody_memory]
    by_cases last : k = words
    · subst k
      have copied := copyWord_selected ((run loopBody)^[words] s) currentLittle j hj
      rw [iterations_source, iterations_destination] at copied
      change (copyWord ((run loopBody)^[words] s)).mem
        (wordAddress (s.regs 6) words j) = _ at copied
      rw [copied]
      apply iterations_frame words s
      · intro l hl
        exact (iterations_fields l s).1.trans little
      · intro l hl b hb
        rw [iterations_destination]
        exact sourceDisjoint words (by omega) j hj l (by omega) b hb
    · have previous : k < words := by omega
      rw [copyWord_frame _ currentLittle _ (by
        intro b hb
        rw [iterations_destination]
        exact destinationDisjoint k hk j hj words (by omega) b hb last)]
      exact ih
        (fun k hk j hj l hl b hb => sourceDisjoint k (by omega) j hj l (by omega) b hb)
        (fun k hk j hj l hl b hb neq => destinationDisjoint k (by omega) j hj l (by omega) b hb neq)
        k previous j hj

theorem wordAddress_toNat (base : BitVec 64) (word byte : Nat)
    (within : base.toNat + 8 * word + byte < 2 ^ 64) :
    (wordAddress base word byte).toNat = base.toNat + 8 * word + byte := by
  have same : wordAddress base word byte =
      BitVec.ofNat 64 (base.toNat + 8 * word + byte) := by
    simp [wordAddress, BitVec.ofNat_add]
  rw [same, BitVec.toNat_ofNat, Nat.mod_eq_of_lt within]

/-- The concrete ROM/RAM copy footprints are disjoint. -/
theorem concrete_source_disjoint :
    ∀ k < 4606, ∀ j < 8, ∀ l < 4606, ∀ b < 8,
      wordAddress 0x800f2000 k j ≠ wordAddress 0xa0020000 l b := by
  intro k hk j hj l hl b hb equal
  have src := wordAddress_toNat (0x800f2000 : BitVec 64) k j (by simp; omega)
  have dst := wordAddress_toNat (0xa0020000 : BitVec 64) l b (by simp; omega)
  have values := congrArg BitVec.toNat equal
  rw [src, dst] at values
  simp at values
  omega

/-- Every destination word of the concrete loop has a separate footprint. -/
theorem concrete_destination_disjoint :
    ∀ k < 4606, ∀ j < 8, ∀ l < 4606, ∀ b < 8,
      k ≠ l → wordAddress 0xa0020000 k j ≠ wordAddress 0xa0020000 l b := by
  intro k hk j hj l hl b hb different equal
  have first := wordAddress_toNat (0xa0020000 : BitVec 64) k j (by simp; omega)
  have second := wordAddress_toNat (0xa0020000 : BitVec 64) l b (by simp; omega)
  have values := congrArg BitVec.toNat equal
  rw [first, second] at values
  omega

/-- All 36936 ROM bytes are copied into RAM by the computed source loop. -/
theorem concrete_copy_selected (s : AsmState 64)
    (little : s.be = false) (source : s.regs 5 = 0x800f2000)
    (destination : s.regs 6 = 0xa0020000) :
    ∀ k < 4606, ∀ j < 8,
      ((run loopBody)^[4606] s).mem (wordAddress 0xa0020000 k j) =
        s.mem (wordAddress 0x800f2000 k j) := by
  have h := iterations_selected 4606 s little
    (by rw [source, destination]; exact concrete_source_disjoint)
    (by rw [destination]; exact concrete_destination_disjoint)
  simpa only [source, destination] using h

/-- A calculated and locally checked copy loop runs on the real L3 machine. -/
theorem loop_machine_trace (words : Nat) (s : AsmState 64)
    (ms : Flapjack.RiscV.L3.riscv_state)
    (related : targetStateRel riscvTarget s ms)
    (checks : Checked (loopProgram words) s) :
    ∃ n, targetStateRel riscvTarget (run (loopProgram words) s) (riscvNext^[n] ms) :=
  trace_simulation s _ ms related (run_trace _ _ checks)

end InitECandidate.Proofs.BootstrapCopy
