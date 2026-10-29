import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify556
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body572_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body572_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body572_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 0#64)) body572_0 body572_1

def body572_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 3#64])

def body572_4 : Prog (BitVec 64) :=
.seq body572_2 body572_3

def body572_5 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "n"]) body572_4

def originalData572 : Decl (BitVec 64) :=
.function { name := "get_delegated_code_address", inline := false, exported := false, params := [("code", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body572_5, returnShape := (Flapjack.Shape.one) }
def simplifiedData572 : Decl (BitVec 64) :=
.function { name := "get_delegated_code_address", inline := false, exported := false, params := [("code", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body572_5, returnShape := (Flapjack.Shape.one) }
def original572 := Pancake.PanLang.declToHOL originalData572
def simplified572 := Pancake.PanLang.declToHOL simplifiedData572
end InitECandidate.Proofs.FrontendStages.Declarations
