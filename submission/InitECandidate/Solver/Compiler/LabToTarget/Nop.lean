import InitECandidate.Solver.EncoderBound.Evaluate
import Flapjack.Compiler.Backend.LabToTarget.NopSteps
import Batteries.Tactic.OpenPrivate

/-!
# Bounded NOP-padded assembly steps

Flapjack's `evaluateNopSteps` and `asmStepImpEvaluateStepNop`
(`Flapjack/Compiler/Backend/LabToTarget/NopSteps.lean`) with the existential
evaluator clock advance `l` bounded. They take `encoderCorrectBounded c.target bound`
(our `EncoderBound.Defs`) instead of `encoderCorrect c.target`; the proofs are
Flapjack's, with `asmStepImpEvaluate` replaced by `asmStepImpEvaluate_bounded`
and the bound arithmetic added.

* `n` NOPs take at most `n * (bound skip + 1)` machine steps.
* A NOP-padded line `bytes` takes `q * l ≤ bytes.length` machine steps whenever every
  instruction `i` satisfies `q * (bound i + 1) ≤ (encode i).length` (RISC-V: `q = 4`).
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.AsmProps Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend.LabToTarget
open InitECandidate.Solver.EncoderBound
open private pcAddAdd interferenceOk_shift ffiEntryPcsDisjoint_advance asmUpd_skip
  linkGuard_swap asmOk_skip from Flapjack.Compiler.Backend.LabToTarget.NopSteps

set_option autoImplicit false

