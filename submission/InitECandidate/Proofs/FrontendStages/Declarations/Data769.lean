import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify753
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body769_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_normalize"
  [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body769_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body769_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_fp_encode64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "aff", Flapjack.Exp.const 48#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64]]

def body769_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body769_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body769_5 : Prog (BitVec 64) :=
.seq body769_3 body769_4

def body769_6 : Prog (BitVec 64) :=
.seq body769_2 body769_5

def body769_7 : Prog (BitVec 64) :=
.seq body769_1 body769_6

def body769_8 : Prog (BitVec 64) :=
.seq body769_0 body769_7

def body769_9 : Prog (BitVec 64) :=
.decCall ("aff") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body769_8

def body769_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body769_9

def body769_11 : Prog (BitVec 64) :=
.seq body769_0 body769_1

def body769_12 : Prog (BitVec 64) :=
.seq body769_11 body769_2

def body769_13 : Prog (BitVec 64) :=
.seq body769_12 body769_3

def body769_14 : Prog (BitVec 64) :=
.seq body769_13 body769_4

def body769_15 : Prog (BitVec 64) :=
.decCall ("aff") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body769_14

def body769_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body769_15

def originalData769 : Decl (BitVec 64) :=
.function { name := "g1_encode", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body769_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData769 : Decl (BitVec 64) :=
.function { name := "g1_encode", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body769_16, returnShape := (Flapjack.Shape.one) }
def original769 := Pancake.PanLang.declToHOL originalData769
def simplified769 := Pancake.PanLang.declToHOL simplifiedData769
end InitECandidate.Proofs.FrontendStages.Declarations
