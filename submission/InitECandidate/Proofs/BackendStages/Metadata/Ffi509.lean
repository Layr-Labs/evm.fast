import InitECandidate.Proofs.BackendStages.Metadata.Data509
import InitECandidate.Proofs.BackendStages.Filtered509
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis509_eq : ffiLines Filtered509.lines = localFfis509 := by
  with_unfolding_all rfl
theorem ffiStep509 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis509) : LabToTarget.findFfiNames (Filtered509 :: rest) = suffixFfis509 := by
  rw [findFfiNames_section, localFfis509_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep509
end InitECandidate.Proofs.BackendStages.Metadata
