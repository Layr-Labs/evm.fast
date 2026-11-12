import InitECandidate.Solver.MemSafe.Puc.Tail4

/-!
# Puc: the final post and its link to the entry (`PucEnd`, `pu_link`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- **The post of the whole function**, relative to the entry data. -/
def PucEnd (E : PtE σ) (t : State σ) (out : BitVec 64) : Prop :=
  ∃ Γ' : Gam, G guestC (HR σ) Γ' t ∧ OwnerHeap Γ' ∧ KeepH guestC E.Γ0 Γ' E.s0 t ∧
    (∀ o ∈ E.Γ0, o.ty ∈ bkTys → ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
      rd t.memory (o.cell k) = rd E.s0.memory (o.cell k)) ∧
    (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧ (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax) ∧
    JrNZ t ∧ (∃ o ∈ Γ', o.base = out ∧ o.ty = tMCO) ∧ (rd t.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32 ∧
    (∃ w, gword t nmTs = some w ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tTS)

theorem pucEnd_loc {E : PtE σ} {t : State σ} {out : BitVec 64} (h : PucEnd E t out) (l : Locs) (c : Nat) :
    PucEnd E { t with locals := l, clock := c } out := by
  obtain ⟨Γ', hG, hO, hK, hb, hev, hcc, hj, ho, h48, hts⟩ := h
  refine ⟨Γ', (G_locFree Hooks.guestHooksR_lawful t l c).mpr hG, hO, hK, hb, hev, hcc, jrNZ_congr (s := t) rfl hj, ho,
    h48, hts⟩

theorem locIns_puc (E : PtE σ) : LocIns (fun (r : Option (PanSemResultExact 64)) (t : State σ) =>
    ∃ out, r = some (.returned (.val (.word out))) ∧ PucEnd E t out) :=
  fun r t l c ⟨out, h1, h2⟩ => ⟨out, h1, pucEnd_loc h2 l c⟩

/-- The block fields of `pucE` are dummies: no protected cell is a `WSet` cell. -/
theorem pucE_wset {Γ : Gam} {s : State σ} {q : Ptrs} {a : BitVec 64} (h : 100 ≤ a.toNat) :
    ¬ (pucE Γ s q).WSet a := by
  intro hw
  unfold PtE.WSet pucE at hw
  simp only [BitVec.zero_add, BitVec.zero_mul, BitVec.add_zero] at hw
  rcases hw with h1 | h1 | h1 | h1 | h1 | h1 | h1 | h1 <;>
    (have := congrArg BitVec.toNat h1; simp at this; omega)

theorem cell_big {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {o : Obj} (ho : o ∈ Γ) {k : Nat}
    (hk : o.HasSlot k) : 100 ≤ (o.cell k).toNat := by
  have h1 := (cell_toNat hord hL ho hk).1
  have h2 := (hL.1 o ho).2.2.2.2
  obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hord
  unfold Region.Live at h2
  unfold Obj.lo at h1
  have hlo : o.lo = o.base.toNat := rfl
  unfold heapBase heapEnd at *
  rcases hr : (guestC.ty o.ty).region <;> rw [hr] at h2 <;> simp only [Region.Live] at h2 <;> omega

/-- **From the tail's post to the function's post.** -/
theorem pu_link {E : PtE σ} {D : BitVec 64 → Option (BitVec 64)} {Γe Γ' : Gam} {u st t : State σ} {p q : Ptrs}
    {A : TlA σ} {out : BitVec 64}
    (hrun : PtRun D E.Γ0 E.s0 E.p0 Γe u p) (hD : ∀ a, D a ≠ none → E.WSet a) (hOH : OwnerHeap E.Γ0)
    (hHO : ∀ o ∈ E.Γ0, (guestC.ty o.ty).region = .heap)
    (hq : ptrsOf st = some q) (hkeep : KeepH guestC Γe Γ' u st) (hbk : BKeep guestC Γe u st)
    (hAΓ : A.Γ0 = keepG Γ') (hAs : A.s0 = st)
    (hfresh : ∀ a : Nat, out.toNat ≤ a → a < out.toNat + 96 → ¬ InObj Γe a)
    (hnw : ∀ o ∈ E.Γ0, ∀ k, o.HasSlot k → ¬ E.WSet (o.cell k))
    (hT : TEnd A out t) : PucEnd E t out := by
  obtain ⟨Γ'', hG, hO, hK, hz, hev, hcc, hj, ho, h48, hts⟩ := hT
  have hext := ptRun_ext hrun
  have hp := ptRun_ptrs hrun
  have hordp := ptRun_ord hrun
  have hordq : q.Ordered := by
    have h1 := A.hq0
    rw [hAs, hq] at h1
    have h2 : A.q0 = q := (Option.some.inj h1).symm
    exact h2 ▸ A.ord
  have hLe : Layout guestC p Γe := by
    obtain ⟨p', hp', -, hL, -⟩ := ptRun_G hrun
    rwa [Option.some.inj (hp'.symm.trans hp)] at hL
  refine ⟨Γ'', hG, hO, ?_, ?_, hev, hcc, hj, ho, h48, hts⟩
  · have h1 := keepH_ptRun hrun
    have h2 := KeepH.trans h1 hkeep hp hordp
    have h3 : KeepH guestC E.Γ0 (keepG Γ') E.s0 st := keepH_sub h2 (fun o ho => (mem_keepG.mp ho).1) (by
      intro p0 p1 hp0 hp1 hord0 x hx hr
      exact kchain hext hOH hp hq hordp hkeep hx hr)
    subst hAs
    rw [hAΓ] at hK
    exact KeepH.trans h3 hK hq hordq
  · intro o hoE hot k hk hpr
    -- the cell in the kept typing
    have hbkE : (guestC.ty o.ty).region = .heap := hHO o hoE
    obtain ⟨o', ho', hb, ht, hs⟩ := kchain hext hOH hp hq hordp hkeep hoE hbkE
    have hk' : o'.HasSlot k := by unfold Obj.HasSlot at hk ⊢; omega
    have e1 : o'.cell k = o.cell k := by unfold Obj.cell; rw [hb]
    have hZ : Zt A out (o.cell k) := by
      refine ⟨⟨o', by rw [hAΓ]; exact ho', by rw [ht]; exact hot, k, hk', by rw [ht]; exact hpr, e1.symm⟩, ?_⟩
      intro hc
      -- the cell would lie in `out`'s 96 bytes
      obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := hext o hoE
      have hk1 : o1.HasSlot k := by unfold Obj.HasSlot at hk ⊢; omega
      have hin := cell_in hordp hLe ho1 hk1
      have e2 : o1.cell k = o.cell k := by unfold Obj.cell; rw [hb1]
      have hbig := cell_big hordp hLe ho1 hk1
      rw [e2, hc] at hin hbig
      have hlt : (out + BitVec.ofNat 64 40).toNat = out.toNat + 40 := by
        have := BitVec.isLt out
        simp only [BitVec.toNat_add, BitVec.toNat_ofNat] at hbig ⊢
        omega
      exact hfresh _ (by omega) (by omega) hin
    have h4 := hz _ hZ
    subst hAs
    rw [h4]
    -- from the call entry back to the entry
    obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := hext o hoE
    have hot1 : o1.ty ∈ bkTys := by rw [ht1]; exact hot
    have h5 := hbk.1 o1 ho1 hot1 k (by unfold Obj.HasSlot at hk ⊢; omega) (by rw [ht1]; exact hpr)
    have e2 : o1.cell k = o.cell k := by unfold Obj.cell; rw [hb1]
    rw [e2] at h5
    show rd _ (o.cell k) = rd E.s0.memory (o.cell k)
    refine h5.trans ?_
    exact ptRun_rd_keep hrun hD ⟨o, mem_nst.mpr ⟨hoE, guestSt_bk hot⟩, k, hk, hpr, rfl⟩ (hnw o hoE k hk)

end InitECandidate.Solver.MemSafe.Puc
