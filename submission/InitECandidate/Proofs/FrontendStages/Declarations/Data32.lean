import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify16
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body32_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body32_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body32_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "a")
  (Flapjack.Exp.var Flapjack.VarKind.local "b")) body32_0 body32_1

def body32_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "b")

def body32_4 : Prog (BitVec 64) :=
.seq body32_2 body32_3

def originalData32 : Decl (BitVec 64) :=
.function { name := "min", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body32_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData32 : Decl (BitVec 64) :=
.function { name := "min", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("b", Flapjack.Shape.one)], body := body32_4, returnShape := (Flapjack.Shape.one) }
def original32 := Pancake.PanLang.declToHOL originalData32
def simplified32 := Pancake.PanLang.declToHOL simplifiedData32
end InitECandidate.Proofs.FrontendStages.Declarations
