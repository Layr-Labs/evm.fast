import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify520
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body536_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body536_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
          Flapjack.Exp.const 56#64])]

def body536_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body536_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body536_4 : Prog (BitVec 64) :=
.seq body536_2 body536_3

def body536_5 : Prog (BitVec 64) :=
.seq body536_1 body536_4

def body536_6 : Prog (BitVec 64) :=
.seq body536_0 body536_5

def body536_7 : Prog (BitVec 64) :=
.seq body536_0 body536_1

def body536_8 : Prog (BitVec 64) :=
.seq body536_7 body536_2

def body536_9 : Prog (BitVec 64) :=
.seq body536_8 body536_3

def originalData536 : Decl (BitVec 64) :=
.function { name := "op_callvalue", inline := false, exported := false, params := [], body := body536_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData536 : Decl (BitVec 64) :=
.function { name := "op_callvalue", inline := false, exported := false, params := [], body := body536_9, returnShape := (Flapjack.Shape.one) }
def original536 := Pancake.PanLang.declToHOL originalData536
def simplified536 := Pancake.PanLang.declToHOL simplifiedData536
end InitECandidate.Proofs.FrontendStages.Declarations
