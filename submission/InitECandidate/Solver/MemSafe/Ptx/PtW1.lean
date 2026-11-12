import InitECandidate.Solver.MemSafe.Ptx.PtV5

/-!
# F3h: linking the tail's context to the transaction's entry (`PtLink`, `PtEnd`)
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

/-- **`KeepH` of the walk.** -/
theorem keepH_ptRun {E : PtE σ} {D : BitVec 64 → Option (BitVec 64)} {Γe : Gam} {u : State σ} {p : Ptrs}
    (h : PtRun D E.Γ0 E.s0 E.p0 Γe u p) : KeepH guestC E.Γ0 Γe E.s0 u := by
  intro q0 p' hq0 hp' hord0
  obtain ⟨⟨q, hq, hcase⟩, hpu, hmono, hext, hnf, hG, -⟩ := h
  obtain rfl : q = q0 := Option.some.inj (hq.symm.trans hq0)
  obtain rfl : p = p' := Option.some.inj (hpu.symm.trans hp')
  have hp0hp : E.p0.hp = q.hp := by rcases hcase with h | h <;> rw [h] <;> rfl
  obtain ⟨q', hq', hord, hL, -⟩ := id hG
  obtain rfl : q' = p := Option.some.inj (hq'.symm.trans hpu)
  refine ⟨by have := hmono.1; omega, fun x hx _ => hext x hx, fun o ho hr a h1 h2 => ?_⟩
  rcases hnf o ho a h1 h2 with h | h
  · exact Or.inl h
  · right
    have hb := (Struct.obj_bounds hord hL ho).2.2.1 hr
    have ho8 := hord
    unfold Ptrs.Ordered at ho8
    unfold Fresh at h
    have hp0 : E.p0.fp ≥ heapEnd ∧ E.p0.hp = q.hp := by
      rcases hcase with h | h
      · rw [h]; exact ⟨hord0.2.2.1, rfl⟩
      · rw [h]; exact ⟨le_rfl, rfl⟩
    simp only [Obj.hi] at h2
    simp only [Obj.hi, Obj.lo] at hb
    omega

