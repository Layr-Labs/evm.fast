import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data187
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate167
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody187_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 96#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "target", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.const 32#64]

def globalBody187_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody187_2 : Prog (BitVec 64) :=
.seq globalBody187_0 globalBody187_1

def globalBody187_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody187_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody187_2 globalBody187_3

def globalBody187_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64]]

def globalBody187_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.var Flapjack.VarKind.local "size", Flapjack.Exp.var Flapjack.VarKind.local "n"],
        Flapjack.Exp.const 32#64]]

def globalBody187_7 : Prog (BitVec 64) :=
.seq globalBody187_5 globalBody187_6

def globalBody187_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 64#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 64#64],
        Flapjack.Exp.const 32#64],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]]]

def globalBody187_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody187_10 : Prog (BitVec 64) :=
.seq globalBody187_8 globalBody187_9

def globalBody187_11 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "half")) globalBody187_10

def globalBody187_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cur" (Flapjack.Exp.var Flapjack.VarKind.local "half")

def globalBody187_13 : Prog (BitVec 64) :=
.seq globalBody187_11 globalBody187_12

def globalBody187_14 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody187_13

def globalBody187_15 : Prog (BitVec 64) :=
.dec ("half") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "cur") (Flapjack.Exp.const 1#64)) globalBody187_14

def globalBody187_16 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "cur")) globalBody187_15

def globalBody187_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.var Flapjack.VarKind.local "buf",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 96#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "buf"]

def globalBody187_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 1#64])

def globalBody187_19 : Prog (BitVec 64) :=
.seq globalBody187_17 globalBody187_18

def globalBody187_20 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "d")
  (Flapjack.Exp.var Flapjack.VarKind.local "target")) globalBody187_19

def globalBody187_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "buf",
    Flapjack.Exp.const 32#64]

def globalBody187_22 : Prog (BitVec 64) :=
.seq globalBody187_20 globalBody187_21

def globalBody187_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody187_24 : Prog (BitVec 64) :=
.seq globalBody187_22 globalBody187_23

def globalBody187_25 : Prog (BitVec 64) :=
.seq globalBody187_24 globalBody187_1

def globalBody187_26 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "dn") globalBody187_25

def globalBody187_27 : Prog (BitVec 64) :=
.seq globalBody187_16 globalBody187_26

def globalBody187_28 : Prog (BitVec 64) :=
.dec ("cur") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "size") globalBody187_27

def globalBody187_29 : Prog (BitVec 64) :=
.seq globalBody187_7 globalBody187_28

def globalBody187_30 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "size", Flapjack.Exp.const 32#64]]) globalBody187_29

def globalBody187_31 : Prog (BitVec 64) :=
.dec ("size") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "dn")) globalBody187_30

def globalBody187_32 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody187_31

def globalBody187_33 : Prog (BitVec 64) :=
.seq globalBody187_4 globalBody187_32

def globalBody187_34 : Prog (BitVec 64) :=
.decCall ("target") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "dl", Flapjack.Exp.var Flapjack.VarKind.local "dn"]) globalBody187_33

def globalBody187_35 : Prog (BitVec 64) :=
.decCall ("dn") (Flapjack.Shape.one) ("ceil_log2") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody187_34

def globalBody187_36 : Prog (BitVec 64) :=
.decCall ("dl") (Flapjack.Shape.one) ("ceil_log2") ([Flapjack.Exp.var Flapjack.VarKind.local "limit"]) globalBody187_35

def globalData187 : Decl (BitVec 64) :=
.function { name := "merkleize", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("limit", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody187_36, returnShape := (Flapjack.Shape.one) }
def globalOutput187 := Pancake.PanLang.declToHOL globalData187
end InitECandidate.Proofs.FrontendStages.Declarations
