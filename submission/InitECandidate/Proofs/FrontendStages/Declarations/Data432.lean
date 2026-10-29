import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify416
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body432_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "sort_elems"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "k"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "k"), Flapjack.Exp.const 32#64,
    Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "tmp"]

def body432_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "k")

def body432_2 : Prog (BitVec 64) :=
.seq body432_0 body432_1

def body432_3 : Prog (BitVec 64) :=
.decCall ("k") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_keys") ([Flapjack.Exp.var Flapjack.VarKind.local "t"]) body432_2

def originalData432 : Decl (BitVec 64) :=
.function { name := "sorted_keys32", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("tmp", Flapjack.Shape.one)], body := body432_3, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData432 : Decl (BitVec 64) :=
.function { name := "sorted_keys32", inline := false, exported := false, params := [("t", Flapjack.Shape.one), ("tmp", Flapjack.Shape.one)], body := body432_3, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original432 := Pancake.PanLang.declToHOL originalData432
def simplified432 := Pancake.PanLang.declToHOL simplifiedData432
end InitECandidate.Proofs.FrontendStages.Declarations
