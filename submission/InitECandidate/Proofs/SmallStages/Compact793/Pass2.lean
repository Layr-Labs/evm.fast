import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.SmallStages.Compact793.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact793
theorem pass2_eq : (let p0 := WordSimp.compileExp source793.2.2; let p1 := WordInst.instSelectExecutable riscvConfig (maxVarHOL p0 + 1) p0; WordAlloc.fullSsaCcTrans 3 p1) = pass2 := by
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms pass2_eq
end InitECandidate.Proofs.SmallStages.Compact793
