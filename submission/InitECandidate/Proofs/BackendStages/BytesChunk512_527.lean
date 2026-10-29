import InitECandidate.Proofs.BackendStages.BytesChunkData512_527
import InitECandidate.Proofs.BackendStages.FinalChunk512_527
import InitECandidate.Proofs.BackendStages.Bytes512
import InitECandidate.Proofs.BackendStages.Bytes513
import InitECandidate.Proofs.BackendStages.Bytes514
import InitECandidate.Proofs.BackendStages.Bytes515
import InitECandidate.Proofs.BackendStages.Bytes516
import InitECandidate.Proofs.BackendStages.Bytes517
import InitECandidate.Proofs.BackendStages.Bytes518
import InitECandidate.Proofs.BackendStages.Bytes519
import InitECandidate.Proofs.BackendStages.Bytes520
import InitECandidate.Proofs.BackendStages.Bytes521
import InitECandidate.Proofs.BackendStages.Bytes522
import InitECandidate.Proofs.BackendStages.Bytes523
import InitECandidate.Proofs.BackendStages.Bytes524
import InitECandidate.Proofs.BackendStages.Bytes525
import InitECandidate.Proofs.BackendStages.Bytes526
import InitECandidate.Proofs.BackendStages.Bytes527
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.BytesChunk512_527
theorem compiled_eq : LabToTarget.progToBytes FinalChunk512_527.padded = BytesChunkData512_527.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded512.lines.map LabToTarget.lineBytes).flatten, (Padded513.lines.map LabToTarget.lineBytes).flatten, (Padded514.lines.map LabToTarget.lineBytes).flatten, (Padded515.lines.map LabToTarget.lineBytes).flatten, (Padded516.lines.map LabToTarget.lineBytes).flatten, (Padded517.lines.map LabToTarget.lineBytes).flatten, (Padded518.lines.map LabToTarget.lineBytes).flatten, (Padded519.lines.map LabToTarget.lineBytes).flatten, (Padded520.lines.map LabToTarget.lineBytes).flatten, (Padded521.lines.map LabToTarget.lineBytes).flatten, (Padded522.lines.map LabToTarget.lineBytes).flatten, (Padded523.lines.map LabToTarget.lineBytes).flatten, (Padded524.lines.map LabToTarget.lineBytes).flatten, (Padded525.lines.map LabToTarget.lineBytes).flatten, (Padded526.lines.map LabToTarget.lineBytes).flatten, (Padded527.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData512_527.bytes
  rw [sectionBytes512_eq, sectionBytes513_eq, sectionBytes514_eq, sectionBytes515_eq, sectionBytes516_eq, sectionBytes517_eq, sectionBytes518_eq, sectionBytes519_eq, sectionBytes520_eq, sectionBytes521_eq, sectionBytes522_eq, sectionBytes523_eq, sectionBytes524_eq, sectionBytes525_eq, sectionBytes526_eq, sectionBytes527_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.BytesChunk512_527
