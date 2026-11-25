import InitECandidate.Solver.SourceCost.Table
import InitECandidate.Solver.MemSafe.Helpers.Digits

set_option autoImplicit false
namespace DigitLengthBound
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe.Helpers

/-- The caller can reuse the concrete length bound even if the input contains zero digits. -/
theorem result {σ : Type} : FunSpec σ guestCtx (nm "digits_len")
    (fun vs _ r _ => Good (some r) → ∀ (p n : BitVec 64), vs = [.val (.word p), .val (.word n)] →
      n.toNat ≤ 8 → ∀ v, r = .returned v → ∃ k : BitVec 64, v = .val (.word k) ∧ k.toNat ≤ 8) := by
  refine FunSpec.mono (funSpec_digits_len guestCtx_code) ?_
  intro vs s r t h hg p n hv hn v hr
  obtain ⟨k, hvalue, hk, _⟩ := (h hg).2.2 v hr p n hv
  exact ⟨k, hvalue, hk.trans hn⟩

#print axioms result
end DigitLengthBound
