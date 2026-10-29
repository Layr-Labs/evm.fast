import InitECandidate.Proofs.BackendStages.SectionChunk64_79
import InitECandidate.Proofs.BackendStages.RawStubs
import InitECandidate.Proofs.BackendStages.AllocStubs
import InitECandidate.Proofs.BackendStages.RemovedStubs
import InitECandidate.Proofs.BackendStages.NamedStubs
import InitECandidate.Proofs.BackendStages.SectionStubs
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.LowerPrefix64_79
-- Exact prefix check for the chunk-composition algebra used by the full program.
theorem raw_eq : Chunk64_79.bodies.map (fun (identifier, body) => (identifier, StackRawCall.compTop RawInfo.rawInfo body)) = RawChunk64_79.bodies := RawChunk64_79.compiled_eq
theorem alloc_eq : StackAlloc.compile RiscVConfig.pancakeRiscVBackendConfig.dataConf (RawStubs ++ RawChunk64_79.bodies) = AllocStubs ++ AllocChunk64_79.bodies := by
  unfold StackAlloc.compile
  rw [List.map_append, AllocChunk64_79.compiled_eq, ← List.append_assoc, AllocStubs_eq]
theorem removed_eq : StackRemove.compileHOL false riscvConfig.addrOffset (StackToLab.isGenGc RiscVConfig.pancakeRiscVBackendConfig.dataConf.gcKind) (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1) (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) BvlToBvi.initGlobalsLocation (AllocStubs ++ AllocChunk64_79.bodies) = RemovedStubs ++ RemovedChunk64_79.bodies := by
  unfold StackRemove.compileHOL
  rw [List.map_append, RemovedChunk64_79.compiled_eq, ← List.append_assoc, RemovedStubs_eq]
theorem named_eq : StackNames.compileHOL RiscVConfig.riscvNames (RemovedStubs ++ RemovedChunk64_79.bodies) = NamedStubs ++ NamedChunk64_79.bodies := by
  unfold StackNames.compileHOL
  rw [List.map_append, NamedStubs_eq, NamedChunk64_79.compiled_eq]
theorem sections_eq : (NamedStubs ++ NamedChunk64_79.bodies).map StackToLab.progToSectionHOL = SectionStubs ++ SectionChunk64_79.sections := by
  rw [List.map_append, SectionStubs_eq, SectionChunk64_79.compiled_eq]
#print axioms raw_eq
#print axioms alloc_eq
#print axioms removed_eq
#print axioms named_eq
#print axioms sections_eq
end InitECandidate.Proofs.BackendStages.LowerPrefix64_79
