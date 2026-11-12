import InitECandidate.Solver.SourceCost.LoopExtra.Data.Doubling

/-!
# Functions that cannot escape when an argument is zero

`merkleize(p, n, limit, out)` starts `dl = ceil_log2(limit); dn = ceil_log2(n);
target = max(dl, dn); if n == 0 { memcpy(...); return 0; } ...`: with `n = 0` it calls only
escape-free functions and returns, although the function as a whole can trap (`alloc`).

`argZeroEscB ef x body` checks such a body: a spine of `var`/call declarations not
rebinding `x`, ending in `if x == 0 { <escape-free, always returning> } ...; rest`, or an
escape-free body. `efArgZero_of_check` turns a passing check of a function's code entry
into `EfArgZero` (the table records such functions next to `ef`, through `efzCheck`,
`LoopExtra/GroupData.lean`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {width : Nat} [NeZero width] {σ : Type} {C : CodeMap width}

/-- From states with code `C` satisfying `P`, `p` never escapes. -/
def EscFreeP (σ : Type) (C : CodeMap width) (P : PanSemStateFiniteExact width σ → Prop)
    (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, s.code = C → P s → NoEsc (evaluateHOLFiniteState s p).1

/-- `p` never escapes and never ends normally. -/
def RetOnly (σ : Type) (C : CodeMap width) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, s.code = C →
    NoEsc (evaluateHOLFiniteState s p).1 ∧ (evaluateHOLFiniteState s p).1 ≠ none

def retB (ef : MlS → Bool) : ProgHOL width → Bool
  | .return _ => true
  | .seq a b => escFreeB ef a && retB ef b
  | .ite _ a b => retB ef a && retB ef b
  | .dec _ _ _ b => retB ef b
  | _ => false

theorem retB_sound {ef : MlS → Bool} (hef : EfSound σ C ef) :
    ∀ p : ProgHOL width, retB ef p = true → RetOnly σ C p
  | .return e, _ => by
      intro s _
      rw [evaluateHOLFiniteState_eq_evaluate_def]
      dsimp only
      split
      · simp [NoEsc]
      · split <;> simp [NoEsc]
  | .seq a b, h => by
      simp only [retB, Bool.and_eq_true] at h
      have ha := escFreeB_sound hef a h.1
      have hb := retB_sound hef b h.2
      intro s hs
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
      dsimp only
      cases h1 : (evaluateHOLFiniteState s a).1 with
      | none => exact hb _ ((code_preserved s a).trans hs)
      | some r =>
          dsimp only
          exact ⟨ha s hs, by rw [h1]; simp⟩
  | .ite _ a b, h => by
      simp only [retB, Bool.and_eq_true] at h
      intro s hs
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite _ a b)]
      dsimp only
      split
      · split
        · exact retB_sound hef b h.2 s hs
        · exact retB_sound hef a h.1 s hs
      · simp [NoEsc]
  | .dec _ _ _ b, h => by
      simp only [retB] at h
      intro s hs
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec _ _ _ b)]
      dsimp only
      split
      · simp [NoEsc]
      · split
        · exact retB_sound hef b h _ (by simpa [setVarHOLFinite] using hs)
        · simp [NoEsc]
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h => by simp [retB] at h
  | .assign _ _ _, h | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h => by
      simp [retB] at h
  | .storeByte _ _, h | .extCall _ _ _ _ _, h | .raise _ _, h => by simp [retB] at h
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .while _ _, h | .call _ _ _, h => by
      simp [retB] at h
  | .decCall _ _ _ _ _, h => by simp [retB] at h

/-- `if x == 0 { t } else { e }` with an always-returning `t`. -/
def zeroGuardRet (ef : MlS → Bool) (x : MlS) : ProgHOL width → Bool
  | .ite (.cmp .equal (.var .local y) (.const z)) t _ => decide (y = x) && decide (z = 0) && retB ef t
  | _ => false

def argZeroEscB (ef : MlS → Bool) (x : MlS) : ProgHOL width → Bool
  | .decCall rn _ f _ k => (ef f && decide (rn ≠ x) && argZeroEscB ef x k) ||
      escFreeB ef (.decCall rn ‹_› f ‹_› k)
  | .dec y sh e b => (decide (y ≠ x) && argZeroEscB ef x b) || escFreeB ef (.dec y sh e b)
  | .seq a b => zeroGuardRet ef x a || escFreeB ef (.seq a b)
  | p => escFreeB ef p

