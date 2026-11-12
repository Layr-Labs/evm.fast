import InitECandidate.Solver.MemSafe.Eb.Hyp

/-!
# `execute_block`: Hoare-level call rules over `CallR`

`call_step`: the core of every call from a walk state: the callee's `Stp` step extends the run, keeps the facts whose cells
the callee leaves alone (`hD`) and whose globals it does not write (`hgl`, `hgo`). `hn_callR` (`f(args);`),
`hdecCallR` (`var x = f(args); k`).
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

theorem ebRun_stp {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ Γ' : Gam} {u t : State σ} {p p' : Ptrs}
    {D : BitVec 64 → Prop} (h : EbRun Γ0 s0 p0 Γ u p) (hs : Stp Γ p u Γ' p' t D) :
    EbRun Γ0 s0 p0 Γ' t p' :=
  ⟨ebRun_ptrs0 h, hs.1.hp', mono_g_trans (ebRun_mono h) hs.1.mono, ext_trans (ebRun_ext h) hs.1.ext,
    newFresh_trans_g (ebRun_ord h) (ordered_of_G hs.1.hG' hs.1.hp') (ebRun_mono h) (stepD_layout hs.1)
      (ebRun_nf h) hs.1.nf, hs.1.hG', hs.2.1, hs.2.2.1.1, hs.2.2.1.2, ebRun_ord0 h⟩

/-- The relation a `CallR` gives at a callee entry. -/
abbrev CRel (Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop)
    (D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop) :
    List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop :=
  fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (p : Ptrs),
    G guestC (HR σ) Γ s → ptrsOf s = some p → JrNZ s → EvCc s → Pre vs s Γ p →
    ∃ (Γ' : Gam) (p' : Ptrs), Stp Γ p s Γ' p' t (D vs s Γ) ∧ Q vs s Γ p v t Γ' p'

theorem gword_of_lookup {s t : State σ} {g : MlS} (h : t.globals.lookup g = s.globals.lookup g) :
    gword t g = gword s g := by
  unfold gword; rw [h]

/-- Facts survive a typed-heap step whose memory frames are as a call's. -/
theorem holds_of_frames {p0 : Ptrs} {S : FS} {Γ Γ'' : Gam} {p p' : Ptrs} {u t : State σ}
    {D : BitVec 64 → Prop} (hstep : StepD Γ p u Γ'' p' t) (h0 : p0.Ordered)
    (hcell : ∀ a, BCell guestC Γ a → ¬ D a → rd t.memory a = rd u.memory a) (hpl : PlKeep Γ u t)
    (hD : ∀ f, S f → ∀ a, f.reads a → ¬ D a)
    (hL : HoldsAll p0 Γ p u S) (hgo : ∀ g w ty, S (Fct.gobj g w ty) → gword t g = gword u g)
    (hgv : ∀ g w, S (Fct.gval g w) → gword t g = gword u g) : HoldsAll p0 Γ'' p' t S := by
  refine holds_step (S := S) hstep h0 ?_ hgo hgv hL
  intro f hf a ha
  have hh := hL f hf
  revert ha hh
  cases f with
  | cellv a' v' =>
    intro ha hh
    obtain rfl : a = a' := ha
    exact mem_eq_of_rd (hcell a hh.2 (hD _ hf a (show a = a from rfl)))
  | pcv a' v' =>
    intro ha hh
    obtain rfl : a = a' := ha
    exact mem_eq_of_rd ((plKeep_iff.mp hpl) a hh.2)
  | sla A n =>
    intro ha hh
    obtain ⟨j, hj, hc⟩ := ha
    obtain ⟨b1, b2, -⟩ := hh j hj
    rcases hc with rfl | rfl
    · exact mem_eq_of_rd (hcell _ b1 (hD _ hf _ ⟨j, hj, Or.inl rfl⟩))
    · exact mem_eq_of_rd (hcell _ b2 (hD _ hf _ ⟨j, hj, Or.inr rfl⟩))
  | ent A j =>
    intro ha hh
    obtain ⟨b1, b2, -⟩ := hh
    rcases ha with rfl | rfl
    · exact mem_eq_of_rd (hcell _ b1 (hD _ hf _ (Or.inl rfl)))
    · exact mem_eq_of_rd (hcell _ b2 (hD _ hf _ (Or.inr rfl)))
  | _ => intro ha; exact ha.elim

/-- The core of a call. -/
theorem call_step {E : EbE σ} {S : FS} {W : MlS → Prop}
    {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
    {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
    {s st : State σ} {callee : Locs} {vs : List (ValueHOL 64)} {v : ValueHOL 64} {Γ : Gam} {p : Ptrs}
    (hR : CRel Pre D Q vs (callEntryStateHOLFinite s callee) (.returned v) st)
    (hgl : ∀ g, ¬ W g → st.globals.lookup g = s.globals.lookup g)
    (hr : EbRun E.Γ0 E.s0 E.p0 Γ s p) (hL : HoldsAll E.p0 Γ p s S)
    (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ p)
    (hD : ∀ f, S f → ∀ a, f.reads a → ¬ D vs (callEntryStateHOLFinite s callee) Γ a)
    (hgo : ∀ g w ty, S (Fct.gobj g w ty) → ¬ W g) (hgv : ∀ g w, S (Fct.gval g w) → ¬ W g) :
    ∃ Γ' p', Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) ∧
      EbRun E.Γ0 E.s0 E.p0 Γ' { st with locals := s.locals } p' ∧
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } S ∧
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' := by
  have hre : EbRun E.Γ0 E.s0 E.p0 Γ (callEntryStateHOLFinite s callee) p := ebRun_loc hr callee (s.clock - 1)
  have hLe : HoldsAll E.p0 Γ p (callEntryStateHOLFinite s callee) S := holdsAll_loc hL callee (s.clock - 1)
  obtain ⟨Γ', p', hstp, hq⟩ := hR v rfl Γ p (ebRun_G hre) (ebRun_ptrs hre) (ebRun_jr hre)
    ⟨ebRun_ev hre, ebRun_cc hre⟩ hpre
  refine ⟨Γ', p', hstp, ebRun_loc (ebRun_stp hre hstp) s.locals st.clock, ?_, hq⟩
  have hgw : ∀ g, ¬ W g → gword st g = gword (callEntryStateHOLFinite s callee) g := fun g hg =>
    gword_of_lookup (hgl g hg)
  exact holdsAll_loc (holds_of_frames hstp.1 (ebRun_ord0 hre) hstp.2.2.2.1 hstp.2.2.2.2 hD hLe
    (fun g w ty hm => hgw g (hgo g w ty hm)) (fun g w hm => hgw g (hgv g w hm))) s.locals st.clock

end InitECandidate.Solver.MemSafe.Eb
