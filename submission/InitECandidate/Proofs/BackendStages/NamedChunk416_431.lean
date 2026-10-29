import InitECandidate.Proofs.BackendStages.RemovedChunk416_431
import InitECandidate.Proofs.BackendStages.Named416
import InitECandidate.Proofs.BackendStages.Named417
import InitECandidate.Proofs.BackendStages.Named418
import InitECandidate.Proofs.BackendStages.Named419
import InitECandidate.Proofs.BackendStages.Named420
import InitECandidate.Proofs.BackendStages.Named421
import InitECandidate.Proofs.BackendStages.Named422
import InitECandidate.Proofs.BackendStages.Named423
import InitECandidate.Proofs.BackendStages.Named424
import InitECandidate.Proofs.BackendStages.Named425
import InitECandidate.Proofs.BackendStages.Named426
import InitECandidate.Proofs.BackendStages.Named427
import InitECandidate.Proofs.BackendStages.Named428
import InitECandidate.Proofs.BackendStages.Named429
import InitECandidate.Proofs.BackendStages.Named430
import InitECandidate.Proofs.BackendStages.Named431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk416_431
def bodies : List (Nat × StackLang.HolProg 64) := [Named416, Named417, Named418, Named419, Named420, Named421, Named422, Named423, Named424, Named425, Named426, Named427, Named428, Named429, Named430, Named431]
theorem compiled_eq : RemovedChunk416_431.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed416, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed417, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed418, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed419, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed420, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed421, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed422, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed423, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed424, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed425, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed426, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed427, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed428, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed429, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed430, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed431] = bodies
  rw [Named416_eq, Named417_eq, Named418_eq, Named419_eq, Named420_eq, Named421_eq, Named422_eq, Named423_eq, Named424_eq, Named425_eq, Named426_eq, Named427_eq, Named428_eq, Named429_eq, Named430_eq, Named431_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk416_431
