import Mathlib.Data.Fintype.Pigeonhole
import InitECandidate.Solver.SourceCost.LoopExtra.Agree

/-!
# Pointer-walk loops

`htab_find_leaf` and `htab_set` walk a tree stored in memory:
`while n != 0 { var b = ld(nodes + n * 32 + 24); if ... { break; } p = n;
n = ld(...); }`. The body reads memory but never writes it, makes no calls and does
not read the clock or the write-only local `p`. Its next counter value is therefore a
function `G` of the current one (given the context it keeps), and whether the loop
continues is a predicate `Q` of it. Among the first `2 ^ width + 1` points of the
`G`-orbit two coincide (pigeonhole), so if `Q` holds on all of them it holds forever
and the loop never ends well. Hence a good run makes at most `2 ^ width + 1`
iterations.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Iterates and the pigeonhole principle -/

def iterG (G : BitVec width → BitVec width) : Nat → BitVec width → BitVec width
  | 0, v => v
  | m + 1, v => G (iterG G m v)

omit [NeZero width] in
theorem iterG_succ' (G : BitVec width → BitVec width) :
    ∀ m v, iterG G m (G v) = iterG G (m + 1) v
  | 0, _ => rfl
  | m + 1, v => by
      show G (iterG G m (G v)) = G (iterG G (m + 1) v)
      rw [iterG_succ' G m v]

omit [NeZero width] in
theorem iterG_add (G : BitVec width → BitVec width) (v : BitVec width) :
    ∀ m k, iterG G (m + k) v = iterG G m (iterG G k v)
  | 0, k => by rw [Nat.zero_add]; rfl
  | m + 1, k => by
      rw [Nat.succ_add]
      show G (iterG G (m + k) v) = G (iterG G m (iterG G k v))
      rw [iterG_add G v m k]

omit [NeZero width] in
theorem pigeon_nat (N : Nat) (f : Nat → Nat) (hf : ∀ m, f m < N) :
    ∃ a b, a < b ∧ b ≤ N ∧ f a = f b := by
  obtain ⟨x, y, hxy, he⟩ := Fintype.exists_ne_map_eq_of_card_lt
    (fun m : Fin (N + 1) => (⟨f m, hf m⟩ : Fin N)) (by simp)
  simp only [Fin.mk.injEq] at he
  rcases Nat.lt_or_gt_of_ne (Fin.val_ne_of_ne hxy) with h | h
  · exact ⟨x, y, h, by omega, he⟩
  · exact ⟨y, x, h, by omega, he.symm⟩

/-- If a property holds on the first `2 ^ width + 1` orbit points, it holds on the
next one. -/
theorem iterG_closed (G : BitVec width → BitVec width) (v : BitVec width)
    (P : BitVec width → Prop) (h : ∀ m ≤ 2 ^ width, P (iterG G m v)) :
    P (iterG G (2 ^ width + 1) v) := by
  obtain ⟨a, b, hab, hb, he⟩ := pigeon_nat (2 ^ width) (fun m => (iterG G m v).toNat)
    (fun m => BitVec.isLt _)
  have he' : iterG G a v = iterG G b v := BitVec.eq_of_toNat_eq he
  have hK : 2 ^ width + 1 = (2 ^ width + 1 - b) + b := by omega
  have e1 : iterG G ((2 ^ width + 1 - b) + b) v = iterG G ((2 ^ width + 1 - b) + a) v := by
    rw [iterG_add, iterG_add, he']
  rw [hK, e1]
  exact h _ (by omega)

/-- Number of consecutive orbit points (at most `N`) satisfying `Q`. -/
def runLenG (Q : BitVec width → Bool) (G : BitVec width → BitVec width) :
    Nat → BitVec width → Nat
  | 0, _ => 0
  | N + 1, v => if Q v then runLenG Q G N (G v) + 1 else 0

omit [NeZero width] in
theorem runLenG_le (Q : BitVec width → Bool) (G : BitVec width → BitVec width) :
    ∀ N v, runLenG Q G N v ≤ N
  | 0, _ => Nat.le_refl _
  | N + 1, v => by
      unfold runLenG
      split
      · have := runLenG_le Q G N (G v); omega
      · omega

theorem runLenG_eq_iff (Q : BitVec width → Bool) (G : BitVec width → BitVec width) :
    ∀ N v, runLenG Q G N v = N ↔ ∀ m < N, Q (iterG G m v) = true
  | 0, v => by simp [runLenG]
  | N + 1, v => by
      unfold runLenG
      split
      · rename_i hp
        rw [Nat.add_right_cancel_iff, runLenG_eq_iff Q G N (G v)]
        constructor
        · intro h m hm
          cases m with
          | zero => exact hp
          | succ m => rw [← iterG_succ']; exact h m (by omega)
        · intro h m hm
          rw [iterG_succ']; exact h (m + 1) (by omega)
      · rename_i hp
        constructor
        · intro h; omega
        · intro h; exact absurd (h 0 (by omega)) hp

omit [NeZero width] in
theorem runLenG_succ_of_lt (Q : BitVec width → Bool) (G : BitVec width → BitVec width) :
    ∀ N v, runLenG Q G N v < N → runLenG Q G (N + 1) v = runLenG Q G N v
  | 0, v, h => by simp at h
  | N + 1, v, h => by
      unfold runLenG at h ⊢
      split
      · rename_i hp
        simp only [hp, if_true] at h
        rw [runLenG_succ_of_lt Q G N (G v) (by omega)]
      · rfl

/-- A full run of `2 ^ width + 1` points stays full after one step. -/
theorem runLenG_full_step (Q : BitVec width → Bool) (G : BitVec width → BitVec width)
    (v : BitVec width) (h : runLenG Q G (2 ^ width + 1) v = 2 ^ width + 1) :
    runLenG Q G (2 ^ width + 1) (G v) = 2 ^ width + 1 := by
  have hall := (runLenG_eq_iff Q G _ v).mp h
  rw [runLenG_eq_iff]
  intro m hm
  rw [iterG_succ']
  by_cases hlast : m + 1 < 2 ^ width + 1
  · exact hall (m + 1) hlast
  · have : m + 1 = 2 ^ width + 1 := by omega
    rw [this]
    exact iterG_closed G v (fun u => Q u = true) (fun m hm => hall m (by omega))

/-! ## A measure rule that may use goodness of the remaining run -/

theorem cost_while_good {c : ExpHOL width} {body : ProgHOL width} {Bb : Nat}
    (μ : PanSemStateFiniteExact width σ → Nat) (M : Nat) (hbody : Cost σ X body Bb)
    (hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c →
      Good (evaluateHOLFiniteState s (.while c body)).1 → μ s ≤ M)
    (hdec : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c → 0 < s.clock →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      Good (evaluateHOLFiniteState (evaluateHOLFiniteState (decClockHOLFinite s) body).2
        (.while c body)).1 →
      μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s) :
    Cost σ X (.while c body) ((M + 1) * (Bb + 1)) := by
  suffices H : ∀ n (s : PanSemStateFiniteExact width σ), InCtx s X →
      (CondTrue s c → Good (evaluateHOLFiniteState s (.while c body)).1 → μ s < n) →
      Good (evaluateHOLFiniteState s (.while c body)).1 →
      s.clock ≤ (evaluateHOLFiniteState s (.while c body)).2.clock + n * (Bb + 1) ∧
        InCtx (evaluateHOLFiniteState s (.while c body)).2 X by
    intro s hs hg
    exact H (M + 1) s hs (fun h hg' => by have := hM s hs h hg'; omega) hg
  intro n
  induction n with
  | zero =>
      intro s hs hμ hg
      have hg0 := hg
      revert hg
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
      dsimp only
      split
      · rename_i w hw
        split
        · rename_i hne
          exact absurd (hμ ⟨w, hw, hne⟩ hg0) (Nat.not_lt_zero _)
        · intro _; exact ⟨by (try dsimp only); omega, hs⟩
      · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  | succ n ih =>
      intro s hs hμ hg
      have hg0 := hg
      revert hg
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
            have hμs : μ s < n + 1 := hμ hcond hg0
            cases ho : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
            | none =>
              simp only []
              intro hto
              obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
              have hlt := hdec s hs hcond hpos hg0 (Or.inl ho) hto
              obtain ⟨r1, r2⟩ := ih _ b2 (fun _ _ => by omega) hto
              exact ⟨by rw [Nat.succ_mul]; omega, r2⟩
            | some r =>
              cases r with
              | «continue» =>
                simp only []
                intro hto
                obtain ⟨b1, b2⟩ := hbody _ hdecs (by rw [ho]; simp [Good])
                have hlt := hdec s hs hcond hpos hg0 (Or.inr ho) hto
                obtain ⟨r1, r2⟩ := ih _ b2 (fun _ _ => by omega) hto
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

/-! ## Helpers -/

theorem good_while_eval {t : PanSemStateFiniteExact width σ} {c : ExpHOL width}
    {body : ProgHOL width} (h : Good (evaluateHOLFiniteState t (.while c body)).1) :
    ∃ r, @evalHOLFinite width σ _ t (fun a => Classical.propDecidable (t.memaddrs a)) c =
      some r := by
  rw [evaluateHOLFiniteState_eq_evaluate_def t (.while c body)] at h
  dsimp only at h
  split at h
  · rename_i w hw; exact ⟨_, hw⟩
  · exact absurd rfl h.2

theorem agree_lookup {ok : MlS → Bool} {s t : PanSemStateFiniteExact width σ} (h : Agree ok s t)
    {y : MlS} (hy : ok y = true) : t.locals.lookup y = s.locals.lookup y := by
  obtain ⟨L, c, rfl, hok, -⟩ := h
  exact hok y hy

theorem condTrue_agree {ok : MlS → Bool} {c : ExpHOL width} (hr : rdOk ok c = true)
    {s t : PanSemStateFiniteExact width σ} (h : Agree ok s t) : CondTrue t c ↔ CondTrue s c := by
  obtain ⟨L, c', rfl, hok, -⟩ := h
  unfold CondTrue evalHOLFinite
  rw [eval_agree hok hr]

theorem wordLocal_eq_some {t : PanSemStateFiniteExact width σ} {n : MlS} {u : BitVec width}
    (h : wordLocal t n = some u) : t.locals.lookup n = some (.val (.word u)) := by
  unfold wordLocal at h
  split at h
  · rename_i w hw; simp only [Option.some.injEq] at h; subst h; exact hw
  · cases h

theorem wordLocal_of_lookup {t : PanSemStateFiniteExact width σ} {n : MlS} {u : BitVec width}
    (h : t.locals.lookup n = some (.val (.word u))) : wordLocal t n = some u := by
  unfold wordLocal; rw [h]

/-- After a body run from `s` (with any clock), the context seen by every counter value is
that of `s`. -/
theorem ctx_of_frame {ok : MlS → Bool} {n : MlS} {s t : PanSemStateFiniteExact width σ} {k : Nat}
    (h : FrameOk (fun y => y == n || !ok y) { s with clock := k } t) (u : ValueHOL width) :
    Agree ok (setVarHOLFinite n u s) (setVarHOLFinite n u t) := by
  obtain ⟨L, rfl, hk, hs⟩ := h
  refine ⟨L.update (n, u), k, rfl, ?_, ?_⟩
  · intro z hz
    by_cases hzn : n = z
    · subst hzn; simp [setVarHOLFinite, FUPDATE]
    · have hA : (z == n || !ok z) = false := by
        simp [hz, Ne.symm hzn]
      simp [setVarHOLFinite, FUPDATE, hzn, hk z hA]
  · intro z
    by_cases hzn : n = z
    · subst hzn; simp [setVarHOLFinite, FUPDATE]
    · simp [setVarHOLFinite, FUPDATE, hzn, hs z]

/-! ## The walk-loop rule -/

theorem cost_while_walk {c : ExpHOL width} {body : ProgHOL width} {B : Nat} {n : MlS}
    {ok : MlS → Bool} (hb : Cost σ X body B) (hni : NI σ ok body)
    (hfr : Frame σ (fun y => y == n || !ok y) body) (hnc : NoCont σ body)
    (hokn : ok n = true) (hcr : rdOk ok c = true)
    (hcn : ∀ s : PanSemStateFiniteExact width σ,
      (∃ r, @evalHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a)) c =
        some r) → ∃ v, s.locals.lookup n = some (.val (.word v))) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  classical
  -- the n-output of a normal body run from counter value `u`
  let R : PanSemStateFiniteExact width σ → BitVec width → PanSemStateFiniteExact width σ :=
    fun s u => setVarHOLFinite n (.val (.word u)) s
  let Out : PanSemStateFiniteExact width σ → BitVec width → Option (BitVec width) := fun s u =>
    if (evaluateHOLFiniteState (R s u) body).1 = none then
      wordLocal (evaluateHOLFiniteState (R s u) body).2 n else none
  let Q : PanSemStateFiniteExact width σ → BitVec width → Bool := fun s u =>
    @decide (CondTrue (R s u) c) (Classical.propDecidable _) && (Out s u).isSome
  let G : PanSemStateFiniteExact width σ → BitVec width → BitVec width := fun s u =>
    (Out s u).getD 0
  have hQG : ∀ s t : PanSemStateFiniteExact width σ, (∀ u, Agree ok (R s u) (R t u)) →
      Q t = Q s ∧ G t = G s := by
    intro s t h
    have hOut : Out t = Out s := by
      funext u
      obtain ⟨h1, h2⟩ := hni _ _ (h u)
      simp only [Out]
      rw [← h1]
      split
      · rename_i hnone
        unfold wordLocal
        rw [agree_lookup (h2 hnone) hokn]
      · rfl
    refine ⟨?_, ?_⟩
    · funext u
      simp only [Q]
      rw [hOut]
      congr 1
      exact decide_eq_decide.mpr (condTrue_agree hcr (h u))
    · funext u
      simp only [G]
      rw [hOut]
  -- one body run from `decClock s`
  have hrun : ∀ s : PanSemStateFiniteExact width σ, ∀ v,
      s.locals.lookup n = some (.val (.word v)) →
      (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none →
      ∀ u, wordLocal (evaluateHOLFiniteState (decClockHOLFinite s) body).2 n = some u →
      Q s v = (@decide (CondTrue s c) (Classical.propDecidable _)) ∧ Out s v = some u ∧
        Q (evaluateHOLFiniteState (decClockHOLFinite s) body).2 = Q s ∧
        G (evaluateHOLFiniteState (decClockHOLFinite s) body).2 = G s := by
    intro s v hv hnone u hu
    have hR : R s v = s := setVar_idem hv
    obtain ⟨h1, h2⟩ := hni _ _ (agree_refl ok s (s.clock - 1))
    have hnone' : (evaluateHOLFiniteState s body).1 = none := h1.trans hnone
    have hout : Out s v = some u := by
      simp only [Out, hR, hnone', if_true]
      unfold wordLocal
      rw [← agree_lookup (h2 hnone') hokn]
      exact hu
    have hctx := hQG s _ (fun u' => ctx_of_frame (hfr _ hnone) _)
    refine ⟨?_, hout, hctx.1, hctx.2⟩
    simp only [Q, hout, Option.isSome_some, Bool.and_true, hR]
  -- doomed states
  let Doomed : PanSemStateFiniteExact width σ → Prop := fun s =>
    InCtx s X ∧ ∃ v, s.locals.lookup n = some (.val (.word v)) ∧
      runLenG (Q s) (G s) (2 ^ width + 1) v = 2 ^ width + 1
  have never : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → Doomed s →
      ¬ Good (evaluateHOLFiniteState s (.while c body)).1 := by
    intro k
    induction k using Nat.strongRecOn with
    | _ k ih =>
    intro s hk hd
    obtain ⟨hsc, v, hv, hfull⟩ := hd
    have hall := (runLenG_eq_iff (Q s) (G s) _ v).mp hfull
    have hq0 : Q s v = true := hall 0 (Nat.succ_pos _)
    have hR : R s v = s := setVar_idem hv
    simp only [Q, Bool.and_eq_true, decide_eq_true_eq] at hq0
    obtain ⟨hct, hsome⟩ := hq0
    rw [hR] at hct
    obtain ⟨w, hw, hne⟩ := hct
    obtain ⟨u, hu⟩ := Option.isSome_iff_exists.mp hsome
    have hnone_s : (evaluateHOLFiniteState s body).1 = none := by
      have := hu
      simp only [Out, hR] at this
      split at this
      · assumption
      · cases this
    obtain ⟨h1, h2⟩ := hni _ _ (agree_refl ok s (s.clock - 1))
    have hnone : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none :=
      h1.symm.trans hnone_s
    have hut : wordLocal (evaluateHOLFiniteState (decClockHOLFinite s) body).2 n = some u := by
      have hpost := agree_lookup (h2 hnone_s) hokn
      have := hu
      simp only [Out, hR, hnone_s, if_true] at this
      unfold wordLocal at this ⊢
      show (match (evaluateHOLFiniteState { s with clock := s.clock - 1 } body).2.locals.lookup n
        with | some (.val (.word w)) => some w | _ => none) = some u
      rw [hpost]; exact this
    obtain ⟨-, hout, hQ', hG'⟩ := hrun s v hv hnone u hut
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.while c body)]
    dsimp only
    rw [hw]
    simp only [ne_eq, hne, not_false_eq_true, if_true]
    split
    · simp [Good]
    · rw [hnone]
      dsimp only
      have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
        have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
        simp only [decClockHOLFinite] at this ⊢
        omega
      refine ih _ hlt _ rfl ⟨inCtx_eval (s := decClockHOLFinite s) hsc body, u, wordLocal_eq_some hut, ?_⟩
      rw [hQ', hG']
      have hGv : G s v = u := by simp only [G, hout, Option.getD_some]
      rw [← hGv]
      exact runLenG_full_step _ _ v hfull
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup n with
    | some (.val (.word v)) => runLenG (Q s) (G s) (2 ^ width + 1) v
    | _ => 0
  have hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c →
      Good (evaluateHOLFiniteState s (.while c body)).1 → μ s ≤ 2 ^ width := by
    intro s hs hct hg
    obtain ⟨v, hv⟩ := hcn s (by obtain ⟨w, hw, _⟩ := hct; exact ⟨_, hw⟩)
    simp only [μ, hv]
    have hle := runLenG_le (Q s) (G s) (2 ^ width + 1) v
    have hne : runLenG (Q s) (G s) (2 ^ width + 1) v ≠ 2 ^ width + 1 :=
      fun h => never _ s rfl ⟨hs, v, hv, h⟩ hg
    omega
  refine cost_while_good μ (2 ^ width) hb hM ?_
  intro s hs hct _ hg hexit hgt
  have hnone : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none := by
    rcases hexit with h | h
    · exact h
    · exact absurd h (hnc _)
  obtain ⟨v, hv⟩ := hcn s (by obtain ⟨w, hw, _⟩ := hct; exact ⟨_, hw⟩)
  obtain ⟨u, hu⟩ := hcn _ (good_while_eval hgt)
  obtain ⟨hq, hout, hQ', hG'⟩ := hrun s v hv hnone u (wordLocal_of_lookup hu)
  have hqv : Q s v = true := by rw [hq]; exact decide_eq_true hct
  have hMs := hM s hs hct hg
  simp only [μ, hv] at hMs ⊢
  simp only [hu, hQ', hG']
  have hGv : G s v = u := by simp only [G, hout, Option.getD_some]
  have h1 : runLenG (Q s) (G s) (2 ^ width + 1) v =
      runLenG (Q s) (G s) (2 ^ width) (G s v) + 1 := by
    simp [runLenG, hqv]
  rw [h1] at hMs ⊢
  rw [hGv] at hMs ⊢
  rw [runLenG_succ_of_lt _ _ _ _ (by omega)]
  omega

/-! ## Recognizer -/

def walkVar : ExpHOL width → Option MlS
  | .cmp _ (.var .local n) _ => some n
  | .cmp _ _ (.var .local n) => some n
  | _ => none

theorem walkVar_word {c : ExpHOL width} {n : MlS} (h : walkVar c = some n)
    (s : PanSemStateFiniteExact width σ)
    (he : ∃ r, @evalHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a)) c =
      some r) : ∃ v, s.locals.lookup n = some (.val (.word v)) := by
  obtain ⟨r, hr⟩ := he
  unfold walkVar at h
  split at h
  · simp only [Option.some.injEq] at h
    subst h
    simp only [evalHOLFinite, evalHOLExact] at hr
    split at hr
    · rename_i l _ hl _; exact ⟨l, hl⟩
    · simp at hr
  · simp only [Option.some.injEq] at h
    subst h
    simp only [evalHOLFinite, evalHOLExact] at hr
    split at hr
    · rename_i _ r' _ hr'; exact ⟨r', hr'⟩
    · simp at hr
  · cases h

/-- Locals assigned anywhere in a body of the walk class. -/
def assignedVars : ProgHOL width → List MlS
  | .assign .local y _ => [y]
  | .ite _ a b => assignedVars a ++ assignedVars b
  | .seq a b => assignedVars a ++ assignedVars b
  | .dec _ _ _ b => assignedVars b
  | _ => []

def loopOkWalk (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match walkVar c with
  | some n =>
      let W := (assignedVars b).filter (fun y => y != n)
      let ok : MlS → Bool := fun y => !W.contains y
      ok n && rdOk ok c && niB ok b && assignsB (fun y => y == n || !ok y) b && noContB b
  | none => false

theorem loopOkWalk_sound {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkWalk c b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkWalk at h
  split at h
  · rename_i n hn
    simp only [Bool.and_eq_true] at h
    obtain ⟨⟨⟨⟨hokn, hcr⟩, hni⟩, has⟩, hnc⟩ := h
    exact cost_while_walk hb (niB_sound _ b hni) (assignsB_sound _ b has) (noContB_sound b hnc)
      hokn hcr (walkVar_word hn)
  · cases h

end InitECandidate.Solver.SourceCost
