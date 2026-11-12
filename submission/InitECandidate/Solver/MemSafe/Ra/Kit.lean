import InitECandidate.Solver.MemSafe.Ra.Own

set_option autoImplicit false

/-!
# Statement rules for `recover_authority` (sonnet-ra)

Rules for the `GI` / `GP` kit that the `Dn` / `Ins` files lack:

* `gp_markH` / `gp_relH`: `var m = heap_mark(); k` and `heap_release(m);` (the heap analogues of
  `gp_markS` / `gp_relS`, with the window obligation `WinOK` supplied by the client);
* `gp_decCallW`: `var x = f(args); k` for a one-word result, `k` seeing the returned word;
* `gp_callAS`: `x = f(args); k` for a one-word local `x`;
* `gp_stByteOut`: a byte store into an owned block;
* `gp_iteRet`: `if c { return 0 }`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type} {X : Ctx 64}

/-! ## Word arithmetic -/

theorem toNat_add' {x y : BitVec 64} (h : x.toNat + y.toNat < 2 ^ 64) :
    (x + y).toNat = x.toNat + y.toNat := by
  rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt h

theorem toNat_sub' {x y : BitVec 64} (h : y.toNat ≤ x.toNat) : (x - y).toNat = x.toNat - y.toNat := by
  rw [BitVec.toNat_sub]
  have : x.toNat < 2 ^ 64 := x.isLt
  have : y.toNat < 2 ^ 64 := y.isLt
  rw [show 2 ^ 64 - y.toNat + x.toNat = (x.toNat - y.toNat) + 2 ^ 64 by omega, Nat.add_mod_right]
  exact Nat.mod_eq_of_lt (by omega)

theorem toNat_ofNat' {n : Nat} (h : n < 2 ^ 64) : (BitVec.ofNat 64 n).toNat = n := by
  rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt h

/-! ## Allocator windows on the heap -/

