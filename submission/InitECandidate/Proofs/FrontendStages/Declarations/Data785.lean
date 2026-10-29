import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify769
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body785_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "line", Flapjack.Exp.const 576#64]

def body785_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "line",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 192#64]]

def body785_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_scale"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "line", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "px"]

def body785_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_scale"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "line", Flapjack.Exp.const 384#64],
    Flapjack.Exp.var Flapjack.VarKind.local "co", Flapjack.Exp.var Flapjack.VarKind.local "py"]

def body785_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "f",
    Flapjack.Exp.var Flapjack.VarKind.local "line"]

def body785_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body785_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body785_7 : Prog (BitVec 64) :=
.seq body785_5 body785_6

def body785_8 : Prog (BitVec 64) :=
.seq body785_4 body785_7

def body785_9 : Prog (BitVec 64) :=
.seq body785_3 body785_8

def body785_10 : Prog (BitVec 64) :=
.seq body785_2 body785_9

def body785_11 : Prog (BitVec 64) :=
.seq body785_1 body785_10

def body785_12 : Prog (BitVec 64) :=
.seq body785_0 body785_11

def body785_13 : Prog (BitVec 64) :=
.decCall ("line") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body785_12

def body785_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body785_13

def body785_15 : Prog (BitVec 64) :=
.seq body785_0 body785_1

def body785_16 : Prog (BitVec 64) :=
.seq body785_15 body785_2

def body785_17 : Prog (BitVec 64) :=
.seq body785_16 body785_3

def body785_18 : Prog (BitVec 64) :=
.seq body785_17 body785_4

def body785_19 : Prog (BitVec 64) :=
.seq body785_18 body785_5

def body785_20 : Prog (BitVec 64) :=
.seq body785_19 body785_6

def body785_21 : Prog (BitVec 64) :=
.decCall ("line") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body785_20

def body785_22 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body785_21

def originalData785 : Decl (BitVec 64) :=
.function { name := "pair_ell", inline := false, exported := false, params := [("f", Flapjack.Shape.one), ("co", Flapjack.Shape.one),
  ("px",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("py",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body785_14, returnShape := (Flapjack.Shape.one) }
def simplifiedData785 : Decl (BitVec 64) :=
.function { name := "pair_ell", inline := false, exported := false, params := [("f", Flapjack.Shape.one), ("co", Flapjack.Shape.one),
  ("px",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("py",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body785_22, returnShape := (Flapjack.Shape.one) }
def original785 := Pancake.PanLang.declToHOL originalData785
def simplified785 := Pancake.PanLang.declToHOL simplifiedData785
end InitECandidate.Proofs.FrontendStages.Declarations
