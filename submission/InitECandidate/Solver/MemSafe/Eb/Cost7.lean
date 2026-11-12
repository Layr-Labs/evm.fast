import InitECandidate.Solver.MemSafe.Eb.Cost6
import InitECandidate.Solver.MemSafe.Eb.Tail8
import InitECandidate.Solver.MemSafe.Eb.Tail6

/-!
# `execute_block`: the cost walk, part 7 (table calls and `tail_end`)
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

section cw7
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

/-- `var rn = f(args); k` with a word result and no new facts, for an all-states callee. -/
theorem cw_decCallRW {f : MlS} {args : List (ExpHOL 64)} {rn : MlS} {k : ProgHOL 64} {Bf Bk : Nat}
    {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
    {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
    {W : MlS → Prop} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CallR (σ := σ) f Pre D Q) (hg : GwK (σ := σ) f W) (NFw : BitVec 64 → FS)
    (hcost : CalleeCost σ guestCtx f Bf) (h : CallObl E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' →
      ∀ w, v = .val (.word w) → HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NFw w))
    (hk : ∀ w : BitVec 64, CW (PA E (En.set rn (.val (.word w))) (fun f => S f ∨ NFw w f)) k Bk QT) :
    CW (PA E En S) (.decCall rn .one f args k) (1 + Bf + Bk) QT := by
  refine cw_decCallR (PreC := fun _ _ => True) (NF := fun v f => f = Fct.prop (∃ w, v = .val (.word w)) ∨ ∃ w, v = .val (.word w) ∧ NFw w f)
    hQT hf hg (Inv.calleeCostP_of_calleeCost hcost) (fun _ _ _ _ _ _ => trivial) h ?_ ?_
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    have hh := hnew s vs callee _ st Γ Γ' p p' hr hL hstp hq w rfl
    intro f hf
    rcases hf with rfl | ⟨w', hw', hf'⟩
    · exact ⟨w, rfl⟩
    · cases hw'
      exact hh f hf'
  · intro v hsh
    by_cases hv : ∃ w, v = .val (.word w)
    · obtain ⟨w, rfl⟩ := hv
      refine cw_pre (hk w) ?_
      intro s _ hpa
      refine pa_mono hpa (fun _ _ h => h) (fun f hf => ?_)
      rcases hf with hf | hf
      · exact Or.inl hf
      · exact Or.inr (Or.inr ⟨w, rfl, hf⟩)
    · refine ⟨fun s hs hp _ => ?_, fun s hs hp _ => ?_⟩
      all_goals
        obtain ⟨⟨Γ, p, hr, hL⟩, -⟩ := hp
        exact absurd (hL (Fct.prop (∃ w, v = .val (.word w))) (Or.inr (Or.inl rfl))) hv

/-- A table `var rn = f(args); k` with `any` parameters. -/
theorem cw_tab1 {f : MlS} {sg : Sig} {args : List (ExpHOL 64)} {rn : MlS} {k : ProgHOL 64} {Bf Bk : Nat}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hg : sg.gw = []) (hnm : tabNames.contains f = true) (hps : ∀ pt ∈ sg.params, pt = PT.any)
    (hlen : sg.params.length = args.length) (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hcost : CalleeCost σ guestCtx f Bf)
    (hk : ∀ w : BitVec 64, CW (PA E (En.set rn (.val (.word w))) S) k Bk QT) :
    CW (PA E En S) (.decCall rn .one f args k) (1 + Bf + Bk) QT := by
  refine cw_decCallRW (W := fun g' => tabW.contains g' = true) hQT (cr_plain hf hg) (gwk_tab hnm) (fun _ _ => False) hcost ?_ ?_
    (fun w => cw_pre (hk w) ?_)
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    exact argsOK_any_eval hps hlen hvs
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq w hw f hf
    exact hf.elim
  · intro t _ ht
    exact pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf)

end cw7

end InitECandidate.Solver.MemSafe.Eb
