import InitECandidate.Proofs.BackendStages.Metadata.Data722
import InitECandidate.Proofs.BackendStages.Filtered722
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis722_eq : ffiLines Filtered722.lines = localFfis722 := by
  with_unfolding_all rfl
theorem ffiStep722 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis722) : LabToTarget.findFfiNames (Filtered722 :: rest) = suffixFfis722 := by
  rw [findFfiNames_section, localFfis722_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep722
end InitECandidate.Proofs.BackendStages.Metadata
