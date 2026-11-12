import InitECandidate.Solver.MemSafe.Aw.Kit

set_option autoImplicit false

/-!
# Statement rules for an arbitrary stable invariant `I`

A copy of the `Aw/Kit.lean` statement rules (`APre`, `AQ`, `hoareG_*A`, `hoareG_*As`) with the invariant
`AwInv a` replaced by any predicate `I` that survives locals-only changes (`IStable`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def IStable (I : State σ → Prop) : Prop :=
  ∀ {s t : State σ}, I s → t.memory = s.memory → t.globals = s.globals → t.memaddrs = s.memaddrs →
    t.be = s.be → I t

def ISp (I : State σ → Prop) (X : Ctx 64) (f : MlS) (Pre : List (ValueHOL 64) → State σ → Prop)
    (Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => I s → Pre vs s → ∀ v, r = .returned v → I t ∧ Ret vs v t)

/-! ## Statement rules -/

/-- The statement pre. -/
def IPre (I : State σ → Prop) (L : Locals → Prop) (t : State σ) : Prop := I t ∧ L t.locals

/-- The statement post. A normal end keeps the invariant and `L`; a returned value keeps the
invariant and satisfies `Ret`; abnormal ends owe nothing. -/
def IQ (I : State σ → Prop) (L : Locals → Prop) (Ret : ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  NB r ∧ (r = none → I t ∧ L t.locals) ∧
    (∀ v, r = some (.returned v) → I t ∧ Ret v)

theorem aq_abn {I : State σ → Prop} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    {r : PanSemResultExact 64} {t : State σ} (h : Abn r) : IQ I L Ret (some r) t :=
  ⟨nb_abn h, (fun h' => nomatch h'), fun v hv =>
    absurd (Option.some.inj hv) (abn_ne_returned h v)⟩

theorem hoareG_skipA {I : State σ → Prop} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ m, L m → L' m) : HoareG σ X (IPre I L) .skip (IQ I L' Ret) :=
  hoareG_skip fun _ _ hp => ⟨nb_none, fun _ => ⟨hp.1, h _ hp.2⟩, (fun _ h => nomatch h)⟩

theorem hoareG_assignA {I : State σ → Prop} (hS : IStable I) {n : MlS} {e : ExpHOL 64}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (IPre I L) (.assign .local n e) (IQ I L' Ret) :=
  hoareG_assign fun s hs hp v hv _ =>
    ⟨nb_none, fun _ => ⟨hS hp.1 rfl rfl rfl rfl, h s hs hp.2 v hv⟩, fun _ h => nomatch h⟩

theorem hoareG_returnA {I : State σ → Prop} (hS : IStable I) {e : ExpHOL 64}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → Ret v) :
    HoareG σ X (IPre I L) (.return e) (IQ I L' Ret) :=
  hoareG_return fun s hs hp v hv =>
    ⟨nb_ret _, (fun h => nomatch h), fun w hw => by
      simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
      subst hw
      exact ⟨hS hp.1 rfl rfl rfl rfl, h s hs hp.2 _ hv⟩⟩

theorem hoareG_seqA {I : State σ → Prop} {c d : ProgHOL 64} {L1 L2 L3 : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (hc : HoareG σ X (IPre I L1) c (IQ I L2 Ret)) (hd : HoareG σ X (IPre I L2) d (IQ I L3 Ret)) :
    HoareG σ X (IPre I L1) (.seq c d) (IQ I L3 Ret) :=
  hoareG_seq hc (fun _ _ _ hr _ h => ⟨h.1, fun h' => absurd h' hr, h.2.2⟩)
    (hoareG_pre hd fun _ _ h => h.2.1 rfl)

theorem hoareG_preA {I : State σ → Prop} {c : ProgHOL 64} {L L' : Locals → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (IPre I L') c Q) (hL : ∀ m, L m → L' m) : HoareG σ X (IPre I L) c Q :=
  hoareG_pre h fun _ _ hp => ⟨hp.1, hL _ hp.2⟩

theorem hoareG_postA {I : State σ → Prop} {c : ProgHOL 64} {P : State σ → Prop} {L L' : Locals → Prop}
    {Ret Ret' : ValueHOL 64 → Prop} (h : HoareG σ X P c (IQ I L Ret))
    (hL : ∀ m, L m → L' m) (hR : ∀ v, Ret v → Ret' v) : HoareG σ X P c (IQ I L' Ret') :=
  hoareG_conseq h (fun _ _ hp => hp) fun _ _ _ _ hq =>
    ⟨hq.1, fun hr => ⟨(hq.2.1 hr).1, hL _ (hq.2.1 hr).2⟩,
      fun v hv => ⟨(hq.2.2 v hv).1, hR v (hq.2.2 v hv).2⟩⟩

theorem hoareG_decA {I : State σ → Prop} (hS : IStable I) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (IPre I (fun m' => m' = s.locals.update (x, v))) body
        (IQ I (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (IPre I L) (.dec x sh e body) (IQ I Lout Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp.2 v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨hS hp.1 rfl rfl rfl rfl, rfl⟩
  · intro r t _ _ hq
    exact ⟨hq.1, fun hr => ⟨hS (hq.2.1 hr).1 rfl rfl rfl rfl,
      hout _ _ hp.2 (hq.2.1 hr).2⟩, fun v hv => ⟨hS (hq.2.2 v hv).1 rfl rfl rfl rfl,
      (hq.2.2 v hv).2⟩⟩

/-- A loop; the body completes normally with `J`, or leaves abnormally. -/
theorem hoareG_whileA {I : State σ → Prop} (hS : IStable I) {c : ExpHOL 64} {body : ProgHOL 64} {J J' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (hb : HoareG σ X (fun s => IPre I J s ∧ CondTrue s c) body (IQ I J Ret))
    (hexit : ∀ s : State σ, InCtx s X → J s.locals → ev s c = some (.val (.word 0)) →
      J' s.locals) :
    HoareG σ X (IPre I J) (.while c body) (IQ I J' Ret) := by
  refine hoareG_while (fun t h => ⟨hS h.1 rfl rfl rfl rfl, h.2⟩) ?_
    (fun s hs h hc => ⟨nb_none, fun _ => ⟨h.1, hexit s hs h.2 hc⟩, (fun _ h => nomatch h)⟩)
  intro t hs hpre hgood
  obtain ⟨hnb, hn, hr⟩ := hb t hs hpre hgood
  refine ⟨fun h0 => hn h0, fun h1 => absurd h1 hnb.2, fun h1 => absurd h1 hnb.1, ?_⟩
  intro r' h0 _ _
  exact ⟨hnb, fun h => absurd (h0.symm.trans h) (by simp), hr⟩

/-! ## Calls through `ASp` -/

theorem awInv_entry {I : State σ → Prop} (hS : IStable I) {s : State σ} (h : I s)
    (callee : Locals) : I (callEntryStateHOLFinite s callee) :=
  hS h rfl rfl rfl rfl

/-- `f(args);`, from any state predicate `P` that gives the invariant. -/
theorem hoareG_callAsP {I : State σ → Prop} (hS : IStable I) {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ISp I X f Pre Ret)
    {P : State σ → Prop} {L L' : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hPA : ∀ s : State σ, InCtx s X → P s → IPre I L s)
    (hpre : ∀ s : State σ, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hL : ∀ (s : State σ) vs v (st : State σ), L s.locals → evs s args = some vs →
      Ret vs v st → L' s.locals) :
    HoareG σ X P (.call (some (none, none)) f args) (IQ I L' Ret') := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx
    have hP' := hPA s hs hP
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hS hP'.1 callee) (hpre s hs hP vs hvs callee) v rfl
    exact ⟨nb_none, fun _ => ⟨hS hI rfl rfl rfl rfl, hL s vs v st hP'.2 hvs hRet⟩,
      (fun _ h => nomatch h)⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

/-- `f(args);` -/
theorem hoareG_callAs {I : State σ → Prop} (hS : IStable I) {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ISp I X f Pre Ret)
    {L L' : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → IPre I L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hL : ∀ (s : State σ) vs v (st : State σ), L s.locals → evs s args = some vs →
      Ret vs v st → L' s.locals) :
    HoareG σ X (IPre I L) (.call (some (none, none)) f args) (IQ I L' Ret') :=
  hoareG_callAsP hS hf (fun _ _ h => h) hpre hL

/-- `x = f(args);` -/
theorem hoareG_callAsA {I : State σ → Prop} (hS : IStable I) {f x : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ISp I X f Pre Ret)
    {L L' : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → IPre I L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hL : ∀ (s : State σ) vs v (st : State σ), L s.locals → evs s args = some vs →
      Ret vs v st → isValidValueHOLExact s.toExact .local x v = true →
      L' (s.locals.update (x, v))) :
    HoareG σ X (IPre I L) (.call (some (some (.local, x), none)) f args) (IQ I L' Ret') := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx hval
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hS hP.1 callee) (hpre s hs hP vs hvs callee) v rfl
    exact ⟨nb_none, fun _ => ⟨hS hI rfl rfl rfl rfl,
      hL s vs v st hP.2 hvs hRet hval⟩, (fun _ h => nomatch h)⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

/-- `return f(args)` -/
theorem hoareG_tailAs {I : State σ → Prop} (hS : IStable I) {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ISp I X f Pre Ret)
    {L L' : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → IPre I L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hL : ∀ (vs : List (ValueHOL 64)) v (st : State σ), Ret vs v st → Ret' v) :
    HoareG σ X (IPre I L) (.call none f args) (IQ I L' Ret') := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hS hP.1 callee) (hpre s hs hP vs hvs callee) v rfl
    refine ⟨nb_ret _, (fun h => nomatch h), fun w hw => ?_⟩
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact ⟨hS hI rfl rfl rfl rfl, hL vs v st hRet⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

/-- `var rn = f(args); k`, from any state predicate `P` that gives the invariant. -/
theorem hoareG_decCallAsP {I : State σ → Prop} (hS : IStable I) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ISp I X f Pre Ret)
    {P : State σ → Prop} {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    {Ret' : ValueHOL 64 → Prop}
    (hPA : ∀ s : State σ, InCtx s X → P s → IPre I L s)
    (hpre : ∀ s : State σ, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hk : ∀ (s : State σ) vs v (st : State σ), InCtx s X → L s.locals → evs s args = some vs →
      I st → Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k
        (IQ I (L' s.locals) Ret'))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X P (.decCall rn sh f args k) (IQ I Lout Ret') := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx hsh
    have hP' := hPA s hs hP
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hS hP'.1 callee) (hpre s hs hP vs hvs callee) v rfl
    refine hoareG_conseq (hk s vs v st hs hP'.2 hvs hI hRet hsh) (fun t _ ht => ?_) ?_
    · exact ht
    · intro r t _ _ hq
      exact ⟨hq.1, fun hr => ⟨hS (hq.2.1 hr).1 rfl rfl rfl rfl,
        hout _ _ hP'.2 (hq.2.1 hr).2⟩, fun w hw => ⟨hS (hq.2.2 w hw).1 rfl rfl rfl rfl,
        (hq.2.2 w hw).2⟩⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

/-- `var rn = f(args); k` -/
theorem hoareG_decCallAs {I : State σ → Prop} (hS : IStable I) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ISp I X f Pre Ret)
    {L Lout : Locals → Prop} {L' : Locals → Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → IPre I L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hk : ∀ (s : State σ) vs v (st : State σ), InCtx s X → L s.locals → evs s args = some vs →
      I st → Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k
        (IQ I (L' s.locals) Ret'))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (IPre I L) (.decCall rn sh f args k) (IQ I Lout Ret') :=
  hoareG_decCallAsP hS hf (fun _ _ h => h) hpre hk hout

/-- `var rn = f(args); k`, with the continuation's precondition given by a locals invariant. -/
theorem hoareG_decCallAs' {I : State σ → Prop} (hS : IStable I) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ISp I X f Pre Ret)
    {L Lout Lk : Locals → Prop} {L' : Locals → Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → IPre I L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hnew : ∀ (s : State σ) vs v (st : State σ), L s.locals → evs s args = some vs →
      Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true → Lk (s.locals.update (rn, v)))
    (hk : ∀ (s : State σ), HoareG σ X (IPre I Lk) k (IQ I (L' s.locals) Ret'))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (IPre I L) (.decCall rn sh f args k) (IQ I Lout Ret') :=
  hoareG_decCallAs hS hf hpre (fun s vs v st hs hL hvs hI hRet hsh =>
    hoareG_pre (hk s) (fun t _ ht => by
      subst ht
      exact ⟨hS hI rfl rfl rfl rfl, hnew s vs v st hL hvs hRet hsh⟩)) hout


end InitECandidate.Solver.MemSafe.Rcpt
