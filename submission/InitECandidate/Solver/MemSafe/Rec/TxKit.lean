import InitECandidate.Solver.MemSafe.Rec.DIPre
import InitECandidate.Solver.MemSafe.Rec.DsiKit
import InitECandidate.Solver.MemSafe.Bn2.Submul

set_option autoImplicit false

/-!
# Rules for the transaction decoders (blob hashes, authorizations, access list)

On top of `DI` (`Rec/DI.lean`, `Rec/DsiKit.lean`):

* `heap_callMA`: `heap_callM` for a callee with writable-buffer parameters (the caller supplies
  `ArgsOK` and that the argument cells are in the activation footprint);
* `hoareG_callDIA`: `f(args);` with such a callee (`memcpy` into an unadopted block);
* `hoareG_decCallDQ`: `var x = f(args); k` whose continuation ends normally (a loop body);
* `hoareG_retDI`: `return e` with a value fact;
* `sumSpecA_of_heapQ`: `sumSpecA_of_heap` with a value fact in `Q`; `hoareG_decCallPreQ`: its use.
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

theorem heap_callMA {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    (hR : SummR a.Cb a.H sg' [] vs (callEntryStateHOLFinite s callee) r st)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧ NewFresh Γ Γ' p q' ∧
      (sg'.grows = false → NewFresh Γ Γ' p p) ∧
      (∀ x : BitVec 64, ¬ WCell a.Cb Γ x → ¬ ArgCells sg'.params vs x → p.Allocated x.toNat →
        st.memory x = s.memory x) ∧
      ∀ v, r = .returned v → RetOK Γ' p q' vs sg'.ret v := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  obtain ⟨Γ', q, q', core, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ (fun c hc => by cases hc)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core hfoot hgw hgr (capSub_nil _)
  obtain ⟨-, -, hmono, hext, hnf, -, hmod, -, hng', hret⟩ := core
  refine ⟨Γ', q', hext, hh', hmono, hnf, hng', fun x hx1 hx2 hx3 => ?_, hret⟩
  refine hmod x ?_
  rintro (h | h | h | ⟨-, c, hc, -⟩)
  · exact hx1 h
  · exact hx2 h
  · exact h hx3
  · cases hc

/-- What a call guarantees (arguments may be writable buffers). -/
structure COutA (a : Act σ) (sg' : Sig) (vs : List (ValueHOL 64)) (Γ Γ' : Gam) (q q' : Ptrs)
    (s st : State σ) : Prop where
  heap0 : Heap a Γ q s
  ext : Ext Γ Γ'
  heap : Heap a Γ' q' st
  mono : q.Mono q'
  nf : NewFresh Γ Γ' q q'
  nfp : sg'.grows = false → NewFresh Γ Γ' q q
  frame : ∀ x : BitVec 64, ¬ WCell a.Cb Γ x → ¬ ArgCells sg'.params vs x → q.Allocated x.toNat →
    st.memory x = s.memory x

/-- The side conditions of a call: the arguments are fine and their cells are in the footprint. -/
def CallArgs (a : Act σ) (sg' : Sig) (Γ : Gam) (q : Ptrs) (vs : List (ValueHOL 64)) : Prop :=
  ArgsOK a.Cb Γ q sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x

theorem hoareG_callDIA {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ →
      Heap a Γ q s → BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → ∀ vs, evs s args = some vs → CallArgs a sg' Γ q vs)
    (hE : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → COutA a sg' vs Γ Γ' q q' s st →
      BlkF Ar n Γ q → E Γ q s.memory s.globals → E' Γ' q' st.memory st.globals) :
    HoareG σ X (DI a Ar n L E) (.call (some (none, none)) f args) (DQ a Ar n L E') := by
  refine hoareG_callD ((summ_funSpec hf).and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh hB hn hEs vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callMA ha hh hR (by simp [Good])
      (by simp [Abortive]) hA hF hgw hgr
    refine ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn, ?_⟩, fun r' h => absurd h (by simp)⟩
    exact hE s st vs callee v Γ Γ' p q' hs hL hvs hLc' ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ hB hEs
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh hB hn hEs vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMA ha hh hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

theorem hoareG_decCallDQ {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig}
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop}
    {E' : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {L2 : ValueHOL 64 → LocalsH → Prop} {E2 : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {Lf : LocalsH → Prop} {Ef : Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ →
      Heap a Γ q s → BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → ∀ vs, evs s args = some vs → CallArgs a sg' Γ q vs)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals → shapeEqHOL (shapeOfHOLExact v) sh = true →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COutA a sg' vs Γ Γ' q q' s st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar n Γ'' q'' ∧
        E' v Γ'' q'' st.memory st.globals)
    (hk : ∀ v, HoareG σ X (DI a Ar n (L' v) (E' v)) k (DQ a Ar n (L2 v) (E2 v)))
    (hresL : ∀ (m0 m : LocalsH) (v : ValueHOL 64), L m0 → L2 v m →
      Lf (m.resVarEq (rn, m0.lookup rn)))
    (hresE : ∀ v Γ q mem g, E2 v Γ q mem g → Ef Γ q mem g) :
    HoareG σ X (DI a Ar n L E) (.decCall rn sh f args k) (DQ a Ar n Lf Ef) := by
  refine hoareG_decCall ((summ_funSpec hf).and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh hB hn hEs vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callMA ha hh hR (by simp [Good])
      (by simp [Abortive]) hA hF hgw hgr
    obtain ⟨Γ'', q'', he'', hh'', hB'', hE''⟩ := hpost s st vs callee v Γ Γ' p q' hs hL hvs hLc'
      he hh hB hn hEs ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨hL' s st v hL hsh, Γ'', q'', he'',
        heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'', hB'', hn, hE''⟩
    · intro r t _ _ hq
      refine ⟨fun hr => ?_, fun r' hr' => ?_⟩
      · obtain ⟨hL2, Γ3, q3, he3, hh3, hB3, hn3, hE3⟩ := hq.1 hr
        exact ⟨hresL _ _ v hL hL2, Γ3, q3, he3,
          heap_congr (s := t) ha.hH (t := { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) })
            rfl rfl rfl rfl hh3, hB3, hn3, hresE _ _ _ _ _ hE3⟩
      · obtain ⟨h1, h2⟩ := hq.2 r' hr'
        refine ⟨h1, fun hna => ?_⟩
        obtain ⟨Γ3, q3, he3, hh3⟩ := h2 hna
        exact ⟨Γ3, q3, he3, heap_congr (s := t) ha.hH
          (t := { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) }) rfl rfl rfl rfl hh3⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh hB hn hEs vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMA ha hh hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

theorem hoareG_retDI {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {e : ExpHOL 64} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hH : HooksLawful a.C a.H)
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ → Heap a Γ q s →
      E Γ q s.memory s.globals → ∀ v, ev s e = some v → Rv Γ q v) :
    HoareG σ X (DI a Ar n L E) (.return e) (NQ a Rv) := by
  refine hoareG_return fun s hs ⟨hL, Γ, q, he, hh, hB, hn, hE⟩ v hv => ?_
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  simp only [Option.some.injEq] at hr'
  subst hr'
  refine ⟨Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, fun v' hv' => ?_⟩
  simp only [PanSemResultExact.returned.injEq] at hv'
  subst hv'
  exact h s hs hL Γ q he hh hE v hv

/-- `Bn2.sumSpecA_of_heap` with a value fact `Rx` about the returned value in `Q`. -/
theorem sumSpecA_of_heapQ {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Rx : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v ∧ Rx vs v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False)
      (fun vs _ _ r _ _ => ∀ v, r = .returned v → Rx vs v) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (WaveHelpers.capsOK_nil C sg) hG hps hargs
    (fun c hc => by cases hc)
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  refine ⟨Γ', p1, p', sumCore_pw_mono2 (act_exit (WaveHelpers.capsOK_nil C sg) hps hext hh'
    (fun v hv => (hret v hv).1)) ?_, fun v hv => (hret v hv).2⟩
  rintro x ⟨hx, c, hc, -⟩
  cases hc

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.heap_callMA
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_callDIA
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_decCallDQ
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_retDI
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_of_heapQ
