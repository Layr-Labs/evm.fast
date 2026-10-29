import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.WordStages.Sparse713.Data8
import InitECandidate.Proofs.WordStages.Sparse713.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages.Sparse713
namespace InitECandidate.Proofs.ClashStages713
theorem forced_eq : (WordAlloc.getForced riscvConfig pass713_8 []).all (fun (x, y) => WordAlloc.totalColour colour x != WordAlloc.totalColour colour y) = true := by
  kernel_rfl
#print axioms forced_eq
end InitECandidate.Proofs.ClashStages713
