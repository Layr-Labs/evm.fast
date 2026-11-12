import InitECandidate.Solver.MemSafe.CallSound2

/-!
# Fresh results, assignment calls, tail calls (M1)

* `fresh_tmpOK`: a fresh result (`FreshBuf`) is a live temporary of the activation.
* `bindRes_sound` / `bindAsg_sound`: binding a call result to a local (`var x = f(..)` /
  `x = f(..)`), a fresh one-word result becoming a new temporary.
* `rtsImp_sound`, `tail_post`: `return f(args)`, the callee's result types implying the
  caller's.
* `callA_post`: `x = f(args);`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem heap_of_locals {a : Act σ} (hH : HooksLawful a.C a.H) {Γ : Gam} {p : Ptrs}
    {s : State σ} (l : HolFiniteMapExact MlS (ValueHOL 64)) (h : Heap a Γ p s) :
    Heap a Γ p { s with locals := l } :=
  heap_congr (s := s) hH rfl rfl rfl rfl h

theorem ig_set {a : Act σ} (hH : HooksLawful a.C a.H) {A : AEnv} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (h : IG a A Γ Θ s) {x : MlS} {av : AV}
    {v : ValueHOL 64} (hv : VOk Γ Θ av v) :
    IG a ⟨setL x av A.L, A.T⟩ Γ Θ (setVarHOLFinite x v s) := by
  obtain ⟨p, hh, ht, hl⟩ := h
  exact ⟨p, heap_congr (s := s) hH rfl rfl rfl rfl hh, ht, locals_set hl hv⟩

