import InitECandidate.Solver.MemSafe.Rec.TxWrite

set_option autoImplicit false

/-!
# State-dependent footprint specs and a uniform statement post

* **`FootRetS σ X f Pre R Ret`**: every good result of `f` (under `Pre vs s`) keeps the globals,
  changes memory only in `R vs s`, and a returned value satisfies `Ret vs s` (`FootRet` with the
  entry state visible: a value read from memory, a footprint in the free heap).
  `FootRetS.of_footRet`, `FootRetS.mono`, `footRetS_of_hoareGX`.
* **`LX Rf s0 L Ret`**: the post of a statement inside such a proof: the footprint `BWPost Rf s0`
  always, the locals invariant `L` on normal completion, every other result abnormal or a return
  satisfying `Ret` (`Ret = False` in loop bodies). Rules: `hoareGX_skip`, `_assign`, `_seq`,
  `_ite`, `_dec`, `_decCall`, `_callA`, `_tail`, `_return`, `_while`, `_storeByte`, `_pre`,
  `_post`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## Specs -/

/-- A footprint spec whose precondition, footprint and return predicate read the entry state. -/
def FootRetS (σ : Type) (X : Ctx 64) (f : MlS) (Pre : List (ValueHOL 64) → State σ → Prop)
    (R : List (ValueHOL 64) → State σ → BitVec 64 → Prop)
    (Ret : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → Pre vs s →
    t.globals = s.globals ∧ ModifiesOnly (R vs s) s.memory t.memory ∧
      ∀ v, r = .returned v → Ret vs s v)

