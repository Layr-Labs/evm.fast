import InitECandidate.Solver.Band3.Core
import InitECandidate.Solver.MemSafe.Bal.GetPreStor
import InitECandidate.Solver.MemSafe.Bal.IdxStor

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-- **`var rn = f(args); k`** with a summary for `f` (a BAL-closed function: the six BAL globals keep their
values) and a cost entry. -/
theorem costP_decCall_SG {Aux Aux' : State σ → Gam → Ptrs → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hs : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW Q)
    (hbal : (balFns.map Prod.fst).contains f = true)
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpreC : ∀ s, InCtx s guestCtx → PGt guestC (guestHooksR (σ := σ)) Aux s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ s, InCtx s guestCtx → ∀ Γ p, G guestC (guestHooksR (σ := σ)) Γ s → ptrsOf s = some p →
      Aux s Γ p → ∀ vs, evs s args = some vs → ∀ callee,
        ArgsOK guestC Γ p sg.params vs ∧ Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hAux : ∀ (s : State σ) (st : State σ) (callee : Lcs) Γ p Γ' p' (vs : List (ValueHOL 64))
      (v : ValueHOL 64), shapeEqHOL (shapeOfHOLExact v) sh = true →
      G guestC (guestHooksR (σ := σ)) Γ s → Aux s Γ p → evs s args = some vs →
      ArgsOK guestC Γ p sg.params vs →
      SumCore guestC (guestHooksR (σ := σ)) sg
        (fun a => ProtCell guestC Γ a ∧ PW vs (callEntryStateHOLFinite s callee) Γ a) Γ
        (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p' →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      (∀ g ∈ bal4, st.globals.lookup g = s.globals.lookup g) →
      Aux' (setVarHOLFinite rn v { st with locals := s.locals }) Γ' p')
    (hk : Inv.CostP σ guestCtx (PGt guestC (guestHooksR (σ := σ)) Aux') k Bk) :
    Inv.CostP σ guestCtx (PGt guestC (guestHooksR (σ := σ)) Aux) (.decCall rn sh f args k)
      (1 + Bf + Bk) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine Band.costP_decCall hf hpreC (FunSpec.and (sumRel_fun hs) (funSpec_bal_gw4 hF.hX hbal)) ?_
  intro s hs0 hP vs hvs callee v st ⟨hR, hgw⟩ hst hsh
  obtain ⟨Γ, p, hG, hp, hA⟩ := hP
  have hGe : G guestC (guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (Frames.G_locFree hH s _ _).mpr hG
  obtain ⟨hargsOK, hpre⟩ := hargs s hs0 Γ p hG hp hA vs hvs callee
  obtain ⟨Γ', p0, p', hcore, hq⟩ := hR (by simp [Good]) (not_abortive_ret' v) Γ hGe
    ⟨p, (Frames.ptrsOf_congr rfl).trans hp, hargsOK⟩ hpre
  have e0 : p0 = p :=
    Option.some.inj (hcore.1.symm.trans ((Frames.ptrsOf_congr rfl).trans hp))
  rw [e0] at hcore
  have hG' : G guestC (guestHooksR (σ := σ)) Γ' st := hcore.2.2.2.2.2.1
  refine hk.pre (fun t _ ht => ?_)
  subst ht
  refine ⟨Γ', p', (Frames.G_locFree hH st _ _).mpr hG',
    (Frames.ptrsOf_congr rfl).trans hcore.2.1, ?_⟩
  exact hAux s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq hgw

/-- **`f(args); k`** with a summary for a BAL-closed `f` (result discarded). -/
theorem costP_seq_callD_SG {Aux Aux' : State σ → Gam → Ptrs → Prop}
    {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hs : SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) f sg Pre PW Q)
    (hbal : (balFns.map Prod.fst).contains f = true)
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpreC : ∀ s, InCtx s guestCtx → PGt guestC (guestHooksR (σ := σ)) Aux s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (hargs : ∀ s, InCtx s guestCtx → ∀ Γ p, G guestC (guestHooksR (σ := σ)) Γ s → ptrsOf s = some p →
      Aux s Γ p → ∀ vs, evs s args = some vs → ∀ callee,
        ArgsOK guestC Γ p sg.params vs ∧ Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hAux : ∀ (s : State σ) (st : State σ) (callee : Lcs) Γ p Γ' p' (vs : List (ValueHOL 64))
      (v : ValueHOL 64),
      G guestC (guestHooksR (σ := σ)) Γ s → Aux s Γ p → evs s args = some vs →
      ArgsOK guestC Γ p sg.params vs →
      SumCore guestC (guestHooksR (σ := σ)) sg
        (fun a => ProtCell guestC Γ a ∧ PW vs (callEntryStateHOLFinite s callee) Γ a) Γ
        (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p' →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      (∀ g ∈ bal4, st.globals.lookup g = s.globals.lookup g) →
      Aux' { st with locals := s.locals } Γ' p')
    (hk : Inv.CostP σ guestCtx (PGt guestC (guestHooksR (σ := σ)) Aux') k Bk) :
    Inv.CostP σ guestCtx (PGt guestC (guestHooksR (σ := σ)) Aux) (.seq (.call (some (none, none)) f args) k)
      (1 + Bf + 0 + Bk) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine Inv.costP_seq (R := PGt guestC (guestHooksR (σ := σ)) Aux') (Inv.costP_callD hf hpreC) ?_ hk
  refine hoare_callD (FunSpec.and (sumRel_fun hs) (funSpec_bal_gw4 hF.hX hbal)) ?_
  intro s hs0 hP vs hvs callee v st ⟨hR, hgw⟩ hst hr
  obtain ⟨Γ, p, hG, hp, hA⟩ := hP
  have hGe : G guestC (guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (Frames.G_locFree hH s _ _).mpr hG
  obtain ⟨hargsOK, hpre⟩ := hargs s hs0 Γ p hG hp hA vs hvs callee
  obtain ⟨Γ', p0, p', hcore, hq⟩ := hR (by simp [Good]) (not_abortive_ret' v) Γ hGe
    ⟨p, (Frames.ptrsOf_congr rfl).trans hp, hargsOK⟩ hpre
  have e0 : p0 = p :=
    Option.some.inj (hcore.1.symm.trans ((Frames.ptrsOf_congr rfl).trans hp))
  rw [e0] at hcore
  have hG' : G guestC (guestHooksR (σ := σ)) Γ' st := hcore.2.2.2.2.2.1
  exact ⟨Γ', p', (Frames.G_locFree hH st _ _).mpr hG',
    (Frames.ptrsOf_congr rfl).trans hcore.2.1, hAux s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq hgw⟩

/-- `BsNN` follows a step that keeps the BAL globals and extends the typing. -/
theorem bsNN_step {s t : State σ} {Γ Γ' : Gam} (h : BsNN s Γ) (hx : Ext Γ Γ')
    (hg : ∀ g ∈ bal4, t.globals.lookup g = s.globals.lookup g) : BsNN t Γ' := by
  obtain ⟨B0, hB0, hB0t, hB0g⟩ := h
  obtain ⟨B, hB, hBb, hBt, -⟩ := hx B0 hB0
  refine ⟨B, hB, hBt.trans hB0t, ?_⟩
  have e := hg (nm "bs") (by simp [bal4])
  unfold gword at hB0g ⊢
  rw [e, hB0g, hBb]

end InitECandidate.Solver.Band6
