import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify114
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body130_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ncap" (Flapjack.Exp.const 2#64)

def body130_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body130_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "ncap") (Flapjack.Exp.const 2#64)) body130_0 body130_1

def body130_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "key_len")

def body130_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stride")

def body130_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")

def body130_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def body130_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def body130_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def body130_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def body130_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 0#64)

def body130_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 1#64)

def body130_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def body130_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def body130_14 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body130_15 : Prog (BitVec 64) :=
.seq body130_13 body130_14

def body130_16 : Prog (BitVec 64) :=
.seq body130_12 body130_15

def body130_17 : Prog (BitVec 64) :=
.seq body130_11 body130_16

def body130_18 : Prog (BitVec 64) :=
.seq body130_10 body130_17

def body130_19 : Prog (BitVec 64) :=
.seq body130_9 body130_18

def body130_20 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body130_19

def body130_21 : Prog (BitVec 64) :=
.seq body130_8 body130_20

def body130_22 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body130_21

def body130_23 : Prog (BitVec 64) :=
.seq body130_7 body130_22

def body130_24 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body130_23

def body130_25 : Prog (BitVec 64) :=
.seq body130_6 body130_24

def body130_26 : Prog (BitVec 64) :=
.seq body130_5 body130_25

def body130_27 : Prog (BitVec 64) :=
.seq body130_4 body130_26

def body130_28 : Prog (BitVec 64) :=
.seq body130_3 body130_27

def body130_29 : Prog (BitVec 64) :=
.seq body130_2 body130_28

def body130_30 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "cap") body130_29

def body130_31 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "key_len", Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body130_30

def body130_32 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) body130_31

def body130_33 : Prog (BitVec 64) :=
.seq body130_2 body130_3

def body130_34 : Prog (BitVec 64) :=
.seq body130_33 body130_4

def body130_35 : Prog (BitVec 64) :=
.seq body130_34 body130_5

def body130_36 : Prog (BitVec 64) :=
.seq body130_35 body130_6

def body130_37 : Prog (BitVec 64) :=
.seq body130_9 body130_10

def body130_38 : Prog (BitVec 64) :=
.seq body130_37 body130_11

def body130_39 : Prog (BitVec 64) :=
.seq body130_38 body130_12

def body130_40 : Prog (BitVec 64) :=
.seq body130_39 body130_13

def body130_41 : Prog (BitVec 64) :=
.seq body130_40 body130_14

def body130_42 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body130_41

def body130_43 : Prog (BitVec 64) :=
.seq body130_8 body130_42

def body130_44 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body130_43

def body130_45 : Prog (BitVec 64) :=
.seq body130_7 body130_44

def body130_46 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body130_45

def body130_47 : Prog (BitVec 64) :=
.seq body130_36 body130_46

def body130_48 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "cap") body130_47

def body130_49 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "key_len", Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body130_48

def body130_50 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) body130_49

def originalData130 : Decl (BitVec 64) :=
.function { name := "htab_new_scratch", inline := false, exported := false, params := [("key_len", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := body130_32, returnShape := (Flapjack.Shape.one) }
def simplifiedData130 : Decl (BitVec 64) :=
.function { name := "htab_new_scratch", inline := false, exported := false, params := [("key_len", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := body130_50, returnShape := (Flapjack.Shape.one) }
def original130 := Pancake.PanLang.declToHOL originalData130
def simplified130 := Pancake.PanLang.declToHOL simplifiedData130
end InitECandidate.Proofs.FrontendStages.Declarations
