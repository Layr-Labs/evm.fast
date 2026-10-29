import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify537
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body553_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body553_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body553_2 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 128#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]],
  Flapjack.Exp.const 32#64]) body553_1

def body553_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def body553_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body553_2 body553_3

def body553_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body553_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body553_7 : Prog (BitVec 64) :=
.seq body553_5 body553_6

def body553_8 : Prog (BitVec 64) :=
.seq body553_4 body553_7

def body553_9 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "iv"]) body553_8

def body553_10 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 136#64])) body553_9

def body553_11 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 8#64])) body553_10

def body553_12 : Prog (BitVec 64) :=
.seq body553_0 body553_11

def body553_13 : Prog (BitVec 64) :=
.decCall ("iv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body553_12

def body553_14 : Prog (BitVec 64) :=
.seq body553_4 body553_5

def body553_15 : Prog (BitVec 64) :=
.seq body553_14 body553_6

def body553_16 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.one) ("sat_word") ([Flapjack.Exp.var Flapjack.VarKind.local "iv"]) body553_15

def body553_17 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 136#64])) body553_16

def body553_18 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
      Flapjack.Exp.const 8#64])) body553_17

def body553_19 : Prog (BitVec 64) :=
.seq body553_0 body553_18

def body553_20 : Prog (BitVec 64) :=
.decCall ("iv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body553_19

def originalData553 : Decl (BitVec 64) :=
.function { name := "op_blobhash", inline := false, exported := false, params := [], body := body553_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData553 : Decl (BitVec 64) :=
.function { name := "op_blobhash", inline := false, exported := false, params := [], body := body553_20, returnShape := (Flapjack.Shape.one) }
def original553 := Pancake.PanLang.declToHOL originalData553
def simplified553 := Pancake.PanLang.declToHOL simplifiedData553
end InitECandidate.Proofs.FrontendStages.Declarations