theorem keepH_sub {C : Cfg} {Γ Γ' Γ'' : Gam} {s t : State σ} (h : KeepH C Γ Γ' s t) (hsub : ∀ o ∈ Γ'', o ∈ Γ')
    (hsurv : ∀ p p', ptrsOf s = some p → ptrsOf t = some p' → p.Ordered →
      ∀ x ∈ Γ, (C.ty x.ty).region = .heap → ∃ x' ∈ Γ'', x'.base = x.base ∧ x'.ty = x.ty ∧ x.size ≤ x'.size) :
    KeepH C Γ Γ'' s t := by
  intro p p' hp hp' hord
  obtain ⟨h1, -, h3⟩ := h p p' hp hp' hord
  exact ⟨h1, fun x hx hr => hsurv p p' hp hp' hord x hx hr, fun o ho hr a l1 l2 => h3 o (hsub o ho) hr a l1 l2⟩

/-- **The link between the tail's context and the transaction's entry.** -/
structure PtLink (E : PtE σ) (K : TlCtx σ) : Prop where
  keep : KeepH guestC E.Γ0 K.E.Γ0 E.s0 K.E.s0
  blk : ∀ o ∈ E.Γ0, o.ty ∈ blockTys → ∀ k, o.HasSlot k → ¬ E.WSet (o.cell k) →
    ∃ o' ∈ K.E.Γ0, o'.base = o.base ∧ o'.ty = o.ty ∧ o'.HasSlot k ∧
      rd K.E.s0.memory (o.cell k) = rd E.s0.memory (o.cell k)
  plk : ∀ o ∈ E.Γ0, o.ty ∈ recKTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
    ∃ o' ∈ K.E.Γ0, o'.base = o.base ∧ o'.ty = o.ty ∧ o'.HasSlot k ∧
      rd K.E.s0.memory (o.cell k) = rd E.s0.memory (o.cell k)
  idx : K.E.idx = E.idx
  txs : K.E.txs = E.txs
  rcs : K.E.rcs = E.rcs
  bo : K.E.bo = E.bo

def PtEnd (E : PtE σ) (t : State σ) : Prop := ∃ K : TlCtx σ, PtLink E K ∧ TailPost K t

theorem ptEnd_loc {E : PtE σ} {t : State σ} (h : PtEnd E t) (l : Locs) (c : Nat) :
    PtEnd E { t with locals := l, clock := c } := by
  obtain ⟨K, hK, hT⟩ := h
  exact ⟨K, hK, tailPost_loc hT l c⟩

section link
variable {E : PtE σ} {D : BitVec 64 → Option (BitVec 64)} {Γe Γ' : Gam} {u t : State σ} {p q : Ptrs}

/-- **`PtLink` of the re-anchored context.** -/
theorem mk_link (hP : PtPreB E) (hOH : OwnerHeap E.Γ0) (hrun : PtRun D E.Γ0 E.s0 E.p0 Γe u p) (hD : ∀ a, D a ≠ none → E.WSet a)
    (hq : ptrsOf t = some q) (hkeep : KeepH guestC Γe Γ' u t) (hbk : BKeep guestC Γe u t)
    (hG' : G guestC (HR σ) Γ' t) (hord : q.Ordered) (hL : Layout guestC q Γ') (outw sender d : BitVec 64) :
    PtLink E (mkCtx E Γ' t q hq hord hL outw sender d) := by
  have hext := ptRun_ext hrun
  have hp := ptRun_ptrs hrun
  have hordp := ptRun_ord hrun
  have h1 := keepH_ptRun hrun
  have h2 := KeepH.trans h1 hkeep hp hordp
  refine ⟨keepH_sub h2 (fun o ho => (mem_keepG.mp ho).1) ?_, ?_, ?_, rfl, rfl, rfl, rfl⟩
  · intro p0 p1 hp0 hp1 hord0 x hx hr
    exact kchain hext hOH hp hq hordp hkeep hx hr
  · intro o ho hot k hk hnw
    obtain ⟨o', ho', hb, ht, hs⟩ := kchain hext hOH hp hq hordp hkeep ho (block_heap hot)
    refine ⟨o', ho', hb, ht, by unfold Obj.HasSlot at *; omega, ?_⟩
    show rd t.memory (o.cell k) = rd E.s0.memory (o.cell k)
    rw [rd_blk_t hext hbk ho hot hk]
    exact ptRun_rd_keep hrun hD ⟨o, mem_nst.mpr ⟨ho, guestSt_block hot⟩, k, hk, slot_block hot k, rfl⟩ hnw
  · intro o ho hot k hk hpr
    have hbkt : o.ty ∈ bkTys := List.mem_append_right _ hot
    obtain ⟨o', ho', hb, ht, hs⟩ := kchain hext hOH hp hq hordp hkeep ho (bk_heap hbkt)
    refine ⟨o', ho', hb, ht, by unfold Obj.HasSlot at *; omega, ?_⟩
    show rd t.memory (o.cell k) = rd E.s0.memory (o.cell k)
    obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := hext o ho
    have e1 : o1.cell k = o.cell k := by unfold Obj.cell; rw [hb1]
    have h1 := hbk.1 o1 ho1 (by rw [ht1]; exact hbkt) k (by unfold Obj.HasSlot at *; omega) (by rw [ht1]; exact hpr)
    rw [e1] at h1
    refine h1.trans ?_
    exact ptRun_rd_keep hrun hD ⟨o, mem_nst.mpr ⟨ho, guestSt_bk hbkt⟩, k, hk, hpr, rfl⟩
      (not_wset_ty hP ho (recK_ne hot).1 (recK_ne hot).2 hk)

end link

end InitECandidate.Solver.MemSafe.Ptx
