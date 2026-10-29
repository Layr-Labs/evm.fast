import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify20
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body36_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body36_1 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b"]) body36_0

def originalData36 : Decl (BitVec 64) :=
.function { name := "umod", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body36_1, returnShape := (Flapjack.Shape.one) }
def simplifiedData36 : Decl (BitVec 64) :=
.function { name := "umod", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body36_1, returnShape := (Flapjack.Shape.one) }
def original36 := Pancake.PanLang.declToHOL originalData36
def simplified36 := Pancake.PanLang.declToHOL simplifiedData36
end InitECandidate.Proofs.FrontendStages.Declarations
