import InitECandidate.Solver.MemSafe.Mod.Max
import InitECandidate.Solver.MemSafe.Mod.Code
import InitECandidate.Solver.MemSafe.Struct.Eval

set_option autoImplicit false

/-!
# More rules for `pre_modexp`: capabilities, struct results, raises, marks in the middle

* `csumm_of_heap_caps`: `csumm_of_heap` for a function with capabilities `cs`;
* `heap_callC`, `hoareG_callKc`: a call to a callee with capabilities `cs' ⊆ a.caps`;
* `hoareG_decCallV`: `var x = f(args); k` for an arbitrary (struct) result value;
* `hoareG_decKH`: `var x = e; k` where the value fact needs the heap invariant;
* `hoareG_stwKS`: a store into a `scalar` cell, `hoareG_retRQ`: `return e`, `hoareG_relK`: `heap_release`
  followed by `PreH` statements, `hoareG_markK`: `var mark = heap_mark(); k` inside a window;
* `LP`: the locals as an association list of values (words or structs).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Mod
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- `csumm_of_heap` for a function with capabilities. -/
theorem csumm_of_heap_caps {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {cs : List Cap} (hcs : capsOK C sg cs = true)
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        ActOK (actOf C H sg cs vs s0 Γ0 p0) X → Heap (actOf C H sg cs vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg cs vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v)) :
    CSumm σ X C H f sg cs := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS hcs hG hps hargs hreq
  have HH := h vs body callee rs hl s hs hloc Γ p1 ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  exact ⟨Γ', p1, p', act_exit hcs hps hext hh' hret, trivial⟩

