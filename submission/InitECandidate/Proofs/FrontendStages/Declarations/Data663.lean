import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify647
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body663_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body663_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body663_2 : Prog (BitVec 64) :=
.seq body663_0 body663_1

def body663_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body663_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fld") (Flapjack.Exp.const 12#64)) body663_2 body663_3

def body663_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body663_6 : Prog (BitVec 64) :=
.seq body663_5 body663_1

def body663_7 : Prog (BitVec 64) :=
.seq body663_4 body663_6

def body663_8 : Prog (BitVec 64) :=
.seq body663_4 body663_5

def body663_9 : Prog (BitVec 64) :=
.seq body663_8 body663_1

def originalData663 : Decl (BitVec 64) :=
.function { name := "fe_sqr", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body663_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData663 : Decl (BitVec 64) :=
.function { name := "fe_sqr", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body663_9, returnShape := (Flapjack.Shape.one) }
def original663 := Pancake.PanLang.declToHOL originalData663
def simplified663 := Pancake.PanLang.declToHOL simplifiedData663
end InitECandidate.Proofs.FrontendStages.Declarations
