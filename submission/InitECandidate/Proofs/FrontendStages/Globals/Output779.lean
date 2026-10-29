import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data779
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate763
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody779_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody779_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody779_2 : Prog (BitVec 64) :=
.seq globalBody779_0 globalBody779_1

def globalBody779_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "rr",
    Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody779_4 : Prog (BitVec 64) :=
.seq globalBody779_2 globalBody779_3

def globalBody779_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "rr",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 288#64]]

def globalBody779_6 : Prog (BitVec 64) :=
.seq globalBody779_4 globalBody779_5

def globalBody779_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody779_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "e")

def globalBody779_9 : Prog (BitVec 64) :=
.seq globalBody779_7 globalBody779_8

def globalBody779_10 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("fp2_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "rr"]) globalBody779_9

def globalBody779_11 : Prog (BitVec 64) :=
.seq globalBody779_6 globalBody779_10

def globalBody779_12 : Prog (BitVec 64) :=
.decCall ("rr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody779_11

def globalBody779_13 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody779_12

def globalBody779_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody779_13

def globalData779 : Decl (BitVec 64) :=
.function { name := "g2_on_curve", inline := false, exported := false, params := [("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one)], body := globalBody779_14, returnShape := (Flapjack.Shape.one) }
def globalOutput779 := Pancake.PanLang.declToHOL globalData779
end InitECandidate.Proofs.FrontendStages.Declarations
