import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data217
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate201
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody217_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_deposit"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "sz"]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def globalBody217_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody217_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 0#64)) globalBody217_0 globalBody217_1

def globalBody217_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_wdreq"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "sz"]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def globalBody217_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 1#64)) globalBody217_3 globalBody217_1

def globalBody217_5 : Prog (BitVec 64) :=
.seq globalBody217_2 globalBody217_4

def globalBody217_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_cons"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "sz"]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def globalBody217_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 2#64)) globalBody217_6 globalBody217_1

def globalBody217_8 : Prog (BitVec 64) :=
.seq globalBody217_5 globalBody217_7

def globalBody217_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_bdep"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "sz"]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def globalBody217_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 3#64)) globalBody217_9 globalBody217_1

def globalBody217_11 : Prog (BitVec 64) :=
.seq globalBody217_8 globalBody217_10

def globalBody217_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_bexit"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.var Flapjack.VarKind.local "sz"]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def globalBody217_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "kind") (Flapjack.Exp.const 4#64)) globalBody217_12 globalBody217_1

def globalBody217_14 : Prog (BitVec 64) :=
.seq globalBody217_11 globalBody217_13

def globalBody217_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody217_16 : Prog (BitVec 64) :=
.seq globalBody217_14 globalBody217_15

def globalBody217_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody217_16

def globalBody217_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_plist_chunks"
  [Flapjack.Exp.var Flapjack.VarKind.local "roots", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody217_19 : Prog (BitVec 64) :=
.seq globalBody217_17 globalBody217_18

def globalBody217_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody217_21 : Prog (BitVec 64) :=
.seq globalBody217_19 globalBody217_20

def globalBody217_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody217_23 : Prog (BitVec 64) :=
.seq globalBody217_21 globalBody217_22

def globalBody217_24 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody217_23

def globalBody217_25 : Prog (BitVec 64) :=
.decCall ("roots") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 32#64]]) globalBody217_24

def globalBody217_26 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody217_25

def globalData217 : Decl (BitVec 64) :=
.function { name := "htr_request_list", inline := false, exported := false, params := [("kind", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("sz", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := globalBody217_26, returnShape := (Flapjack.Shape.one) }
def globalOutput217 := Pancake.PanLang.declToHOL globalData217
end InitECandidate.Proofs.FrontendStages.Declarations
