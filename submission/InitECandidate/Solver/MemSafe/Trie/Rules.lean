import InitECandidate.Solver.MemSafe.Rec.FootS

set_option autoImplicit false

/-!
# Allocation-aware footprint rules (`LXA`)

`Rec/FootS.lean` has the statement rules `hoareGX_*` for callees that keep the globals. The trie
encoders allocate (the cached RLP buffers, the hash buffers stay allocated), so here the same rule
family is stated with the post

* `BWA Rf s0 t = PMove s0 t ∧ ModifiesOnly Rf s0.memory t.memory`, where
  `PMove s0 t`: the allocator pointers of `t` are ordered and move monotonically from those of `s0`
  (`hp` and `fp` do not decrease, `sp` does not increase), and every global other than `heap_ptr` and
  `scratch_ptr` is as in `s0`.

`LPreA Rf s0 L` is the pre of a statement (locals `L`, `BWA Rf s0`), `LXA Rf s0 L Ret` its post: `BWA`
always, `L` on normal completion, an abnormal end or a return satisfying `Ret` otherwise. The rules
`hoareGA_*` mirror `hoareGX_*`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Rec

variable {σ : Type} {X : Ctx 64}

/-! ## The allocator motion -/

/-- The pointers of `t` are ordered and moved monotonically from those of `s0`; the other globals
are unchanged. -/
def PMove (s0 t : State σ) : Prop :=
  ∃ p p' : Ptrs, ptrsOf s0 = some p ∧ ptrsOf t = some p' ∧ p.Mono p' ∧ p'.Ordered ∧
    ∀ g, g ≠ gHeap → g ≠ gScratch → t.globals.lookup g = s0.globals.lookup g

theorem pmove_refl {s : State σ} {p : Ptrs} (hp : ptrsOf s = some p) (ho : p.Ordered) : PMove s s :=
  ⟨p, p, hp, hp, mono_refl p, ho, fun _ _ _ => rfl⟩

theorem pmove_trans {s0 s1 s2 : State σ} (h1 : PMove s0 s1) (h2 : PMove s1 s2) : PMove s0 s2 := by
  obtain ⟨p, p1, hp, hp1, hm1, ho1, hg1⟩ := h1
  obtain ⟨q1, p2, hq1, hp2, hm2, ho2, hg2⟩ := h2
  rw [hp1] at hq1
  cases hq1
  exact ⟨p, p2, hp, hp2, mono_trans hm1 hm2, ho2, fun g h1 h2 => (hg2 g h1 h2).trans (hg1 g h1 h2)⟩

theorem pmove_globals {s0 t u : State σ} (h : PMove s0 t) (hg : u.globals = t.globals) :
    PMove s0 u := by
  obtain ⟨p, p', hp, hp', hm, ho, hgl⟩ := h
  refine ⟨p, p', hp, ?_, hm, ho, fun g h1 h2 => by rw [hg]; exact hgl g h1 h2⟩
  unfold ptrsOf gword at hp' ⊢
  rw [hg]
  exact hp'

