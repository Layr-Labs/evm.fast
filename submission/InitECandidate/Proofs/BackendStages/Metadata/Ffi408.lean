import InitECandidate.Proofs.BackendStages.Metadata.Data408
import InitECandidate.Proofs.BackendStages.Filtered408
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis408_eq : ffiLines Filtered408.lines = localFfis408 := by
  with_unfolding_all rfl
theorem ffiStep408 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis408) : LabToTarget.findFfiNames (Filtered408 :: rest) = suffixFfis408 := by
  rw [findFfiNames_section, localFfis408_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep408
end InitECandidate.Proofs.BackendStages.Metadata
