import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data189
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody189_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cnt" (Flapjack.Exp.var Flapjack.VarKind.local "size")

def globalBody189_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody189_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "size")
  (Flapjack.Exp.var Flapjack.VarKind.local "cnt")) globalBody189_0 globalBody189_1

def globalBody189_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "cnt", Flapjack.Exp.var Flapjack.VarKind.local "size",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]]]

def globalBody189_4 : Prog (BitVec 64) :=
.seq globalBody189_2 globalBody189_3

def globalBody189_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "size"])

def globalBody189_6 : Prog (BitVec 64) :=
.seq globalBody189_4 globalBody189_5

def globalBody189_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "size"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "size") (Flapjack.Exp.const 2#64))

def globalBody189_8 : Prog (BitVec 64) :=
.seq globalBody189_6 globalBody189_7

def globalBody189_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def globalBody189_10 : Prog (BitVec 64) :=
.seq globalBody189_8 globalBody189_9

def globalBody189_11 : Prog (BitVec 64) :=
.dec ("cnt") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "off"]) globalBody189_10

def globalBody189_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "off")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody189_11

def globalBody189_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.const 32#64]

def globalBody189_14 : Prog (BitVec 64) :=
.seq globalBody189_12 globalBody189_13

def globalBody189_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def globalBody189_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256_pair"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]],
    Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def globalBody189_17 : Prog (BitVec 64) :=
.seq globalBody189_15 globalBody189_16

def globalBody189_18 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 0#64)) globalBody189_17

def globalBody189_19 : Prog (BitVec 64) :=
.seq globalBody189_14 globalBody189_18

def globalBody189_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.const 32#64]

def globalBody189_21 : Prog (BitVec 64) :=
.seq globalBody189_19 globalBody189_20

def globalBody189_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody189_23 : Prog (BitVec 64) :=
.seq globalBody189_21 globalBody189_22

def globalBody189_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody189_25 : Prog (BitVec 64) :=
.seq globalBody189_23 globalBody189_24

def globalBody189_26 : Prog (BitVec 64) :=
.dec ("size") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody189_25

def globalBody189_27 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody189_26

def globalBody189_28 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody189_27

def globalBody189_29 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody189_28

def globalBody189_30 : Prog (BitVec 64) :=
.decCall ("roots") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 24#64, Flapjack.Exp.const 32#64]]) globalBody189_29

def globalBody189_31 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody189_30

def globalData189 : Decl (BitVec 64) :=
.function { name := "merkleize_progressive", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody189_31, returnShape := (Flapjack.Shape.one) }
def globalOutput189 := Pancake.PanLang.declToHOL globalData189
end InitECandidate.Proofs.FrontendStages.Declarations
