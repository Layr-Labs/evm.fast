import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify766
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body782_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1344#64],
    Flapjack.Exp.const 4#64]

def body782_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body782_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "inf")

def body782_3 : Prog (BitVec 64) :=
.seq body782_1 body782_2

def body782_4 : Prog (BitVec 64) :=
.decCall ("inf") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body782_3

def body782_5 : Prog (BitVec 64) :=
.seq body782_0 body782_4

def body782_6 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body782_5

def body782_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body782_6

def originalData782 : Decl (BitVec 64) :=
.function { name := "g2_subgroup_check", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body782_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData782 : Decl (BitVec 64) :=
.function { name := "g2_subgroup_check", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body782_7, returnShape := (Flapjack.Shape.one) }
def original782 := Pancake.PanLang.declToHOL originalData782
def simplified782 := Pancake.PanLang.declToHOL simplifiedData782
end InitECandidate.Proofs.FrontendStages.Declarations
