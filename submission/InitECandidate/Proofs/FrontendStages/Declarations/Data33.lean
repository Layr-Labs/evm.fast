import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify17
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body33_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body33_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body33_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b")
  (Flapjack.Exp.var Flapjack.VarKind.local "a")) body33_0 body33_1

def body33_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "b")

def body33_4 : Prog (BitVec 64) :=
.seq body33_2 body33_3

def originalData33 : Decl (BitVec 64) :=
.function { name := "max", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body33_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData33 : Decl (BitVec 64) :=
.function { name := "max", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body33_4, returnShape := (Flapjack.Shape.one) }
def original33 := Pancake.PanLang.declToHOL originalData33
def simplified33 := Pancake.PanLang.declToHOL simplifiedData33
end InitECandidate.Proofs.FrontendStages.Declarations
