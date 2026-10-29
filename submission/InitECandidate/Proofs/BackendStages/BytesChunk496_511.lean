import InitECandidate.Proofs.BackendStages.BytesChunkData496_511
import InitECandidate.Proofs.BackendStages.FinalChunk496_511
import InitECandidate.Proofs.BackendStages.Bytes496
import InitECandidate.Proofs.BackendStages.Bytes497
import InitECandidate.Proofs.BackendStages.Bytes498
import InitECandidate.Proofs.BackendStages.Bytes499
import InitECandidate.Proofs.BackendStages.Bytes500
import InitECandidate.Proofs.BackendStages.Bytes501
import InitECandidate.Proofs.BackendStages.Bytes502
import InitECandidate.Proofs.BackendStages.Bytes503
import InitECandidate.Proofs.BackendStages.Bytes504
import InitECandidate.Proofs.BackendStages.Bytes505
import InitECandidate.Proofs.BackendStages.Bytes506
import InitECandidate.Proofs.BackendStages.Bytes507
import InitECandidate.Proofs.BackendStages.Bytes508
import InitECandidate.Proofs.BackendStages.Bytes509
import InitECandidate.Proofs.BackendStages.Bytes510
import InitECandidate.Proofs.BackendStages.Bytes511
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.BytesChunk496_511
theorem compiled_eq : LabToTarget.progToBytes FinalChunk496_511.padded = BytesChunkData496_511.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded496.lines.map LabToTarget.lineBytes).flatten, (Padded497.lines.map LabToTarget.lineBytes).flatten, (Padded498.lines.map LabToTarget.lineBytes).flatten, (Padded499.lines.map LabToTarget.lineBytes).flatten, (Padded500.lines.map LabToTarget.lineBytes).flatten, (Padded501.lines.map LabToTarget.lineBytes).flatten, (Padded502.lines.map LabToTarget.lineBytes).flatten, (Padded503.lines.map LabToTarget.lineBytes).flatten, (Padded504.lines.map LabToTarget.lineBytes).flatten, (Padded505.lines.map LabToTarget.lineBytes).flatten, (Padded506.lines.map LabToTarget.lineBytes).flatten, (Padded507.lines.map LabToTarget.lineBytes).flatten, (Padded508.lines.map LabToTarget.lineBytes).flatten, (Padded509.lines.map LabToTarget.lineBytes).flatten, (Padded510.lines.map LabToTarget.lineBytes).flatten, (Padded511.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData496_511.bytes
  rw [sectionBytes496_eq, sectionBytes497_eq, sectionBytes498_eq, sectionBytes499_eq, sectionBytes500_eq, sectionBytes501_eq, sectionBytes502_eq, sectionBytes503_eq, sectionBytes504_eq, sectionBytes505_eq, sectionBytes506_eq, sectionBytes507_eq, sectionBytes508_eq, sectionBytes509_eq, sectionBytes510_eq, sectionBytes511_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.BytesChunk496_511
