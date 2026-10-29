import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify758
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body774_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body774_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 192#64]]

def body774_2 : Prog (BitVec 64) :=
.seq body774_0 body774_1

def body774_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body774_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "r")
  (Flapjack.Exp.var Flapjack.VarKind.local "p")) body774_2 body774_3

def body774_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_neg"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64]]

def body774_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body774_7 : Prog (BitVec 64) :=
.seq body774_5 body774_6

def body774_8 : Prog (BitVec 64) :=
.seq body774_4 body774_7

def body774_9 : Prog (BitVec 64) :=
.seq body774_4 body774_5

def body774_10 : Prog (BitVec 64) :=
.seq body774_9 body774_6

def originalData774 : Decl (BitVec 64) :=
.function { name := "g2_neg", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body774_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData774 : Decl (BitVec 64) :=
.function { name := "g2_neg", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body774_10, returnShape := (Flapjack.Shape.one) }
def original774 := Pancake.PanLang.declToHOL originalData774
def simplified774 := Pancake.PanLang.declToHOL simplifiedData774
end InitECandidate.Proofs.FrontendStages.Declarations
