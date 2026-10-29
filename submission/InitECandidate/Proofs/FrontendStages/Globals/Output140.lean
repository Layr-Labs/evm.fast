import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data140
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody140_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody140_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody140_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "leaf") (Flapjack.Exp.const 0#64)) globalBody140_0 globalBody140_1

def globalBody140_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody140_0 globalBody140_1

def globalBody140_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "order",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "moved")

def globalBody140_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "moved", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "pos")

def globalBody140_6 : Prog (BitVec 64) :=
.seq globalBody140_4 globalBody140_5

def globalBody140_7 : Prog (BitVec 64) :=
.dec ("moved") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "order",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "count", Flapjack.Exp.const 8#64]])) globalBody140_6

def globalBody140_8 : Prog (BitVec 64) :=
.dec ("order") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 48#64])) globalBody140_7

def globalBody140_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "pos")
  (Flapjack.Exp.var Flapjack.VarKind.local "count")) globalBody140_8 globalBody140_1

def globalBody140_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "count")

def globalBody140_11 : Prog (BitVec 64) :=
.seq globalBody140_9 globalBody140_10

def globalBody140_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 0#64)

def globalBody140_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 16#64]))

def globalBody140_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "s")
  (Flapjack.Exp.var Flapjack.VarKind.local "leaf")) globalBody140_13 globalBody140_1

def globalBody140_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "g")

def globalBody140_16 : Prog (BitVec 64) :=
.seq globalBody140_14 globalBody140_15

def globalBody140_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "s")

def globalBody140_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "s")

def globalBody140_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "s")

def globalBody140_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "g", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "p")) globalBody140_18 globalBody140_19

def globalBody140_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "g") (Flapjack.Exp.const 0#64)) globalBody140_17 globalBody140_20

def globalBody140_22 : Prog (BitVec 64) :=
.seq globalBody140_16 globalBody140_21

def globalBody140_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64]))

def globalBody140_24 : Prog (BitVec 64) :=
.seq globalBody140_22 globalBody140_23

def globalBody140_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody140_26 : Prog (BitVec 64) :=
.seq globalBody140_24 globalBody140_25

def globalBody140_27 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])) globalBody140_26

def globalBody140_28 : Prog (BitVec 64) :=
.dec ("g") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])) globalBody140_27

def globalBody140_29 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])) globalBody140_28

def globalBody140_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "leaf")
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64]))) globalBody140_12 globalBody140_29

def globalBody140_31 : Prog (BitVec 64) :=
.seq globalBody140_11 globalBody140_30

def globalBody140_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64]))

def globalBody140_33 : Prog (BitVec 64) :=
.seq globalBody140_31 globalBody140_32

def globalBody140_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "leaf")

def globalBody140_35 : Prog (BitVec 64) :=
.seq globalBody140_33 globalBody140_34

def globalBody140_36 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody140_37 : Prog (BitVec 64) :=
.seq globalBody140_35 globalBody140_36

def globalBody140_38 : Prog (BitVec 64) :=
.dec ("count") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 1#64]) globalBody140_37

def globalBody140_39 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])) globalBody140_38

def globalBody140_40 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) globalBody140_39

def globalBody140_41 : Prog (BitVec 64) :=
.seq globalBody140_3 globalBody140_40

def globalBody140_42 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "keys",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
  Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen"]) globalBody140_41

def globalBody140_43 : Prog (BitVec 64) :=
.dec ("keys") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])) globalBody140_42

def globalBody140_44 : Prog (BitVec 64) :=
.seq globalBody140_2 globalBody140_43

def globalBody140_45 : Prog (BitVec 64) :=
.decCall ("leaf") (Flapjack.Shape.one) ("htab_find_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody140_44

def globalBody140_46 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) globalBody140_45

def globalBody140_47 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) globalBody140_46

def globalData140 : Decl (BitVec 64) :=
.function { name := "htab_del", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := globalBody140_47, returnShape := (Flapjack.Shape.one) }
def globalOutput140 := Pancake.PanLang.declToHOL globalData140
end InitECandidate.Proofs.FrontendStages.Declarations
