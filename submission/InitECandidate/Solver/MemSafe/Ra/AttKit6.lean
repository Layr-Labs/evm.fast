import InitECandidate.Solver.MemSafe.Ra.AttPart2b

/-!
# `run_attempt`: the block environment `be`: facts after its adoption, and stores into it
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The facts after `be = alloc(120)` adopted as a `tBOS` block. -/
def SB (S : FS) (be0 : BitVec 64) : FS := fun f =>
  S f ∨ AdoptNF S be0 tBOS 120 f ∨ f = Fct.gobj nmBe be0 tBOS ∨ f = Fct.gval nmBe be0

theorem ofNat_add_toNat' {b : BitVec 64} {d : Nat} (h : b.toNat + d < 2 ^ 64) : (b + BitVec.ofNat 64 d).toNat = b.toNat + d := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := d) (by omega)]
  exact Nat.mod_eq_of_lt h

/-- No fact of `SB S be0` reads a cell of the block. -/
theorem fr_SB {S : FS} {be0 : BitVec 64} {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ}
    (hL : HoldsAll p0 Γ p u (SB S be0)) :
    ∀ f, SB S be0 f → ∀ y, f.reads y → ¬ (be0.toNat ≤ y.toNat ∧ y.toNat < be0.toNat + 120) := by
  intro f hf y hy
  have hP := hL (Fct.prop (∀ y : BitVec 64, (∃ f0, S f0 ∧ f0.reads y) → ¬ (be0.toNat ≤ y.toNat ∧ y.toNat < be0.toNat + 120)))
    (Or.inr (Or.inl (Or.inr (Or.inr (Or.inr rfl)))))
  rcases hf with hf | hf | rfl | rfl
  · exact hP y ⟨f, hf, hy⟩
  · rcases hf with rfl | ⟨b, ty', n', -, rfl⟩ | ⟨g', b, ty', -, rfl⟩ | rfl <;> exact hy.elim
  · exact hy.elim
  · exact hy.elim

theorem fr_SB_off {S : FS} {be0 : BitVec 64} {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ}
    (hL : HoldsAll p0 Γ p u (SB S be0)) (hw64 : be0.toNat + 120 ≤ 2 ^ 64) :
    ∀ f, SB S be0 f → ∀ y, f.reads y → ∀ off, off < 120 → y ≠ be0 + BitVec.ofNat 64 off := by
  intro f hf y hy off hoff he
  have hy2 : y.toNat = be0.toNat + off := by rw [he]; exact ofNat_add_toNat' (by omega)
  exact fr_SB hL f hf y hy ⟨by omega, by omega⟩

theorem sb_safe {S : FS} (be0 : BitVec 64) (hS : SafeS S) : SafeS (SB S be0) := by
  intro f hf
  rcases hf with hf | hf | rfl | rfl
  · exact hS f hf
  · rcases hf with rfl | ⟨b, ty', n', -, rfl⟩ | ⟨g', b, ty', -, rfl⟩ | rfl
    · exact (kt_entry).2.2.2.2.2
    · trivial
    · trivial
    · trivial
  · exact (kt_entry).2.2.2.2.2
  · trivial

section stbe
variable {E : EbE σ} {En : Env} {S : FS}

/-- A store of `n` words at `be + off` into the adopted block. -/
theorem hn_stBe {be0 : BitVec 64} {off n : Nat} {e : ExpHOL 64}
    (hgo : S (Fct.gobj nmBe be0 tBOS)) (hobj : S (Fct.obj be0 tBOS 120)) (h8 : off % 8 = 0) (hoff : off + 8 * n ≤ 120)
    (hlen : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → (flattenHOL v).length = n)
    (hfree : ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y →
        ∀ off', off ≤ off' → off' < off + 8 * n → y ≠ be0 + BitVec.ofNat 64 off') :
    HN (PA E En S) (.store (.op .add [gv nmBe, cw off]) e) (PA E En S) := by
  refine hn_stMod (c := be0 + BitVec.ofNat 64 off) (n := n) ?_ ?_
  · intro s hpa Γ p hr hL
    refine ⟨evI_add (evI_gobj hpa hgo) (evI_cw s off), hlen s hpa, ?_⟩
    obtain ⟨o, ho, hb, ht, hs⟩ := hL _ hobj
    refine ⟨o, off / 8, ho, by simp [blockTys, ht], fun i hi => ⟨?_, ?_⟩⟩
    · unfold Obj.HasSlot; omega
    · unfold Obj.cell
      rw [hb, BitVec.add_assoc, ← BitVec.ofNat_add]
      congr 2
      omega
  · intro s hpa Γ p hr hL f hf hnp y hy i hi he
    refine hfree s hpa Γ p hr hL f hf hnp y hy (off + 8 * i) (by omega) (by omega) ?_
    rw [he, BitVec.add_assoc, ← BitVec.ofNat_add]

end stbe

end InitECandidate.Solver.MemSafe.Att
