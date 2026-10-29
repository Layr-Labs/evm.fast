import InitECandidate.Proofs.BackendStages.Metadata.Data274
import InitECandidate.Proofs.BackendStages.Filtered274
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis274_eq : ffiLines Filtered274.lines = localFfis274 := by
  with_unfolding_all rfl
theorem ffiStep274 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis274) : LabToTarget.findFfiNames (Filtered274 :: rest) = suffixFfis274 := by
  rw [findFfiNames_section, localFfis274_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep274
end InitECandidate.Proofs.BackendStages.Metadata
