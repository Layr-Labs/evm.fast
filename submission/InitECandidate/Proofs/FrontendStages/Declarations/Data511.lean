import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify495
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body511_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_with_memory"
  [Flapjack.Exp.const 3#64, Flapjack.Exp.var Flapjack.VarKind.local "start",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 32#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body511_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body511_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body511_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body511_4 : Prog (BitVec 64) :=
.seq body511_2 body511_3

def body511_5 : Prog (BitVec 64) :=
.seq body511_1 body511_4

def body511_6 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "s"],
  Flapjack.Exp.const 32#64]) body511_5

def body511_7 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) body511_6

def body511_8 : Prog (BitVec 64) :=
.seq body511_0 body511_7

def body511_9 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body511_8

def body511_10 : Prog (BitVec 64) :=
.seq body511_1 body511_2

def body511_11 : Prog (BitVec 64) :=
.seq body511_10 body511_3

def body511_12 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 24#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "s"],
  Flapjack.Exp.const 32#64]) body511_11

def body511_13 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "start"]) body511_12

def body511_14 : Prog (BitVec 64) :=
.seq body511_0 body511_13

def body511_15 : Prog (BitVec 64) :=
.decCall ("start") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body511_14

def originalData511 : Decl (BitVec 64) :=
.function { name := "op_mload", inline := false, exported := false, params := [], body := body511_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData511 : Decl (BitVec 64) :=
.function { name := "op_mload", inline := false, exported := false, params := [], body := body511_15, returnShape := (Flapjack.Shape.one) }
def original511 := Pancake.PanLang.declToHOL originalData511
def simplified511 := Pancake.PanLang.declToHOL simplifiedData511
end InitECandidate.Proofs.FrontendStages.Declarations
