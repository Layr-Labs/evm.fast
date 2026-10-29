import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify113
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body129_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ncap" (Flapjack.Exp.const 2#64)

def body129_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body129_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "ncap") (Flapjack.Exp.const 2#64)) body129_0 body129_1

def body129_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "key_len")

def body129_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stride")

def body129_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")

def body129_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def body129_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "keys")

def body129_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodes")

def body129_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "order")

def body129_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 0#64)

def body129_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 1#64)

def body129_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 0#64)

def body129_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ncap")

def body129_14 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body129_15 : Prog (BitVec 64) :=
.seq body129_13 body129_14

def body129_16 : Prog (BitVec 64) :=
.seq body129_12 body129_15

def body129_17 : Prog (BitVec 64) :=
.seq body129_11 body129_16

def body129_18 : Prog (BitVec 64) :=
.seq body129_10 body129_17

def body129_19 : Prog (BitVec 64) :=
.seq body129_9 body129_18

def body129_20 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body129_19

def body129_21 : Prog (BitVec 64) :=
.seq body129_8 body129_20

def body129_22 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body129_21

def body129_23 : Prog (BitVec 64) :=
.seq body129_7 body129_22

def body129_24 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body129_23

def body129_25 : Prog (BitVec 64) :=
.seq body129_6 body129_24

def body129_26 : Prog (BitVec 64) :=
.seq body129_5 body129_25

def body129_27 : Prog (BitVec 64) :=
.seq body129_4 body129_26

def body129_28 : Prog (BitVec 64) :=
.seq body129_3 body129_27

def body129_29 : Prog (BitVec 64) :=
.seq body129_2 body129_28

def body129_30 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "cap") body129_29

def body129_31 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "key_len", Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body129_30

def body129_32 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 88#64]) body129_31

def body129_33 : Prog (BitVec 64) :=
.seq body129_2 body129_3

def body129_34 : Prog (BitVec 64) :=
.seq body129_33 body129_4

def body129_35 : Prog (BitVec 64) :=
.seq body129_34 body129_5

def body129_36 : Prog (BitVec 64) :=
.seq body129_35 body129_6

def body129_37 : Prog (BitVec 64) :=
.seq body129_9 body129_10

def body129_38 : Prog (BitVec 64) :=
.seq body129_37 body129_11

def body129_39 : Prog (BitVec 64) :=
.seq body129_38 body129_12

def body129_40 : Prog (BitVec 64) :=
.seq body129_39 body129_13

def body129_41 : Prog (BitVec 64) :=
.seq body129_40 body129_14

def body129_42 : Prog (BitVec 64) :=
.decCall ("order") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 8#64]]) body129_41

def body129_43 : Prog (BitVec 64) :=
.seq body129_8 body129_42

def body129_44 : Prog (BitVec 64) :=
.decCall ("nodes") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.const 32#64]]) body129_43

def body129_45 : Prog (BitVec 64) :=
.seq body129_7 body129_44

def body129_46 : Prog (BitVec 64) :=
.decCall ("keys") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ncap", Flapjack.Exp.const 1#64],
      Flapjack.Exp.var Flapjack.VarKind.local "stride"]]) body129_45

def body129_47 : Prog (BitVec 64) :=
.seq body129_36 body129_46

def body129_48 : Prog (BitVec 64) :=
.dec ("ncap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "cap") body129_47

def body129_49 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "key_len", Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body129_48

def body129_50 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 88#64]) body129_49

def originalData129 : Decl (BitVec 64) :=
.function { name := "htab_new", inline := false, exported := false, params := [("key_len", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := body129_32, returnShape := (Flapjack.Shape.one) }
def simplifiedData129 : Decl (BitVec 64) :=
.function { name := "htab_new", inline := false, exported := false, params := [("key_len", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := body129_50, returnShape := (Flapjack.Shape.one) }
def original129 := Pancake.PanLang.declToHOL originalData129
def simplified129 := Pancake.PanLang.declToHOL simplifiedData129
end InitECandidate.Proofs.FrontendStages.Declarations
