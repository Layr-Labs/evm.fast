import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify737
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body753_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body753_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp6_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 288#64]]

def body753_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body753_3 : Prog (BitVec 64) :=
.seq body753_1 body753_2

def body753_4 : Prog (BitVec 64) :=
.seq body753_0 body753_3

def body753_5 : Prog (BitVec 64) :=
.seq body753_0 body753_1

def body753_6 : Prog (BitVec 64) :=
.seq body753_5 body753_2

def originalData753 : Decl (BitVec 64) :=
.function { name := "fp12_conj", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body753_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData753 : Decl (BitVec 64) :=
.function { name := "fp12_conj", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body753_6, returnShape := (Flapjack.Shape.one) }
def original753 := Pancake.PanLang.declToHOL originalData753
def simplified753 := Pancake.PanLang.declToHOL simplifiedData753
end InitECandidate.Proofs.FrontendStages.Declarations
