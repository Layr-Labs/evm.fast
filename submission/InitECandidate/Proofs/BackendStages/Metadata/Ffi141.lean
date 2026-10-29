import InitECandidate.Proofs.BackendStages.Metadata.Data141
import InitECandidate.Proofs.BackendStages.Filtered141
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis141_eq : ffiLines Filtered141.lines = localFfis141 := by
  with_unfolding_all rfl
theorem ffiStep141 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis141) : LabToTarget.findFfiNames (Filtered141 :: rest) = suffixFfis141 := by
  rw [findFfiNames_section, localFfis141_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep141
end InitECandidate.Proofs.BackendStages.Metadata
