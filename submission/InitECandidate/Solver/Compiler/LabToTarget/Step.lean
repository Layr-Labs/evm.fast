import InitECandidate.Solver.Compiler.LabToTarget.Nop
import Flapjack.Compiler.Backend.LabToTarget.CompileCorrect.Step

/-!
# Bounded simulation of one target line

Flapjack's `stepOfLine`, `stepNopOfLineMem` and `stepNopOfLine`
(`Flapjack/Compiler/Backend/LabToTarget/CompileCorrect/Step.lean`) with a bounded
encoder (`encoderCorrectBounded mc.target bound`) and the additional conclusion
`q * l ≤ bytes'.length`: the machine steps `l` spent on a target line are bounded by
its byte length divided by `q`, given `q * (bound i + 1) ≤ (encode i).length` for all
instructions `i`. The proofs are Flapjack's with the bounded evaluator lemmas.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- Bounded `stepOfLine`: the leading instruction of the line takes
`q * l ≤ bytes'.length` machine steps. -/
theorem stepOfLine_bounded {width : Nat} [NeZero width] {S Q F σ : Type}
    {mc : MachineConfig width S Q} {code2 : LabProgHOL width} {labs : Spt (Spt Nat)}
    {p : BitVec width} {s1 : LabSem.State width Config F} {t1 : AsmState width} {ms1 : S}
    (bound : HolAsm width → Nat) (q : Nat)
    (hq : ∀ j, q * (bound j + 1) ≤ (mc.target.config.encode j).length)
    (io : HolFfiState σ) (hrel : stateRel (mc, code2, labs, p) s1 t1 ms1)
    (hec : encoderCorrectBounded mc.target bound) (instr : HolAsm width)
    (bytes' : List (BitVec 8))
    (hmem : bytesInMemHOL (p + BitVec.ofNat width (posVal s1.pc 0 code2)) bytes' t1.mem
      t1.memDomain (fun a => s1.memDomain a = true))
    (henc : encWithNop mc.target.config.encode instr bytes')
    (hok : asmOkExact instr mc.target.config = true)
    (hdis : ffiEntryPcsDisjoint mc t1 bytes'.length)
    (hnf : ¬ (asmUpd instr (t1.pc + BitVec.ofNat width (mc.target.config.encode instr).length)
      t1).failed) :
    ∃ l ms2, q * l ≤ bytes'.length ∧ ∀ k,
      evaluateTargetHOL mc io (k + l) ms1 = evaluateTargetHOL (shiftInterfer l mc) io k ms2 ∧
      findNextInterference mc io (k + l) ms1 =
        findNextInterference (shiftInterfer l mc) io k ms2 ∧
      targetStateRel mc.target
        (asmUpd instr (t1.pc + BitVec.ofNat width (mc.target.config.encode instr).length) t1)
        ms2 ∧
      l ≠ 0 := by
  obtain ⟨c1, -, c3, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
    c27, -, -, -, -, -, -, -, -, -, -, -, ht1f, -, htpc, -, c43, c44, c45, -⟩ := hrel
  have hmem' := bytesInMem_encWithNop _ _ _ _ _ _ _ henc hmem
  obtain ⟨count, rfl⟩ := (encWithNop_iff _ _ _).mp henc
  have hlen : (mc.target.config.encode instr).length ≤
      (mc.target.config.encode instr ++
        (List.replicate count (mc.target.config.encode (.inst .skip))).flatten).length := by
    simp
  obtain ⟨l, ms2, hlb, hl⟩ := asmStepImpEvaluate_bounded mc bound t1 ms1 io instr
    ⟨hec, c3, ffiEntryPcsDisjoint_shorter mc t1 _ _ ⟨hdis, hlen⟩, c27,
      ⟨by rw [htpc]; exact hmem', linkGuard_flip _ _ c43, c44, c45, rfl, hnf, hok⟩, c1⟩
  refine ⟨l, ms2, ?_, hl⟩
  exact Nat.le_trans (Nat.le_trans (Nat.mul_le_mul_left q hlb) (hq instr)) hlen

/-- Bounded `stepNopOfLineMem`: the whole NOP-padded line takes
`q * l ≤ bytes'.length` machine steps. -/
theorem stepNopOfLineMem_bounded {width : Nat} [NeZero width] {S Q F σ : Type}
    {mc : MachineConfig width S Q} {code2 : LabProgHOL width} {labs : Spt (Spt Nat)}
    {p : BitVec width} {s1 : LabSem.State width Config F} {t1 : AsmState width} {ms1 : S}
    (bound : HolAsm width → Nat) (q : Nat)
    (hq : ∀ j, q * (bound j + 1) ≤ (mc.target.config.encode j).length)
    (io : HolFfiState σ) (hrel : stateRel (mc, code2, labs, p) s1 t1 ms1)
    (hec : encoderCorrectBounded mc.target bound) (instr : HolAsm width)
    (bytes' : List (BitVec 8))
    (hmem : bytesInMemHOL (p + BitVec.ofNat width (posVal s1.pc 0 code2)) bytes' t1.mem
      t1.memDomain (fun a => s1.memDomain a = true))
    (henc : encWithNop mc.target.config.encode instr bytes')
    (hok : asmOkExact instr mc.target.config = true)
    (hdis : ffiEntryPcsDisjoint mc t1 bytes'.length)
    (hnf : ¬ (asmUpd instr (t1.pc + BitVec.ofNat width bytes'.length) t1).failed)
    (hb2 : bytesInMemoryHOL t1.pc bytes'
      (asmUpd instr (t1.pc + BitVec.ofNat width bytes'.length) t1).mem t1.memDomain)
    (hcall : ∀ x, instr ≠ .call x) :
    ∃ l ms2, q * l ≤ bytes'.length ∧ ∀ k,
      evaluateTargetHOL mc io (k + l) ms1 = evaluateTargetHOL (shiftInterfer l mc) io k ms2 ∧
      findNextInterference mc io (k + l) ms1 =
        findNextInterference (shiftInterfer l mc) io k ms2 ∧
      targetStateRel mc.target (asmUpd instr (t1.pc + BitVec.ofNat width bytes'.length) t1)
        ms2 ∧
      l ≠ 0 := by
  obtain ⟨c1, -, c3, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
    c27, -, -, -, -, -, -, -, -, -, -, -, -, -, htpc, -, c43, c44, c45, -⟩ := hrel
  have hb := bytesInMem_impliesMemory _ _ _ _ _ hmem
  rw [← htpc] at hb
  apply asmStepImpEvaluateStepNop_bounded bound q mc t1 ms1 io instr _ bytes' hq
  refine ⟨hec, c3, hdis, c27, hb2, ?_, rfl, c1, hcall⟩
  exact ⟨hb, henc, c43, c44, c45, rfl, hnf, hok⟩

/-- Bounded `stepNopOfLine`: the whole NOP-padded line takes
`q * l ≤ bytes'.length` machine steps. -/
theorem stepNopOfLine_bounded {width : Nat} [NeZero width] {S Q F σ : Type}
    {mc : MachineConfig width S Q} {code2 : LabProgHOL width} {labs : Spt (Spt Nat)}
    {p : BitVec width} {s1 : LabSem.State width Config F} {t1 : AsmState width} {ms1 : S}
    (bound : HolAsm width → Nat) (q : Nat)
    (hq : ∀ j, q * (bound j + 1) ≤ (mc.target.config.encode j).length)
    (io : HolFfiState σ) (hrel : stateRel (mc, code2, labs, p) s1 t1 ms1)
    (hec : encoderCorrectBounded mc.target bound) (instr : HolAsm width)
    (bytes' : List (BitVec 8))
    (hmem : bytesInMemHOL (p + BitVec.ofNat width (posVal s1.pc 0 code2)) bytes' t1.mem
      t1.memDomain (fun a => s1.memDomain a = true))
    (henc : encWithNop mc.target.config.encode instr bytes')
    (hok : asmOkExact instr mc.target.config = true)
    (hdis : ffiEntryPcsDisjoint mc t1 bytes'.length)
    (hnf : ¬ (asmUpd instr (t1.pc + BitVec.ofNat width bytes'.length) t1).failed)
    (hmemeq : ∀ a, ¬ s1.memDomain a = true →
      (asmUpd instr (t1.pc + BitVec.ofNat width bytes'.length) t1).mem a = t1.mem a)
    (hcall : ∀ x, instr ≠ .call x) :
    ∃ l ms2, q * l ≤ bytes'.length ∧ ∀ k,
      evaluateTargetHOL mc io (k + l) ms1 = evaluateTargetHOL (shiftInterfer l mc) io k ms2 ∧
      findNextInterference mc io (k + l) ms1 =
        findNextInterference (shiftInterfer l mc) io k ms2 ∧
      targetStateRel mc.target (asmUpd instr (t1.pc + BitVec.ofNat width bytes'.length) t1)
        ms2 ∧
      l ≠ 0 := by
  obtain ⟨c1, -, c3, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
    c27, -, -, -, -, -, -, -, -, -, -, -, -, -, htpc, -, c43, c44, c45, -⟩ := hrel
  have hb := bytesInMem_impliesMemory _ _ _ _ _ hmem
  rw [← htpc] at hb
  have hb2 := bytesInMem_impliesMemory_change _ t1.mem
    (asmUpd instr (t1.pc + BitVec.ofNat width bytes'.length) t1).mem _ bytes' _
    (fun a ha => (hmemeq a ha).symm) hmem
  rw [← htpc] at hb2
  apply asmStepImpEvaluateStepNop_bounded bound q mc t1 ms1 io instr _ bytes' hq
  refine ⟨hec, c3, hdis, c27, hb2, ?_, rfl, c1, hcall⟩
  exact ⟨hb, henc, c43, c44, c45, rfl, hnf, hok⟩

end InitECandidate.Solver.Compiler.LabToTarget
