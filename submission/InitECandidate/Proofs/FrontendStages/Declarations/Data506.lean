import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify490
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body506_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body506_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 0#64])]

def body506_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body506_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body506_4 : Prog (BitVec 64) :=
.seq body506_2 body506_3

def body506_5 : Prog (BitVec 64) :=
.seq body506_1 body506_4

def body506_6 : Prog (BitVec 64) :=
.seq body506_0 body506_5

def body506_7 : Prog (BitVec 64) :=
.seq body506_0 body506_1

def body506_8 : Prog (BitVec 64) :=
.seq body506_7 body506_2

def body506_9 : Prog (BitVec 64) :=
.seq body506_8 body506_3

def originalData506 : Decl (BitVec 64) :=
.function { name := "op_pc", inline := false, exported := false, params := [], body := body506_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData506 : Decl (BitVec 64) :=
.function { name := "op_pc", inline := false, exported := false, params := [], body := body506_9, returnShape := (Flapjack.Shape.one) }
def original506 := Pancake.PanLang.declToHOL originalData506
def simplified506 := Pancake.PanLang.declToHOL simplifiedData506
end InitECandidate.Proofs.FrontendStages.Declarations
