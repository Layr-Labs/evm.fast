import InitECandidate.Proofs.BackendStages.Metadata.Data476
import InitECandidate.Proofs.BackendStages.Filtered476
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis476_eq : ffiLines Filtered476.lines = localFfis476 := by
  with_unfolding_all rfl
theorem ffiStep476 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis476) : LabToTarget.findFfiNames (Filtered476 :: rest) = suffixFfis476 := by
  rw [findFfiNames_section, localFfis476_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep476
end InitECandidate.Proofs.BackendStages.Metadata