/-- A call to a callee with capabilities `cs' ⊆ a.caps`. -/
theorem heap_callC {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {cs' : List Cap} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    (hR : SummR a.Cb a.H sg' cs' vs (callEntryStateHOLFinite s callee) r st)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs)
    (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgrf : sg'.grows = false) (hcs : capSub cs' a.caps = true) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧ NewFresh Γ Γ' p p := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  have hreq0 := req_now ha hh
  have hreq : ReqOK a.caps (callEntryStateHOLFinite s callee) Γ := hreq0
  obtain ⟨Γ', q, q', core, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ (req_sub hcs hreq)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core hfoot hgw (fun h => by rw [hgrf] at h; cases h) hcs
  obtain ⟨-, -, hmono, hext, hnf, -, -, -, hng', hret⟩ := core
  exact ⟨Γ', q', hext, hh', hmono, hng' hgrf⟩

/-- **`f(args);`** for a non-growing callee with capabilities `cs' ⊆ a.caps`. -/
theorem hoareG_callKc {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {cs' : List Cap} (hf : CSumm σ X a.Cb a.H f sg' cs')
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false) (hcs : capSub cs' a.caps = true)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x)) :
    HoareG σ X (PK a K MK L) (.call (some (none, none)) f args) (SPK a K MK L) := by
  refine hoareG_callD (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf⟩ := heap_callC ha hh hR (by simp [Good])
      (by simp [Abortive]) hA hF hgw hgrf hcs
    have hh2 := heap_congr (s := st) ha.hH (t := { st with locals := s.locals }) rfl rfl rfl rfl hh'
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', hh2, Nat.le_trans hK hmo.1,
      winK_after ha hh' hmo hnf hw⟩, fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨(abn_nb habn).1, (abn_nb habn).2, fun hna => ?_⟩
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callC ha hh hR (abn_good' habn) hna hA hF hgw hgrf hcs
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'⟩

/-- **`var rn = f(args); k`** with an arbitrary result value `v` (`Fct v`). -/
theorem hoareG_decCallV {a : Act σ} (ha : ActOK a X) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R') (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop}
    {Fct : ValueHOL 64 → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
          ∀ s' : State σ, Pre vs s' Γ)
    (hret : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → Fct v)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hk : ∀ v, Fct v → HoareG σ X (PK a K MK (L' v)) k (HQa a)) :
    HoareG σ X (PK a K MK L) (.decCall rn sh f args k) (HQa a) := by
  refine hoareG_decCall (FunSpec.and hf hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_callK ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (hP _) hF hgw hgrf
    have hFv := hret s hL vs hvs callee v st hR' hsh
    refine hoareG_conseq (hk v hFv) (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st v hL, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', Nat.le_trans hK hmo.1,
      winK_after ha hh' hmo hnf hw⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, _⟩ _ habn r' hr' hna
    cases hr'
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callK ha hh hR (abn_good' habn) hna hA (hP _) hF hgw hgrf
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- **`var x = e; k`** where the new value's facts need the heap invariant. -/
theorem hoareG_decKH {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop} {Fct : ValueHOL 64 → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    (h : ∀ s : State σ, InCtx s X → L s.locals → HK a K MK s → ∀ v, ev s e = some v →
      Fct v ∧ L' v (setVarHOLFinite n v s).locals)
    (hk : ∀ v, Fct v → HoareG σ X (PK a K MK (L' v)) k (HQa a)) :
    HoareG σ X (PK a K MK L) (.dec n sh e k) (HQa a) := by
  refine hoareG_dec fun s hs ⟨hL, hK⟩ v hv _ => ?_
  obtain ⟨hF, hL'⟩ := h s hs hL hK v hv
  refine hoareG_conseq (hk v hF) (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals hH _ hq)
  subst ht
  exact ⟨hL', hk_congr hH (s := s) rfl rfl rfl rfl hK⟩

/-- A store into a `scalar` cell of the current `Γ`. -/
theorem hoareG_stwKS {a : Act σ} (ha : ActOK a X) {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ w, ev s ea = some (.val (.word w)) → w.toNat % 8 = 0 → SCell a.Cb Γ w)
    (hval : ∀ s : State σ, L s.locals → ∀ v, ev s ev' = some v → ∃ x, flattenHOL v = [x]) :
    HoareG σ X (PK a K MK L) (.store ea ev') (SPK a K MK L) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ w v mem hw' hv hst => ?_
  obtain ⟨x, hx⟩ := hval s hL v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst
  have hc := haddr s hs hL Γ p he hh w hw' (ha.hal w (hs.2.1 ▸ hdom))
  exact ⟨fun _ => ⟨hL, Γ, p, he, heap_store_scell ha hh hm fun y hy => hy ▸ hc, hK, hw⟩,
    fun r' h => absurd h (by simp)⟩

/-- **Eon.** A store of a word below `2^32` into a `bnd` cell of the current `Γ`. -/
theorem hoareG_stwBKS {a : Act σ} (ha : ActOK a X) {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ w, ev s ea = some (.val (.word w)) → w.toNat % 8 = 0 → BCell a.Cb Γ w)
    (hval : ∀ s : State σ, L s.locals → ∀ v, ev s ev' = some v →
      ∃ x : BitVec 64, v = .val (.word x) ∧ x.toNat < 2 ^ 32) :
    HoareG σ X (PK a K MK L) (.store ea ev') (SPK a K MK L) := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ w v mem hw' hv hst => ?_
  obtain ⟨x, hx, hxb⟩ := hval s hL v hv
  subst hx
  have hmem := InitECandidate.Solver.MemSafe.Struct.store_word hst
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x)) = [HolWordLab.word x] := by
    simp [flattenHOL]
  rw [hf] at hst
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod (x := HolWordLab.word x) hst
  have hc := haddr s hs hL Γ p he hh w hw' (ha.hal w (hs.2.1 ▸ hdom))
  exact ⟨fun _ => ⟨hL, Γ, p, he, heap_store_bcell ha hh hm (fun y hy => hy ▸ hc)
    (fun y hy => by subst hy; show (rd mem y).toNat < 2 ^ 32; rw [hmem, InitECandidate.Solver.MemSafe.Struct.rd_upd_self]; exact hxb),
    hK, hw⟩, fun r' h => absurd h (by simp)⟩

/-- `return e` in a window. -/
theorem hoareG_retRQ {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {e : ExpHOL 64} :
    HoareG σ X (PK a K MK L) (.return e) (RQ a) :=
  hoareG_return fun t _ h v hv => ⟨by simp, fun r' hr' => by
    cases hr'
    exact ⟨by simp, by simp, fun _ => hha_congr (s := t) hH rfl rfl rfl rfl (hk_hha h.2)⟩⟩

/-- `raise e x` in a window. -/
theorem hoareG_raiseRQ {a : Act σ} (hH : HooksLawful a.C a.H) {K : Nat} {MK : BitVec 64}
    {L : LocalsH → Prop} {x : MlS} {e : ExpHOL 64} :
    HoareG σ X (PK a K MK L) (.raise x e) (RQ a) :=
  hoareG_raise fun t _ h v hv => ⟨by simp, fun r' hr' => by
    cases hr'
    exact ⟨by simp, by simp, fun _ => hha_congr (s := t) hH rfl rfl rfl rfl (hk_hha h.2)⟩⟩

/-- `heap_release(mark)` in the window `MK`, continuing outside any window. -/
theorem hoareG_relK {a : Act σ} (ha : ActOK a X) (hrel : ReleaseSpec σ X (nm "heap_release") gHeap)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop}
    (hmk : ∀ s : State σ, L s.locals → ev s (lv (nm "mark")) = some (.val (.word MK))) :
    HoareG σ X (PK a K MK L) (callD (nm "heap_release") [lv (nm "mark")]) (SPA a L) := by
  refine hoareG_callD (FunSpec.and hrel (funSpec_be' (nm "heap_release"))) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx
    rw [evs_cons (hmk s hL) evs_nil] at hvs
    cases hvs
    obtain ⟨hm, hg1, hg2⟩ := hR (by simp [Good]) MK rfl
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := release_heap ha hh hw hm hg1 hg2 hd hbe
    exact ⟨fun _ => ⟨hL, Γ, _, he, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh1⟩,
      fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    rw [evs_cons (hmk s hL) evs_nil] at hvs
    cases hvs
    obtain ⟨hm, hg1, hg2⟩ := hR (abn_good' habn) MK rfl
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := release_heap ha hh hw hm hg1 hg2 hd hbe
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    exact ⟨habn, fun hna =>
      ⟨Γ, _, he, heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh1⟩⟩

/-- **`var mark = heap_mark(); k`** inside a window: the new window is at the current allocation. -/
theorem hoareG_markK {a : Act σ} (ha : ActOK a X) (hMk : MarkSpec' σ X (nm "heap_mark") gHeap)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} {L' : BitVec 64 → LocalsH → Prop}
    {x : MlS} {k : ProgHOL 64}
    (hL' : ∀ (s st : State σ) (w : BitVec 64), L s.locals →
      L' w (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }).locals)
    (hk : ∀ w : BitVec 64, K ≤ w.toNat → HoareG σ X (PK a w.toNat w (L' w)) k (HQa a)) :
    HoareG σ X (PK a K MK L) (.decCall x .one (nm "heap_mark") [] k) (HQa a) := by
  refine hoareG_decCall (FunSpec.and hMk (funSpec_be' (nm "heap_mark"))) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    obtain ⟨w, hgw, hwp⟩ := gword_get hh.2.1 Region.heap
    have hv' := mark_val_word (hv v rfl) hgw
    subst hv'
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := heap_congr (s := s) ha.hH hm hg hd hbe hh
    have hwp' : w.toNat = p.hp := hwp
    refine hoareG_conseq (hk w (by omega)) (fun t _ ht => ?_)
      (fun r t _ _ hq => hqa_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st w hL, Γ, p, he, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh1, le_of_eq hwp',
      (win_new hh hwp).2.2⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, hbe⟩ hctx habn r' hr' hna
    cases hr'
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hm, hg, -⟩ := hR hg0 hvs0
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    exact ⟨Γ, p, he, heap_congr (s := s) (t := emptyLocalsHOLFinite st) ha.hH hm hg hd hbe hh⟩

/-! ## Locals as an association list of values -/

def LP (l : List (String × ValueHOL 64)) (m : LocalsH) : Prop :=
  ∀ p ∈ l, m.lookup (nm p.1) = some p.2

theorem LP.getE {l : List (String × ValueHOL 64)} {s : State σ} (h : LP l s.locals) {x : String}
    {v : ValueHOL 64} (hx : (x, v) ∈ l) : ev s (lv (nm x)) = some v := h _ hx

theorem LP.dec {l : List (String × ValueHOL 64)} {s st : State σ} (h : LP l s.locals) (x : String)
    (v : ValueHOL 64) (hx : ∀ p ∈ l, nm p.1 ≠ nm x) :
    LP ((x, v) :: l) (setVarHOLFinite (nm x) v { st with locals := s.locals }).locals := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (fun e => hx p hp e.symm)]
    exact h p hp

/-! ## `min` -/

def minBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv (nm "a")) (lv (nm "b"))) (.return (lv (nm "a"))) .skip)
    (.return (lv (nm "b")))

theorem entry_min : fnEntry Guest.Software.guestFn_min =
    (nm "min", [(nm "a", .one), (nm "b", .one)], minBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_min : guestCode (nm "min") = some ([(nm "a", .one), (nm "b", .one)], minBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 31) (by decide)) ⟨_, rfl⟩
    entry_min

theorem funSpec_min (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "min") (fun vs s r t => Good (some r) → ∀ v, r = .returned v →
      ∀ A B : BitVec 64, vs = [V A, V B] → ∃ w, v = V w ∧ w.toNat = min A.toNat B.toNat) := by
  refine Helpers.funSpecG_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_min (by decide) hl
  obtain ⟨A', rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨B', rfl⟩ := val_of_shapeEq_one hB'
  have hla' : s0.locals.lookup (nm "a") = some (V A') := by rw [hloc]; exact hla
  have hlb' : s0.locals.lookup (nm "b") = some (V B') := by rw [hloc]; exact hlb
  unfold minBody
  refine hoareG_seq (R := fun r t => (r = none → ¬ A'.toNat < B'.toNat ∧
        t.locals.lookup (nm "b") = some (V B')) ∧
      ∀ v, r = some (.returned v) → v = V A' ∧ A'.toNat < B'.toNat) ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun s _ ⟨hs, w, hw, hw0⟩ v hv => ?_
      subst hs
      rw [ev_cmp (ev_lw hla') (ev_lw hlb')] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      subst hw
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def] at hw0
      refine ⟨fun h => absurd h (by simp), fun v' hv' => ?_⟩
      cases hv'
      rw [ev_lw hla'] at hv
      cases hv
      refine ⟨rfl, ?_⟩
      by_contra hcon
      exact hw0 (by simp [hcon])
    · refine hoareG_skip fun s _ ⟨hs, hw⟩ => ?_
      subst hs
      rw [ev_cmp (ev_lw hla') (ev_lw hlb')] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, BitVec.lt_def] at hw
      refine ⟨fun _ => ⟨?_, hlb'⟩, fun v h => absurd h (by simp)⟩
      by_contra hcon
      simp [hcon] at hw
  · intro r t _ hr _ h r' hr' v hv A B hvs
    subst hr'
    cases hv
    obtain ⟨hv, hlt⟩ := h.2 v rfl
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact ⟨A', hv, by omega⟩
  · refine hoareG_return fun t _ ht v hv r' hr' v' hv' A B hvs => ?_
    cases hr'
    cases hv'
    obtain ⟨hnlt, hlb2⟩ := ht.1 rfl
    rw [ev_lw hlb2] at hv
    cases hv
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact ⟨B', rfl, by omega⟩

end InitECandidate.Solver.MemSafe.Mod

#print axioms InitECandidate.Solver.MemSafe.Mod.csumm_of_heap_caps
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_callKc
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_decCallV
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_decKH
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_stwKS
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_relK
#print axioms InitECandidate.Solver.MemSafe.Mod.hoareG_markK
#print axioms InitECandidate.Solver.MemSafe.Mod.funSpec_min
