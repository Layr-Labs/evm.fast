import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify366
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body382_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body382_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body382_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) body382_0 body382_1

def body382_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body382_4 : Prog (BitVec 64) :=
.seq body382_2 body382_3

def body382_5 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body382_4

def originalData382 : Decl (BitVec 64) :=
.function { name := "account_exists", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body382_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData382 : Decl (BitVec 64) :=
.function { name := "account_exists", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body382_5, returnShape := (Flapjack.Shape.one) }
def original382 := Pancake.PanLang.declToHOL originalData382
def simplified382 := Pancake.PanLang.declToHOL simplifiedData382
end InitECandidate.Proofs.FrontendStages.Declarations
