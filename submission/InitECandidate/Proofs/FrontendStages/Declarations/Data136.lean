import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify120
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body136_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
    Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen"]

def body136_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 0#64)

def body136_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "value")

def body136_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "pos")

def body136_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.const 8#64])

def body136_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body136_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 1#64])

def body136_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body136_8 : Prog (BitVec 64) :=
.seq body136_6 body136_7

def body136_9 : Prog (BitVec 64) :=
.seq body136_5 body136_8

def body136_10 : Prog (BitVec 64) :=
.seq body136_4 body136_9

def body136_11 : Prog (BitVec 64) :=
.seq body136_3 body136_10

def body136_12 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64])) body136_11

def body136_13 : Prog (BitVec 64) :=
.seq body136_2 body136_12

def body136_14 : Prog (BitVec 64) :=
.seq body136_1 body136_13

def body136_15 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) body136_14

def body136_16 : Prog (BitVec 64) :=
.seq body136_0 body136_15

def body136_17 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body136_16

def body136_18 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) body136_17

def body136_19 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("htab_new_node") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body136_18

def body136_20 : Prog (BitVec 64) :=
.seq body136_1 body136_2

def body136_21 : Prog (BitVec 64) :=
.seq body136_3 body136_4

def body136_22 : Prog (BitVec 64) :=
.seq body136_21 body136_5

def body136_23 : Prog (BitVec 64) :=
.seq body136_22 body136_6

def body136_24 : Prog (BitVec 64) :=
.seq body136_23 body136_7

def body136_25 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64])) body136_24

def body136_26 : Prog (BitVec 64) :=
.seq body136_20 body136_25

def body136_27 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) body136_26

def body136_28 : Prog (BitVec 64) :=
.seq body136_0 body136_27

def body136_29 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body136_28

def body136_30 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) body136_29

def body136_31 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("htab_new_node") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body136_30

def originalData136 : Decl (BitVec 64) :=
.function { name := "htab_new_leaf", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("value", Flapjack.Shape.one)], body := body136_19, returnShape := (Flapjack.Shape.one) }
def simplifiedData136 : Decl (BitVec 64) :=
.function { name := "htab_new_leaf", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("value", Flapjack.Shape.one)], body := body136_31, returnShape := (Flapjack.Shape.one) }
def original136 := Pancake.PanLang.declToHOL originalData136
def simplified136 := Pancake.PanLang.declToHOL simplifiedData136
end InitECandidate.Proofs.FrontendStages.Declarations
