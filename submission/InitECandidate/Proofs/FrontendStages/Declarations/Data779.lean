import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify763
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body779_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body779_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body779_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "rr",
    Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body779_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "rr", Flapjack.Exp.var Flapjack.VarKind.local "rr",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 288#64]]

def body779_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body779_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "e")

def body779_6 : Prog (BitVec 64) :=
.seq body779_4 body779_5

def body779_7 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("fp2_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "rr"]) body779_6

def body779_8 : Prog (BitVec 64) :=
.seq body779_3 body779_7

def body779_9 : Prog (BitVec 64) :=
.seq body779_2 body779_8

def body779_10 : Prog (BitVec 64) :=
.seq body779_1 body779_9

def body779_11 : Prog (BitVec 64) :=
.seq body779_0 body779_10

def body779_12 : Prog (BitVec 64) :=
.decCall ("rr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body779_11

def body779_13 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body779_12

def body779_14 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body779_13

def body779_15 : Prog (BitVec 64) :=
.seq body779_0 body779_1

def body779_16 : Prog (BitVec 64) :=
.seq body779_15 body779_2

def body779_17 : Prog (BitVec 64) :=
.seq body779_16 body779_3

def body779_18 : Prog (BitVec 64) :=
.seq body779_17 body779_7

def body779_19 : Prog (BitVec 64) :=
.decCall ("rr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body779_18

def body779_20 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body779_19

def body779_21 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body779_20

def originalData779 : Decl (BitVec 64) :=
.function { name := "g2_on_curve", inline := false, exported := false, params := [("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one)], body := body779_14, returnShape := (Flapjack.Shape.one) }
def simplifiedData779 : Decl (BitVec 64) :=
.function { name := "g2_on_curve", inline := false, exported := false, params := [("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one)], body := body779_21, returnShape := (Flapjack.Shape.one) }
def original779 := Pancake.PanLang.declToHOL originalData779
def simplified779 := Pancake.PanLang.declToHOL simplifiedData779
end InitECandidate.Proofs.FrontendStages.Declarations
