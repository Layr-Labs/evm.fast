import InitECandidate.Solver.MemSafe.Ptx.PtT29

/-!
# F3h: the end of the tail: `TailMid` (the state before the final release), release, `TailPost`
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

/-- A block-object cell of the anchor typing. -/
def BlkC (K : TlCtx σ) (a : BitVec 64) : Prop :=
  ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k

theorem blkC_inl {K : TlCtx σ} {a : BitVec 64} (h : BlkC K a) :
    ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k := by
  obtain ⟨o, ho, hty, k, hk, -, hc⟩ := h
  exact ⟨o, ho, hty, k, hk, hc⟩

/-- **The state before the final release**: a heap-only typing `Γ'` and what `TailPost` needs. -/
structure TailMid (K : TlCtx σ) (u : State σ) (Γ' : Gam) : Prop where
  hG : G guestC (HR σ) Γ' u
  heap : ∀ o ∈ Γ', (guestC.ty o.ty).region = .heap
  owner : OwnerHeap Γ'
  keep : KeepH guestC K.E.Γ0 Γ' K.E.s0 u
  blk : ∀ o ∈ K.E.Γ0, o.ty ∈ blockTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot → ¬ K.Wt (o.cell k) →
    rd u.memory (o.cell k) = rd K.E.s0.memory (o.cell k)
  hev : ∃ e, gword u nmEv = some e ∧ e.toNat < nullMax
  hcc : ∃ c, gword u nmCC = some c ∧ c.toNat < nullMax
  tx : Hooks.VInR tVAL Γ' (rd u.memory (K.E.txs + K.E.idx * 16)) (rd u.memory (K.E.txs + K.E.idx * 16 + 8))
  rc : Hooks.VInR tVAL Γ' (rd u.memory (K.E.rcs + K.E.idx * 16)) (rd u.memory (K.E.rcs + K.E.idx * 16 + 8))
  ptrs : ∃ p, ptrsOf u = some p
  jr : JrNZ u
  plk : ∀ o ∈ K.E.Γ0, o.ty ∈ recKTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
    rd u.memory (o.cell k) = rd K.E.s0.memory (o.cell k)

theorem tailPost_of_mid {K : TlCtx σ} {u : State σ} {Γ' : Gam} (h : TailMid K u Γ') : TailPost K u :=
  ⟨Γ', h.hG, h.owner, h.keep, h.blk, h.hev, h.hcc, h.tx, h.rc, h.jr, h.plk⟩

theorem vinR_keepG {Γ : Gam} {vp vl : BitVec 64} (h : Hooks.VInR tVAL Γ vp vl) :
    Hooks.VInR tVAL (keepG Γ) vp vl := by
  rcases h with h | ⟨x, hx, ht, h1, h2⟩
  · exact Or.inl h
  · exact Or.inr ⟨x, mem_keepG.mpr ⟨hx, by rw [ht]; decide, by rw [ht]; decide⟩, ht, h1, h2⟩

section mid
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam}
  {p : Ptrs}

/-- The tail's state before the release gives `TailMid` for its heap part without scratch-owned arrays. -/
theorem tailMid_of_tl (hP : TlPre K) (h : TlS K.A ref Z O u Γ p)
    (hblk : ∀ a, BlkC K a → ¬ K.Wt a → Z a ∧ ref a = K.ref0 a)
    (hrc : Z (K.E.rcs + K.E.idx * 16) ∧ Z (K.E.rcs + K.E.idx * 16 + 8) ∧
      Hooks.VInR tVAL Γ (ref (K.E.rcs + K.E.idx * 16)) (ref (K.E.rcs + K.E.idx * 16 + 8))) :
    TailMid K u (keepG Γ) := by
  have hGk := G_keepOwnerHeap h.hG h.hev h.hcc
  have hL := tl_layout h
  have hord := tl_ord h
  have hLk : Layout guestC p (keepG Γ) :=
    layout_shrink hL (fun o ho => (mem_keepG.mp ho).1) (((layout_nodup hL).filter _).filter _)
  have hext : Ext K.E.Γ0 (keepG Γ) := by
    intro o ho
    obtain ⟨o', ho', hb, ht, hs⟩ := h.ext o ho
    refine ⟨o', mem_keepG.mpr ⟨ho', by rw [ht]; exact hP.heap0 o ho, ?_⟩, hb, ht, hs⟩
    rw [ht]
    intro hso
    have := hP.own0 o ho hso.1
    unfold ScratchOwn at hso
    omega
  have hnf : NewFresh K.E.Γ0 (keepG Γ) K.q0 p := fun o ho a l1 l2 => h.nf o (mem_keepG.mp ho).1 a l1 l2
  have hkc : ∀ a, BlkC K a → ¬ K.Wt a → rd u.memory a = rd K.E.s0.memory a := fun a ha hw => by
    obtain ⟨hZ, hr⟩ := hblk a ha hw
    rw [h.keep a hZ, hr]; rfl
  refine ⟨hGk.1, fun o ho => (mem_keepG.mp ho).2.1, hGk.2, keepH_of_run K.hq0 h.hp h.mono hext hnf hLk hord,
    fun o ho hot k hk hpr hnw => hkc _ ⟨o, ho, bk_blk hot, k, hk, hpr, rfl⟩ hnw, h.hev, h.hcc, ?_, ?_, ⟨p, h.hp⟩, h.jr,
    fun o ho hot k hk hpr => hkc _ ⟨o, ho, List.mem_append_right _ hot, k, hk, hpr, rfl⟩
      (fun hw => not_wset_ty hP.B ho (recK_ne hot).1 (recK_ne hot).2 hk (K.wt_wset hw))⟩
  · have e1 := blk_txs hP (j := 0) (by norm_num)
    have e2 := blk_txs hP (j := 1) (by norm_num)
    have k1 := hkc _ e1.1 e1.2
    have k2 := hkc _ e2.1 e2.2
    have k1' : rd u.memory (K.E.txs + K.E.idx * 16) = rd K.E.s0.memory (K.E.txs + K.E.idx * 16) := by simpa using k1
    have k2' : rd u.memory (K.E.txs + K.E.idx * 16 + 8) = rd K.E.s0.memory (K.E.txs + K.E.idx * 16 + 8) := k2
    rw [k1', k2']
    exact vinR_keepG (Hooks.vInR_ext h.ext hP.txSl)
  · rw [h.keep _ hrc.1, h.keep _ hrc.2.1]
    exact vinR_keepG hrc.2.2

end mid

end InitECandidate.Solver.MemSafe.Ptx
