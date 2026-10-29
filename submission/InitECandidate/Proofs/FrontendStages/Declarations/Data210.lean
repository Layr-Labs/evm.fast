import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify194
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body210_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize"
  [Flapjack.Exp.var Flapjack.VarKind.local "roots", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "lim", Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body210_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mix_in_length"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body210_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body210_3 : Prog (BitVec 64) :=
.seq body210_1 body210_2

def body210_4 : Prog (BitVec 64) :=
.seq body210_0 body210_3

def body210_5 : Prog (BitVec 64) :=
.seq body210_0 body210_1

def body210_6 : Prog (BitVec 64) :=
.seq body210_5 body210_2

def originalData210 : Decl (BitVec 64) :=
.function { name := "htr_list_roots", inline := false, exported := false, params := [("roots", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("lim", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body210_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData210 : Decl (BitVec 64) :=
.function { name := "htr_list_roots", inline := false, exported := false, params := [("roots", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("lim", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body210_6, returnShape := (Flapjack.Shape.one) }
def original210 := Pancake.PanLang.declToHOL originalData210
def simplified210 := Pancake.PanLang.declToHOL simplifiedData210
end InitECandidate.Proofs.FrontendStages.Declarations
