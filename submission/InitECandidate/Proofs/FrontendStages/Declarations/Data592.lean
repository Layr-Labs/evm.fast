import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify576
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body592_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 64#64])])

def body592_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 72#64])])

def body592_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 184#64])])

def body592_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body592_4 : Prog (BitVec 64) :=
.seq body592_2 body592_3

def body592_5 : Prog (BitVec 64) :=
.seq body592_1 body592_4

def body592_6 : Prog (BitVec 64) :=
.seq body592_0 body592_5

def body592_7 : Prog (BitVec 64) :=
.seq body592_0 body592_1

def body592_8 : Prog (BitVec 64) :=
.seq body592_7 body592_2

def body592_9 : Prog (BitVec 64) :=
.seq body592_8 body592_3

def originalData592 : Decl (BitVec 64) :=
.function { name := "incorporate_child_on_error", inline := false, exported := false, params := [("child", Flapjack.Shape.one)], body := body592_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData592 : Decl (BitVec 64) :=
.function { name := "incorporate_child_on_error", inline := false, exported := false, params := [("child", Flapjack.Shape.one)], body := body592_9, returnShape := (Flapjack.Shape.one) }
def original592 := Pancake.PanLang.declToHOL originalData592
def simplified592 := Pancake.PanLang.declToHOL simplifiedData592
end InitECandidate.Proofs.FrontendStages.Declarations
