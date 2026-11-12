import InitECandidate.Solver.MemSafe.Eb.Tidy

/-!
# `execute_block`: expression values in walk states
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

section ld
variable {E : EbE σ} {En : Env} {S : FS} {s : State σ}

theorem holds_of_pa (h : PA E En S s) {f : Fct} (hf : S f) : ∃ (Γ : Gam) (p : Ptrs), f.holds E.p0 Γ p s := by
  obtain ⟨⟨Γ, p, -, hL⟩, -⟩ := h
  exact ⟨Γ, p, hL f hf⟩

theorem evI_lv_pa (h : PA E En S s) {x : MlS} {v : ValueHOL 64} (hx : En x = some v) : EvI s (lv x) v :=
  evI_lv (h.2 x v hx)

theorem evI_lvoff (h : PA E En S s) {x : MlS} {a : BitVec 64} (hx : En x = some (.val (.word a))) (k : Nat) :
    EvI s (.op .add [lv x, cw k]) (.val (.word (a + BitVec.ofNat 64 k))) :=
  evI_add (evI_lv_pa h hx) (evI_cw s k)

theorem evI_gval (h : PA E En S s) {g : MlS} {w : BitVec 64} (hS : S (Fct.gval g w)) :
    EvI s (gv g) (.val (.word w)) := by
  obtain ⟨Γ, p, hh⟩ := holds_of_pa h hS
  exact evI_gv (AllocImpl.lookup_of_gword hh)

theorem evI_gobj (h : PA E En S s) {g : MlS} {w : BitVec 64} {ty : Nat} (hS : S (Fct.gobj g w ty)) :
    EvI s (gv g) (.val (.word w)) := by
  obtain ⟨Γ, p, hh⟩ := holds_of_pa h hS
  exact evI_gv (AllocImpl.lookup_of_gword hh.1)

theorem rd_of_pcv (h : PA E En S s) {a w : BitVec 64} (hS : S (Fct.pcv a w)) : rd s.memory a = w := by
  obtain ⟨Γ, p, hh⟩ := holds_of_pa h hS
  exact hh.1

theorem rd_of_cellv (h : PA E En S s) {a w : BitVec 64} (hS : S (Fct.cellv a w)) : rd s.memory a = w := by
  obtain ⟨Γ, p, hh⟩ := holds_of_pa h hS
  exact hh.1

theorem evI_ld_pcv (h : PA E En S s) {e : ExpHOL 64} {a w : BitVec 64} (he : EvI s e (.val (.word a)))
    (hS : S (Fct.pcv a w)) : EvI s (.load .one e) (.val (.word w)) := by
  have := evI_ld he
  rw [rd_of_pcv h hS] at this
  exact this

theorem evI_ld_cellv (h : PA E En S s) {e : ExpHOL 64} {a w : BitVec 64} (he : EvI s e (.val (.word a)))
    (hS : S (Fct.cellv a w)) : EvI s (.load .one e) (.val (.word w)) := by
  have := evI_ld he
  rw [rd_of_cellv h hS] at this
  exact this

end ld

end InitECandidate.Solver.MemSafe.Eb
