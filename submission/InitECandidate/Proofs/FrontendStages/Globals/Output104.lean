import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data104
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody104_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 200#64]

def globalBody104_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak_absorb_block"
  [Flapjack.Exp.var Flapjack.VarKind.local "stp",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]]

def globalBody104_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 136#64])

def globalBody104_3 : Prog (BitVec 64) :=
.seq globalBody104_1 globalBody104_2

def globalBody104_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "n")
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 136#64])) globalBody104_3

def globalBody104_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 80#64]),
    Flapjack.Exp.const 136#64]

def globalBody104_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 80#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"],
    Flapjack.Exp.var Flapjack.VarKind.local "rem"]

def globalBody104_7 : Prog (BitVec 64) :=
.seq globalBody104_5 globalBody104_6

def globalBody104_8 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 80#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "rem"])
  (Flapjack.Exp.const 1#64)

def globalBody104_9 : Prog (BitVec 64) :=
.seq globalBody104_7 globalBody104_8

def globalBody104_10 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 80#64]),
      Flapjack.Exp.const 135#64])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.load Flapjack.Shape.one
              (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 80#64]),
            Flapjack.Exp.const 135#64]),
      Flapjack.Exp.const 128#64])

def globalBody104_11 : Prog (BitVec 64) :=
.seq globalBody104_9 globalBody104_10

def globalBody104_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak_absorb_block"
  [Flapjack.Exp.var Flapjack.VarKind.local "stp",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 80#64])]

def globalBody104_13 : Prog (BitVec 64) :=
.seq globalBody104_11 globalBody104_12

def globalBody104_14 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out")
  (Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "stp"))

def globalBody104_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 8#64]))

def globalBody104_16 : Prog (BitVec 64) :=
.seq globalBody104_14 globalBody104_15

def globalBody104_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 16#64]))

def globalBody104_18 : Prog (BitVec 64) :=
.seq globalBody104_16 globalBody104_17

def globalBody104_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "stp", Flapjack.Exp.const 24#64]))

def globalBody104_20 : Prog (BitVec 64) :=
.seq globalBody104_18 globalBody104_19

def globalBody104_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "stp",
    Flapjack.Exp.const 32#64]

def globalBody104_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) globalBody104_20 globalBody104_21

def globalBody104_23 : Prog (BitVec 64) :=
.seq globalBody104_13 globalBody104_22

def globalBody104_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody104_25 : Prog (BitVec 64) :=
.seq globalBody104_23 globalBody104_24

def globalBody104_26 : Prog (BitVec 64) :=
.dec ("rem") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody104_25

def globalBody104_27 : Prog (BitVec 64) :=
.seq globalBody104_4 globalBody104_26

def globalBody104_28 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody104_27

def globalBody104_29 : Prog (BitVec 64) :=
.seq globalBody104_0 globalBody104_28

def globalBody104_30 : Prog (BitVec 64) :=
.dec ("stp") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 72#64])) globalBody104_29

def globalData104 : Decl (BitVec 64) :=
.function { name := "keccak256", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody104_30, returnShape := (Flapjack.Shape.one) }
def globalOutput104 := Pancake.PanLang.declToHOL globalData104
end InitECandidate.Proofs.FrontendStages.Declarations
