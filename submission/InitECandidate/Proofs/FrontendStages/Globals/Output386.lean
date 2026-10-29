import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data386
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate370
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody386_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody386_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody386_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) globalBody386_0 globalBody386_1

def globalBody386_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "e")

def globalBody386_4 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("acct_is_empty") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) globalBody386_3

def globalBody386_5 : Prog (BitVec 64) :=
.seq globalBody386_2 globalBody386_4

def globalBody386_6 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody386_5

def globalData386 : Decl (BitVec 64) :=
.function { name := "account_exists_and_is_empty", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody386_6, returnShape := (Flapjack.Shape.one) }
def globalOutput386 := Pancake.PanLang.declToHOL globalData386
end InitECandidate.Proofs.FrontendStages.Declarations
