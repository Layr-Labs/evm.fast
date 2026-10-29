import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify451
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body467_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 176#64]

def body467_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body467_2 : Prog (BitVec 64) :=
.seq body467_0 body467_1

def body467_3 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 176#64]) body467_2

def originalData467 : Decl (BitVec 64) :=
.function { name := "msg_new_scratch", inline := false, exported := false, params := [], body := body467_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData467 : Decl (BitVec 64) :=
.function { name := "msg_new_scratch", inline := false, exported := false, params := [], body := body467_3, returnShape := (Flapjack.Shape.one) }
def original467 := Pancake.PanLang.declToHOL originalData467
def simplified467 := Pancake.PanLang.declToHOL simplifiedData467
end InitECandidate.Proofs.FrontendStages.Declarations
