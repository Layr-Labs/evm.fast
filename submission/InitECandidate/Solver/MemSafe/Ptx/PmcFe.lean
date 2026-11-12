import InitECandidate.Solver.MemSafe.Ptx.PmcCol

/-!
# F3: `process_message_call`, part M: the invariant between the callees (`FE`)

`FE M msg Γ0 s0 out u`: from the entry `(Γ0, s0)`: `G`, `FoPre`, `KB`, `out` a fresh `tMCO` object, its cells zero.
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
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

def FE (M : Nat) (msg : BitVec 64) (Γ0 : Gam) (s0 : State σ) (out : BitVec 64) (u : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ ptrsOf u = some p ∧ FoPre M msg Γ u ∧
    KB Γ0 Γ s0 u ∧ fld u.memory msg 24 = fld s0.memory msg 24 ∧ OutIn Γ out ∧ OutFresh Γ0 out ∧ Zeros u.memory out ∧
    u.locals.lookup (nm "msg") = some (.val (.word msg)) ∧
    u.locals.lookup (nm "out") = some (.val (.word out))

section fe
variable {M : Nat} {msg out : BitVec 64} {Γ0 : Gam} {s0 : State σ}

theorem cell_eq_out {O : Obj} (hOb : O.base = out) {j : Nat} (hj8 : j % 8 = 0) :
    O.cell (j / 8) = out + BitVec.ofNat 64 j := by
  unfold Obj.cell; rw [hOb]; congr 2; omega

theorem zeros_of_bkeep {Γ : Gam} {u t : State σ} (hO : OutIn Γ out)
    (hb : BKeep guestC Γ u t) (hz : Zeros u.memory out) : Zeros t.memory out := by
  obtain ⟨O, hO, hOb, hOt, hOs⟩ := hO
  intro j hj8 hj
  have hk : O.HasSlot (j / 8) := by unfold Obj.HasSlot; omega
  have h := hb.1 O hO (by rw [hOt]; decide) (j / 8) hk (blk_prot (t := O.ty) (Or.inr (Or.inr hOt)) (j / 8))
  rw [cell_eq_out hOb hj8] at h
  rw [mem_eq_of_rd h]
  exact hz j hj8 hj

theorem fe_loc {u : State σ} (h : FE M msg Γ0 s0 out u) (l : Locs) (c : Nat)
    (h1 : l.lookup (nm "msg") = some (.val (.word msg)))
    (h2 : l.lookup (nm "out") = some (.val (.word out))) :
    FE M msg Γ0 s0 out { u with locals := l, clock := c } := by
  obtain ⟨Γ, p, hG, hp, hfo, hkb, h24, hO, hFr, hZ, -, -⟩ := h
  exact ⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful u l c).mpr hG, (ptrsOf_congr rfl).trans hp, hfo,
    kb_loc rfl rfl hkb, h24, hO, hFr, hZ, h1, h2⟩

theorem fe_set {u : State σ} (h : FE M msg Γ0 s0 out u) {n : MlS} (hn1 : n ≠ nm "msg")
    (hn2 : n ≠ nm "out") (v : ValueHOL 64) : FE M msg Γ0 s0 out (setVarHOLFinite n v u) := by
  obtain ⟨Γ, p, hG, hp, hfo, hkb, h24, hO, hFr, hZ, hl1, hl2⟩ := h
  exact fe_loc ⟨Γ, p, hG, hp, hfo, hkb, h24, hO, hFr, hZ, hl1, hl2⟩ _ u.clock
    ((lk_set_ne u v hn1).trans hl1) ((lk_set_ne u v hn2).trans hl2)

theorem outIn_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') (h : OutIn Γ out) : OutIn Γ' out := by
  obtain ⟨O, hO, hOb, hOt, hOs⟩ := h
  obtain ⟨o', ho', hb, ht, hsz⟩ := hx O hO
  exact ⟨o', ho', hb.trans hOb, ht.trans hOt, le_trans hOs hsz⟩

/-- A run (`RunT`) keeps `FE`. -/
theorem fe_run {gw : List MlS} {u t : State σ} {Γ Γ' : Gam} {p p' : Ptrs}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hKB : KB Γ0 Γ s0 u) (hO : OutIn Γ out)
    (hFr : OutFresh Γ0 out) (hZ : Zeros u.memory out)
    (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ u Γ' t p p') (hfo' : FoPre M msg Γ' t)
    (h24 : fld t.memory msg 24 = fld s0.memory msg 24)
    (hl1 : t.locals.lookup (nm "msg") = some (.val (.word msg)))
    (hl2 : t.locals.lookup (nm "out") = some (.val (.word out))) :
    FE M msg Γ0 s0 out t :=
  ⟨Γ', p', hrun.2.2.2.2.2.1, hrun.2.1, hfo', kb_step hG hKB (keepH_of_runT hrun) hrun.2.2.2.2.2.2.2, h24,
    outIn_ext hrun.2.2.2.1 hO, hFr, zeros_of_bkeep hO hrun.2.2.2.2.2.2.2 hZ, hl1, hl2⟩

end fe

end InitECandidate.Solver.MemSafe.Ptx
