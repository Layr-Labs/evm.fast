import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify458
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body474_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 100#64)

def body474_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body474_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "w") (Flapjack.Exp.const 0#64)) body474_0 body474_1

def body474_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 3000#64)

def body474_4 : Prog (BitVec 64) :=
.seq body474_2 body474_3

def body474_5 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("is_warm_address") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body474_4

def originalData474 : Decl (BitVec 64) :=
.function { name := "access_gas_cost", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body474_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData474 : Decl (BitVec 64) :=
.function { name := "access_gas_cost", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body474_5, returnShape := (Flapjack.Shape.one) }
def original474 := Pancake.PanLang.declToHOL originalData474
def simplified474 := Pancake.PanLang.declToHOL simplifiedData474
end InitECandidate.Proofs.FrontendStages.Declarations
