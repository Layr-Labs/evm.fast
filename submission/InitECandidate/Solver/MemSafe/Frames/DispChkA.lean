import InitECandidate.Solver.MemSafe.Frames.OpStepB

/-!
# `op_dispatch` with an argument-guarded `op_push` (frames13, task 1)

`op_push(nbytes)` is memory-safe only for `nbytes ≤ 32` (`buffer_read(.., nbytes, tmp)` into an
`alloc(32)` block); `op_dispatch` calls it as `op_push(0)` and, under the guards
`¬ op <+ 96`, `op <+ 160`, `op <+ 128`, as `op_push(op - 95)` (so `nbytes ∈ [1, 32]`).

* **`OpStepP σ X H f`**: the argument-guarded step spec (`∀ M < 2^64, ∀ w ≤ 32`, from
  `vs = [w]`); `opStepP_of` (from `OpStep`).
* `Iv` (an interval of `op`'s value), `refT` / `refF` (what an `if` on `op <+ k` / `op == k`
  teaches each branch), `pushArgOK` (`[k]` with `k ≤ 32`, or `[op - k]` with the interval inside
  `[k, k + 32]`), **`dchkA hs pf x I p`** (`dchk` tracking the interval `I` of the local `x`;
  `pf(args); return e` accepted when `pushArgOK`), **`ftA`** (the interval of `x` on a normal
  fall-through; `seq` passes it on, so a guard `if x <+ k { …; raise }` refines what follows).
