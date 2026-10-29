import InitE.SourceDeclarations


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
theorem sourceDistinctParams : distinctParamsHOL (functionsHOL sourceDeclarations) := by
  have h : (functionsHOL sourceDeclarations).all
      (fun entry => MetadataComputation.increasing
        (((entry.2.1.map Prod.fst).map MetadataComputation.nameFingerprint).mergeSort
          (fun a b => decide (a ≤ b)))) = true := by
    conv => lhs; cbv
    try rfl
  intro entry he
  apply MetadataComputation.nodup_of_map Prod.fst entry.2.1
  exact MetadataComputation.nodup_of_sorted_fingerprints _
    (List.all_eq_true.mp h entry he)

end InitE
