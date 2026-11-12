import InitECandidate.Solver.MemSafe.Rec.DI

set_option autoImplicit false

/-!
# Calling a hand summary with a precondition from `DI`

`heap_callMP`: `heap_callM` for a `SumSpecA` callee with a hand precondition `Pre` (no extra
protected writes, trivial extra post), and `hoareG_decCallPre`: `var rn = f(args); k` for such a
callee (e.g. `decode_payload` from `decode_stateless_input`). The client discharges `Pre` at the call
(from the locals / the client predicate) and builds the new `DI` from the call outcome `COut`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

theorem sumCore_pw_mono2 {C : Cfg} {H : Hooks σ} {sg : Sig} {PW PW' : BitVec 64 → Prop}
    {Γ : Gam} {s : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {t : State σ}
    {Γ' : Gam} {p p' : Ptrs} (h : SumCore C H sg PW Γ s vs r t Γ' p p') (hPW : ∀ x, PW x → PW' x) :
    SumCore C H sg PW' Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, h8, h9, h10⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, hmod.mono fun a ha => ?_, h8, h9, h10⟩
  rcases ha with h | h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr (hPW _ h)))

theorem heap_callMP {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hR : Good (some r) → ¬ Abortive r → ∀ Γ, G a.Cb a.H Γ (callEntryStateHOLFinite s callee) →
      (∃ p, ptrsOf (callEntryStateHOLFinite s callee) = some p ∧ ArgsOK a.Cb Γ p sg'.params vs) →
      Pre vs (callEntryStateHOLFinite s callee) Γ →
      ∃ Γ' p p', SumCore a.Cb a.H sg' (fun x => ProtCell a.Cb Γ x ∧ False) Γ
        (callEntryStateHOLFinite s callee) vs r st Γ' p p' ∧ True)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hps : ∀ pt ∈ sg'.params, pt = .any)
    (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧ NewFresh Γ Γ' p q' ∧
      (sg'.grows = false → NewFresh Γ Γ' p p) ∧
      (∀ x : BitVec 64, ¬ WCell a.Cb Γ x → p.Allocated x.toNat → st.memory x = s.memory x) ∧
      ∀ v, r = .returned v → RetOK Γ' p q' vs sg'.ret v := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  obtain ⟨Γ', q, q', core0, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ hpre
  have core : SumCore a.Cb a.H sg' (fun x => ProtCell a.Cb Γ x ∧ CapPW [] (callEntryStateHOLFinite s callee) Γ x)
      Γ (callEntryStateHOLFinite s callee) vs r st Γ' q q' :=
    sumCore_pw_mono2 core0 (fun x hx => ⟨hx.1, hx.2.elim⟩)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core (fun x hx => absurd hx (argCells_any hps))
    hgw hgr (capSub_nil _)
  obtain ⟨-, -, hmono, hext, hnf, -, hmod, -, hng', hret⟩ := core
  refine ⟨Γ', q', hext, hh', hmono, hnf, hng', fun x hx1 hx2 => ?_, hret⟩
  refine hmod x ?_
  rintro (h | h | h | ⟨-, c, hc, -⟩)
  · exact hx1 h
  · exact argCells_any hps h
  · exact h hx2
  · cases hc


theorem hoareG_decCallPre {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {L' : ValueHOL 64 → LocalsH → Prop} {E' : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {k : ProgHOL 64} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hlen : ∀ s : State σ, InCtx s X → L s.locals → ∀ vs, evs s args = some vs →
      sg'.params.length = vs.length)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hPre : ∀ (s : State σ) (vs : List (ValueHOL 64)) (Γ : Gam) (q : Ptrs), InCtx s X →
      L s.locals → evs s args = some vs → Heap a Γ q s → E Γ q s.memory s.globals →
      ∀ s' : State σ, Pre vs s' Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COut a sg' Γ Γ' q q' s st →
      RetOK Γ' q q' vs sg'.ret v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar n Γ'' q'' ∧
        E' v Γ'' q'' st.memory st.globals)
    (hk : ∀ v, HoareG σ X (DI a Ar n (L' v) (E' v)) k (NQ a Rv)) :
    HoareG σ X (DI a Ar n L E) (.decCall rn sh f args k) (NQ a Rv) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st hR _ hsh
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, hret⟩ := heap_callMP ha hh hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hps (hlen s hs hL vs hvs)) hps
      (hPre s vs Γ p hs hL hvs hh hEs _) hgw hgr
    obtain ⟨Γ'', q'', he'', hh'', hB'', hE''⟩ := hpost s st vs callee v Γ Γ' p q' hs hL hvs he hh hB
      hn hEs ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ (hret v rfl) hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => nq_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st v hL hsh, Γ'', q'', he'', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'', hB'',
      hn, hE''⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st hR _ habn
    refine ⟨by simp, fun r' hr' => ?_⟩
    cases hr'
    intro hna
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMP ha hh hR (abn_good' habn) hna
      (argsOK_any hps (hlen s hs hL vs hvs)) hps (hPre s vs Γ p hs hL hvs hh hEs _) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.heap_callMP
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_decCallPre
