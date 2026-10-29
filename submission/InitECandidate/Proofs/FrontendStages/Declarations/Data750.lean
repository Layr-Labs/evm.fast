import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify734
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body750_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "one"]

def body750_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body750_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "e")

def body750_3 : Prog (BitVec 64) :=
.seq body750_1 body750_2

def body750_4 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "one", Flapjack.Exp.const 576#64]) body750_3

def body750_5 : Prog (BitVec 64) :=
.seq body750_0 body750_4

def body750_6 : Prog (BitVec 64) :=
.decCall ("one") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body750_5

def body750_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body750_6

def originalData750 : Decl (BitVec 64) :=
.function { name := "fp12_is_one", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := body750_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData750 : Decl (BitVec 64) :=
.function { name := "fp12_is_one", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := body750_7, returnShape := (Flapjack.Shape.one) }
def original750 := Pancake.PanLang.declToHOL originalData750
def simplified750 := Pancake.PanLang.declToHOL simplifiedData750
end InitECandidate.Proofs.FrontendStages.Declarations
