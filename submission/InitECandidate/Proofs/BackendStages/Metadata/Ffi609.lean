import InitECandidate.Proofs.BackendStages.Metadata.Data609
import InitECandidate.Proofs.BackendStages.Filtered609
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis609_eq : ffiLines Filtered609.lines = localFfis609 := by
  with_unfolding_all rfl
theorem ffiStep609 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis609) : LabToTarget.findFfiNames (Filtered609 :: rest) = suffixFfis609 := by
  rw [findFfiNames_section, localFfis609_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep609
end InitECandidate.Proofs.BackendStages.Metadata
