import InitECandidate.Proofs.BackendStages.Metadata.LiteralFacts
import InitECandidate.Proofs.BackendStages.Filtered
import InitECandidate.Proofs.BackendStages.Final
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem ffi_eq : LabToTarget.findFfiNames Filtered.program = Target.ffis := by
  exact ffiLiteral_eq
theorem shmem_eq : LabToTarget.getShmemInfo Final.padded0 0 [] [] = (shmemFfis, InitE.baselineLabConfig.shmemExtra) := by
  exact shmemLiteral_eq
theorem symbols_eq : LabToTarget.getSymbols 0 Final.padded0 = InitE.baselineLabConfig.secPosLen := by
  exact symbolsLiteral_eq
#print axioms ffi_eq
#print axioms shmem_eq
#print axioms symbols_eq
end InitECandidate.Proofs.BackendStages.Metadata
