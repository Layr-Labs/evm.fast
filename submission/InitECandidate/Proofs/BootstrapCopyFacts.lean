import InitECandidate.Proofs.BootstrapCopy
import InitECandidate.Proofs.BootstrapMemory

set_option autoImplicit false

namespace InitECandidate.Proofs.BootstrapCopy
open InitE
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.RiscV.TargetProof InitECandidate.Proofs.BootstrapSteps

noncomputable def copyState (words : Nat) : AsmState 64 :=
  (run loopBody)^[words] InitE.copyEntryAsm

theorem copyState_fields (words : Nat) :
    (copyState words).be = false ∧
    (copyState words).memDomain = InitE.bootstrapDomain ∧
    (copyState words).regs 7 = 0xa0028ff0 ∧
    (copyState words).lr = 1 ∧ (copyState words).align = 2 := by
  simpa [copyState, InitE.copyEntryAsm, InitE.initialAsm, InitE.initDataEnd] using
    iterations_fields words InitE.copyEntryAsm

theorem copyState_source (words : Nat) :
    (copyState words).regs 5 = 0x800f2000 + BitVec.ofNat 64 (8 * words) :=
  iterations_source words InitE.copyEntryAsm

theorem copyState_destination (words : Nat) :
    (copyState words).regs 6 = 0xa0020000 + BitVec.ofNat 64 (8 * words) :=
  iterations_destination words InitE.copyEntryAsm

private theorem concrete_memory_domain (a : BitVec 64) (lower upper : Nat)
    (region : (lower = 0x800f2000 ∧ upper = 0x800faff0) ∨
      (lower = 0xa0020000 ∧ upper = 0xa0028ff0))
    (lo : lower ≤ a.toNat) (hi : a.toNat < upper) : InitE.bootstrapDomain a := by
  constructor
  · unfold InitE.memoryDomain InitE.machineSharedDomain
    norm_num [InitE.initialPc, InitE.codeSizeLimit, InitE.ramStart, InitE.ramEnd,
      InitE.inputStart, InitE.inputEnd, InitE.inputSize, InitE.outputStart, InitE.outputEnd, InitE.ramSize, InitE.outputSize]
    rcases region with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;> omega
  · intro i bound equal
    have h := congrArg BitVec.toNat equal
    have ni : 16 * (i + 1) ≤ 352 := by omega
    have offNat : (BitVec.ofNat 64 (16 * (i + 1))).toNat = 16 * (i + 1) := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    have pcNat : (BitVec.ofNat 64 InitE.nativePc).toNat = 0x80001070 := by decide
    rw [BitVec.toNat_sub_of_le (by
      apply BitVec.le_def.mpr
      rw [offNat, pcNat]
      omega), pcNat, offNat] at h
    rcases region with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;> omega

theorem concrete_domain_source (k : Nat) (hk : k < 4606) (j : Nat) (hj : j < 8) :
    InitE.bootstrapDomain (wordAddress 0x800f2000 k j) := by
  have addr := wordAddress_toNat (0x800f2000 : BitVec 64) k j (by simp; omega)
  have base : (0x800f2000 : BitVec 64).toNat = 0x800f2000 := by decide
  rw [base] at addr
  apply concrete_memory_domain _ 0x800f2000 0x800faff0 (Or.inl ⟨rfl, rfl⟩)
  · rw [addr]; omega
  · rw [addr]; omega

theorem concrete_domain_destination (k : Nat) (hk : k < 4606) (j : Nat) (hj : j < 8) :
    InitE.bootstrapDomain (wordAddress 0xa0020000 k j) := by
  have addr := wordAddress_toNat (0xa0020000 : BitVec 64) k j (by simp; omega)
  have base : (0xa0020000 : BitVec 64).toNat = 0xa0020000 := by decide
  rw [base] at addr
  apply concrete_memory_domain _ 0xa0020000 0xa0028ff0 (Or.inr ⟨rfl, rfl⟩)
  · rw [addr]; omega
  · rw [addr]; omega

theorem concrete_word_aligned (base : BitVec 64) (k : Nat)
    (aligned : holAligned 3 base = true) :
    holAligned 3 (base + BitVec.ofNat 64 (8 * k)) = true := by
  rw [(alignedAddSub 3 base (BitVec.ofNat 64 (8 * k)) (by
    rw [holAligned_iff]
    simp [BitVec.toNat_ofNat, Nat.mod_mod_of_dvd])).1]
  exact aligned

