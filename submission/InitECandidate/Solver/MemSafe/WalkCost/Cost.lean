import InitECandidate.Solver.MemSafe.WalkCost.Orbit
set_option autoImplicit false
set_option maxHeartbeats 0
namespace InitECandidate.Solver.MemSafe.WalkCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
theorem cost_while_walk_image {c : ExpHOL width} {body : ProgHOL width} {B : Nat} {n : MlS}
    {ok : MlS → Bool} (hb : Cost σ X body B) (hni : NI σ ok body)
    (hfr : Frame σ (fun y => y == n || !ok y) body) (hnc : NoCont σ body)
    (N : Nat) (enc : PanSemStateFiniteExact width σ → BitVec width → Nat)
    (hinj : ∀ s, Function.Injective (enc s))
    (henc : ∀ s, InCtx s X → ∀ u v,
      (evaluateHOLFiniteState (setVarHOLFinite n (.val (.word u)) s) body).1 = none →
      wordLocal (evaluateHOLFiniteState (setVarHOLFinite n (.val (.word u)) s) body).2 n = some v →
      enc s v < N)
    (hokn : ok n = true) (hcr : rdOk ok c = true)
    (hcn : ∀ s : PanSemStateFiniteExact width σ,
      (∃ r, @evalHOLFinite width σ _ s (fun a => Classical.propDecidable (s.memaddrs a)) c =
        some r) → ∃ v, s.locals.lookup n = some (.val (.word v))) :
    Cost σ X (.while c body) ((N + 2) * (B + 1)) := by
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
  have hbound : ∀ s, InCtx s X → ∀ u, Q s u = true → enc s (G s u) < N := by
    intro s hs u hq
    have hsome : (Out s u).isSome = true := by
      simp only [Q, Bool.and_eq_true] at hq
      exact hq.2
    obtain ⟨v,hv⟩ := Option.isSome_iff_exists.mp hsome
    have hg : G s u = v := by simp only [G,hv,Option.getD_some]
    rw [hg]
    unfold Out at hv
    split at hv
    · rename_i hn
      exact henc s hs u v hn hv
    · cases hv
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
      runLenG (Q s) (G s) (N + 2) v = N + 2
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
      exact full_step N _ _ (enc s) (hinj s) (hbound s hsc) v hfull
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup n with
    | some (.val (.word v)) => runLenG (Q s) (G s) (N + 2) v
    | _ => 0
  have hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s c →
      Good (evaluateHOLFiniteState s (.while c body)).1 → μ s ≤ N + 1 := by
    intro s hs hct hg
    obtain ⟨v, hv⟩ := hcn s (by obtain ⟨w, hw, _⟩ := hct; exact ⟨_, hw⟩)
    simp only [μ, hv]
    have hle := runLenG_le (Q s) (G s) (N + 2) v
    have hne : runLenG (Q s) (G s) (N + 2) v ≠ N + 2 :=
      fun h => never _ s rfl ⟨hs, v, hv, h⟩ hg
    omega
  refine cost_while_good μ (N + 1) hb hM ?_
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
  have h1 : runLenG (Q s) (G s) (N + 2) v =
      runLenG (Q s) (G s) (N + 1) (G s v) + 1 := by
    simp [runLenG, hqv]
  rw [h1] at hMs ⊢
  rw [hGv] at hMs ⊢
  rw [runLenG_succ_of_lt _ _ _ _ (by omega)]
  omega


#print axioms cost_while_walk_image
end InitECandidate.Solver.MemSafe.WalkCost