theorem escFreeP_of {P : PanSemStateFiniteExact width σ → Prop} {p : ProgHOL width}
    (h : EscFree σ C p) : EscFreeP σ C P p := fun s hs _ => h s hs

theorem escFreeP_decCall {x rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)}
    {k : ProgHOL width} {ef : MlS → Bool} (hef : EfSound σ C ef) (hf : ef f = true)
    (hrn : rn ≠ x)
    (hk : EscFreeP σ C (fun s => s.locals.lookup x = some (.val (.word 0))) k) :
    EscFreeP σ C (fun s => s.locals.lookup x = some (.val (.word 0)))
      (.decCall rn sh f args k) := by
  intro s hs hx
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · simp [NoEsc]
  · rename_i values hvals
    rw [hs]
    split
    · simp [NoEsc]
    · rename_i body callee rs hlook
      split
      · simp [NoEsc]
      · have hbe := hef f hf values body callee rs hlook (callEntryStateHOLFinite s callee)
          (by simpa [callEntryStateHOLFinite] using hs)
        have hcp := code_preserved (callEntryStateHOLFinite s callee) body
        generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
          at hbe hcp ⊢
        obtain ⟨r, st⟩ := E
        simp only [callEntryStateHOLFinite] at hbe hcp
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (repeat' split)
        all_goals first
          | (simp_all [NoEsc]; done)
          | exact hk _ (by simp [setVarHOLFinite]; exact hcp.trans hs)
              (by simp [setVarHOLFinite, FUPDATE, hrn, hx])

theorem escFreeP_dec {x y : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    (hy : y ≠ x) (hb : EscFreeP σ C (fun s => s.locals.lookup x = some (.val (.word 0))) b) :
    EscFreeP σ C (fun s => s.locals.lookup x = some (.val (.word 0))) (.dec y sh e b) := by
  intro s hs hx
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec y sh e b)]
  dsimp only
  split
  · simp [NoEsc]
  · split
    · exact hb _ (by simpa [setVarHOLFinite] using hs)
        (by simp [setVarHOLFinite, FUPDATE, hy, hx])
    · simp [NoEsc]

theorem escFreeP_zeroGuard {x : MlS} {a b : ProgHOL width} {ef : MlS → Bool}
    (hef : EfSound σ C ef) (h : zeroGuardRet ef x a = true) :
    EscFreeP σ C (fun s => s.locals.lookup x = some (.val (.word 0))) (.seq a b) := by
  unfold zeroGuardRet at h
  split at h
  · rename_i y z t e
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨rfl, rfl⟩, ht⟩ := h
    have hr := retB_sound hef t ht
    intro s hs hx
    have hite : evaluateHOLFiniteState s
        (.ite (.cmp .equal (.var .local y) (.const 0)) t e) = evaluateHOLFiniteState s t := by
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite _ t e)]
      dsimp only
      have hg : @evalHOLExact width σ _ s.toExact
          (fun a => Classical.propDecidable (s.memaddrs a))
          (.cmp .equal (.var .local y) (.const 0)) = some (.val (.word 1)) := by
        simp [evalHOLExact, hx, wordCmpHOL]
      rw [hg]
      have h10 : (1 : BitVec width) ≠ 0 := by
        have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
        intro h1
        have := congrArg BitVec.toNat h1
        simp [Nat.mod_eq_of_lt hpow] at this
      simp only [if_neg h10]
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq _ b)]
    dsimp only
    rw [hite]
    obtain ⟨hne, hnn⟩ := hr s hs
    cases h1 : (evaluateHOLFiniteState s t).1 with
    | none => exact absurd h1 hnn
    | some r => dsimp only; exact hne
  · cases h

