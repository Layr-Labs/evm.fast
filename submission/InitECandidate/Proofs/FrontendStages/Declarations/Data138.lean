import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify122
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body138_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "keys",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.var Flapjack.VarKind.local "stride"]]

def body138_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def body138_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 32#64]]

def body138_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def body138_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "order",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 8#64]]

def body138_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def body138_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 16#64]),
      Flapjack.Exp.const 2#64])

def body138_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def body138_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body138_9 : Prog (BitVec 64) :=
.seq body138_7 body138_8

def body138_10 : Prog (BitVec 64) :=
.seq body138_6 body138_9

def body138_11 : Prog (BitVec 64) :=
.seq body138_5 body138_10

def body138_12 : Prog (BitVec 64) :=
.seq body138_4 body138_11

def body138_13 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body138_12

def body138_14 : Prog (BitVec 64) :=
.seq body138_3 body138_13

def body138_15 : Prog (BitVec 64) :=
.seq body138_2 body138_14

def body138_16 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body138_15

def body138_17 : Prog (BitVec 64) :=
.seq body138_1 body138_16

def body138_18 : Prog (BitVec 64) :=
.seq body138_0 body138_17

def body138_19 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body138_18

def body138_20 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body138_19

def body138_21 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 2#64]) body138_20

def body138_22 : Prog (BitVec 64) :=
.dec ("nodecap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])) body138_21

def body138_23 : Prog (BitVec 64) :=
.seq body138_0 body138_1

def body138_24 : Prog (BitVec 64) :=
.seq body138_2 body138_3

def body138_25 : Prog (BitVec 64) :=
.seq body138_4 body138_5

def body138_26 : Prog (BitVec 64) :=
.seq body138_25 body138_6

def body138_27 : Prog (BitVec 64) :=
.seq body138_26 body138_7

def body138_28 : Prog (BitVec 64) :=
.seq body138_27 body138_8

def body138_29 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body138_28

def body138_30 : Prog (BitVec 64) :=
.seq body138_24 body138_29

def body138_31 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body138_30

def body138_32 : Prog (BitVec 64) :=
.seq body138_23 body138_31

def body138_33 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body138_32

def body138_34 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body138_33

def body138_35 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 2#64]) body138_34

def body138_36 : Prog (BitVec 64) :=
.dec ("nodecap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])) body138_35

def originalData138 : Decl (BitVec 64) :=
.function { name := "htab_grow", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body138_22, returnShape := (Flapjack.Shape.one) }
def simplifiedData138 : Decl (BitVec 64) :=
.function { name := "htab_grow", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body138_36, returnShape := (Flapjack.Shape.one) }
def original138 := Pancake.PanLang.declToHOL originalData138
def simplified138 := Pancake.PanLang.declToHOL simplifiedData138
end InitECandidate.Proofs.FrontendStages.Declarations
