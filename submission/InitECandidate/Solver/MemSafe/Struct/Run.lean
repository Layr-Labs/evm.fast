import InitECandidate.Solver.MemSafe.Struct.Trk

/-!
# From a Hoare run to a `SumSpec`

* `Fin C H sg PWs Γ0 s0 vs Q r t`: the post of a body run: for a good result `r` and every
  state agreeing with `t` on memory, globals, domain and byte order, `SumCore` and `Q` hold.
  It ignores locals (`fin_locals`), so it passes through `dec`/`decCall` scopes.
* `sumSpec_of_hoare`: a `SumSpec` from a `HoareG` run of the body with post `Fin`.
* `fin_of_trk`: `Fin` at a leaf from `Trk`.
* `sumCore_prot`, `inObj_alloc`: callee summaries keep `prot` cells outside their `PW`.
* `bufOK_obj`: the cells of an all-scalar object are a writable buffer.
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-- The post of a body run. -/
def Fin (C : Cfg) (H : Hooks σ) (sg : Sig) (PWs : BitVec 64 → Prop) (Γ0 : Gam) (s0 : State σ)
    (vs : List (ValueHOL 64))
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r', r = some r' → ∀ t' : State σ, t'.memory = t.memory → t'.globals = t.globals →
    t'.memaddrs = t.memaddrs → t'.be = t.be →
    ∃ Γ' p p', SumCore C H sg PWs Γ0 s0 vs r' t' Γ' p p' ∧ Q vs s0 Γ0 r' t' Γ'

theorem fin_locals {C : Cfg} {H : Hooks σ} {sg : Sig} {PWs : BitVec 64 → Prop} {Γ0 : Gam}
    {s0 : State σ} {vs : List (ValueHOL 64)}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : Fin C H sg PWs Γ0 s0 vs Q r t)
    (l : HolFiniteMapExact MlS (ValueHOL 64)) : Fin C H sg PWs Γ0 s0 vs Q r { t with locals := l } :=
  h

theorem sumSpec_of_hoare {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ Γ0, G C H Γ0 s0 →
        (∃ p, ptrsOf s0 = some p ∧ ArgsOK C Γ0 p sg.params vs) → Pre vs s0 Γ0 →
        HoareG σ X (fun u => u = s0) body
          (Fin C H sg (fun a => ProtCell C Γ0 a ∧ PW vs s0 Γ0 a) Γ0 s0 vs Q)) :
    SumSpec σ X C H f sg Pre PW Q := by
  intro vs body callee rs hl s hs hloc r hr hg Γ hG hargs hpre
  have := h vs body callee rs hl s hs hloc Γ hG hargs hpre s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl _ rfl rfl rfl rfl

/-- `Fin` at a leaf, from `Trk`. -/
theorem fin_of_trk {C : Cfg} {H : Hooks σ} {sg : Sig} {PWs : BitVec 64 → Prop} {Γ0 Γ : Gam}
    {s0 t : State σ} {p0 : Ptrs} {vs : List (ValueHOL 64)}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {r : PanSemResultExact 64} (hH : HooksLawful C H) (h : Trk C H Γ0 s0 p0 PWs Γ t)
    (hp0 : ptrsOf s0 = some p0)
    (hgrow : sg.grows = false → ∀ p, ptrsOf t = some p → NewFresh Γ0 Γ p0 p0)
    (hret : ∀ p, ptrsOf t = some p → ∀ v, r = .returned v → RetOK Γ p0 p vs sg.ret v)
    (hQ : ∀ t' : State σ, t'.memory = t.memory → t'.globals = t.globals → Q vs s0 Γ0 r t' Γ) :
    Fin C H sg PWs Γ0 s0 vs Q (some r) t := by
  intro r' hr' t' h1 h2 h3 h4
  simp only [Option.some.injEq] at hr'
  subst hr'
  have ht := trk_congr hH h h1 h2 h3 h4
  have hpt : ∀ p, ptrsOf t' = some p → ptrsOf t = some p := fun p hp => by
    rw [← hp]; unfold ptrsOf gword; rw [h2]
  obtain ⟨p, hc⟩ := trk_sumCore (sg := sg) (vs := vs) (r := r) ht hp0 (fun _ h => h)
    (fun hg p hp => hgrow hg p (hpt p hp)) (fun p hp => hret p (hpt p hp))
  exact ⟨Γ, p0, p, hc, hQ t' h1 h2⟩

/-! ## Protected cells across callees -/

