import InitECandidate.Solver.MemSafe.Rec.TxKit2

set_option autoImplicit false

/-!
# Rules for `decode_access_list`

On top of `DI` and `TxKit*`:

* `AllocOut`, `alloc_out`: what a good `alloc` call gives (block bounds, `BlkF`, freshness against the
  entry allocator state);
* `hoareG_allocDI` (`var x = alloc(e); k`, continuation ends abnormally, the `DI` block is replaced by the
  new block or kept) and `hoareG_allocDQ` (loop body: the `DI` block is kept, the new block is only
  recorded in the client predicate);
* `hoareG_whileDIx`: a `while` whose invariant is indexed by a ghost `I` (so the locals predicate and
  the memory predicate can talk about the same counter);
* `hoareG_guardDL`: `if c { raise x e; }` whose continuation learns the negated condition.
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

/-! ## A constructor post that also sees the final memory -/

/-- Like `NQ`, but the value fact `Rv` also sees the final memory. -/
def NQM (a : Act σ) (Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  r ≠ none ∧ ∀ r', r = some r' → ¬ Abortive r' → ∃ (Γ' : Gam) (p' : Ptrs), Ext a.Γ0 Γ' ∧
    Heap a Γ' p' t ∧ ∀ v, r' = .returned v → Rv Γ' p' t.memory v

theorem nqm_of_abn {a : Act σ} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    ∀ r (t : State σ), r ≠ none → (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) →
      NQM a Rv r t := by
  intro r t hr h
  refine ⟨hr, fun r' hr' hna => ?_⟩
  obtain ⟨Γ, p, he, hh⟩ := (h r' hr').2 hna
  exact ⟨Γ, p, he, hh, fun v hv => absurd hv (Node.abn_ne_ret (h r' hr').1 v)⟩

theorem nqm_locals {a : Act σ} (hH : HooksLawful a.C a.H) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (L : LocalsH) (h : NQM a Rv r t) :
    NQM a Rv r { t with locals := L } := by
  refine ⟨h.1, fun r' hr' hna => ?_⟩
  obtain ⟨Γ, p, he, hh, hv⟩ := h.2 r' hr' hna
  exact ⟨Γ, p, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hv⟩

theorem hoareG_seqDIM {a : Act σ} {P : State σ → Prop} {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {c k : ProgHOL 64}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hc : HoareG σ X P c (DQ a Ar n L E)) (hk : HoareG σ X (DI a Ar n L E) k (NQM a Rv)) :
    HoareG σ X P (.seq c k) (NQM a Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => nqm_of_abn r t hr h.2) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem hoareG_decDIM {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {x : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {k : ProgHOL 64} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (DI a Ar n L' E) k (NQM a Rv)) :
    HoareG σ X (DI a Ar n L E) (.dec x sh e k) (NQM a Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hF, hn, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => nqm_locals hH _ hq)
  subst ht
  exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hF, hn, hE⟩

theorem hoareG_retDIM {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {e : ExpHOL 64}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hH : HooksLawful a.C a.H)
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → ∀ v, ev s e = some v → Rv Γ q s.memory v) :
    HoareG σ X (DI a Ar n L E) (.return e) (NQM a Rv) := by
  refine hoareG_return fun s hs ⟨hL, Γ, q, he, hh, hB, hn, hE⟩ v hv => ?_
  refine ⟨by simp, fun r' hr' hna => ?_⟩
  simp only [Option.some.injEq] at hr'
  subst hr'
  refine ⟨Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, fun v' hv' => ?_⟩
  simp only [PanSemResultExact.returned.injEq] at hv'
  subst hv'
  exact h s hs hL Γ q he hh hB hn hE v hv

theorem hoareG_decCallDIM {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig}
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hLc : FunSpec σ X f Lc)
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop}
    {E' : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hlen : ∀ s : State σ, InCtx s X → L s.locals → ∀ vs, evs s args = some vs →
      sg'.params.length = vs.length)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals → shapeEqHOL (shapeOfHOLExact v) sh = true →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COut a sg' Γ Γ' q q' s st → shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar n Γ'' q'' ∧
        E' v Γ'' q'' st.memory st.globals)
    (hk : ∀ v, HoareG σ X (DI a Ar n (L' v) (E' v)) k (NQM a Rv)) :
    HoareG σ X (DI a Ar n L E) (.decCall rn sh f args k) (NQM a Rv) := by
  refine hoareG_decCall ((summ_funSpec hf).and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callM ha hh hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    obtain ⟨Γ'', q'', he'', hh'', hB'', hE''⟩ := hpost s st vs callee v Γ Γ' p q' hs hL hvs hLc'
      he hh hB hn hEs ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => nqm_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st v hL hsh, Γ'', q'', he'', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'', hB'',
      hn, hE''⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨by simp, fun r' hr' => ?_⟩
    cases hr'
    intro hna
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callM ha hh hR (abn_good' habn) hna
      (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- `sumSpecA_of_heapQG` with a value fact that also sees the final memory. -/
theorem sumSpecA_of_heapQM {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Rx : List (ValueHOL 64) → Gam → Mem → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v ∧ Rx vs Γ' t.memory v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False)
      (fun vs _ _ r t Γ' => ∀ v, r = .returned v → Rx vs Γ' t.memory v) := by
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

/-! ## Frozen byte ranges -/

/-- The byte range `[b, b + n)` is allocated at `q` and lies outside every object of `Γ`. -/
def FzB (b n : Nat) (Γ : Gam) (q : Ptrs) : Prop :=
  ∀ x : BitVec 64, b ≤ x.toNat → x.toNat < b + n → ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat

theorem fzB_after {b n : Nat} {Γ Γ' : Gam} {p q : Ptrs} (hord : p.Ordered) (hord' : q.Ordered)
    (hm : p.Mono q) (hnf : NewFresh Γ Γ' p q) (h : FzB b n Γ p) : FzB b n Γ' q := by
  intro x hx1 hx2
  obtain ⟨h1, h2⟩ := h x hx1 hx2
  refine ⟨?_, alloc_mono hm h2⟩
  rintro ⟨o, ho, hlo, hhi⟩
  rcases hnf o ho x hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
  · exact h1 ⟨o0, ho0, hlo0, hhi0⟩
  · exact fresh_not_alloc hord hord' hm hfr h2

theorem wcell_inObj {a : Act σ} {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s)
    {x : BitVec 64} (h : WCell a.Cb Γ x) : InObj Γ x.toNat := by
  obtain ⟨o, ho, k, hk, -, rfl⟩ := h
  obtain ⟨p, hp, hord, hL, -⟩ := hh.1
  obtain ⟨hc, -⟩ := cell_toNat hord hL ho hk
  unfold Obj.HasSlot at hk
  exact ⟨o, ho, by rw [hc]; omega, by rw [hc]; unfold Obj.hi Obj.lo; omega⟩

theorem notW_of_fz {a : Act σ} {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s)
    {b n : Nat} (hf : FzB b n Γ q) {x : BitVec 64} (h1 : b ≤ x.toNat) (h2 : x.toNat < b + n) :
    ¬ WCell a.Cb Γ x := fun hw => (hf x h1 h2).1 (wcell_inObj hh hw)

/-- A fresh array returned by a non-growing call. -/
theorem fzB_arr {a : Act σ} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    (hh0 : Heap a Γ q s) (hh : Heap a Γ' q' st) (hnfp : NewFresh Γ Γ' q q) {b n : Nat}
    (hb : 0 < n → q.hp ≤ b) (hbn : b + n ≤ q'.hp) : FzB b n Γ' q' := by
  intro x hx1 hx2
  have hn : 0 < n := by omega
  have hq := hb hn
  have hord := heap_ord hh0
  have hord' := heap_ord hh
  obtain ⟨p, hp, hordp, hL, -⟩ := hh0.1
  rw [hh0.2.1] at hp
  cases hp
  obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord
  obtain ⟨c1, c2, c3, c4, c5, -, -, -⟩ := hord'
  refine ⟨?_, Or.inl ⟨by omega, by omega⟩⟩
  rintro ⟨o, ho, hlo, hhi⟩
  rcases hnfp o ho x hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
  · have hal := Struct.inObj_alloc hordp hL ho0 hlo0 hhi0
    unfold Ptrs.Allocated at hal
    unfold heapBase heapEnd scratchEnd at *
    omega
  · unfold Fresh at hfr
    omega

/-! ## `alloc` inside a `DI` activation -/

/-- The relational part of `AllocSpec`. -/
def AllocRel (σ : Type) (rg : Region) (vs : List (ValueHOL 64)) (s : State σ)
    (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ∀ n p, vs = [.val (.word n)] →
    ptrsOf s = some p → p.Ordered →
      t.memory = s.memory ∧ (∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g) ∧
      ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
        ∀ v, r = .returned v → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
          rg.Live p' q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat →
            ¬ p.Allocated a

/-- What a good `alloc(SZ)` returning `K` guarantees. -/
structure AllocOut (a : Act σ) (K SZ : BitVec 64) (Γ Γ2 : Gam) (q q2 : Ptrs) (s st : State σ) : Prop where
  co : COut a allocSig Γ Γ2 q q2 s st
  nowrap : K.toNat + SZ.toNat < 2 ^ 64 ∨ SZ.toNat = 0
  stat : heapBase ≤ K.toNat ∧ K.toNat + SZ.toNat ≤ heapEnd ∧ K.toNat % 8 = 0
  blk : BlkF K SZ.toNat Γ2 q2
  fresh : ∀ z : BitVec 64, Overlap K.toNat SZ.toNat z → ¬ q.Allocated z.toNat
  fresh0 : ∀ z : BitVec 64, Overlap K.toNat SZ.toNat z → ¬ a.p0.Allocated z.toNat
  mem : st.memory = s.memory

theorem alloc_out {a : Act σ} (ha : ActOK a X) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh1 : Heap a Γ q s) {SZ Ar : BitVec 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {st : State σ}
    (hR : SummR a.Cb a.H allocSig [] [.val (.word SZ)] (callEntryStateHOLFinite s callee)
      (.returned (.val (.word Ar))) st)
    (hR' : AllocRel σ .heap [.val (.word SZ)] (callEntryStateHOLFinite s callee)
      (.returned (.val (.word Ar))) st) :
    ∃ (Γ2 : Gam) (q2 : Ptrs), Ext Γ Γ2 ∧ Heap a Γ2 q2 st ∧ AllocOut a Ar SZ Γ Γ2 q q2 s st := by
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  obtain ⟨Γ2, q2, he2, hh2, hm2, hnf2, hnfp2, hmod, hret⟩ := heap_callM ha hh1 hR (by simp [Good])
    (by simp [Abortive]) (argsOK_any hpsa rfl) hpsa (by simp [allocSig]) (by simp [allocSig])
  obtain ⟨y, hy, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Ar rfl (by rw [flattenHOL]; rfl)
  have hye : y = SZ := by
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hy
    exact hy.symm
  subst hye
  have hfb' : FreshBuf Γ2 q q2 Ar y.toNat := by simpa using hfb
  clear hfb
  have hord1 := heap_ord hh1
  have hord2 := heap_ord hh2
  have hm1 : a.p0.Mono q := hh1.2.2.1
  have hArn : Ar.toNat + y.toNat < 2 ^ 64 ∨ y.toNat = 0 := by
    rcases freshBuf_bound hord1 hord2 hfb' with h | h
    · exact Or.inr h
    · exact Or.inl h
  have hpt : ptrsOf (callEntryStateHOLFinite s callee) = some q := by
    have := hh1.2.1
    unfold ptrsOf gword at this ⊢
    exact this
  obtain ⟨hmem, -, p', hp', -, -, hvv⟩ := hR' (by simp [Good]) y q rfl hpt hord1
  obtain ⟨Ar, hAr, -, hlive, -⟩ := hvv _ rfl
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hAr
  subst hAr
  have hp2 : p' = q2 := by
    have h1 := hh2.2.1
    rw [hp'] at h1
    exact Option.some.inj h1
  subst hp2
  have hstat : heapBase ≤ Ar.toNat ∧ Ar.toNat + y.toNat ≤ heapEnd ∧ Ar.toNat % 8 = 0 := by
    have h8 := hfb'.1
    simp only [Region.Live] at hlive
    obtain ⟨b1, b2, -⟩ := hord2
    omega
  refine ⟨Γ2, p', he2, hh2, ⟨⟨hh1, he2, hh2, hm2, hnf2, hnfp2, fun x _ _ => ?_⟩, hArn, hstat, ?_, ?_, ?_, hmem⟩⟩
  · exact congrFun hmem x
  · exact fun z hz => ⟨(hfb'.2 z hz).2, fresh_alloc hord1 (hfb'.2 z hz).1⟩
  · exact fun z hz => fresh_not_alloc hord1 hord2 hm2 (hfb'.2 z hz).1
  · exact fun z hz => fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2)
      (fresh_mono hm1 (hfb'.2 z hz).1)

/-- `var x = alloc(e); k` in a `DI` activation; the continuation ends abnormally. The `DI` block of the
continuation is `(Ar2 K, n2 K)` (the old one, or the new one when the old block is empty). -/
theorem hoareG_allocDI {a : Act σ} (ha : ActOK a X) (hAS : AllocSpec σ X (nm "alloc") .heap)
    (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig [])
    {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {SZ : BitVec 64}
    {Ar2 : BitVec 64 → BitVec 64} {n2 : BitVec 64 → Nat}
    {L' : BitVec 64 → LocalsH → Prop} {E' : BitVec 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hev : ∀ s : State σ, InCtx s X → L s.locals → ev s e = some (.val (.word SZ)))
    (hL' : ∀ (s st : State σ) (K : BitVec 64), L s.locals →
      L' K (setVarHOLFinite x (.val (.word K)) { st with locals := s.locals }).locals)
    (hpost : ∀ (s st : State σ) (K : BitVec 64) (Γ Γ2 : Gam) (q q2 : Ptrs), InCtx s X → L s.locals →
      Ext a.Γ0 Γ → Heap a Γ q s → BlkF Ar n Γ q →
      (∀ z : BitVec 64, Overlap Ar.toNat n z → ¬ a.p0.Allocated z.toNat) →
      E Γ q s.memory s.globals → AllocOut a K SZ Γ Γ2 q q2 s st →
      BlkF (Ar2 K) (n2 K) Γ2 q2 ∧
        (∀ z : BitVec 64, Overlap (Ar2 K).toNat (n2 K) z → ¬ a.p0.Allocated z.toNat) ∧
        E' K Γ2 q2 st.memory st.globals)
    (hk : ∀ K, HoareG σ X (DI a (Ar2 K) (n2 K) (L' K) (E' K)) k (NQM a Rv)) :
    HoareG σ X (DI a Ar n L E) (.decCall x .one (nm "alloc") [e] k) (NQM a Rv) := by
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  refine hoareG_decCall ((summ_funSpec halloc).and hAS) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh1, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    rw [evs_cons (hev s hs hL) evs_nil] at hvs
    cases hvs
    obtain ⟨K, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨Γ2, q2, he2, hh2, ho⟩ := alloc_out ha hh1 hR hR'
    obtain ⟨hB2, hn2, hE2⟩ := hpost s st K Γ Γ2 q q2 hs hL he hh1 hB hn hEs ho
    refine hoareG_conseq (hk K) (fun t _ ht => ?_) (fun r t _ _ hq => nqm_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st K hL, Γ2, q2, ext_trans he he2,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hB2, hn2, hE2⟩
  · intro s hs ⟨hL, Γ, q, he, hh1, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨by simp, fun r' hr' => ?_⟩
    cases hr'
    intro hna
    rw [evs_cons (hev s hs hL) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna
      (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2,
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- `var x = alloc(e); k` in a loop body (normal-end continuation); the `DI` block is kept. -/
theorem hoareG_allocDQ {a : Act σ} (ha : ActOK a X) (hAS : AllocSpec σ X (nm "alloc") .heap)
    (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig [])
    {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {SZ : BitVec 64}
    {L' L2 : BitVec 64 → LocalsH → Prop} {E' E2 : BitVec 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {Lf : LocalsH → Prop} {Ef : Gam → Ptrs → Mem → LocalsH → Prop}
    (hev : ∀ s : State σ, InCtx s X → L s.locals → ev s e = some (.val (.word SZ)))
    (hL' : ∀ (s st : State σ) (K : BitVec 64), L s.locals →
      L' K (setVarHOLFinite x (.val (.word K)) { st with locals := s.locals }).locals)
    (hpost : ∀ (s st : State σ) (K : BitVec 64) (Γ Γ2 : Gam) (q q2 : Ptrs), InCtx s X → L s.locals →
      Ext a.Γ0 Γ → Heap a Γ q s → BlkF Ar n Γ q →
      (∀ z : BitVec 64, Overlap Ar.toNat n z → ¬ a.p0.Allocated z.toNat) →
      E Γ q s.memory s.globals → AllocOut a K SZ Γ Γ2 q q2 s st →
      E' K Γ2 q2 st.memory st.globals)
    (hk : ∀ K, HoareG σ X (DI a Ar n (L' K) (E' K)) k (DQ a Ar n (L2 K) (E2 K)))
    (hresL : ∀ (m0 m : LocalsH) (K : BitVec 64), L m0 → L2 K m → Lf (m.resVarEq (x, m0.lookup x)))
    (hresE : ∀ K Γ q mem g, E2 K Γ q mem g → Ef Γ q mem g) :
    HoareG σ X (DI a Ar n L E) (.decCall x .one (nm "alloc") [e] k) (DQ a Ar n Lf Ef) := by
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  refine hoareG_decCall ((summ_funSpec halloc).and hAS) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh1, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    rw [evs_cons (hev s hs hL) evs_nil] at hvs
    cases hvs
    obtain ⟨K, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨Γ2, q2, he2, hh2, ho⟩ := alloc_out ha hh1 hR hR'
    have hE2 := hpost s st K Γ Γ2 q q2 hs hL he hh1 hB hn hEs ho
    have hB2 := blkF_after (heap_ord hh1) (heap_ord hh2) ho.co.mono ho.co.nf hB
    refine hoareG_conseq (hk K) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨hL' s st K hL, Γ2, q2, ext_trans he he2,
        heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hB2, hn, hE2⟩
    · intro r t _ _ hq
      refine ⟨fun hr => ?_, fun r' hr' => ?_⟩
      · obtain ⟨hL2, Γ3, q3, he3, hh3, hB3, hn3, hE3⟩ := hq.1 hr
        exact ⟨hresL _ _ K hL hL2, Γ3, q3, he3,
          heap_congr (s := t) ha.hH
            (t := { t with locals := t.locals.resVarEq (x, s.locals.lookup x) })
            rfl rfl rfl rfl hh3, hB3, hn3, hresE _ _ _ _ _ hE3⟩
      · obtain ⟨h1, h2⟩ := hq.2 r' hr'
        refine ⟨h1, fun hna => ?_⟩
        obtain ⟨Γ3, q3, he3, hh3⟩ := h2 hna
        exact ⟨Γ3, q3, he3, heap_congr (s := t) ha.hH
          (t := { t with locals := t.locals.resVarEq (x, s.locals.lookup x) }) rfl rfl rfl rfl hh3⟩
  · intro s hs ⟨hL, Γ, q, he, hh1, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    rw [evs_cons (hev s hs hL) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna
      (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2⟩

theorem hoareG_decDQE {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L L' L2 Lf : LocalsH → Prop} {E E2 : Gam → Ptrs → Mem → LocalsH → Prop} {x : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (DI a Ar n L' E) k (DQ a Ar n L2 E2))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → Lf (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (DI a Ar n L E) (.dec x sh e k) (DQ a Ar n Lf E2) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hF, hn, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hF, hn, hE⟩
  · exact dq_locals hH (fun m => m.resVarEq (x, s.locals.lookup x)) (fun m hm => hres _ m hL hm) hq

/-! ## A loop with a ghost index -/

theorem hoareG_whileDIx {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L : Nat → LocalsH → Prop} {E : Nat → Gam → Ptrs → Mem → LocalsH → Prop}
    {Lx : LocalsH → Prop} {Ex : Gam → Ptrs → Mem → LocalsH → Prop} {c : ExpHOL 64}
    {body : ProgHOL 64}
    (hb : ∀ I : Nat, HoareG σ X (fun s => DI a Ar n (L I) (E I) s ∧ CondTrue s c) body
      (fun r t => (r = none → ∃ I', DI a Ar n (L I') (E I') t) ∧
        ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)))
    (hexit : ∀ (s : State σ) (I : Nat), InCtx s X → DI a Ar n (L I) (E I) s →
      ev s c = some (.val (.word 0)) → DI a Ar n Lx Ex s) :
    HoareG σ X (fun s => ∃ I, DI a Ar n (L I) (E I) s) (.while c body) (DQ a Ar n Lx Ex) := by
  have hb' : HoareG σ X (fun s => (∃ I, DI a Ar n (L I) (E I) s) ∧ CondTrue s c) body
      (fun r t => (r = none → ∃ I', DI a Ar n (L I') (E I') t) ∧
        ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) :=
    fun s hs ⟨⟨I, hD⟩, hc⟩ hg => hb I s hs ⟨hD, hc⟩ hg
  refine hoareG_while (I := fun s => ∃ I, DI a Ar n (L I) (E I) s) ?_ ?_ ?_
  · intro t ⟨I, hL, Γ, q, he, hh, hB, hn, hE⟩
    exact ⟨I, hL, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hB, hn, hE⟩
  · refine hoareG_conseq hb' (fun s _ h => h) ?_
    intro r t _ _ h
    have hnab : ∀ r', r = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      have := (h.2 r' hr').1
      rcases this with ⟨e, v, he⟩ | ⟨e, he⟩ <;> rcases hcb with rfl | rfl <;> cases he
    refine ⟨h.1, fun hc => (hnab _ hc (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩
  · intro s hs ⟨I, hD⟩ hc
    exact ⟨fun _ => hexit s I hs hD hc, fun r' h => absurd h (by simp)⟩

/-! ## A guard that reports the negated condition -/

theorem hoareG_guardDL {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ExpHOL 64} {x : MlS}
    {e : ExpHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ev s c = some (.val (.word 0)) → L' s.locals) :
    HoareG σ X (DI a Ar n L E) (.ite c (.raise x e) .skip) (DQ a Ar n L' E) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_raise fun s hs ⟨hD, _⟩ v hv => ⟨fun h => by simp at h, fun r' hr' => ?_⟩
    simp only [Option.some.injEq] at hr'
    subst hr'
    refine ⟨Or.inl ⟨x, v, rfl⟩, fun _ => ?_⟩
    exact hha_congr (s := s) hH rfl rfl rfl rfl (hha_of_di hD)
  · refine hoareG_skip fun s hs ⟨hD, hc⟩ => ⟨fun _ => ?_, fun r' h => absurd h (by simp)⟩
    obtain ⟨hL, Γ, q, he, hh, hB, hn, hE⟩ := hD
    exact ⟨h s hs hL hc, Γ, q, he, hh, hB, hn, hE⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_decDQE
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_allocDI
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_allocDQ
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_whileDIx
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_guardDL
