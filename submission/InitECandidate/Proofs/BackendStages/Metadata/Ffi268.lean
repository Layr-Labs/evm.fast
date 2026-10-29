import InitECandidate.Proofs.BackendStages.Metadata.Data268
import InitECandidate.Proofs.BackendStages.Filtered268
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis268_eq : ffiLines Filtered268.lines = localFfis268 := by
  with_unfolding_all rfl
theorem ffiStep268 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis268) : LabToTarget.findFfiNames (Filtered268 :: rest) = suffixFfis268 := by
  rw [findFfiNames_section, localFfis268_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep268
end InitECandidate.Proofs.BackendStages.Metadata
