import InitECandidate.Solver.MemSafe.Ptx.PtN4

/-!
# F3f: a generic counter loop, and small helpers
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- **A counter loop** `while cond { body }` with fixed facts: the counter `i` runs from `0` to `N`. -/
theorem hn_cloop {E : PtE σ} {En : Env} {S : FS} {i : MlS} {cond : ExpHOL 64} {body : ProgHOL 64} {N : Nat}
    (hct : ∀ (x : BitVec 64) (s : State σ), x.toNat ≤ N → PA E (En.set i (.val (.word x))) S s → CondTrue s cond →
      x.toNat < N)
    (hcf : ∀ (x : BitVec 64) (s : State σ), x.toNat ≤ N → PA E (En.set i (.val (.word x))) S s →
      ev s cond = some (.val (.word 0)) → ¬ x.toNat < N)
    (hN : N ≤ 2 ^ 58)
    (hbody : ∀ x : BitVec 64, x.toNat < N →
      HN (PA E (En.set i (.val (.word x))) S) body (PA E (En.set i (.val (.word (x + BitVec.ofNat 64 1)))) S)) :
    Hoare σ guestCtx (PA E (En.set i (.val (.word 0))) S) (.while cond body)
      (fun r t => r = none ∧ PA E (En.set i (.val (.word (BitVec.ofNat 64 N)))) S t) := by
  refine hoare_pre (hoare_while2
    (I := fun s : State σ => ∃ x : BitVec 64, x.toNat ≤ N ∧ PA E (En.set i (.val (.word x))) S s) ?_ ?_ ?_) ?_
  · intro s ⟨x, hx, hpa⟩
    exact ⟨x, hx, pa_decClock hpa⟩
  · intro s hs ⟨⟨x, hx, hpa⟩, hc⟩
    have hlt := hct x s hx hpa hc
    have h1 := hbody x hlt
    have hx1 : (x + BitVec.ofNat 64 1).toNat ≤ N := by rw [bv_succ (by omega)]; omega
    have h2 : Hoare σ guestCtx (PA E (En.set i (.val (.word x))) S) body (fun r t => r = none ∧
        ∃ y : BitVec 64, y.toNat ≤ N ∧ PA E (En.set i (.val (.word y))) S t) :=
      hoare_post h1 (fun r t _ _ h => ⟨h.1, x + BitVec.ofNat 64 1, hx1, h.2⟩)
    exact h2 s hs hpa
  · intro s hs ⟨x, hx, hpa⟩ hc
    have := hcf x s hx hpa hc
    have hxN : x = BitVec.ofNat 64 N := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_ofNat]
      rw [Nat.mod_eq_of_lt (by omega)]
      omega
    subst hxN
    exact hpa
  · intro s _ hpa
    exact ⟨0, by simp, hpa⟩

end InitECandidate.Solver.MemSafe.Ptx
