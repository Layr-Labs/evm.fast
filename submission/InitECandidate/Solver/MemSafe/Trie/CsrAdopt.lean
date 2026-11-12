import InitECandidate.Solver.MemSafe.Trie.CsrW

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# Adopting a value buffer with a known location (`adopt_val2`)
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-- **Adopting a scalar buffer as a `tVAL` object**, with the location of the new object. -/
theorem adopt_val2 {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {Γ : Gam} {q : Ptrs}
    {u : State σ} (hh : Heap a Γ q u) {Ar : BitVec 64} {L : Nat} (hL0 : 0 < L) (hs1 : heapBase ≤ Ar.toNat)
    (hs2 : Ar.toNat + 8 * nw L ≤ heapEnd) (h8 : Ar.toNat % 8 = 0)
    (hF : BlkF Ar (8 * nw L) Γ q)
    (hnA : ∀ x : BitVec 64, Overlap Ar.toNat (8 * nw L) x → ¬ a.p0.Allocated x.toNat) :
    ∃ Γ' : Gam, Ext Γ Γ' ∧ Heap a Γ' q u ∧
      (∀ o ∈ Γ', o ∈ Γ ∨ (o.ty = Types.tVAL ∧ o.lo = Ar.toNat ∧ o.hi = Ar.toNat + 8 * nw L)) ∧
      ∃ x ∈ Γ', x.ty = Types.tVAL ∧ x.lo = Ar.toNat ∧ x.hi = Ar.toNat + 8 * nw L := by
  have hnw : 1 ≤ nw L := by unfold nw; omega
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  obtain ⟨hf1, hf2, hf3, hf4⟩ := val_facts
  obtain ⟨hx, hh1⟩ := heap_adoptS ha hMono hh.2.2.2.1 hh (Ar := Ar) (n := 8 * nw L)
    (ty := Types.tVAL) (by rw [hC]; exact hf1) (by rw [hC]; exact hf2) (by rw [hC]; exact hf3)
    (by omega) (by omega) (by rw [hC]; omega) ⟨hs1, hs2⟩ h8 hF hnA hgr
    (fun hL' => by rw [hH]; exact wf_valObj rfl)
  have hmem : (⟨Ar, Types.tVAL, 8 * nw L⟩ : Obj) ∈ Γ ++ [(⟨Ar, Types.tVAL, 8 * nw L⟩ : Obj)] :=
    List.mem_append_right _ (List.mem_singleton_self _)
  refine ⟨_, Struct.ext_snoc Γ _, hh1, fun o ho => ?_, ⟨_, hmem, rfl, ?_, ?_⟩⟩
  · rcases List.mem_append.mp ho with ho | ho
    · exact Or.inl ho
    · simp only [List.mem_singleton] at ho
      subst ho
      exact Or.inr ⟨rfl, by unfold Obj.lo; simp, by unfold Obj.hi; simp⟩
  · unfold Obj.lo; simp
  · unfold Obj.hi; simp

/-- Objects adopted at or above `ENC` leave a lower block untouched. -/
theorem not_inObj_adopt {Γ Γ'' : Gam} {ENC hi : Nat} {x : Nat}
    (hnew : ∀ o ∈ Γ'', o ∈ Γ ∨ (o.lo = ENC ∧ o.hi = hi)) (hx : x < ENC) (h : ¬ InObj Γ x) :
    ¬ InObj Γ'' x := by
  rintro ⟨o, ho, h1, h2⟩
  rcases hnew o ho with h3 | ⟨h3, h4⟩
  · exact h ⟨o, h3, h1, h2⟩
  · omega

theorem ia_adopt {a : Act σ} {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → Hooks.GamOK Γ' → K Γ → K Γ') {C NR SW AW ND M VB : BitVec 64} {Γ Γ'' : Gam} {q : Ptrs} {mm : Mem}
    {ENC hi : Nat} (hext : Ext Γ Γ'')
    (hnew : ∀ o ∈ Γ'', o ∈ Γ ∨ (o.lo = ENC ∧ o.hi = hi)) (hVB : VB.toNat + 96 ≤ ENC) (hgo : Hooks.GamOK Γ'')
    (h : IA a K C NR SW AW ND M VB Γ q mm) : IA a K C NR SW AW ND M VB Γ'' q mm := by
  obtain ⟨hTB, hND, hHR, hFB, hMV, hKΓ⟩ := h
  refine ⟨tb_ext hext hTB, ?_, ?_, ?_, hMV, hK _ _ hext hgo hKΓ⟩
  · obtain ⟨ow, how, hty, hnd⟩ := hND
    obtain ⟨ow', how', hb, ht, -⟩ := hext ow how
    exact ⟨ow', how', by rw [ht]; exact hty, by rw [hb]; exact hnd⟩
  · obtain ⟨⟨h8, hb, hq, hn0, hn8, hroot⟩, hU⟩ := hHR
    exact ⟨⟨h8, hb, hq, not_inObj_adopt hnew (by omega) hn0, not_inObj_adopt hnew (by omega) hn8,
      fits_ext hext hroot⟩, hU⟩
  · obtain ⟨h8, hs8, hb, hq, hc⟩ := hFB
    exact ⟨h8, hs8, hb, hq, fun x h1 h2 => ⟨not_inObj_adopt hnew (by omega) (hc x h1 h2).1, (hc x h1 h2).2⟩⟩

/-- A `tVAL` object covering `[H, H + 40)`. -/
def VO (H : BitVec 64) (Γ : Gam) : Prop := ∃ x ∈ Γ, x.ty = Types.tVAL ∧ x.lo = H.toNat ∧ H.toNat + 40 ≤ x.hi

theorem vo_ext {H : BitVec 64} {Γ Γ' : Gam} (he : Ext Γ Γ') (h : VO H Γ) : VO H Γ' := by
  obtain ⟨x, hx, hty, hlo, hhi⟩ := h
  obtain ⟨x', hx', hb, ht, hs⟩ := he x hx
  have hlo' : x'.lo = x.lo := by unfold Obj.lo; rw [hb]
  refine ⟨x', hx', by rw [ht]; exact hty, by rw [hlo', hlo], ?_⟩
  have h1 : x.hi = x.lo + x.size := rfl
  have h2 : x'.hi = x'.lo + x'.size := rfl
  omega

theorem scrOld_adopt_val {Γ' Γ'' : Gam} {Ar hi : Nat}
    (hnew : ∀ o ∈ Γ'', o ∈ Γ' ∨ (o.ty = Types.tVAL ∧ o.lo = Ar ∧ o.hi = hi)) : ScrOld Γ' Γ'' := by
  intro o ho hr
  rcases hnew o ho with h | ⟨ht, -, -⟩
  · exact ⟨o, h, rfl, rfl⟩
  · rw [ht, Types.ty_VAL] at hr
    exact absurd hr (by decide)

end InitECandidate.Solver.MemSafe.Trie
