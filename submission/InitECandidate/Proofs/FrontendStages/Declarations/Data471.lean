import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify455
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body471_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "EvmErr" (Flapjack.Exp.const 8#64)

def body471_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body471_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
        Flapjack.Exp.const 144#64]))
  (Flapjack.Exp.const 0#64)) body471_0 body471_1

def body471_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body471_4 : Prog (BitVec 64) :=
.seq body471_2 body471_3

def originalData471 : Decl (BitVec 64) :=
.function { name := "require_not_static", inline := false, exported := false, params := [], body := body471_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData471 : Decl (BitVec 64) :=
.function { name := "require_not_static", inline := false, exported := false, params := [], body := body471_4, returnShape := (Flapjack.Shape.one) }
def original471 := Pancake.PanLang.declToHOL originalData471
def simplified471 := Pancake.PanLang.declToHOL simplifiedData471
end InitECandidate.Proofs.FrontendStages.Declarations
