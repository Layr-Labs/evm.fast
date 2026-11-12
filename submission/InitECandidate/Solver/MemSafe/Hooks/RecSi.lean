import InitECandidate.Solver.MemSafe.Hooks.RecPl

/-!
# The stateless-input record entry `siD`

The decoded stateless input (`decode_stateless_input`, 96 bytes, type `tSI` = 51, all `prot`):
slot 0 (`si + 0`) holds the payload record, a `Γ` object of type `tPL` (read by `htr_payload`,
`payload_header`, ... through `lds 1 (si + 0)`); slots 5, 6 (`SI_STATE`, `SI_STATE_N`) and 7, 8
(`SI_CODES`, `SI_CODES_N`) are slice arrays (`SlaW`). Footprint: those slots and the cells of the
arrays. Dependencies: the record, the arrays, the `tVAL` objects holding the slices.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

/-- **The stateless-input record invariant.** -/
def SiW (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  96 ≤ o.size ∧ o.lo + 96 ≤ heapEnd ∧ SubArr Γ (txF m o 0) 1 tPL 136 ∧
    SlaW Γ m (txF m o 5) (txF m o 6).toNat ∧ SlaW Γ m (txF m o 7) (txF m o 8).toNat

def siSlots : List Nat := [0, 5, 6, 7, 8]

def siFp (_Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) : Prop :=
  (∃ k ∈ siSlots, a = o.cell k) ∨ slaFp m (txF m o 5) (txF m o 6).toNat a ∨
    slaFp m (txF m o 7) (txF m o 8).toNat a

def siRef (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) : Prop :=
  b = txF m o 0 ∨ ((txF m o 6).toNat ≠ 0 ∧ b = txF m o 5) ∨ ((txF m o 8).toNat ≠ 0 ∧ b = txF m o 7) ∨
    ∃ x ∈ Γ, x.base = b ∧ (SlaVal m (txF m o 5) (txF m o 6).toNat x ∨
      SlaVal m (txF m o 7) (txF m o 8).toNat x)

theorem recTy_tSI : RecTyOK tSI := by decide
theorem si_prot (k : Nat) : (guestC.ty tSI).slot k = .prot := recIds_prot tSI (by simp) k

theorem siSlots_le {k : Nat} (h : k ∈ siSlots) : k ≤ 8 := by
  simp only [siSlots, List.mem_cons, List.not_mem_nil, or_false] at h
  omega

theorem si_cells (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ) (ho : o ∈ Γ)
    (ht : o.ty = tSI) (hw : SiW Γ m o) (hf : siFp Γ m o a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧ (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hs, hlo, -, h5, h7⟩ := hw
  rcases hf with ⟨k, hk, rfl⟩ | hf | hf
  · have hk8 := siSlots_le hk
    have e := cellN (x := o) (k := k) (by have := heapEnd_lt; omega)
    refine ⟨o, ho, ht ▸ recTy_tSI, k, by unfold Obj.HasSlot; omega, by rw [ht]; exact si_prot k,
      rfl, by omega, ?_⟩
    rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega
  · exact sla_cells h5 hf
  · exact sla_cells h7 hf

theorem si_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = tSI) (hw : SiW Γ m o)
    (hfp : ∀ a, siFp Γ m o a → m' a = m a) : SiW Γ m' o ∧ siFp Γ m' o = siFp Γ m o := by
  have ek : ∀ k ∈ siSlots, txF m' o k = txF m o k := fun k hk =>
    rd_congr (hfp _ (Or.inl ⟨k, hk, rfl⟩))
  have e0 := ek 0 (by decide)
  have e5 := ek 5 (by decide)
  have e6 := ek 6 (by decide)
  have e7 := ek 7 (by decide)
  have e8 := ek 8 (by decide)
  have hfpe : siFp Γ m' o = siFp Γ m o := by
    funext a
    unfold siFp
    rw [e5, e6, e7, e8, slaFp_congr m m', slaFp_congr m m']
  refine ⟨?_, hfpe⟩
  obtain ⟨h1, h2, h3, h5, h7⟩ := hw
  refine ⟨h1, h2, by rw [e0]; exact h3, ?_, ?_⟩
  · rw [e5, e6]; exact sla_frame h5 (fun a ha => hfp a (Or.inr (Or.inl ha)))
  · rw [e7, e8]; exact sla_frame h7 (fun a ha => hfp a (Or.inr (Or.inr ha)))

theorem si_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = tSI) (hw : SiW Γ m o) : SiW Γ' m o' := by
  obtain ⟨h1, h2, h3, h5, h7⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  refine ⟨by omega, by rw [hlo]; exact h2, ?_, ?_, ?_⟩
  · rw [txF_base hb]; exact subArr_ext hx h3
  · rw [txF_base hb, txF_base hb]; exact sla_ext hx h5
  · rw [txF_base hb, txF_base hb]; exact sla_ext hx h7

theorem si_shrink (Γ Γs : Gam) (m : Mem) (o : Obj) (_hsub : ∀ o' ∈ Γs, o' ∈ Γ) (_ho : o ∈ Γs)
    (_ht : o.ty = tSI) (hw : SiW Γ m o) (hc : ∀ x ∈ Γ, siRef Γ m o x.base → x ∈ Γs) :
    SiW Γs m o := by
  obtain ⟨h1, h2, h3, h5, h7⟩ := hw
  refine ⟨h1, h2, ?_, ?_, ?_⟩
  · rcases h3 with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
    · omega
    · exact Or.inr ⟨x, hc x hx (Or.inl hxb), hxb, hxt, hxs, hxe⟩
  · exact sla_shrink h5 (fun hn x hx hxb => hc x hx (Or.inr (Or.inl ⟨hn, hxb⟩)))
      (fun x hx hv => hc x hx (Or.inr (Or.inr (Or.inr ⟨x, hx, rfl, Or.inl hv⟩))))
  · exact sla_shrink h7 (fun hn x hx hxb => hc x hx (Or.inr (Or.inr (Or.inl ⟨hn, hxb⟩))))
      (fun x hx hv => hc x hx (Or.inr (Or.inr (Or.inr ⟨x, hx, rfl, Or.inr hv⟩))))

theorem si_refHeap (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) (p : Ptrs)
    (hL : Layout guestC p Γ) (_ho : o ∈ Γ) (_ht : o.ty = tSI) (hw : SiW Γ m o)
    (hr : siRef Γ m o b) : ∀ x ∈ Γ, x.base = b → (guestC.ty x.ty).region = .heap := by
  intro x hx hxb
  obtain ⟨-, -, h3, ⟨h5, -⟩, ⟨h7, -⟩⟩ := hw
  have hsla : ∀ {A : BitVec 64} {n : Nat}, SubArr Γ A n tSLA 16 → n ≠ 0 → b = A →
      (guestC.ty x.ty).region = .heap := by
    intro A n hs hn hbA
    subst hbA
    rcases hs with h | ⟨y, hy, hyb, hyt, -⟩
    · exact absurd h hn
    · rw [gam_base_eq (gamOK_of_layout hL) hx hy (hxb.trans hyb.symm), hyt]; exact sla_heap
  rcases hr with rfl | ⟨hn, rfl⟩ | ⟨hn, rfl⟩ | ⟨y, hy, hyb, hv⟩
  · rcases h3 with h | ⟨y, hy, hyb, hyt, -⟩
    · omega
    · rw [gam_base_eq (gamOK_of_layout hL) hx hy (hxb.trans hyb.symm), hyt]
      exact recIds_region tPL (by simp)
  · exact hsla h5 hn rfl
  · exact hsla h7 hn rfl
  · have hyt : y.ty = tVAL := by
      rcases hv with h | h
      · exact h.1
      · exact h.1
    rw [gam_base_eq (gamOK_of_layout hL) hx hy (hxb.trans hyb.symm), hyt]; exact val_heap

/-- **The stateless-input record entry.** -/
def siD : RecD where
  ty := tSI
  wf := SiW
  fp := siFp
  ref := siRef
  hty := recTy_tSI
  cells := si_cells
  frame := si_frame
  mono := si_mono
  shrink := si_shrink
  refHeap := si_refHeap

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.si_cells
#print axioms InitECandidate.Solver.MemSafe.Hooks.si_frame
#print axioms InitECandidate.Solver.MemSafe.Hooks.si_mono
#print axioms InitECandidate.Solver.MemSafe.Hooks.si_shrink
#print axioms InitECandidate.Solver.MemSafe.Hooks.si_refHeap
