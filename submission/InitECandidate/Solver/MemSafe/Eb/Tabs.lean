import InitECandidate.Solver.MemSafe.Eb.CallK

/-!
# `execute_block`: table summaries as `CallR`

`CsOK cs`: the capabilities of `cs` write only state-object cells and name `journal` / `sk_buf`. `callR_of_csumm`: a
`CSumm` with `CsOK` is a `CallR` whose `Pre` is just the argument typing, with `D = False`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem guestSt_plTys : ∀ t ∈ PlTys, guestSt t = false := by decide

theorem not_plCell_of_stCell {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {a : BitVec 64} (h : StCell guestSt Γ a) : ¬ PlCell Γ a := by
  rintro ⟨o, ho, hty, k, hk, -, rfl⟩
  obtain ⟨o', ho', hs, k', hk', he⟩ := h
  obtain ⟨rfl, -⟩ := cell_inj hord hL ho' ho hk' hk he.symm
  rw [guestSt_plTys _ hty] at hs; cases hs

structure CsOK (cs : List Cap) : Prop where
  ks : ∀ c ∈ cs, ∀ k ∈ c.ks, 8 * k + 8 ≤ (guestC.ty c.t).minSz
  ty : ∀ c ∈ cs, c.t ∉ blockTys ∧ c.t ∉ PlTys
  gl : ∀ c ∈ cs, c.g ≠ anyG → (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64)

theorem ownBase_big : ∀ t ∈ blockTys ++ PlTys, t < ownBase := by
  unfold ownBase blockTys PlTys; decide

theorem capPW_notBP {cs : List Cap} (hcs : CsOK cs) {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout guestC p Γ) {s : State σ} {a : BitVec 64} (hw : CapPW cs s Γ a) :
    ¬ BCell guestC Γ a ∧ ¬ PlCell Γ a := by
  obtain ⟨c, hc, ⟨e, ⟨he, het, -⟩, k, hk, rfl⟩ | ⟨-, e, he, hty, k, hks, rfl⟩⟩ := hw
  · have hmin := (hL.1 e he).2.2.2.1
    have hks : e.HasSlot k := by
      have := hcs.ks c hc k hk
      rw [het] at hmin
      unfold Obj.HasSlot; omega
    have hne : e.ty ∉ blockTys ++ PlTys := by
      rw [het]
      intro hin
      rcases List.mem_append.mp hin with h | h
      · exact (hcs.ty c hc).1 h
      · exact (hcs.ty c hc).2 h
    refine ⟨?_, ?_⟩
    · rintro ⟨o, ho, hty', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL he ho hks hk' he'
      exact hne (List.mem_append.mpr (Or.inl hty'))
    · rintro ⟨o, ho, hty', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL he ho hks hk' he'
      exact hne (List.mem_append.mpr (Or.inr hty'))
  · have hne : e.ty ∉ blockTys ++ PlTys := by
      intro hin
      rcases hty with h | h
      · rw [h] at hin
        simp only [List.mem_append] at hin
        exact hin.elim (hcs.ty c hc).1 (hcs.ty c hc).2
      · exact absurd (ownBase_big _ hin) (by omega)
    refine ⟨?_, ?_⟩
    · rintro ⟨o, ho, hty', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL he ho hks hk' he'
      exact hne (List.mem_append.mpr (Or.inl hty'))
    · rintro ⟨o, ho, hty', k', hk', -, he'⟩
      obtain ⟨rfl, -⟩ := cell_inj hord hL he ho hks hk' he'
      exact hne (List.mem_append.mpr (Or.inr hty'))

theorem callR_mono_post {f : MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
    {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q Q' : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
    (h : CallR f Pre D Q)
    (hq : ∀ vs s Γ p v t Γ' p', Q vs s Γ p v t Γ' p' → Q' vs s Γ p v t Γ' p') : CallR f Pre D Q' := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
  obtain ⟨Γ', p', h1, h2⟩ := h vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
  exact ⟨Γ', p', h1, hq _ _ _ _ _ _ _ _ h2⟩

theorem callR_pre {f : MlS}
    {Pre Pre' : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
    {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
    (h : CallR f Pre D Q)
    (hP : ∀ vs s Γ p, G guestC (HR σ) Γ s → JrNZ s → Pre' vs s Γ p → Pre vs s Γ p) : CallR f Pre' D Q := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
  exact h vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE (hP vs s Γ p hG hJ hpre)

theorem callR_of_csumm {f : MlS} {sg : Sig} {cs : List Cap}
    (hf : CSumm σ guestCtx guestC (HR σ) f sg cs)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw) (hcs : CsOK cs) :
    CallR (σ := σ) f (fun vs _ Γ p => ArgsOK guestC Γ p sg.params vs) (fun _ _ _ _ => False)
      (fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs sg.ret v ∧ (sg.grows = false → NewFresh Γ Γ' p p)) := by
  have h := callR_of_sumSpecA (Pre := fun _ s Γ => ReqOK cs s Γ) (PW := fun _ s Γ a => CapPW cs s Γ a)
    (Q := fun _ _ _ _ _ _ => True) hf hgw hJo ?_
  · refine callR_pre (callR_mono_post h (fun _ _ _ _ _ _ _ _ hq => ⟨hq.1, hq.2.1⟩)) ?_
    intro vs s Γ p hG hJ hpre
    exact ⟨hpre, reqOK_jrs hcs.gl hG hJ⟩
  · intro vs s Γ a hG hw
    obtain ⟨q, hq, hord, hL, -⟩ := hG
    exact capPW_notBP hcs hord hL hw

end InitECandidate.Solver.MemSafe.Eb
