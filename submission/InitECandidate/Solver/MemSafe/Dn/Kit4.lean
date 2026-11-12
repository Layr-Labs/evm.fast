import InitECandidate.Solver.MemSafe.Dn.BodyG

set_option autoImplicit false

/-!
# The scratch window by hand (D4 rules)

* `winOK_of_scrOld`: with no new scratch object since the entry (`ScrOld`), releasing the scratch
  region back to the entry's `scratch_ptr` is a sound window release (`WinOK`);
* `gp_relS`: `scratch_release(mk);`; `gp_markS`: `var x = scratch_mark(); k`;
* `gp_raiseG`: `throw E e`;
* `gp_tryV`: `try x = f(args) catch E => h { hp }; k` with the returned value visible to `k`'s
  precondition (the handler never completes normally).
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

/-- **The release of the entry's scratch window** is sound when every scratch object is old. -/
theorem winOK_of_scrOld {a : Act σ} (ha : ActOK a X) (haC : a.C = Types.guestC) {Γ : Gam}
    {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) (hsc : ScrOld a.Γ0 Γ)
    (hL0 : Layout Types.guestC a.p0 a.Γ0) {Mk : BitVec 64} (hMk : Mk.toNat = a.p0.sp) :
    WinOK a Γ q .scratch Mk := by
  obtain ⟨⟨p1, hp1, hord, hL, -⟩, hps, hmono, -, hnf, -⟩ := hh
  rw [hps] at hp1
  cases hp1
  rw [haC] at hL
  have hord0 := ha.hord0
  obtain ⟨o1, o2, o3, o4, o5, -, -, o8⟩ := hord
  obtain ⟨-, -, -, -, -, -, -, p8⟩ := hord0
  refine ⟨by rw [hMk]; exact p8, ⟨hmono.1, hmono.2.1, by show Mk.toNat ≤ a.p0.sp; omega⟩,
    ⟨le_rfl, le_rfl, by show q.sp ≤ Mk.toNat; rw [hMk]; exact hmono.2.2⟩, fun o ho => ?_,
    fun o ho x h1 h2 => ?_⟩
  · rw [haC]
    obtain ⟨-, -, -, -, hlive⟩ := hL.1 o ho
    cases hr : (Types.guestC.ty o.ty).region with
    | heap => rw [hr] at hlive; exact hlive
    | fmem => rw [hr] at hlive; exact hlive
    | scratch =>
      rw [hr] at hlive
      obtain ⟨o0, ho0, hb, ht⟩ := hsc o ho hr
      obtain ⟨-, -, -, -, hlive0⟩ := hL0.1 o0 ho0
      rw [ht, hr] at hlive0
      simp only [Region.Live] at hlive hlive0 ⊢
      unfold Obj.lo at hlive hlive0 ⊢
      rw [hb] at hlive0
      exact ⟨by rw [hMk]; exact hlive0.1, hlive.2⟩
  · rcases hnf o ho x h1 h2 with hold | hfr
    · exact Or.inl hold
    · right
      rcases hfr with h | h | h
      · exact Or.inl h
      · exact Or.inr (Or.inl h)
      · exfalso
        obtain ⟨-, -, -, -, hlive⟩ := hL.1 o ho
        simp only [Obj.lo, Obj.hi] at h1 h2
        cases hr : (Types.guestC.ty o.ty).region with
        | heap =>
          rw [hr] at hlive; simp only [Region.Live, Obj.lo] at hlive
          simp only [heapEnd] at o2 o3; omega
        | fmem =>
          rw [hr] at hlive; simp only [Region.Live, Obj.lo] at hlive; omega
        | scratch =>
          obtain ⟨o0, ho0, hb, ht⟩ := hsc o ho hr
          obtain ⟨-, -, -, -, hlive0⟩ := hL0.1 o0 ho0
          rw [ht, hr] at hlive0
          simp only [Region.Live] at hlive0
          unfold Obj.lo at hlive0
          rw [hb] at hlive0
          omega

