import InitECandidate.Solver.MemSafe.Ptx.PtT28
import InitECandidate.Solver.MemSafe.Ptx.DropOwn

/-!
# F3h: the post of the tail (`TailPost`), release, and the transaction slice cells
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

/-- **The post of the tail** (`ptS114` to the `return`). -/
def TailPost (K : TlCtx σ) (t : State σ) : Prop :=
  ∃ Γ' : Gam, G guestC (HR σ) Γ' t ∧ OwnerHeap Γ' ∧ KeepH guestC K.E.Γ0 Γ' K.E.s0 t ∧
    (∀ o ∈ K.E.Γ0, o.ty ∈ blockTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot → ¬ K.Wt (o.cell k) →
      rd t.memory (o.cell k) = rd K.E.s0.memory (o.cell k)) ∧
    (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧ (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax) ∧
    Hooks.VInR tVAL Γ' (rd t.memory (K.E.txs + K.E.idx * 16)) (rd t.memory (K.E.txs + K.E.idx * 16 + 8)) ∧
    Hooks.VInR tVAL Γ' (rd t.memory (K.E.rcs + K.E.idx * 16)) (rd t.memory (K.E.rcs + K.E.idx * 16 + 8)) ∧
    JrNZ t ∧
    (∀ o ∈ K.E.Γ0, o.ty ∈ recKTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
      rd t.memory (o.cell k) = rd K.E.s0.memory (o.cell k))

theorem tailPost_loc {K : TlCtx σ} {t : State σ} (h : TailPost K t) (l : Locs) (c : Nat) :
    TailPost K { t with locals := l, clock := c } := by
  obtain ⟨Γ', hG, hO, hK, hb, hev, hcc, h1, h2, hj, hpl⟩ := h
  refine ⟨Γ', (G_locFree Hooks.guestHooksR_lawful t l c).mpr hG, hO, ?_, hb, ?_, ?_, h1, h2,
    jrNZ_congr (s := t) rfl hj, hpl⟩
  · intro p p' hp hp' hord
    exact hK p p' hp hp' hord
  · obtain ⟨e, he, hs⟩ := hev
    exact ⟨e, he, hs⟩
  · obtain ⟨e, he, hs⟩ := hcc
    exact ⟨e, he, hs⟩

/-- `KeepH` only looks at the final heap pointer. -/
theorem keepH_hp {C : Cfg} {Γ Γ' : Gam} {s u t : State σ} (h : KeepH C Γ Γ' s u) {pu pt : Ptrs}
    (hu : ptrsOf u = some pu) (ht : ptrsOf t = some pt) (hhp : pt.hp = pu.hp) : KeepH C Γ Γ' s t := by
  intro p p' hq hq' hord
  obtain rfl : p' = pt := Option.some.inj (hq'.symm.trans ht)
  obtain ⟨h1, h2, h3⟩ := h p pu hq hu hord
  exact ⟨by rw [hhp]; exact h1, h2, h3⟩

/-- The transaction slice cells are kept by the tail. -/
theorem blk_txs {K : TlCtx σ} (hP' : TlPre K) {j : Nat} (hj : j < 2) :
    (∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ (guestC.ty o.ty).slot k = .prot ∧
      K.E.txs + K.E.idx * 16 + BitVec.ofNat 64 (8 * j) = o.cell k) ∧
      ¬ K.Wt (K.E.txs + K.E.idx * 16 + BitVec.ofNat 64 (8 * j)) := by
  have hP := hP'.B
  obtain ⟨q, hq, hord, hL⟩ := pre_layoutB hP
  obtain ⟨oT, hoT, hbT, htT, hsT⟩ := hP.txsObj
  have hk : oT.HasSlot (2 * K.E.idx.toNat + j) := by unfold Obj.HasSlot; omega
  have hcell : K.E.txs + K.E.idx * 16 + BitVec.ofNat 64 (8 * j) = oT.cell (2 * K.E.idx.toNat + j) := by
    unfold Obj.cell; rw [hbT, BitVec.add_assoc, show (16 : BitVec 64) = BitVec.ofNat 64 16 from rfl, bv_idx16]
  have hTb : oT.ty ∈ blockTys := by rw [htT]; simp [blockTys]
  rw [hcell]
  refine ⟨⟨oT, hoT, bk_blk hTb, _, hk, slot_block hTb _, rfl⟩, ?_⟩
  intro hw
  obtain ⟨ob, hob, hobb, hobt⟩ := hP.boObj
  obtain ⟨oR, hoR, hRb, hRt, hRs⟩ := hP.rcsObj
  have hmin := (hL.1 ob hob).2.2.2.1
  rw [hobt] at hmin
  have h88 : (guestC.ty tBO).minSz = 88 := rfl
  rw [h88] at hmin
  have hbo : ∀ j' : Nat, j' < 11 → ob.HasSlot j' := fun j' hj' => by unfold Obj.HasSlot; omega
  have hcellb : ∀ j', K.E.bo + BitVec.ofNat 64 (8 * j') = ob.cell j' := fun j' => by unfold Obj.cell; rw [hobb]
  have hty : oT.ty ≠ ob.ty := by rw [htT, hobt]; decide
  have hrc : ∀ j' : Nat, j' < 2 → K.E.rcs + K.E.idx * 16 + BitVec.ofNat 64 (8 * j') =
      oR.cell (2 * K.E.idx.toNat + j') := fun j' _ => by
    unfold Obj.cell; rw [hRb, BitVec.add_assoc, show (16 : BitVec 64) = BitVec.ofNat 64 16 from rfl, bv_idx16]
  have hkR : ∀ j' : Nat, j' < 2 → oR.HasSlot (2 * K.E.idx.toNat + j') := fun j' hj' => by
    unfold Obj.HasSlot; omega
  have hne : oT ≠ oR := fun e => hP.dis3 (by rw [← hbT, ← hRb, e])
  rcases hw with h | h | h | h | h | h
  · have e : K.E.bo = ob.cell 0 := by rw [← hcellb 0]; simp
    rw [e] at h
    exact cell_ne_ty hord hL hoT hob hty hk (hbo 0 (by omega)) h
  · have e : K.E.bo + 8 = ob.cell 1 := hcellb 1
    rw [e] at h
    exact cell_ne_ty hord hL hoT hob hty hk (hbo 1 (by omega)) h
  · have e : K.E.bo + 16 = ob.cell 2 := hcellb 2
    rw [e] at h
    exact cell_ne_ty hord hL hoT hob hty hk (hbo 2 (by omega)) h
  · have e : K.E.bo + 48 = ob.cell 6 := hcellb 6
    rw [e] at h
    exact cell_ne_ty hord hL hoT hob hty hk (hbo 6 (by omega)) h
  · have e : K.E.rcs + K.E.idx * 16 = oR.cell (2 * K.E.idx.toNat) := by
      have := hrc 0 (by omega); simpa using this
    rw [e] at h
    exact hne (cell_inj hord hL hoT hoR hk (by have := hkR 0 (by omega); simpa using this) h).1
  · have e : K.E.rcs + K.E.idx * 16 + 8 = oR.cell (2 * K.E.idx.toNat + 1) := hrc 1 (by omega)
    rw [e] at h
    exact hne (cell_inj hord hL hoT hoR hk (hkR 1 (by omega)) h).1

end InitECandidate.Solver.MemSafe.Ptx
