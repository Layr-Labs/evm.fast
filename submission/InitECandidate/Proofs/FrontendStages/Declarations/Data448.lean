import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify432
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body448_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 4#64)

def body448_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body448_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "amount")) body448_0 body448_1

def body448_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body448_4 : Prog (BitVec 64) :=
.seq body448_2 body448_3

def originalData448 : Decl (BitVec 64) :=
.function { name := "check_gas", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := body448_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData448 : Decl (BitVec 64) :=
.function { name := "check_gas", inline := false, exported := false, params := [("amount", Flapjack.Shape.one)], body := body448_4, returnShape := (Flapjack.Shape.one) }
def original448 := Pancake.PanLang.declToHOL originalData448
def simplified448 := Pancake.PanLang.declToHOL simplifiedData448
end InitECandidate.Proofs.FrontendStages.Declarations
