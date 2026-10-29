import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data785
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate769
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody785_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "line", Flapjack.Exp.const 576#64]

def globalBody785_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "line",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 192#64]]

def globalBody785_2 : Prog (BitVec 64) :=
.seq globalBody785_0 globalBody785_1

def globalBody785_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_scale"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "line", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "px"]

def globalBody785_4 : Prog (BitVec 64) :=
.seq globalBody785_2 globalBody785_3

def globalBody785_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_scale"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "line", Flapjack.Exp.const 384#64],
    Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.var Flapjack.VarKind.local "py"]

def globalBody785_6 : Prog (BitVec 64) :=
.seq globalBody785_4 globalBody785_5

def globalBody785_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "f",
    Flapjack.Exp.var Flapjack.VarKind.local "line"]

def globalBody785_8 : Prog (BitVec 64) :=
.seq globalBody785_6 globalBody785_7

def globalBody785_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody785_10 : Prog (BitVec 64) :=
.seq globalBody785_8 globalBody785_9

def globalBody785_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody785_12 : Prog (BitVec 64) :=
.seq globalBody785_10 globalBody785_11

def globalBody785_13 : Prog (BitVec 64) :=
.decCall ("line") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) globalBody785_12

def globalBody785_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody785_13

def globalData785 : Decl (BitVec 64) :=
.function { name := "pair_ell", inline := false, exported := false, params := [("f", Flapjack.Shape.one), ("co", Flapjack.Shape.one),
  ("px",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("py",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody785_14, returnShape := (Flapjack.Shape.one) }
def globalOutput785 := Pancake.PanLang.declToHOL globalData785
end InitECandidate.Proofs.FrontendStages.Declarations
