import InitECandidate.Solver.Spec.MemFree
import InitECandidate.Solver.Spec.Loop

/-!
# Conditional costs and global invariants

## Design

`Cost σ X p B` (`SourceCost/Basic.lean`) bounds a Good run of `p` from *every* state of the
context `X`. Some guest loops are bounded only in heaps that a real run can produce: their
measure reads heap cells that callees in the loop body write through heap-derived pointers
(`htab_truncate`: the count `ld (t + 24)`, decremented by `htab_del`, which also stores
through `nodes + 32 * s`, ...). For those we use costs *under a precondition*.

**Judgments.**

* `CostP σ X P p B`: from every state of `X` satisfying `P`, a Good run of `p` uses at most
  `B` ticks. It carries no post; facts about the final state come from the Hoare layer
  (`Spec/Hoare.lean`, `Spec/HoareExt.lean`), which already has the full rule set. The
  composition rules thread the precondition with a Hoare triple: `costP_seq` needs
  `Hoare P a (none ⇒ R)` and `CostP R b`; `costP_while` needs a loop invariant `I` kept by the
  body (`Hoare`), a measure bounded under `I` and decreased by every completed iteration
  (`Hoare`), and `CostP (I ∧ cond) body`.
* `CostI σ X I p B := CostP σ X I p B ∧ Hoare σ X I p (fun _ t => I t)`: costs at most `B`
  and ends (tracked results: normal, `break`, `continue`, `return`) in `I`.
* Embedding: an all-states `Cost` is a `CostP` for every `P` (`costP_of_cost`), and a
  `CostI` for every `I` it preserves (`costI_of_cost`); `CostP (fun _ => True)` is `Cost`
  (`cost_of_costP_true`). So the existing analyzer's table entries are used unchanged
  inside conditional proofs.

**Conditional table entries.** `CalleeCostP σ X f Pre B`: every body the code map installs
for `f`, run from its entry state (`locals = callee`) on arguments `vs` with `Pre vs s`,
costs at most `B`. A call site discharges `Pre` from the caller's precondition
(`costP_call`): `∀ s, P s → evs s args = some vs → Pre vs (callEntryStateHOLFinite s _)`.
This is a per-call-site proof obligation, usually a Hoare argument in the caller. The
syntactic analyzer `costA` cannot discharge it, so a conditional entry lifts its callers
out of `costA` until a caller *closes* it: proves `Pre` from facts it establishes itself
(e.g. it just built the table), at which point the caller has an all-states `Cost` again
and re-enters the table (`Bridge.lean`, `tblSound_insert`).

**Frames.** A conditional spec is only usable if callers can re-establish the
preconditions of *later* calls. So every mutator spec (here `htab_del`) is a `FunSpec`
(`HoareExt.lean`) that states what it changes (the table's own regions) and what it keeps.
Without such a modifies-clause the second `htab_truncate` in `rollback_child_access`
(other table) could not be justified after the first.

**Global invariant.** Alternatively one heap predicate `G` (on `memory` and some globals)
is maintained by every function of the reachable set, and every conditional entry uses
`Pre := G ∧ (local argument facts)`. `G` holds at call boundaries, not at every
intermediate state (a mutator breaks it between two stores), so it is *not* a context
component like `InCtx`; it is a `FunSpec` "`G` at entry ⇒ `G` at exit" per function:

* footprint class 1 (`gInv_of_footprint`): functions that write no memory and none of
  `G`'s globals (`MwClosed` / `GwClosed`, kernel-checked by `decide_cbv`) keep any `G`
  that depends only on memory and those globals (`HeapOnly`);
* class 2: functions that write memory only outside `G`'s regions (fresh allocations,
  EVM memory, scratch) — needs a *region* footprint checker that does not exist yet
  (address = allocation result or argument-derived pointer + bounded offset);
* class 3: the mutators of `G`'s structures — hand-written Hoare proofs of preservation
  (here: `htab_del`; `Inv/Htab.lean` states the obligation).

**Per-call-site preconditions vs. one global invariant.** Per-call preconditions are
cheap when the structure is created, mutated and consumed within a short call chain
(`htab_truncate` ← `rollback_child_access` ← `finish_child`): the obligation is local
and the frame conditions of the few intervening calls suffice. They do not scale when the
structure lives across the whole interpreter loop: the EVM access-set tables and the MPT
node graph are created once and mutated by hundreds of functions between creation and use,
and every intervening call needs a frame condition saying it does not touch them — that is
a global invariant in disguise, stated per function. For MPT and `run_frames` one global
invariant `G` (allocator discipline: all live records lie below `heap_ptr` / above
`scratch_ptr`, plus the per-structure shape invariants) with footprint classes 1–3 is the
scalable option; the bulk of the work is the class-2 region checker, which turns most of
the 263 storing functions into automatic preservation proofs.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

