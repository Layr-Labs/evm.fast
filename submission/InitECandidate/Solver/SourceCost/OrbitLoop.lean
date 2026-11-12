import InitECandidate.Solver.SourceCost.Orbit
import InitECandidate.Solver.SourceCost.CodePreserved

/-!
# The orbit loop rule

A loop whose condition is a function of its counter (given context the body keeps),
whose body adds a constant to the counter and can only leave by error or time-out,
runs at most `2 ^ width` iterations in any good run.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

theorem cost_while_orbit {c : ExpHOL width} {body : ProgHOL width} {B : Nat} {i : MlS}
    {k : BitVec width} (P : PanSemStateFiniteExact width σ → BitVec width → Bool)
    (hcond : ∀ s : PanSemStateFiniteExact width σ,
      CondTrue s c ↔ ∃ v, s.locals.lookup i = some (.val (.word v)) ∧ P s v = true)
    (hctx : ∀ s : PanSemStateFiniteExact width σ,
      ((evaluateHOLFiniteState s body).1 = none ∨
        (evaluateHOLFiniteState s body).1 = some .continue) →
      P (evaluateHOLFiniteState s body).2 = P s)
    (hdecP : ∀ s : PanSemStateFiniteExact width σ, P (decClockHOLFinite s) = P s)
    (hb : Cost σ X body B) (hs : Steps σ i (· + k) body)
    (hx : ∀ s : PanSemStateFiniteExact width σ, InCtx s X →
      Good (evaluateHOLFiniteState s body).1 →
      (evaluateHOLFiniteState s body).1 = none ∨ (evaluateHOLFiniteState s body).1 = some .continue) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  have hN : 0 < 2 ^ width := Nat.two_pow_pos _
  obtain ⟨N', hN'⟩ : ∃ N', 2 ^ width = N' + 1 := ⟨2 ^ width - 1, by omega⟩
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup i with
    | some (.val (.word v)) => runLen (P s) k (2 ^ width) v
    | _ => 0
  let Doomed : PanSemStateFiniteExact width σ → Prop := fun s =>
    InCtx s X ∧
      ∃ v, s.locals.lookup i = some (.val (.word v)) ∧ runLen (P s) k (2 ^ width) v = 2 ^ width
  -- facts about one completed iteration from a state where the counter is `v`
  have step : ∀ s : PanSemStateFiniteExact width σ, ∀ v,
      s.locals.lookup i = some (.val (.word v)) →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      (evaluateHOLFiniteState (decClockHOLFinite s) body).2.locals.lookup i =
          some (.val (.word (v + k))) ∧
        P (evaluateHOLFiniteState (decClockHOLFinite s) body).2 = P s := by
    intro s v hv hexit
    exact ⟨hs _ v hv hexit, (hctx _ hexit).trans (hdecP s)⟩
  refine cost_while_doomed μ (2 ^ width) Doomed hb ?_ ?_ ?_
  · intro s _ _ _
    simp only [μ]
    split
    · exact runLen_le _ _ _ _
    · exact Nat.zero_le _
  · intro s hsc hct _ hnd hexit
    obtain ⟨v, hv, hpv⟩ := (hcond s).mp hct
    obtain ⟨hv', hP'⟩ := step s v hv hexit
    have hlt : runLen (P s) k (2 ^ width) v < 2 ^ width := by
      have := runLen_le (P s) k (2 ^ width) v
      have hne : runLen (P s) k (2 ^ width) v ≠ 2 ^ width := fun h => hnd ⟨hsc, v, hv, h⟩
      omega
    simp only [μ, hv', hv, hP']
    rw [hN'] at hlt ⊢
    have h1 : runLen (P s) k (N' + 1) v = runLen (P s) k N' (v + k) + 1 := by
      simp [runLen, hpv]
    have h2 : runLen (P s) k (N' + 1) (v + k) = runLen (P s) k N' (v + k) :=
      runLen_succ_of_lt _ _ _ _ (by omega)
    rw [h1, h2]
    omega
  · intro s hd
    obtain ⟨hsc, v, hv, hfull⟩ := hd
    have hall := (runLen_eq_iff (P s) k _ v).mp hfull
    have hpv : P s v = true := by simpa [orbit_zero] using hall 0 hN
    refine ⟨(hcond s).mpr ⟨v, hv, hpv⟩, ?_⟩
    intro hg
    have hexit := hx (decClockHOLFinite s) hsc hg
    obtain ⟨hv', hP'⟩ := step s v hv hexit
    refine ⟨hexit, inCtx_eval (s := decClockHOLFinite s) hsc body, v + k, hv', ?_⟩
    rw [hP', runLen_eq_iff]
    intro m hm
    rw [orbit_succ]
    by_cases hlast : m + 1 < 2 ^ width
    · exact hall (m + 1) hlast
    · have : m + 1 = 2 ^ width := by omega
      rw [this, orbit_period]
      exact hpv

end InitECandidate.Solver.SourceCost
