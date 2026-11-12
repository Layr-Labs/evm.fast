import InitECandidate.Solver.MemSafe.Wg.Core
import InitECandidate.Solver.MemSafe.Eb.Loop14

/-!
# Wg: a counter loop `while i < n { body }` over a family of invariants
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem add_one_toNat {iv N : BitVec 64} (h : iv.toNat < N.toNat) : (iv + BitVec.ofNat 64 1).toNat = iv.toNat + 1 := by
  have h1 : (BitVec.ofNat 64 1).toNat = 1 := by decide
  rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]

/-- **The counter loop.** `P iv` is the state invariant at counter value `iv`; it fixes the two locals; the body takes `P iv` to
`P (iv + 1)` while `iv < N`. -/
theorem hoare_cnt {P : BitVec 64 → State σ → Prop} {ci cn : MlS} {N : BitVec 64} {body : ProgHOL 64}
    (hN : N.toNat < 2 ^ 63)
    (hclk : ∀ iv s, P iv s → P iv (decClockHOLFinite s))
    (hval : ∀ iv s, P iv s → s.locals.lookup ci = some (.val (.word iv)) ∧ s.locals.lookup cn = some (.val (.word N)))
    (hbody : ∀ iv : BitVec 64, iv.toNat < N.toNat →
      Hoare σ guestCtx (P iv) body (fun r t => r = none ∧ P (iv + BitVec.ofNat 64 1) t)) :
    Hoare σ guestCtx (P (BitVec.ofNat 64 0)) (.while (.cmp .less (lv ci) (lv cn)) body)
      (fun r t => r = none ∧ P N t) := by
  let I : State σ → Prop := fun s => ∃ iv : BitVec 64, iv.toNat ≤ N.toNat ∧ P iv s
  have hval' : ∀ (iv : BitVec 64) (s : State σ) (x y : BitVec 64), P iv s → ev s (lv ci) = some (.val (.word x)) →
      ev s (lv cn) = some (.val (.word y)) → x = iv ∧ y = N := by
    intro iv s x y hp hx hy
    obtain ⟨l1, l2⟩ := hval iv s hp
    have e1 : ev s (lv ci) = some (.val (.word iv)) := l1
    have e2 : ev s (lv cn) = some (.val (.word N)) := l2
    rw [e1] at hx; rw [e2] at hy
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx hy
    exact ⟨hx.symm, hy.symm⟩
  refine hoare_pre (P := I) (hoare_while (I := I) ?_ ?_ ?_) ?_
  · rintro s ⟨iv, hiv, hp⟩
    exact ⟨iv, hiv, hclk iv s hp⟩
  · refine hoare_pre (hoare_exists (P := fun (iv : BitVec 64) s => (iv.toNat ≤ N.toNat ∧ P iv s) ∧
      CondTrue s (.cmp .less (lv ci) (lv cn))) ?_) (fun s _ ⟨⟨iv, hiv, hp⟩, hc⟩ => ⟨iv, ⟨hiv, hp⟩, hc⟩)
    intro iv s hs ⟨⟨hiv, hp⟩, hc⟩ ht
    obtain ⟨w', hw, hne⟩ := hc
    obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_true hw hne
    obtain ⟨rfl, rfl⟩ := hval' iv s x y hp hx hy
    have hlt : x.toNat < y.toNat := less_true' (by omega) (by omega) hcmp
    obtain ⟨hr, hp'⟩ := hbody x hlt s hs hp ht
    refine ⟨fun _ => ⟨x + BitVec.ofNat 64 1, by rw [add_one_toNat hlt]; omega, hp'⟩, fun h => ?_, fun h => ?_, fun v h => ?_⟩
    all_goals (rw [hr] at h; cases h)
  · intro s _ ⟨iv, hiv, hp⟩ hc
    obtain ⟨x, y, hx, hy, hcmp⟩ := cmp_false hc
    obtain ⟨rfl, rfl⟩ := hval' iv s x y hp hx hy
    have hge : y.toNat ≤ x.toNat := less_false' (by omega) (by omega) hcmp
    have : x = y := BitVec.eq_of_toNat_eq (by omega)
    subst this
    exact ⟨rfl, hp⟩
  · intro s _ hp
    exact ⟨BitVec.ofNat 64 0, by simp, hp⟩

end InitECandidate.Solver.MemSafe.Wg
