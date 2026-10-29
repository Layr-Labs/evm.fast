import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data841
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate825
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody841_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "arr",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "arr",
          Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
          Flapjack.Exp.const 8#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "cat",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def globalBody841_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody841_2 : Prog (BitVec 64) :=
.seq globalBody841_0 globalBody841_1

def globalBody841_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody841_2

def globalBody841_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sha256"
  [Flapjack.Exp.var Flapjack.VarKind.local "cat",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody841_5 : Prog (BitVec 64) :=
.seq globalBody841_3 globalBody841_4

def globalBody841_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody841_7 : Prog (BitVec 64) :=
.seq globalBody841_5 globalBody841_6

def globalBody841_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody841_9 : Prog (BitVec 64) :=
.seq globalBody841_7 globalBody841_8

def globalBody841_10 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody841_9

def globalBody841_11 : Prog (BitVec 64) :=
.decCall ("cat") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 8#64]]) globalBody841_10

def globalBody841_12 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody841_11

def globalData841 : Decl (BitVec 64) :=
.function { name := "compute_requests_hash", inline := false, exported := false, params := [("arr", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody841_12, returnShape := (Flapjack.Shape.one) }
def globalOutput841 := Pancake.PanLang.declToHOL globalData841
end InitECandidate.Proofs.FrontendStages.Declarations