theorem retAV_sound {sg : Sig} {sh : ShapeHOL} {v : ValueHOL 64}
    (hsh : shapeEqHOL (shapeOfHOLExact v) sh = true) {Γ : Gam} {p p' : Ptrs}
    {vs : List (ValueHOL 64)} (hr : RetOK Γ p p' vs sg.ret v) (Θ : List (BitVec 64 × Nat)) :
    VOk Γ Θ (retAV sg sh) v := by
  unfold retAV
  split
  · rename_i rt hrt
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    have h0 := hr 0 rt w (by rw [hrt]; rfl) (by simp [flattenHOL])
    cases rt with
    | fits k => exact word_vok (slotAV_isWord _) (slotAV_sound h0)
    | _ => exact ⟨w, rfl, trivial⟩
  · obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨w, rfl, trivial⟩
  · exact shAV_vok ((shapeEqHOL_eq_true _ _).mp hsh)

theorem heap_ord {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s) :
    p.Ordered := by
  obtain ⟨p1, hp1, hord, -⟩ := hh.1
  rw [hh.2.1] at hp1
  cases hp1
  exact hord

/-! ## Fresh results -/

theorem fresh_alloc {p p' : Ptrs} (hord : p.Ordered) {x : BitVec 64} (h : Fresh p p' x) :
    p'.Allocated x.toNat := by
  unfold Ptrs.Ordered at hord; unfold Fresh at h; unfold Ptrs.Allocated; omega

/-- A fresh result is a live temporary. -/
theorem fresh_tmpOK {a : Act σ} {Γ' : Gam} {p q' : Ptrs} (hord : p.Ordered)
    (hord' : q'.Ordered) (hm0 : a.p0.Mono p) (hm : p.Mono q') {w : BitVec 64} {n : Nat}
    (hf : FreshBuf Γ' p q' w n) : TmpOK a Γ' q' ⟨n, .fresh⟩ w :=
  ⟨fun c hc => Or.inr ⟨(hf.2 c hc).2, fresh_alloc hord (hf.2 c hc).1⟩, hf.1,
    fun c hc h0 => fresh_not_alloc hord hord' hm (hf.2 c hc).1 (alloc_mono hm0 h0)⟩

/-- The argument abstractions, index by index. -/
theorem avs_vok {C : Cfg} {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)}
    {args : List (ExpHOL 64)} {vs : List (ValueHOL 64)} (hlen : vs.length = args.length)
    (hvok : ∀ i (hi : i < vs.length) (ha : i < args.length),
      VOk Γ Θ (aev C A chkFuel args[i]) vs[i]) :
    ∀ (i : Nat) av, (args.map (aev C A chkFuel))[i]? = some av → ∃ v, vs[i]? = some v ∧ VOk Γ Θ av v := by
  intro i av h
  rw [List.getElem?_map] at h
  cases hi : args[i]? with
  | none => rw [hi] at h; cases h
  | some e =>
      rw [hi] at h
      simp only [Option.map_some, Option.some.injEq] at h
      obtain ⟨hia, he⟩ := List.getElem?_eq_some_iff.mp hi
      refine ⟨vs[i], List.getElem?_eq_getElem (by omega), ?_⟩
      rw [← h, ← he]
      exact hvok i (by omega) hia

theorem cst_arg {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {vs : List (ValueHOL 64)}
    {avs : List AV} (hav : ∀ (i : Nat) av, avs[i]? = some av → ∃ v, vs[i]? = some v ∧ VOk Γ Θ av v)
    {i : Nat} {x : BitVec 64} (h : avs[i]? = some (.cst x)) : argW vs i = some x := by
  obtain ⟨v, hv, hok⟩ := hav i _ h
  obtain ⟨w, rfl, hw⟩ := hok
  simp only [AVok] at hw
  subst hw
  unfold argW
  rw [hv]
  rfl

theorem freshBuf_weaken {Γ' : Gam} {p0 p q' : Ptrs} (hm0 : p0.Mono p) {w : BitVec 64}
    {n n' : Nat} (hn : n ≤ n') (h : FreshBuf Γ' p q' w n') : FreshBuf Γ' p0 q' w n :=
  ⟨h.1, fun c ⟨h1, h2, h3⟩ =>
    let H := h.2 c ⟨h1, h2, by omega⟩
    ⟨fresh_mono hm0 H.1, H.2⟩⟩

theorem freshSz_sound {avs : List AV} {rt : List RT} {n : Nat} (h : freshSz avs rt = some n)
    {Γ Γ' : Gam} {Θ : List (BitVec 64 × Nat)} {p q' : Ptrs} {vs : List (ValueHOL 64)}
    {w : BitVec 64} (hret : RetOK Γ' p q' vs rt (.val (.word w)))
    (hav : ∀ (i : Nat) av, avs[i]? = some av → ∃ v, vs[i]? = some v ∧ VOk Γ Θ av v) :
    FreshBuf Γ' p q' w n := by
  unfold freshSz at h
  split at h
  · cases h
    exact hret 0 (.fresh n) w rfl (by simp [flattenHOL])
  · rename_i i c d
    split at h
    · rename_i x hx
      cases h
      obtain ⟨x', hx', hb⟩ := hret 0 (.freshArg i c d) w rfl (by simp [flattenHOL])
      rw [cst_arg hav hx] at hx'
      cases hx'
      exact hb
    · cases h
  · cases h

/-- Pushing a live temporary. -/
theorem temps_push {a : Act σ} {A : AEnv} {Γ : Gam} {p : Ptrs} {Θ : List (BitVec 64 × Nat)}
    (ht : TempsOK a A Γ p Θ) {td : TD} {q : BitVec 64} (hq : TmpOK a Γ p td q)
    (L : List (MlS × AV)) :
    TempsOK a ⟨L, A.T ++ [some td]⟩ Γ p (Θ ++ [(q, td.size)]) := by
  refine ⟨by simp [ht.1], fun k td' hk => ?_⟩
  simp only [List.getElem?_append] at hk
  split at hk
  · rename_i hk1
    obtain ⟨q', hq', hok⟩ := ht.2 k td' hk
    refine ⟨q', ?_, hok⟩
    rw [List.getElem?_append_left (by rw [ht.1]; exact hk1)]
    exact hq'
  · rename_i hk1
    simp only [List.getElem?_singleton] at hk
    split at hk
    · simp only [Option.some.injEq] at hk
      subst hk
      rename_i hk2
      have hkk : k = A.T.length := by omega
      subst hkk
      refine ⟨q, ?_, hq⟩
      rw [List.getElem?_append_right (by rw [ht.1]), ht.1]
      simp
    · cases hk

/-- **Binding a call result** (`var x = f(..)`; `x = f(..)` with a one-word old value). -/
theorem bindRes_sound {a : Act σ} (hH : HooksLawful a.C a.H) {A : AEnv} {Γ Γ' : Gam}
    {p q' : Ptrs} {Θ : List (BitVec 64 × Nat)} {t : State σ} (hh : Heap a Γ' q' t)
    (ht : TempsOK a A Γ' q' Θ) (hl : LocalsOK A Γ' Θ t) (hord : p.Ordered)
    (hm0 : a.p0.Mono p) (hm : p.Mono q') {avs : List AV} {sg : Sig} {vs : List (ValueHOL 64)}
    {v : ValueHOL 64} (hret : RetOK Γ' p q' vs sg.ret v)
    (hav : ∀ (i : Nat) av, avs[i]? = some av → ∃ v, vs[i]? = some v ∧ VOk Γ Θ av v)
    {sh : ShapeHOL} (hsh : shapeEqHOL (shapeOfHOLExact v) sh = true) (x : MlS) :
    ∃ Θ', Θ <+: Θ' ∧ IG a (bindRes A avs sg sh x) Γ' Θ' (setVarHOLFinite x v t) := by
  unfold bindRes
  split
  · rename_i n hn
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    have hfb := freshSz_sound hn hret hav
    have htmp := fresh_tmpOK (a := a) hord (heap_ord hh) hm0 hm hfb
    refine ⟨Θ ++ [(w, n)], List.prefix_append _ _, q', heap_congr (s := t) hH rfl rfl rfl rfl hh,
      temps_push ht htmp _, ?_⟩
    have hl' := locals_mono (List.prefix_append Θ [(w, n)]) hl
    have hv : VOk Γ' (Θ ++ [(w, n)]) (.tmp A.T.length 0) (.val (.word w)) := by
      refine ⟨w, rfl, w, n, ?_, by simp⟩
      rw [List.getElem?_append_right (by rw [ht.1]), ht.1]
      simp
    intro y bv hy
    exact locals_set hl' hv y bv hy
  · exact ⟨Θ, List.prefix_refl _, ig_set hH ⟨q', hh, ht, hl⟩ (retAV_sound hsh hret Θ)⟩

theorem valid_local {s : State σ} {x : MlS} {v u : ValueHOL 64}
    (h : isValidValueHOLExact s.toExact .local x v = true) (hu : s.locals.lookup x = some u) :
    shapeEqHOL (shapeOfHOLExact v) (shapeOfHOLExact u) = true := by
  simp only [isValidValueHOLExact, lookupKvarHOLExact] at h
  rw [hu] at h
  exact h

theorem bindAsg_sound {a : Act σ} (hH : HooksLawful a.C a.H) {A : AEnv} {Γ Γ' : Gam}
    {p q' : Ptrs} {Θ : List (BitVec 64 × Nat)} {s t : State σ} (hl0 : LocalsOK A Γ Θ s)
    (hh : Heap a Γ' q' t)
    (ht : TempsOK a A Γ' q' Θ) (hl : LocalsOK A Γ' Θ t) (hord : p.Ordered)
    (hm0 : a.p0.Mono p) (hm : p.Mono q') {avs : List AV} {sg : Sig} {vs : List (ValueHOL 64)}
    {v : ValueHOL 64} (hret : RetOK Γ' p q' vs sg.ret v)
    (hav : ∀ (i : Nat) av, avs[i]? = some av → ∃ v, vs[i]? = some v ∧ VOk Γ Θ av v) {x : MlS}
    (hval : isValidValueHOLExact s.toExact .local x v = true) :
    ∃ Θ', Θ <+: Θ' ∧ IG a (bindAsg A avs sg x) Γ' Θ' (setVarHOLFinite x v t) := by
  unfold bindAsg
  split
  · rename_i av hav'
    split
    · rename_i hw
      obtain ⟨u, hu, hok⟩ := hl0 x av hav'
      obtain ⟨w, rfl, -⟩ := vok_word hw hok
      have hsh : shapeEqHOL (shapeOfHOLExact v) .one = true := by
        have h1 := valid_local hval hu
        rwa [show shapeOfHOLExact (ValueHOL.val (HolWordLab.word w) : ValueHOL 64) = .one by
          simp [shapeOfHOLExact]] at h1
      exact bindRes_sound hH hh ht hl hord hm0 hm hret hav hsh x
    · split
      · rename_i n _
        obtain ⟨u, hu, hok⟩ := hl0 x _ hav'
        have hsh := (shapeEqHOL_eq_true _ _).mp (valid_local hval hu)
        have hv : VOk Γ' Θ (.wide n) v := by
          show shW (shapeOfHOLExact v) = some n
          rw [hsh]; exact hok
        exact ⟨Θ, List.prefix_refl _, ig_set hH ⟨q', hh, ht, hl⟩ hv⟩
      · exact ⟨Θ, List.prefix_refl _, ig_set hH ⟨q', hh, ht, hl⟩ (av := .unk) trivial⟩
  · exact ⟨Θ, List.prefix_refl _, ig_set hH ⟨q', hh, ht, hl⟩ (av := .unk) trivial⟩

/-! ## Tail calls -/

/-- The body of `RetOK` for one result word. -/
def RTok (Γ' : Gam) (p p' : Ptrs) (vs : List (ValueHOL 64)) (r : RT) (w : BitVec 64) : Prop :=
  match r with
  | .any => True
  | .fits k => Fits Γ' k w
  | .fresh n => FreshBuf Γ' p p' w n
  | .freshArg j c d => ∃ x, argW vs j = some x ∧ FreshBuf Γ' p p' w (c * x.toNat + d)

theorem retOK_iff {Γ' : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)} {rt : List RT}
    {v : ValueHOL 64} :
    RetOK Γ' p p' vs rt v ↔ ∀ (i : Nat) r w, rt[i]? = some r →
      (flattenHOL v)[i]? = some (HolWordLab.word w) → RTok Γ' p p' vs r w := by
  constructor
  · intro h i r w h1 h2
    have := h i r w h1 h2
    cases r <;> exact this
  · intro h i r w h1 h2
    have := h i r w h1 h2
    cases r <;> exact this

theorem rtsImp_at {avs : List AV} : ∀ {rt rt' : List RT}, rtsImp avs rt rt' = true →
    ∀ (i : Nat) r, rt[i]? = some r → r = .any ∨ ∃ r', rt'[i]? = some r' ∧ rtImp avs r r' = true
  | [], _, _, i, r, hr => by simp at hr
  | r0 :: rs, [], h, i, r, hr => by
      simp only [rtsImp, Bool.and_eq_true, beq_iff_eq] at h
      cases i with
      | zero =>
          simp only [List.getElem?_cons_zero, Option.some.injEq] at hr
          subst hr
          exact Or.inl h.1
      | succ i =>
          simp only [List.getElem?_cons_succ] at hr
          rcases rtsImp_at h.2 i r hr with h' | ⟨r', hr', -⟩
          · exact Or.inl h'
          · simp at hr'
  | r0 :: rs, r0' :: rs', h, i, r, hr => by
      simp only [rtsImp, Bool.and_eq_true] at h
      cases i with
      | zero =>
          simp only [List.getElem?_cons_zero, Option.some.injEq] at hr
          subst hr
          exact Or.inr ⟨r0', rfl, h.1⟩
      | succ i =>
          simp only [List.getElem?_cons_succ] at hr
          rcases rtsImp_at h.2 i r hr with h' | ⟨r', hr', hi⟩
          · exact Or.inl h'
          · exact Or.inr ⟨r', by simpa using hr', hi⟩

theorem rtImp_sound {avs : List AV} {r r' : RT} (h : rtImp avs r r' = true) {Γ Γ' : Gam}
    {Θ : List (BitVec 64 × Nat)} {p0 p q' : Ptrs} {vs vs0 : List (ValueHOL 64)}
    (hav : ∀ (i : Nat) av, avs[i]? = some av → ∃ v, vs[i]? = some v ∧ VOk Γ Θ av v)
    (hm0 : p0.Mono p) {w : BitVec 64} (hr : RTok Γ' p q' vs r' w) : RTok Γ' p0 q' vs0 r w := by
  unfold rtImp at h
  split at h
  · trivial
  · simp only [beq_iff_eq] at h
    subst h
    exact hr
  · exact freshBuf_weaken hm0 (Nat.le_of_ble_eq_true h) hr
  · split at h
    · rename_i x hx
      obtain ⟨x', hx', hb⟩ := hr
      rw [cst_arg hav hx] at hx'
      cases hx'
      exact freshBuf_weaken hm0 (Nat.le_of_ble_eq_true h) hb
    · cases h
  · cases h

theorem rtsImp_sound {avs : List AV} {rt rt' : List RT} (h : rtsImp avs rt rt' = true)
    {Γ Γ' : Gam} {Θ : List (BitVec 64 × Nat)} {p0 p q' : Ptrs} {vs vs0 : List (ValueHOL 64)}
    {v : ValueHOL 64} (hret : RetOK Γ' p q' vs rt' v)
    (hav : ∀ (i : Nat) av, avs[i]? = some av → ∃ v, vs[i]? = some v ∧ VOk Γ Θ av v)
    (hm0 : p0.Mono p) : RetOK Γ' p0 q' vs0 rt v := by
  rw [retOK_iff] at hret ⊢
  intro i r w h1 h2
  rcases rtsImp_at h i r h1 with rfl | ⟨r', hr', himp⟩
  · trivial
  · exact rtImp_sound himp hav hm0 (hret i r' w hr' h2)

/-- `return f(args)`. -/
theorem tail_post {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) {A : AEnv} {f : MlS}
    {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg)
    (himp : rtsImp (args.map (aev E.C A chkFuel)) E.sg.ret sg.ret = true)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.call none f args) (SPost a E.sg.ret .never Γ Θ) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR _
    obtain ⟨Γ', q', hext, hh', -, -, hret⟩ :=
      call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
    obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) args vs hvs
    have hav := avs_vok (C := a.C) hlen hvok
    rw [← hE] at hav
    refine ⟨Γ', q', hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', ?_⟩
    exact rtsImp_sound himp (hret v rfl) hav hh.2.2.1
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn
    have hg : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    by_cases hab : Abortive r
    · rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
      · exact Or.inl hab
      · exact Or.inl hab
    obtain ⟨Γ', q', hext, hh', -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hg hab
    have hH' := heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · exact Or.inr ⟨Γ', q', hext, hH'⟩
    · exact Or.inr ⟨Γ', q', hext, hH'⟩

/-! ## `x = f(args);` -/

/-- The normal-return part of an assignment call to a local. -/
theorem asg_ret {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) (hsg : E.sg = a.sg)
    {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ} {p : Ptrs}
    (hh : Heap a Γ p s) (ht : TempsOK a A Γ p Θ) (hl : LocalsOK A Γ Θ s) (hs : InCtx s X) {f x : MlS}
    {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) {vs : List (ValueHOL 64)}
    (hvs : evs s args = some vs) {cs : List Cap} (hcs : capSub cs E.caps = true)
    (hcE : E.caps = a.caps) {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {v : ValueHOL 64} {st : State σ}
    (hR : SummR a.Cb a.H sg cs vs (callEntryStateHOLFinite s callee) (.returned v) st)
    (hval : isValidValueHOLExact s.toExact .local x v = true) :
    ∃ Γ' Θ', Later Γ Θ Γ' Θ' ∧ IG a (bindAsg A (args.map (aev E.C A chkFuel)) sg x) Γ' Θ'
      (setVarHOLFinite x v { st with locals := s.locals }) := by
  obtain ⟨Γ', q', hext, hh', ht', hm, hret⟩ :=
    call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
  obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) args vs hvs
  have hav := avs_vok (C := a.C) hlen hvok
  rw [← hE] at hav
  have hh2 := heap_congr (s := st) (t := { st with locals := s.locals }) ha.hH rfl rfl rfl rfl hh'
  obtain ⟨Θ', hp, hig⟩ := bindAsg_sound ha.hH hl hh2 ht' (locals_ext hext hl) (heap_ord hh)
    hh.2.2.1 hm (hret v rfl) hav hval
  exact ⟨Γ', Θ', ⟨hext, hp⟩, hig⟩

theorem callA_post {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) {A : AEnv} {x f : MlS}
    {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) (rt : List RT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.call (some (some (.local, x), none)) f args)
      (SPost a rt (.normal (bindAsg A (args.map (aev E.C A chkFuel)) sg x)) Γ Θ) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_callA hf ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR _ hval
    obtain ⟨Γ', Θ', hlat, hig⟩ := asg_ret ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hval
    exact ⟨_, Γ', Θ', rfl, hlat, hig⟩
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn
    have hg : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    by_cases hab : Abortive r
    · rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
      · exact Or.inl hab
      · exact Or.inl hab
    obtain ⟨Γ', q', hext, hh', -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hg hab
    have hH' := heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · exact Or.inr ⟨Γ', q', hext, hH'⟩
    · exact Or.inr ⟨Γ', q', hext, hH'⟩

end InitECandidate.Solver.MemSafe