section general
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## The judgments -/

/-- Conditional cost: a Good run of `p` from a state of `X` satisfying `P` uses at most `B`
ticks. -/
def CostP (σ : Type) (X : Ctx width) (P : PanSemStateFiniteExact width σ → Prop)
    (p : ProgHOL width) (B : Nat) : Prop :=
  ∀ s, InCtx s X → P s → Good (evaluateHOLFiniteState s p).1 →
    s.clock ≤ (evaluateHOLFiniteState s p).2.clock + B

/-- Conditional cost with an invariant: from `I`, at most `B` ticks, and every tracked result
ends in `I`. -/
def CostI (σ : Type) (X : Ctx width) (I : PanSemStateFiniteExact width σ → Prop)
    (p : ProgHOL width) (B : Nat) : Prop :=
  CostP σ X I p B ∧ Hoare σ X I p (fun _ t => I t)

theorem CostP.mono {P : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B B' : Nat}
    (h : CostP σ X P p B) (hle : B ≤ B') : CostP σ X P p B' := by
  intro s hs hp hg
  have := h s hs hp hg
  omega

theorem CostP.pre {P P' : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B : Nat}
    (h : CostP σ X P p B) (hP : ∀ s, InCtx s X → P' s → P s) : CostP σ X P' p B :=
  fun s hs hp hg => h s hs (hP s hs hp) hg

/-- Ghost values in the precondition. -/
theorem costP_exists {α : Type} {P : α → PanSemStateFiniteExact width σ → Prop}
    {p : ProgHOL width} {B : Nat} (h : ∀ a, CostP σ X (P a) p B) :
    CostP σ X (fun s => ∃ a, P a s) p B :=
  fun s hs ⟨a, ha⟩ hg => h a s hs ha hg

/-- An all-states cost is a conditional cost for every precondition. -/
theorem costP_of_cost {P : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B : Nat}
    (h : Cost σ X p B) : CostP σ X P p B :=
  fun s hs _ hg => (h s hs hg).1

/-- With the trivial precondition the two judgments agree. -/
theorem cost_of_costP_true {p : ProgHOL width} {B : Nat}
    (h : CostP σ X (fun _ => True) p B) : Cost σ X p B :=
  fun s hs hg => ⟨h s hs trivial hg, inCtx_eval hs p⟩

/-- An all-states cost is a `CostI` for every invariant the program preserves. -/
theorem costI_of_cost {I : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B : Nat}
    (h : Cost σ X p B) (hI : Hoare σ X I p (fun _ t => I t)) : CostI σ X I p B :=
  ⟨costP_of_cost h, hI⟩

/-- `CostI` unfolded: cost bound and final invariant, for Good runs. -/
theorem CostI.run {I : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width} {B : Nat}
    (h : CostI σ X I p B) {s : PanSemStateFiniteExact width σ} (hs : InCtx s X) (hi : I s)
    (hg : Good (evaluateHOLFiniteState s p).1) :
    s.clock ≤ (evaluateHOLFiniteState s p).2.clock + B ∧
      (Tracked (evaluateHOLFiniteState s p).1 → I (evaluateHOLFiniteState s p).2) :=
  ⟨h.1 s hs hi hg, fun ht => h.2 s hs hi ht⟩

/-! ## Structural rules -/

theorem costP_seq {P R : PanSemStateFiniteExact width σ → Prop} {a b : ProgHOL width}
    {Ba Bb : Nat} (ha : CostP σ X P a Ba)
    (hm : Hoare σ X P a (fun r t => r = none → R t)) (hb : CostP σ X R b Bb) :
    CostP σ X P (.seq a b) (Ba + Bb) := by
  intro s hs hp hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)] at hg ⊢
  dsimp only at hg ⊢
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      simp only [h1] at hg ⊢
      have ha' := ha s hs hp (by rw [h1]; exact good_none)
      have hR := hm s hs hp (by rw [h1]; trivial)
      rw [h1] at hR
      have hb' := hb _ (inCtx_eval hs a) (hR rfl) hg
      omega
  | some r =>
      simp only [h1] at hg ⊢
      have ha' := ha s hs hp (by rw [h1]; exact hg)
      omega

theorem costI_seq {I : PanSemStateFiniteExact width σ → Prop} {a b : ProgHOL width}
    {Ba Bb : Nat} (ha : CostI σ X I a Ba) (hb : CostI σ X I b Bb) :
    CostI σ X I (.seq a b) (Ba + Bb) :=
  ⟨costP_seq ha.1 (hoare_post ha.2 fun _ _ _ _ h _ => h) hb.1,
    hoare_seq ha.2 (fun _ _ _ _ _ h => h) hb.2⟩

theorem costP_ite {P : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {a b : ProgHOL width} {Ba Bb : Nat}
    (ha : CostP σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) a Ba)
    (hb : CostP σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) b Bb) :
    CostP σ X P (.ite c a b) (max Ba Bb) := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i h0
      subst h0
      intro hg
      have := hb s hs ⟨hp, hw⟩ hg
      omega
    · rename_i h0
      intro hg
      have := ha s hs ⟨hp, w, hw, h0⟩ hg
      omega
  · intro _
    (try dsimp only)
    omega

/-- `var n = e; body`: the body runs from the exact updated state (as in `hoare_dec`). -/
theorem costP_dec {P : PanSemStateFiniteExact width σ → Prop} {n : MlS} {sh : ShapeHOL}
    {e : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      CostP σ X (fun t => t = setVarHOLFinite n v s) body B) :
    CostP σ X P (.dec n sh e body) B := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e body)]
  dsimp only
  split
  · intro _; (try dsimp only); omega
  · rename_i v hv
    split
    · rename_i hsh
      intro hg
      have := h s hs hp v hv hsh (setVarHOLFinite n v s) hs rfl hg
      simpa [setVarHOLFinite] using this
    · intro _; (try dsimp only); omega

