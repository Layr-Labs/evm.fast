import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data139
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate123
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody139_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def globalBody139_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody139_2 : Prog (BitVec 64) :=
.seq globalBody139_0 globalBody139_1

def globalBody139_3 : Prog (BitVec 64) :=
.decCall ("nl") (Flapjack.Shape.one) ("htab_new_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.var Flapjack.VarKind.local "value"]) globalBody139_2

def globalBody139_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody139_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "leaf") (Flapjack.Exp.const 0#64)) globalBody139_3 globalBody139_4

def globalBody139_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "value")

def globalBody139_7 : Prog (BitVec 64) :=
.seq globalBody139_6 globalBody139_1

def globalBody139_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody139_7 globalBody139_4

def globalBody139_9 : Prog (BitVec 64) :=
Flapjack.Prog.break

def globalBody139_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "b")
  (Flapjack.Exp.var Flapjack.VarKind.local "d")) globalBody139_9 globalBody139_4

def globalBody139_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p" (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody139_12 : Prog (BitVec 64) :=
.seq globalBody139_10 globalBody139_11

def globalBody139_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 8#64]))

def globalBody139_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 16#64]))

def globalBody139_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "key",
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "b")
                (Flapjack.Exp.const 3#64)]))
        (Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.const 7#64,
            Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 7#64]]),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) globalBody139_13 globalBody139_14

def globalBody139_16 : Prog (BitVec 64) :=
.seq globalBody139_12 globalBody139_15

def globalBody139_17 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 24#64])) globalBody139_16

def globalBody139_18 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody139_17

def globalBody139_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nodes"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64]))

def globalBody139_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody139_21 : Prog (BitVec 64) :=
.seq globalBody139_19 globalBody139_20

def globalBody139_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nl", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def globalBody139_23 : Prog (BitVec 64) :=
.seq globalBody139_21 globalBody139_22

def globalBody139_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def globalBody139_25 : Prog (BitVec 64) :=
.seq globalBody139_23 globalBody139_24

def globalBody139_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def globalBody139_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody139_28 : Prog (BitVec 64) :=
.seq globalBody139_26 globalBody139_27

def globalBody139_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody139_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ni", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nl")

def globalBody139_31 : Prog (BitVec 64) :=
.seq globalBody139_29 globalBody139_30

def globalBody139_32 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "key",
              Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "d")
                (Flapjack.Exp.const 3#64)]))
        (Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.const 7#64,
            Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 7#64]]),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) globalBody139_28 globalBody139_31

def globalBody139_33 : Prog (BitVec 64) :=
.seq globalBody139_25 globalBody139_32

def globalBody139_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def globalBody139_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def globalBody139_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "ni")

def globalBody139_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nodes",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody139_35 globalBody139_36

def globalBody139_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 0#64)) globalBody139_34 globalBody139_37

def globalBody139_39 : Prog (BitVec 64) :=
.seq globalBody139_33 globalBody139_38

def globalBody139_40 : Prog (BitVec 64) :=
.seq globalBody139_39 globalBody139_1

def globalBody139_41 : Prog (BitVec 64) :=
.decCall ("ni") (Flapjack.Shape.one) ("htab_new_internal") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "d"]) globalBody139_40

def globalBody139_42 : Prog (BitVec 64) :=
.decCall ("nl") (Flapjack.Shape.one) ("htab_new_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.var Flapjack.VarKind.local "value"]) globalBody139_41

def globalBody139_43 : Prog (BitVec 64) :=
.seq globalBody139_18 globalBody139_42

def globalBody139_44 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 56#64])) globalBody139_43

def globalBody139_45 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody139_44

def globalBody139_46 : Prog (BitVec 64) :=
.dec ("nodes") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 40#64])) globalBody139_45

def globalBody139_47 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.one) ("htab_first_diff") ([Flapjack.Exp.var Flapjack.VarKind.local "key",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "keys",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
  Flapjack.Exp.var Flapjack.VarKind.local "klen"]) globalBody139_46

def globalBody139_48 : Prog (BitVec 64) :=
.seq globalBody139_8 globalBody139_47

def globalBody139_49 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "keys",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "leaf", Flapjack.Exp.var Flapjack.VarKind.local "stride"]],
  Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen"]) globalBody139_48

def globalBody139_50 : Prog (BitVec 64) :=
.seq globalBody139_5 globalBody139_49

def globalBody139_51 : Prog (BitVec 64) :=
.dec ("keys") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 32#64])) globalBody139_50

def globalBody139_52 : Prog (BitVec 64) :=
.decCall ("leaf") (Flapjack.Shape.one) ("htab_find_leaf") ([Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "key"]) globalBody139_51

def globalBody139_53 : Prog (BitVec 64) :=
.dec ("stride") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 8#64])) globalBody139_52

def globalBody139_54 : Prog (BitVec 64) :=
.dec ("klen") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 0#64])) globalBody139_53

def globalData139 : Decl (BitVec 64) :=
.function { name := "htab_set", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("value", Flapjack.Shape.one)], body := globalBody139_54, returnShape := (Flapjack.Shape.one) }
def globalOutput139 := Pancake.PanLang.declToHOL globalData139
end InitECandidate.Proofs.FrontendStages.Declarations