theorem copyState_branch (k : Nat) (hk : k < 4606) :
    (((copyState k).regs 6 + 8).ult ((copyState k).regs 7)) =
      decide (k + 1 < 4606) := by
  rw [(copyState_fields k).2.2.1, copyState_destination]
  have sum : (0xa0020000 : BitVec 64) + BitVec.ofNat 64 (8 * k) + 8 =
      BitVec.ofNat 64 (0xa0020000 + 8 * (k + 1)) := by
    simp [Nat.mul_succ, BitVec.ofNat_add, add_assoc]
  rw [sum]
  simp only [BitVec.ult, BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (show 0xa0020000 + 8 * (k + 1) < 2 ^ 64 by omega)]
  have endNat : (0xa0028ff0 : BitVec 64).toNat = 0xa0028ff0 := by decide
  rw [endNat]
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  omega

theorem copyState_pc (k : Nat) (hk : k ≤ 4606) :
    (copyState k).pc = if k < 4606 then 0x80000018 else 0x8000002c := by
  induction k with
  | zero => rfl
  | succ k ih =>
    unfold copyState
    rw [Function.iterate_succ_apply']
    change (run loopBody (copyState k)).pc = _
    rw [loopBody_pc, copyState_branch k (by omega), ih (by omega)]
    have bound : k < 4606 := by omega
    by_cases last : k + 1 < 4606 <;> simp [last, bound]

theorem copyState_success (k : Nat) (hk : k ≤ 4606) : (copyState k).failed = false := by
  induction k with
  | zero => rfl
  | succ k ih =>
    unfold copyState
    rw [Function.iterate_succ_apply']
    change (run loopBody (copyState k)).failed = false
    rw [loopBody_failed]
    apply copyWord_success _ (copyState_fields k).1 (ih (by omega))
    · intro j hj
      rw [(copyState_fields k).2.1, copyState_source]
      exact concrete_domain_source k (by omega) j hj
    · intro j hj
      rw [(copyState_fields k).2.1, copyState_destination]
      exact concrete_domain_destination k (by omega) j hj
    · rw [copyState_source]
      exact concrete_word_aligned _ k (by rw [holAligned_iff]; decide)
    · rw [copyState_destination]
      exact concrete_word_aligned _ k (by rw [holAligned_iff]; decide)

noncomputable def bodyState (s : AsmState 64) (stage : Nat) : AsmState 64 :=
  run (loopBody.take stage) s

theorem bodyState_config (s : AsmState 64) (stage : Nat) (hs : stage ≤ 5) :
    (bodyState s stage).be = s.be ∧
    (bodyState s stage).memDomain = s.memDomain ∧
    (bodyState s stage).lr = s.lr ∧ (bodyState s stage).align = s.align := by
  interval_cases stage <;>
    simp [bodyState, run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
      jumpToOffset, updPc, updReg, memOp, memLoad, memStore,
      addrHOL, readReg, regImm, assertState,
      Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
      Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> simp

theorem bodyState_memory (s : AsmState 64) (stage : Nat) (hs : stage ≤ 5) :
    (bodyState s stage).mem = if stage < 2 then s.mem else (copyWord s).mem := by
  interval_cases stage <;>
    simp [bodyState, run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
      jumpToOffset, updPc, updReg, memOp, memLoad, memStore, copyWord,
      addrHOL, readReg, regImm, assertState,
      Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
      Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> rfl

theorem bodyState_pc (s : AsmState 64) (stage : Nat) (hs : stage < 5) :
    (bodyState s stage).pc = s.pc + BitVec.ofNat 64 (4 * stage) := by
  interval_cases stage <;>
    simp [bodyState, run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
      jumpToOffset, updPc, updReg, memOp, memLoad, memStore,
      addrHOL, readReg, regImm, assertState,
      Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
      Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq,
      riscvEnc, riscvAst, riscvEncode, riscvMemop, inSignedRange] <;> bv_omega

theorem bodyState_succ (s : AsmState 64) (stage : Nat) (hs : stage < 5) :
    InitECandidate.Proofs.BootstrapSteps.after (bodyState s stage) loopBody[stage] =
      bodyState s (stage + 1) := by
  interval_cases stage <;> rfl

theorem bodyState_failed (s : AsmState 64) (stage : Nat) (hs : stage ≤ 5) :
    (bodyState s stage).failed =
      if stage = 0 then s.failed
      else if stage = 1 then (memLoad 8 28 (.addr 5 0) s).failed
      else (copyWord s).failed := by
  interval_cases stage <;>
    simp [bodyState, run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
      jumpToOffset, updPc, updReg, memOp, memLoad, memStore, copyWord,
      addrHOL, readReg, regImm, assertState,
      Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
      Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> rfl

theorem copyBody_success (k stage : Nat) (hk : k < 4606) (hs : stage ≤ 5) :
    (bodyState (copyState k) stage).failed = false := by
  have stored : (copyWord (copyState k)).failed = false := by
    rw [← loopBody_failed]
    simpa only [copyState, Function.iterate_succ_apply'] using
      copyState_success (k + 1) (by omega)
  have loaded := ((source_memstore_success 8 28 (.addr 6 0)
    (memLoad 8 28 (.addr 5 0) (copyState k))).mp stored).1
  rw [bodyState_failed _ _ hs]
  split_ifs
  · exact copyState_success k (by omega)
  · exact loaded
  · exact stored

/-- The complete copy loop leaves every non-destination byte unchanged. -/
theorem copyState_frame (k : Nat) (hk : k ≤ 4606) (x : BitVec 64)
    (outside : ∀ word < k, ∀ byte < 8,
      x ≠ wordAddress 0xa0020000 word byte) :
    (copyState k).mem x = InitE.initialMemory x := by
  apply iterations_frame k InitE.copyEntryAsm x
  · intro word hw; exact (copyState_fields word).1
  · intro word hw byte hb
    rw [iterations_destination]
    exact outside word hw byte hb

theorem loopBody_other_register (s : AsmState 64) (r : Nat)
    (r5 : r ≠ 5) (r6 : r ≠ 6) (r28 : r ≠ 28) :
    (run loopBody s).regs r = s.regs r := by
  simp [run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
    jumpToOffset, updPc, updReg, memOp, memLoad, memStore,
    addrHOL, readReg, regImm, assertState,
    Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq, r5, r6, r28]
  split <;> simp [r5, r6, r28]

theorem copyState_other_register (k r : Nat)
    (r5 : r ≠ 5) (r6 : r ≠ 6) (r28 : r ≠ 28) :
    (copyState k).regs r = InitE.copyEntryAsm.regs r := by
  induction k with
  | zero => rfl
  | succ k ih =>
    unfold copyState
    rw [Function.iterate_succ_apply', loopBody_other_register _ r r5 r6 r28]
    exact ih

theorem loopBody_loaded (s : AsmState 64) (little : s.be = false) :
    (run loopBody s).regs 28 = sourceReadWord (resultWidth := 64) false s.mem (s.regs 5) 8 := by
  have valueEq := source_read_word_value (resultWidth := 64) (s.regs 5) 8 s
  rw [little] at valueEq
  rw [← valueEq]
  simp [run, loopBody, after, asmUpd, instUpd, arithUpd, binopUpd,
    jumpToOffset, updPc, updReg, memOp, memLoad, memStore,
    addrHOL, readReg, regImm, assertState, little,
    Flapjack.Compiler.Backend.LabToTarget.readMemWord_eq,
    Flapjack.Compiler.Backend.LabToTarget.writeMemWord_eq]
  split <;> rfl

/-- Every loaded word still comes from the original immutable ROM bytes. -/
theorem copyState_source_word (k : Nat) (hk : k < 4606) :
    sourceReadWord (resultWidth := 64) false (copyState k).mem ((copyState k).regs 5) 8 =
      sourceReadWord (resultWidth := 64) false InitE.initialMemory
        (0x800f2000 + BitVec.ofNat 64 (8 * k)) 8 := by
  rw [copyState_source]
  apply BitVec.eq_of_getLsbD_eq
  intro bit bitBound
  rw [source_read_word_bit _ _ _ _ bitBound, source_read_word_bit _ _ _ _ bitBound]
  have selected : bit < 8 * 8 := bitBound
  simp only [selected, reduceIte]
  apply congrArg (fun value : BitVec 8 => value.getLsbD (bit % 8))
  apply copyState_frame k (by omega)
  intro word hw byte hb
  exact concrete_source_disjoint k hk (bit / 8) (by omega) word (by omega) byte hb

/-- x28 at exit is the last word copied from ROM. Its value is calculated
from the original eight bytes rather than assumed as register initialization. -/
theorem copyState_last_register (k : Nat) (hk : k < 4606) :
    (copyState (k + 1)).regs 28 = sourceReadWord (resultWidth := 64) false InitE.initialMemory
      (0x800f2000 + BitVec.ofNat 64 (8 * k)) 8 := by
  unfold copyState
  rw [Function.iterate_succ_apply']
  change (run loopBody (copyState k)).regs 28 = _
  rw [loopBody_loaded _ (copyState_fields k).1, copyState_source_word k hk]

/-- Expected memory after the ROM data copy alone. -/
def copiedMemory (count : Nat) (a : BitVec 64) : BitVec 8 :=
  if 0xa0020000 ≤ a.toNat ∧ a.toNat < 0xa0020000 + 8 * count then
    InitE.initialMemory (BitVec.ofNat 64 (0x800f2000 + (a.toNat - 0xa0020000)))
  else InitE.initialMemory a

/-- The copy loop establishes its complete memory formula, including every
byte outside the destination and the original source ROM contents. -/
theorem copyExit_memory_general (count : Nat) (countBound : count ≤ 4606) :
    (copyState count).mem = copiedMemory count := by
  funext a
  simp only [copyState]
  unfold copiedMemory
  split_ifs with region
  · let offset := a.toNat - 0xa0020000
    let word := offset / 8
    let byte := offset % 8
    have offsetBound : offset < 8 * count := by dsimp [offset]; omega
    have wordBound : word < count := by dsimp [word]; omega
    have byteBound : byte < 8 := Nat.mod_lt _ (by decide)
    have decomposition : 8 * word + byte = offset := by
      dsimp [word, byte]
      omega
    have destAddr : wordAddress 0xa0020000 word byte = a := by
      apply BitVec.eq_of_toNat_eq
      rw [wordAddress_toNat _ _ _ (by simp; omega)]
      have base : (0xa0020000 : BitVec 64).toNat = 0xa0020000 := by decide
      rw [base]
      dsimp [offset] at decomposition
      omega
    have sourceAddr : wordAddress 0x800f2000 word byte =
        BitVec.ofNat 64 (0x800f2000 + offset) := by
      apply BitVec.eq_of_toNat_eq
      rw [wordAddress_toNat _ _ _ (by simp; omega), BitVec.toNat_ofNat,
        Nat.mod_eq_of_lt (by omega)]
      have base : (0x800f2000 : BitVec 64).toNat = 0x800f2000 := by decide
      rw [base]
      omega
    have copied := iterations_selected count InitE.copyEntryAsm rfl
      (fun k hk j hj l hl b hb => concrete_source_disjoint k (by omega) j hj l (by omega) b hb)
      (fun k hk j hj l hl b hb neq => concrete_destination_disjoint k (by omega) j hj l (by omega) b hb neq)
      word wordBound byte byteBound
    have sourceRegister : InitE.copyEntryAsm.regs 5 = 0x800f2000 := rfl
    have destinationRegister : InitE.copyEntryAsm.regs 6 = 0xa0020000 := rfl
    have sourceMemory : InitE.copyEntryAsm.mem = InitE.initialMemory := rfl
    rw [sourceRegister, destinationRegister, sourceMemory] at copied
    rw [destAddr, sourceAddr] at copied
    exact copied
  · have frame := copyState_frame count countBound a
    apply frame
    intro word hw byte hb eq
    have values := congrArg BitVec.toNat eq
    have addr := wordAddress_toNat (0xa0020000 : BitVec 64) word byte (by simp; omega)
    have base : (0xa0020000 : BitVec 64).toNat = 0xa0020000 := by decide
    rw [base] at addr
    rw [addr] at values
    omega

theorem copyExit_memory : (copyState 4606).mem = copiedMemory 4606 :=
  copyExit_memory_general 4606 (by decide)

end InitECandidate.Proofs.BootstrapCopy
