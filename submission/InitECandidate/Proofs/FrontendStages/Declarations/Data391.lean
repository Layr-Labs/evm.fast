import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify375
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body391_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_storage" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body391_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_account"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 1#64]

def body391_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body391_3 : Prog (BitVec 64) :=
.seq body391_1 body391_2

def body391_4 : Prog (BitVec 64) :=
.seq body391_0 body391_3

def body391_5 : Prog (BitVec 64) :=
.seq body391_0 body391_1

def body391_6 : Prog (BitVec 64) :=
.seq body391_5 body391_2

def originalData391 : Decl (BitVec 64) :=
.function { name := "destroy_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body391_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData391 : Decl (BitVec 64) :=
.function { name := "destroy_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body391_6, returnShape := (Flapjack.Shape.one) }
def original391 := Pancake.PanLang.declToHOL originalData391
def simplified391 := Pancake.PanLang.declToHOL simplifiedData391
end InitECandidate.Proofs.FrontendStages.Declarations
