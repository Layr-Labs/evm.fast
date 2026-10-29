import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify776
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body792_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "swu_g1"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def body792_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "iso_map_g1"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def body792_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1624#64],
    Flapjack.Exp.const 1#64]

def body792_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body792_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body792_5 : Prog (BitVec 64) :=
.seq body792_3 body792_4

def body792_6 : Prog (BitVec 64) :=
.seq body792_2 body792_5

def body792_7 : Prog (BitVec 64) :=
.seq body792_1 body792_6

def body792_8 : Prog (BitVec 64) :=
.seq body792_0 body792_7

def body792_9 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body792_8

def body792_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body792_9

def body792_11 : Prog (BitVec 64) :=
.seq body792_0 body792_1

def body792_12 : Prog (BitVec 64) :=
.seq body792_11 body792_2

def body792_13 : Prog (BitVec 64) :=
.seq body792_12 body792_3

def body792_14 : Prog (BitVec 64) :=
.seq body792_13 body792_4

def body792_15 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body792_14

def body792_16 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body792_15

def originalData792 : Decl (BitVec 64) :=
.function { name := "map_fp_to_g1", inline := false, exported := false, params := [("r", Flapjack.Shape.one),
  ("t",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body792_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData792 : Decl (BitVec 64) :=
.function { name := "map_fp_to_g1", inline := false, exported := false, params := [("r", Flapjack.Shape.one),
  ("t",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body792_16, returnShape := (Flapjack.Shape.one) }
def original792 := Pancake.PanLang.declToHOL originalData792
def simplified792 := Pancake.PanLang.declToHOL simplifiedData792
end InitECandidate.Proofs.FrontendStages.Declarations
