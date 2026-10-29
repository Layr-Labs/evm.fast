import InitE.SourceShapeFacts


set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

/-! Static facts about the fixed source. Computation proofs use proof-producing `decide_cbv` and are checked by the kernel.
These properties depend only on the fixed source AST. -/
namespace InitE
open Flapjack Flapjack.Pancake.PanLang Flapjack.Compiler.Backend
open Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Basis.Pure.MlString

open scoped InitE.MetadataComputation InitE.NameComputation in
theorem sourceExceptionBound : sizeOfEidsHOL sourceDeclarations < 2 ^ 64 := by
  decide_cbv

end InitE
