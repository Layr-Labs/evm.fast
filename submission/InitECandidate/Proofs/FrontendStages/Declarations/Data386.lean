import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify370
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body386_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body386_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body386_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) body386_0 body386_1

def body386_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "e")

def body386_4 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("acct_is_empty") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body386_3

def body386_5 : Prog (BitVec 64) :=
.seq body386_2 body386_4

def body386_6 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body386_5

def originalData386 : Decl (BitVec 64) :=
.function { name := "account_exists_and_is_empty", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body386_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData386 : Decl (BitVec 64) :=
.function { name := "account_exists_and_is_empty", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body386_6, returnShape := (Flapjack.Shape.one) }
def original386 := Pancake.PanLang.declToHOL originalData386
def simplified386 := Pancake.PanLang.declToHOL simplifiedData386
end InitECandidate.Proofs.FrontendStages.Declarations
