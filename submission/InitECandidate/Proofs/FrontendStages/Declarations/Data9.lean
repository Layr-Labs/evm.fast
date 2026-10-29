import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body9_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.global "heap_ptr")

def originalData9 : Decl (BitVec 64) :=
.function { name := "heap_mark", inline := false, exported := false, params := [], body := body9_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData9 : Decl (BitVec 64) :=
.function { name := "heap_mark", inline := false, exported := false, params := [], body := body9_0, returnShape := (Flapjack.Shape.one) }
def original9 := Pancake.PanLang.declToHOL originalData9
def simplified9 := Pancake.PanLang.declToHOL simplifiedData9
end InitECandidate.Proofs.FrontendStages.Declarations
