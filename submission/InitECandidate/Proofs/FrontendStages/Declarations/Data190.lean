import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify174
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body190_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "merkleize_progressive"
  [Flapjack.Exp.var Flapjack.VarKind.local "roots", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body190_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mix_in_length"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "len",
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body190_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body190_3 : Prog (BitVec 64) :=
.seq body190_1 body190_2

def body190_4 : Prog (BitVec 64) :=
.seq body190_0 body190_3

def body190_5 : Prog (BitVec 64) :=
.seq body190_0 body190_1

def body190_6 : Prog (BitVec 64) :=
.seq body190_5 body190_2

def originalData190 : Decl (BitVec 64) :=
.function { name := "htr_plist_chunks", inline := false, exported := false, params := [("roots", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body190_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData190 : Decl (BitVec 64) :=
.function { name := "htr_plist_chunks", inline := false, exported := false, params := [("roots", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("len", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body190_6, returnShape := (Flapjack.Shape.one) }
def original190 := Pancake.PanLang.declToHOL originalData190
def simplified190 := Pancake.PanLang.declToHOL simplifiedData190
end InitECandidate.Proofs.FrontendStages.Declarations
