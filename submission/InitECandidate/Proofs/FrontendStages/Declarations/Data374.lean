import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify358
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body374_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_empty" []

def body374_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body374_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) body374_0 body374_1

def body374_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body374_4 : Prog (BitVec 64) :=
.seq body374_2 body374_3

def body374_5 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_pre_state_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body374_4

def originalData374 : Decl (BitVec 64) :=
.function { name := "get_pre_state_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body374_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData374 : Decl (BitVec 64) :=
.function { name := "get_pre_state_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body374_5, returnShape := (Flapjack.Shape.one) }
def original374 := Pancake.PanLang.declToHOL originalData374
def simplified374 := Pancake.PanLang.declToHOL simplifiedData374
end InitECandidate.Proofs.FrontendStages.Declarations
