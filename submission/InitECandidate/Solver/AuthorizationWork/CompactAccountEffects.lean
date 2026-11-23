import InitECandidate.Solver.AuthorizationWork.CompactAccountSeedFast
set_option autoImplicit false
namespace CompactAccountEffects
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

def table : TblState := (CompactAccountSeed.table.1, Shards.finalState.2)
theorem table_sound {σ : Type} : StateSound σ guestCtx table := by
  obtain ⟨ht, _, _⟩ := CompactAccountSeed.table_sound (σ := σ)
  obtain ⟨_, he, hz⟩ := Shards.finalState_sound_guest (σ := σ)
  exact ⟨ht, he, hz⟩
#print axioms table_sound
end CompactAccountEffects
