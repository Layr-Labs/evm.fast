import InitECandidate.Solver.MemSafe.Ptx.PmcTB2

/-!
# F3: `process_message_call`, part F: the tail's Hoare step rules

* `TP`: `TB` with the `out` / `frame` locals.
* `tb_fld`: the frame's cells read in the tail are those of `t1`.
* `hoare_stT`: a store into `out` of a word value keeps `∃ W, TP W ∧ Fct W`.
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

def LocOK (out child : BitVec 64) (u : State σ) : Prop :=
  u.locals.lookup (nm "out") = some (.val (.word out)) ∧
  u.locals.lookup (nm "frame") = some (.val (.word child))

def TP (Γ0 : Gam) (s0 : State σ) (Γ : Gam) (t1 : State σ) (out child : BitVec 64) (W : Wmap)
    (u : State σ) : Prop :=
  TB Γ0 s0 Γ t1 out child W u ∧ LocOK out child u

section tb3
variable {Γ0 Γ : Gam} {s0 t1 u : State σ} {out child : BitVec 64} {W : Wmap}

theorem tb_congr {u' : State σ} (hm : u'.memory = u.memory) (hg : u'.globals = u.globals)
    (hd : u'.memaddrs = u.memaddrs) (hbe : u'.be = u.be) (h : TB Γ0 s0 Γ t1 out child W u) :
    TB Γ0 s0 Γ t1 out child W u' := by
  obtain ⟨hG, hKB, hO, hFr, hE, hgl, hdom, hag, hwr⟩ := h
  refine ⟨G_congr Hooks.guestHooksR_lawful hm hg hd hbe hG, kb_loc hm hg hKB, hO, hFr, hE,
    hg.trans hgl, hdom, ?_, ?_⟩
  · intro a ha; rw [hm]; exact hag a ha
  · intro j x hj; rw [hm]; exact hwr j x hj

theorem tp_locals {l : Locs} {c : Nat} (h : TP Γ0 s0 Γ t1 out child W u)
    (hl : LocOK out child (σ := σ) { u with locals := l, clock := c }) :
    TP Γ0 s0 Γ t1 out child W { u with locals := l, clock := c } :=
  ⟨tb_congr rfl rfl rfl rfl h.1, hl⟩

theorem tb_fld (hT : TB Γ0 s0 Γ t1 out child W u) {off : Nat} (hoff8 : off % 8 = 0) (hoff : off < 232) :
    fld u.memory child off = fld t1.memory child off := by
  have hT' := hT
  obtain ⟨p, hp, hord, hL⟩ := tb_layout hT
  obtain ⟨-, -, ⟨O, hO, hOb, hOt, hOs⟩, -, ⟨E, hE, hEb, hEt⟩, -⟩ := hT
  have hsz : 232 ≤ E.size := by
    have := (hL.1 E hE).2.2.2.1
    rw [hEt] at this
    exact le_trans (by decide) this
  have hb : E.base ≠ out := by
    rw [← hOb]
    exact base_ne_of_ty hord hL hE hO (by rw [hEt, hOt]; decide)
  have hk : E.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have := tb_cell hT' hE hb hk
  have hc : E.cell (off / 8) = child + BitVec.ofNat 64 off := by
    unfold Obj.cell; rw [hEb]; congr 2; omega
  rw [hc] at this
  exact this

/-- `st out + j, e` where `e`'s value is a word fixed by `hv`. -/
theorem hoare_stT (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {Fct Fct' : Wmap → Prop}
    {j : Nat} (hj8 : j % 8 = 0) (hj : j < 96) {e : ExpHOL 64}
    (hv : ∀ (u : State σ) (W : Wmap) v, TP Γ0 s0 Γ t1 out child W u → Fct W → ev u e = some v →
      ∃ x, v = .val (.word x) ∧ Fct' (upW W j x)) :
    Hoare σ guestCtx (fun u => ∃ W, TP Γ0 s0 Γ t1 out child W u ∧ Fct W)
      (.store (.op .add [lv (nm "out"), cw j]) e)
      (fun r u => r = none ∧ ∃ W, TP Γ0 s0 Γ t1 out child W u ∧ Fct' W) := by
  refine hoare_stOut (o := out) (k := j) (fun s _ ⟨W, hT, _⟩ => hT.2.1) ?_
  intro s hs ⟨W, hT, hF⟩ v hev
  obtain ⟨x, rfl, hF'⟩ := hv s W v hT hF hev
  refine ⟨x, rfl, fun _ => ⟨rfl, upW W j x, ⟨tb_store hG0 hj8 hj x hT.1, hT.2⟩, hF'⟩⟩

end tb3

end InitECandidate.Solver.MemSafe.Ptx
