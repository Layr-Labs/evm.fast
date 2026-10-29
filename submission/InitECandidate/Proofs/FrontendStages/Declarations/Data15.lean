import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body15_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.global "scratch_ptr")

def originalData15 : Decl (BitVec 64) :=
.function { name := "scratch_mark", inline := false, exported := false, params := [], body := body15_0, returnShape := (Flapjack.Shape.one) }
def simplifiedData15 : Decl (BitVec 64) :=
.function { name := "scratch_mark", inline := false, exported := false, params := [], body := body15_0, returnShape := (Flapjack.Shape.one) }
def original15 := Pancake.PanLang.declToHOL originalData15
def simplified15 := Pancake.PanLang.declToHOL simplifiedData15
end InitECandidate.Proofs.FrontendStages.Declarations
