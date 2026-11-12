import InitECandidate.Solver.MemSafe.Ssz.DecCst

set_option autoImplicit false

/-!
# Hand-checked calls in the checker's invariant

For calls the checker cannot type (argument values it does not track, e.g. fields of a struct
local), with the argument obligations proved by hand and an extra locals fact `J`:

* `callC_core`: a non-growing `CSumm` callee keeps `Heap` and the temporaries (`TempsOK`,
  including open windows) of the caller's activation;
* **`callC`**: `f(args);` from `IG ∧ J` into `SPost (.normal A)`;
* **`decCallV`**: `var x = f(args); k` with a value spec of `f`; `k` runs with `x` dropped from
  the abstract locals and `J'` (which may mention the new value of `x`);
* `spost_weaken`, **`hoareG_seqN`**: sequencing with a statement that ends normally in `A'`.
-/

namespace InitECandidate.Solver.MemSafe.Ssz
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

abbrev LocalsS := HolFiniteMapExact MlS (ValueHOL 64)

/-- A non-growing callee keeps the caller's heap part and temporaries. -/
theorem callC_core {a : Act σ} (ha : ActOK a X) {A : AEnv} {Γ : Gam} {p : Ptrs}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (hh : Heap a Γ p s) (ht : TempsOK a A Γ p Θ)
    {sg' : Sig} {vs : List (ValueHOL 64)} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SummR a.Cb a.H sg' [] vs (callEntryStateHOLFinite s callee) r st)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = false) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ TempsOK a A Γ' q' Θ ∧
      ∀ v, r = .returned v → RetOK Γ' p q' vs sg'.ret v := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  obtain ⟨Γ', q, q', core, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ (fun c hc => by cases hc)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core hfoot hgw
    (fun h => by rw [hgr] at h; cases h) rfl
  obtain ⟨-, -, hmono, hext, hnf, -, -, -, hng, hret⟩ := core
  obtain ⟨p1, hp1, hord1, -⟩ := hh.1
  have e1 : p1 = q := by rw [hh.2.1] at hp1; exact (Option.some.inj hp1).symm
  rw [e1] at hord1
  obtain ⟨p2, hp2, hord2, hL2, -⟩ := hh'.1
  have e2 : p2 = q' := by rw [hh'.2.1] at hp2; exact (Option.some.inj hp2).symm
  rw [e2] at hord2 hL2
  refine ⟨Γ', q', hext, hh', ⟨ht.1, fun k td hk => ?_⟩, hret⟩
  obtain ⟨w, hw, hbuf, hprov⟩ := ht.2 k td hk
  refine ⟨w, hw, bufOK_ext hord1 hord2 hmono hext hnf hbuf, ?_⟩
  obtain ⟨n, kd⟩ := td
  cases kd with
  | fresh => exact hprov
  | arg i => exact hprov
  | win rg => exact ⟨hprov.1, winOK_after hL2 hord2 hmono (hng hgr) hprov.2⟩

/-- The abnormal result of a call, from the callee's summary. -/
theorem callC_abn {a : Act σ} (ha : ActOK a X) {A : AEnv} {Γ : Gam} {p : Ptrs}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (hh : Heap a Γ p s) (ht : TempsOK a A Γ p Θ)
    {sg' : Sig} {vs : List (ValueHOL 64)} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SummR a.Cb a.H sg' [] vs (callEntryStateHOLFinite s callee) r st) (habn : Abn r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = false) (rt : List RT) (o : AOut) :
    SPost a rt o Γ Θ (some r) (emptyLocalsHOLFinite st) := by
  have hg : Good (some r) := by
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
  by_cases hab : Abortive r
  · rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · exact Or.inl hab
    · exact Or.inl hab
  obtain ⟨Γ', q', hext, hh', -, -⟩ := callC_core ha hh ht hR hg hab hargs hfoot hgw hgr
  have hH' := heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'
  rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
  · exact Or.inr ⟨Γ', q', hext, hH'⟩
  · exact Or.inr ⟨Γ', q', hext, hH'⟩

