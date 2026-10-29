import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify450
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body466_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 176#64]

def body466_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "m")

def body466_2 : Prog (BitVec 64) :=
.seq body466_0 body466_1

def body466_3 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 176#64]) body466_2

def originalData466 : Decl (BitVec 64) :=
.function { name := "msg_new", inline := false, exported := false, params := [], body := body466_3, returnShape := (Flapjack.Shape.one) }
def simplifiedData466 : Decl (BitVec 64) :=
.function { name := "msg_new", inline := false, exported := false, params := [], body := body466_3, returnShape := (Flapjack.Shape.one) }
def original466 := Pancake.PanLang.declToHOL originalData466
def simplified466 := Pancake.PanLang.declToHOL simplifiedData466
end InitECandidate.Proofs.FrontendStages.Declarations
