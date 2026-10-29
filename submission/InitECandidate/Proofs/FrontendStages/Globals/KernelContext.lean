import InitECandidate.Proofs.GlobalsKernelComputation
import InitECandidate.Proofs.FrontendStages.Globals.InitializersData
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack Flapjack.Pancake.PanLang
def globalDeclarationData : List (Decl (BitVec 64)) := [simplifiedData1, simplifiedData2, simplifiedData5, simplifiedData6, simplifiedData38, simplifiedData90, simplifiedData91, simplifiedData98, simplifiedData99, simplifiedData100, simplifiedData148, simplifiedData183, simplifiedData184, simplifiedData185, simplifiedData238, simplifiedData242, simplifiedData243, simplifiedData244, simplifiedData245, simplifiedData246, simplifiedData349, simplifiedData350, simplifiedData351, simplifiedData352, simplifiedData353, simplifiedData354, simplifiedData404, simplifiedData405, simplifiedData406, simplifiedData407, simplifiedData408, simplifiedData437, simplifiedData438, simplifiedData439, simplifiedData440, simplifiedData563, simplifiedData564, simplifiedData565, simplifiedData566, simplifiedData609, simplifiedData610, simplifiedData611, simplifiedData612, simplifiedData619, simplifiedData620, simplifiedData621, simplifiedData647, simplifiedData648, simplifiedData696, simplifiedData811, simplifiedData846, simplifiedData847, simplifiedData848, simplifiedData849, simplifiedData850, simplifiedData851, simplifiedData852, simplifiedData853, simplifiedData854, simplifiedData855, simplifiedData856, simplifiedData857, simplifiedData858, simplifiedData859, simplifiedData860, simplifiedData864, simplifiedData889]
def globalDeclarationsStructural : List (DeclHOL 64) := globalDeclarationData.map InitECandidate.Proofs.FrontendCodecComputation.declToHOLStructural
theorem globalDeclarations_structural_eq : globalDeclarations = globalDeclarationsStructural := by
  simp only [globalDeclarations, globalDeclarationsStructural, globalDeclarationData, simplified1, simplified2, simplified5, simplified6, simplified38, simplified90, simplified91, simplified98, simplified99, simplified100, simplified148, simplified183, simplified184, simplified185, simplified238, simplified242, simplified243, simplified244, simplified245, simplified246, simplified349, simplified350, simplified351, simplified352, simplified353, simplified354, simplified404, simplified405, simplified406, simplified407, simplified408, simplified437, simplified438, simplified439, simplified440, simplified563, simplified564, simplified565, simplified566, simplified609, simplified610, simplified611, simplified612, simplified619, simplified620, simplified621, simplified647, simplified648, simplified696, simplified811, simplified846, simplified847, simplified848, simplified849, simplified850, simplified851, simplified852, simplified853, simplified854, simplified855, simplified856, simplified857, simplified858, simplified859, simplified860, simplified864, simplified889, List.map_cons, List.map_nil, InitECandidate.Proofs.FrontendCodecComputation.declToHOL_function_eq]

def globalCompilationStructural := InitECandidate.Proofs.GlobalsKernelComputation.compileDecsExactHOL globalInitial globalDeclarationsStructural
theorem globalContext_structural_eq : globalContext = globalCompilationStructural.2.2.2 := by
  unfold globalContext globalCompilationStructural
  rw [InitECandidate.Proofs.GlobalsKernelComputation.compileDecs_function_eq, globalDeclarations_structural_eq]
theorem globalInitializers_structural_eq : globalInitializers = globalCompilationStructural.1 := by
  unfold globalInitializers globalCompilationStructural
  rw [InitECandidate.Proofs.GlobalsKernelComputation.compileDecs_function_eq, globalDeclarations_structural_eq]
#print axioms globalContext_structural_eq
#print axioms globalInitializers_structural_eq
end InitECandidate.Proofs.FrontendStages.Declarations