theorem argZeroEscB_sound {ef : MlS → Bool} (hef : EfSound σ C ef) (x : MlS) :
    ∀ p : ProgHOL width, argZeroEscB ef x p = true →
      EscFreeP σ C (fun s => s.locals.lookup x = some (.val (.word 0))) p
  | .decCall rn sh f args k, h => by
      simp only [argZeroEscB, Bool.or_eq_true, Bool.and_eq_true, decide_eq_true_eq] at h
      rcases h with ⟨⟨hf, hrn⟩, hk⟩ | h
      · exact escFreeP_decCall hef hf hrn (argZeroEscB_sound hef x k hk)
      · exact escFreeP_of (escFreeB_sound hef _ h)
  | .dec y sh e b, h => by
      simp only [argZeroEscB, Bool.or_eq_true, Bool.and_eq_true, decide_eq_true_eq] at h
      rcases h with ⟨hy, hb⟩ | h
      · exact escFreeP_dec hy (argZeroEscB_sound hef x b hb)
      · exact escFreeP_of (escFreeB_sound hef _ h)
  | .seq a b, h => by
      simp only [argZeroEscB, Bool.or_eq_true] at h
      rcases h with h | h
      · exact escFreeP_zeroGuard hef h
      · exact escFreeP_of (escFreeB_sound hef _ h)
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h =>
      escFreeP_of (escFreeB_sound hef _ h)
  | .assign _ _ _, h | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h =>
      escFreeP_of (escFreeB_sound hef _ h)
  | .storeByte _ _, h | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h =>
      escFreeP_of (escFreeB_sound hef _ h)
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .while _ _, h | .call _ _ _, h =>
      escFreeP_of (escFreeB_sound hef _ h)
  | .ite _ _ _, h => escFreeP_of (escFreeB_sound hef _ h)

/-! ## From a code entry to `EfArgZero` -/

theorem foldl_upd_notin {ns : List MlS} {vs : List (ValueHOL width)} {x : MlS} (hx : x ∉ ns)
    (m : MlS → Option (ValueHOL width)) :
    List.foldl (fun (map : MlS → Option (ValueHOL width)) (entry : MlS × ValueHOL width) =>
        fun current => if current = entry.1 then some entry.2 else map current) m (ns.zip vs) x =
      m x := by
  induction ns generalizing vs m with
  | nil => simp
  | cons n ns ih =>
      cases vs with
      | nil => simp
      | cons v vs =>
          simp only [List.zip_cons_cons, List.foldl_cons]
          rw [ih (fun h => hx (List.mem_cons_of_mem _ h))]
          have : x ≠ n := fun h => hx (h ▸ List.mem_cons_self)
          simp [this]

theorem foldl_upd_get {ns : List MlS} {vs : List (ValueHOL width)} (hnd : ns.Nodup)
    (hlen : ns.length = vs.length) {k : Nat} {x : MlS} (hk : ns[k]? = some x)
    (m : MlS → Option (ValueHOL width)) :
    List.foldl (fun (map : MlS → Option (ValueHOL width)) (entry : MlS × ValueHOL width) =>
        fun current => if current = entry.1 then some entry.2 else map current) m (ns.zip vs) x =
      vs[k]? := by
  induction ns generalizing vs m k with
  | nil => simp at hk
  | cons n ns ih =>
      cases vs with
      | nil => simp at hlen
      | cons v vs =>
          simp only [List.zip_cons_cons, List.foldl_cons]
          rw [List.nodup_cons] at hnd
          cases k with
          | zero =>
              simp only [List.getElem?_cons_zero, Option.some.injEq] at hk
              subst hk
              rw [foldl_upd_notin hnd.1]
              simp
          | succ k =>
              simp only [List.getElem?_cons_succ] at hk ⊢
              exact ih hnd.2 (by simpa using hlen) hk _

/-- A function whose code entry passes `argZeroEscB` for its parameter number `k` never
escapes when called with argument `k` zero. -/
theorem efArgZero_of_check {ef : MlS → Bool} (hef : EfSound σ C ef) {f x : MlS}
    {ps : List (MlS × ShapeHOL)} {body : ProgHOL width} {rs : ShapeHOL}
    (hC : C.lookup f = some (ps, body, rs)) {k : Nat} (hx : (ps.map Prod.fst)[k]? = some x)
    (hchk : argZeroEscB ef x body = true) : EfArgZero σ C f k := by
  intro values body' callee rs' hl hk s hs hloc
  unfold lookupCodeHOLFinite at hl
  split at hl
  · cases hl
  · rename_i b0 cl rr hx'
    simp only [Option.some.injEq, Prod.mk.injEq] at hl
    obtain ⟨rfl, rfl, rfl⟩ := hl
    unfold lookupCodeHOLExact at hx'
    rw [hC] at hx'
    dsimp only at hx'
    split at hx'
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx'
      obtain ⟨rfl, rfl, rfl⟩ := hx'
      have hx0 : s.locals.lookup x = some (.val (.word 0)) := by
        rw [hloc]
        refine (foldl_upd_get hcond.1 (by simpa using hcond.2.1) hx _).trans hk
      exact argZeroEscB_sound hef x _ hchk s hs hx0
    · cases hx'

end InitECandidate.Solver.SourceCost
