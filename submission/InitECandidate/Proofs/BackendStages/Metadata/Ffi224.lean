import InitECandidate.Proofs.BackendStages.Metadata.Data224
import InitECandidate.Proofs.BackendStages.Filtered224
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis224_eq : ffiLines Filtered224.lines = localFfis224 := by
  with_unfolding_all rfl
theorem ffiStep224 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis224) : LabToTarget.findFfiNames (Filtered224 :: rest) = suffixFfis224 := by
  rw [findFfiNames_section, localFfis224_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep224
end InitECandidate.Proofs.BackendStages.Metadata
