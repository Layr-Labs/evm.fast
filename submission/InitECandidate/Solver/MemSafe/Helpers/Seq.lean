import InitECandidate.Solver.MemSafe.Helpers.Mem

set_option autoImplicit false

/-!
# Straight-line footprint reasoning: locals invariant, footprint, returned value

For helpers built from local assignments, conditionals, stores and calls to footprint-specified
callees, the post of every statement is `LQ Rf s0 L Ret r t`:
* the footprint `BWPost Rf s0 t` always (globals as in `s0`, memory changed only in `Rf`);
* the locals invariant `L t.locals` on normal completion;
* `Ret v` for a returned value `v`.

`LP Rf s0 L` is the case `Ret = True`.

* Callee specs: `FootRet σ X f Pre R Ret` (a `FootSpec` plus a return predicate);
  `footRet_of_foot` (no return information), `FootRet.foot`.
* Calls: `hoareG_callFoot` (`f(args);`), `hoareG_callAFoot` (`x = f(args);`),
  `hoareG_decCallFoot` (`var x = f(args); k`), `hoareG_tailFoot` (`return f(args)`).
* `hoareG_assignL`, `hoareG_seqL`, `hoareG_skipL`, `hoareG_returnQ`, `hoareG_preL`,
  `hoareG_postL`; conditionals use `hoareG_ite` directly.
* Stores at `p + c`: `hoareG_stP`, `hoareG_stSeq`.
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

abbrev Locals := HolFiniteMapExact MlS (ValueHOL 64)

/-- The statement post: footprint always, locals invariant on normal completion, `Ret` of a
returned value. -/
def LQ (Rf : BitVec 64 → Prop) (s0 : State σ) (L : Locals → Prop) (Ret : ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  BWPost Rf s0 t ∧ (r = none → L t.locals) ∧ ∀ v, r = some (.returned v) → Ret v

/-- The post without return information. -/
abbrev LP (Rf : BitVec 64 → Prop) (s0 : State σ) (L : Locals → Prop) :=
  LQ Rf s0 L (fun _ => True)

/-- The statement pre: locals invariant and footprint. -/
def LPre (Rf : BitVec 64 → Prop) (s0 : State σ) (L : Locals → Prop) (t : State σ) : Prop :=
  L t.locals ∧ BWPost Rf s0 t

theorem abn_good {r : PanSemResultExact 64} (h : Abn r) : Good (some r) := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]

theorem abn_ne_returned {r : PanSemResultExact 64} (h : Abn r) (v : ValueHOL 64) :
    r ≠ .returned v := by
  rcases h with ⟨e, w, rfl⟩ | ⟨e, rfl⟩ <;> simp

/-! ## Callee specs with a return predicate -/

/-- A footprint spec with a return predicate. -/
def FootRet (σ : Type) (X : Ctx 64) (f : MlS) (Pre : List (ValueHOL 64) → Prop)
    (R : List (ValueHOL 64) → BitVec 64 → Prop) (Ret : List (ValueHOL 64) → ValueHOL 64 → Prop) :
    Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → Pre vs →
    t.globals = s.globals ∧ ModifiesOnly (R vs) s.memory t.memory ∧
      ∀ v, r = .returned v → Ret vs v)

theorem footRet_of_foot {f : MlS} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} (h : FootSpec σ X f Pre R) :
    FootRet σ X f Pre R (fun _ _ => True) :=
  h.mono fun _ _ _ _ h hg hP => ⟨(h hg hP).1, (h hg hP).2, fun _ _ => trivial⟩