* **`dchkA_sound`**, **`disp_jSpecA`**: `disp_jSpecM` with `pf`'s spec guarded.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- **`op_push`'s bounded, argument-guarded `run_frames` step spec**: for every bound
`M < 2^64` and every argument word `w ≤ 32`, from `vs = [w]` and `PreOpX … M`. -/
def OpStepP (σ : Type) (X : Ctx 64) (H : Hooks σ) (f : MlS) : Prop :=
  ∀ M : Nat, M < 2 ^ 64 → ∀ w : BitVec 64, w.toNat ≤ 32 → JSpec σ X guestC H f
    (fun vs s Γ => vs = [.val (.word w)] ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
    (QStepX guestC tEV tCK GP GR)

theorem opStepP_of {H : Hooks σ} {f : MlS} (h : OpStep σ X H f) : OpStepP σ X H f :=
  fun M _ _ _ vs body callee rs hl s hs hloc r hr hg hna Γ hG hpre =>
    h M vs body callee rs hl s hs hloc r hr hg hna Γ hG hpre.2

theorem opStepP_ofB {H : Hooks σ} {f : MlS} (h : OpStepB σ X H f) : OpStepP σ X H f :=
  fun M hM _ _ vs body callee rs hl s hs hloc r hr hg hna Γ hG hpre =>
    h M hM vs body callee rs hl s hs hloc r hr hg hna Γ hG hpre.2

/-! ## Intervals of the dispatched opcode -/

/-- A closed interval `[lo, hi]` of naturals (empty when `hi < lo`). -/
structure Iv where
  lo : Nat
  hi : Nat

def Iv.Mem (I : Iv) (n : Nat) : Prop := I.lo ≤ n ∧ n ≤ I.hi

def Iv.emp : Iv := ⟨1, 0⟩

def Iv.hull (I J : Iv) : Iv :=
  if I.hi < I.lo then J else if J.hi < J.lo then I else ⟨min I.lo J.lo, max I.hi J.hi⟩

theorem Iv.not_mem_emp (n : Nat) : ¬ Iv.emp.Mem n :=
  fun h => absurd (Nat.le_trans h.1 h.2) (by decide)

theorem Iv.mem_hull_l {I J : Iv} {n : Nat} (h : I.Mem n) : (I.hull J).Mem n := by
  unfold Iv.hull
  unfold Iv.Mem at h
  split
  · omega
  · split
    · exact h
    · exact ⟨Nat.le_trans (Nat.min_le_left _ _) h.1, Nat.le_trans h.2 (Nat.le_max_left _ _)⟩

theorem Iv.mem_hull_r {I J : Iv} {n : Nat} (h : J.Mem n) : (I.hull J).Mem n := by
  unfold Iv.hull
  unfold Iv.Mem at h
  split
  · exact h
  · split
    · omega
    · exact ⟨Nat.le_trans (Nat.min_le_right _ _) h.1, Nat.le_trans h.2 (Nat.le_max_right _ _)⟩

/-- What the true branch of `if c` learns about the local `x`. -/
def refT (x : MlS) : ExpHOL 64 → Iv → Iv
  | .cmp .lower (.var .local n) (.const k), I =>
      if n = x then ⟨I.lo, min I.hi (k.toNat - 1)⟩ else I
  | .cmp .equal (.var .local n) (.const k), I =>
      if n = x then ⟨max I.lo k.toNat, min I.hi k.toNat⟩ else I
  | _, I => I

/-- What the false branch of `if c` learns about the local `x`. -/
def refF (x : MlS) : ExpHOL 64 → Iv → Iv
  | .cmp .lower (.var .local n) (.const k), I => if n = x then ⟨max I.lo k.toNat, I.hi⟩ else I
  | _, I => I

section ref
variable {s : State σ} {x : MlS} {I : Iv} {xv : BitVec 64}

theorem refT_sound {c : ExpHOL 64} {w : BitVec 64}
    (hx : s.locals.lookup x = some (.val (.word xv))) (hI : I.Mem xv.toNat)
    (hc : ev s c = some (.val (.word w))) (hw : w ≠ 0) : (refT x c I).Mem xv.toNat := by
  unfold refT
  split
  · rename_i n k
    split
    · rename_i hn
      subst hn
      rw [ev_cmp (by rw [ev_var_local]; exact hx) (ev_const k)] at hc
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
      have hlt : xv.toNat < k.toNat := by
        by_contra hn
        rw [if_neg (by simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq,
          BitVec.lt_def]; omega)] at hc
        exact hw hc.symm
      unfold Iv.Mem at hI ⊢
      exact ⟨hI.1, Nat.le_min.mpr ⟨hI.2, by omega⟩⟩
    · exact hI
  · rename_i n k
    split
    · rename_i hn
      subst hn
      rw [ev_cmp (by rw [ev_var_local]; exact hx) (ev_const k)] at hc
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
      have heq : xv = k := by
        by_contra hn
        rw [if_neg (by simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, hn])] at hc
        exact hw hc.symm
      subst heq
      unfold Iv.Mem at hI ⊢
      exact ⟨Nat.max_le.mpr ⟨hI.1, Nat.le_refl _⟩, Nat.le_min.mpr ⟨hI.2, Nat.le_refl _⟩⟩
    · exact hI
  · exact hI

theorem refF_sound {c : ExpHOL 64}
    (hx : s.locals.lookup x = some (.val (.word xv))) (hI : I.Mem xv.toNat)
    (hc : ev s c = some (.val (.word 0))) : (refF x c I).Mem xv.toNat := by
  unfold refF
  split
  · rename_i n k
    split
    · rename_i hn
      subst hn
      rw [ev_cmp (by rw [ev_var_local]; exact hx) (ev_const k)] at hc
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
      have hge : k.toNat ≤ xv.toNat := by
        by_contra hn
        rw [if_pos (by simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq,
          BitVec.lt_def]; omega)] at hc
        exact absurd hc (by decide)
      unfold Iv.Mem at hI ⊢
      exact ⟨Nat.max_le.mpr ⟨hI.1, hge⟩, hI.2⟩
    · exact hI
  · exact hI

end ref

