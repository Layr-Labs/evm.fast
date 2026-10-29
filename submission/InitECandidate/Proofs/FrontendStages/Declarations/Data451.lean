import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify435
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body451_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "from_gl"])

def body451_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "spilled", Flapjack.Exp.var Flapjack.VarKind.local "from_gl"])

def body451_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 72#64]),
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "amount", Flapjack.Exp.var Flapjack.VarKind.local "from_gl"]])

def body451_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body451_4 : Prog (BitVec 64) :=
.seq body451_2 body451_3

def body451_5 : Prog (BitVec 64) :=
.seq body451_1 body451_4

def body451_6 : Prog (BitVec 64) :=
.seq body451_0 body451_5

def body451_7 : Prog (BitVec 64) :=
.decCall ("from_gl") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "amount", Flapjack.Exp.var Flapjack.VarKind.local "spilled"]) body451_6

def body451_8 : Prog (BitVec 64) :=
.dec ("spilled") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 192#64])) body451_7

def body451_9 : Prog (BitVec 64) :=
.seq body451_0 body451_1

def body451_10 : Prog (BitVec 64) :=
.seq body451_9 body451_2

def body451_11 : Prog (BitVec 64) :=
.seq body451_10 body451_3

def body451_12 : Prog (BitVec 64) :=
.decCall ("from_gl") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.var Flapjack.VarKind.local "amount", Flapjack.Exp.var Flapjack.VarKind.local "spilled"]) body451_11

def body451_13 : Prog (BitVec 64) :=
.dec ("spilled") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 192#64])) body451_12

def originalData451 : Decl (BitVec 64) :=
.function { name := "credit_state_gas_refund", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := body451_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData451 : Decl (BitVec 64) :=
.function { name := "credit_state_gas_refund", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := body451_13, returnShape := (Flapjack.Shape.one) }
def original451 := Pancake.PanLang.declToHOL originalData451
def simplified451 := Pancake.PanLang.declToHOL simplifiedData451
end InitECandidate.Proofs.FrontendStages.Declarations
