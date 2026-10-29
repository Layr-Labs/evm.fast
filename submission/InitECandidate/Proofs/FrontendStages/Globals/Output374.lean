import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data374
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate358
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody374_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_empty" []

def globalBody374_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody374_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) globalBody374_0 globalBody374_1

def globalBody374_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody374_4 : Prog (BitVec 64) :=
.seq globalBody374_2 globalBody374_3

def globalBody374_5 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_pre_state_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody374_4

def globalData374 : Decl (BitVec 64) :=
.function { name := "get_pre_state_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody374_5, returnShape := (Flapjack.Shape.one) }
def globalOutput374 := Pancake.PanLang.declToHOL globalData374
end InitECandidate.Proofs.FrontendStages.Declarations
