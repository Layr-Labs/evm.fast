import InitECandidate.Proofs.FrontendStages.Declarations.Data913
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody913_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "q")

def globalBody913_1 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 5#64]) globalBody913_0

def globalData913 : Decl (BitVec 64) := .function { name := "udiv_small5", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := globalBody913_1, returnShape := (Flapjack.Shape.one) }
def globalOutput913 := Pancake.PanLang.declToHOL globalData913
end InitECandidate.Proofs.FrontendStages.Declarations
