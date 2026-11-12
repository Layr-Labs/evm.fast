import InitECandidate.Solver.MemSafe.Aw.Write

set_option autoImplicit false

/-!
# The footprint kit with loops that may call

`LZ` is `LQ` plus "the result is neither `break` nor `continue`", which a loop needs: the rule
`hoareG_while` asks what the body leaves after `break` / `continue`. Statement rules in this style:

* leaves: `hoareG_skipZ`, `hoareG_assignZ`, `hoareG_returnZ`, `hoareG_seqZ`, `hoareG_stB0Z`,
  `hoareG_stBAZ`;
* calls: `hoareG_callFootRZ` (`f(args);`), `hoareG_callAFootZ` (`x = f(args);`),
  `hoareG_decCallFootZ` (`var x = f(args); k`), `hoareG_tailFootZ` (`return f(args)`);
* `hoareG_decZ` (`var x = e; k`) and `hoareG_whileZ` (a loop whose body may call).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- Neither `break` nor `continue`. -/
def NB (r : Option (PanSemResultExact 64)) : Prop := r ≠ some .break ∧ r ≠ some .continue

theorem nb_none : NB (none : Option (PanSemResultExact 64)) := ⟨by simp, by simp⟩

theorem nb_ret (v : ValueHOL 64) : NB (some (.returned v) : Option (PanSemResultExact 64)) :=
  ⟨by simp, by simp⟩

theorem nb_abn {r : PanSemResultExact 64} (h : Abn r) : NB (some r) := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩

