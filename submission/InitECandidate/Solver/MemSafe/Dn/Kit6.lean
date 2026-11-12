import InitECandidate.Solver.MemSafe.Dn.Dwtm

set_option autoImplicit false

/-!
# Capability summaries by hand

* `csumm_of_gp`: a capability summary (`CSumm … cs`) from a `GP`-style body proof;
* `heap_callGC`, `gp_callC`: `f(args);` for a callee with capabilities `cs ⊆ a.caps` and its
  argument cells in the caller's footprint (e.g. `htab_set` on a `buf` key argument);
* `gp_decV`: `var x = e; k` with the bound value visible to both parts of `k`'s precondition.
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

/-- **A capability summary from a body proof.** -/
theorem csumm_of_gp {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {cs : List Cap} (hcs : capsOK C sg cs = true)
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        ActOK (actOf C H sg cs vs s0 Γ0 p0) X → Heap (actOf C H sg cs vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg cs vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v)) :
    CSumm σ X C H f sg cs := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS hcs hG hps hargs hpre
  have HH := h vs body callee rs hl s hs hloc Γ p1 ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  exact ⟨Γ', p1, p', act_exit hcs hps hext hh' hret, trivial⟩

theorem heap_callGC {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hR : Good (some r) → ¬ Abortive r → ∀ Γ, G a.Cb a.H Γ (callEntryStateHOLFinite s callee) →
      (∃ p, ptrsOf (callEntryStateHOLFinite s callee) = some p ∧ ArgsOK a.Cb Γ p sg'.params vs) →
      Pre vs (callEntryStateHOLFinite s callee) Γ →
      ∃ Γ' p p', SumCore a.Cb a.H sg'
        (fun x => ProtCell a.Cb Γ x ∧ CapPW cs (callEntryStateHOLFinite s callee) Γ x) Γ
        (callEntryStateHOLFinite s callee) vs r st Γ' p p' ∧
        Q vs (callEntryStateHOLFinite s callee) Γ r st Γ')
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧ NewFresh Γ Γ' p q' ∧
      (sg'.grows = false → NewFresh Γ Γ' p p) ∧
      (∀ v, r = .returned v → RetOK Γ' p q' vs sg'.ret v) ∧
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  obtain ⟨Γ', q, q', core, hQ⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ hpre
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core hfoot hgw hgr hcs
  obtain ⟨-, -, hmono, hext, hnf, -, -, -, hng', hret⟩ := core
  exact ⟨Γ', q', hext, hh', hmono, hnf, hng', hret, hQ⟩

section rules
variable {a : Act σ} {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- **`f(args);`** for a callee with capabilities `cs ⊆ a.caps`. -/
theorem gp_callC (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs : List Cap} (hcs : capSub cs a.caps = true)
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' (fun _ s Γ => ReqOK cs s Γ) (fun _ s Γ x => CapPW cs s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, ReqOK cs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st → Heap a Γ q s →
      Ext Γ Γ' → Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      ScrOld Γ Γ' ∧ ((∃ v, r = .returned v) → E' Γ' q' st.memory)) :
    HoareG σ X (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) := by
  refine hoareG_callD (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, -⟩ := heap_callGC (r := .returned v)
      (Pre := fun _ s Γ => ReqOK cs s Γ) (Q := Q) ha hh hcs hR
      (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', hE'⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hh hext hh' hmo hnf
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', hE' ⟨v, rfl⟩⟩, fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, -⟩ := heap_callGC
      (Pre := fun _ s Γ => ReqOK cs s Γ) (Q := Q) ha hh hcs hR
      (abn_good' habn) hna hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hh hext hh' hmo hnf
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- `var x = e; k`, the bound value shared by the locals and the memory facts (`GP` form). -/
theorem gp_decV (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 : ValueHOL 64 → LocalsH → Prop}
    {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop} {L2 L3 : LocalsH → Prop}
    {E2 : Gam → Ptrs → Mem → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L1 v (setVarHOLFinite x v s).locals)
    (hE : ∀ (s : State σ) Γ q, InCtx s X → L s.locals → Heap a Γ q s → E Γ q s.memory → ∀ v,
      ev s e = some v → E1 v Γ q s.memory)
    (hk : ∀ v, HoareG σ X (GI a (L1 v) (E1 v)) body (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (GI a L E) (.dec x sh e body) (GP a L3 E2 Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ v hv _ => ?_
  refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc,
      hE s Γ q hs hL hh hEs v hv⟩
  · refine ⟨fun hr => ?_, fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩
    have hg := hq.1 hr
    exact gi_locals hH _ (hres s.locals t.locals hL hg.1) hg

end rules

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.csumm_of_gp
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_callC
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_decV