/-- `op_push`'s argument list: a literal `≤ 32`, or `x - k` with the interval inside
`[k, k + 32]`. -/
def pushArgOK (x : MlS) (I : Iv) : List (ExpHOL 64) → Bool
  | [.const c] => decide (c.toNat ≤ 32)
  | [.op .sub [.var .local n, .const k]] =>
      decide (n = x) && decide (k.toNat ≤ I.lo) && decide (I.hi ≤ k.toNat + 32)
  | _ => false

theorem pushArg_sound {s : State σ} {x : MlS} {I : Iv} {xv : BitVec 64}
    {args : List (ExpHOL 64)} (h : pushArgOK x I args = true)
    (hx : s.locals.lookup x = some (.val (.word xv))) (hI : I.Mem xv.toNat) :
    ∃ w : BitVec 64, w.toNat ≤ 32 ∧ evs s args = some [.val (.word w)] := by
  unfold pushArgOK at h
  split at h
  · rename_i c
    exact ⟨c, of_decide_eq_true h, evs_cons (ev_const c) evs_nil⟩
  · rename_i n k
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨hn, hk⟩, hh⟩ := h
    subst hn
    unfold Iv.Mem at hI
    have hle : k.toNat ≤ xv.toNat := by omega
    refine ⟨xv - k, ?_, evs_cons (ev_sub2 (by rw [ev_var_local]; exact hx) (ev_const k)) evs_nil⟩
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; exact hle)]
    omega
  · cases h

/-- `pf(args); return e` with `pushArgOK`. -/
def isPushRet (pf x : MlS) (I : Iv) (p q : ProgHOL 64) : Bool :=
  match p, q with
  | .call (some (none, none)) f args, .return _ => decide (f = pf) && pushArgOK x I args
  | _, _ => false

theorem isPushRet_eq {pf x : MlS} {I : Iv} {p q : ProgHOL 64} (h : isPushRet pf x I p q = true) :
    ∃ args e, p = .call (some (none, none)) pf args ∧ q = .return e ∧ pushArgOK x I args = true := by
  unfold isPushRet at h
  split at h
  · simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨rfl, h⟩ := h
    exact ⟨_, _, rfl, rfl, h⟩
  · cases h

/-- **The interval of `x` on a normal fall-through.** -/
def ftA (hs : List MlS) (pf x : MlS) : Iv → ProgHOL 64 → Iv
  | I, .skip => I
  | _, .raise _ _ => Iv.emp
  | I, .seq p q =>
      if (isCallRet hs p q || isPushRet pf x I p q || isRaise p) = true then Iv.emp
      else ftA hs pf x (ftA hs pf x I p) q
  | I, .ite c p q => Iv.hull (ftA hs pf x (refT x c I) p) (ftA hs pf x (refF x c I) q)
  | I, _ => I

/-- **The dispatch check with `x`'s interval** (`pf` the guarded handler). -/
def dchkA (hs : List MlS) (pf x : MlS) : Iv → ProgHOL 64 → Bool
  | _, .skip => true
  | _, .raise _ _ => true
  | I, .seq p q => isCallRet hs p q || isPushRet pf x I p q || isRaise p ||
      (dchkA hs pf x I p && dchkA hs pf x (ftA hs pf x I p) q)
  | I, .ite c p q => dchkA hs pf x (refT x c I) p && dchkA hs pf x (refF x c I) q
  | _, _ => false

section sound
variable {H : Hooks σ} {M : Nat} {Γ : Gam} {s0 : State σ}

/-- The dispatch post, with `x`'s value and interval on a fall-through. -/
def DQA (H : Hooks σ) (s0 : State σ) (Γ : Gam) (x : MlS) (xv : BitVec 64) (J : Iv)
    (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (ro = none → SameS s0 t ∧ t.locals.lookup x = some (.val (.word xv)) ∧ J.Mem xv.toNat) ∧
    ∀ r, ro = some r → ¬ Abortive r → ∃ Γ', G guestC H Γ' t ∧
      QStepX guestC tEV tCK GP GR [] s0 Γ r t Γ'

theorem dqa_mono {x : MlS} {xv : BitVec 64} {J J' : Iv} (hJ : ∀ n, J.Mem n → J'.Mem n)
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : DQA H s0 Γ x xv J ro t) :
    DQA H s0 Γ x xv J' ro t :=
  ⟨fun h0 => ⟨(h.1 h0).1, (h.1 h0).2.1, hJ _ (h.1 h0).2.2⟩, h.2⟩

