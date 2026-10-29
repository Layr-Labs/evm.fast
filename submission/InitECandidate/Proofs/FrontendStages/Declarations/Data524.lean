import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify508
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body524_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "slot") (Flapjack.Exp.var Flapjack.VarKind.local "log")

def body524_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body524_2 : Prog (BitVec 64) :=
.seq body524_0 body524_1

def body524_3 : Prog (BitVec 64) :=
.decCall ("slot") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.const 8#64]) body524_2

def originalData524 : Decl (BitVec 64) :=
.function { name := "log_append", inline := false, exported := false, params := [("e", Flapjack.Shape.one), ("log", Flapjack.Shape.one)], body := body524_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData524 : Decl (BitVec 64) :=
.function { name := "log_append", inline := false, exported := false, params := [("e", Flapjack.Shape.one), ("log", Flapjack.Shape.one)], body := body524_3, returnShape := (Flapjack.Shape.one) }
def original524 := Pancake.PanLang.declToHOL originalData524
def simplified524 := Pancake.PanLang.declToHOL simplifiedData524
end InitECandidate.Proofs.FrontendStages.Declarations
