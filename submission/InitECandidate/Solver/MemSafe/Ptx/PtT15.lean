import InitECandidate.Solver.MemSafe.Ptx.PtT14

/-!
# F3g: general stores in the tail (`hn_stGen`), rebasing the kept cells
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

section st2
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam} {p : Ptrs}

/-- A store whose result is a `G` state, at a cell outside the kept ones. -/
theorem tl_store_gen (h : TlS A ref Z O u Γ p) {c x : BitVec 64} (hnz : ¬ Z c) (hin : InObj Γ c.toNat)
    (hG' : G guestC (HR σ) Γ { u with memory := Frames.upd u.memory c x }) :
    TlS A ref Z O { u with memory := Frames.upd u.memory c x } Γ p := by
  have hYn := fun a (ha : A.Y a) => tl_y_ne h hin ha
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  refine ⟨(ptrsOf_congr rfl).trans h1, h2, h3, h4, hG', h6, jrNZ_congr (s := u) rfl h7, h8, h9, h10, fun a ha => ?_, h12, h13, fun a ha => ?_⟩
  have hne : a ≠ c := fun e => hnz (e ▸ ha)
  show rd (Frames.upd u.memory c x) a = ref a
  rw [rd_upd_ne _ _ hne]
  exact h11 a ha
  · show rd (Frames.upd u.memory c x) a = _
    rw [rd_upd_ne _ _ (hYn a ha)]
    exact h14 a ha

/-- **Rebasing**: the kept cells `Z'` (cells of heap non-state objects of `Γ`) keep the current memory. -/
theorem tl_rebase (h : TlS A ref Z O u Γ p) {Z' : BitVec 64 → Prop}
    (hZ' : ∀ a, Z' a → ∃ o ∈ Γ, (guestC.ty o.ty).region = .heap ∧ guestSt o.ty = false ∧ ∃ k, o.HasSlot k ∧
      (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k) :
    TlS A (fun a => rd u.memory a) Z' O u Γ p := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := h
  exact ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, hZ', fun _ _ => rfl, h12, h13, h14⟩

end st2

section stn
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}

/-- `st a, e` with a user-supplied justification of `G` (and the cell not kept). -/
theorem hn_stGen {a e : ExpHOL 64}
    (hst : ∀ (s : State σ) (Γ : Gam) (p : Ptrs), TlS A ref Z O s Γ p → PAg (TL A ref Z O) En s →
      ∀ (w : BitVec 64) (v : ValueHOL 64), ev s a = some (.val (.word w)) → ev s e = some v →
        ∃ x : BitVec 64, v = .val (.word x) ∧ ¬ Z w ∧ InObj Γ w.toNat ∧
          G guestC (HR σ) Γ { s with memory := Frames.upd s.memory w x }) :
    HN (PAg (TL A ref Z O) En) (.store a e) (PAg (TL A ref Z O) En) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hpa : PAg (TL A ref Z O) En s := ⟨⟨Γ, p, hr⟩, hlk⟩
  obtain ⟨x, rfl, hnz, hin, hG'⟩ := hst s Γ p hr hpa w v hw hv
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  exact ⟨rfl, ⟨Γ, p, tl_store_gen hr hnz hin hG'⟩, hlk⟩

/-- The same, for a cell `c` that is a `prot` cell of a heap non-state object of the current typing, written with the
value `x`: afterwards it is kept with value `x`. -/
theorem hn_stGenX {a e : ExpHOL 64} {c x : BitVec 64}
    (hst : ∀ (s : State σ) (Γ : Gam) (p : Ptrs), TlS A ref Z O s Γ p → PAg (TL A ref Z O) En s →
      ∀ (w : BitVec 64) (v : ValueHOL 64), ev s a = some (.val (.word w)) → ev s e = some v →
        w = c ∧ v = .val (.word x) ∧ ¬ Z c ∧
          G guestC (HR σ) Γ { s with memory := Frames.upd s.memory c x } ∧
          ∃ o ∈ Γ, (guestC.ty o.ty).region = .heap ∧ guestSt o.ty = false ∧ ∃ k, o.HasSlot k ∧
            (guestC.ty o.ty).slot k = .prot ∧ c = o.cell k) :
    HN (PAg (TL A ref Z O) En) (.store a e)
      (PAg (TL A (fun a => if a = c then x else ref a) (fun a => Z a ∨ a = c) O) En) := by
  refine hoare_store fun s hs hpa w v mem hw hv hmem => ?_
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hpa : PAg (TL A ref Z O) En s := ⟨⟨Γ, p, hr⟩, hlk⟩
  obtain ⟨rfl, rfl, hnz, hG', hc⟩ := hst s Γ p hr hpa w v hw hv
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  obtain ⟨o, ho, -, -, k, hk, -, hck⟩ := id hc
  have h1 := tl_store_gen hr hnz (hck ▸ cell_in (tl_ord hr) (tl_layout hr) ho hk) hG'
  have h2 := tl_extend h1 (c := w) (x := x) hc (rd_upd_self _ _ _)
  exact ⟨rfl, ⟨Γ, p, h2⟩, hlk⟩

end stn

end InitECandidate.Solver.MemSafe.Ptx
