import InitECandidate.Solver.MemSafe.Rec.TxKit

set_option autoImplicit false

/-!
# More rules for the transaction decoders

* `LV kv`: the locals hold the values `kv` (words or structs); `lv_set`, `lv_res`.
* `hoareG_decCallLV`: `var x = f(args); k` for an all-`any` callee in a loop body (normal-end post `DQ`,
  the memory-independent client predicate `Φ`).
* `hoareG_decDQ`: `var x = e; k` with a normal-end continuation.
* `hoareG_guardDI`: `if c { raise x e; }`.
* `hoareG_stDIN`: a (multi-word) store into the `DI` block.
* `sumSpecA_of_heapQG`: `sumSpecA_of_heap` with a value fact that sees the final typing `Γ'`.
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

theorem evs_len2 {s : State σ} : ∀ {es : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s es = some vs → vs.length = es.length
  | [], vs, h => by rw [evs_nil] at h; cases h; rfl
  | a :: es, vs, h => by
      obtain ⟨v, vs', rfl, -, h'⟩ := evs_cons_inv h
      simp [evs_len2 h']

/-! ## Locals as a list of values -/

def LV (kv : List (MlS × ValueHOL 64)) (m : LocalsH) : Prop := ∀ q ∈ kv, m.lookup q.1 = some q.2

theorem lv_set {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LV kv s.locals) {x : MlS}
    (hn : ∀ q ∈ kv, q.1 ≠ x) (v : ValueHOL 64) : LV kv (setVarHOLFinite x v s).locals := by
  intro q hq
  rw [lk_set_ne _ _ (Ne.symm (hn q hq))]
  exact h q hq

theorem lv_res {kv : List (MlS × ValueHOL 64)} {m : LocalsH} (h : LV kv m) {x : MlS}
    (hn : ∀ q ∈ kv, q.1 ≠ x) (o : Option (ValueHOL 64)) : LV kv (m.resVarEq (x, o)) := by
  intro q hq
  rw [lookup_resVarEq_ne _ _ (Ne.symm (hn q hq))]
  exact h q hq

theorem lv_sub {kv kv' : List (MlS × ValueHOL 64)} {m : LocalsH} (h : LV kv m)
    (hs : ∀ q ∈ kv', q ∈ kv) : LV kv' m := fun q hq => h q (hs q hq)

theorem coa_keep {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {Ar : BitVec 64} {n : Nat} (he : Ext a.Γ0 Γ) (co : COutA a sg' vs Γ Γ' q q' s st)
    (hB : BlkF Ar n Γ q) :
    ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar n Γ'' q'' :=
  ⟨Γ', q', ext_trans he co.ext, co.heap, blkF_after (heap_ord co.heap0) (heap_ord co.heap) co.mono co.nf hB⟩

/-! ## Statement-level post transport -/

theorem dq_locals {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L2 Lf : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (f : LocalsH → LocalsH)
    (hf : ∀ m, L2 m → Lf (f m)) (hq : DQ a Ar n L2 E r t) :
    DQ a Ar n Lf E r { t with locals := f t.locals } := by
  refine ⟨fun hr => ?_, fun r' hr' => ?_⟩
  · obtain ⟨hL2, Γ3, q3, he3, hh3, hB3, hn3, hE3⟩ := hq.1 hr
    exact ⟨hf _ hL2, Γ3, q3, he3, heap_congr (s := t) hH
      (t := { t with locals := f t.locals }) rfl rfl rfl rfl hh3, hB3, hn3, hE3⟩
  · obtain ⟨h1, h2⟩ := hq.2 r' hr'
    refine ⟨h1, fun hna => ?_⟩
    obtain ⟨Γ3, q3, he3, hh3⟩ := h2 hna
    exact ⟨Γ3, q3, he3, heap_congr (s := t) hH (t := { t with locals := f t.locals })
      rfl rfl rfl rfl hh3⟩

theorem hoareG_decDQ {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L L' L2 Lf : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {x : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (DI a Ar n L' E) k (DQ a Ar n L2 E))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → Lf (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (DI a Ar n L E) (.dec x sh e k) (DQ a Ar n Lf E) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hF, hn, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hF, hn, hE⟩
  · exact dq_locals hH (fun m => m.resVarEq (x, s.locals.lookup x)) (fun m hm => hres _ m hL hm) hq

theorem hoareG_decCallLV {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar : BitVec 64} {n : Nat} {kv kv2 : List (MlS × ValueHOL 64)} {Φ : Prop} {k : ProgHOL 64}
    (hn1 : ∀ q ∈ kv, q.1 ≠ rn) (hn2 : ∀ q ∈ kv2, q.1 ≠ rn)
    (hk : HoareG σ X (DI a Ar n (LV kv) (fun _ _ _ _ => Φ)) k
      (DQ a Ar n (LV kv2) (fun _ _ _ _ => Φ))) :
    HoareG σ X (DI a Ar n (LV kv) (fun _ _ _ _ => Φ)) (.decCall rn sh f args k)
      (DQ a Ar n (LV kv2) (fun _ _ _ _ => Φ)) := by
  refine hoareG_decCallDQ ha hf (funSpec_true _) hgw hgr
    (L' := fun _ => LV kv) (E' := fun _ _ _ _ _ => Φ) (L2 := fun _ => LV kv2)
    (E2 := fun _ _ _ _ _ => Φ) (Lf := LV kv2) (Ef := fun _ _ _ _ => Φ) ?_ ?_ ?_ (fun _ => hk)
    (fun m0 m v _ h => lv_res h hn2 _) (fun _ _ _ _ _ h => h)
  · intro s hs hL Γ q he hh hB hn hE vs hvs
    exact ⟨argsOK_any hps (by rw [evs_len2 hvs]; exact hlen),
      fun x hx => absurd hx (argCells_any hps)⟩
  · intro s st v hL hsh
    exact lv_set (s := { st with locals := s.locals }) hL hn1 v
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨Γ'', q'', he'', hh'', hB''⟩ := coa_keep he co hB
    exact ⟨Γ'', q'', he'', hh'', hB'', hE⟩

theorem hoareG_decCallP {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar : BitVec 64} {n : Nat} {Φ : Prop} {L Lf : LocalsH → Prop}
    {L' L2 : ValueHOL 64 → LocalsH → Prop} {k : ProgHOL 64}
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals → shapeEqHOL (shapeOfHOLExact v) sh = true →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, HoareG σ X (DI a Ar n (L' v) (fun _ _ _ _ => Φ)) k
      (DQ a Ar n (L2 v) (fun _ _ _ _ => Φ)))
    (hres : ∀ (m0 m : LocalsH) (v : ValueHOL 64), L m0 → L2 v m →
      Lf (m.resVarEq (rn, m0.lookup rn))) :
    HoareG σ X (DI a Ar n L (fun _ _ _ _ => Φ)) (.decCall rn sh f args k)
      (DQ a Ar n Lf (fun _ _ _ _ => Φ)) := by
  refine hoareG_decCallDQ ha hf (funSpec_true _) hgw hgr
    (L' := L') (E' := fun _ _ _ _ _ => Φ) (L2 := L2)
    (E2 := fun _ _ _ _ _ => Φ) (Lf := Lf) (Ef := fun _ _ _ _ => Φ) ?_ hL' ?_ hk
    (fun m0 m v hl h => hres m0 m v hl h) (fun _ _ _ _ _ h => h)
  · intro s hs hL Γ q he hh hB hn hE vs hvs
    exact ⟨argsOK_any hps (by rw [evs_len2 hvs]; exact hlen),
      fun x hx => absurd hx (argCells_any hps)⟩
  · intro s st vs callee v Γ Γ' q q' hs' hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨Γ'', q'', he'', hh'', hB''⟩ := coa_keep he co hB
    exact ⟨Γ'', q'', he'', hh'', hB'', hE⟩

theorem hoareG_callAP {a : Act σ} (ha : ActOK a X) {w f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' [])
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar : BitVec 64} {n : Nat} {Φ : Prop} {L L' : LocalsH → Prop}
    (h : ∀ (s : State σ) (v : ValueHOL 64), L s.locals →
      isValidValueHOLExact s.toExact .local w v = true → L' (setVarHOLFinite w v s).locals) :
    HoareG σ X (DI a Ar n L (fun _ _ _ _ => Φ)) (.call (some (some (.local, w), none)) f args)
      (DQ a Ar n L' (fun _ _ _ _ => Φ)) := by
  refine hoareG_callA (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st hR _ hval
    have hA : ArgsOK a.Cb Γ p sg'.params vs :=
      argsOK_any hps (by rw [evs_len2 hvs]; exact hlen)
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callMA ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (fun x hx => absurd hx (argCells_any hps)) hgw hgr
    refine ⟨fun _ => ⟨h s v hL hval, Γ', q', ext_trans he he', ?_,
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn, hEs⟩, fun r' h => absurd h (by simp)⟩
    exact heap_congr (s := st) ha.hH (t := setKvarHOLFinite .local w v { st with locals := s.locals })
      rfl rfl rfl rfl hh'
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    have hA : ArgsOK a.Cb Γ p sg'.params vs :=
      argsOK_any hps (by rw [evs_len2 hvs]; exact hlen)
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMA ha hh hR (abn_good' habn) hna hA
      (fun x hx => absurd hx (argCells_any hps)) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

theorem hoareG_guardDI {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ExpHOL 64} {x : MlS}
    {e : ExpHOL 64} :
    HoareG σ X (DI a Ar n L E) (.ite c (.raise x e) .skip) (DQ a Ar n L E) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_raise fun s hs ⟨hD, _⟩ v hv => ⟨fun h => by simp at h, fun r' hr' => ?_⟩
    simp only [Option.some.injEq] at hr'
    subst hr'
    refine ⟨Or.inl ⟨x, v, rfl⟩, fun _ => ?_⟩
    exact hha_congr (s := s) hH rfl rfl rfl rfl (hha_of_di hD)
  · exact hoareG_skip fun s hs ⟨hD, _⟩ => ⟨fun _ => hD, fun r' h => absurd h (by simp)⟩

theorem hoareG_stDIN {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop}
    {Φ : Prop} {ea ev' : ExpHOL 64} (hrng : Ar.toNat + n < 2 ^ 64)
    (hall : ∀ s : State σ, InCtx s X → L s.locals → ∀ (w : BitVec 64) (v : ValueHOL 64),
      ev s ea = some (.val (.word w)) → ev s ev' = some v →
      ∃ j, 8 * j + 8 * (flattenHOL v).length ≤ n ∧ w = Ar + BitVec.ofNat 64 (8 * j)) :
    HoareG σ X (DI a Ar n L (fun _ _ _ _ => Φ)) (.store ea ev') (DQ a Ar n L (fun _ _ _ _ => Φ)) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ w v mem hw hv hst => ?_
  obtain ⟨j, hj, hws⟩ := hall s hs hL w v hw hv
  obtain ⟨hm, hdom⟩ := Helpers.stores_mod hst
  have hcell : ∀ i, i < (flattenHOL v).length → Overlap Ar.toNat n (w + BitVec.ofNat 64 (8 * i)) := by
    intro i hi
    have e : w + BitVec.ofNat 64 (8 * i) = Ar + BitVec.ofNat 64 (8 * (j + i)) := by
      rw [hws, BitVec.add_assoc, BitVec.ofNat_add_ofNat]
      congr 2
      omega
    have h8 : (w + BitVec.ofNat 64 (8 * i)).toNat % 8 = 0 :=
      ha.hal _ (hs.2.1 ▸ hdom i hi)
    have ec := Node.cell_toNat_bv hrng (i := j + i) (by omega)
    rw [e, ec] at h8
    rw [e]
    exact ⟨by rw [ec]; exact h8, by rw [ec]; omega, by rw [ec]; omega⟩
  refine ⟨fun _ => ⟨hL, Γ, p, he, ?_, hB, hn, hEs⟩, fun r' h => absurd h (by simp)⟩
  refine heap_store_buf ha hh hm (fun y ⟨i, hi, hy⟩ => Or.inr ?_) (fun y ⟨i, hi, hy⟩ => ?_)
  · subst hy; exact (hB _ (hcell i hi)).1
  · subst hy; exact Or.inr (Or.inr (Or.inl (hn _ (hcell i hi))))

/-- `sumSpecA_of_heapQ` with a value fact that sees the final typing. -/
theorem sumSpecA_of_heapQG {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Rx : List (ValueHOL 64) → Gam → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v ∧ Rx vs Γ' v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False)
      (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → Rx vs Γ' v) := by
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

/-! ## Calling a hand summary with a precondition and a value fact -/

theorem heap_callMPQ {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
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
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hps : ∀ pt ∈ sg'.params, pt = .any)
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
  have hh' := heap_after_call ha hh rfl rfl core (fun x hx => absurd hx (argCells_any hps))
    hgw hgr (capSub_nil _)
  obtain ⟨-, -, hmono, hext, hnf, -, hmod, -, hng', hret⟩ := core
  refine ⟨Γ', q', hext, hh', hmono, hnf, hng', fun x hx1 hx2 => ?_, hret, hQ⟩
  refine hmod x ?_
  rintro (h | h | h | ⟨-, c, hc, -⟩)
  · exact hx1 h
  · exact argCells_any hps h
  · exact h hx2
  · cases hc

theorem hoareG_decCallPreQ {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
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
      RetOK Γ' q q' vs sg'.ret v → Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar n Γ'' q'' ∧
        E' v Γ'' q'' st.memory st.globals)
    (hk : ∀ v, HoareG σ X (DI a Ar n (L' v) (E' v)) k (NQ a Rv)) :
    HoareG σ X (DI a Ar n L E) (.decCall rn sh f args k) (NQ a Rv) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st hR _ hsh
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, hret, hQ⟩ := heap_callMPQ ha hh hR
      (by simp [Good]) (by simp [Abortive]) (argsOK_any hps (hlen s hs hL vs hvs)) hps
      (hPre s vs Γ p hs hL hvs hh hEs _) hgw hgr
    obtain ⟨Γ'', q'', he'', hh'', hB'', hE''⟩ := hpost s st vs callee v Γ Γ' p q' hs hL hvs he hh hB
      hn hEs ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ (hret v rfl) hQ hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => nq_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st v hL hsh, Γ'', q'', he'', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'', hB'',
      hn, hE''⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st hR _ habn
    refine ⟨by simp, fun r' hr' => ?_⟩
    cases hr'
    intro hna
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMPQ ha hh hR (abn_good' habn) hna
      (argsOK_any hps (hlen s hs hL vs hvs)) hps (hPre s vs Γ p hs hL hvs hh hEs _) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_decDQ
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_decCallPreQ
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_decCallLV
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_guardDI
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_stDIN
#print axioms InitECandidate.Solver.MemSafe.Rec.sumSpecA_of_heapQG
