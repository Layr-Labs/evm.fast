import InitECandidate.Solver.MemSafe.Ptx.PtU5

/-!
# F3h: the re-anchor after `process_message_call`, part 1: `PtPreB` of the new entry
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The re-anchored entry after the call: the kept typing, the post-call state, the ghost allocator. -/
def anchorE (E : PtE σ) (Γ' : Gam) (t : State σ) (q : Ptrs) : PtE σ :=
  ⟨keepG Γ', t, gp0 q, E.tx, E.idx, E.bo, E.be, E.txs, E.rcs⟩

section anchor
variable {E : PtE σ} {D : BitVec 64 → Option (BitVec 64)} {Γe Γ' : Gam} {u t : State σ} {p q : Ptrs}

/-- Entry heap objects survive into the kept typing. -/
theorem kchain (hext : Ext E.Γ0 Γe) (hOH : OwnerHeap E.Γ0) (hp : ptrsOf u = some p) (hq : ptrsOf t = some q)
    (hordp : p.Ordered) (hkeep : KeepH guestC Γe Γ' u t) {o : Obj} (ho : o ∈ E.Γ0)
    (hh : (guestC.ty o.ty).region = .heap) :
    ∃ o' ∈ keepG Γ', o'.base = o.base ∧ o'.ty = o.ty ∧ o.size ≤ o'.size := by
  obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := hext o ho
  obtain ⟨-, hsurv, -⟩ := hkeep p q hp hq hordp
  obtain ⟨o2, ho2, hb2, ht2, hs2⟩ := hsurv o1 ho1 (by rw [ht1]; exact hh)
  refine ⟨o2, mem_keepG.mpr ⟨ho2, by rw [ht2, ht1]; exact hh, ?_⟩, hb2.trans hb1, ht2.trans ht1, le_trans hs1 hs2⟩
  rw [ht2, ht1]
  intro hs
  have := hOH o ho hs.1
  unfold ScratchOwn at hs
  omega

/-- Block cells keep their value across the call. -/
theorem rd_blk_t (hext : Ext E.Γ0 Γe) (hbk : BKeep guestC Γe u t) {o : Obj} (ho : o ∈ E.Γ0) (hot : o.ty ∈ blockTys)
    {k : Nat} (hk : o.HasSlot k) : rd t.memory (o.cell k) = rd u.memory (o.cell k) := by
  obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := hext o ho
  have hot1 : o1.ty ∈ blockTys := by rw [ht1]; exact hot
  have := hbk.1 o1 ho1 (bk_blk hot1) k (by unfold Obj.HasSlot at *; omega) (slot_block hot1 k)
  have e : o1.cell k = o.cell k := by unfold Obj.cell; rw [hb1]
  rwa [e] at this

theorem gword_t_s0 (hrun : PtRun D E.Γ0 E.s0 E.p0 Γe u p)
    (hglt : ∀ g, cW.contains g = false → t.globals.lookup g = u.globals.lookup g) {g : MlS}
    (h1 : ptW.contains g = false) (h2 : cW.contains g = false) : gword t g = gword E.s0 g := by
  unfold gword
  rw [hglt g h2, hrun.2.2.2.2.2.2.2.2.2.2.2.2 g h1]

/-- Unwritten `bo` cells keep their entry value across the walk and the call. -/
theorem rd_bo_t (hP : PtPreB E) (hrun : PtRun D E.Γ0 E.s0 E.p0 Γe u p) (hD : ∀ a, D a ≠ none → E.WSet a)
    (hbk : BKeep guestC Γe u t) {j : Nat} (hj : j < 11) (h0 : j ≠ 0) (h1 : j ≠ 1) (h2 : j ≠ 2) (h6 : j ≠ 6) :
    rd t.memory (E.bo + BitVec.ofNat 64 (8 * j)) = rd E.s0.memory (E.bo + BitVec.ofNat 64 (8 * j)) := by
  obtain ⟨q', hq', hord, hL⟩ := pre_layoutB hP
  obtain ⟨o, ho, hb, ht⟩ := hP.boObj
  have hmin := (hL.1 o ho).2.2.2.1
  rw [ht] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hk : o.HasSlot j := by unfold Obj.HasSlot; omega
  have hcell : E.bo + BitVec.ofNat 64 (8 * j) = o.cell j := by unfold Obj.cell; rw [hb]
  rw [hcell]
  rw [rd_blk_t (ptRun_ext hrun) hbk ho (by rw [ht]; simp [blockTys]) hk]
  rw [← hcell]
  exact rd_boB hP hrun hD hj h0 h1 h2 h6

/-- An entry object of a heap type, as an object of the kept typing. -/
theorem obj_kept (hext : Ext E.Γ0 Γe) (hOH : OwnerHeap E.Γ0) (hp : ptrsOf u = some p) (hq : ptrsOf t = some q)
    (hordp : p.Ordered) (hkeep : KeepH guestC Γe Γ' u t) {b : BitVec 64} {ty : Nat} (hty : (guestC.ty ty).region = .heap)
    (h : ∃ o ∈ E.Γ0, o.base = b ∧ o.ty = ty) : ∃ o ∈ keepG Γ', o.base = b ∧ o.ty = ty := by
  obtain ⟨o, ho, hb, ht⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := kchain hext hOH hp hq hordp hkeep ho (by rw [ht]; exact hty)
  exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩

theorem obj_kept_sz (hext : Ext E.Γ0 Γe) (hOH : OwnerHeap E.Γ0) (hp : ptrsOf u = some p) (hq : ptrsOf t = some q)
    (hordp : p.Ordered) (hkeep : KeepH guestC Γe Γ' u t) {b : BitVec 64} {ty n : Nat} (hty : (guestC.ty ty).region = .heap)
    (h : ∃ o ∈ E.Γ0, o.base = b ∧ o.ty = ty ∧ n ≤ o.size) : ∃ o ∈ keepG Γ', o.base = b ∧ o.ty = ty ∧ n ≤ o.size := by
  obtain ⟨o, ho, hb, ht, hn⟩ := h
  obtain ⟨o', ho', hb', ht', hs'⟩ := kchain hext hOH hp hq hordp hkeep ho (by rw [ht]; exact hty)
  exact ⟨o', ho', hb'.trans hb, ht'.trans ht, le_trans hn hs'⟩

/-- **`PtPreB` of the re-anchored entry.** -/
theorem anchor_B (hP : PtPreB E) (hOH : OwnerHeap E.Γ0) (hrun : PtRun D E.Γ0 E.s0 E.p0 Γe u p)
    (hD : ∀ a, D a ≠ none → E.WSet a) (hG' : G guestC (HR σ) Γ' t) (hq : ptrsOf t = some q)
    (hev : ∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) (hcc : ∃ c, gword t nmCC = some c ∧ c.toNat < nullMax)
    (hkeep : KeepH guestC Γe Γ' u t) (hbk : BKeep guestC Γe u t)
    (hglt : ∀ g, cW.contains g = false → t.globals.lookup g = u.globals.lookup g) :
    PtPreB (anchorE E Γ' t q) := by
  have hext := ptRun_ext hrun
  have hp := ptRun_ptrs hrun
  have hordp := ptRun_ord hrun
  have hk : ∀ {b : BitVec 64} {ty : Nat}, (guestC.ty ty).region = .heap → (∃ o ∈ E.Γ0, o.base = b ∧ o.ty = ty) →
      ∃ o ∈ keepG Γ', o.base = b ∧ o.ty = ty := fun h1 h2 => obj_kept hext hOH hp hq hordp hkeep h1 h2
  have hks : ∀ {b : BitVec 64} {ty n : Nat}, (guestC.ty ty).region = .heap →
      (∃ o ∈ E.Γ0, o.base = b ∧ o.ty = ty ∧ n ≤ o.size) → ∃ o ∈ keepG Γ', o.base = b ∧ o.ty = ty ∧ n ≤ o.size :=
    fun h1 h2 => obj_kept_sz hext hOH hp hq hordp hkeep h1 h2
  have hgw : ∀ g, ptW.contains g = false → cW.contains g = false → gword t g = gword E.s0 g :=
    fun g h1 h2 => gword_t_s0 hrun hglt h1 h2
  have hgobj : ∀ {g : MlS} {ty : Nat}, ptW.contains g = false → cW.contains g = false →
      (guestC.ty ty).region = .heap → GObj E.Γ0 E.s0 g ty → GObj (keepG Γ') t g ty := by
    intro g ty h1 h2 h3 ⟨w, hw, h⟩
    exact ⟨w, by rw [hgw g h1 h2]; exact hw, hk h3 h⟩
  refine
    { hG := (G_keepOwnerHeap hG' hev hcc).1
      hp := ⟨q, hq, rfl⟩
      hJ := jrNZ_of_lookup (fun g hg => hglt g (by
        simp only [jrGs, List.mem_cons, List.not_mem_nil, or_false] at hg
        rcases hg with rfl | rfl <;> decide)) (ptRun_jr hrun)
      hev := hev
      hcc := hcc
      tx := hk (by decide) hP.tx
      hbo := ?_
      boObj := hk (by decide) hP.boObj
      htxs := ?_
      txsObj := hks (by decide) hP.txsObj
      hrcs := ?_
      rcsObj := hks (by decide) hP.rcsObj
      logsObj := ?_
      rlogsObj := ?_
      hbe := ?_
      beObj := hks (by decide) hP.beObj
      gbs := hgobj (by decide) (by decide) (by decide) hP.gbs
      gba := hgobj (by decide) (by decide) (by decide) hP.gba
      gbk := hgobj (by decide) (by decide) (by decide) hP.gbk
      gbi := hgobj (by decide) (by decide) (by decide) hP.gbi
      gbs2 := hgobj (by decide) (by decide) (by decide) hP.gbs2
      gsk := hgobj (by decide) (by decide) (by decide) hP.gsk
      dis1 := hP.dis1
      dis2 := hP.dis2
      dis3 := hP.dis3 }
  · show gword t (nm "bo") = some E.bo
    rw [hgw _ (by decide) (by decide)]; exact hP.hbo
  · show rd t.memory (E.bo + BitVec.ofNat 64 24) = E.txs
    have := rd_bo_t hP hrun hD hbk (j := 3) (by omega) (by omega) (by omega) (by omega) (by omega)
    exact this.trans (hP.htxs)
  · show rd t.memory (E.bo + BitVec.ofNat 64 32) = E.rcs
    have := rd_bo_t hP hrun hD hbk (j := 4) (by omega) (by omega) (by omega) (by omega) (by omega)
    exact this.trans (hP.hrcs)
  · show ∃ o ∈ keepG Γ', o.base = rd t.memory (E.bo + BitVec.ofNat 64 40) ∧ o.ty = tLSTh
    have := rd_bo_t hP hrun hD hbk (j := 5) (by omega) (by omega) (by omega) (by omega) (by omega)
    rw [show E.bo + BitVec.ofNat 64 40 = E.bo + BitVec.ofNat 64 (8 * 5) from rfl, this]
    exact hk (by decide) hP.logsObj
  · show ∃ o ∈ keepG Γ', o.base = rd t.memory (E.bo + BitVec.ofNat 64 72) ∧ o.ty = tLSTh
    have := rd_bo_t hP hrun hD hbk (j := 9) (by omega) (by omega) (by omega) (by omega) (by omega)
    rw [show E.bo + BitVec.ofNat 64 72 = E.bo + BitVec.ofNat 64 (8 * 9) from rfl, this]
    exact hk (by decide) hP.rlogsObj
  · show gword t (nm "be") = some E.be
    rw [hgw _ (by decide) (by decide)]; exact hP.hbe

end anchor

end InitECandidate.Solver.MemSafe.Ptx