theorem FootRet.foot {f : MlS} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {Ret : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (h : FootRet σ X f Pre R Ret) : FootSpec σ X f Pre R :=
  h.mono fun _ _ _ _ h hg hP => ⟨(h hg hP).1, (h hg hP).2.1⟩

/-- A `FootRet` from a `HoareG` triple per entry state, assuming the precondition. -/
theorem footRet_of_hoareG {f : MlS} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {Ret : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → Pre vs →
        HoareG σ X (fun t => t = s0) body
          (fun r t => BWPost (R vs) s0 t ∧ ∀ v, r = some (.returned v) → Ret vs v)) :
    FootRet σ X f Pre R Ret := by
  intro vs body callee rs hl s hs hloc r hr hg hP
  have := h vs body callee rs hl s hs hloc hP s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact ⟨this.1.1, this.1.2, fun v hv => this.2 v (by rw [hv])⟩

/-! ## Calls -/

/-- `f(args);` for a callee with a footprint spec. -/
theorem hoareG_callFoot {f : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} (hf : FootSpec σ X f Pre R)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ ∀ a, R vs a → Rf a) :
    HoareG σ X (LPre Rf s0 L) (.call (some (none, none)) f args) (LQ Rf s0 L Ret) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod⟩ := hR (by simp [Good]) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, fun _ => hpre.1,
      fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩

