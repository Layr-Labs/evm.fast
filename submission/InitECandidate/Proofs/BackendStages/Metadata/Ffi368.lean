import InitECandidate.Proofs.BackendStages.Metadata.Data368
import InitECandidate.Proofs.BackendStages.Filtered368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis368_eq : ffiLines Filtered368.lines = localFfis368 := by
  with_unfolding_all rfl
theorem ffiStep368 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis368) : LabToTarget.findFfiNames (Filtered368 :: rest) = suffixFfis368 := by
  rw [findFfiNames_section, localFfis368_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep368
end InitECandidate.Proofs.BackendStages.Metadata
