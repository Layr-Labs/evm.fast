import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify546
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body562_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body562_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 112#64])]

def body562_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body562_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body562_4 : Prog (BitVec 64) :=
.seq body562_2 body562_3

def body562_5 : Prog (BitVec 64) :=
.seq body562_1 body562_4

def body562_6 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body562_5

def body562_7 : Prog (BitVec 64) :=
.seq body562_0 body562_6

def body562_8 : Prog (BitVec 64) :=
.seq body562_1 body562_2

def body562_9 : Prog (BitVec 64) :=
.seq body562_8 body562_3

def body562_10 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body562_9

def body562_11 : Prog (BitVec 64) :=
.seq body562_0 body562_10

def originalData562 : Decl (BitVec 64) :=
.function { name := "op_slotnum", inline := false, exported := false, params := [], body := body562_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData562 : Decl (BitVec 64) :=
.function { name := "op_slotnum", inline := false, exported := false, params := [], body := body562_11, returnShape := (Flapjack.Shape.one) }
def original562 := Pancake.PanLang.declToHOL originalData562
def simplified562 := Pancake.PanLang.declToHOL simplifiedData562
end InitECandidate.Proofs.FrontendStages.Declarations
