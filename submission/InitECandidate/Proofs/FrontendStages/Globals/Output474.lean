import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data474
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate458
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody474_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 100#64)

def globalBody474_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody474_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 0#64)) globalBody474_0 globalBody474_1

def globalBody474_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 3000#64)

def globalBody474_4 : Prog (BitVec 64) :=
.seq globalBody474_2 globalBody474_3

def globalBody474_5 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody474_4

def globalData474 : Decl (BitVec 64) :=
.function { name := "access_gas_cost", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody474_5, returnShape := (Flapjack.Shape.one) }
def globalOutput474 := Pancake.PanLang.declToHOL globalData474
end InitECandidate.Proofs.FrontendStages.Declarations
