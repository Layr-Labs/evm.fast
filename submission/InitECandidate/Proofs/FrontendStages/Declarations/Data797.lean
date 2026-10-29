import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify781
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body797_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "swu_g2"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def body797_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "iso_map_g2"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body797_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1632#64],
    Flapjack.Exp.const 10#64]

def body797_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body797_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body797_5 : Prog (BitVec 64) :=
.seq body797_3 body797_4

def body797_6 : Prog (BitVec 64) :=
.seq body797_2 body797_5

def body797_7 : Prog (BitVec 64) :=
.seq body797_1 body797_6

def body797_8 : Prog (BitVec 64) :=
.seq body797_0 body797_7

def body797_9 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body797_8

def body797_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body797_9

def body797_11 : Prog (BitVec 64) :=
.seq body797_0 body797_1

def body797_12 : Prog (BitVec 64) :=
.seq body797_11 body797_2

def body797_13 : Prog (BitVec 64) :=
.seq body797_12 body797_3

def body797_14 : Prog (BitVec 64) :=
.seq body797_13 body797_4

def body797_15 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body797_14

def body797_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body797_15

def originalData797 : Decl (BitVec 64) :=
.function { name := "map_fp2_to_g2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("t", Flapjack.Shape.one)], body := body797_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData797 : Decl (BitVec 64) :=
.function { name := "map_fp2_to_g2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("t", Flapjack.Shape.one)], body := body797_16, returnShape := (Flapjack.Shape.one) }
def original797 := Pancake.PanLang.declToHOL originalData797
def simplified797 := Pancake.PanLang.declToHOL simplifiedData797
end InitECandidate.Proofs.FrontendStages.Declarations
