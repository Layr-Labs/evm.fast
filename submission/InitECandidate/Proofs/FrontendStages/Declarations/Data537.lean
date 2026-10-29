import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify521
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body537_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body537_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "buffer_read"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 88#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 96#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 32#64,
    Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body537_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body537_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body537_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body537_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body537_6 : Prog (BitVec 64) :=
.seq body537_4 body537_5

def body537_7 : Prog (BitVec 64) :=
.seq body537_3 body537_6

def body537_8 : Prog (BitVec 64) :=
.seq body537_2 body537_7

def body537_9 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64]) body537_8

def body537_10 : Prog (BitVec 64) :=
.seq body537_1 body537_9

def body537_11 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body537_10

def body537_12 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body537_11

def body537_13 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) body537_12

def body537_14 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body537_13

def body537_15 : Prog (BitVec 64) :=
.seq body537_0 body537_14

def body537_16 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body537_15

def body537_17 : Prog (BitVec 64) :=
.seq body537_2 body537_3

def body537_18 : Prog (BitVec 64) :=
.seq body537_17 body537_4

def body537_19 : Prog (BitVec 64) :=
.seq body537_18 body537_5

def body537_20 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "tmp", Flapjack.Exp.const 32#64]) body537_19

def body537_21 : Prog (BitVec 64) :=
.seq body537_1 body537_20

def body537_22 : Prog (BitVec 64) :=
.decCall ("tmp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body537_21

def body537_23 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body537_22

def body537_24 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) body537_23

def body537_25 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body537_24

def body537_26 : Prog (BitVec 64) :=
.seq body537_0 body537_25

def body537_27 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body537_26

def originalData537 : Decl (BitVec 64) :=
.function { name := "op_calldataload", inline := false, exported := false, params := [], body := body537_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData537 : Decl (BitVec 64) :=
.function { name := "op_calldataload", inline := false, exported := false, params := [], body := body537_27, returnShape := (Flapjack.Shape.one) }
def original537 := Pancake.PanLang.declToHOL originalData537
def simplified537 := Pancake.PanLang.declToHOL simplifiedData537
end InitECandidate.Proofs.FrontendStages.Declarations
