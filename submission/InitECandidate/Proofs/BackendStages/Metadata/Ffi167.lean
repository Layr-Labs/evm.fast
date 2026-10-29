import InitECandidate.Proofs.BackendStages.Metadata.Data167
import InitECandidate.Proofs.BackendStages.Filtered167
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis167_eq : ffiLines Filtered167.lines = localFfis167 := by
  with_unfolding_all rfl
theorem ffiStep167 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis167) : LabToTarget.findFfiNames (Filtered167 :: rest) = suffixFfis167 := by
  rw [findFfiNames_section, localFfis167_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep167
end InitECandidate.Proofs.BackendStages.Metadata
