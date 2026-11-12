import InitECandidate.Solver.MemSafe.Dn.StepRec
import InitECandidate.Solver.MemSafe.Dn.CtnVal
import InitECandidate.Solver.MemSafe.Dn.KitA
import InitECandidate.Solver.MemSafe.Rec.AdoptNib

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `_decode_step`: adopting `compact_to_nibbles`' buffer (stage 2b)

`ctn_adopt`: after `cn = compact_to_nibbles(pi.1, pi.2)` the buffer `[cn.0, cn.0 + cn.1)` is adopted as `tNIB`
word objects (`Rec.adopt_nib`), giving `Hooks.NIn Γ'' cn.0 cn.1`. The fresh block comes from `CtnRet`.
-/

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

theorem scrOld_adopt_nib {Γ0 Γ Γ' : Gam} (hs : ScrOld Γ0 Γ)
    (hnew : ∀ o ∈ Γ', o ∈ Γ ∨ ∃ r, r < 8 ∧ o.ty = Types.tNIB r ∧ True) : ScrOld Γ0 Γ' := by
  intro o ho hr
  rcases hnew o ho with h | ⟨r, hr8, ht, -⟩
  · exact hs o h hr
  · rw [ht, Types.ty_NIB r hr8] at hr
    exact absurd hr (by decide)

/-- **The adoption after the call.** -/
theorem ctn_adopt {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hg : sg'.grows = false)
    {out len N : BitVec 64} (h8 : out.toNat % 8 = 0) (hbase : heapBase ≤ out.toNat)
    (hhp : out.toNat + 2 * N.toNat ≤ q'.hp)
    (hfr : ∀ x : Nat, out.toNat ≤ x → x < out.toNat + 2 * N.toNat → ¬ q.Allocated x)
    (hlen : len.toNat ≤ 2 * N.toNat)
    (hbyte : ∀ j, j < len.toNat → Hooks.byteAt st.memory st.be (out + BitVec.ofNat 64 j) < 16) :
    ∃ Γ'' : Gam, Ext Γ' Γ'' ∧ Heap a Γ'' q' st ∧ ScrOld Γ' Γ'' ∧ Hooks.NIn Γ'' out len ∧
      (∀ o ∈ Γ'', o ∈ Γ' ∨ ∃ r, r < 8 ∧ o.ty = Types.tNIB r ∧ out.toNat ≤ o.lo ∧
        o.hi ≤ out.toNat + 8 * nw len.toNat) ∧ (0 < len.toNat → q.hp ≤ out.toNat) := by
  have hord := heap_ord co.heap0
  have hord' := heap_ord co.heap
  have hE := Hooks.heapEnd_lt
  obtain ⟨p1, hp1, -, hL, -⟩ := co.heap0.1
  rw [co.heap0.2.1] at hp1
  cases hp1
  have hnw : 8 * nw len.toNat ≤ len.toNat + 7 := by unfold nw; omega
  have hnw' : len.toNat ≤ 8 * nw len.toNat := by unfold nw; omega
  have hhpe : q'.hp ≤ heapEnd := hord'.2.1
  have hhp8 : q'.hp % 8 = 0 := hord'.2.2.2.2.2.1
  have hs2 : out.toNat + 8 * nw len.toNat ≤ heapEnd := by unfold nw; omega
  have hblk : ∀ x : BitVec 64, Overlap out.toNat (8 * nw len.toNat) x →
      out.toNat ≤ x.toNat ∧ x.toNat < out.toNat + 2 * N.toNat := by
    intro x ⟨hx8, hx1, hx2⟩
    unfold nw at hx2
    omega
  have hF : MptH.BlkF out (8 * nw len.toNat) Γ' q' := by
    intro x hx
    obtain ⟨h1, h2⟩ := hblk x hx
    refine ⟨fun hin => hfr x.toNat h1 h2 ?_, ?_⟩
    · rw [haC] at hL
      exact HtabEntries.alloc_of_inObj hord (C := Types.guestC) hL (co.nfp hg) hin
    · unfold Ptrs.Allocated; left; omega
  have hnA : ∀ x : BitVec 64, Overlap out.toNat (8 * nw len.toNat) x → ¬ a.p0.Allocated x.toNat := by
    intro x hx hal
    obtain ⟨h1, h2⟩ := hblk x hx
    exact hfr x.toNat h1 h2 (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 hal)
  obtain ⟨Γ'', hx1, hx2, hh2, hnew, hN⟩ := adopt_nib ha haC haH hgr co.heap hbase hs2 h8 hF hnA hbyte
  refine ⟨Γ'', hx1, hh2, scrOld_adopt_nib (scrOld_refl Γ') (fun o ho => ?_), hN, hnew, fun hpos => ?_⟩
  · rcases hnew o ho with h | ⟨r, hr, ht, -, -⟩
    · exact Or.inl h
    · exact Or.inr ⟨r, hr, ht, trivial⟩
  · by_contra hlt
    exact hfr out.toNat le_rfl (by omega) (by unfold Ptrs.Allocated; left; omega)

/-- The entry slice and slice array survive the adoption of a fresh block. -/
theorem ea_adopt {P N Ar : BitVec 64} {cnt : Nat} {Γ Γ' Γ'' : Gam} {q q' : Ptrs} {M : Mem}
    {out : BitVec 64} {len : Nat} (hE : EA P N Ar cnt Γ' q' M) (hpre : RngFree Ar (16 * cnt) Γ q)
    (hext : Ext Γ' Γ'')
    (hnew : ∀ o ∈ Γ'', o ∈ Γ' ∨ ∃ r, r < 8 ∧ o.ty = Types.tNIB r ∧ out.toNat ≤ o.lo ∧
      o.hi ≤ out.toNat + 8 * nw len)
    (hge : 0 < len → q.hp ≤ out.toNat) (hq : q.Ordered) : EA P N Ar cnt Γ'' q' M := by
  refine ⟨e0_mono hE.1 hext (mono_refl q'), ⟨fun x h1 h2 => ?_, hE.2.2.1, hE.2.2.2⟩⟩
  obtain ⟨hni, hal⟩ := hE.2.1 x h1 h2
  refine ⟨?_, hal⟩
  rintro ⟨o, ho, hlo, hhi⟩
  rcases hnew o ho with h | ⟨r, hr, ht, h1', h2'⟩
  · exact hni ⟨o, h, hlo, hhi⟩
  · unfold Obj.lo at hlo h1'
    unfold Obj.hi at hhi h2'
    unfold nw at h2'
    have hlenpos : 0 < len := by omega
    have hge' := hge hlenpos
    have hxal := (hpre x h1 h2).2
    have hE' := hE.2.2.1
    unfold Ptrs.Allocated at hxal
    obtain ⟨o1, o2, o3, o4, o5, -⟩ := hq
    omega

end InitECandidate.Solver.MemSafe.Dn
#print axioms InitECandidate.Solver.MemSafe.Dn.ctn_adopt
