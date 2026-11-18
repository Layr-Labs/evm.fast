import Flapjack.Compiler.Encoders.AsmProps.EncoderCorrect

/-! Exact generic boundedness definition from the accepted Solver. No concrete
RISC-V correctness import, weakened premise, new axiom or stub is introduced. -/
namespace InitECandidate.Solver.Improvements.CompilerSharp
open Flapjack Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Encoders.AsmSem
open Flapjack.Compiler.Encoders.AsmProps
set_option autoImplicit false
/-- Flapjack's `encoderCorrect` with the step witness bounded by `bound i`. -/
noncomputable def encoderCorrectBounded {width : Nat} [NeZero width] {β γ : Type}
    (t : HolAsmTarget width β γ) (bound : HolAsm width → Nat) : Prop :=
  targetOk t ∧
    ∀ (s1 : AsmState width) (i : HolAsm width) (s2 : AsmState width) (ms : β),
      asmStep t.config s1 i s2 ∧ targetStateRel t s1 ms →
      ∃ n : Nat, n ≤ bound i ∧ ∀ env : Nat → β → β,
        interferenceOk env (t.proj s1.memDomain) →
        let pcs := allPcs (t.config.encode i).length s1.pc
        asserts n (fun k s => env (n - k) (t.next s)) ms
            (fun ms' => t.stateOk ms' = true ∧
              (∀ pc, pc ∈ pcs 0 → t.getByte ms' pc = t.getByte ms pc) ∧
              t.getPc ms' ∈ pcs t.config.codeAlignment)
            (fun ms' => targetStateRel t s2 ms') ∧
          asserts2 (n + 1) (fun k => env (n + 1 - k)) t.next ms
            (fun ms1 ms2 => ∀ x, ¬ s1.memDomain x → t.getByte ms1 x = t.getByte ms2 x)

/-- Forgetting the bound recovers Flapjack's `encoderCorrect`. -/
theorem encoderCorrect_of_bounded {width : Nat} [NeZero width] {β γ : Type}
    {t : HolAsmTarget width β γ} {bound : HolAsm width → Nat}
    (h : encoderCorrectBounded t bound) : encoderCorrect t := by
  refine ⟨h.1, fun s1 i s2 ms hs => ?_⟩
  obtain ⟨n, -, hn⟩ := h.2 s1 i s2 ms hs
  exact ⟨n, hn⟩

/-- A bound can always be weakened pointwise. -/
theorem encoderCorrectBounded_mono {width : Nat} [NeZero width] {β γ : Type}
    {t : HolAsmTarget width β γ} {b b' : HolAsm width → Nat}
    (h : encoderCorrectBounded t b) (le : ∀ i, b i ≤ b' i) :
    encoderCorrectBounded t b' := by
  refine ⟨h.1, fun s1 i s2 ms hs => ?_⟩
  obtain ⟨n, hb, hn⟩ := h.2 s1 i s2 ms hs
  exact ⟨n, Nat.le_trans hb (le i), hn⟩


end InitECandidate.Solver.Improvements.CompilerSharp
