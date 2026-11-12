import Flapjack.Pancake.Semantics.PanSem.EvaluateClock

/-!
# Source tick bounds: the core judgment

The challenge source semantics (`PanSemStateFiniteExact.semantics`) runs
`evaluateHOLFiniteState`, whose clock decreases only at `while` iterations,
calls and `tick`. Time-outs propagate to the top level, so inside any run that
ends in a non-time-out result every sub-evaluation is also non-time-out.

A covered run also keeps its code map and both memory domains fixed (`code_preserved`,
`domains_preserved`). `Ctx` records these three components and `InCtx s X` says that the
state `s` agrees with them.

`Cost σ X p B` says: from every state in context `X`, evaluating `p` either ends badly
(time-out or error), or consumes at most `B` clock ticks and stays in context `X`.
Composition rules follow the HOL-shaped equation `evaluateHOLFiniteState_eq_evaluate_def`.
Fixing the memory domains lets loop rules use that a successful memory access lies in a
bounded domain.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width]

abbrev CodeMap (width : Nat) [NeZero width] :=
  HolFiniteMapExact MlS (List (MlS × ShapeHOL) × ProgHOL width × ShapeHOL)

/-- A result that can occur inside a covered terminating run: errors and time-outs
always propagate to the top level, where they give `Fail` or no termination. -/
def Good {width : Nat} [NeZero width] (r : Option (PanSemResultExact width)) : Prop :=
  r ≠ some .timeOut ∧ r ≠ some .error

@[simp] theorem good_none : Good (none : Option (PanSemResultExact width)) := by
  simp [Good]
@[simp] theorem good_some_iff (r : PanSemResultExact width) :
    Good (some r) ↔ r ≠ .timeOut ∧ r ≠ .error := by simp [Good]

/-- The state components a covered run keeps fixed: the code map and the two memory
domains (ordinary and shared). -/
structure Ctx (width : Nat) [NeZero width] where
  code : CodeMap width
  memaddrs : BitVec width → Prop
  shMemaddrs : BitVec width → Prop

/-- The state `s` agrees with the context `X`. -/
def InCtx {σ : Type} (s : PanSemStateFiniteExact width σ) (X : Ctx width) : Prop :=
  s.code = X.code ∧ s.memaddrs = X.memaddrs ∧ s.shMemaddrs = X.shMemaddrs

theorem InCtx.of_eq {σ : Type} {s t : PanSemStateFiniteExact width σ} {X : Ctx width}
    (hs : InCtx s X) (h1 : t.code = s.code) (h2 : t.memaddrs = s.memaddrs)
    (h3 : t.shMemaddrs = s.shMemaddrs) : InCtx t X :=
  ⟨h1.trans hs.1, h2.trans hs.2.1, h3.trans hs.2.2⟩

/-- Good evaluation of `p` from a state in context `X` uses at most `B` ticks and stays in
context `X`. -/
def Cost (σ : Type) (X : Ctx width) (p : ProgHOL width) (B : Nat) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, InCtx s X →
    Good (evaluateHOLFiniteState s p).1 →
    s.clock ≤ (evaluateHOLFiniteState s p).2.clock + B ∧
      InCtx (evaluateHOLFiniteState s p).2 X

variable {σ : Type} {X : Ctx width}

theorem Cost.mono {p : ProgHOL width} {B B' : Nat} (h : Cost σ X p B) (hle : B ≤ B') :
    Cost σ X p B' := by
  intro s hs hto
  obtain ⟨h1, h2⟩ := h s hs hto
  exact ⟨by omega, h2⟩

theorem cost_skip : Cost σ X (.skip : ProgHOL width) 0 := by
  intro s hs _
  simp only [evaluateHOLFiniteState_skip]
  exact ⟨by omega, hs⟩

theorem cost_tick : Cost σ X (.tick : ProgHOL width) 1 := by
  intro s hs hto
  rw [evaluateHOLFiniteState_tick] at hto ⊢
  by_cases hclock : s.clock = 0
  · simp [hclock, Good] at hto
  · simp only [hclock, if_false, decClockHOLFinite]
    exact ⟨by (try dsimp only); omega, hs⟩

