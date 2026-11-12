import InitECandidate.Solver.MemSafe.Dn.Scr
import InitECandidate.Solver.MemSafe.Dn.Resolve

set_option autoImplicit false

/-!
# A statement kit that keeps "no new scratch objects" on every exit

`GI a L E t`: locals `L`, and the activation invariant for some `Γ`, `q` with `ScrOld a.Γ0 Γ` and the
client predicate `E Γ q memory`. `GP a L E Rv`: a normal end in `GI a L E`; any other end is a
return or an `Abn` result, and, if not abortive, the activation invariant with `ScrOld` (and `Rv`
on a return). The decoder's wrappers release a scratch window after exceptions, so `ScrOld` must
survive them (the `Rec.DI` kit's `DQ` drops the client facts on abnormal ends).

`heap_callG`: one summarised call (general `ArgsOK`, no argument cells), with the callee's `Q`.
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

/-- The invariant. -/
def GI (a : Act σ) (L : LocalsH → Prop) (E : Gam → Ptrs → Mem → Prop) (t : State σ) : Prop :=
  L t.locals ∧ ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧ Heap a Γ q t ∧ ScrOld a.Γ0 Γ ∧ E Γ q t.memory

/-- The non-normal part of a post. -/
def GX (a : Act σ) (Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop) (r' : PanSemResultExact 64)
    (t : State σ) : Prop :=
  ((∃ v, r' = .returned v) ∨ Abn r') ∧ (¬ Abortive r' → ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧
    Heap a Γ q t ∧ ScrOld a.Γ0 Γ ∧ ∀ v, r' = .returned v → Rv Γ q t.memory v)

/-- The statement post. -/
def GP (a : Act σ) (L : LocalsH → Prop) (E : Gam → Ptrs → Mem → Prop)
    (Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  (r = none → GI a L E t) ∧ ∀ r', r = some r' → GX a Rv r' t

theorem gx_locals {a : Act σ} (hH : HooksLawful a.C a.H) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {r' : PanSemResultExact 64} {t : State σ} (Lc : LocalsH) (h : GX a Rv r' t) :
    GX a Rv r' { t with locals := Lc } := by
  refine ⟨h.1, fun hna => ?_⟩
  obtain ⟨Γ, q, he, hh, hs, hv⟩ := h.2 hna
  exact ⟨Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hs, hv⟩

theorem gi_locals {a : Act σ} (hH : HooksLawful a.C a.H) {L L' : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → Prop} {t : State σ} (Lc : LocalsH) (hL : L' Lc) (h : GI a L E t) :
    GI a L' E { t with locals := Lc } := by
  obtain ⟨-, Γ, q, he, hh, hs, hE⟩ := h
  exact ⟨hL, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hs, hE⟩

/-! ## The call core -/

theorem heap_callG {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hR : Good (some r) → ¬ Abortive r → ∀ Γ, G a.Cb a.H Γ (callEntryStateHOLFinite s callee) →
      (∃ p, ptrsOf (callEntryStateHOLFinite s callee) = some p ∧ ArgsOK a.Cb Γ p sg'.params vs) →
      Pre vs (callEntryStateHOLFinite s callee) Γ →
      ∃ Γ' p p', SumCore a.Cb a.H sg' (fun x => ProtCell a.Cb Γ x ∧ False) Γ
        (callEntryStateHOLFinite s callee) vs r st Γ' p p' ∧
        Q vs (callEntryStateHOLFinite s callee) Γ r st Γ')
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hnoc : ∀ x, ¬ ArgCells sg'.params vs x)
    (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧ NewFresh Γ Γ' p q' ∧
      (sg'.grows = false → NewFresh Γ Γ' p p) ∧
      (∀ x : BitVec 64, ¬ WCell a.Cb Γ x → p.Allocated x.toNat → st.memory x = s.memory x) ∧
      (∀ v, r = .returned v → RetOK Γ' p q' vs sg'.ret v) ∧
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  obtain ⟨Γ', q, q', core0, hQ⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ hpre
  have core : SumCore a.Cb a.H sg' (fun x => ProtCell a.Cb Γ x ∧ CapPW [] (callEntryStateHOLFinite s callee) Γ x)
      Γ (callEntryStateHOLFinite s callee) vs r st Γ' q q' :=
    sumCore_pw_mono2 core0 (fun x hx => ⟨hx.1, hx.2.elim⟩)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core (fun x hx => absurd hx (hnoc x))
    hgw hgr (capSub_nil _)
  obtain ⟨-, -, hmono, hext, hnf, -, hmod, -, hng', hret⟩ := core
  refine ⟨Γ', q', hext, hh', hmono, hnf, hng', fun x hx1 hx2 => ?_, hret, hQ⟩
  refine hmod x ?_
  rintro (h | h | h | ⟨-, c, hc, -⟩)
  · exact hx1 h
  · exact hnoc x h
  · exact h hx2
  · cases hc

/-- What one call gives the client. -/
structure CO (a : Act σ) (sg' : Sig) (vs : List (ValueHOL 64)) (Γ Γ' : Gam) (q q' : Ptrs)
    (s st : State σ) (r : PanSemResultExact 64) : Prop where
  heap0 : Heap a Γ q s
  ext : Ext Γ Γ'
  heap : Heap a Γ' q' st
  mono : q.Mono q'
  nf : NewFresh Γ Γ' q q'
  nfp : sg'.grows = false → NewFresh Γ Γ' q q
  frame : ∀ x : BitVec 64, ¬ WCell a.Cb Γ x → q.Allocated x.toNat → st.memory x = s.memory x
  ret : ∀ v, r = .returned v → RetOK Γ' q q' vs sg'.ret v

/-! ## Statement rules -/

section rules
variable {a : Act σ} {L L' L2 : LocalsH → Prop} {E E' E2 : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

theorem gp_seq {P : State σ → Prop} {c k : ProgHOL 64}
    (hc : HoareG σ X P c (GP a L E Rv)) (hk : HoareG σ X (GI a L E) k (GP a L' E' Rv)) :
    HoareG σ X P (.seq c k) (GP a L' E' Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩)
    (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem gp_skip {P : State σ → Prop} (hP : ∀ s : State σ, P s → GI a L E s) :
    HoareG σ X P .skip (GP a L E Rv) :=
  hoareG_skip fun s _ h => ⟨fun _ => hP s h, fun r' h => by cases h⟩

theorem gp_assign (hH : HooksLawful a.C a.H) {x : MlS} {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (GI a L E) (.assign .local x e) (GP a L' E Rv) :=
  hoareG_assign fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv _ =>
    ⟨fun _ => ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE⟩,
      fun r' h => by cases h⟩

theorem gp_dec (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L1 L3 : LocalsH → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L1 (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (GI a L1 E) body (GP a L2 E' Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (GI a L E) (.dec x sh e body) (GP a L3 E' Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE⟩
  · refine ⟨fun hr => ?_, fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩
    have hg := hq.1 hr
    exact gi_locals hH _ (hres s.locals t.locals hL hg.1) hg

theorem gp_store {ea e : ExpHOL 64}
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ w v (mem : Mem), ev s ea = some (.val (.word w)) → ev s e = some v →
      @panMemStoresHOL 64 _ w (flattenHOL v) s.memaddrs
        (fun x => Classical.propDecidable (s.memaddrs x)) s.memory = some mem →
      Heap a Γ q { s with memory := mem } ∧ E' Γ q mem) :
    HoareG σ X (GI a L E) (.store ea e) (GP a L E' Rv) :=
  hoareG_store fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ w v mem hw hv hmem => by
    obtain ⟨hh', hE'⟩ := h s Γ q hs hL hh hE w v mem hw hv hmem
    exact ⟨fun _ => ⟨hL, Γ, q, he, hh', hsc, hE'⟩, fun r' h => by cases h⟩

theorem gp_ret {e : ExpHOL 64} (hH : HooksLawful a.C a.H)
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Ext a.Γ0 Γ →
      Heap a Γ q s → E Γ q s.memory → ∀ v, ev s e = some v → Rv Γ q s.memory v) :
    HoareG σ X (GI a L E) (.return e) (GP a L2 E2 Rv) :=
  hoareG_return fun s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ v hv => by
    refine ⟨(fun h' => by cases h'), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inl ⟨v, rfl⟩, fun _ => ⟨Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc,
      fun v' hv' => ?_⟩⟩
    cases hv'
    exact h s Γ q hs hL he hh hE v hv

/-- The loop: the body never `continue`s or `break`s (`GX`). -/
theorem gp_while (hH : HooksLawful a.C a.H) {c : ExpHOL 64} {body : ProgHOL 64}
    {Lx : LocalsH → Prop}
    (hb : HoareG σ X (fun s => GI a L E s ∧ CondTrue s c) body (GP a L E Rv))
    (hexit : ∀ s : State σ, InCtx s X → GI a L E s → ev s c = some (.val (.word 0)) →
      GI a Lx E s) :
    HoareG σ X (GI a L E) (.while c body) (GP a Lx E Rv) := by
  refine hoareG_while (I := GI a L E) ?_ ?_ (fun s hs hi hc => ⟨fun _ => hexit s hs hi hc,
    fun r' h => by cases h⟩)
  · intro t ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hsc, hE⟩
  · refine hoareG_conseq hb (fun s _ h => h) ?_
    intro r t _ _ h
    have hnab : ∀ r', r = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      rcases (h.2 r' hr').1 with ⟨v, hv⟩ | ⟨e, v, he⟩ | ⟨e, he⟩
      · rcases hcb with rfl | rfl <;> cases hv
      · rcases hcb with rfl | rfl <;> cases he
      · rcases hcb with rfl | rfl <;> cases he
    refine ⟨fun hr => h.1 hr, fun hc => (hnab _ hc (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩

end rules

/-- A capability summary without capabilities, as a `SumSpecA` with no protected writes. -/
theorem sumA_of_csumm {f : MlS} {sg : Sig} {C : Cfg} {H : Hooks σ}
    (h : CSumm σ X C H f sg []) :
    SumSpecA σ X C H f sg (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  unfold CSumm SumSpecA at h
  unfold SumSpecA
  refine FunSpec.mono h fun vs s r t H hg hna Γ hG hA _ => ?_
  obtain ⟨Γ', p, p', core, -⟩ := H hg hna Γ hG hA (fun c hc => by cases hc)
  exact ⟨Γ', p, p', sumCore_pw_mono2 core (fun x hx => ⟨hx.1, by
    obtain ⟨c, hc, -⟩ := hx.2; cases hc⟩), trivial⟩

section calls
variable {a : Act σ} {L L2 L3 : LocalsH → Prop} {E E' E2 : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- **`var rn = f(args); k`** for a summarised callee with a precondition, a post `Q` and a
functional spec `Lc`. -/
theorem gp_decCall (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)}
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
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
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
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', hE1⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
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
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (abn_good' habn) hna hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- **`f(args);`** for a summarised callee. -/
theorem gp_call (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ ((∃ v, r = .returned v) → E' Γ' q' st.memory)) :
    HoareG σ X (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) := by
  refine hoareG_callD (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', hE'⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', hE' ⟨v, rfl⟩⟩, fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh hR
      (abn_good' habn) hna hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- **`try x = f(args) catch eid => hv { hp }`** for a summarised callee. -/
theorem gp_try (ha : ActOK a X) {f x eid hv : MlS} {hp : ProgHOL 64} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (heid : eid ≠ trapErr) {Lx Lh : LocalsH → Prop} {Ex Eh : Gam → Ptrs → Mem → Prop}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ¬ ArgCells sg'.params vs x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → CO a sg' vs Γ Γ' q q' s st r →
      ScrOld Γ Γ' ∧ (∀ v, r = .returned v → Ex Γ' q' st.memory ∧
          (isValidValueHOLExact s.toExact .local x v = true →
            Lx (setVarHOLFinite x v { st with locals := s.locals }).locals)) ∧
        (∀ v, r = .exception eid v → Eh Γ' q' st.memory ∧
          Lh (setVarHOLFinite hv v { st with locals := s.locals }).locals))
    (hh : HoareG σ X (GI a Lh Eh) hp (GP a Lx Ex Rv)) :
    HoareG σ X (GI a L E) (.call (some (some (.local, x), some (eid, hv, hp))) f args)
      (GP a Lx Ex Rv) := by
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
    exact ⟨fun _ => ⟨hLx hval, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', scrOld_trans hsc hsc', hEx⟩,
      fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh0, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hnoc, hpre⟩ := hargs s Γ q hs hL hh0 hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hfr, hret, hQ⟩ := heap_callG ha hh0 hR
      (by simp [Good]) (by simpa [Abortive] using heid) hA hnoc (hpre callee) hgw hgr
    obtain ⟨hsc', -, hx⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ
      ⟨hh0, hext, hh', hmo, hnf, hnfp, hfr, hret⟩
    obtain ⟨hEh, hLh⟩ := hx v rfl
    refine hoareG_pre hh fun t _ ht => ?_
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

end calls

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.heap_callG
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_while
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_decCall
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_try
