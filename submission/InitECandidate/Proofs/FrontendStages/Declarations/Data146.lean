import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify130
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body146_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 88#64]

def body146_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "keys",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.var Flapjack.VarKind.local "stride"]]

def body146_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def body146_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 32#64]]

def body146_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def body146_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "order",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 8#64]]

def body146_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def body146_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body146_8 : Prog (BitVec 64) :=
.seq body146_6 body146_7

def body146_9 : Prog (BitVec 64) :=
.seq body146_5 body146_8

def body146_10 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body146_9

def body146_11 : Prog (BitVec 64) :=
.seq body146_4 body146_10

def body146_12 : Prog (BitVec 64) :=
.seq body146_3 body146_11

def body146_13 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body146_12

def body146_14 : Prog (BitVec 64) :=
.seq body146_2 body146_13

def body146_15 : Prog (BitVec 64) :=
.seq body146_1 body146_14

def body146_16 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body146_15

def body146_17 : Prog (BitVec 64) :=
.seq body146_0 body146_16

def body146_18 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 88#64]) body146_17

def body146_19 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body146_18

def body146_20 : Prog (BitVec 64) :=
.dec ("nodecap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])) body146_19

def body146_21 : Prog (BitVec 64) :=
.seq body146_1 body146_2

def body146_22 : Prog (BitVec 64) :=
.seq body146_3 body146_4

def body146_23 : Prog (BitVec 64) :=
.seq body146_5 body146_6

def body146_24 : Prog (BitVec 64) :=
.seq body146_23 body146_7

def body146_25 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body146_24

def body146_26 : Prog (BitVec 64) :=
.seq body146_22 body146_25

def body146_27 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body146_26

def body146_28 : Prog (BitVec 64) :=
.seq body146_21 body146_27

def body146_29 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body146_28

def body146_30 : Prog (BitVec 64) :=
.seq body146_0 body146_29

def body146_31 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 88#64]) body146_30

def body146_32 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body146_31

def body146_33 : Prog (BitVec 64) :=
.dec ("nodecap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])) body146_32

def originalData146 : Decl (BitVec 64) :=
.function { name := "htab_copy", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body146_20, returnShape := (Flapjack.Shape.one) }
def simplifiedData146 : Decl (BitVec 64) :=
.function { name := "htab_copy", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body146_33, returnShape := (Flapjack.Shape.one) }
def original146 := Pancake.PanLang.declToHOL originalData146
def simplified146 := Pancake.PanLang.declToHOL simplifiedData146
end InitECandidate.Proofs.FrontendStages.Declarations
