import InitECandidate.Solver.MemSafe.Ptx.PcmDef

/-!
# F3c: the child's facts across a step (`cs_step`)

A step is a `RunT` from `Γ` (gw = `[journal_n]`) that keeps the cells the extension reads (`XKeep` of the
child's frame) and the list cells (`LstKeep`).
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

theorem notInObj_nat {Γ Γ' : Gam} {p p' : Ptrs} (hp : p.Ordered) (hp' : p'.Ordered)
    (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p') {n : Nat} (hn : n < 2 ^ 64) (h : ¬ InObj Γ n)
    (ha : p.Allocated n) : ¬ InObj Γ' n := by
  have := notInObj_after (a := BitVec.ofNat 64 n) hp hp' hm hnf
    (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hn]; exact h)
    (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hn]; exact ha)
  rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hn] at this

/-- A record of `Γ` (type `tLOG`, all cells `prot`) keeps its two bounded fields across a `LstKeep` step, and stays
a record of `Γ'` when the typing only grows. -/
theorem recOK_step {Γ Γ' : Gam} {m m' : Mem} {h0 h0' : Nat} {x : BitVec 64} (hext : Ext Γ Γ')
    (hk : LstKeep Γ m m') (hh : h0 ≤ h0') (h : RecOK Γ m h0 x) : RecOK Γ' m' h0' x := by
  obtain ⟨⟨h1, h2, o, ho, hb, ht, hsz⟩, h3, h4⟩ := h
  obtain ⟨o', ho', hb', ht', hsz'⟩ := hext o ho
  have hk2 : rd m' (x + BitVec.ofNat 64 16) = rd m (x + BitVec.ofNat 64 16) := by
    have := hk o ho (Or.inr (Or.inr ht)) 2 (by unfold Obj.HasSlot; omega)
    unfold Obj.cell at this
    rw [hb] at this
    exact this
  have hk4 : rd m' (x + BitVec.ofNat 64 32) = rd m (x + BitVec.ofNat 64 32) := by
    have := hk o ho (Or.inr (Or.inr ht)) 4 (by unfold Obj.HasSlot; omega)
    unfold Obj.cell at this
    rw [hb] at this
    exact this
  exact ⟨⟨h1, le_trans h2 hh, o', ho', hb'.trans hb, ht'.trans ht, le_trans hsz hsz'⟩, by rw [hk2]; exact h3,
    by rw [hk4]; exact h4⟩

theorem logsIn_step {Γ Γ' : Gam} {u t : State σ} {p p' : Ptrs} {child : BitVec 64} {L : Obj}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hord : p.Ordered) (hord' : p'.Ordered)
    (hmo : p.Mono p') (hext : Ext Γ Γ')
    (hL : LstObj Γ (fld u.memory child 88) L) (h88 : fld t.memory child 88 = fld u.memory child 88)
    (hk : LstKeep Γ u.memory t.memory) (hlog : LogsIn Γ u.memory p.hp child) :
    LogsIn Γ' t.memory p'.hp child := by
  unfold LogsIn at hlog ⊢
  rw [h88]
  rcases hlog with h0 | hlog
  · exact Or.inl h0
  right
  obtain ⟨hLm, hLb, hLt, hLe⟩ := hL
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  have hLsz : 24 ≤ L.size := Hooks.lst_size (Hooks.gamOK_of_layout hLay) hLm hLt
  have hc1 : rd t.memory (fld u.memory child 88 + 8) = rd u.memory (fld u.memory child 88 + 8) := by
    have := hk L hLm (Or.inl ⟨hLt, hLe⟩) 1 (by unfold Obj.HasSlot; omega)
    unfold Obj.cell at this
    rw [hLb] at this
    simpa using this
  have hc0 : rd t.memory (fld u.memory child 88) = rd u.memory (fld u.memory child 88) := by
    have := hk L hLm (Or.inl ⟨hLt, hLe⟩) 0 (by unfold Obj.HasSlot; omega)
    unfold Obj.cell at this
    rw [hLb] at this
    simpa using this
  obtain ⟨x, hx, hxt, hxb, hxs, hNC, -⟩ := Bal.lst_arr Hooks.lstHooks_guestR hG hLm hLt
  have hlP : Hooks.lP u.memory L = rd u.memory (fld u.memory child 88) := by
    unfold Hooks.lP Obj.cell; rw [hLb]; simp
  have hlN : Hooks.lN u.memory L = rd u.memory (fld u.memory child 88 + 8) := by
    unfold Hooks.lN Obj.cell; rw [hLb]; simp
  rw [hc1, hc0]
  intro i hi
  rw [hlN] at hNC
  have hE8 : Hooks.lstE L.ty = 8 := hLe
  rw [hE8] at hxs
  have hslot : x.HasSlot i := by unfold Obj.HasSlot; omega
  have hxe : x.cell i = rd u.memory (fld u.memory child 88) + BitVec.ofNat 64 (8 * i) := by
    unfold Obj.cell; rw [hxb, hlP]
  have hel : rd t.memory (rd u.memory (fld u.memory child 88) + BitVec.ofNat 64 (8 * i)) =
      rd u.memory (rd u.memory (fld u.memory child 88) + BitVec.ofNat 64 (8 * i)) := by
    rw [← hxe]; exact hk x hx (Or.inr (Or.inl hxt)) i hslot
  rw [hel]
  exact recOK_step hext hk hmo.1 (hlog i hi)

theorem cs_step {Γ0 : Gam} {s0 u t : State σ} {child : BitVec 64} (hc : CS Γ0 s0 child u)
    (hr : ∀ (Γ : Gam) (p : Ptrs) (rec : BitVec 64), G guestC (Hooks.guestHooksR (σ := σ)) Γ u →
      ptrsOf u = some p → KB Γ0 Γ s0 u → (∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) → GP Γ u.memory p (child, rec) →
      ∃ (Γ' : Gam) (p' : Ptrs), RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ' t p p' ∧
        XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory) :
    CS Γ0 s0 child t := by
  obtain ⟨Γ, p, rec, hG, hp, hkb, hev, hgp, hlog, hJ⟩ := hc
  obtain ⟨Γ', p', hrun, hx, hl⟩ := hr Γ p rec hG hp hkb hev hgp
  have hG' := hrun.2.2.2.2.2.1
  have hord := ordered_of_G hG hp
  have hord' := ordered_of_G hG' hrun.2.1
  have hx' : XKeep guestC Γ u.memory t.memory (child, rec) := hx
  obtain ⟨L, hL⟩ := hgp.2.2.1
  refine ⟨Γ', p', rec, hG', hrun.2.1, kb_step hG hkb (keepH_of_runT hrun) (bkeep_of_runT hrun), ?_,
    gp_step hord hord' (layout_of_G hG hp) hrun.2.2.1 hrun.2.2.2.1 hrun.2.2.2.2.1 hx' hgp,
    logsIn_step hG hord hord' hrun.2.2.1 hrun.2.2.2.1 hL (fld88_keep hx') hl hlog,
    jrNZ_of_lookup (fun g hg => hrun.2.2.2.2.2.2.1 g ((by decide : JrPG guestC) g hg)
      (by simp [jrGs] at hg; rcases hg with rfl | rfl <;> decide)) hJ⟩
  obtain ⟨o, ho, hb, ht⟩ := hev
  obtain ⟨o', ho', hb', ht', -⟩ := hrun.2.2.2.1 o ho
  exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩

end InitECandidate.Solver.MemSafe.Ptx