theorem inObj_alloc {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {a : Nat} (h1 : o.lo ≤ a) (h2 : a < o.hi) : p.Allocated a := by
  obtain ⟨c1, c2, c3, c4, c5⟩ := obj_bounds hord hL ho
  obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord
  unfold Ptrs.Allocated
  unfold heapBase heapEnd scratchEnd at *
  cases hr : (C.ty o.ty).region with
  | heap => have := c3 hr; omega
  | fmem => have := c4 hr; omega
  | scratch => have := c5 hr; omega

theorem cell_alloc {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) : p.Allocated (o.cell k).toNat := by
  obtain ⟨hc, -⟩ := cell_toNat hord hL ho hk
  unfold Obj.HasSlot at hk
  exact inObj_alloc hord hL ho (by rw [hc]; omega) (by rw [hc]; unfold Obj.hi Obj.lo; omega)

/-- A callee's summary keeps every `prot` cell outside its `PW` (given argument buffers in
writable or unallocated cells). -/
theorem sumCore_prot {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {t st : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hG : G C H Γ t) (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ PW a) Γ t vs r st Γ' p p')
    (hArg : ∀ a, ArgCells sg.params vs a → WCell C Γ a ∨ ¬ p.Allocated a.toNat)
    {a : BitVec 64} (hpa : ProtCell C Γ a) (hnw : ¬ PW a) : st.memory a = t.memory a := by
  obtain ⟨hps, -, -, -, -, -, hmod, -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  rw [hps] at hq; cases hq
  obtain ⟨o, ho, k, hk, hpk, rfl⟩ := hpa
  have hnotw : ¬ WCell C Γ (o.cell k) := by
    rintro ⟨o', ho', k', hk', hnp, he⟩
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    exact hnp hpk
  have hal := cell_alloc hord hL ho hk
  refine hmod _ fun hc => ?_
  rcases hc with hw | harg | hna | ⟨-, hpw⟩
  · exact hnotw hw
  · rcases hArg _ harg with hw | hna
    · exact hnotw hw
    · exact hna hal
  · exact hna hal
  · exact hnw hpw

/-! ## Scoped statements with a locals-blind post -/

theorem EvCfg.allocG {C : Cfg} {T : STy} (hE : EvCfg C T) : AllocG C := ⟨hE.alloc_gt, hE.alloc_pg⟩

section scopedRules
variable {P : State σ → Prop} {F : Option (PanSemResultExact 64) → State σ → Prop}

theorem hoareG_dec' (hF : ∀ r (t : State σ) l, F r t → F r { t with locals := l })
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (fun t => t = setVarHOLFinite n v s) body F) :
    HoareG σ X P (.dec n sh e body) F :=
  hoareG_dec fun s hs hp v hv hsh =>
    hoareG_conseq (h s hs hp v hv hsh) (fun _ _ h => h) (fun r t _ _ h => hF r t _ h)

theorem hoareG_decCall' (hF : ∀ r (t : State σ) l, F r t → F r { t with locals := l })
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → shapeEqHOL (shapeOfHOLExact v) sh = true →
        HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k F)
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : State σ), R vs (callEntryStateHOLFinite s callee) r st → InCtx st X →
        Abn r → F (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.decCall rn sh f args k) F :=
  hoareG_decCall hf (fun s hs hp vs hvs callee v st hR hst hsh =>
    hoareG_conseq (hret s hs hp vs hvs callee v st hR hst hsh) (fun _ _ h => h)
      (fun r t _ _ h => hF r t _ h)) habn

/-- `dec` whose post is invariant under restoring the declared variable. -/
theorem hoareG_decN {n : MlS} (hF : ∀ r (t : State σ) o, F r t →
      F r { t with locals := t.locals.resVarEq (n, o) })
    {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (fun t => t = setVarHOLFinite n v s) body F) :
    HoareG σ X P (.dec n sh e body) F :=
  hoareG_dec fun s hs hp v hv hsh =>
    hoareG_conseq (h s hs hp v hv hsh) (fun _ _ h => h) (fun r t _ _ h => hF r t _ h)

theorem hoareG_decCallN {rn f : MlS} (hF : ∀ r (t : State σ) o, F r t →
      F r { t with locals := t.locals.resVarEq (rn, o) })
    {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ), R vs (callEntryStateHOLFinite s callee) (.returned v) st →
        InCtx st X → shapeEqHOL (shapeOfHOLExact v) sh = true →
        HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k F)
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : State σ), R vs (callEntryStateHOLFinite s callee) r st → InCtx st X →
        Abn r → F (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.decCall rn sh f args k) F :=
  hoareG_decCall hf (fun s hs hp vs hvs callee v st hR hst hsh =>
    hoareG_conseq (hret s hs hp vs hvs callee v st hR hst hsh) (fun _ _ h => h)
      (fun r t _ _ h => hF r t _ h)) habn

end scopedRules

theorem funSpec_be' (f : MlS) : FunSpec σ X f (fun _ s _ t => t.be = s.be) := by
  intro vs body callee rs hl s hs hloc r hr
  exact Spec.Inv.be_preserved s body

/-! ## Calling a summarized callee -/

/-- The relation of a `SumSpec`. -/
def SumRel (C : Cfg) (H : Hooks σ) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop)
    (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ∀ Γ, G C H Γ s → (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) →
    Pre vs s Γ → ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs s Γ a) Γ s vs r t Γ' p p' ∧
      Q vs s Γ r t Γ'

