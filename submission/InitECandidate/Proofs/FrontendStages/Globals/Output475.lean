import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data475
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate459
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody475_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def globalBody475_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody475_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 3000#64)) globalBody475_0 globalBody475_1

def globalBody475_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody475_4 : Prog (BitVec 64) :=
.seq globalBody475_2 globalBody475_3

def globalData475 : Decl (BitVec 64) :=
.function { name := "warm_after_charge", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("c", Flapjack.Shape.one)], body := globalBody475_4, returnShape := (Flapjack.Shape.one) }
def globalOutput475 := Pancake.PanLang.declToHOL globalData475
end InitECandidate.Proofs.FrontendStages.Declarations
