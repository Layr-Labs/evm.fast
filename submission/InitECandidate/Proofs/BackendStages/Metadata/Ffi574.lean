import InitECandidate.Proofs.BackendStages.Metadata.Data574
import InitECandidate.Proofs.BackendStages.Filtered574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis574_eq : ffiLines Filtered574.lines = localFfis574 := by
  with_unfolding_all rfl
theorem ffiStep574 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis574) : LabToTarget.findFfiNames (Filtered574 :: rest) = suffixFfis574 := by
  rw [findFfiNames_section, localFfis574_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep574
end InitECandidate.Proofs.BackendStages.Metadata
