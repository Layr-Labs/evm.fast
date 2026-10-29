import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data376
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody376_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_empty" []

def globalBody376_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody376_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) globalBody376_0 globalBody376_1

def globalBody376_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody376_4 : Prog (BitVec 64) :=
.seq globalBody376_2 globalBody376_3

def globalBody376_5 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody376_4

def globalData376 : Decl (BitVec 64) :=
.function { name := "get_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody376_5, returnShape := (Flapjack.Shape.one) }
def globalOutput376 := Pancake.PanLang.declToHOL globalData376
end InitECandidate.Proofs.FrontendStages.Declarations