/-- `f(args); return e` from a spec whose precondition holds at every call entry. -/
theorem dqa_callRet (hH : HooksLawful guestC H) {f : MlS} {args : List (ExpHOL 64)}
    {e : ExpHOL 64} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hspec : JSpec σ X guestC H f Pre (QStepX guestC tEV tCK GP GR))
    (hG0 : G guestC H Γ s0) {u0 : State σ} (hu : SameS s0 u0)
    (hPre : ∀ vs callee, evs u0 args = some vs → Pre vs (callEntryStateHOLFinite u0 callee) Γ)
    (x : MlS) (xv : BitVec 64) (J : Iv) :
    HoareG σ X (fun t => t = u0) (.seq (.call (some (none, none)) f args) (.return e))
      (DQA H s0 Γ x xv J) := by
  refine hoareG_seq (R := fun ro t => (ro = none → ∃ Γ', G guestC H Γ' t ∧
      QStepX guestC tEV tCK GP GR [] s0 Γ (.returned (.val (.word 0))) t Γ') ∧
      ∀ r, ro = some r → ¬ Abortive r → ∃ Γ', G guestC H Γ' t ∧
        QStepX guestC tEV tCK GP GR [] s0 Γ r t Γ') ?_ ?_ ?_
  · obtain ⟨hm, hg, hd, hbe⟩ := hu
    have hGu : ∀ callee, G guestC H Γ (callEntryStateHOLFinite u0 callee) := fun callee =>
      G_congr hH hm hg hd hbe hG0
    refine hoareG_callD hspec ?_ ?_
    · intro s _ hs vs hvs callee v st hR _
      subst hs
      obtain ⟨Γ', hG', hq0⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ (hGu callee)
        (hPre vs callee hvs)
      have hq := qStepX_src (s := callEntryStateHOLFinite s callee) (vs := vs) (Γ0 := Γ)
        (vs' := []) (s' := s0) (Γ1 := Γ) rfl hm.symm hg.symm hq0
      refine ⟨fun _ => ⟨Γ', G_congr (s := st) hH rfl rfl rfl rfl hG', ?_⟩, fun r hr => by cases hr⟩
      obtain ⟨⟨h1, -⟩, h3, -, h5, -, h7, -, h9, -⟩ := qStepX_congr (t := st) (t' := { st with locals := s.locals })
        rfl rfl hq
      exact ⟨⟨fun v' _ => h1 v rfl, fun v' hv' => (by cases hv')⟩,
              fun _ _ => h3 v rfl, fun v' hv' => (by cases hv'), fun _ _ => h5 v rfl, fun v' hv' => (by cases hv'),
              fun _ _ => h7 v rfl, fun v' hv' => (by cases hv'), fun _ _ => h9 v rfl,
              fun v' hv' => (by cases hv')⟩
    · intro s _ hs vs hvs callee r st hR _ habn
      subst hs
      refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
      simp only [Option.some.injEq] at hr'; subst hr'
      obtain ⟨Γ', hG', hq0⟩ := hR (good_of_abn habn) hna Γ (hGu callee) (hPre vs callee hvs)
      have hq := qStepX_src (s := callEntryStateHOLFinite s callee) (vs := vs) (Γ0 := Γ)
        (vs' := []) (s' := s0) (Γ1 := Γ) rfl hm.symm hg.symm hq0
      exact ⟨Γ', G_congr (s := st) hH rfl rfl rfl rfl hG', qStepX_congr (t := st) rfl rfl hq⟩
  · intro r t _ hr _ hR
    exact ⟨fun h0 => absurd h0 hr, hR.2⟩
  · refine hoareG_return fun s _ hR v _ => ?_
    refine ⟨fun h0 => (by cases h0), fun r hr _ => ?_⟩
    cases hr
    obtain ⟨Γ', hG', hq⟩ := hR.1 rfl
    refine ⟨Γ', G_congr (s := s) hH rfl rfl rfl rfl hG', ?_⟩
    obtain ⟨⟨h1, -⟩, h3, -, h5, -, h7, -, h9, -⟩ := qStepX_congr (t := s) (t' := emptyLocalsHOLFinite s) rfl rfl hq
    exact ⟨⟨fun v' _ => h1 _ rfl, fun v' hv' => (by cases hv')⟩, fun _ _ => h3 _ rfl,
            fun v' hv' => (by cases hv'), fun _ _ => h5 _ rfl, fun v' hv' => (by cases hv'),
            fun _ _ => h7 _ rfl, fun v' hv' => (by cases hv'), fun _ _ => h9 _ rfl,
            fun v' hv' => (by cases hv')⟩

/-- `PreOpX` at every call entry of a state equal to `s0` up to locals. -/
theorem preOpX_entry (hP0 : PreOpX guestC tEV tCK GP GR M [] s0 Γ) {u0 : State σ}
    (hu : SameS s0 u0) (callee : Locs) (vs : List (ValueHOL 64)) :
    PreOpX guestC tEV tCK GP GR M vs (callEntryStateHOLFinite u0 callee) Γ := by
  obtain ⟨hm, hg, -, -⟩ := hu
  obtain ⟨⟨hx, hΦ, hrdy⟩, hJ⟩ := hP0
  have hm' : (callEntryStateHOLFinite u0 callee).memory = s0.memory := hm
  have hg' : (callEntryStateHOLFinite u0 callee).globals = s0.globals := hg
  refine ⟨⟨chainX_congr hm' hg' hx, by rw [phi_congrMG hm' hg']; exact hΦ, ?_⟩,
    jrNZ_congr hg' hJ⟩
  unfold Ready DoneZ RunNZ at hrdy ⊢
  rw [hm', gword_congr hg', gword_congr hg']; exact hrdy

theorem dqa_raise (hH : HooksLawful guestC H) (hG0 : G guestC H Γ s0)
    (hP0 : PreOpX guestC tEV tCK GP GR M [] s0 Γ) {y : MlS} {v : ValueHOL 64} {s : State σ}
    (hu : SameS s0 s) (x : MlS) (xv : BitVec 64) (J : Iv) :
    DQA H s0 Γ x xv J (some (.exception y v)) (emptyLocalsHOLFinite s) :=
  ⟨fun h0 => (by cases h0), (dq_raise hH hG0 hP0 hu).2⟩

/-- **The interval dispatch check is sound.** -/
theorem dchkA_sound (hH : HooksLawful guestC H) {hs : List MlS} {pf x : MlS}
    (hO : ∀ f ∈ hs, JSpec σ X guestC H f (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (hPf : ∀ w : BitVec 64, w.toNat ≤ 32 → JSpec σ X guestC H pf
      (fun vs s Γ => vs = [.val (.word w)] ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (hG0 : G guestC H Γ s0) (hP0 : PreOpX guestC tEV tCK GP GR M [] s0 Γ) {xv : BitVec 64} :
    ∀ (p : ProgHOL 64) (I : Iv), dchkA hs pf x I p = true → ∀ u0 : State σ, SameS s0 u0 →
      u0.locals.lookup x = some (.val (.word xv)) → I.Mem xv.toNat →
      HoareG σ X (fun t => t = u0) p (DQA H s0 Γ x xv (ftA hs pf x I p))
  | .skip, I, _, u0, hu, hx, hI => hoareG_skip fun s _ hs => by
      subst hs; exact ⟨fun _ => ⟨hu, hx, by simp only [ftA]; exact hI⟩, fun r hr => by cases hr⟩
  | .raise y e, I, _, u0, hu, hx, hI => hoareG_raise fun s _ hs v _ => by
      subst hs; exact dqa_raise hH hG0 hP0 hu x xv _
  | .seq p q, I, h, u0, hu, hx, hI => by
      simp only [dchkA, Bool.or_eq_true, Bool.and_eq_true] at h
      by_cases h1 : isCallRet hs p q = true
      · have hft : ftA hs pf x I (.seq p q) = Iv.emp := by
          simp only [ftA, h1, Bool.true_or, if_true]
        rw [hft]
        obtain ⟨f, args, e, rfl, rfl, hf⟩ := isCallRet_eq h1
        exact dqa_callRet hH (hO f hf) hG0 hu (fun vs callee _ => preOpX_entry hP0 hu callee vs)
          x xv _
      by_cases h2 : isPushRet pf x I p q = true
      · have hft : ftA hs pf x I (.seq p q) = Iv.emp := by
          simp only [ftA, h2, Bool.true_or, Bool.or_true, if_true]
        rw [hft]
        obtain ⟨args, e, rfl, rfl, hargs⟩ := isPushRet_eq h2
        obtain ⟨w, hw32, hevs⟩ := pushArg_sound hargs hx hI
        refine dqa_callRet hH (hPf w hw32) hG0 hu (fun vs callee hvs => ⟨?_, preOpX_entry hP0 hu callee vs⟩)
          x xv _
        rw [hevs] at hvs
        exact (Option.some.inj hvs).symm
      by_cases h3 : isRaise p = true
      · have hft : ftA hs pf x I (.seq p q) = Iv.emp := by
          simp only [ftA, h3, Bool.or_true, if_true]
        rw [hft]
        obtain ⟨y, e, rfl⟩ := isRaise_eq h3
        refine hoareG_seq (R := fun ro t => ro ≠ none ∧ DQA H s0 Γ x xv Iv.emp ro t) ?_
          (fun r t _ _ _ h => h.2) (hoareG_false fun _ _ h => h.1 rfl)
        exact hoareG_raise fun s _ hs v _ => by
          subst hs; exact ⟨by simp, dqa_raise hH hG0 hP0 hu x xv _⟩
      have hft : ftA hs pf x I (.seq p q) = ftA hs pf x (ftA hs pf x I p) q := by
        simp only [ftA, Bool.or_eq_true]
        rw [if_neg (by simp [h1, h2, h3])]
      rw [hft]
      have hpq : dchkA hs pf x I p = true ∧ dchkA hs pf x (ftA hs pf x I p) q = true := by
        rcases h with ((h | h) | h) | h
        · exact absurd h h1
        · exact absurd h h2
        · exact absurd h h3
        · exact h
      refine hoareG_seq (R := DQA H s0 Γ x xv (ftA hs pf x I p))
        (dchkA_sound hH hO hPf hG0 hP0 p I hpq.1 u0 hu hx hI) ?_ ?_
      · intro r t _ hr _ hq
        exact ⟨fun h0 => absurd h0 hr, hq.2⟩
      · exact hoareG_pt fun u hq' =>
          dchkA_sound hH hO hPf hG0 hP0 q _ hpq.2 u (hq'.1 rfl).1 (hq'.1 rfl).2.1 (hq'.1 rfl).2.2
  | .ite c p q, I, h, u0, hu, hx, hI => by
      simp only [dchkA, Bool.and_eq_true] at h
      have hft : ftA hs pf x I (.ite c p q) =
          Iv.hull (ftA hs pf x (refT x c I) p) (ftA hs pf x (refF x c I) q) := by
        simp only [ftA]
      rw [hft]
      refine hoareG_ite ?_ ?_
      · intro s hs' ⟨hsu, w, hw, hw0⟩ hg
        subst hsu
        have H1 := dchkA_sound hH hO hPf hG0 hP0 p _ h.1 s hu hx (refT_sound hx hI hw hw0) s hs'
          rfl hg
        exact dqa_mono (fun _ hn => Iv.mem_hull_l hn) H1
      · intro s hs' ⟨hsu, hw⟩ hg
        subst hsu
        have H1 := dchkA_sound hH hO hPf hG0 hP0 q _ h.2 s hu hx (refF_sound hx hI hw) s hs'
          rfl hg
        exact dqa_mono (fun _ hn => Iv.mem_hull_r hn) H1
  | .dec _ _ _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .assign _ _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .primitive _ _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .store _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .store32 _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .storeByte _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .while _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .break, _, h, _, _, _, _ => by simp [dchkA] at h
  | .continue, _, h, _, _, _, _ => by simp [dchkA] at h
  | .call _ _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .decCall _ _ _ _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .extCall _ _ _ _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .return _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .shMemLoad _ _ _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .shMemStore _ _ _, _, h, _, _, _, _ => by simp [dchkA] at h
  | .tick, _, h, _, _, _, _ => by simp [dchkA] at h
  | .annot _ _, _, h, _, _, _, _ => by simp [dchkA] at h

/-- The full interval of a 64-bit word. -/
def ivTop : Iv := ⟨0, 2 ^ 64⟩

/-- A one-word parameter list `[(x, .one)]` (decidable form). -/
def oneParam (x : MlS) : List (MlS × ShapeHOL) → Bool
  | [(n, .one)] => decide (n = x)
  | _ => false

theorem oneParam_eq {x : MlS} {ps : List (MlS × ShapeHOL)} (h : oneParam x ps = true) :
    ps = [(x, .one)] := by
  unfold oneParam at h
  split at h
  · rw [of_decide_eq_true h]
  · cases h

/-- **`op_dispatch`'s step spec** from the interval check, the handlers' specs at `M`, and the
guarded handler's argument-guarded spec at `M`. -/
theorem disp_jSpecA (hC : X.code.lookup = guestCode) (hH : HooksLawful guestC H) {hs : List MlS}
    {pf : MlS}
    (hO : ∀ f ∈ hs, JSpec σ X guestC H f (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    (hPf : ∀ w : BitVec 64, w.toNat ≤ 32 → JSpec σ X guestC H pf
      (fun vs s Γ => vs = [.val (.word w)] ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR))
    {x : MlS} {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {sh : ShapeHOL}
    (hcode : guestCode (nm "op_dispatch") = some (ps, body, sh)) (hps : oneParam x ps = true)
    (hchk : dchkA hs pf x ivTop body = true) :
    JSpec σ X guestC H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR) := by
  obtain rfl := oneParam_eq hps
  intro vs body' callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨hlen, hpre⟩
  rw [hC] at hl
  obtain ⟨ps', hps, -, hpar⟩ := lookupCode_kS hl
  rw [hcode] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨rfl, rfl, -⟩ := hps
  obtain ⟨v, rfl⟩ : ∃ v, vs = [v] := by
    match vs, hlen with
    | [v], _ => exact ⟨v, rfl⟩
  obtain ⟨hv, hsh⟩ := hpar 0 (x, .one) v rfl rfl
  obtain ⟨xv, rfl⟩ := val_of_shapeEq_one hsh
  have hx : s0.locals.lookup x = some (.val (.word xv)) := by rw [hloc]; exact hv
  have H0 := dchkA_sound (M := M) hH hO hPf hG hpre body ivTop hchk s0 ⟨rfl, rfl, rfl, rfl⟩ hx
    ⟨Nat.zero_le _, Nat.le_of_lt xv.isLt⟩ s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  exact H0.2 r rfl hna

end sound

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.opStepP_of
#print axioms InitECandidate.Solver.MemSafe.Frames.dchkA_sound
#print axioms InitECandidate.Solver.MemSafe.Frames.disp_jSpecA
