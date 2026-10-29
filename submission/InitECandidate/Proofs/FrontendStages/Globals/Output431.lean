import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data431
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody431_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody431_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody431_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 2#64)) globalBody431_0 globalBody431_1

def globalBody431_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "mid" (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody431_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.var Flapjack.VarKind.local "mid")) globalBody431_3 globalBody431_1

def globalBody431_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "right" (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody431_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.var Flapjack.VarKind.local "right")) globalBody431_5 globalBody431_1

def globalBody431_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def globalBody431_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody431_9 : Prog (BitVec 64) :=
.seq globalBody431_7 globalBody431_8

def globalBody431_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def globalBody431_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody431_12 : Prog (BitVec 64) :=
.seq globalBody431_10 globalBody431_11

def globalBody431_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "gt") (Flapjack.Exp.const 0#64)) globalBody431_9 globalBody431_12

def globalBody431_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def globalBody431_15 : Prog (BitVec 64) :=
.seq globalBody431_13 globalBody431_14

def globalBody431_16 : Prog (BitVec 64) :=
.decCall ("gt") (Flapjack.Shape.one) ("bal_sort_gt") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "b",
  Flapjack.Exp.var Flapjack.VarKind.local "kind"]) globalBody431_15

def globalBody431_17 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "src",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) globalBody431_16

def globalBody431_18 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "src",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) globalBody431_17

def globalBody431_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
        (Flapjack.Exp.var Flapjack.VarKind.local "mid")),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
        (Flapjack.Exp.var Flapjack.VarKind.local "right"))]) globalBody431_18

def globalBody431_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def globalBody431_21 : Prog (BitVec 64) :=
.seq globalBody431_20 globalBody431_8

def globalBody431_22 : Prog (BitVec 64) :=
.seq globalBody431_21 globalBody431_14

def globalBody431_23 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "mid")) globalBody431_22

def globalBody431_24 : Prog (BitVec 64) :=
.seq globalBody431_19 globalBody431_23

def globalBody431_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "dst",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def globalBody431_26 : Prog (BitVec 64) :=
.seq globalBody431_25 globalBody431_11

def globalBody431_27 : Prog (BitVec 64) :=
.seq globalBody431_26 globalBody431_14

def globalBody431_28 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "right")) globalBody431_27

def globalBody431_29 : Prog (BitVec 64) :=
.seq globalBody431_24 globalBody431_28

def globalBody431_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "left" (Flapjack.Exp.var Flapjack.VarKind.local "right")

def globalBody431_31 : Prog (BitVec 64) :=
.seq globalBody431_29 globalBody431_30

def globalBody431_32 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "left") globalBody431_31

def globalBody431_33 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "mid") globalBody431_32

def globalBody431_34 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "left") globalBody431_33

def globalBody431_35 : Prog (BitVec 64) :=
.seq globalBody431_6 globalBody431_34

def globalBody431_36 : Prog (BitVec 64) :=
.dec ("right") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "mid", Flapjack.Exp.var Flapjack.VarKind.local "width"]) globalBody431_35

def globalBody431_37 : Prog (BitVec 64) :=
.seq globalBody431_4 globalBody431_36

def globalBody431_38 : Prog (BitVec 64) :=
.dec ("mid") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "left", Flapjack.Exp.var Flapjack.VarKind.local "width"]) globalBody431_37

def globalBody431_39 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "left")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody431_38

def globalBody431_40 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "src" (Flapjack.Exp.var Flapjack.VarKind.local "dst")

def globalBody431_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dst" (Flapjack.Exp.var Flapjack.VarKind.local "swap")

def globalBody431_42 : Prog (BitVec 64) :=
.seq globalBody431_40 globalBody431_41

def globalBody431_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "width"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "width", Flapjack.Exp.const 2#64])

def globalBody431_44 : Prog (BitVec 64) :=
.seq globalBody431_42 globalBody431_43

def globalBody431_45 : Prog (BitVec 64) :=
.dec ("swap") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "src") globalBody431_44

def globalBody431_46 : Prog (BitVec 64) :=
.seq globalBody431_39 globalBody431_45

def globalBody431_47 : Prog (BitVec 64) :=
.dec ("left") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody431_46

def globalBody431_48 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "width")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody431_47

def globalBody431_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "src",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "esz"]]

def globalBody431_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "src")
  (Flapjack.Exp.var Flapjack.VarKind.local "p")) globalBody431_49 globalBody431_1

def globalBody431_51 : Prog (BitVec 64) :=
.seq globalBody431_48 globalBody431_50

def globalBody431_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody431_53 : Prog (BitVec 64) :=
.seq globalBody431_51 globalBody431_52

def globalBody431_54 : Prog (BitVec 64) :=
.seq globalBody431_53 globalBody431_0

def globalBody431_55 : Prog (BitVec 64) :=
.dec ("width") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody431_54

def globalBody431_56 : Prog (BitVec 64) :=
.dec ("dst") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "aux") globalBody431_55

def globalBody431_57 : Prog (BitVec 64) :=
.dec ("src") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") globalBody431_56

def globalBody431_58 : Prog (BitVec 64) :=
.decCall ("aux") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) globalBody431_57

def globalBody431_59 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody431_58

def globalBody431_60 : Prog (BitVec 64) :=
.seq globalBody431_2 globalBody431_59

def globalData431 : Decl (BitVec 64) :=
.function { name := "sort_elems", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("esz", Flapjack.Shape.one), ("kind", Flapjack.Shape.one),
  ("tmp", Flapjack.Shape.one)], body := globalBody431_60, returnShape := (Flapjack.Shape.one) }
def globalOutput431 := Pancake.PanLang.declToHOL globalData431
end InitECandidate.Proofs.FrontendStages.Declarations