section rules
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- **`scratch_release(mk);`** at a sound window. -/
theorem gp_relS (ha : ActOK a X) (hX : X.code.lookup = guestCode) {E' : Gam → Ptrs → Mem → Prop}
    {mk : MlS} {Mk : BitVec 64} (hmk : ∀ m, L m → m.lookup mk = some (.val (.word Mk)))
    (hw : ∀ (s : State σ) Γ q, Heap a Γ q s → ScrOld a.Γ0 Γ → E Γ q s.memory →
      WinOK a Γ q .scratch Mk)
    (hE : ∀ Γ q M, E Γ q M → E' Γ (q.set .scratch Mk.toNat) M) :
    HoareG σ X (GI a L E) (callD (nm "scratch_release") [lv mk]) (GP a L E' Rv) := by
  have hf := funSpec_and (σ := σ) (releaseSpec_scratch_release (σ := σ) hX)
    (funSpec_be' (σ := σ) (nm "scratch_release"))
  refine hoareG_callD hf ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx
    rw [evs_cons (ev_lw (hmk _ hL)) evs_nil] at hvs
    cases hvs
    obtain ⟨hm, hg1, hg2⟩ := hR (by simp [Good]) Mk rfl
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh' := release_heap ha hh (hw s Γ q hh hsc hEs) hm hg1 hg2 hd hbe
    refine ⟨fun _ => ⟨hL, Γ, _, he, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', hsc, ?_⟩,
      fun r' h => by cases h⟩
    have em : ({ st with locals := s.locals } : State σ).memory = s.memory := hm
    rw [em]
    exact hE _ _ _ hEs
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    rw [evs_cons (ev_lw (hmk _ hL)) evs_nil] at hvs
    cases hvs
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hm, hg1, hg2⟩ := hR hg0 Mk rfl
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := heap_congr (s := st) (t := emptyLocalsHOLFinite st) ha.hH rfl rfl rfl rfl
      (release_heap ha hh (hw s Γ q hh hsc hEs) hm hg1 hg2 hd hbe)
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    exact ⟨Or.inr habn, fun _ => ⟨Γ, _, he, hh1, hsc, fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩⟩

/-- **`throw E e`.** -/
theorem gp_raiseG (hH : HooksLawful a.C a.H) {x : MlS} {e : ExpHOL 64}
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ X (GI a L E) (.raise x e) (GP a L2 E2 Rv) :=
  hoareG_raise fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv =>
    ⟨(fun h => by cases h), fun r' hr' => by
      cases hr'
      exact ⟨Or.inr (Or.inl ⟨x, v, rfl⟩), fun _ => ⟨Γ, q, he,
        heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, fun v' hv' => by cases hv'⟩⟩⟩

/-- **`var x = scratch_mark(); k`**: `x` is the current `scratch_ptr`. -/
theorem gp_markS (ha : ActOK a X) (hX : X.code.lookup = guestCode) {x : MlS} {k : ProgHOL 64}
    {L1 : BitVec 64 → LocalsH → Prop} {E1 : BitVec 64 → Gam → Ptrs → Mem → Prop}
    {L2 L3 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop}
    (hL1 : ∀ (s st : State σ) (w : BitVec 64), L s.locals →
      L1 w (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }).locals)
    (hE1 : ∀ Γ q M (w : BitVec 64), E Γ q M → w.toNat = q.sp → E1 w Γ q M)
    (hk : ∀ w, HoareG σ X (GI a (L1 w) (E1 w)) k (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (GI a L E) (.decCall x .one (nm "scratch_mark") [] k) (GP a L3 E2 Rv) := by
  have hf := funSpec_and (σ := σ) ((winSpecs_guest (σ := σ) hX).1 (nm "scratch_mark") .scratch (by decide))
    (funSpec_be' (σ := σ) (nm "scratch_mark"))
  refine hoareG_decCall hf ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx _
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    obtain ⟨w, hgw, hwp⟩ := gword_get hh.2.1 .scratch
    have hv' := mark_val_word (hv v rfl) hgw
    subst hv'
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 : Heap a Γ q (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }) :=
      heap_congr (s := s) ha.hH hm hg hd hbe hh
    have em : (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }).memory =
        s.memory := hm
    refine hoareG_conseq (hk w) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL1 s st w hL, Γ, q, he, hh1, hsc, by rw [em]; exact hE1 _ _ _ w hE hwp⟩
    · refine ⟨fun hr => ?_, fun r' hr' => gx_locals ha.hH _ (hq.2 r' hr')⟩
      have hg := hq.1 hr
      exact gi_locals ha.hH _ (hres s.locals t.locals hL hg.1) hg
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hm, hg, -⟩ := hR hg0 hvs0
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := heap_congr (s := s) (t := emptyLocalsHOLFinite st) ha.hH hm hg hd hbe hh
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    exact ⟨Or.inr habn, fun _ => ⟨Γ, q, he, hh1, hsc, fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩⟩

/-- **`try x = f(args) catch E => h { hp }; k`**, `k` seeing the returned value. -/
theorem gp_tryV (ha : ActOK a X) {f x eid hv : MlS} {hp k : ProgHOL 64} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (heid : eid ≠ trapErr) {Lx : ValueHOL 64 → LocalsH → Prop}
    {Ex : ValueHOL 64 → Gam → Ptrs → Mem → Prop} {Lh : LocalsH → Prop} {Eh : Gam → Ptrs → Mem → Prop}
    {L' : LocalsH → Prop} {E' : Gam → Ptrs → Mem → Prop}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ (∀ v, r = .returned v → Ex v Γ' q' st.memory ∧
          (isValidValueHOLExact s.toExact .local x v = true →
            Lx v (setVarHOLFinite x v { st with locals := s.locals }).locals)) ∧
        (∀ v, r = .exception eid v → Eh Γ' q' st.memory ∧
          Lh (setVarHOLFinite hv v { st with locals := s.locals }).locals))
    (hh : HoareG σ X (GI a Lh Eh) hp (GP a (fun _ => False) (fun _ _ _ => True) Rv))
    (hk : ∀ v, HoareG σ X (GI a (Lx v) (Ex v)) k (GP a L' E' Rv)) :
    HoareG σ X (GI a L E) (.seq (.call (some (some (.local, x), some (eid, hv, hp))) f args) k)
      (GP a L' E' Rv) := by
  refine hoareG_seq (R := fun r t => (r = none → ∃ v, GI a (Lx v) (Ex v) t) ∧
      ∀ r', r = some r' → GX a Rv r' t) ?_ (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩)
    (hoareG_pre (hoareG_ex hk) fun _ _ h => h.1 rfl)
  refine MemSafe.hoareG_callH (hf.and hLc) ?_ ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh0, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh0 hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh0 hR
      (by simp [Good]) (by simp [Abortive]) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', hx, -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh0, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    refine ⟨(fun h => by cases h), fun k x' hk hval => ?_⟩
    simp only [Option.some.injEq, Prod.mk.injEq] at hk
    obtain ⟨rfl, rfl⟩ := hk
    obtain ⟨hEx, hLx⟩ := hx v rfl
    exact ⟨fun _ => ⟨v, hLx hval, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hEx⟩,
      fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh0, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh0 hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh0 hR
      (by simp [Good]) (by simpa [Abortive] using heid) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', -, hx⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh0, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    obtain ⟨hEh, hLh⟩ := hx v rfl
    refine hoareG_conseq hh (fun t _ ht => ?_) (fun r t _ _ h => ⟨fun hr => (h.1 hr).1.elim, h.2⟩)
    subst ht
    exact ⟨hLh, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', hEh⟩
  · intro s hs ⟨hL, Γ, q, he, hh0, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn _
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh0 hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh0 hR
      (abn_good' habn) hna hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh0, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end rules

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.winOK_of_scrOld
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_relS
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_markS
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_tryV
