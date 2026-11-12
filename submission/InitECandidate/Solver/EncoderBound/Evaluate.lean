import InitECandidate.Solver.EncoderBound.Defs
import Flapjack.Compiler.Backend.Semantics.TargetProps.AsmStepEvaluate

/-!
# Bounded single-step evaluator simulation

Flapjack's `asmStepImpEvaluate`
(`Flapjack/Compiler/Backend/Semantics/TargetProps/AsmStepEvaluate.lean`) takes the
`encoderCorrect` witness `n` and returns the evaluator clock advance `l = n + 1`.
The copies below take `encoderCorrectBounded c.target bound` instead and also
return `l ≤ bound i + 1`; the proof is Flapjack's, unchanged apart from keeping
the bound on `n`.
-/

namespace InitECandidate.Solver.EncoderBound

open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.AsmProps Flapjack.Compiler.Backend.Semantics.TargetProps

set_option autoImplicit false

/-- `asmStepImpEvaluate` with a bounded encoder: the clock advance is
`l = n + 1 ≤ bound i + 1`. -/
theorem asmStepImpEvaluate_bounded {width : Nat} [NeZero width]
    {S Q : Type} {σ : Type} (c : MachineConfig width S Q) (bound : HolAsm width → Nat)
    (s1 : AsmState width) (ms1 : S) (io : HolFfiState σ) (i : HolAsm width)
    (h : encoderCorrectBounded c.target bound ∧ c.progAddresses = s1.memDomain ∧
      ffiEntryPcsDisjoint c s1 (c.target.config.encode i).length ∧
      interferenceOk c.nextInterfer (c.target.proj s1.memDomain) ∧
      asmStep c.target.config s1 i
        (asmUpd i (s1.pc + BitVec.ofNat width (c.target.config.encode i).length) s1) ∧
      targetStateRel c.target s1 ms1) :
    ∃ l ms2, l ≤ bound i + 1 ∧ ∀ k,
      evaluateTargetHOL c io (k + l) ms1 = evaluateTargetHOL (shiftInterfer l c) io k ms2 ∧
      findNextInterference c io (k + l) ms1 = findNextInterference (shiftInterfer l c) io k ms2 ∧
      targetStateRel c.target
        (asmUpd i (s1.pc + BitVec.ofNat width (c.target.config.encode i).length) s1) ms2 ∧
      l ≠ 0 := by
  rcases h with ⟨henc, hdm, hdis, hinter, hstep, hrel⟩
  obtain ⟨n, hn, hs⟩ := henc.2 s1 i _ ms1 ⟨hstep, hrel⟩
  have hnon := encOkNotEmpty c.target.config i ⟨henc.1.1, hstep.2.2.2.2.2.2⟩
  have hlen : 0 < (c.target.config.encode i).length := by
    exact List.length_pos_iff.mpr hnon
  have hbytes : bytesInMemoryHOL s1.pc (c.target.config.encode i) (c.target.getByte ms1)
      (fun a => c.progAddresses a ∧ a ∉ c.ffiEntryPcs) := by
    apply bytesInMemory_diff s1.pc _ (c.target.getByte ms1) _ s1.memDomain
      (fun a => a ∈ c.ffiEntryPcs)
    refine ⟨?_, ?_, hdis⟩
    · rw [hdm]
    · apply bytesInMemory_changeMem s1.pc _ s1.mem _ s1.memDomain
      refine ⟨hstep.1, ?_⟩
      intro j hj
      apply (hrel.2.2.1 _ ?_).symm
      have hd := bytesInMemory_allPcs _ _ _ _ 0 hstep.1
      apply hd
      rw [allPcs_eq]
      exact ⟨j, by simpa using hj, by simp⟩
  have hnormal : c.progAddresses (c.target.getPc ms1) ∧ c.target.getPc ms1 ∉ c.ffiEntryPcs := by
    have hd := bytesInMemory_allPcs _ _ _ _ 0 hbytes
    apply hd
    rw [allPcs_eq, hrel.2.1]
    exact ⟨0, by simpa using hlen, by simp⟩
  have ha : ∀ env, interferenceOk env (c.target.proj s1.memDomain) →
      asserts n (fun k s => env k (c.target.next s)) ms1
        (fun ms => c.target.stateOk ms = true ∧
          (∀ pc, pc ∈ allPcs (c.target.config.encode i).length s1.pc 0 →
            c.target.getByte ms pc = c.target.getByte ms1 pc) ∧
          c.target.getPc ms ∈ allPcs (c.target.config.encode i).length s1.pc c.target.config.codeAlignment)
        (fun ms => targetStateRel c.target
          (asmUpd i (s1.pc + BitVec.ofNat width (c.target.config.encode i).length) s1) ms) := by
    intro env he
    have ht := (hs (fun k => env (n - k)) (fun k ms => he (n - k) ms)).1
    apply asserts_weaken n _ _ ms1 _ _ _ _ ht
    intro k hk
    constructor
    · funext ms
      have hidx : n - (n - k) = k := by omega
      simp only [hidx]
    · exact fun hx => hx
  have hobs : ∀ ms ms', c.target.proj s1.memDomain ms = c.target.proj s1.memDomain ms' →
      c.target.stateOk ms = c.target.stateOk ms' ∧ c.target.getPc ms = c.target.getPc ms' ∧
      ∀ a, s1.memDomain a → c.target.getByte ms a = c.target.getByte ms' a := by
    intro ms ms' hp
    exact (henc.1.2 ms ms' s1 hp).2
  obtain ⟨ms2, hout⟩ := evaluateEqEvaluate_all n ms1 c io s1.memDomain i s1.pc _
    ⟨hnormal, hrel.1, hdm, hinter, fun _ _ hr => hr.1, hobs, ha,
      (hs c.nextInterfer hinter).2, 0, by simpa using hrel.2.1,
      by simpa using hlen, hbytes⟩
  refine ⟨n + 1, ms2, Nat.succ_le_succ hn, ?_⟩
  intro k
  exact ⟨(hout k).1, (hout k).2.1, (hout k).2.2, by omega⟩

/-- `asmStepImpEvaluateOnly` with a bounded encoder: `0 < l ≤ bound i + 1`. -/
theorem asmStepImpEvaluateOnly_bounded {width : Nat} [NeZero width]
    {S Q : Type} {σ : Type} (c : MachineConfig width S Q) (bound : HolAsm width → Nat)
    (s1 : AsmState width) (ms1 : S) (io : HolFfiState σ) (i : HolAsm width)
    (h : encoderCorrectBounded c.target bound ∧ c.progAddresses = s1.memDomain ∧
      ffiEntryPcsDisjoint c s1 (c.target.config.encode i).length ∧
      interferenceOk c.nextInterfer (c.target.proj s1.memDomain) ∧
      asmStep c.target.config s1 i
        (asmUpd i (s1.pc + BitVec.ofNat width (c.target.config.encode i).length) s1) ∧
      targetStateRel c.target s1 ms1) :
    ∃ l ms2,
      (∀ k, evaluateTargetHOL c io (k + l) ms1 =
        evaluateTargetHOL (shiftInterfer l c) io k ms2) ∧
      targetStateRel c.target
        (asmUpd i (s1.pc + BitVec.ofNat width (c.target.config.encode i).length) s1) ms2 ∧
      l ≠ 0 ∧ l ≤ bound i + 1 := by
  obtain ⟨l, ms2, hl, hout⟩ := asmStepImpEvaluate_bounded c bound s1 ms1 io i h
  exact ⟨l, ms2, fun k => (hout k).1, (hout 0).2.2.1, (hout 0).2.2.2, hl⟩

end InitECandidate.Solver.EncoderBound