section rules
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- **`heap_release(mk);`** at a sound window. -/
theorem gp_relH (ha : ActOK a X) (hX : X.code.lookup = guestCode) {E' : Gam → Ptrs → Mem → Prop}
    {mk : MlS} {Mk : BitVec 64} (hmk : ∀ m, L m → m.lookup mk = some (.val (.word Mk)))
    (hw : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory → WinOK a Γ q .heap Mk)
    (hE : ∀ Γ q M, E Γ q M → E' Γ (q.set .heap Mk.toNat) M) :
    HoareG σ X (GI a L E) (callD (nm "heap_release") [lv mk]) (GP a L E' Rv) := by
  have hf := funSpec_and (σ := σ) (releaseSpec_heap_release (σ := σ) hX)
    (funSpec_be' (σ := σ) (nm "heap_release"))
  refine hoareG_callD hf ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx
    rw [evs_cons (ev_lw (hmk _ hL)) evs_nil] at hvs
    cases hvs
    obtain ⟨hm, hg1, hg2⟩ := hR (by simp [Good]) Mk rfl
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh' := release_heap ha hh (hw s Γ q hh hEs) hm hg1 hg2 hd hbe
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
      (release_heap ha hh (hw s Γ q hh hEs) hm hg1 hg2 hd hbe)
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    exact ⟨Or.inr habn, fun _ => ⟨Γ, _, he, hh1, hsc, fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩⟩

/-- **`var x = heap_mark(); k`**: `x` is the current `heap_ptr`. -/
theorem gp_markH (ha : ActOK a X) (hX : X.code.lookup = guestCode) {x : MlS} {k : ProgHOL 64}
    {L1 : BitVec 64 → LocalsH → Prop} {E1 : BitVec 64 → Gam → Ptrs → Mem → Prop}
    {L2 L3 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop}
    (hL1 : ∀ (s st : State σ) (w : BitVec 64), L s.locals →
      L1 w (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }).locals)
    (hE1 : ∀ (s : State σ) Γ q (w : BitVec 64), Heap a Γ q s → E Γ q s.memory → w.toNat = q.hp →
      E1 w Γ q s.memory)
    (hk : ∀ w, HoareG σ X (GI a (L1 w) (E1 w)) k (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (GI a L E) (.decCall x .one (nm "heap_mark") [] k) (GP a L3 E2 Rv) := by
  have hf := funSpec_and (σ := σ) ((winSpecs_guest (σ := σ) hX).1 (nm "heap_mark") .heap (by decide))
    (funSpec_be' (σ := σ) (nm "heap_mark"))
  refine hoareG_decCall hf ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx _
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    obtain ⟨w, hgw, hwp⟩ := gword_get hh.2.1 .heap
    have hv' := mark_val_word (hv v rfl) hgw
    subst hv'
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 : Heap a Γ q (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }) :=
      heap_congr (s := s) ha.hH hm hg hd hbe hh
    have em : (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }).memory =
        s.memory := hm
    refine hoareG_conseq (hk w) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL1 s st w hL, Γ, q, he, hh1, hsc, by rw [em]; exact hE1 s Γ q w hh hE hwp⟩
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

/-! ## Calls with buffer arguments in the footprint -/

/-- What one call gives the client (`CO` without the `frame` clause). -/
structure COF (a : Act σ) (sg' : Sig) (vs : List (ValueHOL 64)) (Γ Γ' : Gam) (q q' : Ptrs)
    (s st : State σ) (r : PanSemResultExact 64) : Prop where
  heap0 : Heap a Γ q s
  ext : Ext Γ Γ'
  heap : Heap a Γ' q' st
  mono : q.Mono q'
  nf : NewFresh Γ Γ' q q'
  nfp : sg'.grows = false → NewFresh Γ Γ' q q
  ret : ∀ v, r = .returned v → RetOK Γ' q q' vs sg'.ret v

theorem layout_heap {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) : Layout Types.guestC q Γ := by
  obtain ⟨p1, hp1, -, hL, -⟩ := hh.1
  rw [hh.2.1] at hp1
  cases hp1
  rw [haC] at hL
  exact hL

theorem scrOld_cof {a : Act σ} (haC : a.C = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {r : PanSemResultExact 64}
    (co : COF a sg' vs Γ Γ' q q' s st r) (hg : sg'.grows = false) : ScrOld Γ Γ' :=
  scrOld_of_nf0 (layout_heap haC co.heap) (co.nfp hg)

theorem own_cof {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {r : PanSemResultExact 64} (co : COF a sg' vs Γ Γ' q q' s st r)
    (hg : sg'.grows = false) {b n : Nat} (h : Own a.p0 q Γ b n) : Own a.p0 q' Γ' b n :=
  own_step h co.mono (co.nfp hg)

theorem hi_cof {a : Act σ} (haC : a.C = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {r : PanSemResultExact 64}
    (co : COF a sg' vs Γ Γ' q q' s st r) (hg : sg'.grows = false) {Mk : Nat} (h : HI Mk Γ) :
    HI Mk Γ' :=
  hi_nf0 (heap_ord co.heap) (layout_heap haC co.heap) (co.nfp hg) h

section rules2
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- **`var x = f(args); k`** with the argument cells in the caller's footprint. -/
theorem gp_decCallF (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    {L2 L3 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} {k : ProgHOL 64}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → COF a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → shapeEqHOL (shapeOfHOLExact v) sh = true →
        E1 v Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, HoareG σ X (GI a (L1 v) (E1 v)) k (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    HoareG σ X (GI a L E) (.decCall rn sh f args k) (GP a L3 E2 Rv) := by
  refine hoareG_decCall (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGF ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hret⟩
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
    · subst ht
      exact ⟨hL1 s st v hL hsh, Γ', q', ext_trans he hext,
        heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hE1 v rfl hsh⟩
    · refine ⟨fun hr => ?_, fun r' hr' => gx_locals ha.hH _ (hq.2 r' hr')⟩
      have hg := hq.1 hr
      exact gi_locals ha.hH _ (hres s.locals t.locals hL hg.1) hg
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGF ha hh hR
      (abn_good' habn) hna hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- **`f(args);`** with the argument cells in the caller's footprint and the full call outcome. -/
theorem gp_callFM (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {E' : Gam → Ptrs → Mem → Prop}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → COF a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ((∃ v, r = .returned v) → E' Γ' q' st.memory)) :
    HoareG σ X (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) := by
  refine hoareG_callD (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGF ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', hE'⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hret⟩
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', hE' ⟨v, rfl⟩⟩, fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGF ha hh hR
      (abn_good' habn) hna hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- **`x = f(args);`** with the argument cells in the caller's footprint (J-form post). -/
theorem gp_callAF (ha : ActOK a X) {x f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → Prop}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → COF a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ∀ v, r = .returned v → E1 v Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      isValidValueHOLExact s.toExact .local x v = true →
      L1 v (setVarHOLFinite x v { st with locals := s.locals }).locals) :
    HoareG σ X (GI a L E) (.call (some (some (.local, x), none)) f args)
      (GPJ a (fun t => ∃ v, GI a (L1 v) (E1 v) t) Rv) := by
  refine hoareG_callA (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hvalid
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGF ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hret⟩
    exact ⟨fun _ => ⟨v, hL1 s st v hL hvalid, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hE1 v rfl⟩,
      fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGF ha hh hR
      (abn_good' habn) hna hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end rules2

/-! ## Calls with a word result -/

/-- **`var x = f(args); k`** for a one-word result: `k` sees the returned word. -/
theorem gp_decCallW (ha : ActOK a X) {rn : MlS} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : BitVec 64 → LocalsH → Prop} {E1 : BitVec 64 → Gam → Ptrs → Mem → Prop}
    {L2 L3 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} {k : ProgHOL 64}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → COF a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ∀ W : BitVec 64, r = .returned (.val (.word W)) → E1 W Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (W : BitVec 64), L s.locals →
      L1 W (setVarHOLFinite rn (.val (.word W)) { st with locals := s.locals }).locals)
    (hk : ∀ W, HoareG σ X (GI a (L1 W) (E1 W)) k (GP a L2 E2 Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    HoareG σ X (GI a L E) (.decCall rn .one f args k) (GP a L3 E2 Rv) := by
  refine gp_decCallF ha hf hLc hgw hgr
    (L1 := fun v m => ∃ W, v = .val (.word W) ∧ L1 W m)
    (E1 := fun v Γ q M => ∃ W, v = .val (.word W) ∧ E1 W Γ q M) hargs ?_ ?_ ?_ hres
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc' hQ co
    obtain ⟨hsc, h1⟩ := hpost s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc' hQ co
    refine ⟨hsc, fun v hv hsh => ?_⟩
    obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨W, rfl, h1 W hv⟩
  · intro s st v hL hsh
    obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨W, rfl, hL1 s st W hL⟩
  · intro v s hs hP hg
    obtain ⟨⟨W, hW, hL⟩, Γ, q, he, hh, hsc, ⟨W', hW', hE⟩⟩ := hP
    have : W' = W := by
      rw [hW] at hW'
      simpa using hW'.symm
    subst this
    exact hk W' s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ hg

end rules


section rules3
variable {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- **`x = f(args); k`** for a one-word local `x`: `k` sees the assigned word. -/
theorem gp_callAS (ha : ActOK a X) {x f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : BitVec 64 → LocalsH → Prop} {E1 : BitVec 64 → Gam → Ptrs → Mem → Prop}
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} {k : ProgHOL 64}
    (hx : ∀ m, L m → ∃ W0 : BitVec 64, m.lookup x = some (.val (.word W0)))
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → COF a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ∀ W : BitVec 64, r = .returned (.val (.word W)) → E1 W Γ' q' st.memory)
    (hL1 : ∀ (s st : State σ) (W : BitVec 64), L s.locals →
      L1 W (setVarHOLFinite x (.val (.word W)) { st with locals := s.locals }).locals)
    (hk : ∀ W, HoareG σ X (GI a (L1 W) (E1 W)) k (GP a L2 E2 Rv)) :
    HoareG σ X (GI a L E) (.seq (.call (some (some (.local, x), none)) f args) k)
      (GP a L2 E2 Rv) := by
  refine hoareG_seq (R := GPJ a (fun t => ∃ W, GI a (L1 W) (E1 W) t) Rv) ?_
    (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) ?_
  · refine hoareG_conseq (gp_callAF ha hf hLc hgw hgr
      (L1 := fun v m => ∃ W, v = .val (.word W) ∧ L1 W m)
      (E1 := fun v Γ q M => ∀ W, v = .val (.word W) → E1 W Γ q M) hargs ?_ ?_)
      (fun _ _ h => h) (fun r t _ _ h => ⟨fun hr => ?_, h.2⟩)
    · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc' hQ co
      obtain ⟨hsc, h1⟩ := hpost s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc' hQ co
      refine ⟨hsc, fun v hv W hW => h1 W (by rw [hv, hW])⟩
    · intro s st v hL hvalid
      obtain ⟨W0, hW0⟩ := hx _ hL
      obtain ⟨V, rfl⟩ := valid_one hW0 hvalid
      exact ⟨V, rfl, hL1 s st V hL⟩
    · obtain ⟨v, ⟨W, hW, hL⟩, Γ, q, he, hh, hsc, hE⟩ := h.1 hr
      exact ⟨W, hL, Γ, q, he, hh, hsc, hE W hW⟩
  · exact hoareG_pre (hoareG_ex hk) (fun t _ h => h.1 rfl)

/-- **A byte store into an owned block.** -/
theorem gp_stByteOut (ha : ActOK a X) {E' : Gam → Ptrs → Mem → Prop} {ea e : ExpHOL 64}
    {A : BitVec 64}
    (hea : ∀ s : State σ, L s.locals → ev s ea = some (.val (.word A)))
    (hB : ∀ Γ q M, E Γ q M → Own a.p0 q Γ A.toNat 1)
    (hE : ∀ Γ q M mem, E Γ q M → E' Γ q mem) :
    HoareG σ X (GI a L E) (.storeByte ea e) (GP a L E' Rv) := by
  refine hoareG_storeByte fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ w x mem hw hx hmem => ?_
  rw [hea s hL] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  have hmod := Helpers.storeByte_mod hmem
  have hal := Helpers.byteAlign_toNat A
  have hov : Overlap A.toNat 1 (panByteAlignHOL A) := by
    unfold Overlap
    omega
  obtain ⟨hni, -, hna⟩ := hB Γ q s.memory hEs _ hov
  exact ⟨fun _ => ⟨hL, Γ, q, he, heap_store_out ha hh hmod hni hna, hsc, hE _ _ _ mem hEs⟩,
    fun r' h => by cases h⟩

/-- **`if c { return 0 }`** (no else branch). -/
theorem gp_iteRet0 (hH : HooksLawful a.C a.H) {c : ExpHOL 64}
    (hRv : ∀ Γ q M, E Γ q M → Rv Γ q M (.val (.word 0))) :
    HoareG σ X (GI a L E) (.ite c (.return (cw 0)) .skip) (GP a L E Rv) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_pre (gp_ret hH (L := L) (E := E) (L2 := L) (E2 := E) (Rv := Rv) ?_)
      (fun s _ h => h.1)
    intro s Γ q hs hL he hh hE v hv
    rw [ev_cw] at hv
    cases hv
    exact hRv Γ q _ hE
  · exact hoareG_pre (gp_skip (fun s h => h)) (fun s _ h => h.1)

end rules3

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.gp_callAS
#print axioms InitECandidate.Solver.MemSafe.Ra.gp_decCallW
#print axioms InitECandidate.Solver.MemSafe.Ra.gp_markH
#print axioms InitECandidate.Solver.MemSafe.Ra.gp_relH
#print axioms InitECandidate.Solver.MemSafe.Ra.gp_stByteOut
#print axioms InitECandidate.Solver.MemSafe.Ra.gp_iteRet0
#print axioms InitECandidate.Solver.MemSafe.Ra.gp_callFM
