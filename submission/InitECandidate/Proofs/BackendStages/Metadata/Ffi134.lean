import InitECandidate.Proofs.BackendStages.Metadata.Data134
import InitECandidate.Proofs.BackendStages.Filtered134
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis134_eq : ffiLines Filtered134.lines = localFfis134 := by
  with_unfolding_all rfl
theorem ffiStep134 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis134) : LabToTarget.findFfiNames (Filtered134 :: rest) = suffixFfis134 := by
  rw [findFfiNames_section, localFfis134_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep134
end InitECandidate.Proofs.BackendStages.Metadata