theorem condTrue_decClock {s : PanSemStateFiniteExact width σ} {c : ExpHOL width} :
    CondTrue (decClockHOLFinite s) c ↔ CondTrue s c := by
  unfold CondTrue decClockHOLFinite
  rw [evalHOLFinite_upd_clock_eq]

/-! ## Loops under an invariant -/

theorem costP_while_aux {I : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {body : ProgHOL width} {Bb : Nat} (μ : PanSemStateFiniteExact width σ → Nat)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hμclk : ∀ s, μ (decClockHOLFinite s) = μ s)
    (hbody : CostP σ X (fun s => I s ∧ CondTrue s c) body Bb)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => r = none ∨ r = some .continue → I t))
    (hdec : ∀ k, Hoare σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → μ t < k)) :
    ∀ n (s : PanSemStateFiniteExact width σ), InCtx s X → I s → (CondTrue s c → μ s < n) →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) := by
  intro n
  induction n with
  | zero =>
      intro s hs hi hμ hto
      revert hto
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          exact absurd (hμ ⟨w, hw, hne⟩) (Nat.not_lt_zero _)
        · intro _; (try dsimp only); omega
      · intro _; (try dsimp only); omega
  | succ n ih =>
      intro s hs hi hμ hto
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
            have hdecs : InCtx (decClockHOLFinite s) X := hs
            have hcl : (decClockHOLFinite s).clock + 1 = s.clock := by
              simp [decClockHOLFinite]; omega
            have hμs : μ s < n + 1 := hμ hcond
            have hpre : I (decClockHOLFinite s) ∧ CondTrue (decClockHOLFinite s) c :=
              ⟨hclk s hi, condTrue_decClock.mpr hcond⟩
            have hpreμ : I (decClockHOLFinite s) ∧ CondTrue (decClockHOLFinite s) c ∧
                μ (decClockHOLFinite s) = μ s := ⟨hpre.1, hpre.2, hμclk s⟩
            have hctx := inCtx_eval hdecs body
            cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
            | none =>
              simp only []
              intro hto
              have b1 := hbody _ hdecs hpre (by rw [ho]; simp [Good])
              have hI := hinv _ hdecs hpre (by rw [ho]; trivial)
              have hlt := hdec (μ s) _ hdecs hpreμ (by rw [ho]; trivial)
              rw [ho] at hI hlt
              have r1 := ih _ hctx (hI (Or.inl rfl)) (fun _ => by have := hlt (Or.inl rfl); omega) hto
              rw [Nat.succ_mul]; omega
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                have b1 := hbody _ hdecs hpre (by rw [ho]; simp [Good])
                have hI := hinv _ hdecs hpre (by rw [ho]; trivial)
                have hlt := hdec (μ s) _ hdecs hpreμ (by rw [ho]; trivial)
                rw [ho] at hI hlt
                have r1 := ih _ hctx (hI (Or.inr rfl))
                  (fun _ => by have := hlt (Or.inr rfl); omega) hto
                rw [Nat.succ_mul]; omega
              | «break» =>
                simp only []
                intro _
                have b1 := hbody _ hdecs hpre (by rw [ho]; simp [Good])
                (try dsimp only); rw [Nat.succ_mul]; omega
              | _ =>
                simp only []
                intro hto
                have b1 := hbody _ hdecs hpre (by rw [ho]; exact hto)
                (try dsimp only); rw [Nat.succ_mul]; omega
        · intro _; (try dsimp only); omega
      · intro _; (try dsimp only); omega

