import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify663
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body679_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 1152#64]

def body679_1 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out")
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.var Flapjack.VarKind.local "g1"))

def body679_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 384#64])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "g1", Flapjack.Exp.const 32#64]))

def body679_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]])
  (Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "g1", Flapjack.Exp.const 64#64]))

def body679_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body679_5 : Prog (BitVec 64) :=
.seq body679_3 body679_4

def body679_6 : Prog (BitVec 64) :=
.seq body679_2 body679_5

def body679_7 : Prog (BitVec 64) :=
.seq body679_1 body679_6

def body679_8 : Prog (BitVec 64) :=
.seq body679_0 body679_7

def body679_9 : Prog (BitVec 64) :=
.seq body679_0 body679_1

def body679_10 : Prog (BitVec 64) :=
.seq body679_9 body679_2

def body679_11 : Prog (BitVec 64) :=
.seq body679_10 body679_3

def body679_12 : Prog (BitVec 64) :=
.seq body679_11 body679_4

def originalData679 : Decl (BitVec 64) :=
.function { name := "fq12_cast", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("g1", Flapjack.Shape.one)], body := body679_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData679 : Decl (BitVec 64) :=
.function { name := "fq12_cast", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("g1", Flapjack.Shape.one)], body := body679_12, returnShape := (Flapjack.Shape.one) }
def original679 := Pancake.PanLang.declToHOL originalData679
def simplified679 := Pancake.PanLang.declToHOL simplifiedData679
end InitECandidate.Proofs.FrontendStages.Declarations
