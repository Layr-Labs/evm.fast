import InitECandidate.Solver.MemSafe.Helpers.PureF
import InitECandidate.Solver.MemSafe.Helpers.Pure

set_option autoImplicit false

/-!
# Global scalar buffers and state-dependent footprints; pure code with pure calls

* `ScalarGlob C g n`: the global `g` is typed as a pointer to objects whose slots are all
  `scalar` and of at least `n` bytes (hash state/pad buffers, `u256_ws`). `scell_of_glob`: under
  `G`, the `n` bytes at `g`'s value are `scalar` cells of a `Γ` object, below `scratchEnd`.
* `FootSpecS`: a footprint spec whose precondition and footprint may read the entry state
  (e.g. a global's value). `sumSpec_of_footS`: the `SumSpec` from it, when every footprint
  cell is an argument cell or a `scalar` cell of `Γ`.
* `pureBC W P`: `pureB` plus calls `var x = f(args); k` / `x = f(args);` to functions of `P`
  with the empty footprint. `hoareG_pureC`.
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Global scalar buffers -/

def ScalarGlob (C : Cfg) (g : MlS) (n : Nat) : Prop :=
  ∃ t, C.GT.lookup g = some (.ptr t) ∧ (∀ k, (C.ty t).slot k = .scalar) ∧ n ≤ (C.ty t).minSz

theorem scell_of_glob {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G C H Γ s)
    {g : MlS} {n : Nat} (hg : ScalarGlob C g n) :
    ∃ W : BitVec 64, gword s g = some W ∧ W.toNat + n ≤ scratchEnd ∧
      ∀ a, Overlap W.toNat n a → SCell C Γ a := by
  obtain ⟨t, hgt, hsc, hmin⟩ := hg
  obtain ⟨p, -, hord, hL, -, -, hGl, -⟩ := hG
  obtain ⟨v, hv, o, ho, hb, hty⟩ := hGl g _ hgt
  obtain ⟨hal, hsz, hpos, hmin', hlive⟩ := hL.1 o ho
  have hend : o.lo + o.size ≤ scratchEnd := by
    have he : heapEnd ≤ scratchEnd := by decide
    unfold Ptrs.Ordered at hord
    revert hlive
    cases (C.ty o.ty).region <;> (intro hlive; unfold Region.Live at hlive; omega)
  rw [hty] at hmin'
  refine ⟨v, hv, ?_, fun a ⟨ha8, h1, h2⟩ => ?_⟩
  · rw [← hb]; unfold Obj.lo at hend; omega
  · have hlo : o.lo = v.toNat := by unfold Obj.lo; rw [hb]
    have hva : v.toNat ≤ a.toNat := by omega
    refine ⟨o, ho, (a.toNat - v.toNat) / 8, ?_, by rw [hty]; exact hsc _, ?_⟩
    · unfold Obj.HasSlot; omega
    · apply BitVec.eq_of_toNat_eq
      unfold Obj.cell
      rw [hb, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * _) (by omega),
        Nat.mod_eq_of_lt (by omega)]
      omega

/-! ## State-dependent footprint specs -/

def FootSpecS (σ : Type) (X : Ctx 64) (f : MlS) (Pre : List (ValueHOL 64) → State σ → Prop)
    (R : List (ValueHOL 64) → State σ → BitVec 64 → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → Pre vs s →
    t.globals = s.globals ∧ ModifiesOnly (R vs s) s.memory t.memory)

theorem footSpecS_of_hoareG {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → Pre vs s0 →
        HoareG σ X (fun t => t = s0) body (fun _ t => BWPost (R vs s0) s0 t)) :
    FootSpecS σ X f Pre R := by
  intro vs body callee rs hl s hs hloc r hr hg hP
  have := h vs body callee rs hl s hs hloc hP s hs rfl (by rw [hr]; exact hg)
  exact this