/-- **Measure rule under an invariant.** `I` holds on entry, is kept by every completed
iteration (normal or `continue`), bounds the measure by `M` while the condition holds, and
every completed iteration lowers the measure. -/
theorem costP_while {I : PanSemStateFiniteExact width σ → Prop} {c : ExpHOL width}
    {body : ProgHOL width} {Bb : Nat} (μ : PanSemStateFiniteExact width σ → Nat) (M : Nat)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hμclk : ∀ s, μ (decClockHOLFinite s) = μ s)
    (hbody : CostP σ X (fun s => I s ∧ CondTrue s c) body Bb)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s c) body
      (fun r t => r = none ∨ r = some .continue → I t))
    (hM : ∀ s, InCtx s X → I s → CondTrue s c → μ s ≤ M)
    (hdec : ∀ k, Hoare σ X (fun s => I s ∧ CondTrue s c ∧ μ s = k) body
      (fun r t => r = none ∨ r = some .continue → μ t < k)) :
    CostP σ X I (.while c body) ((M + 1) * (Bb + 1)) := by
  intro s hs hi hg
  exact costP_while_aux μ hclk hμclk hbody hinv hdec (M + 1) s hs hi
    (fun h => by have := hM s hs hi h; omega) hg

/-! ## Calls -/

/-- **Conditional table entry.** Every body installed for `f`, run on arguments `vs` from
an entry state satisfying `Pre vs`, costs at most `B`. -/
def CalleeCostP (σ : Type) (X : Ctx width) (f : MlS)
    (Pre : List (ValueHOL width) → PanSemStateFiniteExact width σ → Prop) (B : Nat) : Prop :=
  ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
    CostP σ X (fun s => s.locals = callee ∧ Pre vs s) body B

theorem CalleeCostP.mono {f : MlS}
    {Pre : List (ValueHOL width) → PanSemStateFiniteExact width σ → Prop} {B B' : Nat}
    (h : CalleeCostP σ X f Pre B) (hle : B ≤ B') : CalleeCostP σ X f Pre B' :=
  fun vs body callee rs hl => (h vs body callee rs hl).mono hle

/-- A call with any result target, discharging the callee's precondition at the call site.
A handler, if any, needs an all-states cost (it runs after an exception, where the
caller's precondition need not hold). -/
theorem costP_call {P : PanSemStateFiniteExact width σ → Prop}
    {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL width))}
    {f : MlS} {args : List (ExpHOL width)}
    {Pre : List (ValueHOL width) → PanSemStateFiniteExact width σ → Prop} {Bf Bh : Nat}
    (hf : CalleeCostP σ X f Pre Bf)
    (hpre : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hhandler : ∀ r hid hv hp, info = some (r, some (hid, hv, hp)) → Cost σ X hp Bh) :
    CostP σ X P (.call info f args) (1 + Bf + Bh) := by
  intro s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call info f args)]
  dsimp only
  split
  · intro _; (try dsimp only); omega
  · rename_i values hvals
    rw [hs.1]
    split
    · intro _; (try dsimp only); omega
    · rename_i body callee rs hlook
      split
      · intro h; exact absurd rfl h.1
      · rename_i hclock
        have hb : ∀ r st, evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = (r, st) →
            Good r → s.clock ≤ st.clock + 1 + Bf ∧ InCtx st X := by
          intro r st heq hr
          have h1 := hf values body callee rs hlook (callEntryStateHOLFinite s callee)
            (by exact hs) ⟨rfl, hpre s hs hp values hvals callee⟩ (by rw [heq]; exact hr)
          have h2 := inCtx_eval (X := X) (s := callEntryStateHOLFinite s callee) hs body
          rw [heq] at h1 h2
          simp only [callEntryStateHOLFinite] at h1
          exact ⟨by omega, h2⟩
        split
        all_goals (repeat' split)
        all_goals intro hto
        all_goals first
          | (obtain ⟨h1, h2⟩ := hb _ _ (by assumption) (by simp_all [Good])
             simp only [emptyLocalsHOLFinite, setKvarHOLFinite, setVarHOLFinite,
               setGlobalHOLFinite] <;> (try split) <;> (try simp only []) <;> omega)
          | (obtain ⟨h1, h2⟩ := hb _ _ (by assumption) (by simp [Good])
             have hh := hhandler _ _ _ _ rfl
             obtain ⟨g1, -⟩ := hh _ (by exact h2) hto
             simp only [setVarHOLFinite] at g1 ⊢
             omega)

/-- `f(args);` (result discarded, no handler) against a conditional entry. -/
theorem costP_callD {P : PanSemStateFiniteExact width σ → Prop} {f : MlS}
    {args : List (ExpHOL width)}
    {Pre : List (ValueHOL width) → PanSemStateFiniteExact width σ → Prop} {Bf : Nat}
    (hf : CalleeCostP σ X f Pre Bf)
    (hpre : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee)) :
    CostP σ X P (.call (some (none, none)) f args) (1 + Bf + 0) :=
  costP_call hf hpre (by intro _ _ _ _ h; cases h)