theorem pmove_congr_left {s s' t : State σ} (hg : s'.globals = s.globals) (h : PMove s' t) :
    PMove s t := by
  obtain ⟨p, p', hp, hp', hm, ho, hgl⟩ := h
  refine ⟨p, p', ?_, hp', hm, ho, fun g h1 h2 => by rw [hgl g h1 h2, hg]⟩
  unfold ptrsOf gword at hp ⊢
  rw [← hg]
  exact hp

theorem pmove_of_globals_eq {s t : State σ} {p : Ptrs} (hp : ptrsOf s = some p) (ho : p.Ordered)
    (hg : t.globals = s.globals) : PMove s t :=
  pmove_globals (pmove_refl hp ho) hg

/-- `BWA`: the allocator moved and memory changed only in `Rf`. -/
def BWA (Rf : BitVec 64 → Prop) (s0 t : State σ) : Prop :=
  PMove s0 t ∧ ModifiesOnly Rf s0.memory t.memory

theorem bwa_refl {Rf : BitVec 64 → Prop} {s : State σ} {p : Ptrs} (hp : ptrsOf s = some p)
    (ho : p.Ordered) : BWA Rf s s := ⟨pmove_refl hp ho, fun _ _ => rfl⟩

theorem bwa_mono {Rf Rf' : BitVec 64 → Prop} {s0 t : State σ} (h : BWA Rf s0 t)
    (hR : ∀ a, Rf a → Rf' a) : BWA Rf' s0 t := ⟨h.1, h.2.mono hR⟩

theorem bwa_trans {Rf : BitVec 64 → Prop} {s0 s1 s2 : State σ} (h1 : BWA Rf s0 s1)
    (h2 : BWA Rf s1 s2) : BWA Rf s0 s2 :=
  ⟨pmove_trans h1.1 h2.1, h1.2.trans h2.2⟩

/-! ## Statement posts -/

/-- The statement pre: locals invariant and `BWA`. -/
def LPreA (Rf : BitVec 64 → Prop) (s0 : State σ) (L : Locals → Prop) (t : State σ) : Prop :=
  L t.locals ∧ BWA Rf s0 t

/-- The statement post: `BWA` always; `L` on normal completion; an abnormal end or a return
satisfying `Ret` otherwise. -/
def LXA (Rf : BitVec 64 → Prop) (s0 : State σ) (L : Locals → Prop) (Ret : ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  BWA Rf s0 t ∧ (r = none → L t.locals) ∧
    ∀ r', r = some r' → Abn r' ∨ ∃ v, r' = .returned v ∧ Ret v

theorem lxa_abn_good {r : PanSemResultExact 64} (h : Abn r) : Good (some r) := abn_good h

/-! ## Callee specs -/

/-- A footprint spec whose precondition, footprint and return predicate read the entry state, with
allocator motion. -/
def FootRetA (σ : Type) (X : Ctx 64) (f : MlS) (Pre : List (ValueHOL 64) → State σ → Prop)
    (R : List (ValueHOL 64) → State σ → BitVec 64 → Prop)
    (Ret : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → Pre vs s →
    PMove s t ∧ ModifiesOnly (R vs s) s.memory t.memory ∧ ∀ v, r = .returned v → Ret vs s v)

theorem FootRetA.mono {f : MlS} {Pre Pre' : List (ValueHOL 64) → State σ → Prop}
    {R R' : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
    {Ret Ret' : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (h : FootRetA σ X f Pre R Ret) (hP : ∀ vs s, Pre' vs s → Pre vs s)
    (hR : ∀ vs s a, Pre' vs s → R vs s a → R' vs s a)
    (hRet : ∀ vs s v, Pre' vs s → Ret vs s v → Ret' vs s v) : FootRetA σ X f Pre' R' Ret' :=
  FunSpec.mono h fun vs s _ _ h hg hp' => by
    obtain ⟨h1, h2, h3⟩ := h hg (hP vs s hp')
    exact ⟨h1, h2.mono fun a ha => hR vs s a hp' ha, fun v hv => hRet vs s v hp' (h3 v hv)⟩

/-! ## Rules -/

section rules
variable {Rf : BitVec 64 → Prop} {s0 : State σ} {Ret : ValueHOL 64 → Prop}

theorem hoareGA_skip {L L' : Locals → Prop} (h : ∀ m, L m → L' m) :
    HoareG σ X (LPreA Rf s0 L) .skip (LXA Rf s0 L' Ret) :=
  hoareG_skip fun _ _ hp => ⟨hp.2, fun _ => h _ hp.1, fun _ h => nomatch h⟩

theorem hoareGA_assign {n : MlS} {e : ExpHOL 64} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (LPreA Rf s0 L) (.assign .local n e) (LXA Rf s0 L' Ret) :=
  hoareG_assign fun s hs hp v hv _ => ⟨hp.2, fun _ => h s hs hp v hv, fun _ h => nomatch h⟩

theorem hoareGA_seq {a b : ProgHOL 64} {L1 L2 L3 : Locals → Prop}
    (ha : HoareG σ X (LPreA Rf s0 L1) a (LXA Rf s0 L2 Ret))
    (hb : HoareG σ X (LPreA Rf s0 L2) b (LXA Rf s0 L3 Ret)) :
    HoareG σ X (LPreA Rf s0 L1) (.seq a b) (LXA Rf s0 L3 Ret) :=
  hoareG_seq ha (fun _ _ _ hr _ h => ⟨h.1, fun h' => absurd h' hr, h.2.2⟩)
    (hoareG_pre hb fun _ _ h => ⟨h.2.1 rfl, h.1⟩)

theorem hoareGA_pre {p : ProgHOL 64} {L L' : Locals → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (LPreA Rf s0 L') p Q) (hL : ∀ m, L m → L' m) :
    HoareG σ X (LPreA Rf s0 L) p Q :=
  hoareG_pre h fun _ _ hp => ⟨hL _ hp.1, hp.2⟩

theorem hoareGA_post {p : ProgHOL 64} {P : State σ → Prop} {L L' : Locals → Prop}
    {Ret' : ValueHOL 64 → Prop}
    (h : HoareG σ X P p (LXA Rf s0 L Ret)) (hL : ∀ m, L m → L' m) (hR : ∀ v, Ret v → Ret' v) :
    HoareG σ X P p (LXA Rf s0 L' Ret') :=
  hoareG_conseq h (fun _ _ hp => hp) fun _ _ _ _ hq =>
    ⟨hq.1, fun hr => hL _ (hq.2.1 hr), fun r' hr' => (hq.2.2 r' hr').imp id
      fun ⟨v, hv, hRv⟩ => ⟨v, hv, hR v hRv⟩⟩

theorem hoareGA_ite {c : ExpHOL 64} {a b : ProgHOL 64} {L L' : Locals → Prop}
    (ha : HoareG σ X (fun s => LPreA Rf s0 L s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a
      (LXA Rf s0 L' Ret))
    (hb : HoareG σ X (fun s => LPreA Rf s0 L s ∧ ev s c = some (.val (.word 0))) b
      (LXA Rf s0 L' Ret)) :
    HoareG σ X (LPreA Rf s0 L) (.ite c a b) (LXA Rf s0 L' Ret) :=
  hoareG_ite ha hb

theorem hoareGA_preC {p : ProgHOL 64} {L L' : Locals → Prop} {φ : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (LPreA Rf s0 L') p Q) (hL : ∀ s : State σ, L s.locals → φ s → L' s.locals) :
    HoareG σ X (fun s => LPreA Rf s0 L s ∧ φ s) p Q :=
  hoareG_pre h fun s _ hp => ⟨hL s hp.1.1 hp.2, hp.1.2⟩

theorem hoareGA_dec {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (LPreA Rf s0 (fun m' => m' = s.locals.update (x, v))) body
        (LXA Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (LPreA Rf s0 L) (.dec x sh e body) (LXA Rf s0 Lout Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨rfl, hp.2⟩
  · intro r t _ _ hq
    exact ⟨hq.1, fun hr => hout _ _ hp.1 (hq.2.1 hr), hq.2.2⟩

theorem hoareGA_return {e : ExpHOL 64} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ v, ev s e = some v → Ret v) :
    HoareG σ X (LPreA Rf s0 L) (.return e) (LXA Rf s0 L' Ret) :=
  hoareG_return fun s hs hp v hv => ⟨hp.2, (fun h => nomatch h), fun r' hr' => by
    cases hr'
    exact Or.inr ⟨v, rfl, h s hs hp v hv⟩⟩

section call
variable {f : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → State σ → Prop}
  {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop}
  {RetF : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}

/-- The callee obligation: its precondition and footprint at its entry state. -/
def CallOKA (Rf : BitVec 64 → Prop) (Pre : List (ValueHOL 64) → State σ → Prop)
    (R : List (ValueHOL 64) → State σ → BitVec 64 → Prop) (s : State σ)
    (vs : List (ValueHOL 64)) : Prop :=
  ∀ callee, Pre vs (callEntryStateHOLFinite s callee) ∧
    ∀ a, R vs (callEntryStateHOLFinite s callee) a → Rf a

theorem bwa_call {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {L : Locals → Prop}
    (hpre : LPreA Rf s0 L s)
    (hR : Good (some r) → Pre vs (callEntryStateHOLFinite s callee) →
      PMove (callEntryStateHOLFinite s callee) st ∧
      ModifiesOnly (R vs (callEntryStateHOLFinite s callee)) s.memory st.memory ∧
      ∀ v, r = .returned v → RetF vs (callEntryStateHOLFinite s callee) v)
    (hg : Good (some r)) (hok : CallOKA Rf Pre R s vs) :
    BWA Rf s0 st ∧ ∀ v, r = .returned v → RetF vs (callEntryStateHOLFinite s callee) v := by
  obtain ⟨hP, hsub⟩ := hok callee
  obtain ⟨hpm, hmod, hret⟩ := hR hg hP
  exact ⟨⟨pmove_trans hpre.2.1 (pmove_congr_left rfl hpm), hpre.2.2.trans (hmod.mono hsub)⟩, hret⟩

/-- `x = f(args);` -/
theorem hoareGA_callA {x : MlS} (hf : FootRetA σ X f Pre R RetF) {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ vs, evs s args = some vs →
      CallOKA Rf Pre R s vs)
    (hL : ∀ (s : State σ) vs v callee, InCtx s X → LPreA Rf s0 L s → evs s args = some vs →
      RetF vs (callEntryStateHOLFinite s callee) v →
      isValidValueHOLExact s.toExact .local x v = true → L' (s.locals.update (x, v))) :
    HoareG σ X (LPreA Rf s0 L) (.call (some (some (.local, x), none)) f args)
      (LXA Rf s0 L' Ret) := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hval
    obtain ⟨hbw, hret⟩ := bwa_call hpre hR (by simp [Good]) (h s hs hpre vs hvs)
    exact ⟨hbw, fun _ => hL s vs v callee hs hpre hvs (hret v rfl) hval, fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hbw, -⟩ := bwa_call hpre hR (abn_good habn) (h s hs hpre vs hvs)
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by cases hr'; exact Or.inl habn⟩

/-- `f(args);` -/
theorem hoareGA_callD (hf : FootRetA σ X f Pre R RetF) {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ vs, evs s args = some vs →
      CallOKA Rf Pre R s vs)
    (hL : ∀ (s : State σ), LPreA Rf s0 L s → L' s.locals) :
    HoareG σ X (LPreA Rf s0 L) (.call (some (none, none)) f args) (LXA Rf s0 L' Ret) := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hbw, -⟩ := bwa_call hpre hR (by simp [Good]) (h s hs hpre vs hvs)
    exact ⟨hbw, fun _ => hL s hpre, fun _ h => nomatch h⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hbw, -⟩ := bwa_call hpre hR (abn_good habn) (h s hs hpre vs hvs)
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by cases hr'; exact Or.inl habn⟩

/-- `var rn = f(args); k` -/
theorem hoareGA_decCall {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    (hf : FootRetA σ X f Pre R RetF) {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ vs, evs s args = some vs →
      CallOKA Rf Pre R s vs)
    (hk : ∀ (s : State σ) vs v callee, InCtx s X → LPreA Rf s0 L s → evs s args = some vs →
      RetF vs (callEntryStateHOLFinite s callee) v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (LPreA Rf s0 (fun m' => m' = s.locals.update (rn, v))) k
        (LXA Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (LPreA Rf s0 L) (.decCall rn sh f args k) (LXA Rf s0 Lout Ret) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hsh
    obtain ⟨hbw, hret⟩ := bwa_call hpre hR (by simp [Good]) (h s hs hpre vs hvs)
    refine hoareG_conseq (hk s vs v callee hs hpre hvs (hret v rfl) hsh) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, hbw⟩
    · intro r t _ _ hq
      exact ⟨hq.1, fun hr => hout _ _ hpre.1 (hq.2.1 hr), hq.2.2⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hbw, -⟩ := bwa_call hpre hR (abn_good habn) (h s hs hpre vs hvs)
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by cases hr'; exact Or.inl habn⟩

/-- `return f(args)` -/
theorem hoareGA_tail (hf : FootRetA σ X f Pre R RetF) {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ vs, evs s args = some vs →
      CallOKA Rf Pre R s vs ∧ ∀ callee v, RetF vs (callEntryStateHOLFinite s callee) v → Ret v) :
    HoareG σ X (LPreA Rf s0 L) (.call none f args) (LXA Rf s0 L' Ret) := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hok, hRet⟩ := h s hs hpre vs hvs
    obtain ⟨hbw, hret⟩ := bwa_call hpre hR (by simp [Good]) hok
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by
      cases hr'; exact Or.inr ⟨v, rfl, hRet callee v (hret v rfl)⟩⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hbw, -⟩ := bwa_call hpre hR (abn_good habn) (h s hs hpre vs hvs).1
    exact ⟨hbw, (fun h => nomatch h), fun r' hr' => by cases hr'; exact Or.inl habn⟩

end call


/-- **A loop** whose body ends normally keeping `J` or abnormally. -/
theorem hoareGA_while {c : ExpHOL 64} {body : ProgHOL 64} {J J' : Locals → Prop}
    (hb : HoareG σ X (fun s => LPreA Rf s0 J s ∧ CondTrue s c) body (LXA Rf s0 J (fun _ => False)))
    (hexit : ∀ s : State σ, InCtx s X → J s.locals → ev s c = some (.val (.word 0)) →
      J' s.locals) :
    HoareG σ X (LPreA Rf s0 J) (.while c body) (LXA Rf s0 J' Ret) := by
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
theorem hoareGA_storeByte {a e : ExpHOL 64} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ w x, ev s a = some (.val (.word w)) →
      ev s e = some (.val (.word x)) → Rf (panByteAlignHOL w) ∧
        ∀ mem, @panMemStoreByteWord8HOL 64 _ s.memory s.memaddrs
          (fun y => Classical.propDecidable (s.memaddrs y)) s.be w (BitVec.ofNat 8 x.toNat) =
          some mem → L' s.locals) :
    HoareG σ X (LPreA Rf s0 L) (.storeByte a e) (LXA Rf s0 L' Ret) := by
  refine hoareG_storeByte fun s hs hp w x mem hw hx hst => ?_
  obtain ⟨hR, hL⟩ := h s hs hp w x hw hx
  have hm := storeByte_mod hst
  exact ⟨⟨pmove_globals hp.2.1 rfl, hp.2.2.trans (hm.mono fun y hy => by subst hy; exact hR)⟩,
    fun _ => hL mem hst, fun _ h => nomatch h⟩

/-- A word store into a footprint cell. -/
theorem hoareGA_store {a e : ExpHOL 64} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPreA Rf s0 L s → ∀ w v mem,
      ev s a = some (.val (.word w)) → ev s e = some v →
      @panMemStoresHOL 64 _ w (flattenHOL v) s.memaddrs
        (fun x => Classical.propDecidable (s.memaddrs x)) s.memory = some mem →
      (∀ j, j < (flattenHOL v).length → Rf (w + BitVec.ofNat 64 (8 * j))) ∧ L' s.locals) :
    HoareG σ X (LPreA Rf s0 L) (.store a e) (LXA Rf s0 L' Ret) := by
  refine hoareG_store fun s hs hp w v mem hw hv hst => ?_
  obtain ⟨hR, hL⟩ := h s hs hp w v mem hw hv hst
  have hm := (stores_mod hst).1
  exact ⟨⟨pmove_globals hp.2.1 rfl, hp.2.2.trans (hm.mono fun y ⟨j, hj, hy⟩ => by
    subst hy; exact hR j hj)⟩, fun _ => hL, fun _ h => nomatch h⟩

end rules

end InitECandidate.Solver.MemSafe.Trie
