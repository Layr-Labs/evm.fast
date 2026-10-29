import InitECandidate.Proofs.BackendStages.RemovedChunk464_479
import InitECandidate.Proofs.BackendStages.Named464
import InitECandidate.Proofs.BackendStages.Named465
import InitECandidate.Proofs.BackendStages.Named466
import InitECandidate.Proofs.BackendStages.Named467
import InitECandidate.Proofs.BackendStages.Named468
import InitECandidate.Proofs.BackendStages.Named469
import InitECandidate.Proofs.BackendStages.Named470
import InitECandidate.Proofs.BackendStages.Named471
import InitECandidate.Proofs.BackendStages.Named472
import InitECandidate.Proofs.BackendStages.Named473
import InitECandidate.Proofs.BackendStages.Named474
import InitECandidate.Proofs.BackendStages.Named475
import InitECandidate.Proofs.BackendStages.Named476
import InitECandidate.Proofs.BackendStages.Named477
import InitECandidate.Proofs.BackendStages.Named478
import InitECandidate.Proofs.BackendStages.Named479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.NamedChunk464_479
def bodies : List (Nat × StackLang.HolProg 64) := [Named464, Named465, Named466, Named467, Named468, Named469, Named470, Named471, Named472, Named473, Named474, Named475, Named476, Named477, Named478, Named479]
theorem compiled_eq : RemovedChunk464_479.bodies.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = bodies := by
  change [StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed464, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed465, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed466, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed467, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed468, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed469, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed470, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed471, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed472, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed473, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed474, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed475, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed476, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed477, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed478, StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed479] = bodies
  rw [Named464_eq, Named465_eq, Named466_eq, Named467_eq, Named468_eq, Named469_eq, Named470_eq, Named471_eq, Named472_eq, Named473_eq, Named474_eq, Named475_eq, Named476_eq, Named477_eq, Named478_eq, Named479_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.NamedChunk464_479