/-- `evaluateNopSteps` with a bounded encoder: `n` NOPs take
`l ≤ n * (bound skip + 1)` machine steps. -/
theorem evaluateNopSteps_bounded {width : Nat} [NeZero width] {S Q : Type} {σ : Type}
    (bound : HolAsm width → Nat)
    (io : HolFfiState σ) (n : Nat) (s1 : AsmState width) (ms1 : S)
    (c : MachineConfig width S Q)
    (h : encoderCorrectBounded c.target bound ∧ c.progAddresses = s1.memDomain ∧
      ffiEntryPcsDisjoint c s1 (n * (c.target.config.encode (.inst .skip)).length) ∧
      interferenceOk c.nextInterfer (c.target.proj s1.memDomain) ∧
      bytesInMemoryHOL s1.pc
        (List.replicate n (c.target.config.encode (.inst .skip))).flatten s1.mem
        s1.memDomain ∧
      (match c.target.config.linkReg with
       | none => True
       | some r => s1.lr = r) ∧
      s1.be = c.target.config.bigEndian ∧
      s1.align = c.target.config.codeAlignment ∧ ¬ s1.failed ∧
      targetStateRel c.target s1 ms1) :
    ∃ l ms2, l ≤ n * (bound (.inst .skip) + 1) ∧ ∀ k,
      evaluateTargetHOL c io (k + l) ms1 = evaluateTargetHOL (shiftInterfer l c) io k ms2 ∧
      findNextInterference c io (k + l) ms1 =
        findNextInterference (shiftInterfer l c) io k ms2 ∧
      targetStateRel c.target
        (updPc (s1.pc + BitVec.ofNat width
          (n * (c.target.config.encode (.inst .skip)).length)) s1) ms2 := by
  induction n generalizing s1 ms1 c with
  | zero =>
    refine ⟨0, ms1, Nat.zero_le _, fun k => ?_⟩
    rw [shiftInterfer_zero]
    refine ⟨rfl, rfl, ?_⟩
    have : updPc (s1.pc + BitVec.ofNat width (0 * (c.target.config.encode (.inst .skip)).length))
        s1 = s1 := by
      cases s1; simp [updPc]
    rw [this]; exact h.2.2.2.2.2.2.2.2.2
  | succ n ih =>
    obtain ⟨henc, hdm, hdis, hint, hbytes, hlr, hbe, halign, hfail, hrel⟩ := h
    set len := (c.target.config.encode (.inst .skip)).length with hlen
    rw [List.replicate_succ, List.flatten_cons, bytesInMemory_append] at hbytes
    have hstep := asmStepImpEvaluate_bounded c bound s1 ms1 io (.inst .skip)
      ⟨henc, hdm, ffiEntryPcsDisjoint_shorter c s1 _ _ ⟨hdis, by
          rw [Nat.succ_mul]; omega⟩, hint,
        ⟨hbytes.1, linkGuard_swap _ _ hlr, hbe, halign, rfl, by simpa [asmUpd_skip, updPc] using hfail,
          asmOk_skip _⟩, hrel⟩
    obtain ⟨l, ms2, hlb, hl⟩ := hstep
    rw [asmUpd_skip] at hl
    have ih' := ih (updPc (s1.pc + BitVec.ofNat width len) s1) ms2 (shiftInterfer l c)
      ⟨henc, hdm, ffiEntryPcsDisjoint_advance c _ s1 _ len (n * len) rfl rfl (by
          rw [Nat.succ_mul, Nat.add_comm] at hdis; exact hdis),
        interferenceOk_shift c l _ hint, hbytes.2, hlr, hbe, halign, hfail, (hl 0).2.2.1⟩
    obtain ⟨l', ms3, hlb', hl'⟩ := ih'
    refine ⟨l + l', ms3, ?_, fun k => ?_⟩
    · have hb' : l' ≤ n * (bound (.inst .skip) + 1) := hlb'
      rw [Nat.succ_mul]; omega
    have h1 := hl (k + l')
    have h2 := hl' k
    rw [shiftInterfer_twice] at h2
    have htgt : (shiftInterfer l c).target = c.target := rfl
    refine ⟨?_, ?_, ?_⟩
    · rw [show k + (l + l') = k + l' + l by omega, h1.1]; exact h2.1
    · rw [show k + (l + l') = k + l' + l by omega, h1.2.1]; exact h2.2.1
    · have h3 := h2.2.2
      simp only [htgt, ← hlen, updPc] at h3 ⊢
      rw [pcAddAdd, show len + n * len = (n + 1) * len by rw [Nat.succ_mul]; omega] at h3
      exact h3

/-- `asmStepImpEvaluateStepNop` with a bounded encoder: a NOP-padded line
`bytes` encoding `i` takes `l` machine steps with `q * l ≤ bytes.length`, given
`q * (bound j + 1) ≤ (encode j).length` for every instruction `j`. -/
theorem asmStepImpEvaluateStepNop_bounded {width : Nat} [NeZero width] {S Q : Type} {σ : Type}
    (bound : HolAsm width → Nat) (q : Nat)
    (c : MachineConfig width S Q) (s1 : AsmState width) (ms1 : S) (io : HolFfiState σ)
    (i : HolAsm width) (s2 : AsmState width) (bytes : List (BitVec 8))
    (hq : ∀ j, q * (bound j + 1) ≤ (c.target.config.encode j).length)
    (h : encoderCorrectBounded c.target bound ∧ c.progAddresses = s1.memDomain ∧
      ffiEntryPcsDisjoint c s1 bytes.length ∧
      interferenceOk c.nextInterfer (c.target.proj s1.memDomain) ∧
      bytesInMemoryHOL s1.pc bytes s2.mem s1.memDomain ∧
      asmStepNop bytes c.target.config s1 i s2 ∧
      s2 = asmUpd i (s1.pc + BitVec.ofNat width bytes.length) s1 ∧
      targetStateRel c.target s1 ms1 ∧
      (∀ x, i ≠ .call x)) :
    ∃ l ms2, q * l ≤ bytes.length ∧ ∀ k,
      evaluateTargetHOL c io (k + l) ms1 = evaluateTargetHOL (shiftInterfer l c) io k ms2 ∧
      findNextInterference c io (k + l) ms1 =
        findNextInterference (shiftInterfer l c) io k ms2 ∧
      targetStateRel c.target s2 ms2 ∧ l ≠ 0 := by
  obtain ⟨henc, hdm, hdis, hint, hbytes2, hnop, hs2, hrel, hcall⟩ := h
  obtain ⟨hbytes1, hwith, hlr, hbe, halign, -, hfail, hok⟩ := hnop
  obtain ⟨n, rfl⟩ := (encWithNop_iff _ _ _).mp hwith
  set enc := c.target.config.encode i with henc_def
  set skip := c.target.config.encode (.inst .skip) with hskip
  have hflat : (List.replicate n skip).flatten.length = n * skip.length := by simp
  have hblen : (enc ++ (List.replicate n skip).flatten).length = enc.length + n * skip.length := by
    rw [List.length_append, hflat]
  have hqi : q * (bound i + 1) ≤ enc.length := hq i
  have hqs : q * (bound (.inst .skip) + 1) ≤ skip.length := hq _
  rw [bytesInMemory_append] at hbytes1 hbytes2
  have hfail' : ¬ (asmUpd i (s1.pc + BitVec.ofNat width enc.length) s1).failed := by
    rw [asm_failed_ignore_new_pc i
      (s1.pc + BitVec.ofNat width (enc ++ (List.replicate n skip).flatten).length), ← hs2]
    exact hfail
  obtain ⟨l, ms2, hlb, hl⟩ := asmStepImpEvaluate_bounded c bound s1 ms1 io i
    ⟨henc, hdm, ffiEntryPcsDisjoint_shorter c s1 _ _ ⟨hdis, by
        rw [hblen]; simp only [← henc_def]; omega⟩, hint,
      ⟨hbytes1.1, linkGuard_swap _ _ hlr, hbe, halign, rfl, hfail', hok⟩, hrel⟩
  have hql : q * l ≤ enc.length :=
    Nat.le_trans (Nat.mul_le_mul_left q hlb) hqi
  -- The jumps ignore the supplied next PC.
  have hjump : (∃ w, i = .jump w) ∨
      (∃ cmp r ri w, i = .jumpCmp cmp r ri w ∧ wordCmpHOL cmp (readReg r s1) (regImm ri s1)) ∨
      (∃ r, i = .jumpReg r) → s2 = asmUpd i (s1.pc + BitVec.ofNat width enc.length) s1 := by
    rintro (⟨w, rfl⟩ | ⟨cmp, r, ri, w, rfl, hc⟩ | ⟨r, rfl⟩)
    · rw [hs2]; rfl
    · rw [hs2]; simp [asmUpd, hc]
    · rw [hs2]; rfl
  by_cases hj : (∃ w, i = .jump w) ∨
      (∃ cmp r ri w, i = .jumpCmp cmp r ri w ∧ wordCmpHOL cmp (readReg r s1) (regImm ri s1)) ∨
      (∃ r, i = .jumpReg r)
  · refine ⟨l, ms2, by rw [hblen]; omega, fun k => ?_⟩
    rw [hjump hj]; exact hl k
  -- Otherwise the step falls through to the padding NOPs.
  set s := asmUpd i (s1.pc + BitVec.ofNat width enc.length) s1 with hs
  have hspc : s.pc = s1.pc + BitVec.ofNat width enc.length := by
    rw [hs]
    cases i with
    | inst _ => rfl
    | jump w => exact absurd (Or.inl ⟨w, rfl⟩) hj
    | jumpCmp cmp r ri w =>
      simp only [asmUpd]
      split
      · next hc => exact absurd (Or.inr (Or.inl ⟨cmp, r, ri, w, rfl, hc⟩)) hj
      · rfl
    | call x => exact absurd rfl (hcall x)
    | jumpReg r => exact absurd (Or.inr (Or.inr ⟨r, rfl⟩)) hj
    | loc _ _ => rfl
  have hupd : ∀ x, updPc x s = asmUpd i x s1 := by
    intro x
    rw [hs]
    cases i with
    | inst _ => rfl
    | jump w => exact absurd (Or.inl ⟨w, rfl⟩) hj
    | jumpCmp cmp r ri w =>
      simp only [asmUpd]
      split
      · next hc => exact absurd (Or.inr (Or.inl ⟨cmp, r, ri, w, rfl, hc⟩)) hj
      · rfl
    | call x => exact absurd rfl (hcall x)
    | jumpReg r => exact absurd (Or.inr (Or.inr ⟨r, rfl⟩)) hj
    | loc _ _ => rfl
  have hcs := asm_consts i (s1.pc + BitVec.ofNat width enc.length) s1
  have hmem : s.mem = s2.mem := by
    rw [hs, hs2]; exact asm_mem_ignore_new_pc _ _ _ _
  obtain ⟨l', ms3, hlb', hl'⟩ := evaluateNopSteps_bounded bound io n s ms2 (shiftInterfer l c)
    ⟨henc, by rw [hcs.2.2.2]; exact hdm,
      ffiEntryPcsDisjoint_advance c _ s1 s enc.length _ rfl hspc (by
        rw [hblen] at hdis; exact hdis),
      by rw [hcs.2.2.2]; exact interferenceOk_shift c l _ hint,
      by rw [hspc, hmem, hcs.2.2.2]; exact hbytes2.2,
      by rw [hcs.2.1]; exact hlr, by rw [hcs.1]; exact hbe, by rw [hcs.2.2.1]; exact halign,
      hfail', (hl 0).2.2.1⟩
  have hql' : q * l' ≤ n * skip.length := by
    have hb : q * l' ≤ q * (n * (bound (.inst .skip) + 1)) := Nat.mul_le_mul_left q hlb'
    have he : q * (n * (bound (.inst .skip) + 1)) = n * (q * (bound (.inst .skip) + 1)) := by
      rw [← Nat.mul_assoc, Nat.mul_comm q n, Nat.mul_assoc]
    rw [he] at hb
    exact Nat.le_trans hb (Nat.mul_le_mul_left n hqs)
  refine ⟨l + l', ms3, ?_, fun k => ?_⟩
  · rw [hblen, Nat.mul_add]; omega
  have h1 := hl (k + l')
  have h2 := hl' k
  rw [shiftInterfer_twice] at h2
  have htgt : (shiftInterfer l c).target = c.target := rfl
  refine ⟨?_, ?_, ?_, by have := (hl 0).2.2.2; omega⟩
  · rw [show k + (l + l') = k + l' + l by omega, h1.1]; exact h2.1
  · rw [show k + (l + l') = k + l' + l by omega, h1.2.1]; exact h2.2.1
  · have h3 := h2.2.2
    simp only [htgt, ← hskip] at h3
    rw [hupd, hspc, pcAddAdd, ← hblen] at h3
    rw [hs2]; exact h3

end InitECandidate.Solver.Compiler.LabToTarget
