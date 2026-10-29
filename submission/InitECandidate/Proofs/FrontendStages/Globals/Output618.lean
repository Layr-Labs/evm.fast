import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data618
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate598
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody618_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]))
  (Flapjack.Exp.const 1732584193#64)

def globalBody618_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]),
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 4023233417#64)

def globalBody618_2 : Prog (BitVec 64) :=
.seq globalBody618_0 globalBody618_1

def globalBody618_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]),
      Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 2562383102#64)

def globalBody618_4 : Prog (BitVec 64) :=
.seq globalBody618_2 globalBody618_3

def globalBody618_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]),
      Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 271733878#64)

def globalBody618_6 : Prog (BitVec 64) :=
.seq globalBody618_4 globalBody618_5

def globalBody618_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]),
      Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 3285377520#64)

def globalBody618_8 : Prog (BitVec 64) :=
.seq globalBody618_6 globalBody618_7

def globalBody618_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160_block"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]]

def globalBody618_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 64#64])

def globalBody618_11 : Prog (BitVec 64) :=
.seq globalBody618_9 globalBody618_10

def globalBody618_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 64#64])) globalBody618_11

def globalBody618_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 344#64]),
    Flapjack.Exp.const 128#64]

def globalBody618_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 344#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"],
    Flapjack.Exp.var Flapjack.VarKind.local "rem"]

def globalBody618_15 : Prog (BitVec 64) :=
.seq globalBody618_13 globalBody618_14

def globalBody618_16 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 344#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "rem"])
  (Flapjack.Exp.const 128#64)

def globalBody618_17 : Prog (BitVec 64) :=
.seq globalBody618_15 globalBody618_16

def globalBody618_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total" (Flapjack.Exp.const 128#64)

def globalBody618_19 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody618_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "rem") (Flapjack.Exp.const 56#64)) globalBody618_18 globalBody618_19

def globalBody618_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le64"
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 344#64]),
            Flapjack.Exp.var Flapjack.VarKind.local "total"],
        Flapjack.Exp.const 8#64],
    Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 3#64)]

def globalBody618_22 : Prog (BitVec 64) :=
.seq globalBody618_20 globalBody618_21

def globalBody618_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160_block"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 344#64])]

def globalBody618_24 : Prog (BitVec 64) :=
.seq globalBody618_22 globalBody618_23

def globalBody618_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ripemd160_block"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 344#64]),
        Flapjack.Exp.const 64#64]]

def globalBody618_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "total") (Flapjack.Exp.const 128#64)) globalBody618_25 globalBody618_19

def globalBody618_27 : Prog (BitVec 64) :=
.seq globalBody618_24 globalBody618_26

def globalBody618_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody618_29 : Prog (BitVec 64) :=
.seq globalBody618_27 globalBody618_28

def globalBody618_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le32"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 4#64]],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 336#64]),
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])]

def globalBody618_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody618_32 : Prog (BitVec 64) :=
.seq globalBody618_30 globalBody618_31

def globalBody618_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 5#64)) globalBody618_32

def globalBody618_34 : Prog (BitVec 64) :=
.seq globalBody618_29 globalBody618_33

def globalBody618_35 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody618_36 : Prog (BitVec 64) :=
.seq globalBody618_34 globalBody618_35

def globalBody618_37 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) globalBody618_36

def globalBody618_38 : Prog (BitVec 64) :=
.seq globalBody618_17 globalBody618_37

def globalBody618_39 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody618_38

def globalBody618_40 : Prog (BitVec 64) :=
.seq globalBody618_12 globalBody618_39

def globalBody618_41 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody618_40

def globalBody618_42 : Prog (BitVec 64) :=
.seq globalBody618_8 globalBody618_41

def globalData618 : Decl (BitVec 64) :=
.function { name := "ripemd160", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody618_42, returnShape := (Flapjack.Shape.one) }
def globalOutput618 := Pancake.PanLang.declToHOL globalData618
end InitECandidate.Proofs.FrontendStages.Declarations