/-- **`f(args);` with the argument obligations proved by hand.** -/
theorem callC {a : Act σ} (ha : ActOK a X) {A : AEnv} {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' []) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = false) {J : LocalsS → Prop} (rt : List RT) (Γ : Gam)
    (Θ : List (BitVec 64 × Nat))
    (hargs : ∀ (s : State σ) p, InCtx s X → Heap a Γ p s → TempsOK a A Γ p Θ →
      LocalsOK A Γ Θ s → J s.locals → ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x) :
    HoareG σ X (fun s => IG a A Γ Θ s ∧ J s.locals) (.call (some (none, none)) f args)
      (SPost a rt (.normal A) Γ Θ) := by
  refine hoareG_callD (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨⟨p, hh, ht, hl⟩, hJ⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF⟩ := hargs s p hs hh ht hl hJ vs hvs
    obtain ⟨Γ', q', hext, hh', ht', -⟩ := callC_core ha hh ht hR (by simp [Good])
      (by simp [Abortive]) hA hF hgw hgr
    exact ⟨A, Γ', Θ, rfl, ⟨hext, List.prefix_refl _⟩, ig_after ha.hH hl hext hh' ht'⟩
  · intro s hs ⟨⟨p, hh, ht, hl⟩, hJ⟩ vs hvs callee r st hR _ habn
    obtain ⟨hA, hF⟩ := hargs s p hs hh ht hl hJ vs hvs
    exact callC_abn ha hh ht hR habn hA hF hgw hgr rt _

/-- **`var x = f(args); k` with a value spec of `f`.** -/
theorem decCallV {a : Act σ} (ha : ActOK a X) {A : AEnv} {x f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = false) {V : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hV : FunSpec σ X f (fun vs _ r _ => ∀ v, r = .returned v → V vs v))
    {J J' : LocalsS → Prop} {rt : List RT} {o : AOut} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    (hargs : ∀ (s : State σ) p, InCtx s X → Heap a Γ p s → TempsOK a A Γ p Θ →
      LocalsOK A Γ Θ s → J s.locals → ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x)
    (hJ : ∀ (s st : State σ) vs v, J s.locals → evs s args = some vs → V vs v →
      J' (setVarHOLFinite x v { st with locals := s.locals }).locals)
    (hk : ∀ Γ', Ext Γ Γ' → HoareG σ X (fun t => IG a ⟨setL x .unk A.L, A.T⟩ Γ' Θ t ∧ J' t.locals)
      k (SPost a rt o Γ' Θ)) :
    HoareG σ X (fun s => IG a A Γ Θ s ∧ J s.locals) (.decCall x sh f args k)
      (SPost a rt ⟨o.nrm.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
        o.brk.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
        o.cnt.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv))⟩ Γ Θ) := by
  refine hoareG_decCall (FunSpec.and (summ_funSpec hf) hV) ?_ ?_
  · intro s hs ⟨⟨p, hh, ht, hl⟩, hJs⟩ vs hvs callee v st ⟨hR, hVv⟩ _ _
    obtain ⟨hA, hF⟩ := hargs s p hs hh ht hl hJs vs hvs
    obtain ⟨Γ', q', hext, hh', ht', -⟩ := callC_core ha hh ht hR (by simp [Good])
      (by simp [Abortive]) hA hF hgw hgr
    have hh1 : Heap a Γ' q' (setVarHOLFinite x v { st with locals := s.locals }) :=
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'
    have hl1 : LocalsOK ⟨setL x .unk A.L, A.T⟩ Γ' Θ
        (setVarHOLFinite x v { st with locals := s.locals }) :=
      locals_set (s := { st with locals := s.locals }) (locals_ext hext hl) (av := .unk) trivial
    have hJ1 := hJ s st vs v hJs hvs (hVv v rfl)
    intro t htc hst hgood
    subst hst
    exact cont_post ha.hH hl ⟨hext, List.prefix_refl _⟩
      (hk Γ' hext _ htc ⟨⟨q', hh1, ht', hl1⟩, hJ1⟩ hgood)
  · intro s hs ⟨⟨p, hh, ht, hl⟩, hJs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    obtain ⟨hA, hF⟩ := hargs s p hs hh ht hl hJs vs hvs
    exact callC_abn ha hh ht hR habn hA hF hgw hgr rt _

/-- `SPost` carries over to earlier ghosts. -/
theorem spost_weaken {a : Act σ} {rt : List RT} {o : AOut} {Γ Γ' : Gam}
    {Θ Θ' : List (BitVec 64 × Nat)} (hlat : Later Γ Θ Γ' Θ') {r : Option (PanSemResultExact 64)}
    {t : State σ} (h : SPost a rt o Γ' Θ' r t) : SPost a rt o Γ Θ r t := by
  rcases r with _ | (_ | _ | _ | _ | _ | v | ⟨e, v⟩ | e)
  all_goals first
    | (obtain ⟨B, Γ'', Θ'', hB, hl, hig⟩ := h
       exact ⟨B, Γ'', Θ'', hB, later_trans hlat hl, hig⟩)
    | (obtain ⟨Γ'', p, he, hh, hr⟩ := h
       exact ⟨Γ'', p, ext_trans hlat.1 he, hh, hr⟩)
    | (rcases h with hab | ⟨Γ'', p, he, hh⟩
       · exact Or.inl hab
       · exact Or.inr ⟨Γ'', p, ext_trans hlat.1 he, hh⟩)

/-- **Sequencing after a statement that ends normally in `A'`.** -/
theorem hoareG_seqN {a : Act σ} {P : State σ → Prop} {p q : ProgHOL 64} {A' : AEnv}
    {rt : List RT} {o : AOut} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    (hp : HoareG σ X P p (SPost a rt (.normal A') Γ Θ))
    (hq : ∀ Γ' Θ', Later Γ Θ Γ' Θ' → HoareG σ X (IG a A' Γ' Θ') q (SPost a rt o Γ' Θ')) :
    HoareG σ X P (.seq p q) (SPost a rt o Γ Θ) := by
  refine hoareG_seq hp ?_ ?_
  · intro r t _ hr _ h
    rcases r with _ | (_ | _ | _ | _ | _ | v | ⟨e, v⟩ | e)
    · exact absurd rfl hr
    all_goals first
      | (obtain ⟨B, -, -, hB, -⟩ := h; cases hB)
      | exact h
  · intro s hs ⟨B, Γ', Θ', hB, hlat, hig⟩ hg
    cases hB
    exact spost_weaken hlat (hq Γ' Θ' hlat s hs hig hg)

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.callC
#print axioms InitECandidate.Solver.MemSafe.Ssz.decCallV
#print axioms InitECandidate.Solver.MemSafe.Ssz.hoareG_seqN