/-! ## Global invariants and footprints -/

/-- `G` depends only on `memory` and the globals `gs`. -/
def HeapOnly (G : PanSemStateFiniteExact width σ → Prop) (gs : List MlS) : Prop :=
  ∀ s t : PanSemStateFiniteExact width σ, t.memory = s.memory →
    (∀ g ∈ gs, t.globals.lookup g = s.globals.lookup g) → G s → G t

/-- `f` keeps the invariant `G` across every run with a tracked result (a mutator may leave
`G` broken when it is cut off by a time-out, error or exception; those runs do not continue). -/
def KeepsG (σ : Type) (X : Ctx width) (G : PanSemStateFiniteExact width σ → Prop) (f : MlS) :
    Prop :=
  FunSpec σ X f (fun _ s r t => Tracked (some r) → G s → G t)

/-- A call to a `G`-keeping function, result discarded: `G` holds after it. -/
theorem hoare_callD_keeps {G P : PanSemStateFiniteExact width σ → Prop} {gs : List MlS}
    {f : MlS} {args : List (ExpHOL width)} (hf : KeepsG σ X G f) (hG : HeapOnly G gs)
    (hP : ∀ s, P s → G s) :
    Hoare σ X P (.call (some (none, none)) f args) (fun _ t => G t) := by
  refine hoare_callD hf fun s _ hp _ _ callee v st hR _ => ?_
  exact hG st _ rfl (fun _ _ => rfl) (hR trivial (hG s _ rfl (fun _ _ => rfl) (hP s hp)))

end general

/-! ## Footprint class 1 (width 64) -/

section footprint
variable {σ : Type} {X : Ctx 64}

/-- **Footprint class 1.** A function that, with all its callees, writes no memory and none of
the globals `gs` keeps every invariant that depends only on memory and `gs`. The closure
facts are the kernel-checked `MwClosed` / `GwClosed` instances (`decide_cbv`). -/
theorem keepsG_of_footprint {G : PanSemStateFiniteExact 64 σ → Prop} {gs : List MlS}
    (hG : HeapOnly G gs) {S : List MlS} (hmw : MwClosed S X.code.lookup)
    (hgw : ∀ g ∈ gs, GwClosed g S X.code.lookup) {f : MlS} (hf : S.contains f = true) :
    KeepsG σ X G f := by
  intro vs body callee rs hl s hs hloc r hr _ hgs
  have hm := funSpec_mw (σ := σ) hmw hf vs body callee rs hl s hs hloc r hr
  exact hG s _ hm (fun g hg => funSpec_gw (σ := σ) (hgw g hg) hf vs body callee rs hl s hs hloc r hr)
    hgs

/-- All-states table entries embed as conditional entries. -/
theorem calleeCostP_of_calleeCost {f : MlS}
    {Pre : List (ValueHOL 64) → PanSemStateFiniteExact 64 σ → Prop} {B : Nat}
    (h : CalleeCost σ X f B) : CalleeCostP σ X f Pre B :=
  fun vs body callee rs hl => costP_of_cost (h vs body callee rs hl)

/-- Closing a conditional entry: a body whose callee preconditions it establishes itself has
a conditional cost under the trivial precondition, which is an all-states cost, so the
caller re-enters the analyzer's table (`Bridge.lean`, `tblSound_insert`). -/
theorem calleeCost_of_costP_true {f : MlS} {B : Nat}
    (h : ∀ vs body callee rs, PanSemStateFiniteExact.lookupCodeHOLFinite X.code.lookup f vs =
      some (body, callee, rs) → CostP σ X (fun _ => True) body B) : CalleeCost σ X f B :=
  fun vs body callee rs hl => cost_of_costP_true (h vs body callee rs hl)

end footprint

end InitECandidate.Solver.Spec.Inv
