import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data96
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate78
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody96_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_state_init"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64])]

def globalBody96_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_block"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]]

def globalBody96_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 64#64])

def globalBody96_3 : Prog (BitVec 64) :=
.seq globalBody96_1 globalBody96_2

def globalBody96_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "len")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 64#64])) globalBody96_3

def globalBody96_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 56#64]),
    Flapjack.Exp.const 128#64]

def globalBody96_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 56#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"],
    Flapjack.Exp.var Flapjack.VarKind.local "rem"]

def globalBody96_7 : Prog (BitVec 64) :=
.seq globalBody96_5 globalBody96_6

def globalBody96_8 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 56#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "rem"])
  (Flapjack.Exp.const 128#64)

def globalBody96_9 : Prog (BitVec 64) :=
.seq globalBody96_7 globalBody96_8

def globalBody96_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total" (Flapjack.Exp.const 128#64)

def globalBody96_11 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody96_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "rem") (Flapjack.Exp.const 56#64)) globalBody96_10 globalBody96_11

def globalBody96_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 56#64]),
            Flapjack.Exp.var Flapjack.VarKind.local "total"],
        Flapjack.Exp.const 8#64],
    Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 3#64)]

def globalBody96_14 : Prog (BitVec 64) :=
.seq globalBody96_12 globalBody96_13

def globalBody96_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_block"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 56#64])]

def globalBody96_16 : Prog (BitVec 64) :=
.seq globalBody96_14 globalBody96_15

def globalBody96_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_block"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 56#64]),
        Flapjack.Exp.const 64#64]]

def globalBody96_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "total") (Flapjack.Exp.const 128#64)) globalBody96_17 globalBody96_11

def globalBody96_19 : Prog (BitVec 64) :=
.seq globalBody96_16 globalBody96_18

def globalBody96_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_finish"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 48#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody96_21 : Prog (BitVec 64) :=
.seq globalBody96_19 globalBody96_20

def globalBody96_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody96_23 : Prog (BitVec 64) :=
.seq globalBody96_21 globalBody96_22

def globalBody96_24 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) globalBody96_23

def globalBody96_25 : Prog (BitVec 64) :=
.seq globalBody96_9 globalBody96_24

def globalBody96_26 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody96_25

def globalBody96_27 : Prog (BitVec 64) :=
.seq globalBody96_4 globalBody96_26

def globalBody96_28 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody96_27

def globalBody96_29 : Prog (BitVec 64) :=
.seq globalBody96_0 globalBody96_28

def globalData96 : Decl (BitVec 64) :=
.function { name := "sha256", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody96_29, returnShape := (Flapjack.Shape.one) }
def globalOutput96 := Pancake.PanLang.declToHOL globalData96
end InitECandidate.Proofs.FrontendStages.Declarations
