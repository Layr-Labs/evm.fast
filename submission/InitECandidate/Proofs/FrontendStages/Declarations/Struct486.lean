import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.StructKernelComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data486
import InitECandidate.Proofs.StructComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Struct470
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem struct486_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitECandidate.Proofs.StructComputation.compileDeclaration context finalContext simplified486 = some simplified486 := by
  apply InitECandidate.Proofs.StructKernelComputation.declaration_identity
  change InitECandidate.Proofs.StructKernelComputation.declarationFree (Flapjack.Pancake.PanLang.declToHOL simplifiedData486) = true
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms struct486_eq
end InitECandidate.Proofs.FrontendStages.Declarations
