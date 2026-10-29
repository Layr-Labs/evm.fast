import InitECandidate.Proofs.BackendStages.Metadata.Data438
import InitECandidate.Proofs.BackendStages.Filtered438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis438_eq : ffiLines Filtered438.lines = localFfis438 := by
  with_unfolding_all rfl
theorem ffiStep438 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis438) : LabToTarget.findFfiNames (Filtered438 :: rest) = suffixFfis438 := by
  rw [findFfiNames_section, localFfis438_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep438
end InitECandidate.Proofs.BackendStages.Metadata
