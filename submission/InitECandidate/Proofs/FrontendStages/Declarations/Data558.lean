import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify542
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body558_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body558_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 40#64])]

def body558_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body558_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body558_4 : Prog (BitVec 64) :=
.seq body558_2 body558_3

def body558_5 : Prog (BitVec 64) :=
.seq body558_1 body558_4

def body558_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body558_5

def body558_7 : Prog (BitVec 64) :=
.seq body558_0 body558_6

def body558_8 : Prog (BitVec 64) :=
.seq body558_1 body558_2

def body558_9 : Prog (BitVec 64) :=
.seq body558_8 body558_3

def body558_10 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body558_9

def body558_11 : Prog (BitVec 64) :=
.seq body558_0 body558_10

def originalData558 : Decl (BitVec 64) :=
.function { name := "op_number", inline := false, exported := false, params := [], body := body558_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData558 : Decl (BitVec 64) :=
.function { name := "op_number", inline := false, exported := false, params := [], body := body558_11, returnShape := (Flapjack.Shape.one) }
def original558 := Pancake.PanLang.declToHOL originalData558
def simplified558 := Pancake.PanLang.declToHOL simplifiedData558
end InitECandidate.Proofs.FrontendStages.Declarations
