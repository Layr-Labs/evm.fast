import InitECandidate.Solver.SourceCost.Call

/-!
# Frame facts for source locals

`Keeps σ x p`: whenever `p` finishes normally, by `continue`, or by `break`, the
local `x` has the value it had before. `keepsB` is a syntactic checker with a
soundness theorem, so concrete guest loops can discharge frame facts by `decide`.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type}

/-- A loop-relevant exit: normal completion, `continue`, or `break`. -/
def LoopExit (r : Option (PanSemResultExact width)) : Prop :=
  r = none ∨ r = some .continue ∨ r = some .break

def Keeps (σ : Type) (x : MlS) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, LoopExit (evaluateHOLFiniteState s p).1 →
    (evaluateHOLFiniteState s p).2.locals.lookup x = s.locals.lookup x

macro "keepsLeaf" : tactic => `(tactic| (
  intro s hexit
  revert hexit
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  try unfold shMemLoadHOLFiniteExact
  try unfold shMemStoreHOLExact
  repeat' split
  all_goals (intro hexit; simp_all [LoopExit, setKvarHOLFinite, setVarHOLFinite, setGlobalHOLFinite,
    emptyLocalsHOLFinite, ofExact, PanSemStateFiniteExact.toExact, setKvarFfiHOLFinite,
    decClockHOLFinite, FUPDATE, HolFiniteMapExact.lookup_update])))

theorem keeps_skip (x : MlS) : Keeps σ x (.skip : ProgHOL width) := by keepsLeaf
theorem keeps_break (x : MlS) : Keeps σ x (.break : ProgHOL width) := by keepsLeaf
theorem keeps_continue (x : MlS) : Keeps σ x (.continue : ProgHOL width) := by keepsLeaf
theorem keeps_annot (x a b : MlS) : Keeps σ x (.annot a b : ProgHOL width) := by keepsLeaf
theorem keeps_tick (x : MlS) : Keeps σ x (.tick : ProgHOL width) := by keepsLeaf
theorem keeps_store (x : MlS) (a v : ExpHOL width) : Keeps σ x (.store a v) := by keepsLeaf
theorem keeps_store32 (x : MlS) (a v : ExpHOL width) : Keeps σ x (.store32 a v) := by keepsLeaf
theorem keeps_storeByte (x : MlS) (a v : ExpHOL width) : Keeps σ x (.storeByte a v) := by
  keepsLeaf
theorem keeps_extCall (x f : MlS) (a b c d : ExpHOL width) : Keeps σ x (.extCall f a b c d) := by
  keepsLeaf
theorem keeps_raise (x e : MlS) (v : ExpHOL width) : Keeps σ x (.raise e v) := by keepsLeaf
theorem keeps_return (x : MlS) (v : ExpHOL width) : Keeps σ x (.return v) := by keepsLeaf
theorem shStore_locals (st : PanSemStateExact width σ) {inst : DecidablePred st.shMemaddrs}
    w a nb : (shMemStoreHOLExact st w a nb).2.locals = st.locals := by
  unfold shMemStoreHOLExact
  repeat' split
  all_goals rfl

theorem keeps_shMemStore (x : MlS) (o : OpSize) (a v : ExpHOL width) :
    Keeps σ x (.shMemStore o a v) := by
  intro s _
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · simp only [ofExact]
    rw [shStore_locals (width := width)]
  · rfl

theorem keeps_assign {x n : MlS} (k : VarKind) (e : ExpHOL width)
    (h : k = .global ∨ n ≠ x) : Keeps σ x (.assign k n e) := by
  rcases h with h | h
  · subst h; keepsLeaf
  · cases k <;> keepsLeaf

theorem keeps_primitive {x n : MlS} (o : PrimOp) (a : List (ExpHOL width)) (h : n ≠ x) :
    Keeps σ x (.primitive n o a) := by keepsLeaf

theorem keeps_shMemLoad {x n : MlS} (o : OpSize) (k : VarKind) (a : ExpHOL width)
    (h : k = .global ∨ n ≠ x) : Keeps σ x (.shMemLoad o k n a) := by
  rcases h with h | h
  · subst h; keepsLeaf
  · cases k <;> keepsLeaf


theorem keeps_seq {x : MlS} {a b : ProgHOL width} (ha : Keeps σ x a) (hb : Keeps σ x b) :
    Keeps σ x (.seq a b) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      rw [hb _ hexit, ha s (Or.inl h1)]
  | some r =>
      intro hexit
      dsimp only at hexit
      exact ha s hexit

theorem keeps_ite {x : MlS} {c : ExpHOL width} {a b : ProgHOL width}
    (ha : Keeps σ x a) (hb : Keeps σ x b) : Keeps σ x (.ite c a b) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c a b)]
  dsimp only
  split
  · split
    · exact hb s
    · exact ha s
  · intro _; rfl

theorem lookup_resVarEq_restore {β : Type} (m : HolFiniteMapExact MlS β) (n x : MlS)
    (old : Option β) :
    (m.resVarEq (n, old)).lookup x = if x = n then old else m.lookup x := by
  cases old with
  | none => show FDOMSUB_HOL m.lookup n x = _; simp [FDOMSUB_HOL]
  | some v => show FUPDATE_HOL m.lookup (n, v) x = _; simp [FUPDATE_HOL]

theorem keeps_dec {x n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {body : ProgHOL width}
    (h : n = x ∨ Keeps σ x body) : Keeps σ x (.dec n sh e body) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e body)]
  dsimp only
  split
  · intro _; rfl
  · split
    · intro hexit
      simp only [lookup_resVarEq_restore]
      split
      · rename_i hxn; subst hxn; rfl
      · rename_i hxn
        rcases h with h | h
        · exact absurd h.symm hxn
        · rw [h _ hexit]
          simp [setVarHOLFinite, FUPDATE, Ne.symm hxn]
    · intro _; rfl

theorem keeps_while {x : MlS} {c : ExpHOL width} {body : ProgHOL width}
    (hb : Keeps σ x body) : Keeps σ x (.while c body) := by
  suffices H : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k →
      LoopExit (evaluateHOLFiniteState s (.while c body)).1 →
      (evaluateHOLFiniteState s (.while c body)).2.locals.lookup x = s.locals.lookup x from
    fun s => H _ s rfl
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro s hk
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
  dsimp only
  split
  · split
    · split
      · intro h; simp [LoopExit] at h
      · rename_i hclock
        have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
          simp only [decClockHOLFinite] at this ⊢
          omega
        cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
        | none =>
            intro hexit
            rw [ih _ hlt _ rfl hexit, hb _ (Or.inl ho)]
            rfl
        | some r =>
            cases r with
            | «continue» =>
                intro hexit
                rw [ih _ hlt _ rfl hexit, hb _ (Or.inr (Or.inl ho))]
                rfl
            | «break» =>
                intro _
                dsimp only
                rw [hb _ (Or.inr (Or.inr ho))]
                rfl
            | _ => intro h; simp [LoopExit] at h
    · intro _; rfl
  · intro _; rfl

/-- Side conditions under which a call never changes caller local `x`. -/
def CallKeeps (σ : Type) (x : MlS)
    (info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL width))) : Prop :=
  match info with
  | none => True
  | some (ret, handler) =>
      (match ret with
        | none => True
        | some (k, n) => k = .global ∨ n ≠ x) ∧
      (match handler with
        | none => True
        | some (_, hv, hp) => hv ≠ x ∧ Keeps σ x hp)

theorem keeps_call {x f : MlS} {args : List (ExpHOL width)}
    {info : Option (Option (VarKind × MlS) × Option (MlS × MlS × ProgHOL width))}
    (h : CallKeeps σ x info) : Keeps σ x (.call info f args) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call info f args)]
  dsimp only
  repeat' split
  all_goals intro hexit
  all_goals first
    | (simp [LoopExit] at hexit; done)
    | (simp_all [LoopExit]; done)
    | (simp only [CallKeeps] at h
       obtain ⟨h1, -⟩ := h
       simp only [setKvarHOLFinite]
       split <;> simp_all [setVarHOLFinite, FUPDATE, setGlobalHOLFinite]
       done)
    | (subst_vars
       simp only [CallKeeps] at h
       obtain ⟨-, hv, hp⟩ := h
       rw [hp _ hexit]
       simp [setVarHOLFinite, FUPDATE]
       intro hc; exact (hv hc).elim)

theorem keeps_decCall {x rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)}
    {k : ProgHOL width} (h : rn = x ∨ Keeps σ x k) : Keeps σ x (.decCall rn sh f args k) := by
  intro s
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  repeat' split
  all_goals intro hexit
  all_goals first
    | (simp [LoopExit] at hexit; done)
    | (simp_all [LoopExit]; done)
    | (simp only [lookup_resVarEq_restore]
       split
       · rename_i hxn; subst hxn; rfl
       · rename_i hxn
         rcases h with h | h
         · exact absurd h.symm hxn
         · rw [h _ hexit]
           simp [setVarHOLFinite, FUPDATE]
           intro hc; exact (hxn hc.symm).elim)

/-- Syntactic sufficient condition for `Keeps`. -/
def keepsB (x : MlS) : ProgHOL width → Bool
  | .skip | .break | .continue | .annot _ _ | .tick => true
  | .store _ _ | .store32 _ _ | .storeByte _ _ => true
  | .extCall _ _ _ _ _ | .raise _ _ | .return _ | .shMemStore _ _ _ => true
  | .assign k n _ => decide (k = .global) || decide (n ≠ x)
  | .primitive n _ _ => decide (n ≠ x)
  | .shMemLoad _ k n _ => decide (k = .global) || decide (n ≠ x)
  | .dec n _ _ b => decide (n = x) || keepsB x b
  | .seq a b => keepsB x a && keepsB x b
  | .ite _ a b => keepsB x a && keepsB x b
  | .while _ b => keepsB x b
  | .call none _ _ => true
  | .call (some (ret, none)) _ _ =>
      match ret with
      | none => true
      | some (k, n) => decide (k = .global) || decide (n ≠ x)
  | .call (some (ret, some (_, hv, hp))) _ _ =>
      (match ret with
        | none => true
        | some (k, n) => decide (k = .global) || decide (n ≠ x)) &&
      (decide (hv ≠ x) && keepsB x hp)
  | .decCall rn _ _ _ k => decide (rn = x) || keepsB x k

theorem keepsB_sound (x : MlS) : ∀ p : ProgHOL width, keepsB x p = true → Keeps σ x p
  | .skip, _ => keeps_skip x
  | .break, _ => keeps_break x
  | .continue, _ => keeps_continue x
  | .annot _ _, _ => keeps_annot x _ _
  | .tick, _ => keeps_tick x
  | .store _ _, _ => keeps_store x _ _
  | .store32 _ _, _ => keeps_store32 x _ _
  | .storeByte _ _, _ => keeps_storeByte x _ _
  | .extCall _ _ _ _ _, _ => keeps_extCall x _ _ _ _ _
  | .raise _ _, _ => keeps_raise x _ _
  | .return _, _ => keeps_return x _
  | .shMemStore _ _ _, _ => keeps_shMemStore x _ _ _
  | .assign k n _, h => keeps_assign k _ (by simpa [keepsB] using h)
  | .primitive n _ _, h => keeps_primitive _ _ (by simpa [keepsB] using h)
  | .shMemLoad _ k n _, h => keeps_shMemLoad _ k _ (by simpa [keepsB] using h)
  | .dec n _ _ b, h => by
      simp only [keepsB, Bool.or_eq_true, decide_eq_true_eq] at h
      exact keeps_dec (h.imp id (keepsB_sound x b))
  | .seq a b, h => by
      simp only [keepsB, Bool.and_eq_true] at h
      exact keeps_seq (keepsB_sound x a h.1) (keepsB_sound x b h.2)
  | .ite _ a b, h => by
      simp only [keepsB, Bool.and_eq_true] at h
      exact keeps_ite (keepsB_sound x a h.1) (keepsB_sound x b h.2)
  | .while _ b, h => keeps_while (keepsB_sound x b h)
  | .call none _ _, _ => keeps_call trivial
  | .call (some (none, none)) _ _, _ => keeps_call ⟨trivial, trivial⟩
  | .call (some (some (k, n), none)) _ _, h => keeps_call ⟨by simpa [keepsB] using h, trivial⟩
  | .call (some (none, some (_, hv, hp))) _ _, h => by
      simp only [keepsB, Bool.and_eq_true, decide_eq_true_eq, Bool.true_and] at h
      exact keeps_call ⟨trivial, h.1, keepsB_sound x hp h.2⟩
  | .call (some (some (k, n), some (_, hv, hp))) _ _, h => by
      simp only [keepsB, Bool.and_eq_true, decide_eq_true_eq] at h
      exact keeps_call ⟨by simpa using h.1, h.2.1, keepsB_sound x hp h.2.2⟩
  | .decCall rn _ _ _ k, h => by
      simp only [keepsB, Bool.or_eq_true, decide_eq_true_eq] at h
      exact keeps_decCall (h.imp id (keepsB_sound x k))

end InitECandidate.Solver.SourceCost
