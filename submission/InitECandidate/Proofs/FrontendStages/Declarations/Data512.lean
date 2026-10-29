import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify496
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body512_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body512_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 32#64])]

def body512_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body512_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body512_4 : Prog (BitVec 64) :=
.seq body512_2 body512_3

def body512_5 : Prog (BitVec 64) :=
.seq body512_1 body512_4

def body512_6 : Prog (BitVec 64) :=
.seq body512_0 body512_5

def body512_7 : Prog (BitVec 64) :=
.seq body512_0 body512_1

def body512_8 : Prog (BitVec 64) :=
.seq body512_7 body512_2

def body512_9 : Prog (BitVec 64) :=
.seq body512_8 body512_3

def originalData512 : Decl (BitVec 64) :=
.function { name := "op_msize", inline := false, exported := false, params := [], body := body512_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData512 : Decl (BitVec 64) :=
.function { name := "op_msize", inline := false, exported := false, params := [], body := body512_9, returnShape := (Flapjack.Shape.one) }
def original512 := Pancake.PanLang.declToHOL originalData512
def simplified512 := Pancake.PanLang.declToHOL simplifiedData512
end InitECandidate.Proofs.FrontendStages.Declarations
