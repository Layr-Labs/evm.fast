import InitECandidate.Proofs.BackendStages.Metadata.Data464
import InitECandidate.Proofs.BackendStages.Filtered464
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis464_eq : ffiLines Filtered464.lines = localFfis464 := by
  with_unfolding_all rfl
theorem ffiStep464 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis464) : LabToTarget.findFfiNames (Filtered464 :: rest) = suffixFfis464 := by
  rw [findFfiNames_section, localFfis464_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep464
end InitECandidate.Proofs.BackendStages.Metadata
