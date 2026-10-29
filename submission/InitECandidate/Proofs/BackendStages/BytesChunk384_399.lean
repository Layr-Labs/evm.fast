import InitECandidate.Proofs.BackendStages.BytesChunkData384_399
import InitECandidate.Proofs.BackendStages.FinalChunk384_399
import InitECandidate.Proofs.BackendStages.Bytes384
import InitECandidate.Proofs.BackendStages.Bytes385
import InitECandidate.Proofs.BackendStages.Bytes386
import InitECandidate.Proofs.BackendStages.Bytes387
import InitECandidate.Proofs.BackendStages.Bytes388
import InitECandidate.Proofs.BackendStages.Bytes389
import InitECandidate.Proofs.BackendStages.Bytes390
import InitECandidate.Proofs.BackendStages.Bytes391
import InitECandidate.Proofs.BackendStages.Bytes392
import InitECandidate.Proofs.BackendStages.Bytes393
import InitECandidate.Proofs.BackendStages.Bytes394
import InitECandidate.Proofs.BackendStages.Bytes395
import InitECandidate.Proofs.BackendStages.Bytes396
import InitECandidate.Proofs.BackendStages.Bytes397
import InitECandidate.Proofs.BackendStages.Bytes398
import InitECandidate.Proofs.BackendStages.Bytes399
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.BytesChunk384_399
theorem compiled_eq : LabToTarget.progToBytes FinalChunk384_399.padded = BytesChunkData384_399.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded384.lines.map LabToTarget.lineBytes).flatten, (Padded385.lines.map LabToTarget.lineBytes).flatten, (Padded386.lines.map LabToTarget.lineBytes).flatten, (Padded387.lines.map LabToTarget.lineBytes).flatten, (Padded388.lines.map LabToTarget.lineBytes).flatten, (Padded389.lines.map LabToTarget.lineBytes).flatten, (Padded390.lines.map LabToTarget.lineBytes).flatten, (Padded391.lines.map LabToTarget.lineBytes).flatten, (Padded392.lines.map LabToTarget.lineBytes).flatten, (Padded393.lines.map LabToTarget.lineBytes).flatten, (Padded394.lines.map LabToTarget.lineBytes).flatten, (Padded395.lines.map LabToTarget.lineBytes).flatten, (Padded396.lines.map LabToTarget.lineBytes).flatten, (Padded397.lines.map LabToTarget.lineBytes).flatten, (Padded398.lines.map LabToTarget.lineBytes).flatten, (Padded399.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData384_399.bytes
  rw [sectionBytes384_eq, sectionBytes385_eq, sectionBytes386_eq, sectionBytes387_eq, sectionBytes388_eq, sectionBytes389_eq, sectionBytes390_eq, sectionBytes391_eq, sectionBytes392_eq, sectionBytes393_eq, sectionBytes394_eq, sectionBytes395_eq, sectionBytes396_eq, sectionBytes397_eq, sectionBytes398_eq, sectionBytes399_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.BytesChunk384_399
