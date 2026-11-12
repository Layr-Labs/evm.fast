import InitECandidate.Solver.SourceCost.EscFree

/-!
# Loop bodies that may call escape-free functions

`OnlyExitsC σ C brk p`: from code map `C`, the good results of `p` are only normal
completion, `continue`, or (if `brk`) `break`. Calls to escape-free functions are
allowed: they can only end normally, by an error, or by a time-out.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {C : CodeMap width}

def OnlyExitsC (σ : Type) (C : CodeMap width) (brk : Bool) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, s.code = C → Good (evaluateHOLFiniteState s p).1 →
    (evaluateHOLFiniteState s p).1 = none ∨ (evaluateHOLFiniteState s p).1 = some .continue ∨
      (brk = true ∧ (evaluateHOLFiniteState s p).1 = some .break)

theorem onlyExitsC_of {b : Bool} {p : ProgHOL width} (h : OnlyExits σ b p) :
    OnlyExitsC σ C b p := fun s _ => h s

theorem onlyExitsC_seq {b : Bool} {p q : ProgHOL width} (hp : OnlyExitsC σ C b p)
    (hq : OnlyExitsC σ C b q) : OnlyExitsC σ C b (.seq p q) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq p q)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s p).1 with
  | none => exact hq _ ((code_preserved s p).trans hs)
  | some r => dsimp only; exact hp s hs

theorem onlyExitsC_ite {b : Bool} {c : ExpHOL width} {p q : ProgHOL width}
    (hp : OnlyExitsC σ C b p) (hq : OnlyExitsC σ C b q) : OnlyExitsC σ C b (.ite c p q) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite c p q)]
  dsimp only
  split
  · split
    · exact hq s hs
    · exact hp s hs
  · simp [Good]

theorem onlyExitsC_dec {b : Bool} {n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {p : ProgHOL width}
    (hp : OnlyExitsC σ C b p) : OnlyExitsC σ C b (.dec n sh e p) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e p)]
  dsimp only
  split
  · simp [Good]
  · split
    · exact hp _ (by simpa [setVarHOLFinite] using hs)
    · simp [Good]

theorem onlyExitsC_while {b : Bool} {c : ExpHOL width} {p : ProgHOL width}
    (hp : OnlyExitsC σ C true p) : OnlyExitsC σ C b (.while c p) := by
  suffices H : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → s.code = C →
      Good (evaluateHOLFiniteState s (.while c p)).1 →
      (evaluateHOLFiniteState s (.while c p)).1 = none from
    fun s hs hg => Or.inl (H _ s rfl hs hg)
  intro k
  induction k using Nat.strongRecOn with
  | _ k ih =>
  intro s hk hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c p)]
  dsimp only
  split
  · split
    · split
      · intro h; exact absurd rfl h.1
      · have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) p).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) p
          simp only [decClockHOLFinite] at this ⊢
          omega
        have hc : (evaluateHOLFiniteState (decClockHOLFinite s) p).2.code = C :=
          (code_preserved _ p).trans hs
        cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) p).1 with
        | none => exact ih _ hlt _ rfl hc
        | some r =>
            cases r with
            | «continue» => exact ih _ hlt _ rfl hc
            | «break» => intro _; rfl
            | _ =>
                intro hg
                have := hp (decClockHOLFinite s) hs (by rw [ho]; exact hg)
                rw [ho] at this
                simp at this
    · intro _; rfl
  · intro h; exact absurd rfl h.2

