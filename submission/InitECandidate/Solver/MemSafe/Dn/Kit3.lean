import InitECandidate.Solver.MemSafe.Dn.Fr

set_option autoImplicit false

/-!
# Statement rules with a joint invariant at the normal end

`GPJ a Inv Rv`: like `GP`, but a normal end satisfies an arbitrary state predicate `Inv` (the
decoder loop's invariant, which ties locals to the typing). Branch ends convert from `GP` with
concrete locals (`gpj_of_gp`); declarations need `Inv` to survive restoring their local.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def GPJ (a : Act σ) (Inv : State σ → Prop) (Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → Inv t) ∧ ∀ r', r = some r' → GX a Rv r' t

section rules
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {Inv : State σ → Prop}

theorem gpj_of_gp {P : State σ → Prop} {c : ProgHOL 64} (h : HoareG σ X P c (GP a L E Rv))
    (hI : ∀ t, GI a L E t → Inv t) : HoareG σ X P c (GPJ a Inv Rv) :=
  hoareG_conseq h (fun _ _ h => h) (fun r t _ _ h => ⟨fun hr => hI t (h.1 hr), h.2⟩)

theorem gp_seqJ {P : State σ → Prop} {c k : ProgHOL 64}
    (hc : HoareG σ X P c (GP a L E Rv)) (hk : HoareG σ X (GI a L E) k (GPJ a Inv Rv)) :
    HoareG σ X P (.seq c k) (GPJ a Inv Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩)
    (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem gp_decJ (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 : LocalsH → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L1 (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (GI a L1 E) body (GPJ a Inv Rv))
    (hres : ∀ (t : State σ) (o : Option (ValueHOL 64)), Inv t →
      Inv { t with locals := t.locals.resVarEq (x, o) }) :
    HoareG σ X (GI a L E) (.dec x sh e body) (GPJ a Inv Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE⟩
  · exact ⟨fun hr => hres t _ (hq.1 hr), fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩

theorem gp_decCallJ (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {k : ProgHOL 64}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      ScrOld a.Γ0 Γ → E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → shapeEqHOL (shapeOfHOLExact v) sh = true →
        E1 v Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, HoareG σ X (GI a (L1 v) (E1 v)) k (GPJ a Inv Rv))
    (hres : ∀ (t : State σ) (o : Option (ValueHOL 64)), Inv t →
      Inv { t with locals := t.locals.resVarEq (rn, o) }) :
    HoareG σ X (GI a L E) (.decCall rn sh f args k) (GPJ a Inv Rv) := by
  refine hoareG_decCall (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hsc hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL1 s st v hL hsh, Γ', q', ext_trans he hext,
        heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hE1 v rfl hsh⟩
    · exact ⟨fun hr => hres t _ (hq.1 hr), fun r' hr' => gx_locals ha.hH _ (hq.2 r' hr')⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (abn_good' habn) hna hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hsc hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end rules

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.gp_decCallJ
