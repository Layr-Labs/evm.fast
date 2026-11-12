import InitECandidate.Solver.MemSafe.Eb.Tail19

/-!
# `execute_block`: `process_general_purpose_requests();`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The facts that do not read `bo + 64`. -/
def S1 (S : FS) (w : BitVec 64) : FS := fun f => S f ∧ f ≠ Fct.cellv (w + BitVec.ofNat 64 64) 0

theorem s1_obj {S : FS} {w b : BitVec 64} {ty n : Nat} (h : S (Fct.obj b ty n)) : S1 S w (Fct.obj b ty n) :=
  ⟨h, fun h => by cases h⟩

theorem s1_prop {S : FS} {w : BitVec 64} {P : Prop} (h : S (Fct.prop P)) : S1 S w (Fct.prop P) :=
  ⟨h, fun h => by cases h⟩

theorem s1_gobj {S : FS} {w b : BitVec 64} {g : MlS} {ty : Nat} (h : S (Fct.gobj g b ty)) : S1 S w (Fct.gobj g b ty) :=
  ⟨h, fun h => by cases h⟩

theorem s1_cell {S : FS} {w a v : BitVec 64} (h : S (Fct.cellv a v)) (hne : a ≠ w + BitVec.ofNat 64 64) :
    S1 S w (Fct.cellv a v) := ⟨h, fun h => hne (by cases h; rfl)⟩

theorem balS_s1 {S : FS} {w : BitVec 64} (h : BalS S) : BalS (S1 S w) := by
  obtain ⟨⟨a, h1⟩, ⟨b, h2⟩, ⟨c, h3⟩, ⟨d, h4⟩, ⟨e, h5⟩, ⟨f, h6⟩⟩ := h
  exact ⟨⟨a, s1_gobj h1⟩, ⟨b, s1_gobj h2⟩, ⟨c, s1_gobj h3⟩, ⟨d, s1_gobj h4⟩, ⟨e, s1_gobj h5⟩, ⟨f, s1_gobj h6⟩⟩

theorem geo_s1 {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 : BitVec 64}
    (h : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 ntx0) (hL : HoldsAll p0 Γ p u (S1 S w)) :
    Geo Γ w t r be0 wd0 ntx0 nwd0 := by
  obtain ⟨o1, h1, h2, h3, h4⟩ := hL _ (s1_obj h.obo)
  obtain ⟨o2, i1, i2, i3, i4⟩ := hL _ (s1_obj h.otxs)
  obtain ⟨o3, j1, j2, j3, j4⟩ := hL _ (s1_obj h.orcs)
  obtain ⟨o4, k1, k2, k3, k4⟩ := hL _ (s1_obj h.obe)
  obtain ⟨o5, l1, l2, l3, l4⟩ := hL _ (s1_obj h.owd)
  exact ⟨⟨o1, h1, h2, h3, h4⟩, ⟨o2, i1, i2, i3, i4⟩, ⟨o3, j1, j2, j3, j4⟩, ⟨o4, k1, k2, k3, k4⟩, ⟨o5, l1, l2, l3, l4⟩,
    hL _ (s1_prop h.wt), hL _ (s1_prop h.wr), hL _ (s1_prop h.wb), hL _ (s1_prop h.ww), hL _ (s1_prop h.tr),
    hL _ (s1_prop h.tb), hL _ (s1_prop h.rb), hL _ (s1_prop h.tw), hL _ (s1_prop h.rw), hL _ (s1_prop h.bw),
    h.bt, h.bwd⟩

theorem off56_ne (w : BitVec 64) : w + BitVec.ofNat 64 56 ≠ w + BitVec.ofNat 64 64 := off_ne w (by omega) (by omega) (by omega)
theorem off72_ne (w : BitVec 64) : w + BitVec.ofNat 64 72 ≠ w + BitVec.ofNat 64 64 := off_ne w (by omega) (by omega) (by omega)

end InitECandidate.Solver.MemSafe.Eb
