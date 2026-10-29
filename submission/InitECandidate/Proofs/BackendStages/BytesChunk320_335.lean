import InitECandidate.Proofs.BackendStages.BytesChunkData320_335
import InitECandidate.Proofs.BackendStages.FinalChunk320_335
import InitECandidate.Proofs.BackendStages.Bytes320
import InitECandidate.Proofs.BackendStages.Bytes321
import InitECandidate.Proofs.BackendStages.Bytes322
import InitECandidate.Proofs.BackendStages.Bytes323
import InitECandidate.Proofs.BackendStages.Bytes324
import InitECandidate.Proofs.BackendStages.Bytes325
import InitECandidate.Proofs.BackendStages.Bytes326
import InitECandidate.Proofs.BackendStages.Bytes327
import InitECandidate.Proofs.BackendStages.Bytes328
import InitECandidate.Proofs.BackendStages.Bytes329
import InitECandidate.Proofs.BackendStages.Bytes330
import InitECandidate.Proofs.BackendStages.Bytes331
import InitECandidate.Proofs.BackendStages.Bytes332
import InitECandidate.Proofs.BackendStages.Bytes333
import InitECandidate.Proofs.BackendStages.Bytes334
import InitECandidate.Proofs.BackendStages.Bytes335
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.BytesChunk320_335
theorem compiled_eq : LabToTarget.progToBytes FinalChunk320_335.padded = BytesChunkData320_335.bytes := by
  rw [LabToTarget.progToBytesMap]
  change [(Padded320.lines.map LabToTarget.lineBytes).flatten, (Padded321.lines.map LabToTarget.lineBytes).flatten, (Padded322.lines.map LabToTarget.lineBytes).flatten, (Padded323.lines.map LabToTarget.lineBytes).flatten, (Padded324.lines.map LabToTarget.lineBytes).flatten, (Padded325.lines.map LabToTarget.lineBytes).flatten, (Padded326.lines.map LabToTarget.lineBytes).flatten, (Padded327.lines.map LabToTarget.lineBytes).flatten, (Padded328.lines.map LabToTarget.lineBytes).flatten, (Padded329.lines.map LabToTarget.lineBytes).flatten, (Padded330.lines.map LabToTarget.lineBytes).flatten, (Padded331.lines.map LabToTarget.lineBytes).flatten, (Padded332.lines.map LabToTarget.lineBytes).flatten, (Padded333.lines.map LabToTarget.lineBytes).flatten, (Padded334.lines.map LabToTarget.lineBytes).flatten, (Padded335.lines.map LabToTarget.lineBytes).flatten].flatten = BytesChunkData320_335.bytes
  rw [sectionBytes320_eq, sectionBytes321_eq, sectionBytes322_eq, sectionBytes323_eq, sectionBytes324_eq, sectionBytes325_eq, sectionBytes326_eq, sectionBytes327_eq, sectionBytes328_eq, sectionBytes329_eq, sectionBytes330_eq, sectionBytes331_eq, sectionBytes332_eq, sectionBytes333_eq, sectionBytes334_eq, sectionBytes335_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.BytesChunk320_335
