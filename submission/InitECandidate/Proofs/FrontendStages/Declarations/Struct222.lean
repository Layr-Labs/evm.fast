import InitECandidate.Proofs.FrontendCodecComputation
import InitECandidate.Proofs.StructKernelComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data222
import InitECandidate.Proofs.StructComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Struct206
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
theorem struct222_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitECandidate.Proofs.StructComputation.compileDeclaration context finalContext simplified222 = some simplified222 := by
  apply InitECandidate.Proofs.StructKernelComputation.declaration_identity
  change InitECandidate.Proofs.StructKernelComputation.declarationFree (Flapjack.Pancake.PanLang.declToHOL simplifiedData222) = true
  rw [InitECandidate.Proofs.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms struct222_eq
end InitECandidate.Proofs.FrontendStages.Declarations
