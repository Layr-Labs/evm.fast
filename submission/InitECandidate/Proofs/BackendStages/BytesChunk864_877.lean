import InitECandidate.Proofs.BackendStages.BytesChunkData864_877
import InitECandidate.Proofs.BackendStages.FinalChunk864_877
import InitECandidate.Proofs.BackendStages.Bytes864
import InitECandidate.Proofs.BackendStages.Bytes865
import InitECandidate.Proofs.BackendStages.Bytes866
import InitECandidate.Proofs.BackendStages.Bytes867
import InitECandidate.Proofs.BackendStages.Bytes868
import InitECandidate.Proofs.BackendStages.Bytes869
import InitECandidate.Proofs.BackendStages.Bytes870
import InitECandidate.Proofs.BackendStages.Bytes871
import InitECandidate.Proofs.BackendStages.Bytes872
import InitECandidate.Proofs.BackendStages.Bytes873
import InitECandidate.Proofs.BackendStages.Bytes874
import InitECandidate.Proofs.BackendStages.Bytes875
import InitECandidate.Proofs.BackendStages.Bytes876
import InitECandidate.Proofs.BackendStages.Bytes877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.BytesChunk864_877
theorem compiled_eq : LabToTarget.progToBytes FinalChunk864_877.padded = BytesChunkData864_877.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded864.lines.map LabToTarget.lineBytes).flatten, (Padded865.lines.map LabToTarget.lineBytes).flatten, (Padded866.lines.map LabToTarget.lineBytes).flatten, (Padded867.lines.map LabToTarget.lineBytes).flatten, (Padded868.lines.map LabToTarget.lineBytes).flatten, (Padded869.lines.map LabToTarget.lineBytes).flatten, (Padded870.lines.map LabToTarget.lineBytes).flatten, (Padded871.lines.map LabToTarget.lineBytes).flatten, (Padded872.lines.map LabToTarget.lineBytes).flatten, (Padded873.lines.map LabToTarget.lineBytes).flatten, (Padded874.lines.map LabToTarget.lineBytes).flatten, (Padded875.lines.map LabToTarget.lineBytes).flatten, (Padded876.lines.map LabToTarget.lineBytes).flatten, (Padded877.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData864_877.bytes
  rw [sectionBytes864_eq, sectionBytes865_eq, sectionBytes866_eq, sectionBytes867_eq, sectionBytes868_eq, sectionBytes869_eq, sectionBytes870_eq, sectionBytes871_eq, sectionBytes872_eq, sectionBytes873_eq, sectionBytes874_eq, sectionBytes875_eq, sectionBytes876_eq, sectionBytes877_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.BytesChunk864_877