/-- **From a state-dependent footprint spec to a summary.** -/
theorem sumSpec_of_footS {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    {f : MlS} {sg : Sig} (hret : sg.ret = [])
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop} (hf : FootSpecS σ X f Pre R)
    {PreS : List (ValueHOL 64) → State σ → Gam → Prop}
    (hpre : ∀ Γ p vs s, G C H Γ s → ptrsOf s = some p → ArgsOK C Γ p sg.params vs →
      PreS vs s Γ → Pre vs s)
    (hR : ∀ Γ p vs s a, G C H Γ s → ptrsOf s = some p → ArgsOK C Γ p sg.params vs →
      PreS vs s Γ → R vs s a → ArgCells sg.params vs a ∨ SCell C Γ a) :
    SumSpec σ X C H f sg PreS (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hg Γ hG hargs hPS
  obtain ⟨p, hp, hA⟩ := hargs
  have hG0 := hG
  obtain ⟨p0, hp0, hord, hL, -⟩ := hG0
  rw [hp] at hp0
  cases hp0
  have hP := hpre Γ p vs s hG hp hA hPS
  obtain ⟨hgl, hmod⟩ := hf vs body callee rs hl s hs hloc r hr hg hP
  obtain ⟨hd, hbe⟩ := funSpec_dom (σ := σ) (X := X) f vs body callee rs hl s hs hloc r hr
  have hpt : ptrsOf (evaluateHOLFiniteState s body).2 = some p := by
    unfold ptrsOf gword at hp ⊢
    rw [hgl]
    exact hp
  have hcell : ∀ a, R vs s a → BufCell C Γ a := by
    intro a ha
    rcases hR Γ p vs s a hG hp hA hPS ha with h | h
    · exact bufCell_of_arg hA h
    · exact Or.inl h
  refine ⟨Γ, p, p, ⟨hp, hpt, ⟨Nat.le_refl _, Nat.le_refl _, Nat.le_refl _⟩,
    fun o ho => ⟨o, ho, rfl, rfl, Nat.le_refl _⟩, newFresh_same,
    G_buf hH hT hG hgl hd hbe hmod hcell, ?_, ?_, fun _ => newFresh_same, ?_⟩, trivial⟩
  · refine hmod.mono fun a ha => ?_
    rcases hR Γ p vs s a hG hp hA hPS ha with h | ⟨o, ho, k, hk, hsc, he⟩
    · exact Or.inr (Or.inl h)
    · exact Or.inl ⟨o, ho, k, hk, by rw [hsc]; decide, he⟩
  · intro g _ _
    rw [hgl]
  · intro v _ i rt w hrt
    rw [hret] at hrt
    simp at hrt

/-! ## Pure code with calls to pure functions -/

def pureBC (W P : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .assign .local x _ => !W.contains x
  | .dec x _ _ b => !W.contains x && pureBC W P b
  | .seq a b => pureBC W P a && pureBC W P b
  | .ite _ a b => pureBC W P a && pureBC W P b
  | .while _ b => pureBC W P b
  | .decCall x _ f _ k => !W.contains x && P.contains f && pureBC W P k
  | .call (some (some (.local, x), none)) f _ => !W.contains x && P.contains f
  | _ => false

/-- A loop whose body completes normally completes normally. -/
theorem hoareG_whileNN {c : ExpHOL 64} {body : ProgHOL 64} {Rf : BitVec 64 → Prop}
    {s0 : State σ} {J : Locals → Prop}
    (hb : HoareG σ X (fun s => LPre Rf s0 J s ∧ CondTrue s c) body (LN Rf s0 J)) :
    HoareG σ X (LPre Rf s0 J) (.while c body) (LN Rf s0 J) := by
  refine hoareG_while (fun t h => h) ?_ (fun s _ h _ => ⟨rfl, h⟩)
  intro t ht hpre hgood
  obtain ⟨hr, hJ⟩ := hb t ht hpre hgood
  rw [hr]
  exact ⟨fun _ => hJ, (fun h => nomatch h), (fun h => nomatch h), (fun r' h => nomatch h)⟩

theorem hoareG_pureC {W P : List MlS} {J : Locals → Prop} (hJ : Stable W J)
    (hP : ∀ f, P.contains f = true → PureSpec σ X f)
    {Rf : BitVec 64 → Prop} {s0 : State σ} :
    ∀ p : ProgHOL 64, pureBC W P p = true → HoareG σ X (LPre Rf s0 J) p (LN Rf s0 J)
  | .skip, _ => hoareG_skip fun _ _ hp => ⟨rfl, hp⟩
  | .assign .local x e, h => by
      have hx : W.contains x = false := by simpa [pureBC] using h
      exact hoareG_assignN fun s _ hL v _ => (hJ _ x hx hL).1 v
  | .assign .global _ _, h => by simp [pureBC] at h
  | .dec x sh e b, h => by
      simp only [pureBC, Bool.and_eq_true, Bool.not_eq_true'] at h
      refine hoareG_decN (L' := fun _ => J) (fun s _ hL v _ _ => ?_)
        (fun m m' _ h' => (hJ m' x h.1 h').2 _)
      exact hoareG_preN (hoareG_pureC hJ hP b h.2) fun m hm => hm ▸ (hJ _ x h.1 hL).1 v
  | .seq a b, h => by
      simp only [pureBC, Bool.and_eq_true] at h
      exact hoareG_seqN (hoareG_pureC hJ hP a h.1) (hoareG_pureC hJ hP b h.2)
  | .ite c a b, h => by
      simp only [pureBC, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (hoareG_pureC hJ hP a h.1) fun _ _ h => h.1)
        (hoareG_pre (hoareG_pureC hJ hP b h.2) fun _ _ h => h.1)
  | .while c b, h => by
      simp only [pureBC] at h
      exact hoareG_whileNN (hoareG_pre (hoareG_pureC hJ hP b h) fun _ _ h => h.1)
  | .decCall x sh f args k, h => by
      simp only [pureBC, Bool.and_eq_true, Bool.not_eq_true'] at h
      obtain ⟨⟨hx, hf⟩, hk⟩ := h
      refine hoareG_decCall (hP f hf) ?_ ?_
      · intro s _ hpre vs _ callee v st hR _ _
        obtain ⟨hgl, hm, -⟩ := hR (by simp [Good])
        refine hoareG_conseq (hoareG_pureC (Rf := Rf) (s0 := s0) hJ hP k hk) (fun t _ ht => ?_) ?_
        · subst ht
          exact ⟨(hJ _ x hx hpre.1).1 v, hgl.trans hpre.2.1, fun a ha => by
            show st.memory a = _
            rw [hm]
            exact hpre.2.2 a ha⟩
        · intro r t _ _ ⟨hr, hL, hbw⟩
          exact ⟨hr, (hJ _ x hx hL).2 _, hbw⟩
      · intro s _ _ vs _ callee r st hR _ habn
        exact absurd habn (hR (abn_good habn)).2.2
  | .call (some (some (.local, x), none)) f args, h => by
      simp only [pureBC, Bool.and_eq_true, Bool.not_eq_true'] at h
      obtain ⟨hx, hf⟩ := h
      refine hoareG_callA (hP f hf) ?_ ?_
      · intro s _ hpre vs _ callee v st hR _ _
        obtain ⟨hgl, hm, -⟩ := hR (by simp [Good])
        refine ⟨rfl, (hJ _ x hx hpre.1).1 v, hgl.trans hpre.2.1, fun a ha => ?_⟩
        show st.memory a = _
        rw [hm]
        exact hpre.2.2 a ha
      · intro s _ _ vs _ callee r st hR _ habn
        exact absurd habn (hR (abn_good habn)).2.2
  | .call none _ _, h => by simp [pureBC] at h
  | .call (some (none, _)) _ _, h => by simp [pureBC] at h
  | .call (some (some (.global, _), _)) _ _, h => by simp [pureBC] at h
  | .call (some (some (.local, _), some _)) _ _, h => by simp [pureBC] at h
  | .primitive _ _ _, h => by simp [pureBC] at h
  | .store _ _, h => by simp [pureBC] at h
  | .store32 _ _, h => by simp [pureBC] at h
  | .storeByte _ _, h => by simp [pureBC] at h
  | .break, h => by simp [pureBC] at h
  | .continue, h => by simp [pureBC] at h
  | .extCall _ _ _ _ _, h => by simp [pureBC] at h
  | .raise _ _, h => by simp [pureBC] at h
  | .return _, h => by simp [pureBC] at h
  | .shMemLoad _ _ _ _, h => by simp [pureBC] at h
  | .shMemStore _ _ _, h => by simp [pureBC] at h
  | .tick, h => by simp [pureBC] at h
  | .annot _ _, h => by simp [pureBC] at h

/-! ## Pure code that keeps word locals words -/

/-- The locals of `Wd` hold words. -/
def Words (Wd : List MlS) (m : Locals) : Prop :=
  ∀ x ∈ Wd, ∃ w : BitVec 64, m.lookup x = some (.val (.word w))

/-- `pureBC` where declarations (and call results) of `Wd` names have shape `one`. -/
def pureBW (W Wd P : List MlS) : ProgHOL 64 → Bool
  | .skip => true
  | .assign .local x _ => !W.contains x
  | .dec x sh _ b => !W.contains x && (!Wd.contains x || shapeEqHOL sh .one) && pureBW W Wd P b
  | .seq a b => pureBW W Wd P a && pureBW W Wd P b
  | .ite _ a b => pureBW W Wd P a && pureBW W Wd P b
  | .while _ b => pureBW W Wd P b
  | .decCall x sh f _ k => !W.contains x && (!Wd.contains x || shapeEqHOL sh .one) && P.contains f &&
      pureBW W Wd P k
  | .call (some (some (.local, x), none)) f _ => !W.contains x && P.contains f
  | _ => false

theorem words_update {Wd : List MlS} {m : Locals} (h : Words Wd m) (x : MlS) (v : ValueHOL 64)
    (hv : x ∈ Wd → ∃ w : BitVec 64, v = .val (.word w)) : Words Wd (m.update (x, v)) := by
  intro y hy
  by_cases hyx : x = y
  · subst hyx
    obtain ⟨w, rfl⟩ := hv hy
    exact ⟨w, lookup_update_self _ _ _⟩
  · rw [lookup_update_ne _ _ hyx]; exact h y hy

theorem words_resVarEq {Wd : List MlS} {m m0 : Locals} (h : Words Wd m) (h0 : Words Wd m0)
    (x : MlS) : Words Wd (m.resVarEq (x, m0.lookup x)) := by
  intro y hy
  by_cases hyx : x = y
  · subst hyx
    rw [lookup_resVarEq_restore]
    simp only [if_true]
    exact h0 x hy
  · rw [lookup_resVarEq_ne _ _ hyx]; exact h y hy

theorem word_of_valid {s : State σ} {x : MlS} {v : ValueHOL 64} {Wd : List MlS}
    (hw : Words Wd s.locals) (h : isValidValueHOLExact s.toExact .local x v = true) :
    x ∈ Wd → ∃ w : BitVec 64, v = .val (.word w) := fun hx =>
  let ⟨_, hW⟩ := hw x hx; valid_word hW h

theorem word_of_shape {v : ValueHOL 64} {sh : ShapeHOL} {Wd : List MlS} {x : MlS}
    (hsh : (!Wd.contains x || shapeEqHOL sh .one) = true) (h : shapeEqHOL sh (shapeOfHOLExact v) = true) :
    x ∈ Wd → ∃ w : BitVec 64, v = .val (.word w) := by
  intro hx
  have : sh = .one := by
    have hc : Wd.contains x = true := List.contains_iff_mem.mpr hx
    rw [hc] at hsh
    exact (shapeEqHOL_eq_true _ _).mp (by simpa using hsh)
  subst this
  exact val_of_shapeEq_one h

theorem word_of_shape' {v : ValueHOL 64} {sh : ShapeHOL} {Wd : List MlS} {x : MlS}
    (hsh : (!Wd.contains x || shapeEqHOL sh .one) = true) (h : shapeEqHOL (shapeOfHOLExact v) sh = true) :
    x ∈ Wd → ∃ w : BitVec 64, v = .val (.word w) := by
  intro hx
  have : sh = .one := by
    have hc : Wd.contains x = true := List.contains_iff_mem.mpr hx
    rw [hc] at hsh
    exact (shapeEqHOL_eq_true _ _).mp (by simpa using hsh)
  subst this
  exact val_of_shapeEq_one' h

theorem hoareG_pureW {W Wd P : List MlS} {J : Locals → Prop} (hJ : Stable W J)
    (hP : ∀ f, P.contains f = true → PureSpec σ X f)
    {Rf : BitVec 64 → Prop} {s0 : State σ} :
    ∀ p : ProgHOL 64, pureBW W Wd P p = true →
      HoareG σ X (LPre Rf s0 (fun m => J m ∧ Words Wd m)) p (LN Rf s0 (fun m => J m ∧ Words Wd m))
  | .skip, _ => hoareG_skip fun _ _ hp => ⟨rfl, hp⟩
  | .assign .local x e, h => by
      have hx : W.contains x = false := by simpa [pureBW] using h
      refine hoareG_assign fun s _ hp v _ hval => ⟨rfl, ⟨(hJ _ x hx hp.1.1).1 v,
        words_update hp.1.2 x v (word_of_valid hp.1.2 ?_)⟩, hp.2⟩
      rw [← isValidValueHOLFinite_eq]; exact hval
  | .assign .global _ _, h => by simp [pureBW] at h
  | .dec x sh e b, h => by
      simp only [pureBW, Bool.and_eq_true, Bool.not_eq_true'] at h
      obtain ⟨⟨hx, hsh⟩, hb⟩ := h
      refine hoareG_decN (L' := fun _ m => J m ∧ Words Wd m) (fun s _ hL v _ hv => ?_)
        (fun m m' hm h' => ⟨(hJ m' x hx h'.1).2 _, words_resVarEq h'.2 hm.2 x⟩)
      exact hoareG_preN (hoareG_pureW hJ hP b hb) fun m hm => hm ▸
        ⟨(hJ _ x hx hL.1).1 v, words_update hL.2 x v (word_of_shape hsh hv)⟩
  | .seq a b, h => by
      simp only [pureBW, Bool.and_eq_true] at h
      exact hoareG_seqN (hoareG_pureW hJ hP a h.1) (hoareG_pureW hJ hP b h.2)
  | .ite c a b, h => by
      simp only [pureBW, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (hoareG_pureW hJ hP a h.1) fun _ _ h => h.1)
        (hoareG_pre (hoareG_pureW hJ hP b h.2) fun _ _ h => h.1)
  | .while c b, h => by
      simp only [pureBW] at h
      exact hoareG_whileNN (hoareG_pre (hoareG_pureW hJ hP b h) fun _ _ h => h.1)
  | .decCall x sh f args k, h => by
      simp only [pureBW, Bool.and_eq_true, Bool.not_eq_true'] at h
      obtain ⟨⟨⟨hx, hsh⟩, hf⟩, hk⟩ := h
      refine hoareG_decCall (hP f hf) ?_ ?_
      · intro s _ hpre vs _ callee v st hR _ hv
        obtain ⟨hgl, hm, -⟩ := hR (by simp [Good])
        refine hoareG_conseq (hoareG_pureW (Rf := Rf) (s0 := s0) hJ hP k hk) (fun t _ ht => ?_) ?_
        · subst ht
          exact ⟨⟨(hJ _ x hx hpre.1.1).1 v, words_update hpre.1.2 x v (word_of_shape' hsh hv)⟩,
            hgl.trans hpre.2.1, fun a ha => by
              show st.memory a = _
              rw [hm]
              exact hpre.2.2 a ha⟩
        · intro r t _ _ ⟨hr, hL, hbw⟩
          exact ⟨hr, ⟨(hJ _ x hx hL.1).2 _, words_resVarEq hL.2 hpre.1.2 x⟩, hbw⟩
      · intro s _ _ vs _ callee r st hR _ habn
        exact absurd habn (hR (abn_good habn)).2.2
  | .call (some (some (.local, x), none)) f args, h => by
      simp only [pureBW, Bool.and_eq_true, Bool.not_eq_true'] at h
      obtain ⟨hx, hf⟩ := h
      refine hoareG_callA (hP f hf) ?_ ?_
      · intro s _ hpre vs _ callee v st hR _ hval
        obtain ⟨hgl, hm, -⟩ := hR (by simp [Good])
        refine ⟨rfl, ⟨(hJ _ x hx hpre.1.1).1 v,
          words_update hpre.1.2 x v (word_of_valid hpre.1.2 hval)⟩, hgl.trans hpre.2.1,
          fun a ha => ?_⟩
        show st.memory a = _
        rw [hm]
        exact hpre.2.2 a ha
      · intro s _ _ vs _ callee r st hR _ habn
        exact absurd habn (hR (abn_good habn)).2.2
  | .call none _ _, h => by simp [pureBW] at h
  | .call (some (none, _)) _ _, h => by simp [pureBW] at h
  | .call (some (some (.global, _), _)) _ _, h => by simp [pureBW] at h
  | .call (some (some (.local, _), some _)) _ _, h => by simp [pureBW] at h
  | .primitive _ _ _, h => by simp [pureBW] at h
  | .store _ _, h => by simp [pureBW] at h
  | .store32 _ _, h => by simp [pureBW] at h
  | .storeByte _ _, h => by simp [pureBW] at h
  | .break, h => by simp [pureBW] at h
  | .continue, h => by simp [pureBW] at h
  | .extCall _ _ _ _ _, h => by simp [pureBW] at h
  | .raise _ _, h => by simp [pureBW] at h
  | .return _, h => by simp [pureBW] at h
  | .shMemLoad _ _ _ _, h => by simp [pureBW] at h
  | .shMemStore _ _ _, h => by simp [pureBW] at h
  | .tick, h => by simp [pureBW] at h
  | .annot _ _, h => by simp [pureBW] at h

/-- A locals invariant that depends only on the lookups of names in `W` is stable. -/
theorem stable_of_dep {W : List MlS} {J : Locals → Prop}
    (h : ∀ m m' : Locals, (∀ x ∈ W, m'.lookup x = m.lookup x) → J m → J m') : Stable W J := by
  intro m x hx hJ
  have hne : ∀ y ∈ W, x ≠ y := by
    intro y hy hxy
    subst hxy
    rw [List.contains_iff_mem.mpr hy] at hx
    cases hx
  refine ⟨fun v => h m _ (fun y hy => lookup_update_ne _ _ (hne y hy)) hJ,
    fun old => h m _ (fun y hy => lookup_resVarEq_ne _ _ (hne y hy)) hJ⟩

end InitECandidate.Solver.MemSafe.Helpers
