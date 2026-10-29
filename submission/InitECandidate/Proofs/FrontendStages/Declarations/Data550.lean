import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify534
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body550_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 5#64]

def body550_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64])]

def body550_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body550_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body550_4 : Prog (BitVec 64) :=
.seq body550_2 body550_3

def body550_5 : Prog (BitVec 64) :=
.seq body550_1 body550_4

def body550_6 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
        Flapjack.Exp.const 32#64])]) body550_5

def body550_7 : Prog (BitVec 64) :=
.seq body550_0 body550_6

def body550_8 : Prog (BitVec 64) :=
.seq body550_1 body550_2

def body550_9 : Prog (BitVec 64) :=
.seq body550_8 body550_3

def body550_10 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
        Flapjack.Exp.const 32#64])]) body550_9

def body550_11 : Prog (BitVec 64) :=
.seq body550_0 body550_10

def originalData550 : Decl (BitVec 64) :=
.function { name := "op_selfbalance", inline := false, exported := false, params := [], body := body550_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData550 : Decl (BitVec 64) :=
.function { name := "op_selfbalance", inline := false, exported := false, params := [], body := body550_11, returnShape := (Flapjack.Shape.one) }
def original550 := Pancake.PanLang.declToHOL originalData550
def simplified550 := Pancake.PanLang.declToHOL simplifiedData550
end InitECandidate.Proofs.FrontendStages.Declarations