theorem hoareG_skipL {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (h : ∀ m, L m → L' m) : HoareG σ X (LPre Rf s0 L) .skip (LQ Rf s0 L' Ret) :=
  hoareG_skip fun _ _ hp => ⟨hp.2, fun _ => h _ hp.1, fun _ h => nomatch h⟩

/-- A local assignment. -/
theorem hoareG_assignL {n : MlS} {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (LPre Rf s0 L) (.assign .local n e) (LQ Rf s0 L' Ret) :=
  hoareG_assign fun s hs hp v hv _ => ⟨hp.2, fun _ => h s hs hp.1 v hv, fun _ h => nomatch h⟩

/-- `return e`, with the returned value satisfying `Ret`. -/
theorem hoareG_returnQ {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → Ret v) :
    HoareG σ X (LPre Rf s0 L) (.return e) (LQ Rf s0 L' Ret) :=
  hoareG_return fun s hs hp v hv => ⟨hp.2, (fun h => nomatch h), fun w hw => by
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact h s hs hp.1 _ hv⟩

/-- `return e` without return information. -/
theorem hoareG_returnL {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} : HoareG σ X (LPre Rf s0 L) (.return e) (LP Rf s0 L') :=
  hoareG_returnQ fun _ _ _ _ _ => trivial

/-- Sequencing. -/
theorem hoareG_seqL {a b : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L1 L2 L3 : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (ha : HoareG σ X (LPre Rf s0 L1) a (LQ Rf s0 L2 Ret))
    (hb : HoareG σ X (LPre Rf s0 L2) b (LQ Rf s0 L3 Ret)) :
    HoareG σ X (LPre Rf s0 L1) (.seq a b) (LQ Rf s0 L3 Ret) :=
  hoareG_seq ha (fun _ _ _ hr _ h => ⟨h.1, fun h' => absurd h' hr, h.2.2⟩)
    (hoareG_pre hb fun _ _ h => ⟨h.2.1 rfl, h.1⟩)

theorem hoareG_preL {p : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (LPre Rf s0 L') p Q) (hL : ∀ m, L m → L' m) :
    HoareG σ X (LPre Rf s0 L) p Q :=
  hoareG_pre h fun _ _ hp => ⟨hL _ hp.1, hp.2⟩

theorem hoareG_postL {p : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret Ret' : ValueHOL 64 → Prop} {P : State σ → Prop}
    (h : HoareG σ X P p (LQ Rf s0 L Ret)) (hL : ∀ m, L m → L' m) (hR : ∀ v, Ret v → Ret' v) :
    HoareG σ X P p (LQ Rf s0 L' Ret') :=
  hoareG_conseq h (fun _ _ hp => hp) fun _ _ _ _ hq =>
    ⟨hq.1, fun hr => hL _ (hq.2.1 hr), fun v hv => hR v (hq.2.2 v hv)⟩

/-- A valid new value of a word local is a word. -/
theorem valid_word {s : State σ} {x : MlS} {W : BitVec 64} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some (.val (.word W)))
    (h : isValidValueHOLExact s.toExact .local x v = true) : ∃ w, v = .val (.word w) := by
  rw [← isValidValueHOLFinite_eq] at h
  unfold isValidValueHOLFinite lookupKvarHOLFinite at h
  rw [hx] at h
  simp only [shapeOf_val] at h
  exact val_of_shapeEq_one' h

/-- `x = f(args);` (local `x`) for a callee with a footprint and return spec. -/
theorem hoareG_callAFoot {f x : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ ∀ a, R vs a → Rf a)
    (hL : ∀ (s : State σ) vs v, L s.locals → evs s args = some vs → RetF vs v →
      isValidValueHOLExact s.toExact .local x v = true → L' (s.locals.update (x, v))) :
    HoareG σ X (LPre Rf s0 L) (.call (some (some (.local, x), none)) f args)
      (LQ Rf s0 L' Ret) := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hval
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩,
      fun _ => hL s vs v hpre.1 hvs (hret v rfl) hval, fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩

/-- `var rn = f(args); k` for a callee with a footprint and return spec. The continuation starts
from the caller's locals `m` plus `rn`; on its normal completion `L' m` must give `Lout` after
`rn` is restored. -/
theorem hoareG_decCallFoot {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L Lout : Locals → Prop}
    {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ ∀ a, R vs a → Rf a)
    (hk : ∀ (s : State σ) vs v, InCtx s X → L s.locals → evs s args = some vs → RetF vs v →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (rn, v))) k
        (LQ Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (LPre Rf s0 L) (.decCall rn sh f args k) (LQ Rf s0 Lout Ret) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hsh
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    refine hoareG_conseq (hk s vs v hs hpre.1 hvs (hret v rfl) hsh) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩
    · intro r t _ _ hq
      exact ⟨hq.1, fun hr => hout _ _ hpre.1 (hq.2.1 hr), hq.2.2⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩

/-- `return f(args)` for a callee with a footprint and return spec. -/
theorem hoareG_tailFoot {f : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ (∀ a, R vs a → Rf a) ∧ ∀ v, RetF vs v → Ret v) :
    HoareG σ X (LPre Rf s0 L) (.call none f args) (LQ Rf s0 L' Ret) := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hP, hsub, hRet⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    refine ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun w hw => ?_⟩
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact hRet _ (hret _ rfl)
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub, -⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩

/-! ## Stores at `p + c` -/

/-- `p` (offset `0`) or `p + c`, as the guest writes them. -/
def offP (p : MlS) : Nat → ExpHOL 64
  | 0 => lv p
  | c + 1 => .op .add [lv p, cw (c + 1)]

theorem ev_offP {t : State σ} {p : MlS} {P : BitVec 64}
    (hp : t.locals.lookup p = some (.val (.word P))) (c : Nat) :
    ev t (offP p c) = some (.val (.word (P + BitVec.ofNat 64 c))) := by
  cases c with
  | zero => rw [offP, ev_lw hp]; simp
  | succ c => exact ev_add2 (ev_lw hp) (ev_cw _ _)

theorem toNat_addc {P : BitVec 64} {c : Nat} (h : P.toNat + c < 2 ^ 64) :
    (P + BitVec.ofNat 64 c).toNat = P.toNat + c := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := c) (by omega),
    Nat.mod_eq_of_lt h]

/-- A word (`st`) or byte (`st8`) store at `p + c`. -/
def stP (p : MlS) : SK → Nat → ExpHOL 64 → ProgHOL 64
  | .w, c, e => .store (offP p c) e
  | .b, c, e => .storeByte (offP p c) e

/-- The stores `ss` at `p + c`, then `k`. -/
def stSeq (p : MlS) : List (SK × Nat × ExpHOL 64) → ProgHOL 64 → ProgHOL 64
  | [], k => k
  | (kd, c, e) :: rest, k => .seq (stP p kd c e) (stSeq p rest k)

/-- The stored value of a word store is one word in every state of the invariant. -/
def OneWordL (L : Locals → Prop) (e : ExpHOL 64) : Prop :=
  ∀ t : State σ, L t.locals → ∀ v, ev t e = some v → ∃ x, flattenHOL v = [x]

theorem oneWordL_of {L : Locals → Prop} {e : ExpHOL 64} (h : OneWord (σ := σ) e) :
    OneWordL (σ := σ) L e := fun t _ v hv => h t v hv

theorem oneWordL_lv {L : Locals → Prop} {x : MlS}
    (h : ∀ m, L m → ∃ w : BitVec 64, m.lookup x = some (.val (.word w))) :
    OneWordL (σ := σ) L (lv x) := by
  intro t hL v hv
  obtain ⟨w, hw⟩ := h _ hL
  rw [ev_lw hw] at hv
  cases hv
  exact ⟨_, by rw [flattenHOL]⟩

/-- A word or byte store at `p + c`, `c < n`, into the buffer `[P, P + n) ⊆ Rf`. -/
theorem hoareG_stP (hA : AlignedDom X) {p : MlS} {P : BitVec 64} {n c : Nat} {k : SK}
    {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (hLp : ∀ m, L m → m.lookup p = some (.val (.word P))) (hc : c < n)
    (hPn : P.toNat + n < 2 ^ 64) (hR : ∀ a, Overlap P.toNat n a → Rf a)
    (he : k = .w → OneWordL (σ := σ) L e) :
    HoareG σ X (LPre Rf s0 L) (stP p k c e) (LQ Rf s0 L Ret) := by
  have hw : (P + BitVec.ofNat 64 c).toNat = P.toNat + c := toNat_addc (by omega)
  cases k with
  | w =>
      refine hoareG_store fun t hs hpre w v mem ha hv hst => ?_
      obtain ⟨x, hx⟩ := he rfl t hpre.1 v hv
      rw [hx] at hst
      obtain ⟨hm, hdom⟩ := store1_mod hst
      have hal : w.toNat % 8 = 0 := hA w (hs.2.1 ▸ hdom)
      rw [ev_offP (hLp _ hpre.1) c] at ha
      cases ha
      have hov : Overlap P.toNat n (P + BitVec.ofNat 64 c) :=
        overlap_word hal (by rw [hw]; omega) (by rw [hw]; omega)
      exact ⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ha' ▸ hR _ hov)⟩,
        fun _ => hpre.1, fun _ h => nomatch h⟩
  | b =>
      refine hoareG_storeByte fun t _ hpre w x mem ha _ hst => ?_
      have hm := storeByte_mod hst
      rw [ev_offP (hLp _ hpre.1) c] at ha
      cases ha
      have hov : Overlap P.toNat n (panByteAlignHOL (P + BitVec.ofNat 64 c)) :=
        overlap_byte (by rw [hw]; omega) (by rw [hw]; omega)
      exact ⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ha' ▸ hR _ hov)⟩,
        fun _ => hpre.1, fun _ h => nomatch h⟩

/-- Valid store entries: offsets below `n`, one-word values for word stores. -/
def StOK (L : Locals → Prop) (n : Nat) (ss : List (SK × Nat × ExpHOL 64)) : Prop :=
  ∀ x ∈ ss, x.2.1 < n ∧ (x.1 = .w → OneWordL (σ := σ) L x.2.2)

/-- A sequence of stores at `p + c` into `[P, P + n) ⊆ Rf`, then `k`. -/
theorem hoareG_stSeq (hA : AlignedDom X) {p : MlS} {P : BitVec 64} {n : Nat}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hLp : ∀ m, L m → m.lookup p = some (.val (.word P)))
    (hPn : P.toNat + n < 2 ^ 64) (hR : ∀ a, Overlap P.toNat n a → Rf a) {k : ProgHOL 64}
    (hk : HoareG σ X (LPre Rf s0 L) k (LQ Rf s0 L' Ret)) :
    ∀ {ss : List (SK × Nat × ExpHOL 64)}, StOK (σ := σ) L n ss →
      HoareG σ X (LPre Rf s0 L) (stSeq p ss k) (LQ Rf s0 L' Ret)
  | [], _ => hk
  | (kd, c, e) :: rest, hss => by
      have h0 := hss (kd, c, e) (by simp)
      have hrest : StOK (σ := σ) L n rest := fun x hx => hss x (by simp [hx])
      exact hoareG_seqL (hoareG_stP hA hLp h0.1 hPn hR h0.2) (hoareG_stSeq hA hLp hPn hR hk hrest)

end InitECandidate.Solver.MemSafe.Helpers
