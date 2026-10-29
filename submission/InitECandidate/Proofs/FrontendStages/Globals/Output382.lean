import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data382
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate366
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody382_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody382_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody382_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) globalBody382_0 globalBody382_1

def globalBody382_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody382_4 : Prog (BitVec 64) :=
.seq globalBody382_2 globalBody382_3

def globalBody382_5 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody382_4

def globalData382 : Decl (BitVec 64) :=
.function { name := "account_exists", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody382_5, returnShape := (Flapjack.Shape.one) }
def globalOutput382 := Pancake.PanLang.declToHOL globalData382
end InitECandidate.Proofs.FrontendStages.Declarations