/-- The statement post: `LQ`, and the result is neither `break` nor `continue`. -/
def LZ (Rf : BitVec 64 → Prop) (s0 : State σ) (L : Locals → Prop) (Ret : ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  LQ Rf s0 L Ret r t ∧ NB r

theorem hoareG_skipZ {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} (h : ∀ m, L m → L' m) :
    HoareG σ X (LPre Rf s0 L) .skip (LZ Rf s0 L' Ret) :=
  hoareG_skip fun _ _ hp => ⟨⟨hp.2, fun _ => h _ hp.1, fun _ h => nomatch h⟩, nb_none⟩

theorem hoareG_assignZ {n : MlS} {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (LPre Rf s0 L) (.assign .local n e) (LZ Rf s0 L' Ret) :=
  hoareG_assign fun s hs hp v hv _ =>
    ⟨⟨hp.2, fun _ => h s hs hp.1 v hv, fun _ h => nomatch h⟩, nb_none⟩

theorem hoareG_returnZ {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → Ret v) :
    HoareG σ X (LPre Rf s0 L) (.return e) (LZ Rf s0 L' Ret) :=
  hoareG_return fun s hs hp v hv => ⟨⟨hp.2, (fun h => nomatch h), fun w hw => by
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact h s hs hp.1 _ hv⟩, nb_ret _⟩

theorem hoareG_seqZ {a b : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L1 L2 L3 : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (ha : HoareG σ X (LPre Rf s0 L1) a (LZ Rf s0 L2 Ret))
    (hb : HoareG σ X (LPre Rf s0 L2) b (LZ Rf s0 L3 Ret)) :
    HoareG σ X (LPre Rf s0 L1) (.seq a b) (LZ Rf s0 L3 Ret) :=
  hoareG_seq ha (fun _ _ _ hr _ h => ⟨⟨h.1.1, fun h' => absurd h' hr, h.1.2.2⟩, h.2⟩)
    (hoareG_pre hb fun _ _ h => ⟨h.1.2.1 rfl, h.1.1⟩)

theorem hoareG_preZ {p : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (LPre Rf s0 L') p Q) (hL : ∀ m, L m → L' m) :
    HoareG σ X (LPre Rf s0 L) p Q :=
  hoareG_pre h fun _ _ hp => ⟨hL _ hp.1, hp.2⟩

theorem hoareG_postZ {p : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret Ret' : ValueHOL 64 → Prop} {P : State σ → Prop}
    (h : HoareG σ X P p (LZ Rf s0 L Ret)) (hL : ∀ m, L m → L' m) (hR : ∀ v, Ret v → Ret' v) :
    HoareG σ X P p (LZ Rf s0 L' Ret') :=
  hoareG_conseq h (fun _ _ hp => hp) fun _ _ _ _ hq =>
    ⟨⟨hq.1.1, fun hr => hL _ (hq.1.2.1 hr), fun v hv => hR v (hq.1.2.2 v hv)⟩, hq.2⟩

/-- `LQ` to `LZ` for a post whose result is known not to be `break` / `continue`. -/
theorem hoareG_toZ {p : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} {P : State σ → Prop}
    (h : HoareG σ X P p (fun r t => LQ Rf s0 L' Ret r t ∧ NB r)) : HoareG σ X P p (LZ Rf s0 L' Ret) := h

/-- A byte store at offset `0` (adds `InD`). -/
theorem hoareG_stB0Z (hA : AlignedDom X) (hT : DomBelow X) {p : MlS} {P : BitVec 64}
    {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} (hLp : ∀ m, L m → m.lookup p = some (.val (.word P)))
    (hD : P.toNat ≤ 2 ^ 61) (hR : ∀ a, AbvR P a → Rf a) :
    HoareG σ X (LPre Rf s0 L) (stP p .b 0 e) (LZ Rf s0 (fun m => L m ∧ InD P) Ret) := by
  have hw : (P + BitVec.ofNat 64 0).toNat = P.toNat := toNat_addc (by omega)
  refine hoareG_storeByte fun t hs hpre w x mem ha _ hst => ?_
  have hm := storeByte_mod hst
  rw [ev_offP (hLp _ hpre.1) 0] at ha
  cases ha
  have hdX : X.memaddrs (panByteAlignHOL (P + BitVec.ofNat 64 0)) := hs.2.1 ▸ storeByte_dom hst
  have hal := hA _ hdX
  have hlt := hT _ hdX
  have hba := byteAlign_toNat (P + BitVec.ofNat 64 0)
  refine ⟨⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ?_)⟩,
    fun _ => ⟨hpre.1, ?_⟩, fun _ h => nomatch h⟩, nb_none⟩
  · subst ha'
    exact hR _ ⟨hal, by omega⟩
  · show P.toNat < domTop + 8
    omega

/-- A byte store at `p + c` once `InD P` is known. -/
theorem hoareG_stBAZ (hA : AlignedDom X) {p : MlS} {P : BitVec 64} {c : Nat} {e : ExpHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hLp : ∀ m, L m → m.lookup p = some (.val (.word P))) (hI : InD P) (hc : c < 64)
    (hR : ∀ a, AbvR P a → Rf a) :
    HoareG σ X (LPre Rf s0 L) (stP p .b c e) (LZ Rf s0 L Ret) := by
  have hs0 : domTop < 2 ^ 62 := by decide
  have hw : (P + BitVec.ofNat 64 c).toNat = P.toNat + c := toNat_addc (by unfold InD at hI; omega)
  refine hoareG_storeByte fun t hs hpre w x mem ha _ hst => ?_
  have hm := storeByte_mod hst
  rw [ev_offP (hLp _ hpre.1) c] at ha
  cases ha
  have hdX : X.memaddrs (panByteAlignHOL (P + BitVec.ofNat 64 c)) := hs.2.1 ▸ storeByte_dom hst
  have hal := hA _ hdX
  have hba := byteAlign_toNat (P + BitVec.ofNat 64 c)
  refine ⟨⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ?_)⟩, fun _ => hpre.1,
    fun _ h => nomatch h⟩, nb_none⟩
  subst ha'
  exact hR _ ⟨hal, by omega⟩

/-! ## Calls -/

theorem hoareG_callFootRZ {f : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ ∀ a, R vs a → Rf a)
    (hL : ∀ (s : State σ) vs v, L s.locals → evs s args = some vs → RetF vs v → L' s.locals) :
    HoareG σ X (LPre Rf s0 L) (.call (some (none, none)) f args) (LZ Rf s0 L' Ret) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    exact ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩,
      fun _ => hL s vs v hpre.1 hvs (hret v rfl), fun _ h => nomatch h⟩, nb_none⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩, nb_abn habn⟩

theorem hoareG_callAFootZ {f x : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ ∀ a, R vs a → Rf a)
    (hL : ∀ (s : State σ) vs v, L s.locals → evs s args = some vs → RetF vs v →
      isValidValueHOLExact s.toExact .local x v = true → L' (s.locals.update (x, v))) :
    HoareG σ X (LPre Rf s0 L) (.call (some (some (.local, x), none)) f args)
      (LZ Rf s0 L' Ret) := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hval
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    exact ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩,
      fun _ => hL s vs v hpre.1 hvs (hret v rfl) hval, fun _ h => nomatch h⟩, nb_none⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩, nb_abn habn⟩

theorem hoareG_decCallFootZ {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)}
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
        (LZ Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (LPre Rf s0 L) (.decCall rn sh f args k) (LZ Rf s0 Lout Ret) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hsh
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    refine hoareG_conseq (hk s vs v hs hpre.1 hvs (hret v rfl) hsh) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩
    · intro r t _ _ hq
      exact ⟨⟨hq.1.1, fun hr => hout _ _ hpre.1 (hq.1.2.1 hr), hq.1.2.2⟩, hq.2⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩, nb_abn habn⟩

theorem hoareG_tailFootZ {f : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ (∀ a, R vs a → Rf a) ∧ ∀ v, RetF vs v → Ret v) :
    HoareG σ X (LPre Rf s0 L) (.call none f args) (LZ Rf s0 L' Ret) := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hP, hsub, hRet⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    refine ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun w hw => ?_⟩, nb_ret _⟩
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact hRet _ (hret _ rfl)
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub, -⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩, nb_abn habn⟩

/-! ## Declarations and loops -/

theorem hoareG_decZ {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L Lout : Locals → Prop}
    {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (x, v))) body
        (LZ Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (LPre Rf s0 L) (.dec x sh e body) (LZ Rf s0 Lout Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp.1 v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨rfl, hp.2⟩
  · intro r t _ _ hq
    exact ⟨⟨hq.1.1, fun hr => hout _ _ hp.1 (hq.1.2.1 hr), hq.1.2.2⟩, hq.2⟩

/-- **A loop whose body may call**, completes normally with `J` or leaves the loop abnormally. -/
theorem hoareG_whileZ {c : ExpHOL 64} {body : ProgHOL 64} {Rf : BitVec 64 → Prop}
    {s0 : State σ} {J J' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hb : HoareG σ X (fun s => LPre Rf s0 J s ∧ CondTrue s c) body (LZ Rf s0 J Ret))
    (hexit : ∀ s : State σ, InCtx s X → J s.locals → ev s c = some (.val (.word 0)) →
      J' s.locals) :
    HoareG σ X (LPre Rf s0 J) (.while c body) (LZ Rf s0 J' Ret) := by
  refine hoareG_while (fun t h => h) ?_
    (fun s hs h hc => ⟨⟨h.2, fun _ => hexit s hs h.1 hc, fun _ h => nomatch h⟩, nb_none⟩)
  intro t hs hpre hgood
  obtain ⟨⟨hbw, hn, hr⟩, hnb⟩ := hb t hs hpre hgood
  refine ⟨fun h0 => ⟨hn h0, hbw⟩, fun h1 => absurd h1 hnb.2, fun h1 => absurd h1 hnb.1, ?_⟩
  intro r' h0 _ _
  exact ⟨⟨hbw, fun h => absurd (h0.symm.trans h) (by simp), hr⟩, hnb⟩

end InitECandidate.Solver.MemSafe.Aw
