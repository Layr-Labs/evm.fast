import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data875
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate842
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody875_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "q")

def globalBody875_1 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 5#64]) globalBody875_0

def globalData875 : Decl (BitVec 64) :=
.function { name := "udiv_small5", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := globalBody875_1, returnShape := (Flapjack.Shape.one) }
def globalOutput875 := Pancake.PanLang.declToHOL globalData875
end InitECandidate.Proofs.FrontendStages.Declarations