theorem sumSpec_rel {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpec σ X C H f sg Pre PW Q) :
    FunSpec σ X f (fun vs s r t => SumRel C H sg Pre PW Q vs s r t ∧ t.be = s.be) :=
  FunSpec.and (R := SumRel C H sg Pre PW Q) h (funSpec_be' f)

theorem abn_good {r : PanSemResultExact 64} (h : Abn r) : Good (some r) := by
  rcases h with ⟨_, _, rfl⟩ | ⟨_, rfl⟩ <;> simp

theorem abn_ne_ret {r : PanSemResultExact 64} (h : Abn r) (v : ValueHOL 64) : r ≠ .returned v := by
  rcases h with ⟨_, _, rfl⟩ | ⟨_, rfl⟩ <;> simp

/-- A call to a summarized callee from a tracked state. -/
theorem trk_callSum {C : Cfg} {H : Hooks σ} {Γ0 Γ : Gam} {s0 t t' st : State σ} {p0 : Ptrs}
    {PW : BitVec 64 → Prop} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW' : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} (hH : HooksLawful C H)
    (h : Trk C H Γ0 s0 p0 PW Γ t) (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0)
    (htm : t'.memory = t.memory) (htg : t'.globals = t.globals)
    (htd : t'.memaddrs = t.memaddrs) (htb : t'.be = t.be)
    (hR : SumRel C H sg Pre PW' Q vs t' r st) (hgood : Good (some r))
    (hargs : ∀ p, ptrsOf t = some p → ArgsOK C Γ p sg.params vs) (hpre : Pre vs t' Γ)
    (hgw : ∀ g ∈ C.PG, g ∉ sg.gw)
    (hArg : ∀ a, ArgCells sg.params vs a → WCell C Γ a ∨ ¬ p0.Allocated a.toNat ∨ PW a)
    (hPW : ∀ a, ProtCell C Γ a → PW' vs t' Γ a → PW a)
    (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be) :
    ∃ Γ' p p', Trk C H Γ0 s0 p0 PW Γ' st ∧
      SumCore C H sg (fun a => ProtCell C Γ a ∧ PW' vs t' Γ a) Γ t' vs r st Γ' p p' ∧
      Q vs t' Γ r st Γ' := by
  have hG := trk_G h
  have hG' : G C H Γ t' := G_congr (s := t) hH htm htg htd htb hG
  obtain ⟨q, hq, -⟩ := hG
  have hq' : ptrsOf t' = some q := by rw [← hq]; exact ptrsOf_congr htg
  obtain ⟨Γ', p, p', hc, hQ⟩ := hR hgood Γ hG' ⟨q, hq', hargs q hq⟩ hpre
  exact ⟨Γ', p, p', trk_call h hord0 hL0 htm htg hc hgw hArg hPW hd hbe, hc, hQ⟩

/-! ## Buffers -/

/-- A cell overlapping a range inside an all-scalar object is a scalar cell. -/
theorem overlap_scell {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) (hsc : ∀ k, (C.ty o.ty).slot k = .scalar) {b n : Nat}
    (hb : o.lo ≤ b) (hn : b + n ≤ o.hi) {a : BitVec 64} (ha : Overlap b n a) : SCell C Γ a := by
  obtain ⟨h8, h1, h2⟩ := ha
  have hob := (hL.1 o ho).1
  obtain ⟨k, hk, rfl⟩ := slot_of_in hord hL ho h8 (by unfold Obj.lo at *; omega) (by omega)
  exact ⟨o, ho, k, hk, hsc k, rfl⟩

/-- The cells of an all-scalar object form a writable buffer. -/
theorem bufOK_obj {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) (hsc : ∀ k, (C.ty o.ty).slot k = .scalar) {b n : Nat}
    (hb : o.lo ≤ b) (hn : b + n ≤ o.hi) : BufOK C Γ p b n :=
  fun _ ha => Or.inl (overlap_scell hord hL ho hsc hb hn ha)

/-- The memory part of `EvSM` carries over to an extension when the three memory cells keep
their values. -/
theorem memOK_transfer {T : STy} {Γ Γ' : Gam} {m m' : Mem} {e e' : Obj} (hx : Ext Γ Γ')
    (h3 : rd m' (e'.cell 3) = rd m (e.cell 3)) (h4 : rd m' (e'.cell 4) = rd m (e.cell 4))
    (h5 : rd m' (e'.cell 5) = rd m (e.cell 5)) (h : MemOK T Γ m e) : MemOK T Γ' m' e' := by
  obtain ⟨b1, b2, b3, o, ho, hb, ht, hs⟩ := h
  obtain ⟨o', ho', hb', ht', hs'⟩ := hx o ho
  unfold MemOK fLEN fMCAP fMEM at *
  rw [h3, h4, h5]
  exact ⟨b1, b2, b3, o', ho', hb'.trans hb, ht'.trans ht, le_trans hs hs'⟩

end InitECandidate.Solver.MemSafe.Struct
