import InitECandidate.Solver.MemSafe.BalEnc.SortK
import InitECandidate.Solver.MemSafe.BalEnc.AspG
import InitECandidate.Solver.MemSafe.BalEnc.Cfg
import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# Facts read off `G`: domain, typed fields, table strides, list arrays

All at the configuration `guestCS` with the hook `nwH guestHooksR` (the invariant of the encoders).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

/-- Every aligned address of `[heapBase, scratchEnd)` is in the guest's memory domain. -/
theorem dom_guest {a : BitVec 64} (h8 : a.toNat % 8 = 0) (h1 : heapBase ≤ a.toNat)
    (h2 : a.toNat < scratchEnd) : guestCtx.memaddrs a := by
  change InitE.ordinaryDomain a
  unfold InitE.ordinaryDomain
  rw [Compiler.Backend.StackRemove.mem_addresses]
  refine ⟨(a.toNat - InitE.sourceBase) / 8, ?_, ?_⟩
  · simp only [InitE.stackStart, InitE.sourceBase, InitE.ramEnd, InitE.ramStart, InitE.ramSize,
      InitE.stackSize, InitE.globalsWords]
    unfold heapBase scratchEnd at *
    omega
  · apply BitVec.eq_of_toNat_eq
    have h8' : (Compiler.Backend.StackRemove.bytesInWord 64 : BitVec 64) = BitVec.ofNat 64 8 := rfl
    rw [h8', BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat,
      BitVec.toNat_ofNat]
    simp only [InitE.sourceBase]
    unfold heapBase scratchEnd at *
    have := a.isLt
    omega


/-! ## Typing transports -/

theorem fits_ext {Γ0 Γ' : Gam} (hE : Ext Γ0 Γ') {k : FK} {w : BitVec 64} (h : Fits Γ0 k w) :
    Fits Γ' k w := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t =>
    obtain ⟨o, ho, hb, ht⟩ := h
    obtain ⟨o', ho', hb', ht', -⟩ := hE o ho
    exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩
  | nptr t =>
    rcases h with h | ⟨o, ho, hb, ht⟩
    · exact Or.inl h
    · obtain ⟨o', ho', hb', ht', -⟩ := hE o ho
      exact Or.inr ⟨o', ho', hb'.trans hb, ht'.trans ht⟩
  | uptr ts =>
    rcases h with h | ⟨o, ho, hb, ht⟩
    · exact Or.inl h
    · obtain ⟨o', ho', hb', ht', -⟩ := hE o ho
      exact Or.inr ⟨o', ho', hb'.trans hb, by rw [ht']; exact ht⟩

