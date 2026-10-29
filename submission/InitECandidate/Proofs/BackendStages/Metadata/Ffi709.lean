import InitECandidate.Proofs.BackendStages.Metadata.Data709
import InitECandidate.Proofs.BackendStages.Filtered709
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis709_eq : ffiLines Filtered709.lines = localFfis709 := by
  with_unfolding_all rfl
theorem ffiStep709 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis709) : LabToTarget.findFfiNames (Filtered709 :: rest) = suffixFfis709 := by
  rw [findFfiNames_section, localFfis709_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep709
end InitECandidate.Proofs.BackendStages.Metadata
