import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify754
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body770_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g1_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1344#64],
    Flapjack.Exp.const 4#64]

def body770_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body770_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "inf")

def body770_3 : Prog (BitVec 64) :=
.seq body770_1 body770_2

def body770_4 : Prog (BitVec 64) :=
.decCall ("inf") (Flapjack.Shape.one) ("g1_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body770_3

def body770_5 : Prog (BitVec 64) :=
.seq body770_0 body770_4

def body770_6 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body770_5

def body770_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body770_6

def originalData770 : Decl (BitVec 64) :=
.function { name := "g1_subgroup_check", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body770_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData770 : Decl (BitVec 64) :=
.function { name := "g1_subgroup_check", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := body770_7, returnShape := (Flapjack.Shape.one) }
def original770 := Pancake.PanLang.declToHOL originalData770
def simplified770 := Pancake.PanLang.declToHOL simplifiedData770
end InitECandidate.Proofs.FrontendStages.Declarations
