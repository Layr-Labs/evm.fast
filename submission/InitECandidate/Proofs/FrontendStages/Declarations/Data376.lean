import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify360
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body376_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_empty" []

def body376_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body376_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) body376_0 body376_1

def body376_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body376_4 : Prog (BitVec 64) :=
.seq body376_2 body376_3

def body376_5 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body376_4

def originalData376 : Decl (BitVec 64) :=
.function { name := "get_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body376_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData376 : Decl (BitVec 64) :=
.function { name := "get_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body376_5, returnShape := (Flapjack.Shape.one) }
def original376 := Pancake.PanLang.declToHOL originalData376
def simplified376 := Pancake.PanLang.declToHOL simplifiedData376
end InitECandidate.Proofs.FrontendStages.Declarations
