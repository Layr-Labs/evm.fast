import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify180
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body196_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]

def body196_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 8#64]

def body196_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body196_3 : Prog (BitVec 64) :=
.seq body196_1 body196_2

def body196_4 : Prog (BitVec 64) :=
.seq body196_0 body196_3

def body196_5 : Prog (BitVec 64) :=
.seq body196_0 body196_1

def body196_6 : Prog (BitVec 64) :=
.seq body196_5 body196_2

def originalData196 : Decl (BitVec 64) :=
.function { name := "htr_u64_at", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body196_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData196 : Decl (BitVec 64) :=
.function { name := "htr_u64_at", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body196_6, returnShape := (Flapjack.Shape.one) }
def original196 := Pancake.PanLang.declToHOL originalData196
def simplified196 := Pancake.PanLang.declToHOL simplifiedData196
end InitECandidate.Proofs.FrontendStages.Declarations
