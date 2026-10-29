import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Native
import InitECandidate.Proofs.BackendStages.RawInfoData
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.RawInfo
theorem info_eq : StackRawCall.collectInfo Native.stack .ln = rawInfo := by
  kernel_rfl
theorem compile_eq : StackRawCall.compile Native.stack = Native.stack.map (fun (identifier, body) => (identifier, StackRawCall.compTop rawInfo body)) := by
  unfold StackRawCall.compile
  rw [info_eq]
#print axioms info_eq
#print axioms compile_eq
end InitECandidate.Proofs.BackendStages.RawInfo
