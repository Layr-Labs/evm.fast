import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify491
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body507_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body507_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])]

def body507_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body507_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body507_4 : Prog (BitVec 64) :=
.seq body507_2 body507_3

def body507_5 : Prog (BitVec 64) :=
.seq body507_1 body507_4

def body507_6 : Prog (BitVec 64) :=
.seq body507_0 body507_5

def body507_7 : Prog (BitVec 64) :=
.seq body507_0 body507_1

def body507_8 : Prog (BitVec 64) :=
.seq body507_7 body507_2

def body507_9 : Prog (BitVec 64) :=
.seq body507_8 body507_3

def originalData507 : Decl (BitVec 64) :=
.function { name := "op_gas", inline := false, exported := false, params := [], body := body507_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData507 : Decl (BitVec 64) :=
.function { name := "op_gas", inline := false, exported := false, params := [], body := body507_9, returnShape := (Flapjack.Shape.one) }
def original507 := Pancake.PanLang.declToHOL originalData507
def simplified507 := Pancake.PanLang.declToHOL simplifiedData507
end InitECandidate.Proofs.FrontendStages.Declarations
