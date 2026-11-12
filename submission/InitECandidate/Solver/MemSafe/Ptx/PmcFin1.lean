import InitECandidate.Solver.MemSafe.Ptx.PmcFe
import InitECandidate.Solver.MemSafe.Bal.ListKit

/-!
# F3: `process_message_call`, part N: from the tail's facts to `PmcFin`

`PC'`: the state `T` right after the call has returned the root frame `child`, with the facts the tail transports.
`recsBelow_transfer`: the log records of the child's list are read at cells no store of the tail touches.
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

/-- Eon: the output length of a frame object of `Γ` is below `2^32` (`EV_OUTPUT_N` is a `bnd` slot). -/
theorem fld128_lt32 {Γ : Gam} {T : State σ} {child : BitVec 64}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ T) (ho : ∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) :
    (fld T.memory child 128).toNat < 2 ^ 32 := by
  obtain ⟨o, hoΓ, hob, hot⟩ := ho
  obtain ⟨p, hp, hord, hL, hFl, -⟩ := hG
  have hsz : 280 ≤ o.size := by
    have := (hL.1 o hoΓ).2.2.2.1
    rw [hot, Types.ev_minSz] at this
    exact this
  have h16 := hFl o hoΓ 16 (by unfold Obj.HasSlot; omega)
  rw [hot, Types.ev_bnd] at h16
  have e : fld T.memory child 128 = rd T.memory (o.cell 16) := by
    unfold fld Obj.cell; rw [hob]
  rw [e]
  exact h16

/-- The state `T` after the call: the facts about the child's frame the tail transports. -/
def PC' (Γ0 : Gam) (s0 : State σ) (Γ : Gam) (out child : BitVec 64) (T : State σ) : Prop :=
  TP Γ0 s0 Γ T out child (fun _ => none) T ∧ Zeros T.memory out ∧ MarkV T.memory child ∧
    (∃ e, gword T nmEv = some e ∧ e.toNat < nullMax) ∧ (∃ c, gword T nmCC = some c ∧ c.toNat < nullMax) ∧
    (∃ rec, ∀ p, ptrsOf T = some p → GP Γ T.memory p (child, rec)) ∧
    (∀ p, ptrsOf T = some p → LogsIn Γ T.memory p.hp child) ∧
    (fld T.memory child 128).toNat < 2 ^ 32

section fin1
variable {Γ0 Γ : Gam} {s0 T u : State σ} {out child : BitVec 64} {W : Wmap}

theorem tb_unt (hT : TB Γ0 s0 Γ T out child W u) {j : Nat} (hW : W j = none) (hj8 : j % 8 = 0)
    (hj : j < 96) : rd u.memory (out + BitVec.ofNat 64 j) = rd T.memory (out + BitVec.ofNat 64 j) := by
  obtain ⟨p, hp, hord, hL⟩ := tb_layout hT
  obtain ⟨hG, hKB, ⟨O, hO, hOb, hOt, hOs⟩, hFr, hE, hgl, hdom, hag, hwr⟩ := hT
  unfold rd
  rw [hag (out + BitVec.ofNat 64 j)]
  intro j' hj'
  obtain ⟨h8', hj96'⟩ := hdom j' hj'
  have hne : j' ≠ j := fun h => hj' (h ▸ hW)
  have := cell_ne hord hL hO hO (k := j) (k' := j') (by omega) (by omega) (Or.inr (Ne.symm hne))
  rwa [hOb] at this

