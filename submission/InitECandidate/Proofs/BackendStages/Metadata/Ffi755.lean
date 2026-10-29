import InitECandidate.Proofs.BackendStages.Metadata.Data755
import InitECandidate.Proofs.BackendStages.Filtered755
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis755_eq : ffiLines Filtered755.lines = localFfis755 := by
  with_unfolding_all rfl
theorem ffiStep755 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis755) : LabToTarget.findFfiNames (Filtered755 :: rest) = suffixFfis755 := by
  rw [findFfiNames_section, localFfis755_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep755
end InitECandidate.Proofs.BackendStages.Metadata
