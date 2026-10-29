import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify726
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body742_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body742_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 96#64]]

def body742_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 192#64]]

def body742_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body742_4 : Prog (BitVec 64) :=
.seq body742_2 body742_3

def body742_5 : Prog (BitVec 64) :=
.seq body742_1 body742_4

def body742_6 : Prog (BitVec 64) :=
.seq body742_0 body742_5

def body742_7 : Prog (BitVec 64) :=
.seq body742_0 body742_1

def body742_8 : Prog (BitVec 64) :=
.seq body742_7 body742_2

def body742_9 : Prog (BitVec 64) :=
.seq body742_8 body742_3

def originalData742 : Decl (BitVec 64) :=
.function { name := "fp6_add", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body742_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData742 : Decl (BitVec 64) :=
.function { name := "fp6_add", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body742_9, returnShape := (Flapjack.Shape.one) }
def original742 := Pancake.PanLang.declToHOL originalData742
def simplified742 := Pancake.PanLang.declToHOL simplifiedData742
end InitECandidate.Proofs.FrontendStages.Declarations