theorem sub_base {Γ0 Γ' : Gam} (hS : Sub Γ0 Γ') (hpos : ∀ o ∈ Γ', 0 < o.size) {o : Obj}
    (ho : o ∈ Γ') : ∃ o0 ∈ Γ0, o0.base = o.base ∧ o0.ty = o.ty := by
  have h1 := hpos o ho
  obtain ⟨o0, h0, hb, ht, -, -⟩ := hS o ho o.base (le_of_eq rfl) (by unfold Obj.hi; omega)
  exact ⟨o0, h0, hb, ht⟩

theorem fits_sub {Γ0 Γ' : Gam} (hS : Sub Γ0 Γ') (hpos : ∀ o ∈ Γ', 0 < o.size) {k : FK}
    {w : BitVec 64} (h : Fits Γ' k w) : Fits Γ0 k w := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t =>
    obtain ⟨o, ho, hb, ht⟩ := h
    obtain ⟨o0, h0, hb0, ht0⟩ := sub_base hS hpos ho
    exact ⟨o0, h0, hb0.trans hb, ht0.trans ht⟩
  | nptr t =>
    rcases h with h | ⟨o, ho, hb, ht⟩
    · exact Or.inl h
    · obtain ⟨o0, h0, hb0, ht0⟩ := sub_base hS hpos ho
      exact Or.inr ⟨o0, h0, hb0.trans hb, by rw [ht0]; exact ht⟩
  | uptr ts =>
    rcases h with h | ⟨o, ho, hb, ht⟩
    · exact Or.inl h
    · obtain ⟨o0, h0, hb0, ht0⟩ := sub_base hS hpos ho
      exact Or.inr ⟨o0, h0, hb0.trans hb, by rw [ht0]; exact ht⟩

/-! ## Cells of live objects are in the domain -/

theorem obj_range {C : Cfg} {H : Hooks σ} {Γ : Gam} {t : State σ} (hG : G C H Γ t) {o : Obj}
    (ho : o ∈ Γ) : heapBase ≤ o.lo ∧ o.lo + o.size ≤ scratchEnd ∧ o.lo % 8 = 0 ∧ o.size % 8 = 0 ∧
      0 < o.size := by
  obtain ⟨p, hp, hord, hL, -⟩ := hG
  obtain ⟨hal, hsz8, hpos, -, hlive⟩ := hL.1 o ho
  unfold Ptrs.Ordered at hord
  generalize (C.ty o.ty).region = r at hlive
  cases r <;> simp only [Region.Live] at hlive <;> unfold heapBase heapEnd scratchEnd at * <;>
    refine ⟨?_, ?_, hal, hsz8, hpos⟩ <;> omega

theorem cell_dom {C : Cfg} {H : Hooks σ} {Γ : Gam} {t : State σ} (hG : G C H Γ t)
    (hd : t.memaddrs = guestCtx.memaddrs) {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) :
    t.memaddrs (o.cell k) := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := obj_range hG ho
  unfold Obj.HasSlot at hk
  have hse : scratchEnd < 2 ^ 64 := by decide
  have e := cellN (x := o) (k := k) (by omega)
  rw [hd]
  exact dom_guest (by rw [e]; omega) (by rw [e]; omega) (by rw [e]; omega)


/-! ## Facts at the invariant of an encoder -/

/-- The entry data of an encoder: the configuration `guestCS` and the hook `nwH guestHooksR`. -/
structure CsE (a : AwE σ) : Prop where
  C : a.C = guestCS
  H : a.H = nwH (guestHooksR (σ := σ))

theorem csE_g {a : AwE σ} (hc : CsE a) {Γ : Gam} {t : State σ} (hG : G a.C a.H Γ t) :
    G guestC (guestHooksR (σ := σ)) Γ t := by
  rw [hc.C, hc.H] at hG
  exact g_iff.1 hG

/-- A typed slot of an object of the entry typing, read at the current state. -/
theorem obj_field {a : AwE σ} (hc : CsE a) {t : State σ} (hinv : AwInv a t) {A : Obj}
    (hA : A ∈ a.Γ0) {k : Nat} (hk : (guestC.ty A.ty).minSz ≥ 8 * k + 8) :
    Fits a.Γ0 ((guestC.ty A.ty).slot k) (rd t.memory (A.cell k)) := by
  obtain ⟨Γ', p', hG, hp, hE, hS, -⟩ := hinv
  have hGc := csE_g hc hG
  obtain ⟨A', hA', hb, ht, hsz⟩ := hE A hA
  have hGs := hG
  rw [hc.C, hc.H] at hGs
  obtain ⟨p, hp0, hord, hL, hF, -⟩ := hGs
  have hmin := (hL.1 A' hA').2.2.2.1
  rw [minSz_cs, ht] at hmin
  have hk' : A'.HasSlot k := by unfold Obj.HasSlot; omega
  have h1 := hF A' hA' k hk'
  rw [fits_cs, ht] at h1
  have h2 : A'.cell k = A.cell k := by unfold Obj.cell; rw [hb]
  rw [h2] at h1
  exact fits_sub hS (obj_pos hGc) h1

/-- A typed table of the entry typing: its stride cell is in the domain and at least `32`. -/
theorem tab_stride {a : AwE σ} (hc : CsE a) {t : State σ} (hinv : AwInv a t)
    (hd : t.memaddrs = guestCtx.memaddrs) {T : BitVec 64} {th : Nat} (hth : th ∈ hdrTys)
    (hKL : htKL th = 32) (hfit : Fits a.Γ0 (.ptr th) T) :
    t.memaddrs (T + BitVec.ofNat 64 8) ∧ 32 ≤ (rd t.memory (T + BitVec.ofNat 64 8)).toNat := by
  obtain ⟨Γ', p', hG, hp, hE, hS, -⟩ := hinv
  have hGc := csE_g hc hG
  obtain ⟨o, ho, hb, ht⟩ := hfit
  obtain ⟨o', ho', hb', ht', hsz⟩ := hE o ho
  have hko : hkOf o'.ty = .tab := by rw [ht', ht]; exact hkOf_of_tab hth
  obtain ⟨pp, hpp, hord, hL, hF, hTg, hGl, hW⟩ := hGc
  have hw : tabW Γ' t o' := htabHooks_guestR.get Γ' t o' hko (hW o' ho')
  obtain ⟨-, hGam, hwf, -, -, hkl⟩ := hw
  have hGc' := csE_g hc hG
  have hmin := (hL.1 o' ho').2.2.2.1
  rw [ht', ht] at hmin
  have hmin88 : 88 ≤ (guestC.ty th).minSz := by
    have := hdr_minSz th hth
    omega
  have hbT : o'.base = T := hb'.trans hb
  constructor
  · have := cell_dom hGc' hd ho' (k := 1) (by unfold Obj.HasSlot; omega)
    have e : o'.cell 1 = T + BitVec.ofNat 64 8 := by unfold Obj.cell; rw [hbT]
    rw [e] at this
    exact this
  · obtain ⟨-, -, -, -, -, h6, -⟩ := hwf.1
    unfold KLOK at hkl
    rw [ht', ht, hKL] at hkl
    have hkl' : (Spec.Inv.hdr t.memory o'.base 0).toNat = 32 := by rw [hkl]; decide
    rw [hbT] at h6 hkl'
    show 32 ≤ (Spec.Inv.hdr t.memory T 8).toNat
    omega


/-- **What `sort_elems` on a list of the entry typing needs**: the count and array of the header `l`
at the current state give the bounds and the cover of the array cells by scalar cells. -/
theorem list_sort_facts {a : AwE σ} (hc : CsE a) {t : State σ} {l : BitVec 64} {T : Nat}
    (hT : T ∈ lstTys) (hfit : Fits a.Γ0 (.ptr T) l) {Γ' : Gam} (hG : G a.C a.H Γ' t)
    (hE : Ext a.Γ0 Γ') :
    (rd t.memory (l + BitVec.ofNat 64 8)).toNat < 2 ^ 63 →
      (rd t.memory (l + BitVec.ofNat 64 8)).toNat ≤ domTop ∧
      (rd t.memory (l + BitVec.ofNat 64 8)).toNat * lstE T ≤ domTop + 64 ∧
      (rd t.memory (l + BitVec.ofNat 64 0)).toNat + (rd t.memory (l + BitVec.ofNat 64 8)).toNat *
        lstE T ≤ scratchEnd ∧
      ∀ x, Overlap (rd t.memory (l + BitVec.ofNat 64 0)).toNat
        ((rd t.memory (l + BitVec.ofNat 64 8)).toNat * lstE T) x → SCell a.C Γ' x := by
  intro _
  have hGc := csE_g hc hG
  obtain ⟨o, ho, hb, ht⟩ := hfit
  obtain ⟨o', ho', hb', ht', hsz⟩ := hE o ho
  have hko : o'.ty ∈ lstTys := by rw [ht', ht]; exact hT
  have hwf : (guestHooksR (σ := σ)).wf Γ' t o' := by
    obtain ⟨pp, -, -, -, -, -, -, hW⟩ := hGc
    exact hW o' ho'
  obtain ⟨-, -, hok⟩ := lstHooks_guestR.get Γ' t o' hko hwf
  obtain ⟨hlo, hNC, hC0, x, hx, hxb, hxt, hxs⟩ := hok
  have hlbT : o'.base = l := hb'.trans hb
  have e0 : o'.cell 0 = l + BitVec.ofNat 64 0 := by unfold Obj.cell; rw [hlbT]
  have e1 : o'.cell 1 = l + BitVec.ofNat 64 8 := by unfold Obj.cell; rw [hlbT]
  have hP : lP t.memory o' = rd t.memory (l + BitVec.ofNat 64 0) := by unfold lP; rw [e0]
  have hN : Hooks.lN t.memory o' = rd t.memory (l + BitVec.ofNat 64 8) := by unfold Hooks.lN; rw [e1]
  have hpos := lstE_pos o'.ty hko
  have hET : lstE o'.ty = lstE T := by rw [ht', ht]
  rw [hP] at hxb
  rw [hN] at hNC
  have hxA : IsLstA x.ty := by
    rcases hxt with h | ⟨h, -⟩
    · exact Or.inl h
    · exact Or.inr h
  obtain ⟨r1, r2, r3, r4, r5⟩ := obj_range hGc hx
  have hse : scratchEnd < 2 ^ 32 := by decide
  have hdt : domTop = 2 ^ 40 := rfl
  have hxlo : x.lo = (rd t.memory (l + BitVec.ofNat 64 0)).toNat := by
    unfold Obj.lo; rw [hxb]
  rw [hET] at hxs
  have hNE : (rd t.memory (l + BitVec.ofNat 64 8)).toNat * lstE T ≤ x.size := by
    have := Nat.mul_le_mul_right (lstE T) hNC
    rw [Nat.mul_comm (lstE T)] at hxs
    omega
  have hE1 : 1 ≤ lstE T := by rw [← hET]; omega
  have hNle : (rd t.memory (l + BitVec.ofNat 64 8)).toNat ≤
      (rd t.memory (l + BitVec.ofNat 64 8)).toNat * lstE T := Nat.le_mul_of_pos_right _ hE1
  refine ⟨by omega, by omega, by omega, ?_⟩
  intro y ⟨hy1, hy2, hy3⟩
  have hE8 : lstE T % 8 = 0 := by rw [← hET]; omega
  have hNE8 : ((rd t.memory (l + BitVec.ofNat 64 8)).toNat * lstE T) % 8 = 0 := by
    rw [Nat.mul_mod, hE8]; simp
  have hyP : x.lo ≤ y.toNat := by omega
  refine ⟨x, hx, (y.toNat - x.lo) / 8, ?_, ?_, ?_⟩
  · unfold Obj.HasSlot; omega
  · rw [hc.C]; exact slot_cs_lstA hxA _
  · have hse2 : scratchEnd < 2 ^ 64 := by decide
    have e := cellN (x := x) (k := (y.toNat - x.lo) / 8) (by omega)
    apply BitVec.eq_of_toNat_eq
    rw [e]
    omega

end InitECandidate.Solver.MemSafe.BalEnc