theorem cost_seq {p q : ProgHOL width} {Bp Bq : Nat}
    (hp : Cost σ X p Bp) (hq : Cost σ X q Bq) : Cost σ X (.seq p q) (Bp + Bq) := by
  intro s hs hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq p q)] at hto ⊢
  dsimp only at hto ⊢
  cases h1 : (evaluateHOLFiniteState s p).1 with
  | none =>
      simp only [h1] at hto ⊢
      have hp' := hp s hs (by rw [h1]; exact good_none)
      have hq' := hq _ hp'.2 hto
      exact ⟨by omega, hq'.2⟩
  | some r =>
      simp only [h1] at hto ⊢
      have hp' := hp s hs (by rw [h1]; exact hto)
      exact ⟨by omega, hp'.2⟩

macro "leafcc" : tactic => `(tactic| (
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  try unfold shMemLoadHOLFiniteExact
  try unfold shMemStoreHOLExact
  repeat' (first | split | constructor)
  all_goals (try simp_all [setKvarHOLFinite, setVarHOLFinite, setGlobalHOLFinite,
    emptyLocalsHOLFinite, ofExact, PanSemStateFiniteExact.toExact, setKvarFfiHOLFinite])))

theorem leaf_assign (s : PanSemStateFiniteExact width σ) k n e :
    (evaluateHOLFiniteState s (.assign k n e)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.assign k n e)).2.code = s.code := by cases k <;> leafcc
theorem leaf_prim (s : PanSemStateFiniteExact width σ) n o a :
    (evaluateHOLFiniteState s (.primitive n o a)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.primitive n o a)).2.code = s.code := by leafcc
theorem leaf_store (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.store a v)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.store a v)).2.code = s.code := by leafcc
theorem leaf_store32 (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.store32 a v)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.store32 a v)).2.code = s.code := by leafcc
theorem leaf_storeB (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.storeByte a v)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.storeByte a v)).2.code = s.code := by leafcc
theorem leaf_ext (s : PanSemStateFiniteExact width σ) f a b c d :
    (evaluateHOLFiniteState s (.extCall f a b c d)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.extCall f a b c d)).2.code = s.code := by leafcc
theorem leaf_raise (s : PanSemStateFiniteExact width σ) x e :
    (evaluateHOLFiniteState s (.raise x e)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.raise x e)).2.code = s.code := by leafcc
theorem leaf_ret (s : PanSemStateFiniteExact width σ) e :
    (evaluateHOLFiniteState s (.return e)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.return e)).2.code = s.code := by leafcc
theorem leaf_shl (s : PanSemStateFiniteExact width σ) o k n a :
    (evaluateHOLFiniteState s (.shMemLoad o k n a)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.shMemLoad o k n a)).2.code = s.code := by cases k <;> leafcc
theorem shStore_clock (st : PanSemStateExact width σ) {inst : DecidablePred st.shMemaddrs} w a nb :
    (shMemStoreHOLExact st w a nb).2.clock = st.clock := by
  unfold shMemStoreHOLExact
  repeat' split
  all_goals rfl
theorem shStore_code (st : PanSemStateExact width σ) {inst : DecidablePred st.shMemaddrs} w a nb :
    (shMemStoreHOLExact st w a nb).2.code = st.code := by
  unfold shMemStoreHOLExact
  repeat' split
  all_goals rfl
theorem fmap_eq_of_lookup {α β : Type} {m : HolFiniteMapExact α β} {f : α → Option β}
    {p : ∃ keys : List α, ∀ key, f key ≠ none → key ∈ keys} (h : f = m.lookup) :
    ({ lookup := f, finiteSupport := p } : HolFiniteMapExact α β) = m := by
  cases m; subst h; rfl
theorem leaf_shs (s : PanSemStateFiniteExact width σ) o a v :
    (evaluateHOLFiniteState s (.shMemStore o a v)).2.clock = s.clock ∧
    (evaluateHOLFiniteState s (.shMemStore o a v)).2.code = s.code := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · refine ⟨?_, ?_⟩
    · simp only [ofExact]; exact shStore_clock (width := width) _ _ _ _
    · simp only [ofExact]; exact fmap_eq_of_lookup (shStore_code (width := width) _ _ _ _)
  · exact ⟨rfl, rfl⟩

/-! Leaf statements keep both memory domains. -/

theorem leafD_assign (s : PanSemStateFiniteExact width σ) k n e :
    (evaluateHOLFiniteState s (.assign k n e)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.assign k n e)).2.shMemaddrs = s.shMemaddrs := by cases k <;> leafcc
theorem leafD_prim (s : PanSemStateFiniteExact width σ) n o a :
    (evaluateHOLFiniteState s (.primitive n o a)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.primitive n o a)).2.shMemaddrs = s.shMemaddrs := by leafcc
theorem leafD_store (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.store a v)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.store a v)).2.shMemaddrs = s.shMemaddrs := by leafcc
theorem leafD_store32 (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.store32 a v)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.store32 a v)).2.shMemaddrs = s.shMemaddrs := by leafcc
theorem leafD_storeB (s : PanSemStateFiniteExact width σ) a v :
    (evaluateHOLFiniteState s (.storeByte a v)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.storeByte a v)).2.shMemaddrs = s.shMemaddrs := by leafcc
theorem leafD_ext (s : PanSemStateFiniteExact width σ) f a b c d :
    (evaluateHOLFiniteState s (.extCall f a b c d)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.extCall f a b c d)).2.shMemaddrs = s.shMemaddrs := by leafcc
theorem leafD_raise (s : PanSemStateFiniteExact width σ) x e :
    (evaluateHOLFiniteState s (.raise x e)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.raise x e)).2.shMemaddrs = s.shMemaddrs := by leafcc
theorem leafD_ret (s : PanSemStateFiniteExact width σ) e :
    (evaluateHOLFiniteState s (.return e)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.return e)).2.shMemaddrs = s.shMemaddrs := by leafcc
theorem leafD_shl (s : PanSemStateFiniteExact width σ) o k n a :
    (evaluateHOLFiniteState s (.shMemLoad o k n a)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.shMemLoad o k n a)).2.shMemaddrs = s.shMemaddrs := by
  cases k <;> leafcc
theorem shStore_memaddrs (st : PanSemStateExact width σ) {inst : DecidablePred st.shMemaddrs}
    w a nb : (shMemStoreHOLExact st w a nb).2.memaddrs = st.memaddrs := by
  unfold shMemStoreHOLExact
  repeat' split
  all_goals rfl
theorem shStore_shMemaddrs (st : PanSemStateExact width σ) {inst : DecidablePred st.shMemaddrs}
    w a nb : (shMemStoreHOLExact st w a nb).2.shMemaddrs = st.shMemaddrs := by
  unfold shMemStoreHOLExact
  repeat' split
  all_goals rfl
theorem leafD_shs (s : PanSemStateFiniteExact width σ) o a v :
    (evaluateHOLFiniteState s (.shMemStore o a v)).2.memaddrs = s.memaddrs ∧
    (evaluateHOLFiniteState s (.shMemStore o a v)).2.shMemaddrs = s.shMemaddrs := by
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · refine ⟨?_, ?_⟩
    · simp only [ofExact]; exact shStore_memaddrs (width := width) _ _ _ _
    · simp only [ofExact]; exact shStore_shMemaddrs (width := width) _ _ _ _
  · exact ⟨rfl, rfl⟩

theorem Cost.of_preserve {p : ProgHOL width}
    (h : ∀ s : PanSemStateFiniteExact width σ,
      (evaluateHOLFiniteState s p).2.clock = s.clock ∧
        (evaluateHOLFiniteState s p).2.code = s.code)
    (hd : ∀ s : PanSemStateFiniteExact width σ,
      (evaluateHOLFiniteState s p).2.memaddrs = s.memaddrs ∧
        (evaluateHOLFiniteState s p).2.shMemaddrs = s.shMemaddrs) : Cost σ X p 0 := by
  intro s hs _
  obtain ⟨h1, h2⟩ := h s
  obtain ⟨h3, h4⟩ := hd s
  exact ⟨by omega, hs.of_eq h2 h3 h4⟩

theorem cost_assign (k : VarKind) (n : MlS) (e : ExpHOL width) :
    Cost σ X (.assign k n e) 0 :=
  Cost.of_preserve (fun s => leaf_assign s k n e) (fun s => leafD_assign s k n e)
theorem cost_primitive (n : MlS) (o : PrimOp) (a : List (ExpHOL width)) :
    Cost σ X (.primitive n o a) 0 :=
  Cost.of_preserve (fun s => leaf_prim s n o a) (fun s => leafD_prim s n o a)
theorem cost_store (a v : ExpHOL width) : Cost σ X (.store a v) 0 :=
  Cost.of_preserve (fun s => leaf_store s a v) (fun s => leafD_store s a v)
theorem cost_store32 (a v : ExpHOL width) : Cost σ X (.store32 a v) 0 :=
  Cost.of_preserve (fun s => leaf_store32 s a v) (fun s => leafD_store32 s a v)
theorem cost_storeByte (a v : ExpHOL width) : Cost σ X (.storeByte a v) 0 :=
  Cost.of_preserve (fun s => leaf_storeB s a v) (fun s => leafD_storeB s a v)
theorem cost_extCall (f : MlS) (a b c d : ExpHOL width) : Cost σ X (.extCall f a b c d) 0 :=
  Cost.of_preserve (fun s => leaf_ext s f a b c d) (fun s => leafD_ext s f a b c d)
theorem cost_raise (x : MlS) (e : ExpHOL width) : Cost σ X (.raise x e) 0 :=
  Cost.of_preserve (fun s => leaf_raise s x e) (fun s => leafD_raise s x e)
theorem cost_return (e : ExpHOL width) : Cost σ X (.return e) 0 :=
  Cost.of_preserve (fun s => leaf_ret s e) (fun s => leafD_ret s e)
theorem cost_shMemLoad (o : OpSize) (k : VarKind) (n : MlS) (a : ExpHOL width) :
    Cost σ X (.shMemLoad o k n a) 0 :=
  Cost.of_preserve (fun s => leaf_shl s o k n a) (fun s => leafD_shl s o k n a)
theorem cost_shMemStore (o : OpSize) (a v : ExpHOL width) : Cost σ X (.shMemStore o a v) 0 :=
  Cost.of_preserve (fun s => leaf_shs s o a v) (fun s => leafD_shs s o a v)
theorem cost_break : Cost σ X (.break : ProgHOL width) 0 :=
  Cost.of_preserve
    (fun s => by rw [evaluateHOLFiniteState_eq_evaluate_def]; exact ⟨rfl, rfl⟩)
    (fun s => by rw [evaluateHOLFiniteState_eq_evaluate_def]; exact ⟨rfl, rfl⟩)
theorem cost_continue : Cost σ X (.continue : ProgHOL width) 0 :=
  Cost.of_preserve
    (fun s => by rw [evaluateHOLFiniteState_eq_evaluate_def]; exact ⟨rfl, rfl⟩)
    (fun s => by rw [evaluateHOLFiniteState_eq_evaluate_def]; exact ⟨rfl, rfl⟩)
theorem cost_annot (a b : MlS) : Cost σ X (.annot a b : ProgHOL width) 0 :=
  Cost.of_preserve
    (fun s => by rw [evaluateHOLFiniteState_eq_evaluate_def]; exact ⟨rfl, rfl⟩)
    (fun s => by rw [evaluateHOLFiniteState_eq_evaluate_def]; exact ⟨rfl, rfl⟩)

theorem cost_ite {c : ExpHOL width} {a b : ProgHOL width} {Ba Bb : Nat}
    (ha : Cost σ X a Ba) (hb : Cost σ X b Bb) : Cost σ X (.ite c a b) (max Ba Bb) := by
  intro s hs hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · split
    · intro hto; obtain ⟨h1, h2⟩ := hb s hs hto; exact ⟨by omega, h2⟩
    · intro hto; obtain ⟨h1, h2⟩ := ha s hs hto; exact ⟨by omega, h2⟩
  · intro _; exact ⟨by (try dsimp only); omega, hs⟩

theorem cost_dec {n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (hb : Cost σ X body B) : Cost σ X (.dec n sh e body) B := by
  intro s hs hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e body)]
  dsimp only
  split
  · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  · split
    · intro hto
      obtain ⟨h1, h2⟩ := hb (setVarHOLFinite n _ s) hs hto
      exact ⟨by simpa [setVarHOLFinite] using h1, h2⟩
    · intro _; exact ⟨by (try dsimp only); omega, hs⟩

/-- The loop condition evaluates to a nonzero word, exactly as the `while`
clause of `evaluateHOLFiniteState_eq_evaluate_def` reads it. -/
def CondTrue (s : PanSemStateFiniteExact width σ) (c : ExpHOL width) : Prop :=
  ∃ w, @evalHOLFinite width σ _ s (fun address => Classical.propDecidable (s.memaddrs address)) c =
    some (.val (.word w)) ∧ w ≠ 0

theorem cost_while_aux {c : ExpHOL width} {body : ProgHOL width} {Bb : Nat}
    (μ : PanSemStateFiniteExact width σ → Nat)
    (hbody : Cost σ X body Bb)
    (hdec : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c → 0 < s.clock →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s) :
    ∀ n (s : PanSemStateFiniteExact width σ), InCtx s X → (CondTrue s c → μ s < n) →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) ∧
        InCtx (evaluateHOLFiniteState s (.while c body)).2 X := by
  intro n
  induction n with
  | zero =>
      intro s hs hμ hto
      revert hto
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          exact absurd (hμ ⟨w, hw, hne⟩) (Nat.not_lt_zero _)
        · intro _; exact ⟨by (try dsimp only); omega, hs⟩
      · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  | succ n ih =>
      intro s hs hμ hto
      revert hto
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          have hcond : CondTrue s c := ⟨w, hw, hne⟩
          split
          · intro hto; exact absurd rfl hto.1
          · rename_i hclock
            have hpos : 0 < s.clock := Nat.pos_of_ne_zero hclock
            have hdecs : InCtx (decClockHOLFinite s) X := hs
            have hcl : (decClockHOLFinite s).clock + 1 = s.clock := by
              simp [decClockHOLFinite]; omega
            have hμs : μ s < n + 1 := hμ hcond
            cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
            | none =>
              simp only []
              intro hto
              obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
              have hlt := hdec s hs hcond hpos (Or.inl ho)
              obtain ⟨r1, r2⟩ := ih _ b2 (fun _ => by omega) hto
              exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                have hlt := hdec s hs hcond hpos (Or.inr ho)
                obtain ⟨r1, r2⟩ := ih _ b2 (fun _ => by omega) hto
                exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
              | «break» =>
                simp only []
                intro _
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                exact ⟨by (try dsimp only); rw [Nat.succ_mul]; omega, b2⟩
              | _ =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; exact hto)
                exact ⟨by (try dsimp only); rw [Nat.succ_mul]; omega, b2⟩
        · intro _; exact ⟨by (try dsimp only); omega, hs⟩
      · intro _; exact ⟨by (try dsimp only); omega, hs⟩

/-- Measure rule: while the condition holds the measure is at most `M` and each
completed iteration strictly decreases it, so the loop runs at most `M + 1`
iterations of cost `Bb + 1`. -/
theorem cost_while {c : ExpHOL width} {body : ProgHOL width} {Bb : Nat}
    (μ : PanSemStateFiniteExact width σ → Nat) (M : Nat)
    (hbody : Cost σ X body Bb)
    (hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c → μ s ≤ M)
    (hdec : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c → 0 < s.clock →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s) :
    Cost σ X (.while c body) ((M + 1) * (Bb + 1)) := by
  intro s hs hto
  exact cost_while_aux μ hbody hdec (M + 1) s hs (fun h => by have := hM s hs h; omega) hto

end InitECandidate.Solver.SourceCost