theorem onlyExitsC_call {b : Bool} {r : Option (VarKind × MlS)} {h : Option (MlS × MlS × ProgHOL width)}
    {f : MlS} {args : List (ExpHOL width)} {ef : MlS → Bool} (hef : EfSound σ C ef)
    (hf : ef f = true) : OnlyExitsC σ C b (.call (some (r, h)) f args) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call (some (r, h)) f args)]
  dsimp only
  split
  · simp [Good]
  · rename_i values hvals
    rw [hs]
    split
    · simp [Good]
    · rename_i body callee rs hlook
      split
      · intro h; exact absurd rfl h.1
      · have hbe := hef f hf values body callee rs hlook (callEntryStateHOLFinite s callee)
          (by simpa [callEntryStateHOLFinite] using hs)
        generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hbe ⊢
        obtain ⟨res, st⟩ := E
        simp only at hbe
        rcases res with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (repeat' split)
        all_goals simp_all [Good, NoEsc]

theorem onlyExitsC_decCall {b : Bool} {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)}
    {k : ProgHOL width} {ef : MlS → Bool} (hef : EfSound σ C ef) (hf : ef f = true)
    (hk : OnlyExitsC σ C b k) : OnlyExitsC σ C b (.decCall rn sh f args k) := by
  intro s hs
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  split
  · simp [Good]
  · rename_i values hvals
    rw [hs]
    split
    · simp [Good]
    · rename_i body callee rs hlook
      split
      · intro h; exact absurd rfl h.1
      · have hbe := hef f hf values body callee rs hlook (callEntryStateHOLFinite s callee)
          (by simpa [callEntryStateHOLFinite] using hs)
        have hcp := code_preserved (callEntryStateHOLFinite s callee) body
        generalize hE : evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E
          at hbe hcp ⊢
        obtain ⟨res, st⟩ := E
        simp only [callEntryStateHOLFinite] at hbe hcp
        rcases res with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (repeat' split)
        all_goals first
          | (simp_all [Good, NoEsc]; done)
          | exact hk _ (by simp [setVarHOLFinite]; exact hcp.trans hs)

def onlyExitsCB (ef : MlS → Bool) (brk : Bool) : ProgHOL width → Bool
  | .skip | .continue | .tick | .annot _ _ => true
  | .assign _ _ _ | .primitive _ _ _ | .store _ _ | .store32 _ _ | .storeByte _ _ => true
  | .break => brk
  | .seq a b => onlyExitsCB ef brk a && onlyExitsCB ef brk b
  | .ite _ a b => onlyExitsCB ef brk a && onlyExitsCB ef brk b
  | .dec _ _ _ b => onlyExitsCB ef brk b
  | .while _ b => onlyExitsCB ef true b
  | .call (some _) f _ => ef f
  | .decCall _ _ f _ k => ef f && onlyExitsCB ef brk k
  | _ => false

theorem onlyExitsCB_sound {ef : MlS → Bool} (hef : EfSound σ C ef) :
    ∀ (brk : Bool) (p : ProgHOL width), onlyExitsCB ef brk p = true → OnlyExitsC σ C brk p
  | b, .skip, _ => onlyExitsC_of (onlyExits_skip b)
  | b, .continue, _ => onlyExitsC_of (onlyExits_continue b)
  | b, .tick, _ => onlyExitsC_of (onlyExits_tick b)
  | b, .annot _ _, _ => onlyExitsC_of (onlyExits_annot b _ _)
  | b, .assign _ _ _, _ => onlyExitsC_of (onlyExits_assign b _ _ _)
  | b, .primitive _ _ _, _ => onlyExitsC_of (onlyExits_primitive b _ _ _)
  | b, .store _ _, _ => onlyExitsC_of (onlyExits_store b _ _)
  | b, .store32 _ _, _ => onlyExitsC_of (onlyExits_store32 b _ _)
  | b, .storeByte _ _, _ => onlyExitsC_of (onlyExits_storeByte b _ _)
  | b, .break, h => by
      simp only [onlyExitsCB] at h; subst h; exact onlyExitsC_of onlyExits_break
  | b, .seq x y, h => by
      simp only [onlyExitsCB, Bool.and_eq_true] at h
      exact onlyExitsC_seq (onlyExitsCB_sound hef b x h.1) (onlyExitsCB_sound hef b y h.2)
  | b, .ite _ x y, h => by
      simp only [onlyExitsCB, Bool.and_eq_true] at h
      exact onlyExitsC_ite (onlyExitsCB_sound hef b x h.1) (onlyExitsCB_sound hef b y h.2)
  | b, .dec _ _ _ x, h => onlyExitsC_dec (onlyExitsCB_sound hef b x h)
  | b, .while _ x, h => onlyExitsC_while (onlyExitsCB_sound hef true x h)
  | b, .call (some (_, _)) _ _, h => onlyExitsC_call hef h
  | b, .decCall _ _ _ _ k, h => by
      simp only [onlyExitsCB, Bool.and_eq_true] at h
      exact onlyExitsC_decCall hef h.1 (onlyExitsCB_sound hef b k h.2)
  | _, .call none _ _, h | _, .extCall _ _ _ _ _, h | _, .raise _ _, h | _, .return _, h => by
      simp [onlyExitsCB] at h
  | _, .shMemLoad _ _ _ _, h | _, .shMemStore _ _ _, h => by simp [onlyExitsCB] at h

end InitECandidate.Solver.SourceCost
