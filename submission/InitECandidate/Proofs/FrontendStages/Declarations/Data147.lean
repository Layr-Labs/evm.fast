import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify131
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body147_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 88#64]

def body147_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "keys",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.var Flapjack.VarKind.local "stride"]]

def body147_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def body147_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 32#64]]

def body147_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def body147_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "order",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
        Flapjack.Exp.const 8#64]]

def body147_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def body147_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body147_8 : Prog (BitVec 64) :=
.seq body147_6 body147_7

def body147_9 : Prog (BitVec 64) :=
.seq body147_5 body147_8

def body147_10 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body147_9

def body147_11 : Prog (BitVec 64) :=
.seq body147_4 body147_10

def body147_12 : Prog (BitVec 64) :=
.seq body147_3 body147_11

def body147_13 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body147_12

def body147_14 : Prog (BitVec 64) :=
.seq body147_2 body147_13

def body147_15 : Prog (BitVec 64) :=
.seq body147_1 body147_14

def body147_16 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body147_15

def body147_17 : Prog (BitVec 64) :=
.seq body147_0 body147_16

def body147_18 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) body147_17

def body147_19 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body147_18

def body147_20 : Prog (BitVec 64) :=
.dec ("nodecap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])) body147_19

def body147_21 : Prog (BitVec 64) :=
.seq body147_1 body147_2

def body147_22 : Prog (BitVec 64) :=
.seq body147_3 body147_4

def body147_23 : Prog (BitVec 64) :=
.seq body147_5 body147_6

def body147_24 : Prog (BitVec 64) :=
.seq body147_23 body147_7

def body147_25 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body147_24

def body147_26 : Prog (BitVec 64) :=
.seq body147_22 body147_25

def body147_27 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body147_26

def body147_28 : Prog (BitVec 64) :=
.seq body147_21 body147_27

def body147_29 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nodecap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body147_28

def body147_30 : Prog (BitVec 64) :=
.seq body147_0 body147_29

def body147_31 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) body147_30

def body147_32 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) body147_31

def body147_33 : Prog (BitVec 64) :=
.dec ("nodecap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])) body147_32

def originalData147 : Decl (BitVec 64) :=
.function { name := "htab_copy_scratch", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body147_20, returnShape := (Flapjack.Shape.one) }
def simplifiedData147 : Decl (BitVec 64) :=
.function { name := "htab_copy_scratch", inline := false, exported := false, params := [("t", Flapjack.Shape.one)], body := body147_33, returnShape := (Flapjack.Shape.one) }
def original147 := Pancake.PanLang.declToHOL originalData147
def simplified147 := Pancake.PanLang.declToHOL simplifiedData147
end InitECandidate.Proofs.FrontendStages.Declarations
