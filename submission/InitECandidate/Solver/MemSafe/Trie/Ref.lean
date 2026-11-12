import InitECandidate.Solver.MemSafe.Trie.Clean

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `node_ref_len` and `_node_needs_rlp`: read-only, exception-inclusive
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem cc_failK (hC : X.code.lookup = guestCode) {s0 : State σ} :
    HoareG σ X (Clean s0) failK (CQ s0) :=
  cc_ite (cc_fail hC) cc_skip

theorem spec_nrl_clean (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "node_ref_len") (fun _ s r t => Good (some r) → Clean s t) := by
  refine funSpecG_of_hoareG (R := fun _ s r t => Clean s t) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_node_ref_len hl
  refine hoareG_pre (P := Clean s0) ?_ (fun t _ ht => by subst ht; exact clean_refl _)
  unfold nrlBody
  exact hoareG_conseq (cc_seq (cc_ite cc_return cc_skip) (cc_seq (cc_ite cc_return cc_skip)
    (cc_seq (cc_failK hC) (cc_dec (cc_seq (cc_ite cc_return cc_skip) cc_return)))))
    (fun _ _ h => h) (fun r t _ _ h r' _ => h)

/-- `node_ref_len`: clean, and a return is `RL`. -/
theorem spec_nrl (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "node_ref_len") (fun vs s r t => Good (some r) → Clean s t ∧
      ∀ v, r = .returned v → ∀ C : BitVec 64, vs = [.val (.word C)] → v = .val (.word (RL s.memory C))) :=
  FunSpec.mono ((spec_nrl_clean hC).and (ret_node_ref_len hC)) fun vs s r t ⟨h1, h2⟩ hg =>
    ⟨h1 hg, fun v hv C hvs => (h2 v hv C hvs).2.2⟩

end InitECandidate.Solver.MemSafe.Trie
