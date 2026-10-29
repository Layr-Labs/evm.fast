import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify499
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body515_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body515_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body515_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nbytes") (Flapjack.Exp.const 0#64)) body515_0 body515_1

def body515_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 0#64]),
        Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "nbytes", Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body515_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body515_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body515_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "nbytes"]]

def body515_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body515_8 : Prog (BitVec 64) :=
.seq body515_6 body515_7

def body515_9 : Prog (BitVec 64) :=
.seq body515_5 body515_8

def body515_10 : Prog (BitVec 64) :=
.seq body515_4 body515_9

def body515_11 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.var Flapjack.VarKind.local "nbytes"]) body515_10

def body515_12 : Prog (BitVec 64) :=
.seq body515_3 body515_11

def body515_13 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body515_12

def body515_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body515_13

def body515_15 : Prog (BitVec 64) :=
.seq body515_2 body515_14

def body515_16 : Prog (BitVec 64) :=
.seq body515_4 body515_5

def body515_17 : Prog (BitVec 64) :=
.seq body515_16 body515_6

def body515_18 : Prog (BitVec 64) :=
.seq body515_17 body515_7

def body515_19 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.var Flapjack.VarKind.local "nbytes"]) body515_18

def body515_20 : Prog (BitVec 64) :=
.seq body515_3 body515_19

def body515_21 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body515_20

def body515_22 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body515_21

def body515_23 : Prog (BitVec 64) :=
.seq body515_2 body515_22

def originalData515 : Decl (BitVec 64) :=
.function { name := "op_push", inline := false, exported := false, params := [("nbytes", Flapjack.Shape.one)], body := body515_15, returnShape := (Flapjack.Shape.one) }
def simplifiedData515 : Decl (BitVec 64) :=
.function { name := "op_push", inline := false, exported := false, params := [("nbytes", Flapjack.Shape.one)], body := body515_23, returnShape := (Flapjack.Shape.one) }
def original515 := Pancake.PanLang.declToHOL originalData515
def simplified515 := Pancake.PanLang.declToHOL simplifiedData515
end InitECandidate.Proofs.FrontendStages.Declarations