theorem FootRetS.of_footRet {f : MlS} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {Ret : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (h : FootRet σ X f Pre R Ret) :
    FootRetS σ X f (fun vs _ => Pre vs) (fun vs _ => R vs) (fun vs _ => Ret vs) := h

theorem FootRetS.mono {f : MlS} {Pre Pre' : List (ValueHOL 64) → State σ → Prop}
    {R R' : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
    {Ret Ret' : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (h : FootRetS σ X f Pre R Ret) (hP : ∀ vs s, Pre' vs s → Pre vs s)
    (hR : ∀ vs s a, Pre' vs s → R vs s a → R' vs s a)
    (hRet : ∀ vs s v, Pre' vs s → Ret vs s v → Ret' vs s v) : FootRetS σ X f Pre' R' Ret' :=
  FunSpec.mono h fun vs s _ _ h hg hp' => by
    obtain ⟨h1, h2, h3⟩ := h hg (hP vs s hp')
    exact ⟨h1, h2.mono fun a ha => hR vs s a hp' ha, fun v hv => hRet vs s v hp' (h3 v hv)⟩

/-- A `FootRetS` and a fact about returns. -/
theorem FootRetS.andRet {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
    {Ret Ret' : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (h : FootRetS σ X f Pre R Ret)
    (h' : FunSpec σ X f (fun vs s r _ => Good (some r) → Pre vs s → ∀ v, r = .returned v →
      Ret' vs s v)) :
    FootRetS σ X f Pre R (fun vs s v => Ret vs s v ∧ Ret' vs s v) :=
  FunSpec.mono (FunSpec.and h h') fun vs s _ _ ⟨h1, h2⟩ hg hp => by
    obtain ⟨a, b, c⟩ := h1 hg hp
    exact ⟨a, b, fun v hv => ⟨c v hv, h2 hg hp v hv⟩⟩

/-! ## The post -/

/-- Footprint always; `L` on normal completion; otherwise abnormal or a return with `Ret`. -/
def LX (Rf : BitVec 64 → Prop) (s0 : State σ) (L : Locals → Prop) (Ret : ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  BWPost Rf s0 t ∧ (r = none → L t.locals) ∧
    ∀ r', r = some r' → Abn r' ∨ ∃ v, r' = .returned v ∧ Ret v

theorem footRetS_of_hoareGX {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
    {Ret : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → Pre vs s0 →
        HoareG σ X (LPre (R vs s0) s0 (fun m => m = s0.locals)) body
          (LX (R vs s0) s0 (fun _ => True) (Ret vs s0))) :
    FootRetS σ X f Pre R Ret := by
  intro vs body callee rs hl s hs hloc r hr hg hP
  have := h vs body callee rs hl s hs hloc hP s hs ⟨rfl, rfl, fun _ _ => rfl⟩
    (by rw [hr]; exact hg)
  rw [hr] at this
  obtain ⟨⟨hgl, hmod⟩, -, hret⟩ := this
  refine ⟨hgl, hmod, fun v hv => ?_⟩
  subst hv
  rcases hret _ rfl with hab | ⟨w, hw, hR⟩
  · rcases hab with ⟨e, x, h⟩ | ⟨e, h⟩ <;> cases h
  · cases hw; exact hR

/-! ## Rules -/

section rules
variable {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop}

theorem hoareGX_skip {L L' : Locals → Prop} (h : ∀ m, L m → L' m) :
    HoareG σ X (LPre Rf s0 L) .skip (LX Rf s0 L' Ret) :=
  hoareG_skip fun _ _ hp => ⟨hp.2, fun _ => h _ hp.1, fun _ h => nomatch h⟩

theorem hoareGX_assign {n : MlS} {e : ExpHOL 64} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (LPre Rf s0 L) (.assign .local n e) (LX Rf s0 L' Ret) :=
  hoareG_assign fun s hs hp v hv _ => ⟨hp.2, fun _ => h s hs hp v hv, fun _ h => nomatch h⟩

theorem hoareGX_seq {a b : ProgHOL 64} {L1 L2 L3 : Locals → Prop}
    (ha : HoareG σ X (LPre Rf s0 L1) a (LX Rf s0 L2 Ret))
    (hb : HoareG σ X (LPre Rf s0 L2) b (LX Rf s0 L3 Ret)) :
    HoareG σ X (LPre Rf s0 L1) (.seq a b) (LX Rf s0 L3 Ret) :=
  hoareG_seq ha (fun _ _ _ hr _ h => ⟨h.1, fun h' => absurd h' hr, h.2.2⟩)
    (hoareG_pre hb fun _ _ h => ⟨h.2.1 rfl, h.1⟩)

theorem hoareGX_pre {p : ProgHOL 64} {L L' : Locals → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (LPre Rf s0 L') p Q) (hL : ∀ m, L m → L' m) :
    HoareG σ X (LPre Rf s0 L) p Q :=
  hoareG_pre h fun _ _ hp => ⟨hL _ hp.1, hp.2⟩

theorem hoareGX_post {p : ProgHOL 64} {P : State σ → Prop} {L L' : Locals → Prop}
    {Ret' : ValueHOL 64 → Prop}
    (h : HoareG σ X P p (LX Rf s0 L Ret)) (hL : ∀ m, L m → L' m) (hR : ∀ v, Ret v → Ret' v) :
    HoareG σ X P p (LX Rf s0 L' Ret') :=
  hoareG_conseq h (fun _ _ hp => hp) fun _ _ _ _ hq =>
    ⟨hq.1, fun hr => hL _ (hq.2.1 hr), fun r' hr' => (hq.2.2 r' hr').imp id
      fun ⟨v, hv, hRv⟩ => ⟨v, hv, hR v hRv⟩⟩

/-- `if c { a } else { b }` with the condition's value. -/
theorem hoareGX_ite {c : ExpHOL 64} {a b : ProgHOL 64} {L L' : Locals → Prop}
    (ha : HoareG σ X (fun s => LPre Rf s0 L s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a
      (LX Rf s0 L' Ret))
    (hb : HoareG σ X (fun s => LPre Rf s0 L s ∧ ev s c = some (.val (.word 0))) b
      (LX Rf s0 L' Ret)) :
    HoareG σ X (LPre Rf s0 L) (.ite c a b) (LX Rf s0 L' Ret) :=
  hoareG_ite ha hb

/-- A guard: under the extra fact `φ` (from the condition), `LPre` with a smaller invariant. -/
theorem hoareGX_preC {p : ProgHOL 64} {L L' : Locals → Prop} {φ : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (LPre Rf s0 L') p Q) (hL : ∀ s : State σ, L s.locals → φ s → L' s.locals) :
    HoareG σ X (fun s => LPre Rf s0 L s ∧ φ s) p Q :=
  hoareG_pre h fun s _ hp => ⟨hL s hp.1.1 hp.2, hp.1.2⟩

theorem hoareGX_dec {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (x, v))) body
        (LX Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (LPre Rf s0 L) (.dec x sh e body) (LX Rf s0 Lout Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨rfl, hp.2⟩
  · intro r t _ _ hq
    exact ⟨hq.1, fun hr => hout _ _ hp.1 (hq.2.1 hr), hq.2.2⟩

theorem hoareGX_return {e : ExpHOL 64} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ v, ev s e = some v → Ret v) :
    HoareG σ X (LPre Rf s0 L) (.return e) (LX Rf s0 L' Ret) :=
  hoareG_return fun s hs hp v hv => ⟨hp.2, (fun h => nomatch h), fun r' hr' => by
    cases hr'
    exact Or.inr ⟨v, rfl, h s hs hp v hv⟩⟩

section call
variable {f : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → State σ → Prop}
  {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
  {RetF : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}

/-- The callee obligation: its precondition and footprint at its entry state. -/
def CallOK (Rf : BitVec 64 → Prop) (Pre : List (ValueHOL 64) → State σ → Prop)
    (R : List (ValueHOL 64) → State σ → BitVec 64 → Prop) (s : State σ)
    (vs : List (ValueHOL 64)) : Prop :=
  ∀ callee, Pre vs (callEntryStateHOLFinite s callee) ∧
    ∀ a, R vs (callEntryStateHOLFinite s callee) a → Rf a

theorem bw_call {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {L : Locals → Prop}
    (hpre : LPre Rf s0 L s)
    (hR : Good (some r) → Pre vs (callEntryStateHOLFinite s callee) →
      st.globals = (callEntryStateHOLFinite s callee).globals ∧
      ModifiesOnly (R vs (callEntryStateHOLFinite s callee)) s.memory st.memory ∧
      ∀ v, r = .returned v → RetF vs (callEntryStateHOLFinite s callee) v)
    (hg : Good (some r)) (hok : CallOK Rf Pre R s vs) :
    BWPost Rf s0 st ∧ ∀ v, r = .returned v → RetF vs (callEntryStateHOLFinite s callee) v := by
  obtain ⟨hP, hsub⟩ := hok callee
  obtain ⟨hgl, hmod, hret⟩ := hR hg hP
  exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, hret⟩

/-- `x = f(args);` -/
theorem hoareGX_callA {x : MlS} (hf : FootRetS σ X f Pre R RetF) {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      CallOK Rf Pre R s vs)
    (hL : ∀ (s : State σ) vs v callee, InCtx s X → LPre Rf s0 L s → evs s args = some vs →
      RetF vs (callEntryStateHOLFinite s callee) v →
      isValidValueHOLExact s.toExact .local x v = true → L' (s.locals.update (x, v))) :
    HoareG σ X (LPre Rf s0 L) (.call (some (some (.local, x), none)) f args)
      (LX Rf s0 L' Ret) := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hval
    obtain ⟨hbw, hret⟩ := bw_call hpre hR (by simp [Good]) (h s hs hpre vs hvs)
    exact ⟨hbw, fun _ => hL s vs v callee hs hpre hvs (hret v rfl) hval, fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hbw, -⟩ := bw_call hpre hR (abn_good habn) (h s hs hpre vs hvs)
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by cases hr'; exact Or.inl habn⟩

/-- `f(args);` -/
theorem hoareGX_callD (hf : FootRetS σ X f Pre R RetF) {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      CallOK Rf Pre R s vs)
    (hL : ∀ (s : State σ), LPre Rf s0 L s → L' s.locals) :
    HoareG σ X (LPre Rf s0 L) (.call (some (none, none)) f args) (LX Rf s0 L' Ret) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hbw, -⟩ := bw_call hpre hR (by simp [Good]) (h s hs hpre vs hvs)
    exact ⟨hbw, fun _ => hL s hpre, fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hbw, -⟩ := bw_call hpre hR (abn_good habn) (h s hs hpre vs hvs)
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by cases hr'; exact Or.inl habn⟩

/-- `var rn = f(args); k` -/
theorem hoareGX_decCall {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hf : FootRetS σ X f Pre R RetF) {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      CallOK Rf Pre R s vs)
    (hk : ∀ (s : State σ) vs v callee, InCtx s X → LPre Rf s0 L s → evs s args = some vs →
      RetF vs (callEntryStateHOLFinite s callee) v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (rn, v))) k
        (LX Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (LPre Rf s0 L) (.decCall rn sh f args k) (LX Rf s0 Lout Ret) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hsh
    obtain ⟨hbw, hret⟩ := bw_call hpre hR (by simp [Good]) (h s hs hpre vs hvs)
    refine hoareG_conseq (hk s vs v callee hs hpre hvs (hret v rfl) hsh) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, hbw⟩
    · intro r t _ _ hq
      exact ⟨hq.1, fun hr => hout _ _ hpre.1 (hq.2.1 hr), hq.2.2⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hbw, -⟩ := bw_call hpre hR (abn_good habn) (h s hs hpre vs hvs)
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by cases hr'; exact Or.inl habn⟩

/-- `return f(args)` -/
theorem hoareGX_tail (hf : FootRetS σ X f Pre R RetF) {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      CallOK Rf Pre R s vs ∧ ∀ callee v, RetF vs (callEntryStateHOLFinite s callee) v → Ret v) :
    HoareG σ X (LPre Rf s0 L) (.call none f args) (LX Rf s0 L' Ret) := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hok, hRet⟩ := h s hs hpre vs hvs
    obtain ⟨hbw, hret⟩ := bw_call hpre hR (by simp [Good]) hok
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by
      cases hr'; exact Or.inr ⟨v, rfl, hRet callee v (hret v rfl)⟩⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hbw, -⟩ := bw_call hpre hR (abn_good habn) (h s hs hpre vs hvs).1
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by cases hr'; exact Or.inl habn⟩

end call

/-- **A loop** whose body ends normally keeping `J` or abnormally. -/
theorem hoareGX_while {c : ExpHOL 64} {body : ProgHOL 64} {J J' : Locals → Prop}
    (hb : HoareG σ X (fun s => LPre Rf s0 J s ∧ CondTrue s c) body (LX Rf s0 J (fun _ => False)))
    (hexit : ∀ s : State σ, InCtx s X → J s.locals → ev s c = some (.val (.word 0)) →
      J' s.locals) :
    HoareG σ X (LPre Rf s0 J) (.while c body) (LX Rf s0 J' Ret) := by
  refine hoareG_while (fun t h => h) ?_
    (fun s hs h hc => ⟨h.2, fun _ => hexit s hs h.1 hc, fun _ h => nomatch h⟩)
  intro t hs hpre hgood
  obtain ⟨hbw, hJ, hab⟩ := hb t hs hpre hgood
  have hab' : ∀ r', (evaluateHOLFiniteState t body).1 = some r' → Abn r' := fun r' hr' =>
    (hab r' hr').elim id fun ⟨_, _, h⟩ => h.elim
  refine ⟨fun hr => ⟨hJ hr, hbw⟩, fun hr => ?_, fun hr => ?_, fun r' hr' _ _ => ⟨hbw, ?_, ?_⟩⟩
  · rcases hab' _ hr with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h
  · rcases hab' _ hr with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h
  · intro h; rw [h] at hr'; cases hr'
  · intro r'' hr''
    rw [hr'] at hr''
    cases hr''
    exact Or.inl (hab' _ hr')

/-- A byte store into a footprint cell. -/
theorem hoareGX_storeByte {a e : ExpHOL 64} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ w x, ev s a = some (.val (.word w)) →
      ev s e = some (.val (.word x)) → Rf (panByteAlignHOL w) ∧
        ∀ mem, @panMemStoreByteWord8HOL 64 _ s.memory s.memaddrs
          (fun y => Classical.propDecidable (s.memaddrs y)) s.be w (BitVec.ofNat 8 x.toNat) =
          some mem → L' s.locals) :
    HoareG σ X (LPre Rf s0 L) (.storeByte a e) (LX Rf s0 L' Ret) := by
  refine hoareG_storeByte fun s hs hp w x mem hw hx hst => ?_
  obtain ⟨hR, hL⟩ := h s hs hp w x hw hx
  have hm := storeByte_mod hst
  exact ⟨⟨hp.2.1, hp.2.2.trans (hm.mono fun y hy => by subst hy; exact hR)⟩,
    fun _ => hL mem hst, fun _ h => nomatch h⟩

end rules

/-! ## Escape-free callees -/

theorem noAbn_of_ef {f : MlS} (h : CalleeEscFree σ X f) :
    FunSpec σ X f (fun _ _ r _ => ¬ Abn r) := by
  intro vs body callee rs hl s hs _ r hr hab
  have := h vs body callee rs hl s hs.1
  rw [hr] at this
  rcases hab with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
  · exact this.1 e v rfl
  · exact this.2 e rfl

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.hoareGX_while
#print axioms InitECandidate.Solver.MemSafe.Rec.footRetS_of_hoareGX
