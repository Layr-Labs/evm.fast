import InitECandidate.Proofs.FrontendStages.Word.FunctionsFacts
import InitECandidate.Proofs.FrontendStages.Pass4
import Flapjack.Pancake.PanToWord

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages
open Flapjack

def pass5 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := Word.outputs

private theorem inputs_eq : pass4 = Word.inputs := by rfl

theorem pass5_eq : loopToWordCompileHOL pass4 = pass5 := by
  rw [InitECandidate.Proofs.WordFrontendComputation.compileProg_eq_map, inputs_eq, Word.compileFunctions_eq]
  rfl

theorem frontend_eq : panToWordCompileProgHOL
    Compiler.Encoders.RiscV.Target.riscvConfig.isa InitE.sourceDeclarations = pass5 := by
  unfold panToWordCompileProgHOL
  dsimp only
  have step2 : compileTopExactHOL pass1 (Basis.Pure.MlString.ofString "main") = pass2 := by
    simpa only [Declarations.globalStart] using pass2_eq
  rw [pass0_eq, pass1_eq, step2, pass3_eq, pass4_eq, pass5_eq]

#print axioms pass5_eq
#print axioms frontend_eq
end InitECandidate.Proofs.FrontendStages
