import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify456
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body472_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "h")

def body472_1 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 168#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body472_0

def originalData472 : Decl (BitVec 64) :=
.function { name := "is_warm_address", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body472_1, returnShape := (Flapjack.Shape.one) }
def simplifiedData472 : Decl (BitVec 64) :=
.function { name := "is_warm_address", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body472_1, returnShape := (Flapjack.Shape.one) }
def original472 := Pancake.PanLang.declToHOL originalData472
def simplified472 := Pancake.PanLang.declToHOL simplifiedData472
end InitECandidate.Proofs.FrontendStages.Declarations