theorem recsBelow_transfer (hT : TB Γ0 s0 Γ T out child W u)
    (hGT : G guestC (Hooks.guestHooksR (σ := σ)) Γ T) {L : Obj}
    (hL : LstObj Γ (fld T.memory child 88) L) {hp : Nat} (hlog : LogsIn Γ T.memory hp child) :
    RecsBelow Γ u.memory hp (fld T.memory child 88) := by
  obtain ⟨hLm, hLb, hLt, hLe⟩ := hL
  obtain ⟨p, hp0, hord, hLay⟩ := tb_layout hT
  have hbL : L.base ≠ out := by
    obtain ⟨-, -, ⟨O, hO, hOb, hOt, hOs⟩, -⟩ := hT
    rw [← hOb]
    refine base_ne_of_ty hord hLay hLm hO ?_
    rw [hOt]
    simp only [Hooks.lstTys, List.mem_cons, List.mem_nil_iff, or_false] at hLt
    rcases hLt with h | h | h | h | h <;> rw [h] <;> decide
  have hLsz : 24 ≤ L.size := Hooks.lst_size (Hooks.gamOK_of_layout hLay) hLm hLt
  have hne0 : fld T.memory child 88 ≠ 0 := by
    intro h0
    have := (Struct.obj_bounds hord hLay hLm).1
    unfold Obj.lo at this
    rw [hLb, h0] at this
    simp [heapBase] at this
  have hlog' : ∀ i : Nat, i < (rd T.memory (fld T.memory child 88 + 8)).toNat →
      RecOK Γ T.memory hp (rd T.memory (rd T.memory (fld T.memory child 88) + BitVec.ofNat 64 (8 * i))) := by
    rcases hlog with h | h
    · exact absurd h hne0
    · exact h
  have hc0 : rd u.memory (fld T.memory child 88) = rd T.memory (fld T.memory child 88) := by
    have := tb_cell hT hLm hbL (k := 0) (by unfold Obj.HasSlot; omega)
    unfold Obj.cell at this
    rw [hLb] at this
    simpa using this
  have hc1 : rd u.memory (fld T.memory child 88 + 8) = rd T.memory (fld T.memory child 88 + 8) := by
    have := tb_cell hT hLm hbL (k := 1) (by unfold Obj.HasSlot; omega)
    unfold Obj.cell at this
    rw [hLb] at this
    exact this
  obtain ⟨x, hx, hxt, hxb, hxs, hNC, -⟩ := Bal.lst_arr Hooks.lstHooks_guestR hGT hLm hLt
  have hbx : x.base ≠ out := by
    obtain ⟨-, -, ⟨O, hO, hOb, hOt, hOs⟩, -⟩ := hT
    rw [← hOb]
    refine base_ne_of_ty hord hLay hx hO ?_
    rw [hOt]
    rcases hxt with h | h <;> rw [h] <;> decide
  intro i hi
  rw [hc1] at hi
  rw [hc0]
  have hNC' : (rd T.memory (fld T.memory child 88 + 8)).toNat ≤ (Hooks.lC T.memory L).toNat := by
    have : Hooks.lN T.memory L = rd T.memory (fld T.memory child 88 + 8) := by
      unfold Hooks.lN Obj.cell; rw [hLb]; rfl
    rw [← this]; exact hNC
  have hE8 : Hooks.lstE L.ty = 8 := hLe
  have hslot : x.HasSlot i := by
    unfold Obj.HasSlot
    rw [hE8] at hxs
    omega
  have hxe : x.cell i = rd T.memory (fld T.memory child 88) + BitVec.ofNat 64 (8 * i) := by
    unfold Obj.cell
    rw [hxb]
    unfold Hooks.lP Obj.cell
    rw [hLb]
    simp
  have hel := tb_cell hT hx hbx hslot
  rw [hxe] at hel
  rw [hel]
  obtain ⟨⟨h1, h2, o, ho, hb, ht, hsz⟩, h3, h4⟩ := hlog' i hi
  have hbo : o.base ≠ out := by
    obtain ⟨-, -, ⟨O, hO, hOb, hOt, hOs⟩, -⟩ := hT
    rw [← hOb]
    refine base_ne_of_ty hord hLay ho hO ?_
    rw [hOt, ht]; decide
  have f2 := tb_cell hT ho hbo (k := 2) (by unfold Obj.HasSlot; omega)
  have f4 := tb_cell hT ho hbo (k := 4) (by unfold Obj.HasSlot; omega)
  unfold Obj.cell at f2 f4
  rw [hb] at f2 f4
  exact ⟨⟨h1, h2, o, ho, hb, ht, hsz⟩, by rw [show BitVec.ofNat 64 16 = BitVec.ofNat 64 (8 * 2) from rfl, f2]; exact h3,
    by rw [show BitVec.ofNat 64 32 = BitVec.ofNat 64 (8 * 4) from rfl, f4]; exact h4⟩

end fin1

end InitECandidate.Solver.MemSafe.Ptx
