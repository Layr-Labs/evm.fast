import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify819
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body835_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.const 64#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 16#64]),
          Flapjack.Exp.const 33#64],
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "log", Flapjack.Exp.const 32#64])])

def body835_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body835_2 : Prog (BitVec 64) :=
.seq body835_0 body835_1

def body835_3 : Prog (BitVec 64) :=
.dec ("log") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])) body835_2

def body835_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body835_3

def body835_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "total")

def body835_6 : Prog (BitVec 64) :=
.seq body835_4 body835_5

def body835_7 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body835_6

def body835_8 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 16#64) body835_7

def body835_9 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 0#64])) body835_8

def body835_10 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "logs", Flapjack.Exp.const 8#64])) body835_9

def originalData835 : Decl (BitVec 64) :=
.function { name := "logs_encoded_bound", inline := false, exported := false, params := [("logs", Flapjack.Shape.one)], body := body835_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData835 : Decl (BitVec 64) :=
.function { name := "logs_encoded_bound", inline := false, exported := false, params := [("logs", Flapjack.Shape.one)], body := body835_10, returnShape := (Flapjack.Shape.one) }
def original835 := Pancake.PanLang.declToHOL originalData835
def simplified835 := Pancake.PanLang.declToHOL simplifiedData835
end InitECandidate.Proofs.FrontendStages.Declarations
