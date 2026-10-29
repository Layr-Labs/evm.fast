import InitECandidate.Proofs.BackendStages.Metadata.Data159
import InitECandidate.Proofs.BackendStages.Filtered159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis159_eq : ffiLines Filtered159.lines = localFfis159 := by
  with_unfolding_all rfl
theorem ffiStep159 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis159) : LabToTarget.findFfiNames (Filtered159 :: rest) = suffixFfis159 := by
  rw [findFfiNames_section, localFfis159_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep159
end InitECandidate.Proofs.BackendStages.Metadata
