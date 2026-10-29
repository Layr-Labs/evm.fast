import InitE.SourceExceptionFacts


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
/-- Checking names suffices to exhibit the fixed AST's main declaration. -/
theorem sourceHasMain :
    ∃ fi : FunDeclHOL 64, .function fi ∈ Guest.Software.guestAst.map declToHOL ∧
      fi.name = ofString "main" := by
  have h : (Guest.Software.guestAst.map declToHOL).any
      (fun d => match d with
        | .function fi => decide (fi.name = ofString "main")
        | _ => false) = true := by decide_cbv
  obtain ⟨d, hd, hmain⟩ := List.any_eq_true.mp h
  cases d with
  | function fi => exact ⟨fi, hd, of_decide_eq_true hmain⟩
  | decl _ _ _ => simp at hmain
  | exnDecl _ _ => simp at hmain
  | name _ _ => simp at hmain

end InitE
