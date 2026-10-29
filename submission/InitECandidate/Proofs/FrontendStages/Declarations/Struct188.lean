import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.StructKernelComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data188
import InitECandidate.Proofs.StructComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Struct172
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem struct188_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitECandidate.Proofs.StructComputation.compileDeclaration context finalContext simplified188 = some simplified188 := by
  apply InitECandidate.Proofs.StructKernelComputation.declaration_identity
  change InitECandidate.Proofs.StructKernelComputation.declarationFree (Flapjack.Pancake.PanLang.declToHOL simplifiedData188) = true
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms struct188_eq
end InitECandidate.Proofs.FrontendStages.Declarations
